#include <Trade\PositionInfo.mqh>
#include <Trade\Trade.mqh>
#include <Trade\SymbolInfo.mqh>
#include <Trade\AccountInfo.mqh>
CPositionInfo  m_position;                   // trade position object
CTrade         m_trade;                      // trading object
CSymbolInfo    m_symbol;                     // symbol info object
CAccountInfo   m_account;                    // account info wrapper
//--- input parameters
input string  Comment_1       = "settings";
input ushort  InpPlus         = 5;
input ushort  InpTakeProfit   = 30;
input ushort  InpDistanciya   = 30;
input ushort  InpStepDist     = 5;
input double  Lots            = 0.00;
input double  InpPercent      = 1;
input bool    Martin          = true;
input string  Comment_4       = "signalProc";
input bool    Proc            = true;
input double  Procent         = 1.3;
input ushort  InpSlip         = 2;
input ulong   Magic           = 1;
input string  Comment_5       = "close Profit";
input double  CloseProfit     = 10;
//---
double  ExtPlus      = 0;
double  ExtTakeProfit= 0;
double  ExtDistanciya= 0;
double  ExtStepDist  = 0;
ulong    ExtSlip=0;
double  ExtPercent=0;
//---
bool     m_need_close_all        = false;    // close all positions
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   if(m_account.MarginMode()!=ACCOUNT_MARGIN_MODE_RETAIL_HEDGING)
     {
      Print("Hedging only!");
      return(INIT_FAILED);
     }
//---
   m_symbol.Name(Symbol());                  // sets symbol name
   m_trade.SetExpertMagicNumber(Magic);      // sets magic number

   if(!RefreshRates())
     {
      Print("Error RefreshRates.",
            " Bid=",DoubleToString(m_symbol.Bid(),Digits()),
            ", Ask=",DoubleToString(m_symbol.Ask(),Digits()));
      return(INIT_FAILED);
     }
//--- tuning for 3 or 5 digits
   int digits_adjust=1;
   if(m_symbol.Digits()==3 || m_symbol.Digits()==5)
      digits_adjust=10;
   ExtPlus        = InpPlus         *digits_adjust;
   ExtTakeProfit  = InpTakeProfit   *digits_adjust;
   ExtDistanciya  = InpDistanciya   *digits_adjust;
   ExtStepDist    = InpStepDist     *digits_adjust;
   ExtSlip        = InpSlip         *digits_adjust;
   ExtPercent     = InpPercent;

   m_trade.SetDeviationInPoints(ExtSlip);    // sets deviation
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   if(m_need_close_all)
     {
      if(IsPositionExists())
        {
         double level;
         if(FreezeStopsLevels(level))
           {
            CloseAllPositions(level);
            return;
           }
         else
            return;
        }
      else
         m_need_close_all=false;
     }
//---
   if(ProfitAllPositions()>=CloseProfit)
     {
      m_need_close_all=true;
      return;
     }
//---
   if(!RefreshRates())
      return;
   double Lots_New=0;
   double One_Lot=0.0;
   if(!OrderCalcMargin(ORDER_TYPE_BUY,m_symbol.Name(),1.0,m_symbol.Ask(),One_Lot))
     {
      Print("Error OrderCalcMargin #",GetLastError());
      return;
     }
   double Min_Lot=m_symbol.LotsMin();
   double Step   =m_symbol.LotsStep();
   double Free   =m_account.FreeMargin();
//--------------------------------------------------------------- 3 --
   if(Lots>0)
     {
      double Money=Lots*One_Lot;
      if(Money<=m_account.FreeMargin())
         Lots_New=Lots;
      else
         Lots_New=MathFloor(Free/One_Lot/Step)*Step;
     }
//--------------------------------------------------------------- 4 --
   else
     {
      if(ExtPercent>100)
         ExtPercent=100;
      if(ExtPercent==0)
         Lots_New=Min_Lot;
      else
         Lots_New=MathFloor(Free*ExtPercent/100/One_Lot/Step)*Step;//Расч
     }
//--------------------------------------------------------------- 5 --
   if(Lots_New<Min_Lot)
      Lots_New=Min_Lot;
   if(Lots_New*One_Lot>m_account.FreeMargin())
     {
      return;
     }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
