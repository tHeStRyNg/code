//+------------------------------------------------------------------+
//|                          INDICATOR: ALGORITHMIC MA Cross 5TF.mq5 |
//|                                                 ALGORITHMIC GMBH |
//|                                      https://www.algorithmic.one |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, ALGORITHMIC GMBH"
#property link      "https://www.algorithmic.one"
#property version   "1.00"
#property description "ALGORITHMIC MA Cross 5TF"

//--- indicator settings
#property indicator_separate_window
#property indicator_buffers 12
#property indicator_plots 12

#property indicator_type1 DRAW_LINE
#property indicator_style1 STYLE_SOLID
#property indicator_width1 3
#property indicator_color1 0xFFFFFF
#property indicator_label1 "Line-0"

#property indicator_type2 DRAW_LINE
#property indicator_style2 STYLE_SOLID
#property indicator_width2 3
#property indicator_color2 0xFFFFFF
#property indicator_label2 "Line-30"

#property indicator_type3 DRAW_ARROW
#property indicator_width3 3
#property indicator_color3 0x14BD0B
#property indicator_label3 "Buy H1"

#property indicator_type4 DRAW_ARROW
#property indicator_width4 3
#property indicator_color4 0xA417E6
#property indicator_label4 "Sell H1"

#property indicator_type5 DRAW_ARROW
#property indicator_width5 3
#property indicator_color5 0x14BD0B
#property indicator_label5 "Buy M30"

#property indicator_type6 DRAW_ARROW
#property indicator_width6 3
#property indicator_color6 0xA417E6
#property indicator_label6 "Sell M30"

#property indicator_type7 DRAW_ARROW
#property indicator_width7 3
#property indicator_color7 0x14BD0B
#property indicator_label7 "Buy M15"

#property indicator_type8 DRAW_ARROW
#property indicator_width8 3
#property indicator_color8 0xA417E6
#property indicator_label8 "Sell M15"

#property indicator_type9 DRAW_ARROW
#property indicator_width9 3
#property indicator_color9 0x14BD0B
#property indicator_label9 "Buy M5"

#property indicator_type10 DRAW_ARROW
#property indicator_width10 3
#property indicator_color10 0xA417E6
#property indicator_label10 "Sell M5"

#property indicator_type11 DRAW_ARROW
#property indicator_width11 3
#property indicator_color11 0x14BD0B
#property indicator_label11 "Buy M1"

#property indicator_type12 DRAW_ARROW
#property indicator_width12 3
#property indicator_color12 0xA417E6
#property indicator_label12 "Sell M1"

//--- indicator buffers
double Buffer1[];
double Buffer2[];
double Buffer3[];
double Buffer4[];
double Buffer5[];
double Buffer6[];
double Buffer7[];
double Buffer8[];
double Buffer9[];
double Buffer10[];
double Buffer11[];
double Buffer12[];

input int Fast_MA = 5;
input int Slow_MA = 25;
double myPoint; //initialized in OnInit
int MA_handle;
double MA[];
int MA_handle2;
double MA2[];
int MA_handle3;
double MA3[];
int MA_handle4;
double MA4[];
int MA_handle5;
double MA5[];
int MA_handle6;
double MA6[];
int MA_handle7;
double MA7[];
int MA_handle8;
double MA8[];
int MA_handle9;
double MA9[];
int MA_handle10;
double MA10[];

