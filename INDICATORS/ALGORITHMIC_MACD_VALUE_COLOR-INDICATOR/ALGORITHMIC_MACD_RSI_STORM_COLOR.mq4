//+-----------------------------------------------------------------+
//|                 Indicator: ALGORITHMIC_MACD_RSI_STORM_COLOR.mq4 |
//|                               Copyright 2023, ALGORITHMIC, GMBH |
//|                                     https://www.algorithmic.one |
//+-----------------------------------------------------------------+
#property copyright "Copyright 2023, ALGORITHMIC, GMBH"
#property link      "https://www.algorithmic.one"
#property version   "1.00"
#property description "ALGORITHMIC_MACD_RSI_STORM_COLOR"

#include <stdlib.mqh>
#include <stderror.mqh>

//--- indicator settings
#property indicator_separate_window
#property indicator_buffers 6

#property indicator_type1 DRAW_HISTOGRAM
#property indicator_style1 STYLE_SOLID
#property indicator_width1 4
#property indicator_color1 0x2AA85F
#property indicator_label1 "Signal Buy"

#property indicator_type2 DRAW_HISTOGRAM
#property indicator_style2 STYLE_SOLID
#property indicator_width2 4
#property indicator_color2 0x7AE6A7
#property indicator_label2 "Signal Buy"

#property indicator_type3 DRAW_HISTOGRAM
#property indicator_style3 STYLE_SOLID
#property indicator_width3 4
#property indicator_color3 0x0E32E6
#property indicator_label3 "Signal Sell"

#property indicator_type4 DRAW_HISTOGRAM
#property indicator_style4 STYLE_SOLID
#property indicator_width4 4
#property indicator_color4 0x90A1F5
#property indicator_label4 "Signal Sell"

#property indicator_type5 DRAW_HISTOGRAM
#property indicator_style5 STYLE_SOLID
#property indicator_width5 4
#property indicator_color5 0x706C63
#property indicator_label5 "Value_Buy"

#property indicator_type6 DRAW_HISTOGRAM
#property indicator_style6 STYLE_SOLID
#property indicator_width6 4
#property indicator_color6 0x706C63
#property indicator_label6 "Value_Sell"

//--- indicator buffers
double Buffer1[];
double Buffer2[];
double Buffer3[];
double Buffer4[];
double Buffer5[];
double Buffer6[];

extern int Fast_EMA = 12;
extern int Slow_EMA = 26;
extern double Levels_Buy = 0.0005;
extern double Levels_Sell = -0.0005;
double myPoint; //initialized in OnInit

void myAlert(string type, string message)
  {
   if(type == "print")
      Print(message);
   else if(type == "error")
     {
      Print(type+" | MACD Value Color @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
     }
   else if(type == "order")
     {
     }
   else if(type == "modify")
     {
     }
  }

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {   
   IndicatorBuffers(6);
   SetIndexBuffer(0, Buffer1);
   SetIndexEmptyValue(0, EMPTY_VALUE);
   SetIndexBuffer(1, Buffer2);
   SetIndexEmptyValue(1, EMPTY_VALUE);
   SetIndexBuffer(2, Buffer3);
   SetIndexEmptyValue(2, EMPTY_VALUE);
   SetIndexBuffer(3, Buffer4);
   SetIndexEmptyValue(3, EMPTY_VALUE);
   SetIndexBuffer(4, Buffer5);
   SetIndexEmptyValue(4, EMPTY_VALUE);
   SetIndexBuffer(5, Buffer6);
   SetIndexEmptyValue(5, EMPTY_VALUE);
   //initialize myPoint
   myPoint = Point();
   if(Digits() == 5 || Digits() == 3)
     {
      myPoint *= 10;
     }
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime& time[],
                const double& open[],
                const double& high[],
                const double& low[],
                const double& close[],
                const long& tick_volume[],
                const long& volume[],
                const int& spread[])
  {
   int limit = rates_total - prev_calculated;
   //--- counting from 0 to rates_total
   ArraySetAsSeries(Buffer1, true);
   ArraySetAsSeries(Buffer2, true);
   ArraySetAsSeries(Buffer3, true);
   ArraySetAsSeries(Buffer4, true);
   ArraySetAsSeries(Buffer5, true);
   ArraySetAsSeries(Buffer6, true);
   //--- initial zero
   if(prev_calculated < 1)
     {
      ArrayInitialize(Buffer1, EMPTY_VALUE);
      ArrayInitialize(Buffer2, EMPTY_VALUE);
      ArrayInitialize(Buffer3, EMPTY_VALUE);
      ArrayInitialize(Buffer4, EMPTY_VALUE);
      ArrayInitialize(Buffer5, EMPTY_VALUE);
      ArrayInitialize(Buffer6, EMPTY_VALUE);
     }
   else
      limit++;
   
   //--- main loop
   for(int i = limit-1; i >= 0; i--)
     {
      if (i >= MathMin(5000-1, rates_total-1-50)) continue; //omit some old rates to prevent "Array out of range" or slow calculation   
      
      //Indicator Buffer 1
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) > 0 //MACD > fixed value
      && iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) > iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, 1+i) //MACD > MACD
      )
        {
         Buffer1[i] = iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i); //Set indicator value at MACD
        }
      else
        {
         Buffer1[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 2
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) > 0 //MACD > fixed value
      && iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) < iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, 1+i) //MACD < MACD
      )
        {
         Buffer2[i] = iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i); //Set indicator value at MACD
        }
      else
        {
         Buffer2[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 3
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) < 0 //MACD < fixed value
      && iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) < iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, 1+i) //MACD < MACD
      )
        {
         Buffer3[i] = iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i); //Set indicator value at MACD
        }
      else
        {
         Buffer3[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 4
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) < 0 //MACD < fixed value
      && iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) > iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, 1+i) //MACD > MACD
      )
        {
         Buffer4[i] = iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i); //Set indicator value at MACD
        }
      else
        {
         Buffer4[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 5
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) > 0 //MACD > fixed value
      )
        {
         Buffer5[i] = Levels_Buy; //Set indicator value at fixed value
        }
      else
        {
         Buffer5[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 6
      if(iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE, MODE_MAIN, i) < 0 //MACD < fixed value
      )
        {
         Buffer6[i] = Levels_Sell; //Set indicator value at fixed value
        }
      else
        {
         Buffer6[i] = EMPTY_VALUE;
        }
     }
   return(rates_total);
  }
//+------------------------------------------------------------------+