// set text label transferred to OnInit ()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   double opB=2000;
   double opS=0;
   double orderProfitbuy=0;
   double Sum_Profitbuy=0;

   double LotB=Lots_New;
   double LotS=Lots_New;
   int total=PositionsTotal();
   int b=0,s=0,n=0;
   for(int i=total-1; i>=0; i--)
     {
      if(m_position.SelectByIndex(i))
        {
         if(m_position.Symbol()==m_symbol.Name())
           {
            n++;
            //---
            if(m_position.PositionType()==POSITION_TYPE_BUY && m_position.Magic()==Magic)
              {
               b++;
               LotB=m_position.Volume();
               double ProfitB=m_position.TakeProfit();
               double openB=m_position.PriceOpen();
               if(openB<opB)
                 {
                  opB=openB;
                 }
              }
            //---
            if(m_position.PositionType()==POSITION_TYPE_SELL && m_position.Magic()==Magic)
              {
               s++;
               LotS=m_position.Volume();
               double ProfitS=m_position.TakeProfit();
               double openS=m_position.PriceOpen();
               if(openS>opS)
                 {
                  opS=openS;
                 }
              }
           }
        }
     }
   double max = NormalizeDouble(iHigh(Symbol(),PERIOD_D1,0),m_symbol.Digits());
   double min = NormalizeDouble(iLow(Symbol(),PERIOD_D1,0),m_symbol.Digits());
   double opp = NormalizeDouble(iOpen(Symbol(),PERIOD_D1,0),m_symbol.Digits());
   double cl  = NormalizeDouble(iClose(Symbol(),PERIOD_D1,0),m_symbol.Digits());
//   double dii = NormalizeDouble(ExtDistanciya+(ExtDistanciya/100*n));
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   double dis   =NormalizeDouble((ExtDistanciya+(ExtStepDist*n))  *Point(),Digits());
   double spred =NormalizeDouble(m_symbol.Spread()                *Point(),Digits());
   double  CORR =NormalizeDouble(ExtPlus                          *Point(),Digits());
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   int sigup=0;
   int sigdw=0;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   if(Proc==true)
     {
      double x=0.0;
      double y=0.0;
      if(cl>min)
        {
         x=NormalizeDouble(cl*100/min-100,2);
        }
      if(cl<max)
        {
         y=NormalizeDouble(cl*100/max-100,2);
        }

      if(Procent*(-1)<=y && iClose(Symbol(),Period(),1)>iOpen(Symbol(),Period(),1))
        {
         sigup=1;
         sigdw=0;
        }
      if(Procent>=x && iClose(Symbol(),Period(),1)<iOpen(Symbol(),Period(),1))
        {
         sigup=0;
         sigdw=1;
        }
     }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   int f=0;
   if(Martin==true)
     {
      if(total==0)
        {
         f=1;
        }
      if(total>=1)
        {
         f=total;
        }
      LotB=Lots_New*f;
      LotS=Lots_New*f;
     }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   if(Martin==false)
     {
      LotB=LotS;
      LotS=LotB;
     }