void myAlert(string type, string message)
  {
   if(type == "print")
      Print(message);
   else if(type == "error")
     {
      Print(type+" | MA Cross 5TF @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
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
   PlotIndexSetInteger(2, PLOT_ARROW, 108);
   SetIndexBuffer(3, Buffer4);
   PlotIndexSetDouble(3, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(3, PLOT_ARROW, 108);
   SetIndexBuffer(4, Buffer5);
   PlotIndexSetDouble(4, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(4, PLOT_ARROW, 108);
   SetIndexBuffer(5, Buffer6);
   PlotIndexSetDouble(5, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(5, PLOT_ARROW, 108);
   SetIndexBuffer(6, Buffer7);
   PlotIndexSetDouble(6, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(6, PLOT_ARROW, 108);
   SetIndexBuffer(7, Buffer8);
   PlotIndexSetDouble(7, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(7, PLOT_ARROW, 108);
   SetIndexBuffer(8, Buffer9);
   PlotIndexSetDouble(8, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(8, PLOT_ARROW, 108);
   SetIndexBuffer(9, Buffer10);
   PlotIndexSetDouble(9, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(9, PLOT_ARROW, 108);
   SetIndexBuffer(10, Buffer11);
   PlotIndexSetDouble(10, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(10, PLOT_ARROW, 108);
   SetIndexBuffer(11, Buffer12);
   PlotIndexSetDouble(11, PLOT_EMPTY_VALUE, EMPTY_VALUE);
   PlotIndexSetInteger(11, PLOT_ARROW, 108);
   //initialize myPoint
   myPoint = Point();
   if(Digits() == 5 || Digits() == 3)
     {
      myPoint *= 10;
     }
   MA_handle = iMA(NULL, PERIOD_H1, Fast_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle < 0)
     {
      Print("The creation of iMA has failed: MA_handle=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle2 = iMA(NULL, PERIOD_H1, Slow_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle2 < 0)
     {
      Print("The creation of iMA has failed: MA_handle2=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle3 = iMA(NULL, PERIOD_M30, Fast_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle3 < 0)
     {
      Print("The creation of iMA has failed: MA_handle3=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle4 = iMA(NULL, PERIOD_M30, Slow_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle4 < 0)
     {
      Print("The creation of iMA has failed: MA_handle4=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle5 = iMA(NULL, PERIOD_M15, Fast_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle5 < 0)
     {
      Print("The creation of iMA has failed: MA_handle5=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle6 = iMA(NULL, PERIOD_M15, Slow_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle6 < 0)
     {
      Print("The creation of iMA has failed: MA_handle6=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle7 = iMA(NULL, PERIOD_M5, Fast_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle7 < 0)
     {
      Print("The creation of iMA has failed: MA_handle7=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle8 = iMA(NULL, PERIOD_M5, Slow_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle8 < 0)
     {
      Print("The creation of iMA has failed: MA_handle8=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle9 = iMA(NULL, PERIOD_M1, Fast_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle9 < 0)
     {
      Print("The creation of iMA has failed: MA_handle9=", INVALID_HANDLE);
      Print("Runtime error = ", GetLastError());
      return(INIT_FAILED);
     }
   
   MA_handle10 = iMA(NULL, PERIOD_M1, Slow_MA, 0, MODE_SMA, PRICE_CLOSE);
   if(MA_handle10 < 0)
     {
      Print("The creation of iMA has failed: MA_handle10=", INVALID_HANDLE);
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
   ArraySetAsSeries(Buffer7, true);
   ArraySetAsSeries(Buffer8, true);
   ArraySetAsSeries(Buffer9, true);
   ArraySetAsSeries(Buffer10, true);
   ArraySetAsSeries(Buffer11, true);
   ArraySetAsSeries(Buffer12, true);
   //--- initial zero
   if(prev_calculated < 1)
     {
      ArrayInitialize(Buffer1, EMPTY_VALUE);
      ArrayInitialize(Buffer2, EMPTY_VALUE);
      ArrayInitialize(Buffer3, EMPTY_VALUE);
      ArrayInitialize(Buffer4, EMPTY_VALUE);
      ArrayInitialize(Buffer5, EMPTY_VALUE);
      ArrayInitialize(Buffer6, EMPTY_VALUE);
      ArrayInitialize(Buffer7, EMPTY_VALUE);
      ArrayInitialize(Buffer8, EMPTY_VALUE);
      ArrayInitialize(Buffer9, EMPTY_VALUE);
      ArrayInitialize(Buffer10, EMPTY_VALUE);
      ArrayInitialize(Buffer11, EMPTY_VALUE);
      ArrayInitialize(Buffer12, EMPTY_VALUE);
     }
   else
      limit++;
   datetime TimeShift[];
   
   if(BarsCalculated(MA_handle) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle, 0, 0, rates_total, MA) <= 0) return(rates_total);
   ArraySetAsSeries(MA, true);
   if(CopyTime(Symbol(), PERIOD_CURRENT, 0, rates_total, TimeShift) <= 0) return(rates_total);
   ArraySetAsSeries(TimeShift, true);
   if(BarsCalculated(MA_handle2) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle2, 0, 0, rates_total, MA2) <= 0) return(rates_total);
   ArraySetAsSeries(MA2, true);
   if(BarsCalculated(MA_handle3) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle3, 0, 0, rates_total, MA3) <= 0) return(rates_total);
   ArraySetAsSeries(MA3, true);
   if(BarsCalculated(MA_handle4) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle4, 0, 0, rates_total, MA4) <= 0) return(rates_total);
   ArraySetAsSeries(MA4, true);
   if(BarsCalculated(MA_handle5) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle5, 0, 0, rates_total, MA5) <= 0) return(rates_total);
   ArraySetAsSeries(MA5, true);
   if(BarsCalculated(MA_handle6) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle6, 0, 0, rates_total, MA6) <= 0) return(rates_total);
   ArraySetAsSeries(MA6, true);
   if(BarsCalculated(MA_handle7) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle7, 0, 0, rates_total, MA7) <= 0) return(rates_total);
   ArraySetAsSeries(MA7, true);
   if(BarsCalculated(MA_handle8) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle8, 0, 0, rates_total, MA8) <= 0) return(rates_total);
   ArraySetAsSeries(MA8, true);
   if(BarsCalculated(MA_handle9) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle9, 0, 0, rates_total, MA9) <= 0) return(rates_total);
   ArraySetAsSeries(MA9, true);
   if(BarsCalculated(MA_handle10) <= 0) 
      return(0);
   if(CopyBuffer(MA_handle10, 0, 0, rates_total, MA10) <= 0) return(rates_total);
   ArraySetAsSeries(MA10, true);
   //--- main loop
   for(int i = limit-1; i >= 0; i--)
     {
      if (i >= MathMin(5000-1, rates_total-1-50)) continue; //omit some old rates to prevent "Array out of range" or slow calculation   
      
      int barshift_H1 = iBarShift(Symbol(), PERIOD_H1, TimeShift[i]);
      if(barshift_H1 < 0) continue;
      int barshift_M30 = iBarShift(Symbol(), PERIOD_M30, TimeShift[i]);
      if(barshift_M30 < 0) continue;
      int barshift_M15 = iBarShift(Symbol(), PERIOD_M15, TimeShift[i]);
      if(barshift_M15 < 0) continue;
      int barshift_M5 = iBarShift(Symbol(), PERIOD_M5, TimeShift[i]);
      if(barshift_M5 < 0) continue;
      int barshift_M1 = iBarShift(Symbol(), PERIOD_M1, TimeShift[i]);
      if(barshift_M1 < 0) continue;
      
      //Indicator Buffer 1
      if(true //no conditions!
      )
        {
         Buffer1[i] = 0; //Set indicator value at fixed value
        }
      else
        {
         Buffer1[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 2
      if(true //no conditions!
      )
        {
         Buffer2[i] = 30; //Set indicator value at fixed value
        }
      else
        {
         Buffer2[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 3
      if(MA[barshift_H1] > MA2[barshift_H1] //Moving Average > Moving Average
      )
        {
         Buffer3[i] = 25; //Set indicator value at fixed value
        }
      else
        {
         Buffer3[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 4
      if(MA[barshift_H1] < MA2[barshift_H1] //Moving Average < Moving Average
      )
        {
         Buffer4[i] = 25; //Set indicator value at fixed value
        }
      else
        {
         Buffer4[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 5
      if(MA3[barshift_M30] > MA4[barshift_M30] //Moving Average > Moving Average
      )
        {
         Buffer5[i] = 20; //Set indicator value at fixed value
        }
      else
        {
         Buffer5[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 6
      if(MA3[barshift_M30] < MA4[barshift_M30] //Moving Average < Moving Average
      )
        {
         Buffer6[i] = 20; //Set indicator value at fixed value
        }
      else
        {
         Buffer6[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 7
      if(MA5[barshift_M15] > MA6[barshift_M15] //Moving Average > Moving Average
      )
        {
         Buffer7[i] = 15; //Set indicator value at fixed value
        }
      else
        {
         Buffer7[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 8
      if(MA5[barshift_M15] < MA6[barshift_M15] //Moving Average < Moving Average
      )
        {
         Buffer8[i] = 15; //Set indicator value at fixed value
        }
      else
        {
         Buffer8[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 9
      if(MA7[barshift_M5] > MA8[barshift_M5] //Moving Average > Moving Average
      )
        {
         Buffer9[i] = 10; //Set indicator value at fixed value
        }
      else
        {
         Buffer9[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 10
      if(MA7[barshift_M5] < MA8[barshift_M5] //Moving Average < Moving Average
      )
        {
         Buffer10[i] = 10; //Set indicator value at fixed value
        }
      else
        {
         Buffer10[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 11
      if(MA9[barshift_M1] > MA10[barshift_M1] //Moving Average > Moving Average
      )
        {
         Buffer11[i] = 5; //Set indicator value at fixed value
        }
      else
        {
         Buffer11[i] = EMPTY_VALUE;
        }
      //Indicator Buffer 12
      if(MA9[barshift_M1] < MA10[barshift_M1] //Moving Average < Moving Average
      )
        {
         Buffer12[i] = 5; //Set indicator value at fixed value
        }
      else
        {
         Buffer12[i] = EMPTY_VALUE;
        }
     }
   return(rates_total);
  }
//+------------------------------------------------------------------+