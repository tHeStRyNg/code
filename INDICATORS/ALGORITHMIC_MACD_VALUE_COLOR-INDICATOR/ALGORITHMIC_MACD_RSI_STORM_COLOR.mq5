//+-----------------------------------------------------------------+
//|                 Indicator: ALGORITHMIC_MACD_RSI_STORM_COLOR.mq5 |
//|                               Copyright 2023, ALGORITHMIC, GMBH |
//|                                     https://www.algorithmic.one |
//+-----------------------------------------------------------------+
#property copyright "Copyright 2023, ALGORITHMIC, GMBH"
#property link      "https://www.algorithmic.one"
#property version   "1.00"
#property description "ALGORITHMIC_MACD_RSI_STORM_COLOR"

//--- indicator settings
#property indicator_separate_window
#property indicator_buffers 6
#property indicator_plots 6

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

input int Fast_EMA = 12;
input int Slow_EMA = 26;
input double Levels_Buy = 0.00005;
input double Levels_Sell = -0.00005;
double myPoint; //initialized in OnInit
int MACD_handle;
double MACD_Main[];

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
   SetIndexBuffer(0, Buffer1);
   PlotIndexSetDouble(0, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   SetIndexBuffer(1, Buffer2);
   PlotIndexSetDouble(1, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   SetIndexBuffer(2, Buffer3);
   PlotIndexSetDouble(2, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   SetIndexBuffer(3, Buffer4);
   PlotIndexSetDouble(3, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   SetIndexBuffer(4, Buffer5);
   PlotIndexSetDouble(4, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   SetIndexBuffer(5, Buffer6);
   PlotIndexSetDouble(5, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   //initialize myPoint
   myPoint = Point();
   if(Digits() == 5 || Digits() == 3)
     {
      myPoint *= 10;
     }
   MACD_handle = iMACD(NULL, PERIOD_CURRENT, Fast_EMA, Slow_EMA, 9, PRICE_CLOSE);
   if(MACD_handle < 0)
     {
      Print("The creation of iMACD has failed: MACD_handle=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
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
   
   if(BarsCalculated(MACD_handle) <= 0) 
      return(0);
   if(CopyBuffer(MACD_handle, MAIN_LINE, 0, rates_total, MACD_Main) <= 0) return(rates_total);
   ArraySetAsSeries(MACD_Main, true);
   //--- main loop
   for(int i = limit-1; i >= 0; i--)
     {
      if (i >= MathMin(5000-1, rates_total-1-50)) continue; //omit some old rates to prevent "Array out of range" or slow calculation   
      
      //Indicator Buffer 1
      if(MACD_Main[i] > 0 //MACD > fixed value
      && MACD_Main[i] > MACD_Main[1+i] //MACD > MACD
      )
        {
         Buffer1[i] = MACD_Main[i]; //Set indicator value at MACD
        }
      else
        {
         Buffer1[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 2
      if(MACD_Main[i] > 0 //MACD > fixed value
      && MACD_Main[i] < MACD_Main[1+i] //MACD < MACD
      )
        {
         Buffer2[i] = MACD_Main[i]; //Set indicator value at MACD
        }
      else
        {
         Buffer2[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 3
      if(MACD_Main[i] < 0 //MACD < fixed value
      && MACD_Main[i] < MACD_Main[1+i] //MACD < MACD
      )
        {
         Buffer3[i] = MACD_Main[i]; //Set indicator value at MACD
        }
      else
        {
         Buffer3[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 4
      if(MACD_Main[i] < 0 //MACD < fixed value
      && MACD_Main[i] > MACD_Main[1+i] //MACD > MACD
      )
        {
         Buffer4[i] = MACD_Main[i]; //Set indicator value at MACD
        }
      else
        {
         Buffer4[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 5
      if(MACD_Main[i] > 0 //MACD > fixed value
      )
        {
         Buffer5[i] = Levels_Buy; //Set indicator value at fixed value
        }
      else
        {
         Buffer5[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 6
      if(MACD_Main[i] < 0 //MACD < fixed value
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