//---
   if(!RefreshRates())
      return;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   if((b==0 && sigup==1 && s==0) || (m_symbol.Ask()<opB-dis+spred && b>=1 && s==0))
     {
      double Test_Lot=0.0;
      if(!OrderCalcMargin(ORDER_TYPE_BUY,m_symbol.Name(),LotB,m_symbol.Ask(),Test_Lot))
        {
         Print("Error OrderCalcMargin #",GetLastError());
         return;
        }
      if(Test_Lot*3.0>m_account.FreeMargin())
         return;
      m_trade.Buy(LotB,Symbol(),m_symbol.Ask(),0,0,"Buy ");
      return;
     }
   if((s==0 && sigdw==1 && b==0) || (m_symbol.Bid()>opS+dis+spred && s>=1 && b==0))
     {
      double Test_Lot=0.0;
      if(!OrderCalcMargin(ORDER_TYPE_BUY,m_symbol.Name(),LotS,m_symbol.Ask(),Test_Lot))
        {
         Print("Error OrderCalcMargin #",GetLastError());
         return;
        }
      if(Test_Lot*3.0>m_account.FreeMargin())
         return;
      m_trade.Sell(LotS,Symbol(),m_symbol.Bid(),0,0,"Sell");
      return;
     }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   double TP=NormalizeDouble(spred+ExtTakeProfit*m_symbol.Point(),m_symbol.Digits());
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   bool buy_or_sell=false;
   if(!RefreshRates())
      return;
   for(int iq=total-1; iq>=0; iq--)
     {
      if(m_position.SelectByIndex(iq))
        {
         if(m_position.Symbol()==Symbol() && m_position.Magic()==Magic)
           {
            if(m_position.PositionType()==POSITION_TYPE_BUY && m_position.TakeProfit()==0 && b==1)
              {
               m_trade.PositionModify(m_position.Ticket(),
                                      m_position.StopLoss(),NormalizeDouble(m_position.PriceOpen()+TP,Digits()));
               buy_or_sell=true;
              }
            if(m_position.PositionType()==POSITION_TYPE_SELL && m_position.TakeProfit()==0 && s==1)
              {
               m_trade.PositionModify(m_position.Ticket(),
                                      m_position.StopLoss(),NormalizeDouble(m_position.PriceOpen()-TP,Digits()));
               buy_or_sell=true;
              }
           }
        }
     }
   if(buy_or_sell)
      return;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
   double nn=0,bb=0;
   double factb=0.0;
   for(int ui=total-1; ui>=0; ui--)
     {
      if(m_position.SelectByIndex(ui))
        {
         if(m_position.Symbol()==Symbol())
           {
            if(m_position.PositionType()==POSITION_TYPE_BUY && m_position.Magic()==Magic)
              {
               double op=m_position.PriceOpen();
               double llot=m_position.Volume();
               double itog=op*llot;
               bb=bb+itog;
               nn=nn+llot;
               factb=bb/nn;
              }
           }
        }
     }
   double nnn=0,bbb=0;
   double facts=0.0;
   for(int usi=total-1; usi>=0; usi--)
     {
      if(m_position.SelectByIndex(usi))
        {
         if(m_position.Symbol()==Symbol())
           {
            if(m_position.PositionType()==POSITION_TYPE_SELL && m_position.Magic()==Magic)
              {
               double ops=m_position.PriceOpen();
               double llots=m_position.Volume();;
               double itogs=ops*llots;
               bbb=bbb+itogs;
               nnn=nnn+llots;
               facts=bbb/nnn;
              }
           }
        }
     }
   buy_or_sell=false;
   if(!RefreshRates())
      return;
   for(int uui=total-1; uui>=0; uui--)
     {
      if(m_position.SelectByIndex(uui))
        {
         if(m_position.Symbol()==Symbol())
           {
            double pr_open=m_position.PriceOpen();
            double pr_curr=m_position.PriceCurrent();
            double pr_tp=m_position.TakeProfit();
            if(b>=2 && m_position.PositionType()==POSITION_TYPE_BUY && m_position.Magic()==Magic)
              {
               if(!CompareDoubles(m_position.TakeProfit(),factb+CORR))
                 {
                  if(!m_trade.PositionModify(m_position.Ticket(),m_position.StopLoss(),factb+CORR))
                     DebugBreak();
                  buy_or_sell=true;
                 }
              }
            if(s>=2 && m_position.PositionType()==POSITION_TYPE_SELL && m_position.Magic()==Magic)
              {
               if(!CompareDoubles(m_position.TakeProfit(),facts-CORR))
                 {
                  if(!m_trade.PositionModify(m_position.Ticket(),m_position.StopLoss(),facts-CORR))
                     DebugBreak();
                  buy_or_sell=true;
                 }
              }
           }
        }
     }
//---
   return;
  }
//+------------------------------------------------------------------+
//| Refreshes the symbol quotes data                                 |
//+------------------------------------------------------------------+
bool RefreshRates()
  {
//--- refresh rates
   if(!m_symbol.RefreshRates())
      return(false);
//--- protection against the return value of "zero"
   if(m_symbol.Ask()==0 || m_symbol.Bid()==0)
      return(false);
//---
   return(true);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CompareDoubles(double number1,double number2)
  {
   if(NormalizeDouble(number1-number2,Digits()-1)==0)
      return(true);
   else
      return(false);
  }
//+------------------------------------------------------------------+
//| Check Freeze and Stops levels                                    |
//+------------------------------------------------------------------+
bool FreezeStopsLevels(double &level)
  {
//--- check Freeze and Stops levels
   /*
      Type of order/position  |  Activation price  |  Check
      ------------------------|--------------------|--------------------------------------------
      Buy Limit order         |  Ask               |  Ask-OpenPrice  >= SYMBOL_TRADE_FREEZE_LEVEL
      Buy Stop order          |  Ask               |  OpenPrice-Ask  >= SYMBOL_TRADE_FREEZE_LEVEL
      Sell Limit order        |  Bid               |  OpenPrice-Bid  >= SYMBOL_TRADE_FREEZE_LEVEL
      Sell Stop order         |  Bid               |  Bid-OpenPrice  >= SYMBOL_TRADE_FREEZE_LEVEL
      Buy position            |  Bid               |  TakeProfit-Bid >= SYMBOL_TRADE_FREEZE_LEVEL
                              |                    |  Bid-StopLoss   >= SYMBOL_TRADE_FREEZE_LEVEL
      Sell position           |  Ask               |  Ask-TakeProfit >= SYMBOL_TRADE_FREEZE_LEVEL
                              |                    |  StopLoss-Ask   >= SYMBOL_TRADE_FREEZE_LEVEL

      Buying is done at the Ask price                 |  Selling is done at the Bid price
      ------------------------------------------------|----------------------------------
      TakeProfit        >= Bid                        |  TakeProfit        <= Ask
      StopLoss          <= Bid                        |  StopLoss          >= Ask
      TakeProfit - Bid  >= SYMBOL_TRADE_STOPS_LEVEL   |  Ask - TakeProfit  >= SYMBOL_TRADE_STOPS_LEVEL
      Bid - StopLoss    >= SYMBOL_TRADE_STOPS_LEVEL   |  StopLoss - Ask    >= SYMBOL_TRADE_STOPS_LEVEL
   */
   if(!RefreshRates() || !m_symbol.Refresh())
      return(false);
//--- FreezeLevel -> for pending order and modification
   double freeze_level=m_symbol.FreezeLevel()*m_symbol.Point();
   if(freeze_level==0.0)
      freeze_level=(m_symbol.Ask()-m_symbol.Bid())*3.0;
//--- StopsLevel -> for TakeProfit and StopLoss
   double stop_level=m_symbol.StopsLevel()*m_symbol.Point();
   if(stop_level==0.0)
      stop_level=(m_symbol.Ask()-m_symbol.Bid())*3.0;

   if(freeze_level<=0.0 || stop_level<=0.0)
      return(false);

   level=(freeze_level>stop_level)?freeze_level:stop_level;

   double spread=m_symbol.Spread()*m_symbol.Point()*3.0;
   level=(level>spread)?level:spread;
//---
   return(true);
  }
//+------------------------------------------------------------------+
//| Is position exists                                               |
//+------------------------------------------------------------------+
bool IsPositionExists(void)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
      if(m_position.SelectByIndex(i)) // selects the position by index for further access to its properties
         if(m_position.Symbol()==m_symbol.Name() && m_position.Magic()==Magic)
            return(true);
//---
   return(false);
  }
//+------------------------------------------------------------------+
//| Close all positions                                              |
//+------------------------------------------------------------------+
void CloseAllPositions(const double level)
  {
   /*
      Buying is done at the Ask price                 |  Selling is done at the Bid price
      ------------------------------------------------|----------------------------------
      TakeProfit        >= Bid                        |  TakeProfit        <= Ask
      StopLoss          <= Bid                        |  StopLoss          >= Ask
      TakeProfit - Bid  >= SYMBOL_TRADE_STOPS_LEVEL   |  Ask - TakeProfit  >= SYMBOL_TRADE_STOPS_LEVEL
      Bid - StopLoss    >= SYMBOL_TRADE_STOPS_LEVEL   |  StopLoss - Ask    >= SYMBOL_TRADE_STOPS_LEVEL
   */
   for(int i=PositionsTotal()-1; i>=0; i--) // returns the number of current positions
      if(m_position.SelectByIndex(i)) // selects the position by index for further access to its properties
         if(m_position.Symbol()==m_symbol.Name() && m_position.Magic()==Magic)
           {
            if(m_position.PositionType()==POSITION_TYPE_BUY)
              {
               bool take_profit_level=(m_position.TakeProfit()!=0.0 && m_position.TakeProfit()-m_position.PriceCurrent()>=level) || m_position.TakeProfit()==0.0;
               bool stop_loss_level=(m_position.StopLoss()!=0.0 && m_position.PriceCurrent()-m_position.StopLoss()>=level) || m_position.StopLoss()==0.0;
               if(take_profit_level && stop_loss_level)
                  if(!m_trade.PositionClose(m_position.Ticket())) // close a position by the specified m_symbol
                     Print(__FILE__," ",__FUNCTION__,", ERROR: ","CTrade.PositionClose ",m_position.Ticket());
              }
            if(m_position.PositionType()==POSITION_TYPE_SELL)
              {
               bool take_profit_level=(m_position.TakeProfit()!=0.0 && m_position.PriceCurrent()-m_position.TakeProfit()>=level) || m_position.TakeProfit()==0.0;
               bool stop_loss_level=(m_position.StopLoss()!=0.0 && m_position.StopLoss()-m_position.PriceCurrent()>=level) || m_position.StopLoss()==0.0;
               if(take_profit_level && stop_loss_level)
                  if(!m_trade.PositionClose(m_position.Ticket())) // close a position by the specified m_symbol
                     Print(__FILE__," ",__FUNCTION__,", ERROR: ","CTrade.PositionClose ",m_position.Ticket());
              }
           }
  }
//+------------------------------------------------------------------+
//| Profit all positions                                             |
//+------------------------------------------------------------------+
double ProfitAllPositions(void)
  {
   double profit=0.0;

   for(int i=PositionsTotal()-1; i>=0; i--)
      if(m_position.SelectByIndex(i)) // selects the position by index for further access to its properties
         if(m_position.Symbol()==m_symbol.Name() && m_position.Magic()==Magic)
            profit+=m_position.Commission()+m_position.Swap()+m_position.Profit();
//---
   return(profit);
  }
//+------------------------------------------------------------------+
