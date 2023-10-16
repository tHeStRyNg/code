#define OP_SELL 1
#define OP_SELLSTOP 5
#define OP_SELLLIMIT 3
#define OP_BUY 0
#define SELECT_BY_POS 0
#define MODE_TRADES 0
#define SELECT_BY_TICKET 1
#define MODE_LOTSTEP 24
#define MODE_LOTSIZE 15
#define MODE_MINLOT 23
#define MODE_MAXLOT 25
#define MODE_TICKVALUE 16
#define MODE_POINT 11
#define MODE_TICKSIZE 17
#define MODE_MARGINREQUIRED 32
#define OP_BUYLIMIT 2
#define OP_BUYSTOP 4
#define MODE_HISTORY 1
#define MODE_TRADEALLOWED 22
#define MODE_DIGITS 12
#define MODE_ASK 10
#define MODE_BID 9
//+------------------------------------------------------------------------------+//
//)   ____  _  _  ____  ____  ____  ____  __  __    __      ___  _____  __  __   (//
//)  ( ___)( \/ )(  _ \(  _ \( ___)( ___)(  \/  )  /__\    / __)(  _  )(  \/  )  (//
//)   )__)  )  (  )(_) ))   / )__)  )__)  )    (  /(__)\  ( (__  )(_)(  )    (   (//
//)  (__)  (_/\_)(____/(_)\_)(____)(____)(_/\/\_)(__)(__)()\___)(_____)(_/\/\_)  (//
//)   https://fxdreema.com                             Copyright 2022, fxDreema  (//
//+------------------------------------------------------------------------------+//
#property copyright   ""
#property link        "https://fxdreema.com"
#property description ""
#property version     "1.0"
#property strict

/************************************************************************************************************************/
// +------------------------------------------------------------------------------------------------------------------+ //
// |                       INPUT PARAMETERS, GLOBAL VARIABLES, CONSTANTS, IMPORTS and INCLUDES                        | //
// |                      System and Custom variables and other definitions used in the project                       | //
// +------------------------------------------------------------------------------------------------------------------+ //
/************************************************************************************************************************/

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// System constants (project settings) //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
//--
#define PROJECT_ID "mt4-1594"
//--
// Point Format Rules
#define POINT_FORMAT_RULES "0.001=0.01,0.00001=0.0001,0.000001=0.0001" // this is deserialized in a special function later
#define ENABLE_SPREAD_METER true
#define ENABLE_STATUS true
#define ENABLE_TEST_INDICATORS true
//--
// Events On/Off
#define ENABLE_EVENT_TICK 1 // enable "Tick" event
#define ENABLE_EVENT_TRADE 0 // enable "Trade" event
#define ENABLE_EVENT_TIMER 0 // enable "Timer" event
//--
// Virtual Stops
#define VIRTUAL_STOPS_ENABLED 0 // enable virtual stops
#define VIRTUAL_STOPS_TIMEOUT 0 // virtual stops timeout
#define USE_EMERGENCY_STOPS "no" // "yes" to use emergency (hard stops) when virtual stops are in use. "always" to use EMERGENCY_STOPS_ADD as emergency stops when there is no virtual stop.
#define EMERGENCY_STOPS_REL 0 // use 0 to disable hard stops when virtual stops are enabled. Use a value >=0 to automatically set hard stops with virtual. Example: if 2 is used, then hard stops will be 2 times bigger than virtual ones.
#define EMERGENCY_STOPS_ADD 0 // add pips to relative size of emergency stops (hard stops)
//--
// Settings for events
#define ON_TRADE_REALTIME 0 //
#define ON_TIMER_PERIOD 60 // Timer event period (in seconds)

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// System constants (predefined constants) //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
//--
// Blocks Lookup Functions
string fxdBlocksLookupTable[];

#define TLOBJPROP_TIME1 801
#define OBJPROP_TL_PRICE_BY_SHIFT 802
#define OBJPROP_TL_SHIFT_BY_PRICE 803
#define OBJPROP_FIBOVALUE 804
#define OBJPROP_FIBOPRICEVALUE 805
#define OBJPROP_BARSHIFT1 807
#define OBJPROP_BARSHIFT2 808
#define OBJPROP_BARSHIFT3 809
#define SEL_CURRENT 0
#define SEL_INITIAL 1

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// Enumerations, Imports, Constants, Variables //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//





//--
// Constants (Input Parameters)
input string EA_Name = "Sto Within Limits";input bool Mode_Auto_Lots = false;input int Auto_Lots = 1000000; // Auto_ Lots_(÷)
input double Lots = 0.1;input int Close_Profit_pips = 30;input string Mode_Indicator = "Set Stochastic";input int k_lone_period = 5; // %k_lone_period
input int D_line_period = 3; // %D_line_period
input int Slowing_value = 3;input string Mode_Within_Limits = "Set Within Limits";input int How_Many_Candles = 5;input int Upper_Level_Buy = 30;input int Lower_Level_Buy = 1;input int Upper_Level_Sell = 100;input int Lower_Level_Sell = 70;input int MagicStart = 10001; // Magic Number, kind of...
class c
{
		public:
	static string EA_Name;
	static bool Mode_Auto_Lots;
	static int Auto_Lots;
	static double Lots;
	static int Close_Profit_pips;
	static string Mode_Indicator;
	static int k_lone_period;
	static int D_line_period;
	static int Slowing_value;
	static string Mode_Within_Limits;
	static int How_Many_Candles;
	static int Upper_Level_Buy;
	static int Lower_Level_Buy;
	static int Upper_Level_Sell;
	static int Lower_Level_Sell;
	static int MagicStart;
};
string c::EA_Name;
bool c::Mode_Auto_Lots;
int c::Auto_Lots;
double c::Lots;
int c::Close_Profit_pips;
string c::Mode_Indicator;
int c::k_lone_period;
int c::D_line_period;
int c::Slowing_value;
string c::Mode_Within_Limits;
int c::How_Many_Candles;
int c::Upper_Level_Buy;
int c::Lower_Level_Buy;
int c::Upper_Level_Sell;
int c::Lower_Level_Sell;
int c::MagicStart;


//--
// Variables (Global Variables)
class v
{
		public:
	static double Lots_Buy;
	static double Lots_Sell;
};
double v::Lots_Buy;
double v::Lots_Sell;




//VVVVVVVVVVVVVVVVVVVVVVVVV//
// System global variables //
//^^^^^^^^^^^^^^^^^^^^^^^^^//
//--
int FXD_CURRENT_FUNCTION_ID = 0;
double FXD_MILS_INIT_END    = 0;
int FXD_TICKS_FROM_START    = 0;
int FXD_MORE_SHIFT          = 0;
bool FXD_DRAW_SPREAD_INFO   = false;
bool FXD_FIRST_TICK_PASSED  = false;
bool FXD_BREAK              = false;
bool FXD_CONTINUE           = false;
bool FXD_CHART_IS_OFFLINE   = false;
bool FXD_ONTIMER_TAKEN      = false;
bool FXD_ONTIMER_TAKEN_IN_MILLISECONDS = false;
double FXD_ONTIMER_TAKEN_TIME = 0;
bool USE_VIRTUAL_STOPS = VIRTUAL_STOPS_ENABLED;
string FXD_CURRENT_SYMBOL   = "";
int FXD_BLOCKS_COUNT        = 18;
datetime FXD_TICKSKIP_UNTIL = 0;

//- for use in OnChart() event
struct fxd_onchart
{
	int id;
	long lparam;
	double dparam;
	string sparam;
};
fxd_onchart FXD_ONCHART;

/************************************************************************************************************************/
// +------------------------------------------------------------------------------------------------------------------+ //
// |                                                 EVENT FUNCTIONS                                                  | //
// |                           These are the main functions that controls the whole project                           | //
// +------------------------------------------------------------------------------------------------------------------+ //
/************************************************************************************************************************/

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed once when the program starts //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnInit()
{

	// Initiate Constants
	c::EA_Name = EA_Name;
	c::Mode_Auto_Lots = Mode_Auto_Lots;
	c::Auto_Lots = Auto_Lots;
	c::Lots = Lots;
	c::Close_Profit_pips = Close_Profit_pips;
	c::Mode_Indicator = Mode_Indicator;
	c::k_lone_period = k_lone_period;
	c::D_line_period = D_line_period;
	c::Slowing_value = Slowing_value;
	c::Mode_Within_Limits = Mode_Within_Limits;
	c::How_Many_Candles = How_Many_Candles;
	c::Upper_Level_Buy = Upper_Level_Buy;
	c::Lower_Level_Buy = Lower_Level_Buy;
	c::Upper_Level_Sell = Upper_Level_Sell;
	c::Lower_Level_Sell = Lower_Level_Sell;
	c::MagicStart = MagicStart;




	// do or do not not initilialize on reload
	if (UninitializeReason() != 0)
	{
		if (UninitializeReason() == REASON_CHARTCHANGE)
		{
			// if the symbol is the same, do not reload, otherwise continue below
			if (FXD_CURRENT_SYMBOL == Symbol()) {return;}
		}
		else
		{
			return;
		}
	}
	FXD_CURRENT_SYMBOL = Symbol();

	CurrentSymbol(FXD_CURRENT_SYMBOL); // CurrentSymbol() has internal memory that should be set from here when the symboll is changed
	CurrentTimeframe(PERIOD_CURRENT);

	v::Lots_Buy = 0.0;
	v::Lots_Sell = 0.0;




	Comment("");
	for (int i=FAAE::ObjectsTotal(ChartID()); i>=0; i--)
	{
		string name = FAAE::ObjectName(ChartID(), i);
		if (FAAE::StringSubstr(name,0,8) == "fxd_cmnt") {FAAE::ObjectDelete(ChartID(), name);}
	}
	ChartRedraw();



	//-- disable virtual stops in optimization, because graphical objects does not work
	// http://docs.mql4.com/runtime/testing
	if (MQLInfoInteger(MQL_OPTIMIZATION) || (MQLInfoInteger(MQL_TESTER) && !MQLInfoInteger(MQL_VISUAL_MODE))) {
		USE_VIRTUAL_STOPS = false;
	}

	//-- set initial local and server time
	TimeAtStart("set");

	//-- set initial balance
	AccountBalanceAtStart();

	//-- draw the initial spread info meter
	if (ENABLE_SPREAD_METER == false) {
		FXD_DRAW_SPREAD_INFO = false;
	}
	else {
		FXD_DRAW_SPREAD_INFO = !(MQLInfoInteger(MQL_TESTER) && !MQLInfoInteger(MQL_VISUAL_MODE));
	}
	if (FXD_DRAW_SPREAD_INFO) DrawSpreadInfo();

	//-- draw initial status
	if (ENABLE_STATUS) DrawStatus("waiting for tick...");

	//-- draw indicators after test
	TesterHideIndicators(!ENABLE_TEST_INDICATORS);

	//-- working with offline charts
	if (MQLInfoInteger(MQL_PROGRAM_TYPE) == PROGRAM_EXPERT)
	{
		FXD_CHART_IS_OFFLINE = ChartGetInteger(0, CHART_IS_OFFLINE);
	}

	if (MQLInfoInteger(MQL_PROGRAM_TYPE) != PROGRAM_SCRIPT)
	{
		if (FXD_CHART_IS_OFFLINE == true || (ENABLE_EVENT_TRADE == 1 && ON_TRADE_REALTIME == 1))
		{
			FXD_ONTIMER_TAKEN = true;
			EventSetMillisecondTimer(1);
		}
		if (ENABLE_EVENT_TIMER) {
			OnTimerSet(ON_TIMER_PERIOD);
		}
	}


	//-- Initialize blocks classes
	ArrayResize(_blocks_, 18);

	_blocks_[0] = new Block0();
	_blocks_[1] = new Block1();
	_blocks_[2] = new Block2();
	_blocks_[3] = new Block3();
	_blocks_[4] = new Block4();
	_blocks_[5] = new Block5();
	_blocks_[6] = new Block6();
	_blocks_[7] = new Block7();
	_blocks_[8] = new Block8();
	_blocks_[9] = new Block9();
	_blocks_[10] = new Block10();
	_blocks_[11] = new Block11();
	_blocks_[12] = new Block12();
	_blocks_[13] = new Block13();
	_blocks_[14] = new Block14();
	_blocks_[15] = new Block15();
	_blocks_[16] = new Block16();
	_blocks_[17] = new Block17();

	// fill the lookup table
	ArrayResize(fxdBlocksLookupTable, ArraySize(_blocks_));
	for (int i=0; i<ArraySize(_blocks_); i++)
	{
		fxdBlocksLookupTable[i] = _blocks_[i].__block_user_number;
	}

	// fill the list of inbound blocks for each BlockCalls instance
	for (int i=0; i<ArraySize(_blocks_); i++)
	{
		_blocks_[i].__announceThisBlock();
	}

	// List of initially disabled blocks
	int disabled_blocks_list[] = {};
	for (int l = 0; l < ArraySize(disabled_blocks_list); l++) {
		_blocks_[disabled_blocks_list[l]].__disabled = true;
	}



	FXD_MILS_INIT_END     = (double)GetTickCount();
	FXD_FIRST_TICK_PASSED = false; // reset is needed when changing inputs

	return;
}

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed on every incoming tick //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void __OnTick__()
{
	FXD_TICKS_FROM_START++;

	if (ENABLE_STATUS && FXD_TICKS_FROM_START == 1) DrawStatus("working");

	//-- special system actions
	if (FXD_DRAW_SPREAD_INFO) DrawSpreadInfo();
	TicksData(""); // Collect ticks (if needed)
	TicksPerSecond(false, true); // Collect ticks per second
	if (USE_VIRTUAL_STOPS) {VirtualStopsDriver();}

	if (false) ExpirationWorker * expirationDummy = new ExpirationWorker();
	expirationWorker.Run();

	if (FAAE::OrdersTotal()) // this makes things faster
	{
		OCODriver(); // Check and close OCO orders
	}

	if (ENABLE_EVENT_TRADE) {OnTrade();}


	// skip ticks
	if (TimeLocal() < FXD_TICKSKIP_UNTIL) {return;}

	//-- run blocks
	int blocks_to_run[] = {0,6,12,15};
	for (int i=0; i<ArraySize(blocks_to_run); i++) {
		_blocks_[blocks_to_run[i]].run();
	}


	return;
}



//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed on every tick, because it's not native for MQL4  //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnTrade()
{
	// This is needed so that the OnTradeEventDetector class is added into the code
	if (false) OnTradeEventDetector * dummy = new OnTradeEventDetector();

}

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed on a period basis //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnTimer()
{
	//-- to simulate ticks in offline charts, Timer is used instead of infinite loop
	//-- the next function checks for changes in price and calls OnTick() manually
	if (FXD_CHART_IS_OFFLINE && FAAE::RefreshRates()) {
		OnTick();
	}
	if (ON_TRADE_REALTIME == 1) {
		OnTrade();
	}

	static datetime t0 = 0;
	datetime t = 0;
	bool ok = false;

	if (FXD_ONTIMER_TAKEN)
	{
		if (FXD_ONTIMER_TAKEN_TIME > 0)
		{
			if (FXD_ONTIMER_TAKEN_IN_MILLISECONDS == true)
			{
				t = GetTickCount();
			}
			else
			{
				t = TimeLocal();
			}
			if ((t - t0) >= FXD_ONTIMER_TAKEN_TIME)
			{
				t0 = t;
				ok = true;
			}
		}

		if (ok == false) {
			return;
		}
	}

}


//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed when chart event happens //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnChartEvent(
	const int id,         // Event ID
	const long& lparam,   // Parameter of type long event
	const double& dparam, // Parameter of type double event
	const string& sparam  // Parameter of type string events
)
{
	//-- write parameter to the system global variables
	FXD_ONCHART.id     = id;
	FXD_ONCHART.lparam = lparam;
	FXD_ONCHART.dparam = dparam;
	FXD_ONCHART.sparam = sparam;


	return;
}

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed once when the program ends //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnDeinit(const int reason)
{
	int reson = UninitializeReason();
	if (reson == REASON_CHARTCHANGE || reson == REASON_PARAMETERS || reason == REASON_TEMPLATE) {return;}

	//-- if Timer was set, kill it here
	EventKillTimer();

	if (ENABLE_STATUS) DrawStatus("stopped");
	if (ENABLE_SPREAD_METER) DrawSpreadInfo();



	if (MQLInfoInteger(MQL_TESTER)) {
		Print("Backtested in "+DoubleToString((GetTickCount()-FXD_MILS_INIT_END)/1000, 2)+" seconds");
		double tc = GetTickCount()-FXD_MILS_INIT_END;
		if (tc > 0)
		{
			Print("Average ticks per second: "+DoubleToString(FXD_TICKS_FROM_START/tc, 0));
		}
	}

	if (MQLInfoInteger(MQL_PROGRAM_TYPE) == PROGRAM_EXPERT)
	{
		switch(UninitializeReason())
		{
			case REASON_PROGRAM     : Print("Expert Advisor self terminated"); break;
			case REASON_REMOVE      : Print("Expert Advisor removed from the chart"); break;
			case REASON_RECOMPILE   : Print("Expert Advisor has been recompiled"); break;
			case REASON_CHARTCHANGE : Print("Symbol or chart period has been changed"); break;
			case REASON_CHARTCLOSE  : Print("Chart has been closed"); break;
			case REASON_PARAMETERS  : Print("Input parameters have been changed by a user"); break;
			case REASON_ACCOUNT     : Print("Another account has been activated or reconnection to the trade server has occurred due to changes in the account settings"); break;
			case REASON_TEMPLATE    : Print("A new template has been applied"); break;
			case REASON_INITFAILED  : Print("OnInit() handler has returned a nonzero value"); break;
			case REASON_CLOSE       : Print("Terminal has been closed"); break;
		}
	}

	// delete dynamic pointers
	for (int i=0; i<ArraySize(_blocks_); i++)
	{
		delete _blocks_[i];
		_blocks_[i] = NULL;
	}
	ArrayResize(_blocks_, 0);

	return;
}

/************************************************************************************************************************/
// +------------------------------------------------------------------------------------------------------------------+ //
// |	                                         Classes of blocks                                                    | //
// |              Classes that contain the actual code of the blocks and their input parameters as well               | //
// +------------------------------------------------------------------------------------------------------------------+ //
/************************************************************************************************************************/

/**
	The base class for all block calls
   */
class BlockCalls
{
	public:
		bool __disabled; // whether or not the block is disabled

		string __block_user_number;
        int __block_number;
		int __block_waiting;
		int __parent_number;
		int __inbound_blocks[];
		int __outbound_blocks[];

		void __addInboundBlock(int id = 0) {
			int size = ArraySize(__inbound_blocks);
			for (int i = 0; i < size; i++) {
				if (__inbound_blocks[i] == id) {
					return;
				}
			}
			ArrayResize(__inbound_blocks, size + 1);
			__inbound_blocks[size] = id;
		}

		void BlockCalls() {
			__disabled          = false;
			__block_user_number = "";
			__block_number      = 0;
			__block_waiting     = 0;
			__parent_number     = 0;
		}

		/**
		   Announce this block to the list of inbound connections of all the blocks to which this block is connected to
		   */
		void __announceThisBlock()
		{
		   // add the current block number to the list of inbound blocks
		   // for each outbound block that is provided
			for (int i = 0; i < ArraySize(__outbound_blocks); i++)
			{
				int block = __outbound_blocks[i]; // outbound block number
				int size  = ArraySize(_blocks_[block].__inbound_blocks); // the size of its inbound list

				// skip if the current block was already added
				for (int j = 0; j < size; j++) {
					if (_blocks_[block].__inbound_blocks[j] == __block_number)
					{
						return;
					}
				}

				// add the current block number to the list of inbound blocks of the other block
				ArrayResize(_blocks_[block].__inbound_blocks, size + 1);
				_blocks_[block].__inbound_blocks[size] = __block_number;
			}
		}

		// this is here, because it is used in the "run" function
		virtual void _execute_() = 0;

		/**
			In the derived class this method should be used to set dynamic parameters or other stuff before the main execute.
			This method is automatically called within the main "run" method below, before the execution of the main class.
			*/
		virtual void _beforeExecute_() {return;};
		bool _beforeExecuteEnabled; // for speed

		/**
			Same as _beforeExecute_, but to work after the execute method.
			*/
		virtual void _afterExecute_() {return;};
		bool _afterExecuteEnabled; // for speed

		/**
			This is the method that is used to run the block
			*/
		virtual void run(int _parent_=0) {
			__parent_number = _parent_;
			if (__disabled || FXD_BREAK) {return;}
			FXD_CURRENT_FUNCTION_ID = __block_number;

			if (_beforeExecuteEnabled) {_beforeExecute_();}
			_execute_();
			if (_afterExecuteEnabled) {_afterExecute_();}

			if (__block_waiting && FXD_CURRENT_FUNCTION_ID == __block_number) {fxdWait.Accumulate(FXD_CURRENT_FUNCTION_ID);}
		}
};

BlockCalls *_blocks_[];


// "Indicator moves within limits" model
template<typename T1,typename _T1_,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename _T7_,typename T8,typename T9,typename T10,typename _T10_>
class MDL_IndicatorWithinLimits: public BlockCalls
{
	public: /* Input Parameters */
	T1 Indicator; virtual _T1_ _Indicator_(){return(_T1_)0;
return NULL;
}
	T2 CandlesShift;
	T3 CandlesPeriod;
	T4 ExceptionCandles;
	T5 UpperLevelMode;
	T6 UpperLevel;
	T7 dUpperLevel; virtual _T7_ _dUpperLevel_(){return(_T7_)0;
return NULL;
}
	T8 LowerLevelMode;
	T9 LowerLevel;
	T10 dLowerLevel; virtual _T10_ _dLowerLevel_(){return(_T10_)0;
return NULL;
}
	/* Static Parameters */
	datetime last_bar_time;
	bool failed;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_IndicatorWithinLimits()
	{
		CandlesShift = (int)1;
		CandlesPeriod = (int)10;
		ExceptionCandles = (int)0;
		UpperLevelMode = (string)"fixed";
		UpperLevel = (double)70.0;
		LowerLevelMode = (string)"fixed";
		LowerLevel = (double)30.0;
		/* Static Parameters (initial value) */
		last_bar_time =  0;
		failed =  0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int last_candle  = CandlesShift + CandlesPeriod - 1;
		int count_true   = 0; // the count of candles where the value is within the limits
		int count_failed = 0; // the count of candles where the value is outside limits
		
		//int count_needed = CandlesPeriod;
		//if (ExceptionCandles > 0) {
		//	count_needed = CandlesPeriod - ExceptionCandles;
		//}
		
		for (int i=CandlesShift; i<=last_candle; i++)
		{
			
			// TO DO: if CandleShift==0 (first candle) to check only this candle if older candles are checked.
			// don't forget to check candle 0 time
			// don't forget to check exceptions
			
			/*
			// this is the cache, but I removed it because of specific situation
			if (i==CandlesShift && CandlesShift>0) {
				datetime current_bar_time=iTime(CurrentSymbol(),CurrentTimeframe(),0);
				if (last_bar_time==current_bar_time) {break;} else {failed=false;}
				last_bar_time=current_bar_time;
			}
			*/
		
			failed = false;
		
			FXD_MORE_SHIFT = i;
			_T1_ ivalue = _Indicator_();
			FXD_MORE_SHIFT = 0;
			
			double uplevel = EMPTY_VALUE;
			double dnlevel = -EMPTY_VALUE;
			
			if (UpperLevelMode != "")
			{
				if (UpperLevelMode == "fixed")
				{
					uplevel = UpperLevel;
				}
				else 
				//if (UpperLevelMode == "dynamic")
				{
					FXD_MORE_SHIFT = i;
					uplevel        = _dUpperLevel_();
					FXD_MORE_SHIFT = 0;
				}
			}
		
			if (LowerLevelMode != "")
			{
				if (LowerLevelMode == "fixed")
				{
					dnlevel = LowerLevel;
				}
				else
				//if (LowerLevelMode=="dynamic")
				{
					FXD_MORE_SHIFT = i;
					dnlevel        = _dLowerLevel_();
					FXD_MORE_SHIFT = 0;
				}
			}
			
			//-- levels are inverted, normalize them
			if (uplevel < dnlevel)
			{
				double tmplevel = uplevel;
				uplevel = dnlevel;
				dnlevel = tmplevel;
			}
			
			if (ivalue > uplevel || ivalue < dnlevel)
			{
				failed = true;
			}
		
			if (failed == true)
			{
				if (ExceptionCandles <= 0)
				{
					break;
				}
				else
				{
					count_failed++;
		
					if (count_failed > ExceptionCandles)
					{
						break;
					}
				}
			}
		
		  	//if (failed==false) {
			//	count_true++;
			//	if (count_true >= count_needed) {break;}
			//}
		}
		
		FXD_MORE_SHIFT = 0;
		
		if (failed == false) {_callback_(1);} else {_callback_(0);}
	}
};

// "Once per bar" model
template<typename T1,typename T2,typename T3>
class MDL_OncePerBar: public BlockCalls
{
	public: /* Input Parameters */
	T1 Symbol;
	T2 Period;
	T3 PassMaxTimes;
	/* Static Parameters */
	string tokens[];
	int passes[];
	datetime old_values[];
	datetime time[];
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_OncePerBar()
	{
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		PassMaxTimes = (int)1;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		// this is static for speed reasons
		
		bool next    = false;
		string token = Symbol + IntegerToString(Period);
		int index    = ArraySearch(tokens, token);
		
		if (index == -1)
		{
			index = ArraySize(tokens);
			
			ArrayResize(tokens, index + 1);
			ArrayResize(old_values, index + 1);
			ArrayResize(passes, index + 1);
			
			tokens[index] = token;
			passes[index] = 0;
			old_values[index] = 0;
		}
		
		if (PassMaxTimes > 0)
		{
			FAAE::CopyTime(Symbol, Period, 1, 1, time);
			datetime new_value = time[0];
		
			if (new_value > old_values[index])
			{
				passes[index]++;
		
				if (passes[index] >= PassMaxTimes)
				{
					old_values[index]  = new_value;
					passes[index] = 0;
				}
		
				next = true;
			}
		}
		
		if (next) {_callback_(1);} else {_callback_(0);}
	}
};

// "Condition" model
template<typename T1,typename _T1_,typename T2,typename T3,typename _T3_,typename T4>
class MDL_Condition: public BlockCalls
{
	public: /* Input Parameters */
	T1 Lo; virtual _T1_ _Lo_(){return(_T1_)0;
return NULL;
}
	T2 compare;
	T3 Ro; virtual _T3_ _Ro_(){return(_T3_)0;
return NULL;
}
	T4 crosswidth;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_Condition()
	{
		compare = (string)">";
		crosswidth = (int)1;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		bool output1 = false, output2 = false; // output 1 and output 2
		int crossover = 0;
		
		if (compare == "x>" || compare == "x<") {crossover = 1;}
		
		for (int i = 0; i <= crossover; i++)
		{
			// i=0 - normal pass, i=1 - crossover pass
		
			// Left operand of the condition
			FXD_MORE_SHIFT = i * crosswidth;
			_T1_ lo = _Lo_();
			if (MathAbs(lo) == EMPTY_VALUE) {return;}
		
			// Right operand of the condition
			FXD_MORE_SHIFT = i * crosswidth;
			_T3_ ro = _Ro_();
			if (MathAbs(ro) == EMPTY_VALUE) {return;}
		
			// Conditions
			if (CompareValues(compare, lo, ro))
			{
				if (i == 0)
				{
					output1 = true;
				}
			}
			else
			{
				if (i == 0)
				{
					output2 = true;
				}
				else
				{
					output2 = false;
				}
			}
		
			if (crossover == 1)
			{
				if (CompareValues(compare, ro, lo))
				{
					if (i == 0)
					{
						output2 = true;
					}
				}
				else
				{
					if (i == 1)
					{
						output1 = false;
					}
				}
			}
		}
		
		FXD_MORE_SHIFT = 0; // reset
		
			  if (output1 == true) {_callback_(1);}
		else if (output2 == true) {_callback_(0);}
	}
};

// "Buy now" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename _T9_,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename _T37_,typename T38,typename _T38_,typename T39,typename _T39_,typename T40,typename T41,typename T42,typename T43,typename T44,typename _T44_,typename T45,typename _T45_,typename T46,typename _T46_,typename T47,typename T48,typename T49,typename T50,typename T51,typename _T51_,typename T52,typename T53,typename T54>
class MDL_BuyNow: public BlockCalls
{
	public: /* Input Parameters */
	T1 Group;
	T2 Symbol;
	T3 VolumeMode;
	T4 VolumeSize;
	T5 VolumeSizeRisk;
	T6 VolumeRisk;
	T7 VolumePercent;
	T8 VolumeBlockPercent;
	T9 dVolumeSize; virtual _T9_ _dVolumeSize_(){return(_T9_)0;
return NULL;
}
	T10 FixedRatioUnitSize;
	T11 FixedRatioDelta;
	T12 mmTradesPool;
	T13 mmMgInitialLots;
	T14 mmMgMultiplyOnLoss;
	T15 mmMgMultiplyOnProfit;
	T16 mmMgAddLotsOnLoss;
	T17 mmMgAddLotsOnProfit;
	T18 mmMgResetOnLoss;
	T19 mmMgResetOnProfit;
	T20 mm1326InitialLots;
	T21 mm1326Reverse;
	T22 mmFiboInitialLots;
	T23 mmDalembertInitialLots;
	T24 mmDalembertReverse;
	T25 mmLabouchereInitialLots;
	T26 mmLabouchereList;
	T27 mmLabouchereReverse;
	T28 mmSeqBaseLots;
	T29 mmSeqOnLoss;
	T30 mmSeqOnProfit;
	T31 mmSeqReverse;
	T32 VolumeUpperLimit;
	T33 StopLossMode;
	T34 StopLossPips;
	T35 StopLossPercentPrice;
	T36 StopLossPercentTP;
	T37 dlStopLoss; virtual _T37_ _dlStopLoss_(){return(_T37_)0;
return NULL;
}
	T38 dpStopLoss; virtual _T38_ _dpStopLoss_(){return(_T38_)0;
return NULL;
}
	T39 ddStopLoss; virtual _T39_ _ddStopLoss_(){return(_T39_)0;
return NULL;
}
	T40 TakeProfitMode;
	T41 TakeProfitPips;
	T42 TakeProfitPercentPrice;
	T43 TakeProfitPercentSL;
	T44 dlTakeProfit; virtual _T44_ _dlTakeProfit_(){return(_T44_)0;
return NULL;
}
	T45 dpTakeProfit; virtual _T45_ _dpTakeProfit_(){return(_T45_)0;
return NULL;
}
	T46 ddTakeProfit; virtual _T46_ _ddTakeProfit_(){return(_T46_)0;
return NULL;
}
	T47 ExpMode;
	T48 ExpDays;
	T49 ExpHours;
	T50 ExpMinutes;
	T51 dExp; virtual _T51_ _dExp_(){return(_T51_)0;
return NULL;
}
	T52 Slippage;
	T53 MyComment;
	T54 ArrowColorBuy;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_BuyNow()
	{
		Group = (string)"";
		Symbol = (string)CurrentSymbol();
		VolumeMode = (string)"fixed";
		VolumeSize = (double)0.1;
		VolumeSizeRisk = (double)50.0;
		VolumeRisk = (double)2.5;
		VolumePercent = (double)100.0;
		VolumeBlockPercent = (double)3.0;
		FixedRatioUnitSize = (double)0.01;
		FixedRatioDelta = (double)20.0;
		mmTradesPool = (int)0;
		mmMgInitialLots = (double)0.1;
		mmMgMultiplyOnLoss = (double)2.0;
		mmMgMultiplyOnProfit = (double)1.0;
		mmMgAddLotsOnLoss = (double)0.0;
		mmMgAddLotsOnProfit = (double)0.0;
		mmMgResetOnLoss = (int)0;
		mmMgResetOnProfit = (int)1;
		mm1326InitialLots = (double)0.1;
		mm1326Reverse = (bool)false;
		mmFiboInitialLots = (double)0.1;
		mmDalembertInitialLots = (double)0.1;
		mmDalembertReverse = (bool)false;
		mmLabouchereInitialLots = (double)0.1;
		mmLabouchereList = (string)"1,2,3,4,5,6";
		mmLabouchereReverse = (bool)false;
		mmSeqBaseLots = (double)0.1;
		mmSeqOnLoss = (string)"3,2,6";
		mmSeqOnProfit = (string)"1";
		mmSeqReverse = (bool)false;
		VolumeUpperLimit = (double)0.0;
		StopLossMode = (string)"fixed";
		StopLossPips = (double)50.0;
		StopLossPercentPrice = (double)0.55;
		StopLossPercentTP = (double)100.0;
		TakeProfitMode = (string)"fixed";
		TakeProfitPips = (double)50.0;
		TakeProfitPercentPrice = (double)0.55;
		TakeProfitPercentSL = (double)100.0;
		ExpMode = (string)"GTC";
		ExpDays = (int)0;
		ExpHours = (int)1;
		ExpMinutes = (int)0;
		Slippage = (ulong)4;
		MyComment = (string)"";
		ArrowColorBuy = (color)clrBlue;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		//-- stops ------------------------------------------------------------------
		double sll = 0, slp = 0, tpl = 0, tpp = 0;
		
		     if (StopLossMode == "fixed")         {slp = StopLossPips;}
		else if (StopLossMode == "dynamicPips")   {slp = _dpStopLoss_();}
		else if (StopLossMode == "dynamicDigits") {slp = toPips(_ddStopLoss_(),Symbol);}
		else if (StopLossMode == "dynamicLevel")  {sll = _dlStopLoss_();}
		else if (StopLossMode == "percentPrice")  {sll = SymbolAsk(Symbol) - (SymbolAsk(Symbol) * StopLossPercentPrice / 100);}
		
		     if (TakeProfitMode == "fixed")         {tpp = TakeProfitPips;}
		else if (TakeProfitMode == "dynamicPips")   {tpp = _dpTakeProfit_();}
		else if (TakeProfitMode == "dynamicDigits") {tpp = toPips(_ddTakeProfit_(),Symbol);}
		else if (TakeProfitMode == "dynamicLevel")  {tpl = _dlTakeProfit_();}
		else if (TakeProfitMode == "percentPrice")  {tpl = SymbolAsk(Symbol) + (SymbolAsk(Symbol) * TakeProfitPercentPrice / 100);}
		
		if (StopLossMode == "percentTP") {
		   if (tpp > 0) {slp = tpp*StopLossPercentTP/100;}
		   if (tpl > 0) {slp = toPips(MathAbs(SymbolAsk(Symbol) - tpl), Symbol)*StopLossPercentTP/100;}
		}
		if (TakeProfitMode == "percentSL") {
		   if (slp > 0) {tpp = slp*TakeProfitPercentSL/100;}
		   if (sll > 0) {tpp = toPips(MathAbs(SymbolAsk(Symbol) - sll), Symbol)*TakeProfitPercentSL/100;}
		}
		
		//-- lots -------------------------------------------------------------------
		double lots = 0;
		double pre_sll = sll;
		
		if (pre_sll == 0) {
			pre_sll = SymbolAsk(Symbol);
		}
		
		double pre_sl_pips = toPips(SymbolAsk(Symbol)-(pre_sll-toDigits(slp,Symbol)), Symbol);
		
		     if (VolumeMode == "fixed")            {lots = DynamicLots(Symbol, VolumeMode, VolumeSize);}
		else if (VolumeMode == "block-equity")     {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "block-balance")    {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "block-freemargin") {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "equity")           {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "balance")          {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "freemargin")       {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "equityRisk")       {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "balanceRisk")      {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "freemarginRisk")   {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "fixedRisk")        {lots = DynamicLots(Symbol, VolumeMode, VolumeSizeRisk, pre_sl_pips);}
		else if (VolumeMode == "fixedRatio")       {lots = DynamicLots(Symbol, VolumeMode, FixedRatioUnitSize, FixedRatioDelta);}
		else if (VolumeMode == "dynamic")          {lots = _dVolumeSize_();}
		else if (VolumeMode == "1326")             {lots = Bet1326(Group, Symbol, mmTradesPool, mm1326InitialLots, mm1326Reverse);}
		else if (VolumeMode == "fibonacci")        {lots = BetFibonacci(Group, Symbol, mmTradesPool, mmFiboInitialLots);}
		else if (VolumeMode == "dalembert")        {lots = BetDalembert(Group, Symbol, mmTradesPool, mmDalembertInitialLots, mmDalembertReverse);}
		else if (VolumeMode == "labouchere")       {lots = BetLabouchere(Group, Symbol, mmTradesPool, mmLabouchereInitialLots, mmLabouchereList, mmLabouchereReverse);}
		else if (VolumeMode == "martingale")       {lots = BetMartingale(Group, Symbol, mmTradesPool, mmMgInitialLots, mmMgMultiplyOnLoss, mmMgMultiplyOnProfit, mmMgAddLotsOnLoss, mmMgAddLotsOnProfit, mmMgResetOnLoss, mmMgResetOnProfit);}
		else if (VolumeMode == "sequence")         {lots = BetSequence(Group, Symbol, mmTradesPool, mmSeqBaseLots, mmSeqOnLoss, mmSeqOnProfit, mmSeqReverse);}
		
		lots = AlignLots(Symbol, lots, 0, VolumeUpperLimit);
		
		datetime exp = ExpirationTime(ExpMode,ExpDays,ExpHours,ExpMinutes,_dExp_());
		
		//-- send -------------------------------------------------------------------
		long ticket = BuyNow(Symbol, lots, sll, tpl, slp, tpp, Slippage, (MagicStart+(int)Group), MyComment, ArrowColorBuy, exp);
		
		if (ticket > 0) {_callback_(1);} else {_callback_(0);}
	}
};

// "Formula" model
template<typename T1,typename _T1_,typename T2,typename T3,typename _T3_>
class MDL_Formula_1: public BlockCalls
{
	public: /* Input Parameters */
	T1 Lo; virtual _T1_ _Lo_(){return(_T1_)0;
return NULL;
}
	T2 compare;
	T3 Ro; virtual _T3_ _Ro_(){return(_T3_)0;
return NULL;
}
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_Formula_1()
	{
		compare = (string)"+";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		_T1_ lo = _Lo_();
		if (typename(_T1_) != "string" && MathAbs(lo) == EMPTY_VALUE) {return;}
		
		_T3_ ro = _Ro_();
		if (typename(_T3_) != "string" && MathAbs(ro) == EMPTY_VALUE) {return;}
		
		v::Lots_Buy = formula(compare, lo, ro);
		
		_callback_(1);
	}
};

// "Formula" model
template<typename T1,typename _T1_,typename T2,typename T3,typename _T3_>
class MDL_Formula_2: public BlockCalls
{
	public: /* Input Parameters */
	T1 Lo; virtual _T1_ _Lo_(){return(_T1_)0;
return NULL;
}
	T2 compare;
	T3 Ro; virtual _T3_ _Ro_(){return(_T3_)0;
return NULL;
}
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_Formula_2()
	{
		compare = (string)"+";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		_T1_ lo = _Lo_();
		if (typename(_T1_) != "string" && MathAbs(lo) == EMPTY_VALUE) {return;}
		
		_T3_ ro = _Ro_();
		if (typename(_T3_) != "string" && MathAbs(ro) == EMPTY_VALUE) {return;}
		
		v::Lots_Sell = formula(compare, lo, ro);
		
		_callback_(1);
	}
};

// "Sell now" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename _T9_,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename _T37_,typename T38,typename _T38_,typename T39,typename _T39_,typename T40,typename T41,typename T42,typename T43,typename T44,typename _T44_,typename T45,typename _T45_,typename T46,typename _T46_,typename T47,typename T48,typename T49,typename T50,typename T51,typename _T51_,typename T52,typename T53,typename T54>
class MDL_SellNow: public BlockCalls
{
	public: /* Input Parameters */
	T1 Group;
	T2 Symbol;
	T3 VolumeMode;
	T4 VolumeSize;
	T5 VolumeSizeRisk;
	T6 VolumeRisk;
	T7 VolumePercent;
	T8 VolumeBlockPercent;
	T9 dVolumeSize; virtual _T9_ _dVolumeSize_(){return(_T9_)0;
return NULL;
}
	T10 FixedRatioUnitSize;
	T11 FixedRatioDelta;
	T12 mmTradesPool;
	T13 mmMgInitialLots;
	T14 mmMgMultiplyOnLoss;
	T15 mmMgMultiplyOnProfit;
	T16 mmMgAddLotsOnLoss;
	T17 mmMgAddLotsOnProfit;
	T18 mmMgResetOnLoss;
	T19 mmMgResetOnProfit;
	T20 mm1326InitialLots;
	T21 mm1326Reverse;
	T22 mmFiboInitialLots;
	T23 mmDalembertInitialLots;
	T24 mmDalembertReverse;
	T25 mmLabouchereInitialLots;
	T26 mmLabouchereList;
	T27 mmLabouchereReverse;
	T28 mmSeqBaseLots;
	T29 mmSeqOnLoss;
	T30 mmSeqOnProfit;
	T31 mmSeqReverse;
	T32 VolumeUpperLimit;
	T33 StopLossMode;
	T34 StopLossPips;
	T35 StopLossPercentPrice;
	T36 StopLossPercentTP;
	T37 dlStopLoss; virtual _T37_ _dlStopLoss_(){return(_T37_)0;
return NULL;
}
	T38 dpStopLoss; virtual _T38_ _dpStopLoss_(){return(_T38_)0;
return NULL;
}
	T39 ddStopLoss; virtual _T39_ _ddStopLoss_(){return(_T39_)0;
return NULL;
}
	T40 TakeProfitMode;
	T41 TakeProfitPips;
	T42 TakeProfitPercentPrice;
	T43 TakeProfitPercentSL;
	T44 dlTakeProfit; virtual _T44_ _dlTakeProfit_(){return(_T44_)0;
return NULL;
}
	T45 dpTakeProfit; virtual _T45_ _dpTakeProfit_(){return(_T45_)0;
return NULL;
}
	T46 ddTakeProfit; virtual _T46_ _ddTakeProfit_(){return(_T46_)0;
return NULL;
}
	T47 ExpMode;
	T48 ExpDays;
	T49 ExpHours;
	T50 ExpMinutes;
	T51 dExp; virtual _T51_ _dExp_(){return(_T51_)0;
return NULL;
}
	T52 Slippage;
	T53 MyComment;
	T54 ArrowColorSell;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_SellNow()
	{
		Group = (string)"";
		Symbol = (string)CurrentSymbol();
		VolumeMode = (string)"fixed";
		VolumeSize = (double)0.1;
		VolumeSizeRisk = (double)50.0;
		VolumeRisk = (double)2.5;
		VolumePercent = (double)100.0;
		VolumeBlockPercent = (double)3.0;
		FixedRatioUnitSize = (double)0.01;
		FixedRatioDelta = (double)20.0;
		mmTradesPool = (int)0;
		mmMgInitialLots = (double)0.1;
		mmMgMultiplyOnLoss = (double)2.0;
		mmMgMultiplyOnProfit = (double)1.0;
		mmMgAddLotsOnLoss = (double)0.0;
		mmMgAddLotsOnProfit = (double)0.0;
		mmMgResetOnLoss = (int)0;
		mmMgResetOnProfit = (int)1;
		mm1326InitialLots = (double)0.1;
		mm1326Reverse = (bool)false;
		mmFiboInitialLots = (double)0.1;
		mmDalembertInitialLots = (double)0.1;
		mmDalembertReverse = (bool)false;
		mmLabouchereInitialLots = (double)0.1;
		mmLabouchereList = (string)"1,2,3,4,5,6";
		mmLabouchereReverse = (bool)false;
		mmSeqBaseLots = (double)0.1;
		mmSeqOnLoss = (string)"3,2,6";
		mmSeqOnProfit = (string)"1";
		mmSeqReverse = (bool)false;
		VolumeUpperLimit = (double)0.0;
		StopLossMode = (string)"fixed";
		StopLossPips = (double)50.0;
		StopLossPercentPrice = (double)0.55;
		StopLossPercentTP = (double)100.0;
		TakeProfitMode = (string)"fixed";
		TakeProfitPips = (double)50.0;
		TakeProfitPercentPrice = (double)0.55;
		TakeProfitPercentSL = (double)100.0;
		ExpMode = (string)"GTC";
		ExpDays = (int)0;
		ExpHours = (int)1;
		ExpMinutes = (int)0;
		Slippage = (ulong)4;
		MyComment = (string)"";
		ArrowColorSell = (color)clrRed;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		//-- stops ------------------------------------------------------------------
		double sll = 0, slp = 0, tpl = 0, tpp = 0;
		
		     if (StopLossMode == "fixed")         {slp = StopLossPips;}
		else if (StopLossMode == "dynamicPips")   {slp = _dpStopLoss_();}
		else if (StopLossMode == "dynamicDigits") {slp = toPips(_ddStopLoss_(),Symbol);}
		else if (StopLossMode == "dynamicLevel")  {sll = _dlStopLoss_();}
		else if (StopLossMode == "percentPrice")  {sll = SymbolBid(Symbol) + (SymbolBid(Symbol) * StopLossPercentPrice / 100);}
		
		     if (TakeProfitMode == "fixed")         {tpp = TakeProfitPips;}
		else if (TakeProfitMode == "dynamicPips")   {tpp = _dpTakeProfit_();}
		else if (TakeProfitMode == "dynamicDigits") {tpp = toPips(_ddTakeProfit_(),Symbol);}
		else if (TakeProfitMode == "dynamicLevel")  {tpl = _dlTakeProfit_();}
		else if (TakeProfitMode == "percentPrice")  {tpl = SymbolBid(Symbol) - (SymbolBid(Symbol) * TakeProfitPercentPrice / 100);}
		
		if (StopLossMode == "percentTP") {
		   if (tpp > 0) {slp = tpp*StopLossPercentTP/100;}
		   if (tpl > 0) {slp = toPips(MathAbs(SymbolBid(Symbol) - tpl), Symbol)*StopLossPercentTP/100;}
		}
		if (TakeProfitMode == "percentSL") {
		   if (slp > 0) {tpp = slp*TakeProfitPercentSL/100;}
		   if (sll > 0) {tpp = toPips(MathAbs(SymbolBid(Symbol) - sll), Symbol)*TakeProfitPercentSL/100;}
		}
		
		//-- lots -------------------------------------------------------------------
		double lots = 0;
		double pre_sll = sll;
		
		if (pre_sll == 0) {
			pre_sll = SymbolBid(Symbol);
		}
		
		double pre_sl_pips = toPips((pre_sll+toDigits(slp,Symbol))-SymbolBid(Symbol), Symbol);
		
		     if (VolumeMode == "fixed")            {lots = DynamicLots(Symbol, VolumeMode, VolumeSize);}
		else if (VolumeMode == "block-equity")     {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "block-balance")    {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "block-freemargin") {lots = DynamicLots(Symbol, VolumeMode, VolumeBlockPercent);}
		else if (VolumeMode == "equity")           {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "balance")          {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "freemargin")       {lots = DynamicLots(Symbol, VolumeMode, VolumePercent);}
		else if (VolumeMode == "equityRisk")       {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "balanceRisk")      {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "freemarginRisk")   {lots = DynamicLots(Symbol, VolumeMode, VolumeRisk, pre_sl_pips);}
		else if (VolumeMode == "fixedRisk")        {lots = DynamicLots(Symbol, VolumeMode, VolumeSizeRisk, pre_sl_pips);}
		else if (VolumeMode == "fixedRatio")       {lots = DynamicLots(Symbol, VolumeMode, FixedRatioUnitSize, FixedRatioDelta);}
		else if (VolumeMode == "dynamic")          {lots = _dVolumeSize_();}
		else if (VolumeMode == "1326")             {lots = Bet1326(Group, Symbol, mmTradesPool, mm1326InitialLots, mm1326Reverse);}
		else if (VolumeMode == "fibonacci")        {lots = BetFibonacci(Group, Symbol, mmTradesPool, mmFiboInitialLots);}
		else if (VolumeMode == "dalembert")        {lots = BetDalembert(Group, Symbol, mmTradesPool, mmDalembertInitialLots, mmDalembertReverse);}
		else if (VolumeMode == "labouchere")       {lots = BetLabouchere(Group, Symbol, mmTradesPool, mmLabouchereInitialLots, mmLabouchereList, mmLabouchereReverse);}
		else if (VolumeMode == "martingale")       {lots = BetMartingale(Group, Symbol, mmTradesPool, mmMgInitialLots, mmMgMultiplyOnLoss, mmMgMultiplyOnProfit, mmMgAddLotsOnLoss, mmMgAddLotsOnProfit, mmMgResetOnLoss, mmMgResetOnProfit);}
		else if (VolumeMode == "sequence")         {lots = BetSequence(Group, Symbol, mmTradesPool, mmSeqBaseLots, mmSeqOnLoss, mmSeqOnProfit, mmSeqReverse);}
		
		lots = AlignLots(Symbol, lots, 0, VolumeUpperLimit);
		
		datetime exp = ExpirationTime(ExpMode,ExpDays,ExpHours,ExpMinutes,_dExp_());
		
		//-- send -------------------------------------------------------------------
		long ticket = SellNow(Symbol, lots, sll, tpl, slp, tpp, Slippage, (MagicStart+(int)Group), MyComment, ArrowColorSell, exp);
		
		if (ticket > 0) {_callback_(1);} else {_callback_(0);}
	}
};

// "If trade" model
template<typename T1,typename T2,typename T3,typename T4,typename T5>
class MDL_IfOpenedOrders: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_IfOpenedOrders()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		bool exist = false;
		
		for (int index = TradesTotal()-1; index >= 0; index--)
		{
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				exist = true;
				break;
			}
		}
		
		if (exist == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "Check profit (unrealized)" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13>
class MDL_CheckUProfit: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 EachProfitMode;
	T7 EachCompare;
	T8 EachProfitAmount;
	T9 EachProfitAmountPips;
	T10 ProfitMode;
	T11 Compare;
	T12 ProfitAmount;
	T13 ProfitAmountPips;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CheckUProfit()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		EachProfitMode = (string)"";
		EachCompare = (string)">";
		EachProfitAmount = (double)0.0;
		EachProfitAmountPips = (double)10.0;
		ProfitMode = (string)"money";
		Compare = (string)">";
		ProfitAmount = (double)0.0;
		ProfitAmountPips = (double)10.0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		double avg_price    = 0;
		double avg_load     = 0;
		double avg_lots     = 0;
		double profit_money = 0;
		double profit_pips  = 0;
		double pips_sum     = 0;
		int trades_count    = 0;
		
		for (int index = TradesTotal()-1; index >= 0; index--)
		{
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				double trade_profit = NormalizeDouble(FAAE::OrderProfit() + FAAE::OrderSwap() + FAAE::OrderCommission(), 2);
		
				if (EachProfitMode == "money")
				{
					if (compare(EachCompare, trade_profit, EachProfitAmount)) {/* do nothing */} else {continue;}
				}
				else if (EachProfitMode == "pips")
				{
					double individual_profit = toPips(FAAE::OrderClosePrice() - FAAE::OrderOpenPrice(), FAAE::OrderSymbol());
					
					if (FAAE::OrderType() == 1) {individual_profit = -1 * individual_profit;}
					
					if (compare(EachCompare, individual_profit, EachProfitAmountPips)) {/* do nothing*/} else {continue;}
				}
		
				profit_money += trade_profit;
		
				if (IsOrderTypeBuy() == true)
				{
					pips_sum += toPips(FAAE::OrderClosePrice()-FAAE::OrderOpenPrice(), FAAE::OrderSymbol());
					avg_load += FAAE::OrderOpenPrice() * FAAE::OrderLots();
					avg_lots += FAAE::OrderLots();
				}
				else
				{
					pips_sum += toPips(FAAE::OrderOpenPrice()-FAAE::OrderClosePrice(), FAAE::OrderSymbol());
					avg_load -= FAAE::OrderOpenPrice() * FAAE::OrderLots();
					avg_lots -= FAAE::OrderLots();
				}
		
				trades_count++;
			}
		}
		
		if (ProfitMode == "money" || ProfitMode == "pips")
		{
			avg_price = 0;
		
			if (avg_lots != 0)
			{
				avg_price = (avg_load / avg_lots);
			}
		
			if (avg_price != 0)
			{
				if (avg_lots > 0)
				{
					profit_pips = SymbolInfoDouble(Symbol, SYMBOL_BID) - avg_price;
				}
				else
				{
					profit_pips = avg_price - SymbolInfoDouble(Symbol, SYMBOL_ASK);
				}
		
				profit_pips = toPips(profit_pips, Symbol);
			}
		}
		
		if (
			   (ProfitMode == "money"    && (CompareValues(Compare, profit_money, ProfitAmount)))
			|| (ProfitMode == "pips"     && (CompareValues(Compare, profit_pips, ProfitAmountPips)))
			|| (ProfitMode == "pips-sum" && (CompareValues(Compare, pips_sum, ProfitAmountPips)))
			) {_callback_(1);} else {_callback_(0);}
	}
};

// "Close trades" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8>
class MDL_CloseOpened: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 OrderMinutes;
	T7 Slippage;
	T8 ArrowColor;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CloseOpened()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		OrderMinutes = (int)0;
		Slippage = (ulong)4;
		ArrowColor = (color)clrDeepPink;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int closed_count = 0;
		bool finished    = false;
		
		while (finished == false)
		{
			int count = 0;
		
			for (int index = TradesTotal()-1; index >= 0; index--)
			{
				if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
				{
					datetime time_diff = TimeCurrent() - FAAE::OrderOpenTime();
		
					if (time_diff < 0) {time_diff = 0;} // this actually happens sometimes
		
					if (time_diff >= 60 * OrderMinutes)
					{
						if (CloseTrade(FAAE::OrderTicket(), Slippage, ArrowColor))
						{
							closed_count++;
						}
		
						count++;
					}
				}
			}
		
			if (count == 0) {finished = true;}
		}
		
		_callback_(1);
	}
};


//------------------------------------------------------------------------------------------------------------------------

// "Stochastic Oscillator" model
class MDLIC_indicators_iStochastic
{
	public: /* Input Parameters */
	int Kperiod;
	int Dperiod;
	int Slowing;
	ENUM_MA_METHOD MAmethod;
	ENUM_STO_PRICE PriceField;
	int Mode;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_indicators_iStochastic()
	{
		Kperiod = (int)5;
		Dperiod = (int)3;
		Slowing = (int)3;
		MAmethod = (ENUM_MA_METHOD)MODE_SMA;
		PriceField = (ENUM_STO_PRICE)STO_LOWHIGH;
		Mode = (int)0;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		return FAAE::iStochastic(Symbol, Period, Kperiod, Dperiod, Slowing, MAmethod, PriceField, Mode, Shift + FXD_MORE_SHIFT);
	}
};

// "Numeric" model
class MDLIC_value_value
{
	public: /* Input Parameters */
	double Value;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_value_value()
	{
		Value = (double)1.0;
	}

	public: /* The main method */
	double _execute_()
	{
		return Value;
	}
};

// "Boolean" model
class MDLIC_boolean_boolean
{
	public: /* Input Parameters */
	bool Boolean;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_boolean_boolean()
	{
		Boolean = (bool)true;
	}

	public: /* The main method */
	bool _execute_()
	{
		return Boolean;
	}
};

// "Time" model
class MDLIC_value_time
{
	public: /* Input Parameters */
	int ModeTime;
	int TimeSource;
	string TimeStamp;
	int TimeCandleID;
	string TimeMarket;
	ENUM_TIMEFRAMES TimeCandleTimeframe;
	int TimeComponentYear;
	int TimeComponentMonth;
	double TimeComponentDay;
	double TimeComponentHour;
	double TimeComponentMinute;
	int TimeComponentSecond;
	int ModeTimeShift;
	int TimeShiftYears;
	int TimeShiftMonths;
	int TimeShiftWeeks;
	double TimeShiftDays;
	double TimeShiftHours;
	double TimeShiftMinutes;
	int TimeShiftSeconds;
	bool TimeSkipWeekdays;
	/* Static Parameters */
	datetime retval;
	datetime retval0;
	int ModeTime0;
	int smodeshift;
	int years0;
	int months0;
	datetime Time[];
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_value_time()
	{
		ModeTime = (int)0;
		TimeSource = (int)0;
		TimeStamp = (string)"00:00";
		TimeCandleID = (int)1;
		TimeMarket = (string)"";
		TimeCandleTimeframe = (ENUM_TIMEFRAMES)0;
		TimeComponentYear = (int)0;
		TimeComponentMonth = (int)0;
		TimeComponentDay = (double)0.0;
		TimeComponentHour = (double)12.0;
		TimeComponentMinute = (double)0.0;
		TimeComponentSecond = (int)0;
		ModeTimeShift = (int)0;
		TimeShiftYears = (int)0;
		TimeShiftMonths = (int)0;
		TimeShiftWeeks = (int)0;
		TimeShiftDays = (double)0.0;
		TimeShiftHours = (double)0.0;
		TimeShiftMinutes = (double)0.0;
		TimeShiftSeconds = (int)0;
		TimeSkipWeekdays = (bool)false;
		/* Static Parameters (initial value) */
		retval =  0;
		retval0 =  0;
		ModeTime0 =  0;
		smodeshift =  0;
		years0 =  0;
		months0 =  0;
	}

	public: /* The main method */
	datetime _execute_()
	{
		// this is static for speed reasons
		
		if (TimeMarket == "") TimeMarket = Symbol();
		
		if (ModeTime == 0)
		{
			     if (TimeSource == 0) {retval = TimeCurrent();}
			else if (TimeSource == 1) {retval = TimeLocal();}
			else if (TimeSource == 2) {retval = TimeGMT();}
		}
		else if (ModeTime == 1)
		{
			retval  = StringToTime(TimeStamp);
			retval0 = retval;
		}
		else if (ModeTime==2)
		{
			retval = TimeFromComponents(TimeSource, TimeComponentYear, TimeComponentMonth, TimeComponentDay, TimeComponentHour, TimeComponentMinute, TimeComponentSecond);
		}
		else if (ModeTime == 3)
		{
			ArraySetAsSeries(Time,true);
			FAAE::CopyTime(TimeMarket,TimeCandleTimeframe,TimeCandleID,1,Time);
			retval = Time[0];
		}
		
		if (ModeTimeShift > 0)
		{
			int sh = 1;
		
			if (ModeTimeShift == 1) {sh = -1;}
		
			if (
				   ModeTimeShift != smodeshift
				|| TimeShiftYears != years0
				|| TimeShiftMonths != months0
			)
			{
				years0  = TimeShiftYears;
				months0 = TimeShiftMonths;
		
				if (TimeShiftYears > 0 || TimeShiftMonths > 0)
				{
					int year = 0, month = 0, week = 0, day = 0, hour = 0, minute = 0, second = 0;
		
					if (ModeTime == 3)
					{
						year   = TimeComponentYear;
						month  = TimeComponentYear;
						day    = (int)MathFloor(TimeComponentDay);
						hour   = (int)(MathFloor(TimeComponentHour) + (24 * (TimeComponentDay - MathFloor(TimeComponentDay))));
						minute = (int)(MathFloor(TimeComponentMinute) + (60 * (TimeComponentHour - MathFloor(TimeComponentHour))));
						second = (int)(TimeComponentSecond + (60 * (TimeComponentMinute - MathFloor(TimeComponentMinute))));
					}
					else {
						year   = FAAE::TimeYear(retval);
						month  = FAAE::TimeMonth(retval);
						day    = FAAE::TimeDay(retval);
						hour   = FAAE::TimeHour(retval);
						minute = FAAE::TimeMinute(retval);
						second = FAAE::TimeSeconds(retval);
					}
		
					year  = year + TimeShiftYears * sh;
					month = month + TimeShiftMonths * sh;
		
					     if (month < 0) {month = 12 - month;}
					else if (month > 12) {month = month - 12;}
		
					retval = StringToTime(IntegerToString(year)+"."+IntegerToString(month)+"."+IntegerToString(day)+" "+IntegerToString(hour)+":"+IntegerToString(minute)+":"+IntegerToString(second));
				}
			}
		
			retval = retval + (sh * ((604800 * TimeShiftWeeks) + SecondsFromComponents(TimeShiftDays, TimeShiftHours, TimeShiftMinutes, TimeShiftSeconds)));
		
			if (TimeSkipWeekdays == true)
			{
				int weekday = FAAE::TimeDayOfWeek(retval);
		
				if (sh > 0) { // forward
					     if (weekday == 0) {retval = retval + 86400;}
					else if (weekday == 6) {retval = retval + 172800;}
				}
				else if (sh < 0) { // back
					     if (weekday == 0) {retval = retval - 172800;}
					else if (weekday == 6) {retval = retval - 86400;}
				}
			}
		}
		
		smodeshift = ModeTimeShift;
		ModeTime0  = ModeTime;
		
		return (datetime)retval;
	}
};

// "Balance" model
class MDLIC_account_AccountBalance
{
	public: /* Input Parameters */
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_account_AccountBalance()
	{
	}

	public: /* The main method */
	double _execute_()
	{
		return NormalizeDouble(AccountInfoDouble(ACCOUNT_BALANCE), 2);
	}
};


//------------------------------------------------------------------------------------------------------------------------

// Block 1 (Indicator moves within limits (Buy))
class Block0: public MDL_IndicatorWithinLimits<MDLIC_indicators_iStochastic,double,int,int,int,string,double,MDLIC_value_value,double,string,double,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block0() {
		__block_number = 0;
		__block_user_number = "1";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {1};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		dUpperLevel.Value = 70.0;
		dLowerLevel.Value = 30.0;
	}

	public: /* Custom methods */
	virtual double _Indicator_() {
		Indicator.Kperiod = c::k_lone_period;
		Indicator.Dperiod = c::D_line_period;
		Indicator.Slowing = c::Slowing_value;
		Indicator.MAmethod = MODE_SMA;
		Indicator.PriceField = STO_LOWHIGH;
		Indicator.Symbol = CurrentSymbol();
		Indicator.Period = CurrentTimeframe();

		return Indicator._execute_();
	}
	virtual double _dUpperLevel_() {return dUpperLevel._execute_();}
	virtual double _dLowerLevel_() {return dLowerLevel._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[1].run(0);
		}
	}

	virtual void _beforeExecute_()
	{

		CandlesPeriod = (int)c::How_Many_Candles;
		UpperLevel = (double)c::Upper_Level_Buy;
		LowerLevel = (double)c::Lower_Level_Buy;
	}
};

// Block 2 (Once per bar)
class Block1: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block1() {
		__block_number = 1;
		__block_user_number = "2";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {2};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[2].run(1);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 3 (ON-OFF (Auto Lots))
class Block2: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block2() {
		__block_number = 2;
		__block_user_number = "3";


		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {3,4};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::Mode_Auto_Lots;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[3].run(2);
		}
		else if (value == 1) {
			_blocks_[4].run(2);
		}
	}
};

// Block 4 (Buy now (Fix))
class Block3: public MDL_BuyNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block3() {
		__block_number = 3;
		__block_user_number = "4";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dVolumeSize.Value = 0.1;
		dpStopLoss.Value = 100.0;
		ddStopLoss.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		ddTakeProfit.Value = 0.01;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftDays = 1.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		StopLossMode = "none";
		TakeProfitMode = "none";
	}

	public: /* Custom methods */
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {return dlStopLoss._execute_();}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeSize = (double)c::Lots;
		MyComment = (string)c::EA_Name;
		ArrowColorBuy = (color)clrBlue;
	}
};

// Block 5 (Formula (Auto Lots))
class Block4: public MDL_Formula_1<MDLIC_account_AccountBalance,double,string,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block4() {
		__block_number = 4;
		__block_user_number = "5";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {5};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "/";
	}

	public: /* Custom methods */
	virtual double _Lo_() {return Lo._execute_();}
	virtual double _Ro_() {
		Ro.Value = c::Auto_Lots;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[5].run(4);
		}
	}
};

// Block 6 (Buy now (Auto))
class Block5: public MDL_BuyNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block5() {
		__block_number = 5;
		__block_user_number = "6";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dVolumeSize.Value = 0.1;
		dpStopLoss.Value = 100.0;
		ddStopLoss.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		ddTakeProfit.Value = 0.01;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftDays = 1.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		StopLossMode = "none";
		TakeProfitMode = "none";
	}

	public: /* Custom methods */
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {return dlStopLoss._execute_();}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeSize = (double)v::Lots_Buy;
		MyComment = (string)c::EA_Name;
		ArrowColorBuy = (color)clrBlue;
	}
};

// Block 7 (Indicator moves within limits (Sell))
class Block6: public MDL_IndicatorWithinLimits<MDLIC_indicators_iStochastic,double,int,int,int,string,double,MDLIC_value_value,double,string,double,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block6() {
		__block_number = 6;
		__block_user_number = "7";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {7};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		dUpperLevel.Value = 70.0;
		dLowerLevel.Value = 30.0;
	}

	public: /* Custom methods */
	virtual double _Indicator_() {
		Indicator.Kperiod = c::k_lone_period;
		Indicator.Dperiod = c::D_line_period;
		Indicator.Slowing = c::Slowing_value;
		Indicator.MAmethod = MODE_SMA;
		Indicator.PriceField = STO_LOWHIGH;
		Indicator.Symbol = CurrentSymbol();
		Indicator.Period = CurrentTimeframe();

		return Indicator._execute_();
	}
	virtual double _dUpperLevel_() {return dUpperLevel._execute_();}
	virtual double _dLowerLevel_() {return dLowerLevel._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[7].run(6);
		}
	}

	virtual void _beforeExecute_()
	{

		CandlesPeriod = (int)c::How_Many_Candles;
		UpperLevel = (double)c::Upper_Level_Sell;
		LowerLevel = (double)c::Lower_Level_Sell;
	}
};

// Block 8 (Once per bar)
class Block7: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block7() {
		__block_number = 7;
		__block_user_number = "8";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {8};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[8].run(7);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 9 (ON-OFF (Auto Lots))
class Block8: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block8() {
		__block_number = 8;
		__block_user_number = "9";


		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {10,9};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::Mode_Auto_Lots;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[10].run(8);
		}
		else if (value == 1) {
			_blocks_[9].run(8);
		}
	}
};

// Block 11 (Formula (Auto Lots))
class Block9: public MDL_Formula_2<MDLIC_account_AccountBalance,double,string,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block9() {
		__block_number = 9;
		__block_user_number = "11";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {11};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "/";
	}

	public: /* Custom methods */
	virtual double _Lo_() {return Lo._execute_();}
	virtual double _Ro_() {
		Ro.Value = c::Auto_Lots;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[11].run(9);
		}
	}
};

// Block 12 (Sell now (Fix))
class Block10: public MDL_SellNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block10() {
		__block_number = 10;
		__block_user_number = "12";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dVolumeSize.Value = 0.1;
		dpStopLoss.Value = 100.0;
		ddStopLoss.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		ddTakeProfit.Value = 0.01;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftDays = 1.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		StopLossMode = "none";
		TakeProfitMode = "none";
	}

	public: /* Custom methods */
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {return dlStopLoss._execute_();}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeSize = (double)c::Lots;
		MyComment = (string)c::EA_Name;
		ArrowColorSell = (color)clrRed;
	}
};

// Block 13 (Sell now (Auto))
class Block11: public MDL_SellNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block11() {
		__block_number = 11;
		__block_user_number = "13";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dVolumeSize.Value = 0.1;
		dpStopLoss.Value = 100.0;
		ddStopLoss.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		ddTakeProfit.Value = 0.01;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftDays = 1.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		StopLossMode = "none";
		TakeProfitMode = "none";
	}

	public: /* Custom methods */
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {return dlStopLoss._execute_();}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeSize = (double)v::Lots_Sell;
		MyComment = (string)c::EA_Name;
		ArrowColorSell = (color)clrRed;
	}
};

// Block 14 (If trade (Buy))
class Block12: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block12() {
		__block_number = 12;
		__block_user_number = "14";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {13};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[13].run(12);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 15 (Check profit (unrealized))
class Block13: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block13() {
		__block_number = 13;
		__block_user_number = "15";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {14};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
		ProfitMode = "pips-sum";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[14].run(13);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmountPips = (double)c::Close_Profit_pips;
	}
};

// Block 16 (Close trades (Buy))
class Block14: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block14() {
		__block_number = 14;
		__block_user_number = "16";
		_beforeExecuteEnabled = true;
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ArrowColor = (color)clrDeepPink;
	}
};

// Block 17 (If trade (Sell))
class Block15: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block15() {
		__block_number = 15;
		__block_user_number = "17";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {16};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[16].run(15);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 18 (Check profit (unrealized))
class Block16: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block16() {
		__block_number = 16;
		__block_user_number = "18";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {17};
		FAAE::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
		ProfitMode = "pips-sum";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[17].run(16);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmountPips = (double)c::Close_Profit_pips;
	}
};

// Block 19 (Close trades (Sell))
class Block17: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block17() {
		__block_number = 17;
		__block_user_number = "19";
		_beforeExecuteEnabled = true;
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ArrowColor = (color)clrDeepPink;
	}
};


/************************************************************************************************************************/
// +------------------------------------------------------------------------------------------------------------------+ //
// |                                                   Functions                                                      | //
// |                                 System and Custom functions used in the program                                  | //
// +------------------------------------------------------------------------------------------------------------------+ //
/************************************************************************************************************************/


double AccountBalanceAtStart()
{
	// This function MUST be run once at pogram's start
	static double memory = 0;

	if (memory == 0)
	{
		memory = NormalizeDouble(AccountInfoDouble(ACCOUNT_BALANCE), 2);
	}

	return memory;
}

double AlignLots(string symbol, double lots, double lowerlots = 0.0, double upperlots = 0.0)
{
	double LotStep = SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
	double LotSize = SymbolInfoDouble(symbol, SYMBOL_TRADE_CONTRACT_SIZE);
	double MinLots = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);
	double MaxLots = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);

	if (LotStep > MinLots) MinLots = LotStep;

	if (lots == EMPTY_VALUE) {lots = 0.0;}

	lots = MathRound(lots / LotStep) * LotStep;

	if (lots < MinLots) {lots = MinLots;}
	if (lots > MaxLots) {lots = MaxLots;}

	if (lowerlots > 0.0)
	{
		lowerlots = MathRound(lowerlots / LotStep) * LotStep;
		if (lots < lowerlots) {lots = lowerlots;}
	}

	if (upperlots > 0.0)
	{
		upperlots = MathRound(upperlots / LotStep) * LotStep;
		if (lots > upperlots) {lots = upperlots;}
	}

	return lots;
}

double AlignStopLoss(
	string symbol,
	int type,
	double price,
	double slo = 0.0, // original sl, used when modifying
	double sll = 0.0,
	double slp = 0.0,
	bool consider_freezelevel = false
	)
{
	double sl = 0.0;

	if (MathAbs(sll) == EMPTY_VALUE) {sll = 0.0;}
	if (MathAbs(slp) == EMPTY_VALUE) {slp = 0.0;}

	if (sll == 0.0 && slp == 0.0)
	{
		return 0.0;
	}

	if (price <= 0.0)
	{
		Print(__FUNCTION__ + " error: No price entered");

		return -1;
	}

	double point = SymbolInfoDouble(symbol, SYMBOL_POINT);
	int digits   = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
	slp          = slp * PipValue(symbol) * point;

	//-- buy-sell identifier ---------------------------------------------
	int bs = 1;

	if (
		   type == OP_SELL
		|| type == OP_SELLSTOP
		|| type == OP_SELLLIMIT

		)
	{
		bs = -1;
	}

	//-- prices that will be used ----------------------------------------
	double askbid = price;
	double bidask = price;
	
	if (type < 2)
	{
		double ask = SymbolInfoDouble(symbol, SYMBOL_ASK);
		double bid = SymbolInfoDouble(symbol, SYMBOL_BID);
		
		askbid = ask;
		bidask = bid;

		if (bs < 0)
		{
		  askbid = bid;
		  bidask = ask;
		}
	}

	//-- build sl level -------------------------------------------------- 
	if (sll == 0.0 && slp != 0.0) {sll = price;}

	if (sll > 0.0) {sl = sll - slp * bs;}

	if (sl < 0.0)
	{
		return -1;
	}

	sl  = NormalizeDouble(sl, digits);
	slo = NormalizeDouble(slo, digits);

	if (sl == slo)
	{
		return sl;
	}

	//-- build limit levels ----------------------------------------------
	double minstops = (double)SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);

	if (consider_freezelevel == true)
	{
		double freezelevel = (double)SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);

		if (freezelevel > minstops) {minstops = freezelevel;}
	}

	minstops = NormalizeDouble(minstops * point,digits);

	double sllimit = bidask - minstops * bs; // SL min price level

	//-- check and align sl, print errors --------------------------------
	//-- do not do it when the stop is the same as the original
	if (sl > 0.0 && sl != slo)
	{
		if ((bs > 0 && sl > askbid) || (bs < 0 && sl < askbid))
		{
			string abstr = "";

			if (bs > 0) {abstr = "Bid";} else {abstr = "Ask";}

			Print(
				"Error: Invalid SL requested (",
				FAAE::DoubleToStr(sl, digits),
				" for ", abstr, " price ",
				bidask,
				")"
			);

			return -1;
		}
		else if ((bs > 0 && sl > sllimit) || (bs < 0 && sl < sllimit))
		{
			if (USE_VIRTUAL_STOPS)
			{
				return sl;
			}

			Print(
				"Warning: Too short SL requested (",
				FAAE::DoubleToStr(sl, digits),
				" or ",
				FAAE::DoubleToStr(MathAbs(sl - askbid) / point, 0),
				" points), minimum will be taken (",
				FAAE::DoubleToStr(sllimit, digits),
				" or ",
				FAAE::DoubleToStr(MathAbs(askbid - sllimit) / point, 0),
				" points)"
			);

			sl = sllimit;

			return sl;
		}
	}

	// align by the ticksize
	double ticksize = SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE);
	sl = MathRound(sl / ticksize) * ticksize;

	return sl;
}

double AlignTakeProfit(
	string symbol,
	int type,
	double price,
	double tpo = 0.0, // original tp, used when modifying
	double tpl = 0.0,
	double tpp = 0.0,
	bool consider_freezelevel = false
	)
{
	double tp = 0.0;
	
	if (MathAbs(tpl) == EMPTY_VALUE) {tpl = 0.0;}
	if (MathAbs(tpp) == EMPTY_VALUE) {tpp = 0.0;}

	if (tpl == 0.0 && tpp == 0.0)
	{
		return 0.0;
	}

	if (price <= 0.0)
	{
		Print(__FUNCTION__ + " error: No price entered");

		return -1;
	}

	double point = SymbolInfoDouble(symbol, SYMBOL_POINT);
	int digits   = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
	tpp          = tpp * PipValue(symbol) * point;
	
	//-- buy-sell identifier ---------------------------------------------
	int bs = 1;

	if (
		   type == OP_SELL
		|| type == OP_SELLSTOP
		|| type == OP_SELLLIMIT

		)
	{
		bs = -1;
	}
	
	//-- prices that will be used ----------------------------------------
	double askbid = price;
	double bidask = price;
	
	if (type < 2)
	{
		double ask = SymbolInfoDouble(symbol, SYMBOL_ASK);
		double bid = SymbolInfoDouble(symbol, SYMBOL_BID);
		
		askbid = ask;
		bidask = bid;

		if (bs < 0)
		{
		  askbid = bid;
		  bidask = ask;
		}
	}
	
	//-- build tp level --------------------------------------------------- 
	if (tpl == 0.0 && tpp != 0.0) {tpl = price;}

	if (tpl > 0.0) {tp = tpl + tpp * bs;}
	
	if (tp < 0.0)
	{
		return -1;
	}

	tp  = NormalizeDouble(tp, digits);
	tpo = NormalizeDouble(tpo, digits);

	if (tp == tpo)
	{
		return tp;
	}
	
	//-- build limit levels ----------------------------------------------
	double minstops = (double)SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);

	if (consider_freezelevel == true)
	{
		double freezelevel = (double)SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);

		if (freezelevel > minstops) {minstops = freezelevel;}
	}

	minstops = NormalizeDouble(minstops * point,digits);
	
	double tplimit = bidask + minstops * bs; // TP min price level
	
	//-- check and align tp, print errors --------------------------------
	//-- do not do it when the stop is the same as the original
	if (tp > 0.0 && tp != tpo)
	{
		if ((bs > 0 && tp < bidask) || (bs < 0 && tp > bidask))
		{
			string abstr = "";

			if (bs > 0) {abstr = "Bid";} else {abstr = "Ask";}

			Print(
				"Error: Invalid TP requested (",
				FAAE::DoubleToStr(tp, digits),
				" for ", abstr, " price ",
				bidask,
				")"
			);

			return -1;
		}
		else if ((bs > 0 && tp < tplimit) || (bs < 0 && tp > tplimit))
		{
			if (USE_VIRTUAL_STOPS)
			{
				return tp;
			}

			Print(
				"Warning: Too short TP requested (",
				FAAE::DoubleToStr(tp, digits),
				" or ",
				FAAE::DoubleToStr(MathAbs(tp - askbid) / point, 0),
				" points), minimum will be taken (",
				FAAE::DoubleToStr(tplimit, digits),
				" or ",
				FAAE::DoubleToStr(MathAbs(askbid - tplimit) / point, 0),
				" points)"
			);

			tp = tplimit;

			return tp;
		}
	}
	
	// align by the ticksize
	double ticksize = SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE);
	tp = MathRound(tp / ticksize) * ticksize;
	
	return tp;
}

template<typename T>
bool ArrayEnsureValue(T &array[], T value)
{
	int size   = ArraySize(array);
	
	if (size > 0)
	{
		if (InArray(array, value))
		{
			// value found -> exit
			return false; // no value added
		}
	}
	
	// value does not exists -> add it
	ArrayResize(array, size+1);
	array[size] = value;
		
	return true; // value added
}

template<typename T>
int ArraySearch(T &array[], T value)
{
	int index = -1;
	int size  = ArraySize(array);

	for (int i = 0; i < size; i++)
	{
		if (array[i] == value)
		{
			index = i;
			break;
		}  
	}

   return index;
}

template<typename T>
bool ArrayStripKey(T &array[], int key)
{
	int x    = 0;
	int size = ArraySize(array);

	for (int i=0; i<size; i++)
	{
		if (i != key)
		{
			array[x] = array[i];
			x++;
		}
	}

	if (x < size)
	{
		ArrayResize(array, x);
		
		return true; // stripped
	}

	return false; // not stripped
}

template<typename T>
bool ArrayStripValue(T &array[], T value)
{
	int x    = 0;
	int size = ArraySize(array);

	for (int i=0; i<size; i++)
	{
		if (array[i] != value)
		{
			array[x] = array[i];
			x++;
		}
	}

	if (x < size)
	{
		ArrayResize(array, x);
		
		return true; // stripped
	}

	return false; // not stripped
}

double Bet1326(
	string group,
	string symbol,
	int pool,
	double initialLots,
	bool reverse = false
) {  
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, false);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss

	//-- 1-3-2-6 Logic
	double minLot = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);

	if (initialLots < minLot)
	{
		initialLots = minLot;  
	}

	if (lots == 0)
	{
		lots = initialLots;
	}
	else
	{
		if (
			   (reverse == false && profitOrLoss == 1)
			|| (reverse == true && profitOrLoss == -1)
		) {
			double div = lots / initialLots;

			     if (div < 1.5) {lots = initialLots * 3;}
			else if (div < 2.5) {lots = initialLots * 6;}
			else if (div < 3.5) {lots = initialLots * 2;}
			else {lots = initialLots;}
		}
		else
		{
			lots = initialLots;
		}
	}

	return lots;
}

double BetDalembert(
	string group,
	string symbol,
	int pool,
	double initialLots,
	double reverse = false
) {  
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, false);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss

	//-- Dalembert Logic
	double minLot = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);

	if (initialLots < minLot)
	{
		initialLots = minLot;  
	}

	if (lots == 0)
	{
		lots = initialLots;
	}
	else
	{
		if (
			   (reverse == 0 && profitOrLoss == 1)
			|| (reverse == 1 && profitOrLoss == -1)
		) {
			lots = lots - initialLots;
			if (lots < initialLots) {lots = initialLots;}
		}
		else
		{
			lots = lots + initialLots;
		}
	}

	return lots;
}

double BetFibonacci(
	string group,
	string symbol,
	int pool,
	double initialLots
) {
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, false);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss

	//-- Fibonacci Logic
	double minLot = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);

	if (initialLots < minLot)
	{
		initialLots = minLot;  
	}

	if (lots == 0)
	{
		lots = initialLots;
	}
	else
	{  
		int fibo1 = 1;
		int fibo2 = 0;
		int fibo3 = 0;
		int fibo4 = 0;
		double div = lots / initialLots;

		if (div <= 0) {div = 1;}

		while (true)
		{
			fibo1 = fibo1 + fibo2;
			fibo3 = fibo2;
			fibo2 = fibo1 - fibo2;
			fibo4 = fibo2 - fibo3;

			if (fibo1 > NormalizeDouble(div, 2))
			{
				break;
			}
		}

		if (profitOrLoss == 1)
		{
			if (fibo4 <= 0) {fibo4 = 1;}
			lots = initialLots * fibo4;
		}
		else
		{
			lots = initialLots * fibo1;
		}
	}

	lots = NormalizeDouble(lots, 2);

	return lots;
}

double BetLabouchere(
	string group,
	string symbol,
	int pool,
	double initialLots,
	string listOfNumbers,
	double reverse = false
) {
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, false);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss

	//-- Labouchere Logic
	static string memGroup[];
	static string memList[];
	static long memTicket[];

	int startAgain = false;

	//- get the list of numbers as it is stored in the memory, or store it
	int id = ArraySearch(memGroup, group);

	if (id == -1)
	{
		startAgain = true;

		if (listOfNumbers == "") {listOfNumbers = "1";}

		id = ArraySize(memGroup);

		ArrayResize(memGroup, id+1, id+1);
		ArrayResize(memList, id+1, id+1);
		ArrayResize(memTicket, id+1, id+1);

		memGroup[id] = group;
		memList[id]  = listOfNumbers;
	}

	if (memTicket[id] == (long)FAAE::OrderTicket())
	{
		// the last known ticket (memTicket[id]) should be different than OderTicket() normally
		// when failed to create a new trade - the last ticket remains the same
		// so we need to reset
		memList[id] = listOfNumbers;
	}

	memTicket[id] = (long)FAAE::OrderTicket();

	//- now turn the string into integer array
	int list[];
	string listS[];

	StringExplode(",", memList[id], listS);
	ArrayResize(list, ArraySize(listS));

	for (int s = 0; s < ArraySize(listS); s++)
	{
		list[s] = (int)StringToInteger(StringTrim(listS[s]));  
	}

	//-- 
	int size = ArraySize(list);

	double minLot = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);

	if (initialLots < minLot)
	{
		initialLots = minLot;  
	}

	if (lots == 0)
	{
		startAgain = true;
	}

	if (startAgain == true)
	{
		if (size == 1)
		{
			lots = initialLots * list[0];
		}
		else {
			lots = initialLots * (list[0] + list[size-1]);
		}
	}
	else 
	{
		if (
			   (reverse == 0 && profitOrLoss == 1)
			|| (reverse == 1 && profitOrLoss == -1)
		) {
			if (size == 1)
			{
				lots = initialLots * list[0];
				ArrayResize(list, 0);
			}
			else if (size == 2)
			{
				lots = initialLots * (list[0] + list[1]);
				ArrayResize(list, 0);
			}
			else if (size > 2)
			{
				lots = initialLots * (list[0] + list[size-1]);

				// Cancel the first and the last number in the list
				// shift array 1 step left
				for(int pos = 0; pos < size-1; pos++)
				{
					list[pos] = list[pos+1];
				}

				// remove last 2 elements	
				ArrayResize(list, ArraySize(list) - 2);	
			}

			if (lots < initialLots) {lots = initialLots;}
		}
		else
		{
			if (size > 1)
			{
				ArrayResize(list, size+1);

				list[size] = list[0] + list[size-1];
				lots       = initialLots * (list[0] + list[size]);
			}
			else {
				lots = initialLots * list[0];
			}

			if (lots < initialLots) {lots = initialLots;}
		}
	}

	Print("Labouchere (for group "
		+ (string)id
		+ ") current list of numbers:"
		+ StringImplode(",", list)
	);

	size=ArraySize(list);

	if (size == 0)
	{
		ArrayStripKey(memGroup, id);
		ArrayStripKey(memList, id);
		ArrayStripKey(memTicket, id);
	}
	else {
		memList[id] = StringImplode(",", list);
	}

	return lots;
}

double BetMartingale(
	string group,
	string symbol,
	int pool,
	double initialLots,
	double multiplyOnLoss,
	double multiplyOnProfit,
	double addOnLoss,
	double addOnProfit,
	int resetOnLoss,
	int resetOnProfit
) {
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, true);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss
	double consecutive  = info[2];

	//-- Martingale Logic
	if (lots == 0)
	{
		lots = initialLots;
	}
	else
	{
		if (profitOrLoss == 1)
		{
			if (resetOnProfit > 0 && consecutive >= resetOnProfit)
			{
				lots = initialLots;
			}
			else
			{
				if (multiplyOnProfit <= 0)
				{
					multiplyOnProfit = 1;
				}

				lots = (lots * multiplyOnProfit) + addOnProfit;
			}
		}
		else
		{
			if (resetOnLoss > 0 && consecutive >= resetOnLoss)
			{
				lots = initialLots;  
			}
			else
			{
				if (multiplyOnLoss <= 0)
				{
					multiplyOnLoss = 1;
				}

				lots = (lots * multiplyOnLoss) + addOnLoss;
			}
		}
	}

	return lots;
}

double BetSequence(
	string group,
	string symbol,
	int pool,
	double initialLots,
	string sequenceOnLoss,
	string sequenceOnProfit,
	bool reverse = false
) {  
	double info[];
	GetBetTradesInfo(info, group, symbol, pool, false);

	double lots         = info[0];
	double profitOrLoss = info[1]; // 0 - unknown, 1 - profit, -1 - loss

	//-- Sequence stuff
	static string memGroup[];
	static string memLossList[];
	static string memProfitList[];
	static long memTicket[];

	//- get the list of numbers as it is stored in the memory, or store it
	int id = ArraySearch(memGroup, group);

	if (id == -1)
	{
		if (sequenceOnLoss == "") {sequenceOnLoss = "1";}

		if (sequenceOnProfit == "") {sequenceOnProfit = "1";}

		id = ArraySize(memGroup);

		ArrayResize(memGroup, id+1, id+1);
		ArrayResize(memLossList, id+1, id+1);
		ArrayResize(memProfitList, id+1, id+1);
		ArrayResize(memTicket, id+1, id+1);

		memGroup[id]      = group;
		memLossList[id]   = sequenceOnLoss;
		memProfitList[id] = sequenceOnProfit;
	}

	bool lossReset   = false;
	bool profitReset = false;

	if (profitOrLoss == -1 && memLossList[id] == "")
	{
		lossReset         = true;
		memProfitList[id] = "";
	}

	if (profitOrLoss == 1 && memProfitList[id] == "")
	{
		profitReset     = true;
		memLossList[id] = "";
	}

	if (profitOrLoss == 1 || memLossList[id] == "")
	{
		memLossList[id] = sequenceOnLoss;

		if (lossReset) {
			memLossList[id] = "1," + memLossList[id];
		}
	}

	if (profitOrLoss == -1 || memProfitList[id] == "")
	{
		memProfitList[id] = sequenceOnProfit;

		if (profitReset) {
			memProfitList[id] = "1," + memProfitList[id];
		}
	}

	if (memTicket[id] == (long)FAAE::OrderTicket())
	{
		// Normally the last known ticket (memTicket[id]) should be different than OderTicket()
		// when failed to create a new trade, the last ticket remains the same
		// so we need to reset
		memLossList[id]   = sequenceOnLoss;
		memProfitList[id] = sequenceOnProfit;
	}

	memTicket[id] = (long)FAAE::OrderTicket();

	//- now turn the string into integer array
	int s = 0;
	double listLoss[];
	double listProfit[];
	string listS[];

	StringExplode(",", memLossList[id], listS);
	ArrayResize(listLoss, ArraySize(listS), ArraySize(listS));

	for (s = 0; s < ArraySize(listS); s++)
	{
		listLoss[s] = (double)StringToDouble(StringTrim(listS[s]));  
	}

	StringExplode(",", memProfitList[id], listS);
	ArrayResize(listProfit, ArraySize(listS), ArraySize(listS));

	for (s = 0; s < ArraySize(listS); s++)
	{
		listProfit[s] = (double)StringToDouble(StringTrim(listS[s]));  
	}

	//--
	double minLot = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);

	if (initialLots < minLot)
	{
		initialLots = minLot;  
	}

	if (lots == 0)
	{
		lots = initialLots;
	}
	else
	{
		if (
			   (reverse == false && profitOrLoss ==1)
			|| (reverse == true && profitOrLoss == -1)
		) {
			lots = initialLots * listProfit[0];

			// shift array 1 step left
			int size = ArraySize(listProfit);

			for(int pos = 0; pos < size-1; pos++)
			{
				listProfit[pos] = listProfit[pos+1];
			}

			if (size > 0)
			{
				ArrayResize(listProfit, size-1, size-1);
				memProfitList[id] = StringImplode(",", listProfit);
			}
		}
		else
		{
			lots = initialLots * listLoss[0];

			// shift array 1 step left
			int size = ArraySize(listLoss);

			for(int pos = 0; pos < size-1; pos++)
			{
				listLoss[pos] = listLoss[pos+1];
			}

			if (size > 0)
			{
				ArrayResize(listLoss, size-1, size-1);
				memLossList[id] = StringImplode(",", listLoss);
			}
		}
	}

	return lots;
}

int BuyNow(
	string symbol,
	double lots,
	double sll,
	double tpl,
	double slp,
	double tpp,
	double slippage = 0,
	int magic = 0,
	string comment = "",
	color arrowcolor = clrNONE,
	datetime expiration = 0
	)
{
	return OrderCreate(
		symbol,
		OP_BUY,
		lots,
		0,
		sll,
		tpl,
		slp,
		tpp,
		slippage,
		magic,
		comment,
		arrowcolor,
		expiration
	);
}

int CheckForTradingError(int error_code=-1, string msg_prefix="")
{
   // return 0 -> no error
   // return 1 -> overcomable error
   // return 2 -> fatal error
   
   if (error_code<0) {
      error_code=FAAE::GetLastError();  
   }
   
   int retval=0;
   static int tryouts=0;
   
   //-- error check -----------------------------------------------------
   switch(error_code)
   {
      //-- no error
      case 0:
         retval=0;
         break;
      //-- overcomable errors
      case 1: // No error returned
         FAAE::RefreshRates();
         retval=1;
         break;
      case 4: //ERR_SERVER_BUSY
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         Sleep(1000);
         FAAE::RefreshRates();
         retval=1;
         break;
      case 6: //ERR_NO_CONNECTION
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         while(!FAAE::IsConnected()) {Sleep(100);}
         while(FAAE::IsTradeContextBusy()) {Sleep(50);}
         FAAE::RefreshRates();
         retval=1;
         break;
      case 128: //ERR_TRADE_TIMEOUT
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         FAAE::RefreshRates();
         retval=1;
         break;
      case 129: //ERR_INVALID_PRICE
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         if (!FAAE::IsTesting()) {while(FAAE::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 130: //ERR_INVALID_STOPS
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!FAAE::IsTesting()) {while(FAAE::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 135: //ERR_PRICE_CHANGED
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!FAAE::IsTesting()) {while(FAAE::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 136: //ERR_OFF_QUOTES
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!FAAE::IsTesting()) {while(FAAE::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 137: //ERR_BROKER_BUSY
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         Sleep(1000);
         retval=1;
         break;
      case 138: //ERR_REQUOTE
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!FAAE::IsTesting()) {while(FAAE::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 142: //This code should be processed in the same way as error 128.
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         FAAE::RefreshRates();
         retval=1;
         break;
      case 143: //This code should be processed in the same way as error 128.
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         FAAE::RefreshRates();
         retval=1;
         break;
      /*case 145: //ERR_TRADE_MODIFY_DENIED
         if (msg_prefix!="") {Print(StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         while(RefreshRates()==false) {Sleep(1);}
         return(1);
      */
      case 146: //ERR_TRADE_CONTEXT_BUSY
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         while(FAAE::IsTradeContextBusy()) {Sleep(50);}
         FAAE::RefreshRates();
         retval=1;
         break;
      //-- critical errors
      default:
         if (msg_prefix!="") {Print(FAAE::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code)));}
         retval=2;
         break;
   }

   if (retval==0) {tryouts=0;}
   else if (retval==1) {
      tryouts++;
      if (tryouts>=10) {
         tryouts=0;
         retval=2;
      } else {
         Print("retry #"+(string)tryouts+" of 10");
      }
   }
   
   return(retval);
}

bool CloseTrade(ulong ticket, ulong slippage = 0, color arrowcolor = CLR_NONE)
{
	bool success = false;
	bool exists  = false;
	
	for (int i = 0; i < FAAE::OrdersTotal(); i++)
	{
		if (!FAAE::OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;

		if (FAAE::OrderTicket() == ticket)
		{
			exists = true;
			break;
		}
	}

	if (exists == false)
	{
		return false;
	}

	while (true)
	{
		//-- wait if needed -----------------------------------------------
		WaitTradeContextIfBusy();

		//-- close --------------------------------------------------------
		success = FAAE::OrderClose((int)ticket, FAAE::OrderLots(), FAAE::OrderClosePrice(), (int)(slippage * PipValue(FAAE::OrderSymbol())), arrowcolor);

		if (success == true)
		{
			if (USE_VIRTUAL_STOPS) {
				VirtualStopsDriver("clear", ticket);
			}

			expirationWorker.RemoveExpiration(ticket);

			OnTrade();

			return true;
		}

		//-- errors -------------------------------------------------------
		int erraction = CheckForTradingError(FAAE::GetLastError(), "Closing trade #" + (string)ticket + " error");

		switch(erraction)
		{
			case 0: break;    // no error
			case 1: continue; // overcomable error
			case 2: break;    // fatal error
		}

		break;
	}

	return false;
}

template<typename DT1, typename DT2>
bool CompareValues(string sign, DT1 v1, DT2 v2)
{
	     if (sign == ">") return(v1 > v2);
	else if (sign == "<") return(v1 < v2);
	else if (sign == ">=") return(v1 >= v2);
	else if (sign == "<=") return(v1 <= v2);
	else if (sign == "==") return(v1 == v2);
	else if (sign == "!=") return(v1 != v2);
	else if (sign == "x>") return(v1 > v2);
	else if (sign == "x<") return(v1 < v2);

	return false;
}

string CurrentSymbol(string symbol = "")
{
   static string memory = "";

	// Set
   if (symbol != "")
	{
		memory = symbol;
	}
	// Get
	else if (memory == "")
	{
		memory = Symbol();
	}

   return memory;
}

ENUM_TIMEFRAMES CurrentTimeframe(ENUM_TIMEFRAMES timeframe = -1)
{
	static ENUM_TIMEFRAMES memory = 0;

   if (timeframe >= 0) {memory = timeframe;}

   return memory;
}

double CustomPoint(string symbol)
{
	static string symbols[];
	static double points[];
	static string last_symbol = "-";
	static double last_point  = 0;
	static int last_i         = 0;
	static int size           = 0;

	//-- variant A) use the cache for the last used symbol
	if (symbol == last_symbol)
	{
		return last_point;
	}

	//-- variant B) search in the array cache
	int i			= last_i;
	int start_i	= i;
	bool found	= false;

	if (size > 0)
	{
		while (true)
		{
			if (symbols[i] == symbol)
			{
				last_symbol	= symbol;
				last_point	= points[i];
				last_i		= i;

				return last_point;
			}

			i++;

			if (i >= size)
			{
				i = 0;
			}
			if (i == start_i) {break;}
		}
	}

	//-- variant C) add this symbol to the cache
	i		= size;
	size	= size + 1;

	ArrayResize(symbols, size);
	ArrayResize(points, size);

	symbols[i]	= symbol;
	points[i]	= 0;
	last_symbol	= symbol;
	last_i		= i;

	//-- unserialize rules from FXD_POINT_FORMAT_RULES
	string rules[];
	StringExplode(",", POINT_FORMAT_RULES, rules);

	int rules_count = ArraySize(rules);

	if (rules_count > 0)
	{
		string rule[];

		for (int r = 0; r < rules_count; r++)
		{
			StringExplode("=", rules[r], rule);

			//-- a single rule must contain 2 parts, [0] from and [1] to
			if (ArraySize(rule) != 2) {continue;}

			double from = StringToDouble(rule[0]);
			double to	= StringToDouble(rule[1]);

			//-- "to" must be a positive number, different than 0
			if (to <= 0) {continue;}

			//-- "from" can be a number or a string
			// a) string
			if (from == 0 && StringLen(rule[0]) > 0)
			{
				string s_from = rule[0];
				int pos       = StringFind(s_from, "?");

				if (pos < 0) // ? not found
				{
					if (StringFind(symbol, s_from) == 0) {points[i] = to;}
				}
				else if (pos == 0) // ? is the first symbol => match the second symbol
				{
					if (StringFind(symbol, FAAE::StringSubstr(s_from, 1), 3) == 3)
					{
						points[i] = to;
					}
				}
				else if (pos > 0) // ? is the second symbol => match the first symbol
				{
					if (StringFind(symbol, FAAE::StringSubstr(s_from, 0, pos)) == 0)
					{
						points[i] = to;
					}
				}
			}

			// b) number
			if (from == 0) {continue;}

			if (SymbolInfoDouble(symbol, SYMBOL_POINT) == from)
			{
				points[i] = to;
			}
		}
	}

	if (points[i] == 0)
	{
		points[i] = SymbolInfoDouble(symbol, SYMBOL_POINT);
	}

	last_point = points[i];

	return last_point;
}

bool DeleteOrder(int ticket, color arrowcolor=clrNONE)
{
   bool success=false;
   if (!FAAE::OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) {return(false);}
   
   while(true)
   {
      //-- wait if needed -----------------------------------------------
      WaitTradeContextIfBusy();
      //-- delete -------------------------------------------------------
      success=FAAE::OrderDelete(ticket,arrowcolor);
      if (success==true) {
         if (USE_VIRTUAL_STOPS) {
            VirtualStopsDriver("clear",ticket);
         }
         OnTrade();
         return(true);
      }
      //-- error check --------------------------------------------------
      int erraction=CheckForTradingError(FAAE::GetLastError(), "Deleting order #"+(string)ticket+" error");
      switch(erraction)
      {
         case 0: break;    // no error
         case 1: continue; // overcomable error
         case 2: break;    // fatal error
      }
      break;
   }
   return(false);
}

void DrawSpreadInfo()
{
   static bool allow_draw = true;
   if (allow_draw==false) {return;}
   if (MQLInfoInteger(MQL_TESTER) && !MQLInfoInteger(MQL_VISUAL_MODE)) {allow_draw=false;} // Allowed to draw only once in testing mode

   static bool passed         = false;
   static double max_spread   = 0;
   static double min_spread   = EMPTY_VALUE;
   static double avg_spread   = 0;
   static double avg_add      = 0;
   static double avg_cnt      = 0;

   double custom_point = CustomPoint(Symbol());
   double current_spread = 0;
   if (custom_point > 0) {
      current_spread = (SymbolInfoDouble(Symbol(),SYMBOL_ASK)-SymbolInfoDouble(Symbol(),SYMBOL_BID))/custom_point;
   }
   if (current_spread > max_spread) {max_spread = current_spread;}
   if (current_spread < min_spread) {min_spread = current_spread;}
   
   avg_cnt++;
   avg_add     = avg_add + current_spread;
   avg_spread  = avg_add / avg_cnt;

   int x=0; int y=0;
   string name;

   // create objects
   if (passed == false)
   {
      passed=true;
      
      name="fxd_spread_current_label";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+1);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "Spread:");
      }
      name="fxd_spread_max_label";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "max:");
      }
      name="fxd_spread_avg_label";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "avg:");
      }
      name="fxd_spread_min_label";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "min:");
      }
      name="fxd_spread_current";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+93);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_max";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_avg";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_min";
      if (FAAE::ObjectFind(0, name)==-1) {
         FAAE::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         FAAE::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         FAAE::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         FAAE::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         FAAE::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         FAAE::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
   }
   
   FAAE::ObjectSetString(0, "fxd_spread_current", OBJPROP_TEXT, FAAE::DoubleToStr(current_spread,2));
   FAAE::ObjectSetString(0, "fxd_spread_max", OBJPROP_TEXT, FAAE::DoubleToStr(max_spread,2));
   FAAE::ObjectSetString(0, "fxd_spread_avg", OBJPROP_TEXT, FAAE::DoubleToStr(avg_spread,2));
   FAAE::ObjectSetString(0, "fxd_spread_min", OBJPROP_TEXT, FAAE::DoubleToStr(min_spread,2));
}

string DrawStatus(string text="")
{
   static string memory;
   if (text=="") {
      return(memory);
   }
   
   static bool passed = false;
   int x=210; int y=0;
   string name;

   //-- draw the objects once
   if (passed == false)
   {
      passed = true;
      name="fxd_status_title";
      FAAE::ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      FAAE::ObjectSetInteger(0,name, OBJPROP_BACK, false);
      FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      FAAE::ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x);
      FAAE::ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+17);
      FAAE::ObjectSetString(0,name, OBJPROP_TEXT, "Status");
      FAAE::ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      FAAE::ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 7);
      FAAE::ObjectSetInteger(0,name, OBJPROP_COLOR, clrGray);
      
      name="fxd_status_text";
      FAAE::ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      FAAE::ObjectSetInteger(0,name, OBJPROP_BACK, false);
      FAAE::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      FAAE::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      FAAE::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      FAAE::ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x+2);
      FAAE::ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+1);
      FAAE::ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      FAAE::ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 12);
      FAAE::ObjectSetInteger(0,name, OBJPROP_COLOR, clrAqua);
   }

   //-- update the text when needed
   if (text != memory) {
      memory=text;
      FAAE::ObjectSetString(0,"fxd_status_text", OBJPROP_TEXT, text);
   }
   
   return(text);
}

double DynamicLots(string symbol, string mode="balance", double value=0, double sl=0, string align="align", double RJFR_initial_lots=0)
{
   double size=0;
   double LotStep=FAAE::MarketInfo(symbol,MODE_LOTSTEP);
   double LotSize=FAAE::MarketInfo(symbol,MODE_LOTSIZE);
   double MinLots=FAAE::MarketInfo(symbol,MODE_MINLOT);
   double MaxLots=FAAE::MarketInfo(symbol,MODE_MAXLOT);
   double TickValue=FAAE::MarketInfo(symbol,MODE_TICKVALUE);
   double point=FAAE::MarketInfo(symbol,MODE_POINT);
   double ticksize=FAAE::MarketInfo(symbol,MODE_TICKSIZE);
   double margin_required=FAAE::MarketInfo(symbol,MODE_MARGINREQUIRED);
   
   if (mode=="fixed" || mode=="lots")     {size=value;}
   else if (mode=="block-equity")      {size=(value/100)*FAAE::AccountEquity()/margin_required;}
   else if (mode=="block-balance")     {size=(value/100)*FAAE::AccountBalance()/margin_required;}
   else if (mode=="block-freemargin")  {size=(value/100)*FAAE::AccountFreeMargin()/margin_required;}
   else if (mode=="equity")      {size=(value/100)*FAAE::AccountEquity()/(LotSize*TickValue);}
   else if (mode=="balance")     {size=(value/100)*FAAE::AccountBalance()/(LotSize*TickValue);}
   else if (mode=="freemargin")  {size=(value/100)*FAAE::AccountFreeMargin()/(LotSize*TickValue);}
   else if (mode=="equityRisk")     {size=((value/100)*FAAE::AccountEquity())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="balanceRisk")    {size=((value/100)*FAAE::AccountBalance())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="freemarginRisk") {size=((value/100)*FAAE::AccountFreeMargin())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="fixedRisk")   {size=(value)/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="fixedRatio" || mode=="RJFR") {
      
      /////
      // Ryan Jones Fixed Ratio MM static data
      static double RJFR_start_lots=0;
      static double RJFR_delta=0;
      static double RJFR_units=1;
      static double RJFR_target_lower=0;
      static double RJFR_target_upper=0;
      /////
      
      if (RJFR_start_lots<=0) {RJFR_start_lots=value;}
      if (RJFR_start_lots<MinLots) {RJFR_start_lots=MinLots;}
      if (RJFR_delta<=0) {RJFR_delta=sl;}
      if (RJFR_target_upper<=0) {
         RJFR_target_upper=FAAE::AccountEquity()+(RJFR_units*RJFR_delta);
         Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Upper Target Equity=>",RJFR_target_upper);
      }
      if (FAAE::AccountEquity()>=RJFR_target_upper)
      {
         while(true) {
            Print("Fixed Ratio MM going up to ",(RJFR_start_lots*(RJFR_units+1))," lots: Equity is above Upper Target Equity (",FAAE::AccountEquity(),">=",RJFR_target_upper,")");
            RJFR_units++;
            RJFR_target_lower=RJFR_target_upper;
            RJFR_target_upper=RJFR_target_upper+(RJFR_units*RJFR_delta);
            Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Lower Target Equity=>",RJFR_target_lower,"; Upper Target Equity=>",RJFR_target_upper);
            if (FAAE::AccountEquity()<RJFR_target_upper) {break;}
         }
      }
      else if (FAAE::AccountEquity()<=RJFR_target_lower)
      {
         while(true) {
         if (FAAE::AccountEquity()>RJFR_target_lower) {break;}
            if (RJFR_units>1) {         
               Print("Fixed Ratio MM going down to ",(RJFR_start_lots*(RJFR_units-1))," lots: Equity is below Lower Target Equity | ", FAAE::AccountEquity()," <= ",RJFR_target_lower,")");
               RJFR_target_upper=RJFR_target_lower;
               RJFR_target_lower=RJFR_target_lower-((RJFR_units-1)*RJFR_delta);
               RJFR_units--;
               Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Lower Target Equity=>",RJFR_target_lower,"; Upper Target Equity=>",RJFR_target_upper);
            } else {break;}
         }
      }
      size=RJFR_start_lots*RJFR_units;
   }
   
	if (size==EMPTY_VALUE) {size=0;}
	
   size=MathRound(size/LotStep)*LotStep;
   
   static bool alert_min_lots=false;
   if (size<MinLots && alert_min_lots==false) {
      alert_min_lots=true;
      Alert("You want to trade ",size," lot, but your broker's minimum is ",MinLots," lot. The trade/order will continue with ",MinLots," lot instead of ",size," lot. The same rule will be applied for next trades/orders with desired lot size lower than the minimum. You will not see this message again until you restart the program.");
   }
   
   if (align=="align") {
      if (size<MinLots) {size=MinLots;}
      if (size>MaxLots) {size=MaxLots;}
   }
   
   return (size);
}

string ErrorMessage(int error_code=-1)
{
	string e = "";
	
	if (error_code < 0) {error_code = FAAE::GetLastError();}
	
	switch(error_code)
	{
		//-- codes returned from trade server
		case 0:	return("");
		case 1:	e = "No error returned"; break;
		case 2:	e = "Common error"; break;
		case 3:	e = "Invalid trade parameters"; break;
		case 4:	e = "Trade server is busy"; break;
		case 5:	e = "Old version of the client terminal"; break;
		case 6:	e = "No connection with trade server"; break;
		case 7:	e = "Not enough rights"; break;
		case 8:	e = "Too frequent requests"; break;
		case 9:	e = "Malfunctional trade operation (never returned error)"; break;
		case 64:  e = "Account disabled"; break;
		case 65:  e = "Invalid account"; break;
		case 128: e = "Trade timeout"; break;
		case 129: e = "Invalid price"; break;
		case 130: e = "Invalid Sl or TP"; break;
		case 131: e = "Invalid trade volume"; break;
		case 132: e = "Market is closed"; break;
		case 133: e = "Trade is disabled"; break;
		case 134: e = "Not enough money"; break;
		case 135: e = "Price changed"; break;
		case 136: e = "Off quotes"; break;
		case 137: e = "Broker is busy (never returned error)"; break;
		case 138: e = "Requote"; break;
		case 139: e = "Order is locked"; break;
		case 140: e = "Only long trades allowed"; break;
		case 141: e = "Too many requests"; break;
		case 145: e = "Modification denied because order too close to market"; break;
		case 146: e = "Trade context is busy"; break;
		case 147: e = "Expirations are denied by broker"; break;
		case 148: e = "Amount of open and pending orders has reached the limit"; break;
		case 149: e = "Hedging is prohibited"; break;
		case 150: e = "Prohibited by FIFO rules"; break;
		
		//-- mql4 errors
		case 4000: e = "No error"; break;
		case 4001: e = "Wrong function pointer"; break;
		case 4002: e = "Array index is out of range"; break;
		case 4003: e = "No memory for function call stack"; break;
		case 4004: e = "Recursive stack overflow"; break;
		case 4005: e = "Not enough stack for parameter"; break;
		case 4006: e = "No memory for parameter string"; break;
		case 4007: e = "No memory for temp string"; break;
		case 4008: e = "Not initialized string"; break;
		case 4009: e = "Not initialized string in array"; break;
		case 4010: e = "No memory for array string"; break;
		case 4011: e = "Too long string"; break;
		case 4012: e = "Remainder from zero divide"; break;
		case 4013: e = "Zero divide"; break;
		case 4014: e = "Unknown command"; break;
		case 4015: e = "Wrong jump"; break;
		case 4016: e = "Not initialized array"; break;
		case 4017: e = "dll calls are not allowed"; break;
		case 4018: e = "Cannot load library"; break;
		case 4019: e = "Cannot call function"; break;
		case 4020: e = "Expert function calls are not allowed"; break;
		case 4021: e = "Not enough memory for temp string returned from function"; break;
		case 4022: e = "System is busy"; break;
		case 4050: e = "Invalid function parameters count"; break;
		case 4051: e = "Invalid function parameter value"; break;
		case 4052: e = "String function internal error"; break;
		case 4053: e = "Some array error"; break;
		case 4054: e = "Incorrect series array using"; break;
		case 4055: e = "Custom indicator error"; break;
		case 4056: e = "Arrays are incompatible"; break;
		case 4057: e = "Global variables processing error"; break;
		case 4058: e = "Global variable not found"; break;
		case 4059: e = "Function is not allowed in testing mode"; break;
		case 4060: e = "Function is not confirmed"; break;
		case 4061: e = "Send mail error"; break;
		case 4062: e = "String parameter expected"; break;
		case 4063: e = "Integer parameter expected"; break;
		case 4064: e = "Double parameter expected"; break;
		case 4065: e = "Array as parameter expected"; break;
		case 4066: e = "Requested history data in update state"; break;
		case 4099: e = "End of file"; break;
		case 4100: e = "Some file error"; break;
		case 4101: e = "Wrong file name"; break;
		case 4102: e = "Too many opened files"; break;
		case 4103: e = "Cannot open file"; break;
		case 4104: e = "Incompatible access to a file"; break;
		case 4105: e = "No order selected"; break;
		case 4106: e = "Unknown symbol"; break;
		case 4107: e = "Invalid price parameter for trade function"; break;
		case 4108: e = "Invalid ticket"; break;
		case 4109: e = "Trade is not allowed in the expert properties"; break;
		case 4110: e = "Longs are not allowed in the expert properties"; break;
		case 4111: e = "Shorts are not allowed in the expert properties"; break;
		
		//-- objects errors
		case 4200: e = "Object is already exist"; break;
		case 4201: e = "Unknown object property"; break;
		case 4202: e = "Object is not exist"; break;
		case 4203: e = "Unknown object type"; break;
		case 4204: e = "No object name"; break;
		case 4205: e = "Object coordinates error"; break;
		case 4206: e = "No specified subwindow"; break;
		case 4207: e = "Graphical object error"; break;  
		case 4210: e = "Unknown chart property"; break;
		case 4211: e = "Chart not found"; break;
		case 4212: e = "Chart subwindow not found"; break;
		case 4213: e = "Chart indicator not found"; break;
		case 4220: e = "Symbol select error"; break;
		case 4250: e = "Notification error"; break;
		case 4251: e = "Notification parameter error"; break;
		case 4252: e = "Notifications disabled"; break;
		case 4253: e = "Notification send too frequent"; break;
		
		//-- ftp errors
		case 4260: e = "FTP server is not specified"; break;
		case 4261: e = "FTP login is not specified"; break;
		case 4262: e = "FTP connection failed"; break;
		case 4263: e = "FTP connection closed"; break;
		case 4264: e = "FTP path not found on server"; break;
		case 4265: e = "File not found in the MQL4\\Files directory to send on FTP server"; break;
		case 4266: e = "Common error during FTP data transmission"; break;
		
		//-- filesystem errors
		case 5001: e = "Too many opened files"; break;
		case 5002: e = "Wrong file name"; break;
		case 5003: e = "Too long file name"; break;
		case 5004: e = "Cannot open file"; break;
		case 5005: e = "Text file buffer allocation error"; break;
		case 5006: e = "Cannot delete file"; break;
		case 5007: e = "Invalid file handle (file closed or was not opened)"; break;
		case 5008: e = "Wrong file handle (handle index is out of handle table)"; break;
		case 5009: e = "File must be opened with FILE_WRITE flag"; break;
		case 5010: e = "File must be opened with FILE_READ flag"; break;
		case 5011: e = "File must be opened with FILE_BIN flag"; break;
		case 5012: e = "File must be opened with FILE_TXT flag"; break;
		case 5013: e = "File must be opened with FILE_TXT or FILE_CSV flag"; break;
		case 5014: e = "File must be opened with FILE_CSV flag"; break;
		case 5015: e = "File read error"; break;
		case 5016: e = "File write error"; break;
		case 5017: e = "String size must be specified for binary file"; break;
		case 5018: e = "Incompatible file (for string arrays-TXT, for others-BIN)"; break;
		case 5019: e = "File is directory, not file"; break;
		case 5020: e = "File does not exist"; break;
		case 5021: e = "File cannot be rewritten"; break;
		case 5022: e = "Wrong directory name"; break;
		case 5023: e = "Directory does not exist"; break;
		case 5024: e = "Specified file is not directory"; break;
		case 5025: e = "Cannot delete directory"; break;
		case 5026: e = "Cannot clean directory"; break;
		
		//-- other errors
		case 5027: e = "Array resize error"; break;
		case 5028: e = "String resize error"; break;
		case 5029: e = "Structure contains strings or dynamic arrays"; break;
		
		//-- http request
		case 5200: e = "Invalid URL"; break;
		case 5201: e = "Failed to connect to specified URL"; break;
		case 5202: e = "Timeout exceeded"; break;
		case 5203: e = "HTTP request failed"; break;

		default:	e = "Unknown error";
	}

	e = FAAE::StringConcatenate(e, " (", error_code, ")");
	
	return e;
}

datetime ExpirationTime(string mode="GTC",int days=0, int hours=0, int minutes=0, datetime custom=0)
{
	datetime now        = TimeCurrent();
   datetime expiration = now;

	     if (mode == "GTC" || mode == "") {expiration = 0;}
	else if (mode == "today")             {expiration = (datetime)(MathFloor((now + 86400.0) / 86400.0) * 86400.0);}
	else if (mode == "specified")
	{
		expiration = 0;

		if ((days + hours + minutes) > 0)
		{
			expiration = now + (86400 * days) + (3600 * hours) + (60 * minutes);
		}
	}
	else
	{
		if (custom <= now)
		{
			if (custom < 31557600)
			{
				custom = now + custom;
			}
			else
			{
				custom = 0;
			}
		}

		expiration = custom;
	}

	return expiration;
}

class ExpirationWorker
{
private:
	struct CachedItems
	{
		long ticket;
		datetime expiration;
	};

	CachedItems cachedItems[];
	long chartID;
	string chartObjectPrefix;
	string chartObjectSuffix;

	template<typename T>
	void ArrayClone(T &dest[], T &src[])
	{
		int size = ArraySize(src);
		ArrayResize(dest, size);

		for (int i = 0; i < size; i++)
		{
			dest[i] = src[i];
		}
	}

	void InitialDiscovery()
	{
		ArrayResize(cachedItems, 0);

		int total = FAAE::OrdersTotal();

		for (int index = 0; index <= total; index++)
		{
			long ticket = GetTicketByIndex(index);

			if (ticket == 0) continue;

			datetime expiration = GetExpirationFromObject(ticket);

			if (expiration > 0)
			{
				SetExpirationInCache(ticket, expiration);
			}
		}
	}

	long GetTicketByIndex(int index)
	{
		long ticket = 0;

		if (FAAE::OrderSelect(index, SELECT_BY_POS, MODE_TRADES))
		{
			if (FAAE::OrderType() <= OP_SELL) ticket = (long)FAAE::OrderTicket();
		}

		return ticket;
	}

	datetime GetExpirationFromObject(long ticket)
	{
		datetime expiration = (datetime)0;
		
		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;

		if (FAAE::ObjectFind(chartID, objectName) == chartID)
		{
			expiration = (datetime)FAAE::ObjectGetInteger(chartID, objectName, OBJPROP_TIME);
		}

		return expiration;
	}

	bool RemoveExpirationObject(long ticket)
	{
		bool success      = false;
		string objectName = "";

		objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		success    = FAAE::ObjectDelete(chartID, objectName);

		return success;
	}

	void RemoveExpirationFromCache(long ticket)
	{
		int size = ArraySize(cachedItems);
		CachedItems newItems[];
		int newSize = 0;
		bool itemRemoved = false;

		for (int i = 0; i < size; i++)
		{
			if (cachedItems[i].ticket == ticket)
			{
				itemRemoved = true;
			}
			else
			{
				newSize++;
				ArrayResize(newItems, newSize);
				newItems[newSize - 1].ticket     = cachedItems[i].ticket;
				newItems[newSize - 1].expiration = cachedItems[i].expiration;
			}
		}

		if (itemRemoved) ArrayClone(cachedItems, newItems);
	}

	void SetExpirationInCache(long ticket, datetime expiration)
	{
		bool alreadyExists = false;
		int size           = ArraySize(cachedItems);

		for (int i = 0; i < size; i++)
		{
			if (cachedItems[i].ticket == ticket)
			{
				cachedItems[i].expiration = expiration;
				alreadyExists = true;
				break;
			}
		}

		if (alreadyExists == false)
		{
			ArrayResize(cachedItems, size + 1);
			cachedItems[size].ticket     = ticket;
			cachedItems[size].expiration = expiration;
		}
	}

	bool SetExpirationInObject(long ticket, datetime expiration)
	{
		if (!FAAE::OrderSelect((int)ticket, SELECT_BY_TICKET)) return false;

		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		double price      = FAAE::OrderOpenPrice();

		if (FAAE::ObjectFind(chartID, objectName) == chartID)
		{
			FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_TIME, expiration);
			FAAE::ObjectSetDouble(chartID, objectName, OBJPROP_PRICE, price);
		}
		else
		{
			FAAE::ObjectCreate(chartID, objectName, OBJ_ARROW, 0, expiration, price);
		}

		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_ARROWCODE, 77);
		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_HIDDEN, true);
		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_ANCHOR, ANCHOR_TOP);
		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_COLOR, clrRed);
		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_SELECTABLE, false);
		FAAE::ObjectSetInteger(chartID, objectName, OBJPROP_TIMEFRAMES, OBJ_NO_PERIODS);
		FAAE::ObjectSetString(chartID, objectName, OBJPROP_TEXT, TimeToString(expiration));

		return true;
	}
	
	bool TradeExists(long ticket)
	{
		bool exists  = false;

		for (int i = 0; i < FAAE::OrdersTotal(); i++)
		{
			if (!FAAE::OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;

			if (FAAE::OrderTicket() == ticket)
			{
				exists = true;
				break;
			}
		}

		return exists;
	}

public:
	// Default constructor
	ExpirationWorker()
	{
		chartID           = 0;
		chartObjectPrefix = "#";
		chartObjectSuffix = " Expiration Marker";

		InitialDiscovery();
	}

	void SetExpiration(long ticket, datetime expiration)
	{
		if (expiration <= 0)
		{
			RemoveExpiration(ticket);
		}
		else
		{
			SetExpirationInObject(ticket, expiration);
			SetExpirationInCache(ticket, expiration);
		}
	}

	datetime GetExpiration(long ticket)
	{
		datetime expiration = (datetime)0;
		int size            = ArraySize(cachedItems);

		for (int i = 0; i < size; i++)
		{
			if (cachedItems[i].ticket == ticket)
			{
				expiration = cachedItems[i].expiration;
				break;
			}
		}

		return expiration;
	}

	void RemoveExpiration(long ticket)
	{
		RemoveExpirationObject(ticket);
		RemoveExpirationFromCache(ticket);
	}

	void Run()
	{
		int count = ArraySize(cachedItems);

		if (count > 0)
		{
			datetime timeNow = TimeCurrent();

			for (int i = 0; i < count; i++)
			{
				if (timeNow >= cachedItems[i].expiration)
				{
					long ticket           = cachedItems[i].ticket;
					bool removeExpiration = false;

					if (TradeExists(ticket))
					{
						if (CloseTrade(ticket))
						{
							Print("close #", ticket, " by expiration");
							removeExpiration = true;
						}
					}
					else
					{
						removeExpiration = true;
					}

					if (removeExpiration)
					{
						RemoveExpiration(ticket);

						// Removing expiration causes change in the size of the cache,
						// so reset of the size and one step back of the index is needed
						count = ArraySize(cachedItems);
						i--;
					}
				}
			}
		}
	}
};

ExpirationWorker expirationWorker;

bool FilterOrderBy(
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both",
	string LimitsOrStops = "both",
	int TradesOrders     = 0,
	bool onTrade         = false
) {
	// TradesOrders = 0 - trades only
	// TradesOrders = 1 - orders only
	// TradesOrders = 2 - trades and orders - INCOMPLETE, DO NOT USE!

	//-- db
	static string markets[];
	static string market0   = "-";
	static int markets_size = 0;
	
	static string groups[];
	static string group0   = "-";
	static int groups_size = 0;
	
	//-- local variables
	bool type_pass   = false;
	bool market_pass = false;
	bool group_pass  = false;
	
	int i, type, magic_number;
	string symbol;

	// Trades
	if (onTrade == false)
	{
		type         = FAAE::OrderType();
		magic_number = FAAE::OrderMagicNumber();
		symbol       = FAAE::OrderSymbol();
	}
	else
	{
		type         = e_attrType();
		magic_number = e_attrMagicNumber();
		symbol       = e_attrSymbol();
	}

	if (TradesOrders == 0)
	{
		if (
				(BuysOrSells == "both"  && (type == OP_BUY || type == OP_SELL))
			|| (BuysOrSells == "buys"  && type == OP_BUY)
			|| (BuysOrSells == "sells" && type == OP_SELL)
			
			)
		{
			type_pass = true;
		}
	}
	// Pending orders
	else if (TradesOrders == 1)
	{
		if (
				(BuysOrSells == "both" && (type == OP_BUYLIMIT || type == OP_BUYSTOP || type == OP_SELLLIMIT || type == OP_SELLSTOP))
			||	(BuysOrSells == "buys" && (type == OP_BUYLIMIT || type == OP_BUYSTOP))
			|| (BuysOrSells == "sells" && (type == OP_SELLLIMIT || type == OP_SELLSTOP))
			)
		{
			if (
					(LimitsOrStops == "both" && (type == OP_BUYSTOP || type == OP_SELLSTOP || type == OP_BUYLIMIT || type == OP_SELLLIMIT))
				||	(LimitsOrStops == "stops" && (type == OP_BUYSTOP || type == OP_SELLSTOP))
				|| (LimitsOrStops == "limits" && (type == OP_BUYLIMIT || type == OP_SELLLIMIT))					
				)
			{
				type_pass = true;
			}
		}
	}
	//-- Trades and orders --------------------------------------------
	else
	{
		if (
				(BuysOrSells == "both")
			|| (BuysOrSells == "buys"  && (type == OP_BUY || type == OP_BUYLIMIT || type == OP_BUYSTOP))
			|| (BuysOrSells == "sells" && (type == OP_SELL || type == OP_SELLLIMIT || type == OP_SELLSTOP))
			)
		{
			type_pass = true;
		}
	}

	if (type_pass == false)
	{
		return false;
	}

	//-- check group
	if (group_mode == "group")
	{
		if (group == "")
		{
			if (magic_number == MagicStart)
   		{
   			group_pass = true;
   		}
	   }
	   else
	   {
			if (group0 != group)
			{
				group0 = group;
				StringExplode(",", group,groups);
				groups_size = ArraySize(groups);

				for(i = 0; i < groups_size; i++)
				{
					groups[i] = FAAE::StringTrimRight(groups[i]);
					groups[i] = FAAE::StringTrimLeft(groups[i]);

					if (groups[i] == "") {groups[i] = "0";}
				}
			}
		
			for(i = 0; i < groups_size; i++)
			{
				if (magic_number == (MagicStart+(int)groups[i]))
				{
					group_pass = true;

					break;
				}
			}
		}
	}
	else if (group_mode == "all" || (group_mode == "manual" && magic_number == 0))
	{
		group_pass = true;  
	}

	if (group_pass == false)
	{
		return false;
	}

	// check market
	if (market_mode == "all")
	{
		market_pass = true;
	}
	else
	{
		if (symbol == market)
	   {
	      market_pass = true;
	   }
      else
      {
			if (market0 != market)
			{
				market0 = market;

				if (market == "")
				{
					markets_size = 1;
					ArrayResize(markets, 1);
					markets[0] = Symbol();
				}
				else
				{
					StringExplode(",", market, markets);
					markets_size = ArraySize(markets);

					for(i = 0; i < markets_size; i++)
					{
						markets[i] = FAAE::StringTrimRight(markets[i]);
						markets[i] = FAAE::StringTrimLeft(markets[i]);

						if (markets[i] == "") {markets[i] = Symbol();}
					}
				}
			}

			for(i = 0; i < markets_size; i++)
			{
				if (symbol == markets[i])
				{
					market_pass = true;

					break;
				}
			}
		}
	}

	if (market_pass == false)
	{
		return false;
	}

	return true;
}

void GetBetTradesInfo(
	double &output[],
	string group,
	string symbol,
	int pool, // 0: try running trades first and then history trades, 1: try running only, 2: try history only
	bool findConsecutive = false
) {
	if (ArraySize(output) < 4)
	{
		ArrayResize(output, 4);
		ArrayInitialize(output, 0.0);
	}

	double lots         = output[0]; // will be the lot size of the first loaded trade
	double profitOrLoss = output[1]; // 0 is initial value, 1 is profit, -1 is loss
	double consecutive  = output[2]; // the number of consecutive profitable or losable trades
	double profit       = output[3]; // will be the profit of the first loaded trade
	bool historyTrades  = (pool == 2) ? true : false;
	
	int total = (historyTrades) ? HistoryTradesTotal() : TradesTotal();

	for (int pos = total - 1; pos >= 0; pos--)
	{
		if (
			   (!historyTrades && TradeSelectByIndex(pos, "group", group, "symbol", symbol))
			|| (historyTrades && HistoryTradeSelectByIndex(pos, "group", group, "symbol", symbol))
		) {
			if (
				(TimeCurrent() - FAAE::OrderOpenTime() < 3) // skip for brand new trades
				||
				(
					// exclude expired pending orders
					!historyTrades
					&& FAAE::OrderExpiration() > 0
					&& FAAE::OrderExpiration() <= FAAE::OrderCloseTime()
				)
			) {
				continue;
			}

			if (lots == 0.0)
			{
				lots = FAAE::OrderLots();
			}

			profit = FAAE::OrderClosePrice() - FAAE::OrderOpenPrice();
			profit = NormalizeDouble(profit, SymbolDigits(FAAE::OrderSymbol()));
			
			if (profit == 0.0)
			{
				// Consider a trade with zero profit as non existent
				continue;
			}

			if (IsOrderTypeSell())
			{
				profit = -1 * profit;
			}

			if (profitOrLoss == 0)
			{
				// We enter here only for the first trade
				profitOrLoss = (profit < 0.0) ? -1 : 1;

				consecutive++;

				if (findConsecutive == false) break;
			}
			else
			{
				// For the trades after the first one, if its profit is the opposite of profitOrLoss, we need to break
				if (
					   (profitOrLoss > 0.0 && profit < 0.0)
					|| (profitOrLoss < 0.0 && profit > 0.0)
				) {
					break;
				}

				consecutive++;
			}
		}
	}

	output[0] = lots;
	output[1] = profitOrLoss;
	output[2] = consecutive;
	output[3] = profit;
	
	if (pool == 0 && (findConsecutive || profitOrLoss == 0))
	{
		// running trades tried, continue with the history trades
		pool = 2;
		GetBetTradesInfo(output, group, symbol, pool, findConsecutive);
	}
}

bool HistoryTradeSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both"
) {
	if (FAAE::OrderSelect((int)index, SELECT_BY_POS, MODE_HISTORY) && FAAE::OrderType() < 2)
	{
		if (FilterOrderBy(
			group_mode,
			group,
			market_mode,
			market,
			BuysOrSells)
		) {
			return true;
		}
	}

	return false;
}

int HistoryTradesTotal(datetime from_date=0, datetime to_date=0)
{
	// both input parameters are dummy
	// they exist only to make the function compatible with MQL5-like code

	return FAAE::OrdersHistoryTotal();
}

template<typename T>
bool InArray(T &array[], T value)
{
	int size = ArraySize(array);

	if (size > 0)
	{
		for (int i = 0; i < size; i++)
		{
			if (array[i] == value)
			{
				return true;
			}
		}
	}

	return false;
}

bool IsOrderTypeBuy()
{
	int type = FAAE::OrderType();

	return (type == OP_BUY || type == OP_BUYSTOP || type == OP_BUYLIMIT);
}

bool IsOrderTypeSell()
{
	int type = FAAE::OrderType();

	return (type == OP_SELL || type == OP_SELLSTOP || type == OP_SELLLIMIT);
}

bool ModifyOrder(
	long ticket,
	double op,
	double sll = 0,
	double tpl = 0,
	double slp = 0,
	double tpp = 0,
	datetime exp = 0,
	color clr = clrNONE,
	bool ontrade_event = true
) {
	int bs = 1;

	if (
		   FAAE::OrderType() == OP_SELL
		|| FAAE::OrderType() == OP_SELLSTOP
		|| FAAE::OrderType() == OP_SELLLIMIT
	)
	{bs = -1;} // Positive when Buy, negative when Sell

	while (true)
	{
		uint time0 = GetTickCount();

		WaitTradeContextIfBusy();

		if (!FAAE::OrderSelect((int)ticket, SELECT_BY_TICKET))
		{
			return false;
		}

		string symbol      = FAAE::OrderSymbol();
		int type           = FAAE::OrderType();
		double ask         = SymbolInfoDouble(symbol, SYMBOL_ASK);
		double bid         = SymbolInfoDouble(symbol, SYMBOL_BID);
		int digits         = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
		double point       = SymbolInfoDouble(symbol, SYMBOL_POINT);
		double stoplevel   = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);
		double freezelevel = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);

		if (FAAE::OrderType() < 2) {op = FAAE::OrderOpenPrice();} else {op = NormalizeDouble(op,digits);}

		sll = NormalizeDouble(sll, digits);
		tpl = NormalizeDouble(tpl, digits);

		if (op < 0 || op >= EMPTY_VALUE || sll < 0 || slp < 0 || tpl < 0 || tpp < 0)
		{
			break;
		}
		
		//-- OP -----------------------------------------------------------
		// https://book.mql4.com/appendix/limits
		if (type == OP_BUYLIMIT)
		{
			if (ask - op < stoplevel) {op = ask - stoplevel;}
			if (ask - op <= freezelevel) {op = ask - freezelevel - point;}
		}
		else if (type == OP_BUYSTOP)
		{
			if (op - ask < stoplevel) {op = ask + stoplevel;}
			if (op - ask <= freezelevel) {op = ask + freezelevel + point;}
		}
		else if (type == OP_SELLLIMIT)
		{
			if (op - bid < stoplevel) {op = bid + stoplevel;}
			if (op - bid <= freezelevel) {op = bid + freezelevel + point;}
		}
		else if (type == OP_SELLSTOP)
		{
			if (bid - op < stoplevel) {op = bid - stoplevel;}
			if (bid - op < freezelevel) {op = bid - freezelevel - point;}
		}

		op = NormalizeDouble(op, digits);

		//-- SL and TP ----------------------------------------------------
		double sl = 0, tp = 0, vsl = 0, vtp = 0;

		sl = AlignStopLoss(symbol, type, op, attrStopLoss(), sll, slp);

		if (sl < 0) {break;}

		tp = AlignTakeProfit(symbol, type, op, attrTakeProfit(), tpl, tpp);

		if (tp < 0) {break;}

		if (USE_VIRTUAL_STOPS)
		{
			//-- virtual SL and TP --------------------------------------------
			vsl = sl;
			vtp = tp;
			sl = 0;
			tp = 0;

			double askbid = ask;
			if (bs < 0) {askbid = bid;}

			if (vsl > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL > 0 || EMERGENCY_STOPS_ADD > 0)
				{
					sl = vsl - EMERGENCY_STOPS_REL*MathAbs(askbid-vsl)*bs;

					if (sl <= 0) {sl = askbid;}

					sl = sl - toDigits(EMERGENCY_STOPS_ADD,symbol)*bs;
				}
			}

			if (vtp > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL > 0 || EMERGENCY_STOPS_ADD > 0)
				{
					tp = vtp + EMERGENCY_STOPS_REL*MathAbs(vtp-askbid)*bs;

					if (tp <= 0) {tp = askbid;}

					tp = tp + toDigits(EMERGENCY_STOPS_ADD,symbol)*bs;
				}
			}

			vsl = NormalizeDouble(vsl,digits);
			vtp = NormalizeDouble(vtp,digits);
		}

		sl = NormalizeDouble(sl,digits);
		tp = NormalizeDouble(tp,digits);

		//-- modify -------------------------------------------------------
		ResetLastError();
		
		if (USE_VIRTUAL_STOPS)
		{
			if (vsl != attrStopLoss() || vtp != attrTakeProfit())
			{
				VirtualStopsDriver("set", ticket, vsl, vtp, toPips(MathAbs(op-vsl), symbol), toPips(MathAbs(vtp-op), symbol));
			}
		}

		bool success = false;

		if (
			   (FAAE::OrderType() > 1 && op != NormalizeDouble(FAAE::OrderOpenPrice(),digits))
			|| sl != NormalizeDouble(FAAE::OrderStopLoss(),digits)
			|| tp != NormalizeDouble(FAAE::OrderTakeProfit(),digits)
			|| exp != OrderExpirationTime()
		) {
			success = FAAE::OrderModify((int)ticket, op, sl, tp, exp, clr);
		}

		//-- error check --------------------------------------------------
		int erraction = CheckForTradingError(FAAE::GetLastError(), "Modify error");

		switch(erraction)
		{
			case 0: break;    // no error
			case 1: continue; // overcomable error
			case 2: break;    // fatal error
		}

		//-- finish work --------------------------------------------------
		if (success == true)
		{
			if (!FAAE::IsTesting() && !FAAE::IsVisualMode())
			{
				Print("Operation details: Speed " + (string)(GetTickCount()-time0) + " ms");
			}

			if (ontrade_event == true)
			{
				OrderModified(ticket);
				OnTrade();
			}

			if (FAAE::OrderSelect((int)ticket,SELECT_BY_TICKET)) {}

			return true;
		}

		break;
	}

	return false;
}

int OCODriver()
{
	static int last_known_ticket = 0;
   static int orders1[];
   static int orders2[];
   int i, size;
   
   int total = FAAE::OrdersTotal();
   
   for (int pos=total-1; pos>=0; pos--)
   {
      if (FAAE::OrderSelect(pos,SELECT_BY_POS,MODE_TRADES))
      {
         int ticket = FAAE::OrderTicket();
         
         //-- end here if we reach the last known ticket
         if (ticket == last_known_ticket) {break;}
         
         //-- set the last known ticket, only if this is the first iteration
         if (pos == total-1) {
            last_known_ticket = ticket;
         }
         
         //-- we are searching for pending orders, skip trades
         if (FAAE::OrderType() <= OP_SELL) {continue;}
         
         //--
         if (FAAE::StringSubstr(FAAE::OrderComment(), 0, 5) == "[oco:")
         {
            int ticket_oco = FAAE::StrToInteger(FAAE::StringSubstr(FAAE::OrderComment(), 5, StringLen(FAAE::OrderComment())-1)); 
            
            bool found = false;
            size = ArraySize(orders2);
            for (i=0; i<size; i++)
            {
               if (orders2[i] == ticket_oco) {
                  found = true;
                  break;
               }
            }
            
            if (found == false) {
               ArrayResize(orders1, size+1);
               ArrayResize(orders2, size+1);
               orders1[size] = ticket_oco;
               orders2[size] = ticket;
            }
         }
      }
   }
   
   size = ArraySize(orders1);
   int dbremove = false;
   for (i=size-1; i>=0; i--)
   {
      if (FAAE::OrderSelect(orders1[i], SELECT_BY_TICKET, MODE_TRADES) == false || FAAE::OrderType() <= OP_SELL)
      {
         if (FAAE::OrderSelect(orders2[i], SELECT_BY_TICKET, MODE_TRADES)) {
            if (DeleteOrder(orders2[i],clrWhite))
            {
               dbremove = true;
            }
         }
         else {
            dbremove = true;
         }
         
         if (dbremove == true)
         {
            ArrayStripKey(orders1, i);
            ArrayStripKey(orders2, i);
         }
      }
   }
   
   size = ArraySize(orders2);
   dbremove = false;
   for (i=size-1; i>=0; i--)
   {
      if (FAAE::OrderSelect(orders2[i], SELECT_BY_TICKET, MODE_TRADES) == false || FAAE::OrderType() <= OP_SELL)
      {
         if (FAAE::OrderSelect(orders1[i], SELECT_BY_TICKET, MODE_TRADES)) {
            if (DeleteOrder(orders1[i],clrWhite))
            {
               dbremove = true;
            }
         }
         else {
            dbremove = true;
         }
         
         if (dbremove == true)
         {
            ArrayStripKey(orders1, i);
            ArrayStripKey(orders2, i);
         }
      }
   }
   
   return true;
}

bool OnTimerSet(double seconds)
{
   if (FXD_ONTIMER_TAKEN)
   {
      if (seconds<=0) {
         FXD_ONTIMER_TAKEN_IN_MILLISECONDS = false;
         FXD_ONTIMER_TAKEN_TIME = 0;
      }
      else if (seconds < 1) {
         FXD_ONTIMER_TAKEN_IN_MILLISECONDS = true;
         FXD_ONTIMER_TAKEN_TIME = seconds*1000; 
      }
      else {
         FXD_ONTIMER_TAKEN_IN_MILLISECONDS = false;
         FXD_ONTIMER_TAKEN_TIME = seconds;
      }
      
      return true;
   }

   if (seconds<=0) {
      EventKillTimer();
   }
   else if (seconds < 1) {
      return (EventSetMillisecondTimer((int)(seconds*1000)));  
   }
   else {
      return (EventSetTimer((int)seconds));
   }
   
   return true;
}

class OnTradeEventDetector
{
private:
	//--- structures
	struct EventValues
	{
		// special fields
		string   reason,
		         detail;

		// order related fields
		long     magic,
		         ticket;
		int      type;
		datetime timeClose,
		         timeOpen,
		         timeExpiration;
		double   commission,
		         priceOpen,
		         priceClose,
		         profit,
		         stopLoss,
		         swap,
		         takeProfit,
		         volume;
		string   comment,
		         symbol;
	};
	
	struct Position
	{
		int type;
		long     magic,
		         ticket;
		datetime timeClose,
		         timeExpiration,
		         timeOpen;
		double   commission,
		         priceCurrent,
		         priceOpen,
		         profit,
		         stopLoss,
		         swap,
		         takeProfit,
		         volume;
		string   comment,
		         symbol;
	};

	struct PendingOrder
	{
		int type;
		long     magic,
		         ticket;
		datetime timeClose,
		         timeExpiration,
		         timeOpen;
		double   priceCurrent,
		         priceOpen,
		         stopLoss,
		         takeProfit,
		         volume;
		string   comment,
		         symbol;
	};
	
	struct PositionExpirationTimes
	{
		long ticket;
		datetime timeExpiration;
	};
	
	//--- variables and arrays
	bool debug;

	int eventValuesQueueIndex;
	EventValues eventValues[];

	PendingOrder previousPendingOrders[];
	PendingOrder pendingOrders[];

	Position previousPositions[];
	Position positions[];

	PositionExpirationTimes positionExpirationTimes[];

	//--- methods
	
	/**
	* Like ArrayCopy(), but for any type.
	*/
	template<typename T>
	void CopyList(T &dest[], T &src[])
	{
		int size = ArraySize(src);
		ArrayResize(dest, size);

		for (int i = 0; i < size; i++)
		{
			dest[i] = src[i];
		}
	}

	/**
	* Overloaded method 1 of 2
	*/
	int MakeListOf(PendingOrder &list[])
	{
		ArrayResize(list, 0);

		int count        = FAAE::OrdersTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (FAAE::OrderSelect(index, SELECT_BY_POS) == false) continue;
			if (FAAE::OrderType() < OP_BUYLIMIT) continue;

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// int
			list[i].type   = FAAE::OrderType();
			list[i].magic  = FAAE::OrderMagicNumber();
			list[i].ticket = FAAE::OrderTicket();

			// datetime
			list[i].timeClose      = FAAE::OrderCloseTime();
			list[i].timeExpiration = FAAE::OrderExpiration();
			list[i].timeOpen       = FAAE::OrderOpenTime();

			// double
			list[i].priceCurrent = FAAE::OrderClosePrice();
			list[i].priceOpen    = FAAE::OrderOpenPrice();
			list[i].stopLoss     = FAAE::OrderStopLoss();
			list[i].takeProfit   = FAAE::OrderTakeProfit();
			list[i].volume       = FAAE::OrderLots();

			// string
			list[i].comment = FAAE::OrderComment();
			list[i].symbol  = FAAE::OrderSymbol();
		}

		return howManyAdded;
	}

	/**
	* Overloaded method 2 of 2
	*/
	int MakeListOf(Position &list[])
	{
		ArrayResize(list, 0);

		int count        = FAAE::OrdersTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (FAAE::OrderSelect(index, SELECT_BY_POS) == false) continue;
			if (FAAE::OrderType() > OP_SELL) continue;

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// int
			list[i].type   = FAAE::OrderType();
			list[i].magic  = FAAE::OrderMagicNumber();
			list[i].ticket = FAAE::OrderTicket();

			// datetime
			list[i].timeClose      = FAAE::OrderCloseTime();
			list[i].timeExpiration = (datetime)0;
			list[i].timeOpen       = FAAE::OrderOpenTime();

			// double
			list[i].commission   = FAAE::OrderCommission();
			list[i].priceCurrent = FAAE::OrderClosePrice();
			list[i].priceOpen    = FAAE::OrderOpenPrice();
			list[i].profit       = FAAE::OrderProfit();
			list[i].stopLoss     = FAAE::OrderStopLoss();
			list[i].swap         = FAAE::OrderSwap();
			list[i].takeProfit   = FAAE::OrderTakeProfit();
			list[i].volume       = FAAE::OrderLots();

			// string
			list[i].comment = FAAE::OrderComment();
			list[i].symbol  = FAAE::OrderSymbol();
			
			// extract expiration
			list[i].timeExpiration = expirationWorker.GetExpiration(list[i].ticket);

			if (USE_VIRTUAL_STOPS)
			{
				list[i].stopLoss   = VirtualStopsDriver("get sl", list[i].ticket);
				list[i].takeProfit = VirtualStopsDriver("get tp", list[i].ticket);
			}
		}

		return howManyAdded;
	}

	/**
	* This method loops through 2 lists of items and finds a difference. This difference is the event.
	* "Items" are either pending orders or positions.
	*
	* Returns true if an event is detected or false if not.
	*/
	template<typename ITEMS_TYPE> 
	bool DetectEvent(ITEMS_TYPE &previousItems[], ITEMS_TYPE &currentItems[])
	{
		ITEMS_TYPE item;
		string reason   = "";
		string detail   = "";
		int countBefore = ArraySize(previousItems);
		int countNow    = ArraySize(currentItems);

		// New
		if (countBefore < countNow)
		{
			item   = currentItems[countNow - 1];
			reason = "new";
		}
		// Gone
		else if (countBefore > countNow)
		{
			item   = FindMissingItem(previousItems, currentItems);
			reason = "close";
		}
		// Same => check for modifications
		else if (countBefore == countNow && countNow > 0)
		{
			int count = ArraySize(currentItems);

			for (int index = 0; index < count; index++)
			{
				item = currentItems[index];
				ITEMS_TYPE previous = previousItems[index];
				ITEMS_TYPE current  = currentItems[index];

				if (previous.ticket != current.ticket)
				{
					// The order changes when a trade is closed partially - the original ticket is gone ane a new one is created at the end
					// That's why we are gonna check whether the parent of the last trade is the same as the previous trade
					current = currentItems[count - 1];

					if (previous.ticket == attrTicketParent(current.ticket))
					{
						item = current;
						reason = "decrement";
					}
					else
					{
						Print("Positions order mismatch");
					}

					break;
				}

				if (previous.volume != current.volume)
				{
					// Volume increment
					if (previous.volume < current.volume)
					{
						reason = "increment";

						break;
					}
					// Volume decrement
					else
					{
						reason = "decrement";

						break;
					}
				}

				// SL & TP modified
				if (
					   previous.stopLoss != current.stopLoss
					&& previous.takeProfit != current.takeProfit
				) {
					reason = "modify";
					detail = "sltp";

					break;
				}
				// SL modified
				else if (previous.stopLoss != current.stopLoss)
				{
					reason = "modify";
					detail = "sl";

					break;
				}
				// TP modified
				else if (previous.takeProfit != current.takeProfit)
				{
					reason = "modify";
					detail = "tp";

					break;
				}
				
				if (previous.timeExpiration != current.timeExpiration)
				{
					reason = "modify";
					detail = "expiration";

					break;
				}
			}
		}

		if (reason == "")
		{
			return false;
		}

		UpdateValues(item, reason, detail);

		return true;
	}
	
	/**
	* From the list of previous orders or positions, find the item that is missing
	* in the list of current orders or positions.
	*
	* Return the ticket number or 0 if nothing is found.
	*/
	template<typename T> 
	T FindMissingItem(T &previous[], T &current[])
	{
		int previousCount = ArraySize(previous);
		int currentCount  = ArraySize(current);
		T item;

		long ticket = 0;

		for (int i = 0; i < previousCount; i++)
		{
			bool found = false;

			for (int j = 0; j < currentCount; j++)
			{
				if (previous[i].ticket == current[j].ticket)
				{
					found = true;
					break;
				}
			}

			if (found == false)
			{
				item = previous[i];
				break;
			}
		}

		return item;
	}
	
	/**
	* Overloaded method 1 of 2
	*/
	void UpdateValues(Position &item, string reason, string detail)
	{
		long ticket        = item.ticket;
		datetime timeOpen  = item.timeOpen;
		datetime timeClose = item.timeClose;
		double priceOpen   = item.priceOpen;
		double priceClose  = item.priceCurrent;
		double profit      = item.profit;
		double swap        = item.swap;
		double commission  = item.commission;
		double volume      = item.volume;

		if (reason == "close" || reason == "decrement")
		{
			if (FAAE::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_HISTORY))
			{
				timeOpen   = FAAE::OrderOpenTime();
				timeClose  = FAAE::OrderCloseTime();
				priceOpen  = FAAE::OrderOpenPrice();
				priceClose = FAAE::OrderClosePrice();
				profit     = FAAE::OrderProfit();
				swap       = FAAE::OrderSwap();
				commission = FAAE::OrderCommission();
				volume     = FAAE::OrderLots();

				if (detail == "")
				{
					if (
						item.timeExpiration > 0
						&& item.timeExpiration <= timeClose
					) {
						detail = "expiration";
					}
				}

				if (detail == "")
				{
					string comment = FAAE::OrderComment();

					// Try with comments, which works in the Tester, but it could not work in real
					     if (comment == "[tp]") detail = "tp";
					else if (comment == "[sl]") detail = "sl";

					// Try to detect close by SL or TP by the close price
					if (detail == "")
					{
						int type = item.type;

						double sl = FAAE::OrderStopLoss();
						double tp = FAAE::OrderTakeProfit();

						if (type == 0) // BUY
						{
							     if (sl > 0 && priceClose <= sl) detail = "sl";
							else if (tp > 0 && priceClose >= tp) detail = "tp";
						}
						else if (type == 1) // SELL
						{
							     if (sl > 0 && priceClose >= sl) detail = "sl";
							else if (tp > 0 && priceClose <= tp) detail = "tp";
						}
					}
				}
			}
		}

		int i = eventValuesQueueIndex;

		eventValues[i].reason = reason;
		eventValues[i].detail = detail;
 
		eventValues[i].priceClose     = priceClose;
		eventValues[i].timeClose      = timeClose;
		eventValues[i].comment        = item.comment;
		eventValues[i].commission     = commission;
		eventValues[i].timeExpiration = item.timeExpiration;
		eventValues[i].volume         = volume;
		eventValues[i].magic          = item.magic;
		eventValues[i].priceOpen      = priceOpen;
		eventValues[i].timeOpen       = timeOpen;
		eventValues[i].profit         = profit;
		eventValues[i].stopLoss       = item.stopLoss;
		eventValues[i].swap           = swap;
		eventValues[i].symbol         = item.symbol;
		eventValues[i].takeProfit     = item.takeProfit;
		eventValues[i].ticket         = ticket;
		eventValues[i].type           = item.type;

		if (debug)
		{
			PrintUpdatedValues();
		}
	}
	
	/**
	* Overloaded method 2 of 2
	*/
	void UpdateValues(PendingOrder &item, string reason, string detail)
	{
		int i = eventValuesQueueIndex;

		eventValues[i].reason = reason;
		eventValues[i].detail = detail;

		eventValues[i].priceClose     = item.priceCurrent;
		eventValues[i].timeClose      = item.timeClose;
		eventValues[i].comment        = item.comment;
		eventValues[i].commission     = 0.0;
		eventValues[i].timeExpiration = item.timeExpiration;
		eventValues[i].volume         = item.volume;
		eventValues[i].magic          = item.magic;
		eventValues[i].priceOpen      = item.priceOpen;
		eventValues[i].timeOpen       = item.timeOpen;
		eventValues[i].profit         = 0.0;
		eventValues[i].stopLoss       = item.stopLoss;
		eventValues[i].swap           = 0.0;
		eventValues[i].symbol         = item.symbol;
		eventValues[i].takeProfit     = item.takeProfit;
		eventValues[i].ticket         = item.ticket;
		eventValues[i].type           = item.type;

		if (debug)
		{
			PrintUpdatedValues();
		}
	}

	void PrintUpdatedValues()
	{
		Print(
			" <<<"
		);
		
		Print(
			" | reason: ", e_Reason(),
			" | detail: ", e_ReasonDetail(),
			" | ticket: ", e_attrTicket(),
			" | type: ", EnumToString((ENUM_ORDER_TYPE)e_attrType())
		);
		
		Print(
			" | openTime : ", e_attrOpenTime(),
			" | openPrice : ", e_attrOpenPrice()
		);
		
		Print(
			" | closeTime: ", e_attrCloseTime(),
			" | closePrice: ", e_attrClosePrice()
		);
		
		Print(
			" | volume: ", e_attrLots(),
			" | sl: ", e_attrStopLoss(),
			" | tp: ", e_attrTakeProfit(),
			" | profit: ", e_attrProfit(),
			" | swap: ", e_attrSwap(),
			" | exp: ", e_attrExpiration(),
			" | comment: ", e_attrComment()
		);
		
		Print(
			">>>"
		);
	}

	int AddEventValues()
	{
		eventValuesQueueIndex++;
		ArrayResize(eventValues, eventValuesQueueIndex + 1);

		return eventValuesQueueIndex;
	}

	int RemoveEventValues()
	{
		if (eventValuesQueueIndex == -1)
		{
			Print("Cannot remove event values, add them first. (in function ", __FUNCTION__, ")");
		}
		else
		{
			eventValuesQueueIndex--;
			ArrayResize(eventValues, eventValuesQueueIndex + 1);
		}

		return eventValuesQueueIndex;
	}

public:
	/**
	* Default constructor
	*/
	OnTradeEventDetector(void)
	{
		debug = false;
		eventValuesQueueIndex = -1;
	};

	bool Start()
	{
		AddEventValues();

		MakeListOf(positions);
		MakeListOf(pendingOrders);

		bool success = false;

		if (!success) success = DetectEvent(previousPositions, positions);

		if (!success) success = DetectEvent(previousPendingOrders, pendingOrders);

		CopyList(previousPositions, positions);
		CopyList(previousPendingOrders, pendingOrders);

		return success;
	}

	void End()
	{
		RemoveEventValues();
	}

	string EventValueReason() {return eventValues[eventValuesQueueIndex].reason;}
	string EventValueDetail() {return eventValues[eventValuesQueueIndex].detail;}

	int EventValueType() {return eventValues[eventValuesQueueIndex].type;}

	datetime EventValueTimeClose()      {return eventValues[eventValuesQueueIndex].timeClose;}
	datetime EventValueTimeOpen()       {return eventValues[eventValuesQueueIndex].timeOpen;}
	datetime EventValueTimeExpiration() {return eventValues[eventValuesQueueIndex].timeExpiration;}

	long EventValueMagic()  {return eventValues[eventValuesQueueIndex].magic;}
	long EventValueTicket() {return eventValues[eventValuesQueueIndex].ticket;}

	double EventValueCommission() {return eventValues[eventValuesQueueIndex].commission;}
	double EventValuePriceOpen()  {return eventValues[eventValuesQueueIndex].priceOpen;}
	double EventValuePriceClose() {return eventValues[eventValuesQueueIndex].priceClose;}
	double EventValueProfit()     {return eventValues[eventValuesQueueIndex].profit;}
	double EventValueStopLoss()   {return eventValues[eventValuesQueueIndex].stopLoss;}
	double EventValueSwap()       {return eventValues[eventValuesQueueIndex].swap;}
	double EventValueTakeProfit() {return eventValues[eventValuesQueueIndex].takeProfit;}
	double EventValueVolume()     {return eventValues[eventValuesQueueIndex].volume;}

	string EventValueComment() {return eventValues[eventValuesQueueIndex].comment;}
	string EventValueSymbol()  {return eventValues[eventValuesQueueIndex].symbol;}
};

OnTradeEventDetector onTradeEventDetector;

int OrderCreate(
	string   symbol     = "",
	int      type       = OP_BUY,
	double   lots       = 0,
	double   op         = 0,
	double   sll        = 0, // SL level
	double   tpl        = 0, // TO level
	double   slp        = 0, // SL adjust in points
	double   tpp        = 0, // TP adjust in points
	double   slippage   = 0,
	int      magic      = 0,
	string   comment    = "",
	color    arrowcolor = CLR_NONE,
	datetime expiration = 0,
	bool     oco        = false
	)
{
	uint time0 = GetTickCount(); // used to measure speed of execution of the order

	int ticket = -1;
	bool placeExpirationObject = false; // whether or not to create an object for expiration for trades

	// calculate buy/sell flag (1 when Buy or -1 when Sell)
	int bs = 1;

	if (
		   type == OP_SELL
		|| type == OP_SELLSTOP
		|| type == OP_SELLLIMIT
		)
	{
		bs = -1;
	}

	if (symbol == "") {symbol = Symbol();}

	lots = AlignLots(symbol, lots);

	int digits = 0;
	double ask = 0, bid = 0, point = 0, ticksize = 0;
	double sl = 0, tp = 0;
	double vsl = 0, vtp = 0;

	//-- attempt to send trade/order -------------------------------------
	while (!IsStopped())
	{
		WaitTradeContextIfBusy();

		static bool not_allowed_message = false;

		if (
			   !MQLInfoInteger(MQL_TESTER)
			&& !FAAE::MarketInfo(symbol, MODE_TRADEALLOWED)
		) {
			if (not_allowed_message == false)
			{
				Print("Market ("+symbol+") is closed");
			}

			not_allowed_message = true;

			return false;
		}

		not_allowed_message = false;

		digits   = (int)FAAE::MarketInfo(symbol, MODE_DIGITS);
		ask      = FAAE::MarketInfo(symbol, MODE_ASK);
		bid      = FAAE::MarketInfo(symbol, MODE_BID);
		point    = FAAE::MarketInfo(symbol, MODE_POINT);
		ticksize = FAAE::MarketInfo(symbol, MODE_TICKSIZE);

		//- not enough money check: fix maximum possible lot by margin required, or quit
		if (type==OP_BUY || type==OP_SELL)
		{
			double LotStep          = FAAE::MarketInfo(symbol,MODE_LOTSTEP);
			double MinLots          = FAAE::MarketInfo(symbol,MODE_MINLOT);
			double margin_required  = FAAE::MarketInfo(symbol,MODE_MARGINREQUIRED);
			static bool not_enough_message = false;

			if (margin_required != 0)
			{
				double max_size_by_margin = FAAE::AccountFreeMargin() / margin_required;

				if (lots > max_size_by_margin)
				{
					double size_old = lots;
					lots = max_size_by_margin;

					if (lots < MinLots)
					{
						if (not_enough_message == false)
						{
							Print("Not enough money to trade :( The robot is still working, waiting for some funds to appear...");
						}

						not_enough_message = true;
						return false;
					}
					else
					{
						lots = MathFloor(lots / LotStep) * LotStep;

						Print("Not enough money to trade " + DoubleToString(size_old, 2)+", the volume to trade will be the maximum possible of " + DoubleToString(lots, 2));
					}
				}
			}

			not_enough_message = false;
		}

		// fix the comment, because it seems that the comment is deleted if its lenght is > 31 symbols
		if (StringLen(comment) > 31)
		{
			comment = FAAE::StringSubstr(comment,0,31);
		}

		//- expiration for trades
		if (type == OP_BUY || type == OP_SELL)
		{
			if (expiration > 0)
			{
				//- bo broker?
				if (
					   StringLen(symbol) > 6
					&& FAAE::StringSubstr(symbol, StringLen(symbol) - 2) == "bo"
				) {
					//- convert UNIX to seconds
					if (expiration > TimeCurrent()-100) {
						expiration = expiration - TimeCurrent();
					}

					comment = "BO exp:" + (string)expiration;
				}
				else
				{
					// The expiration in this case is a vertical line
					// Comment doesn't always work,
					// because it changes when the trade is partially closed
					placeExpirationObject = true;
				}
			}
		}

		if (type == OP_BUY || type == OP_SELL)
		{
			op = (bs > 0) ? ask : bid;
		}

		op  = NormalizeDouble(op, digits);
		sll = NormalizeDouble(sll, digits);
		tpl = NormalizeDouble(tpl, digits);

		if (op < 0 || op >= EMPTY_VALUE || sll < 0 || slp < 0 || tpl < 0 || tpp < 0)
		{
			break;
		}

		//-- SL and TP ----------------------------------------------------
		vsl = 0; vtp = 0;

		sl = AlignStopLoss(symbol, type, op, 0, NormalizeDouble(sll, digits), slp);

		if (sl < 0) {break;}

		tp = AlignTakeProfit(symbol, type, op, 0, NormalizeDouble(tpl, digits), tpp);

		if (tp < 0) {break;}

		if (USE_VIRTUAL_STOPS)
		{
			//-- virtual SL and TP --------------------------------------------
			vsl = sl;
			vtp = tp;
			sl = 0;
			tp = 0;

			double askbid = (bs > 0) ? ask : bid;

			if (vsl > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL > 0 || EMERGENCY_STOPS_ADD > 0)
				{
					sl = vsl - EMERGENCY_STOPS_REL * MathAbs(askbid - vsl) * bs;

					if (sl <= 0) {sl = askbid;}

					sl = sl - toDigits(EMERGENCY_STOPS_ADD, symbol) * bs;
				}
			}

			if (vtp > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL > 0 || EMERGENCY_STOPS_ADD > 0)
				{
					tp = vtp + EMERGENCY_STOPS_REL * MathAbs(vtp - askbid) * bs;

					if (tp <= 0) {tp = askbid;}

					tp = tp + toDigits(EMERGENCY_STOPS_ADD, symbol) * bs;
				}
			}

			vsl = NormalizeDouble(vsl, digits);
			vtp = NormalizeDouble(vtp, digits);
		}

		sl = NormalizeDouble(sl, digits);
		tp = NormalizeDouble(tp, digits);

		//-- fix expiration for pending orders ----------------------------
		if (expiration > 0 && type > OP_SELL)
		{
			if ((expiration - TimeCurrent()) < (11 * 60))
			{
				Print("Expiration time cannot be less than 11 minutes, so it was automatically modified to 11 minutes.");
				expiration = TimeCurrent() + (11 * 60);
			}
		}

		//-- fix prices by ticksize
		op = MathRound(op / ticksize) * ticksize;
		sl = MathRound(sl / ticksize) * ticksize;
		tp = MathRound(tp / ticksize) * ticksize;

		//-- send ---------------------------------------------------------
		ResetLastError();

		ticket = FAAE::OrderSend(
			symbol,
			type,
			lots,
			op,
			(int)(slippage * PipValue(symbol)),
			sl,
			tp,
			comment,
			magic,
			expiration,
			arrowcolor
		);

		//-- error check --------------------------------------------------
		string msg_prefix = (type > OP_SELL) ? "New order error" : "New trade error";

		int erraction = CheckForTradingError(FAAE::GetLastError(), msg_prefix);

		switch(erraction)
		{
			case 0: break;    // no error
			case 1: continue; // overcomable error
			case 2: break;    // fatal error
		}

		//-- finish work --------------------------------------------------
		if (ticket > 0)
		{
			if (USE_VIRTUAL_STOPS)
			{
				VirtualStopsDriver("set", ticket, vsl, vtp, toPips(MathAbs(op-vsl), symbol), toPips(MathAbs(vtp-op), symbol));
			}

			//-- show some info
			double slip = 0;

			if (FAAE::OrderSelect(ticket, SELECT_BY_TICKET))
			{
				if (placeExpirationObject)
				{
					expirationWorker.SetExpiration(ticket, expiration);
				}

				if (
					   !MQLInfoInteger(MQL_TESTER)
					&& !MQLInfoInteger(MQL_VISUAL_MODE)
					&& !MQLInfoInteger(MQL_OPTIMIZATION)
				) {
					slip = FAAE::OrderOpenPrice() - op;

					Print(
						"Operation details: Speed ",
						(GetTickCount() - time0),
						" ms | Slippage ",
						FAAE::DoubleToStr(toPips(slip, symbol), 1),
						" pips"
					);
				}
			}

			//-- fix stops in case of slippage
			if (
				   !MQLInfoInteger(MQL_TESTER)
				&& !MQLInfoInteger(MQL_VISUAL_MODE)
				&&!MQLInfoInteger(MQL_OPTIMIZATION)
			) {
				slip = NormalizeDouble(FAAE::OrderOpenPrice(), digits) - NormalizeDouble(op, digits);

				if (slip != 0 && (FAAE::OrderStopLoss() != 0 || FAAE::OrderTakeProfit() != 0))
				{
					Print("Correcting stops because of slippage...");

					sl = FAAE::OrderStopLoss();
					tp = FAAE::OrderTakeProfit();

					if (sl != 0 || tp != 0)
					{
						if (sl != 0) {sl = NormalizeDouble(FAAE::OrderStopLoss() + slip, digits);}
						if (tp != 0) {tp = NormalizeDouble(FAAE::OrderTakeProfit() + slip, digits);}

						ModifyOrder(ticket, FAAE::OrderOpenPrice(), sl, tp, 0, 0, 0, CLR_NONE, false);
					}
				}
			}

			OnTrade();

			break;
		}

		break;
	}

	if (oco == true && ticket > 0)
	{
		if (USE_VIRTUAL_STOPS)
		{
			sl = vsl;
			tp = vtp;
		}

		sl = (sl > 0) ? NormalizeDouble(MathAbs(op-sl), digits) : 0;
		tp = (tp > 0) ? NormalizeDouble(MathAbs(op-tp), digits) : 0;

		int typeoco = type;

		if (typeoco == OP_BUYSTOP)
		{
			typeoco = OP_SELLSTOP;
			op = bid - MathAbs(op - ask);
		}
		else if (typeoco == OP_BUYLIMIT)
		{
			typeoco = OP_SELLLIMIT;
			op = bid + MathAbs(op - ask);
		}
		else if (typeoco == OP_SELLSTOP)
		{
			typeoco = OP_BUYSTOP;
			op = ask + MathAbs(op - bid);
		}
		else if (typeoco == OP_SELLLIMIT)
		{
			typeoco = OP_BUYLIMIT;
			op = ask - MathAbs(op - bid);
		}

		if (typeoco == OP_BUYSTOP || typeoco == OP_BUYLIMIT)
		{
			sl = (sl > 0) ? op - sl : 0;
			tp = (tp > 0) ? op + tp : 0;
			arrowcolor = clrBlue;
		}
		else
		{
			sl = (sl > 0) ? op + sl : 0;
			tp = (tp > 0) ? op - tp : 0;
			arrowcolor = clrRed;
		}

		comment = "[oco:" + (string)ticket + "]";

		OrderCreate(symbol, typeoco, lots, op, sl, tp, 0, 0, slippage, magic, comment, arrowcolor, expiration, false);
	}

	return ticket;
}

/**
* This is a replacement for the system function.
* The difference is that this can also get the expiration for trades.
*/
datetime OrderExpiration(bool check_trade)
{
	datetime expiration = (datetime)0;

	if (FAAE::OrderType() > OP_SELL)
	{
		expiration = FAAE::OrderExpiration();
	}
	else if (check_trade)
	{
		expiration = (datetime)expirationWorker.GetExpiration(FAAE::OrderTicket());
	}

	return expiration;
}

/**
* This is a replacement for the system function.
* The difference is that this can also get the expiration for trades.
*/
datetime OrderExpirationTime()
{
	datetime expiration = (datetime)0;

	if (FAAE::OrderType() > OP_SELL)
	{
		expiration = FAAE::OrderExpiration();
	}
	else
	{
		expiration = (datetime)expirationWorker.GetExpiration(FAAE::OrderTicket());
	}

	return expiration;
}

bool OrderModified(ulong ticket = 0, string action = "set")
{
	static ulong memory[];

	if (ticket == 0)
	{
		ticket = FAAE::OrderTicket();
		action = "get";
	}
	else if (ticket > 0 && action != "clear")
	{
		action = "set";
	}

	bool modified_status = InArray(memory, ticket);
	
	if (action == "get")
	{
		return modified_status;
	}
	else if (action == "set")
	{
		ArrayEnsureValue(memory, ticket);

		return true;
	}
	else if (action == "clear")
	{
		ArrayStripValue(memory, ticket);

		return true;
	}

	return false;
}

bool PendingOrderSelectByTicket(ulong ticket)
{
	if (FAAE::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_TRADES) && FAAE::OrderType() > 1)
	{
		return true;
	}

	return false;
}

double PipValue(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return CustomPoint(symbol) / SymbolInfoDouble(symbol, SYMBOL_POINT);
}

int SecondsFromComponents(double days, double hours, double minutes, int seconds)
{
	int retval =
		86400 * (int)MathFloor(days)
		+ 3600 * (int)(MathFloor(hours) + (24 * (days - MathFloor(days))))
		+ 60 * (int)(MathFloor(minutes) + (60 * (hours - MathFloor(hours))))
		+ (int)((double)seconds + (60 * (minutes - MathFloor(minutes))));

	return retval;
}

int SellNow(
	string symbol,
	double lots,
	double sll,
	double tpl,
	double slp,
	double tpp,
	double slippage = 0,
	int magic = 0,
	string comment = "",
	color arrowcolor = clrNONE,
	datetime expiration = 0
	)
{
	return OrderCreate(
		symbol,
		OP_SELL,
		lots,
		0,
		sll,
		tpl,
		slp,
		tpp,
		slippage,
		magic,
		comment,
		arrowcolor,
		expiration
	);
}

template<typename T>
void StringExplode(string delimiter, string inputString, T &output[])
{
	int begin   = 0;
	int end     = 0;
	int element = 0;
	int length  = StringLen(inputString);
	int length_delimiter = StringLen(delimiter);
	T empty_val  = (typename(T) == "string") ? (T)"" : (T)0;

	if (length > 0)
	{
		while (true)
		{
			end = StringFind(inputString, delimiter, begin);

			ArrayResize(output, element + 1);
			output[element] = empty_val;
	
			if (end != -1)
			{
				if (end > begin)
				{
					output[element] = (T)FAAE::StringSubstr(inputString, begin, end - begin);
				}
			}
			else
			{
				output[element] = (T)FAAE::StringSubstr(inputString, begin, length - begin);
				break;
			}
			
			begin = end + 1 + (length_delimiter - 1);
			element++;
		}
	}
	else
	{
		ArrayResize(output, 1);
		output[element] = empty_val;
	}
}

template<typename T>
string StringImplode(string delimeter, T &array[])
{
   string retval = "";
   int size      = ArraySize(array);

   for (int i = 0; i < size; i++)
	{
      retval = FAAE::StringConcatenate(retval, (string)array[i], delimeter);
   }
	
   return FAAE::StringSubstr(retval, 0, (StringLen(retval) - StringLen(delimeter)));
}

string StringTrim(string text)
{
   text = FAAE::StringTrimRight(text);
   text = FAAE::StringTrimLeft(text);
	
	return text;
}

double SymbolAsk(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_ASK);
}

double SymbolBid(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_BID);
}

int SymbolDigits(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
}

double TicksData(string symbol = "", int type = 0, int shift = 0)
{
	static bool collecting_ticks = false;
	static string symbols[];
	static int zero_sid[];
	static double memoryASK[][100];
	static double memoryBID[][100];

	int sid = 0, size = 0, i = 0, id = 0;
	double ask = 0, bid = 0, retval = 0;
	bool exists = false;

	if (ArraySize(symbols) == 0)
	{
		ArrayResize(symbols, 1);
		ArrayResize(zero_sid, 1);
		ArrayResize(memoryASK, 1);
		ArrayResize(memoryBID, 1);

		symbols[0] = _Symbol;
	}

	if (type > 0 && shift > 0)
	{
		collecting_ticks = true;
	}

	if (collecting_ticks == false)
	{
		if (type > 0 && shift == 0)
		{
			// going to get ticks
		}
		else
		{
			return 0;
		}
	}

	if (symbol == "") symbol = _Symbol;

	if (type == 0)
	{
		exists = false;
		size   = ArraySize(symbols);

		if (size == 0) {ArrayResize(symbols, 1);}

		for (i=0; i<size; i++)
		{
			if (symbols[i] == symbol)
			{
				exists = true;
				sid    = i;
				break;
			}
		}

		if (exists == false)
		{
			int newsize = ArraySize(symbols) + 1;

			ArrayResize(symbols, newsize);
			symbols[newsize-1] = symbol;

			ArrayResize(zero_sid, newsize);
			ArrayResize(memoryASK, newsize);
			ArrayResize(memoryBID, newsize);

			sid=newsize;
		}

		if (sid >= 0)
		{
			ask = SymbolInfoDouble(symbol, SYMBOL_ASK);
			bid = SymbolInfoDouble(symbol, SYMBOL_BID);

			if (bid == 0 && MQLInfoInteger(MQL_TESTER))
			{
				Print("Ticks data collector error: " + symbol + " cannot be backtested. Only the current symbol can be backtested. The EA will be terminated.");
				ExpertRemove();
			}

			if (
				   symbol == _Symbol
				|| ask != memoryASK[sid][0]
				|| bid != memoryBID[sid][0]
			)
			{
				memoryASK[sid][zero_sid[sid]] = ask;
				memoryBID[sid][zero_sid[sid]] = bid;
				zero_sid[sid]                 = zero_sid[sid] + 1;

				if (zero_sid[sid] == 100)
				{
					zero_sid[sid] = 0;
				}
			}
		}
	}
	else
	{
		if (shift <= 0)
		{
			if (type == SYMBOL_ASK)
			{
				return SymbolInfoDouble(symbol, SYMBOL_ASK);
			}
			else if (type == SYMBOL_BID)
			{
				return SymbolInfoDouble(symbol, SYMBOL_BID); 
			}
			else
			{
				double mid = ((SymbolInfoDouble(symbol, SYMBOL_ASK) + SymbolInfoDouble(symbol, SYMBOL_BID)) / 2);

				return mid;
			}
		}
		else
		{
			size = ArraySize(symbols);

			for (i = 0; i < size; i++)
			{
				if (symbols[i] == symbol)
				{
					sid = i;
				}
			}

			if (shift < 100)
			{
				id = zero_sid[sid] - shift - 1;

				if(id < 0) {id = id + 100;}

				if (type == SYMBOL_ASK)
				{
					retval = memoryASK[sid][id];

					if (retval == 0)
					{
						retval = SymbolInfoDouble(symbol, SYMBOL_ASK);
					}
				}
				else if (type == SYMBOL_BID)
				{
					retval = memoryBID[sid][id];

					if (retval == 0)
					{
						retval = SymbolInfoDouble(symbol, SYMBOL_BID);
					}
				}
			}
		}
	}

	return retval;
}

int TicksPerSecond(bool get_max = false, bool set = false)
{
	static datetime time0 = 0;
	static int ticks      = 0;
	static int tps        = 0;
	static int tpsmax     = 0;

	datetime time1 = TimeLocal();

	if (set == true)
	{
		if (time1 > time0)
		{
			if (time1 - time0 > 1)
			{
				tps = 0;
			}
			else
			{
				tps = ticks;
			}

			time0 = time1;
			ticks = 0;
		}

		ticks++;

		if (tps > tpsmax) {tpsmax = tps;}
	}

	if (get_max)
	{
		return tpsmax;
	}

	return tps;
}

datetime TimeAtStart(string cmd = "server")
{
	static datetime local  = 0;
	static datetime server = 0;

	if (cmd == "local")
	{
		return local;
	}
	else if (cmd == "server")
	{
		return server;
	}
	else if (cmd == "set")
	{
		local  = TimeLocal();
		server = TimeCurrent();
	}

	return 0;
}

datetime TimeFromComponents(
	int time_src = 0,
	int    y = 0,
	int    m = 0,
	double d = 0,
	double h = 0,
	double i = 0,
	int    s = 0
) {
	MqlDateTime tm;

	     if (time_src == 0) {TimeCurrent(tm);}
	else if (time_src == 1) {TimeLocal(tm);}
	else if (time_src == 2) {TimeGMT(tm);}

	if (y > 0)
	{
		if (y < 100) {y = 2000 + y;}
		tm.year = y;
	}
	if (m > 0) {tm.mon = m;}
	if (d > 0) {tm.day = (int)MathFloor(d);}

	tm.hour = (int)(MathFloor(h) + (24 * (d - MathFloor(d))));
	tm.min  = (int)(MathFloor(i) + (60 * (h - MathFloor(h))));
	tm.sec  = (int)((double)s + (60 * (i - MathFloor(i))));

	return StructToTime(tm);
}

bool TradeSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both"
) {
	if (FAAE::OrderSelect((int)index, SELECT_BY_POS, MODE_TRADES) && FAAE::OrderType() < 2)
	{
		if (FilterOrderBy(
			group_mode,
			group,
			market_mode,
			market,
			BuysOrSells,
			"both",
			0)
		) {
			return true;
		}
	}

	return false;
}

bool TradeSelectByTicket(ulong ticket)
{
	if (FAAE::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_TRADES) && FAAE::OrderType() < 2)
	{
		return true;
	}

	return false;
}

int TradesTotal()
{
	return FAAE::OrdersTotal();
}

double VirtualStopsDriver(
	string command = "",
	ulong ti       = 0,
	double sl      = 0,
	double tp      = 0,
	double slp     = 0,
	double tpp     = 0
)
{
	static bool initialized     = false;
	static string name          = "";
	static string loop_name[2]  = {"sl", "tp"};
	static color  loop_color[2] = {DeepPink, DodgerBlue};
	static double loop_price[2] = {0, 0};
	static ulong mem_to_ti[]; // tickets
	static int mem_to[];      // timeouts
	static bool trade_pass = false;
	int i = 0;

	// Are Virtual Stops even enabled?
	if (!USE_VIRTUAL_STOPS)
	{
		return 0;
	}
	
	if (initialized == false || command == "initialize")
	{
		initialized = true;
	}

	// Listen
	if (command == "" || command == "listen")
	{
		int total     = FAAE::ObjectsTotal(0, -1, OBJ_HLINE);
		int length    = 0;
		color clr     = clrNONE;
		int sltp      = 0;
		ulong ticket  = 0;
		double level  = 0;
		double askbid = 0;
		int polarity  = 0;
		string symbol = "";

		for (i = total - 1; i >= 0; i--)
		{
			name = FAAE::ObjectName(0, i, -1, OBJ_HLINE); // for example: #1 sl

			if (FAAE::StringSubstr(name, 0, 1) != "#")
			{
				continue;
			}

			length = StringLen(name);

			if (length < 5)
			{
				continue;
			}

			clr = (color)FAAE::ObjectGetInteger(0, name, OBJPROP_COLOR);

			if (clr != loop_color[0] && clr != loop_color[1])
			{
				continue;
			}

			string last_symbols = FAAE::StringSubstr(name, length-2, 2);

			if (last_symbols == "sl")
			{
				sltp = -1;
			}
			else if (last_symbols == "tp")
			{
				sltp = 1;
			}
			else
			{
				continue;	
			}

			ulong ticket0 = StringToInteger(FAAE::StringSubstr(name, 1, length - 4));

			// prevent loading the same ticket number twice in a row
			if (ticket0 != ticket)
			{
				ticket = ticket0;

				if (TradeSelectByTicket(ticket))
				{
					symbol     = FAAE::OrderSymbol();
					polarity   = (FAAE::OrderType() == 0) ? 1 : -1;
					askbid   = (FAAE::OrderType() == 0) ? SymbolInfoDouble(symbol, SYMBOL_BID) : SymbolInfoDouble(symbol, SYMBOL_ASK);
					
					trade_pass = true;
				}
				else
				{
					trade_pass = false;
				}
			}

			if (trade_pass)
			{
				level    = FAAE::ObjectGetDouble(0, name, OBJPROP_PRICE, 0);

				if (level > 0)
				{
					// polarize levels
					double level_p  = polarity * level;
					double askbid_p = polarity * askbid;

					if (
						   (sltp == -1 && (level_p - askbid_p) >= 0) // sl
						|| (sltp == 1 && (askbid_p - level_p) >= 0)  // tp
					)
					{
						//-- Virtual Stops SL Timeout
						if (
							   (VIRTUAL_STOPS_TIMEOUT > 0)
							&& (sltp == -1 && (level_p - askbid_p) >= 0) // sl
						)
						{
							// start timeout?
							int index = ArraySearch(mem_to_ti, ticket);

							if (index < 0)
							{
								int size = ArraySize(mem_to_ti);
								ArrayResize(mem_to_ti, size+1);
								ArrayResize(mem_to, size+1);
								mem_to_ti[size] = ticket;
								mem_to[size]    = (int)TimeLocal();

								Print(
									"#",
									ticket,
									" timeout of ",
									VIRTUAL_STOPS_TIMEOUT,
									" seconds started"
								);

								return 0;
							}
							else
							{
								if (TimeLocal() - mem_to[index] <= VIRTUAL_STOPS_TIMEOUT)
								{
									return 0;
								}
							}
						}

						if (CloseTrade(ticket))
						{
							// check this before deleting the lines
							//OnTradeListener();

							// delete objects
							FAAE::ObjectDelete(0, "#" + (string)ticket + " sl");
							FAAE::ObjectDelete(0, "#" + (string)ticket + " tp");
						}
					}
					else
					{
						if (VIRTUAL_STOPS_TIMEOUT > 0)
						{
							i = ArraySearch(mem_to_ti, ticket);

							if (i >= 0)
							{
								ArrayStripKey(mem_to_ti, i);
								ArrayStripKey(mem_to, i);
							}
						}
					}
				}
			}
			else if (
					!PendingOrderSelectByTicket(ticket)
				|| FAAE::OrderCloseTime() > 0 // in case the order has been closed
			)
			{
				FAAE::ObjectDelete(0, name);
			}
			else
			{
				PendingOrderSelectByTicket(ticket);
			}
		}
	}
	// Get SL or TP
	else if (
		ti > 0
		&& (
			   command == "get sl"
			|| command == "get tp"
		)
	)
	{
		double value = 0;

		name = "#" + IntegerToString(ti) + " " + FAAE::StringSubstr(command, 4, 2);

		if (FAAE::ObjectFind(0, name) > -1)
		{
			value = FAAE::ObjectGetDouble(0, name, OBJPROP_PRICE, 0);
		}

		return value;
	}
	// Set SL and TP
	else if (
		ti > 0
		&& (
			   command == "set"
			|| command == "modify"
			|| command == "clear"
			|| command == "partial"
		)
	)
	{
		loop_price[0] = sl;
		loop_price[1] = tp;

		for (i = 0; i < 2; i++)
		{
			name = "#" + IntegerToString(ti) + " " + loop_name[i];
			
			if (loop_price[i] > 0)
			{
				// 1) create a new line
				if (FAAE::ObjectFind(0, name) == -1)
				{
						 FAAE::ObjectCreate(0, name, OBJ_HLINE, 0, 0, loop_price[i]);
					FAAE::ObjectSetInteger(0, name, OBJPROP_WIDTH, 1);
					FAAE::ObjectSetInteger(0, name, OBJPROP_COLOR, loop_color[i]);
					FAAE::ObjectSetInteger(0, name, OBJPROP_STYLE, STYLE_DOT);
					FAAE::ObjectSetString(0, name, OBJPROP_TEXT, name + " (virtual)");
				}
				// 2) modify existing line
				else
				{
					FAAE::ObjectSetDouble(0, name, OBJPROP_PRICE, 0, loop_price[i]);
				}
			}
			else
			{
				// 3) delete existing line
				FAAE::ObjectDelete(0, name);
			}
		}

		// print message
		if (command == "set" || command == "modify")
		{
			Print(
				command,
				" #",
				IntegerToString(ti),
				": virtual sl ",
				FAAE::DoubleToStr(sl, (int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS)),
				" tp ",
				FAAE::DoubleToStr(tp,(int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS))
			);
		}

		return 1;
	}

	return 1;
}

void WaitTradeContextIfBusy()
{
	if(FAAE::IsTradeContextBusy()) {
      while(true)
      {
         Sleep(1);
         if(!FAAE::IsTradeContextBusy()) {
            FAAE::RefreshRates();
            break;
         }
      }
   }
   return;
}

double attrStopLoss()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get sl", FAAE::OrderTicket());
	}

	return FAAE::OrderStopLoss();
}

double attrTakeProfit()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get tp", FAAE::OrderTicket());
	}

   return FAAE::OrderTakeProfit();
}

long attrTicketParent(long ticket)
{
	int pos, total;
	long retval = 0;
	static long parents_idx[];
	static long parents[];

	//-- if parent ticket is known, return it ----------------------------
	int size = ArraySize(parents_idx);
	int idx  = -1;

	if (size > 0)
	{
		for (int i=size-1; i>=0; i--)
		{
			if (parents_idx[i] == ticket)
			{
				idx = i;
				break;
			}  
		}
	}

	if (idx >- 1)
	{
		retval = parents[idx];
	}
	else
	{
		if (!FAAE::OrderSelect((int)ticket,SELECT_BY_TICKET))
		{
			retval = ticket;
		}

		//-- check if trade is added to volume ----------------------------
		if (retval == 0)
		{
			string comment = FAAE::OrderComment();
			int p_pos      = StringFind(comment, "[p=");

			if (p_pos >= 0)
			{
				string p_tag = FAAE::StringSubstr(comment,p_pos);
				p_tag        = FAAE::StringSubstr(p_tag,0,StringFind(p_tag,"]")+1);
				retval       = (int)StringToInteger(FAAE::StringSubstr(p_tag,3,-1));
			}
		}

		double OP   = FAAE::OrderOpenPrice();
		datetime OT = FAAE::OrderOpenTime();
		string S    = FAAE::OrderSymbol();
		int M       = FAAE::OrderMagicNumber();
		int T       = FAAE::OrderType(); 
		double L    = FAAE::OrderLots();
		int D       = (int)FAAE::MarketInfo(S,MODE_DIGITS);

		//-- Check "from #Number" comment
		if (retval == 0)
		{
			total = FAAE::OrdersTotal();
			long ticketTmp   = ticket;

			// Now start recursive search from trade to trade to find the parent one
			while (true)
			{
				if (!FAAE::OrderSelect((int)ticketTmp, SELECT_BY_TICKET))
				{
					retval = ticket;
					break;
				}
						
				string comment = FAAE::OrderComment();

				if (FAAE::StringSubstr(comment, 0, 6) == "from #")
				{
					long ticketCurrent = (long)StringToInteger(FAAE::StringSubstr(comment, 6));
					
					if (ticketTmp == ticketCurrent)
					{
						// eventually the most parent trade has its own ticket number in "from #Number", so stop here
						break;
					}
					else
					{
						// if the ticket number in "from #Number" is different, go to load that ticket number
						ticketTmp = ticketCurrent;
						continue;
					}
				}
				else
				{
					retval = ticketTmp;
					break;
				}
			}
		}

		//-- check if trade is partially closed (in trades) ---------------
		if (retval == 0)
		{
			total = FAAE::OrdersTotal();

			for (pos=total-1; pos>=0; pos--)
			{
				if (FAAE::OrderSelect(pos,SELECT_BY_POS,MODE_TRADES))
				{
					if (FAAE::OrderOpenTime() < OT)
					{
						break;
					}

					if (
						FAAE::OrderTicket() < ticket
						&& (FAAE::OrderSymbol() == S)
						&& (FAAE::OrderMagicNumber() == M)
						&& (FAAE::OrderType() == T)
						&& (NormalizeDouble(FAAE::OrderOpenPrice(),D) == NormalizeDouble(OP,D))
						&& (FAAE::OrderOpenTime() == OT)
					)
					{
					
						retval = FAAE::OrderTicket();
					}
				}
			}
		}

		//-- still nothing found - search in history trades now -----------
		if (retval == 0)
		{
			total = FAAE::OrdersHistoryTotal();

			for (pos=total-1; pos>=0; pos--)
			{
				if (FAAE::OrderSelect(pos,SELECT_BY_POS,MODE_HISTORY))
				{
					if (FAAE::OrderOpenTime() < OT)
					{
						break;
					}

					if (
						FAAE::OrderTicket() < ticket
						&& (FAAE::OrderSymbol() == S)
						&& (FAAE::OrderMagicNumber() == M)
						&& (FAAE::OrderType() == T)
						&& (NormalizeDouble(FAAE::OrderOpenPrice(),D) == NormalizeDouble(OP,D))
						&& (FAAE::OrderOpenTime() == OT)
					)
					{
						retval = FAAE::OrderTicket();
					}
				}
			}
		}

		if (retval > 0)
		{
			size=ArraySize(parents_idx);
			ArrayResize(parents_idx,size+1);
			ArrayResize(parents,size+1);
			parents_idx[size] = ticket;
			parents[size]     = retval;
		}
	}

	if (!FAAE::OrderSelect((int)ticket,SELECT_BY_TICKET))
	{
		retval = ticket;
	}

	if (retval <= 0)
	{
		retval = ticket;
	}

	return retval;
}

template<typename DT1, typename DT2>
bool compare(string sign, DT1 v1, DT2 v2)
{
	     if (sign == ">") return(v1 > v2);
	else if (sign == "<") return(v1 < v2);
	else if (sign == ">=") return(v1 >= v2);
	else if (sign == "<=") return(v1 <= v2);
	else if (sign == "==") return(v1 == v2);
	else if (sign == "!=") return(v1 != v2);
	else if (sign == "x>") return(v1 > v2);
	else if (sign == "x<") return(v1 < v2);

	return false;
}

string e_Reason() {return onTradeEventDetector.EventValueReason();}

string e_ReasonDetail() {return onTradeEventDetector.EventValueDetail();}

double e_attrClosePrice() {return onTradeEventDetector.EventValuePriceClose();}

datetime e_attrCloseTime() {return onTradeEventDetector.EventValueTimeClose();}

string e_attrComment() {return onTradeEventDetector.EventValueComment();}

datetime e_attrExpiration() {return onTradeEventDetector.EventValueTimeExpiration();}

double e_attrLots() {return onTradeEventDetector.EventValueVolume();}

int e_attrMagicNumber() {return (int)onTradeEventDetector.EventValueMagic();}

double e_attrOpenPrice() {return onTradeEventDetector.EventValuePriceOpen();}

datetime e_attrOpenTime() {return onTradeEventDetector.EventValueTimeOpen();}

double e_attrProfit() {return onTradeEventDetector.EventValueProfit();}

double e_attrStopLoss() {return onTradeEventDetector.EventValueStopLoss();}

double e_attrSwap() {return onTradeEventDetector.EventValueSwap();}

string e_attrSymbol() {return onTradeEventDetector.EventValueSymbol();}

double e_attrTakeProfit() {return onTradeEventDetector.EventValueTakeProfit();}

int e_attrTicket() {return (int)onTradeEventDetector.EventValueTicket();}

int e_attrType() {return onTradeEventDetector.EventValueType();}

template<typename DT1, typename DT2>
double formula(string sign, DT1 v1, DT2 v2)
{
	     if (sign == "+") return(v1 + v2);
	else if (sign == "-") return(v1 - v2);
	else if (sign == "*") return(v1 * v2);
	else if (sign == "/") return(v1 / v2);

	return false;
}

string formula(string sign, string v1, string v2)
{
	if (sign == "+") return(v1 + v2);
	else {
		double _v1 = StringToDouble(v1);
		double _v2 = StringToDouble(v2);
		
		     if (sign == "-") return DoubleToString(_v1 - _v2);
		else if (sign == "*") return DoubleToString(_v1 * _v2);
		else if (sign == "/") return DoubleToString(_v1 / _v2);
	}

	return v1 + v2;
}

double formula(string sign, string v1, double v2)
{
	     if (sign == "+") return StringToDouble(v1) + v2;
	else if (sign == "-") return StringToDouble(v1) - v2;
	else if (sign == "*") return StringToDouble(v1) * v2;
	else if (sign == "/") return StringToDouble(v1) / v2;

	return StringToDouble(v1) + v2;
}

double formula(string sign, double v1, string v2)
{
	if (sign == "+") return (v1 + StringToDouble(v2));
	else if (sign == "-") return v1 - StringToDouble(v2);
	else if (sign == "*") return v1 * StringToDouble(v2);
	else if (sign == "/") return v1 / StringToDouble(v2);

	return v1 + StringToDouble(v2);
}

double toDigits(double pips, string symbol)
{
	if (symbol == "") symbol = Symbol();

	int digits   = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
	double point = SymbolInfoDouble(symbol, SYMBOL_POINT);

	return NormalizeDouble(pips * PipValue(symbol) * point, digits);
}

double toPips(double digits, string symbol)
{
	if (symbol == "") symbol = Symbol();

   return digits / (PipValue(symbol) * SymbolInfoDouble(symbol, SYMBOL_POINT));
}






class FxdWaiting
{
	private:
		int beginning_id;
		ushort bank  [][2][20]; // 2 banks, 20 possible parallel waiting blocks per chain of blocks
		ushort state [][2];     // second dimention values: 0 - count of the blocks put on hold, 1 - current bank id

	public:
		void Initialize(int count)
		{
			ArrayResize(bank, count);
			ArrayResize(state, count);
		}

		bool Run(int id = 0)
		{
			beginning_id = id;

			int range = ArrayRange(state, 0);
			if (range < id+1) {
				ArrayResize(bank, id+1);
				ArrayResize(state, id+1);

				// set values to 0, otherwise they have random values
				for (int ii = range; ii < id+1; ii++)
				{
				   state[ii][0] = 0;
				   state[ii][1] = 0;
				}
			}

			// are there blocks put on hold?
			int count = state[id][0];
			int bank_id = state[id][1];

			// if no block are put on hold -> escape
			if (count == 0) {return false;}
			else
			{
				state[id][0] = 0; // null the count
				state[id][1] = (bank_id) ? 0 : 1; // switch to the other bank
			}

			//== now we will run the blocks put on hold

			for (int i = 0; i < count; i++)
			{
				int block_to_run = bank[id][bank_id][i];
				_blocks_[block_to_run].run();
			}

			return true;
		}

		void Accumulate(int block_id = 0)
		{
			int count   = ++state[beginning_id][0];
			int bank_id = state[beginning_id][1];

			bank[beginning_id][bank_id][count-1] = (ushort)block_id;
		}
};
FxdWaiting fxdWait;



//+------------------------------------------------------------------+
//| END                                                              |
//| Created with fxDreema EA Builder           https://fxdreema.com/ |
//+------------------------------------------------------------------+

/*<fxdreema:eNrtHWtP5Ejur7RYnTQrDXN59gvtSTx30MHAAbOjuy9ROl0NtaSTbFINw674XfcD7o+dXY+kkk6gG8IMaMIXumOXy+WyXbarUu2PB+O/srFpjjeCOIpIwGgcZRtb/th0xn/RsQGfbMRwxxszSsLpxlYGTTb29g+2Px9d4Lf+eCOLF2lA8AvQMeVD5qeXhMmH1sbWPR2b61Oz6qjZnJpVRw1QDz/9tn9WS8yuI+ZwYvb6rNVSczk1Z31qbh21Pqfmrk9tUEdtyKn116c2rKM24tQG61MbLVGzQGtMTm649pzWUxP6NlqTOclHDT2hcabxBIJOLUGhJ6b5BIJuLUGhKqb1BIKDWoJCW0z7CQSHtQRRYe7580kYB9fCywzRy6AULBM7GXI/xNI4FGADH45g/qMpDXwWp/jUwodAkXJeLPykwJlHz1kcXPkZowFCawkC+/9MSEpjTsCEr24wHl97YRwRrwDgKMtoNqDteSGtop2H8S2NLnU0+ci78cMFkZwcb88JuxKt8OvJ3r53frzNmxnjjdOUBuRAyRh98vnFiXd08uXj4a8f8ZEDbeKp0nxDSvn8bj6JQ/wCNOSz04JtaHS6f3Z4suftfj472//Epwwm8/yKzpjWCjnYPQGM3YvDk085AKfMBBHv+tE0JFneSnl6085hRaeWIUT6Mb71jv3ozpMYvAGwt/81IAkuNfpzOSJk+HMC4j0iNyRU4+Xa95VMFacFhurPNqBD/tjjz72dxZ2S41RHryoQIvBZKs2VrjWW1P/fFBzaDozHhAbjOIpvHxlHgcGfgKqbMAz+tGYYOnY7w7AfHsY9tz4k4oPSp1IJL2hwLelPaeZPQhzPBIIFbgzkKyOpCCLA2u51FqXOAEmaecEiY/FcNRwqtyAcBvqUu4yRuexnDvILPWnxpuYQvlB2RaMjOqcsU/aX+KkPlkbAHQRxnE6zsnEkFCKdnGMQSBb4IZHAKE7nfqiEkhGkhY6Few/hrNRAhDPLmM8WJfnGUTybbWxRTh7ENfWZX8iUozDKRI+2q42lN49vSNa75UPqhXxMvXegAD9L5oAul4/sC2iHBM0RljrsC0yRxQl+NQ0DewKEW58yNdQRakhKccK06QGBxQuWLFimE6bwDNuZYgxEfuVkoZ8g49h8ZUCLnvjB9WUaL6LpZhCHcSod408HB3tO35Kan0NAfj8pnZ2Bcm3eEnp5xXQhofko5fVApVK/4Bj90QTmlaSbGbsTghTtRFRYu5ZwVp/oLrHDUz/Ljv2vF3Se+yuhA+0aiNWCgaDmnkQBgWHt+OlLW4UYw7MtAWWMTPfAU/cmgu0HVd50Kzrvuq9D5ycGsYb2N9R5u0nnHblCHMU164WLBOOQ+JEn/zetGTConQID3S9LFwTWKVzVvO0Fi72jWLrf5gVxgJTnoDlq7fnlF/nhLG5lOctDkgcWZfgUpHGW3dIpuyqZ8UPCb9fE7RZMHJrvxrBuYBD1VgwchnDyafPk4KD3DnWmhzrz+Mpm2mUztwz31Sxtu9ujp5h5jSkP0aaoH13iV1lBqDVp15Gi/xVYSsozvLS04Vz+FoeLOWmKPwX0nP5J1BPjg4hApT07Os4Zza6lzbpGmYQCgQCtD67KDAQM1qGAREyCITZR6iDAO6jzGo4yER7y6gy24CNsPsDHvARQOUApnflgX58jypSAHGxumMp/Fkh7JBSaD8xZhlrP5vOL1J9CZhSLaclzHBdhx5eHQJr6oRK2xtxQIBwvQkaT8O4kOoqzTA8RMOUpY5ym8YyWc7OBwNmeTrGLEhFD5RslhBKNEqtnBOyzhsKgBG7iwbStfvNgbYVyBqlNmuWK6ofis6BxQCdxIw2LS3sPHNp8QlL2iGBzvIYOLc7RkT+JF8EVSUkzuX4Z8YhmTGmm+d56b7933rvv+4WsC9SmsfKuz8kfO35Gajo0JbiYCmhtQ1f9UuvaqbAksKnrvrJIkS5j/qE7E2h+Dk4Y+1XuxMGV
IyJV8ClNspKfQG3NgcLSebUjtynXVRNdQbs4rbgNoDQNFdK3jBumSau9lof0UL/TVvvVXdjD1YsL/5oILaqb7hLC8oRbJfADUz6qQTw/qkjIwkkv0L7ZtGO/Scv9rjbx2PO05Z5Xm/oB1ucSNeXA7a8XuzLmged7/p0eVw75w4/xIs2qMkUiNFowouNjjAiAmuEYajgMMuy60ahoCDm7kDj5MmRgRA5xgr41YMhAmQOYP0+kwzOMcaFWCBRVyMO96ggQduyn16TkBkd6I/w0w7C7uihyFEh3wFwi9m8i8llFYliBH8M4r3SEfgUBpK6Dq/RR/trWh8Zk3gOfieraX0I5JyDuaQnFLqStF36t3AEoAA5Qn2aMGnIgH10Jqjf9Qsh1CWhrQKVt+azoLXOtq0hNdLqkeiWwGGwt+JomyNNUdu2IbFfYxhBr/TRJ/EtSbB9yJTu+A0HOVQSLaeZ4vL/tfVKqAaPaTtP4dhcTBVnTxYw4THe4dbaeZTotZJkAA1Y/xbcvnWK65coqlvGKz7b22dE+u61WYnGGYLC9KL7tvYPA/vHM1LLcUmZqm21lpkY5MzXXzEwNY2gID6dnpgiZ8b+G/NTBtBQ3n55QioJRpiRgRQLrPliHbahJYdTgBwGMiHnb4v+OH/pRULcgcOIr15tguH9vudw04gs5/oGtr1YFa5SsJavT/vT3RcbKVpWSDJK8nEuRnIt9oda9htuC14A+DsDWF6H/VipTo5zjtUpTg0plqm+8jP2vW5mazYbDZft/YmVKFZn736cixWNWs6T0XVWqq0p1VamuKtVVpbqqVFeV6qpSXVWqq0p1Vam3UZXqd1Wp9VJTR6tKYWr6eFY6NLqqVFNVatCdNO9Omj/rpLnF46TKUfNzEoZv7aw5HuMbGJXD5qWBvP3T5oPutHn5tHn/0dPmqAGPrzGO4XbnzfM31t7yefNhd958xfPmTr87b76Rv1fZnTd/M+fNR9158zU29RynsqtnGj/AeXPT7PbrX2C/3ir260Vo3a5x5y+sdzv2qxm3PfyRtuxNq3uLpNuv7/bru/36br++26/v9uu7/fpuv77br+/269/ufr2j79erzZo+37A/I9OXSC+tdtJL5PUV7tgbL7Njj6Nd40US13mlW/azmfHdt+xN+/sksW7p4Hm+Mdplsl0m22WyXSbbZbJdJttlsl0m22WyXSbbZbJvIZO1u0x2zUzW1TPZ1Q6f2yO3S2UbU9nmW/3k6XOeyWoJ6qXKbGuyXNQZkeaqBlxzVd5bmwSb/G2C7IRbnDLnyQItu32Da+MGEpT54ewkIWBFJyjeFz92a69meG2Vig5nPYY58Yr3PA8qFz2PXsnhpO3R7ujg4BueQTQbLxgx7e9vTGJc+35wVU4YtKYI3C2dd/pH/tJC3m57jmeqtJaYOFbBWrJhGsUrHnq/QzSIJNvMFnM5Y3VdW6pZ0W0e+vTLsLxPS968vxvGGfEEipdwaPsepY3bSfgrJlckuP6sVQS+gz8x2vcnliuH1kv40HrvFlFK/JD+SaYruJal880/rG9pvOtk+CpcC55cR86XY/qGeBxZKKJt1QOE2nuEJKc0un4JY23jVU9kk3sWEQG85qDbaCkmGMoRi7Bg1d9/GAzcyqll93UcbHT6Q2virB13axP1HEMe/FAB96ALuB/PaIuAe7VX3UbViNv9UVfF4SuMuFHP1Ocu5H4BnzLsQu6XC7lHrtuF3MK5jF5fyF3yLW8j5h51MfcT3yYqx9wrhgbVC0C7oFtuCoHAGI0uxdgGil0/YPSGeE0Kj0TBi/5OAuZFcp/IGvC7SdQtBeLmhV7+xle1GbtLlM6RrwlJmdpBC/DN4dCPLhfSTPGGk38dOfm5Kp8BY+C5xaag5eCxJcvaNKxNy7ow+mNnODZGH/ru6D+lJmA4dHa3apO5f0kDD5RVMOaKFxJN9ZbzDc0oaIkX0knqp3de7uJK5oraqjC5TTfhoWLSOUm9rNjcA1n1DcVO
EtOIeelCKqatfvFZaeMsRQcyHRsfgEnRmMXygal+0LkOeRndEA2sxgb1Le6F71lAnHNDU7bwQ5BenMdeUVyIToPyLXNuOsL8UWJIgoAwLkkU3NUQQZwK3EtJWN0hrqL40/IOMXwgNyRiGWqGUjSmFHyUQ4O7ICyu9pEOEMER+gkvS0AVpx73t9U7cBSKdHkFEANDWJoYzvhVfOsVdxVVD6Bdpn5y5cUpBV78/JVuwLiIk4t4J2Z85RDFCGVaYE80zZGl4+fLV3KXlsIAaR4kC1KaVBqg9+RrX/4E2MHTVzpavi7CGCPhIE1XXgyQ7yEXtw3kW7Pa/vJQeHzNH2QsVRcnNXLnyjMX2tmr3hfd8+SOsXoTQZWbOpwlrhxxI8LqPBWn04SIHmCgDF3q2sarrFhDz5gm88bcx3rv/vffn6ucDPJ3qTfkklfPRg6om5JpvJjIFXil4atjf9Ir1OQ/S9NQj7aeOGo4kXcZ6cpQujisQRk0nFZUlB81Zz39IrJ74SQqV4wtcbSMsqaKQNd/W6JQYo5fJi/ZqVxlVsfO0m1na7OzRKHCjp2zU7kyrY6dulvVnqMxRf/yyJYnHIunHMsSEw14rfk2UJwa3wbUlu9SW+KtFqsNGUmVceW9a/pvYC8xUYfUpmW78sq0x5io+bXu5wvCzKdj+aK5uumou47umVyog5mSj+V74ur4qLtN7vlTgjfgyevhSrmUJQsGxY8DVHkqAdtYhPK0cyQp18uiDG2xY5G7+hAfKgmIOHxYnorip9ab0q0ib3XsrcrtbqJreWkRHfcdR/B8JXNFyMzt0VYli8ZbwBIS9XidpMlRw6M9/ZFMCpa4t1bn3ihzP7Cr7Dv2EvuWbW0t3wcmigBakXKVAdyXY1gsWtz/H9shgWM=
:fxdreema>*/

//== fxDreema MQL4 to MQL5 Converter ==//

//-- Global Variables
int FXD_SELECTED_TYPE = 0;// Indicates what is selected by OrderSelect, 1 for trade, 2 for pending order, 3 for history trade
ulong FXD_SELECTED_TICKET = 0;// The ticket number selected by OrderSelect
int FXD_INDICATOR_COUNTED_MEMORY = 0;// Used as a memory for IndicatorCounted() function. It needs to be outside of the function, because when OnCalculate needs to be reset, this memory must be reset as well.

// Set the missing predefined variables, which are controlled by RefreshRates
int Bars     = Bars(_Symbol, PERIOD_CURRENT);
int Digits   = _Digits;
double Point = _Point;
double Ask, Bid, Close[], High[], Low[], Open[];
long Volume[];
datetime Time[];

void OnTick()
{
	FAAE::RefreshRates();
	__OnTick__();
}



class FAAE
{
private:
	/**
	* _LastError is used to set custom errors that could be returned by the custom GetLastError method
	* The initial value should be -1 and everything >= 0 should be valid error code
	* When setting an error code in it, it should be the MQL5 value,
	* because then in GetLastError it will be converted to MQL4 value
	*/
	static int _LastError;
public:
	FAAE() {
		
	};
	
	static double AccountBalance() {
		return ::AccountInfoDouble(ACCOUNT_BALANCE);
	}
	
	static double AccountEquity() {
		return ::AccountInfoDouble(ACCOUNT_EQUITY);
	}
	
	static double AccountFreeMargin() {
		return ::AccountInfoDouble(ACCOUNT_MARGIN_FREE);
	}
	
	/**
	* Both arrays can be different data type
	* Otherwise the same situation as for ArrayCompare
	*/
	template <typename T1, typename T2>
	static int ArrayCopy(T1 &dst_array[], const T2 &src_array[], int dst_start = 0, int src_start = 0, int count = WHOLE_ARRAY) {
		return ::ArrayCopy(dst_array, src_array, dst_start, src_start, ((count <= 0) ? WHOLE_ARRAY : count));
	}
	template <typename T1, typename T2>
	static int ArrayCopy(T1 &dst_array[][], const T2 &src_array[][], int dst_start = 0, int src_start = 0, int count = WHOLE_ARRAY) {
		return ::ArrayCopy(dst_array, src_array, dst_start, src_start, ((count <= 0) ? WHOLE_ARRAY : count));
	}
	template <typename T1, typename T2>
	static int ArrayCopy(T1 &dst_array[][][], const T2 &src_array[][][], int dst_start = 0, int src_start = 0, int count = WHOLE_ARRAY) {
		return ::ArrayCopy(dst_array, src_array, dst_start, src_start, ((count <= 0) ? WHOLE_ARRAY : count));
	}
	template <typename T1, typename T2>
	static int ArrayCopy(T1 &dst_array[][][][], const T2 &src_array[][][][], int dst_start = 0, int src_start = 0, int count = WHOLE_ARRAY) {
		return ::ArrayCopy(dst_array, src_array, dst_start, src_start, ((count <= 0) ? WHOLE_ARRAY : count));
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyTime(const string symbol_name, int timeframe, int start_pos, int count, datetime &time_array[]) {
		return ::CopyTime(symbol_name, FAAE::_ConvertTimeframe_(timeframe), start_pos, count, time_array);
	}
	static int CopyTime(const string symbol_name, int timeframe, datetime start_time, int count, datetime &time_array[]) {
		return ::CopyTime(symbol_name, FAAE::_ConvertTimeframe_(timeframe), start_time, count, time_array);
	}
	static int CopyTime(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, datetime &time_array[]) {
		return ::CopyTime(symbol_name, FAAE::_ConvertTimeframe_(timeframe), start_time, stop_time, time_array);
	}
	
	static string DoubleToStr(double value, int digits = 8) {
		return ::DoubleToString(value, digits);
	}
	
	/**
	* In MQL4's documentation errors are also shown as numeric values and sometimes people use these numbers, because they are shorter to write.
	* This means that GetLastError shoud return such MQL4 numeric values instead of the MQL5 values.
	* Supports custom error codes that can be set with FAAE -> _LastError
	*/
	static int GetLastError() {
		int errorCode = 0;
	
		if (FAAE::_LastError >= 0) {
			errorCode = FAAE::_LastError;
			FAAE::_LastError = -1;
		}
		else {
			errorCode = ::GetLastError();
		}
	
		switch (errorCode) {
			//--- errors returned from trade server
			case ERR_SUCCESS                       : return 0; /* ERR_NO_ERROR */
			//case ERR_NO_RESULT                   : return 1; /* ERR_NO_RESULT */
			//case ERR_COMMON_ERROR                : return 2; /* ERR_COMMON_ERROR */
			case TRADE_RETCODE_INVALID             : return 3; /* ERR_INVALID_TRADE_PARAMETERS */
			case ERR_TRADE_SEND_FAILED             : return 4; /* ERR_SERVER_BUSY */
			//case ERR_OLD_VERSION                 : return 5; /* ERR_OLD_VERSION */
			case TRADE_RETCODE_CONNECTION          : return 6; /* ERR_NO_CONNECTION */
			case TRADE_RETCODE_REJECT              : return 7; /* ERR_NOT_ENOUGH_RIGHTS */
			//case TRADE_RETCODE_TOO_MANY_REQUESTS : return 8; /* ERR_TOO_FREQUENT_REQUESTS */
			case TRADE_RETCODE_ERROR               : return 9; /* ERR_MALFUNCTIONAL_TRADE */
			//case ERR_ACCOUNT_DISABLED            : return 64; /* ERR_ACCOUNT_DISABLED */
			//case ERR_INVALID_ACCOUNT             : return 65; /* ERR_INVALID_ACCOUNT */
			case TRADE_RETCODE_TIMEOUT             : return 128; /* ERR_TRADE_TIMEOUT */
			case TRADE_RETCODE_INVALID_PRICE       : return 129; /* ERR_INVALID_PRICE */
			case TRADE_RETCODE_INVALID_STOPS       : return 130; /* ERR_INVALID_STOPS */
			case TRADE_RETCODE_INVALID_VOLUME      : return 131; /* ERR_INVALID_TRADE_VOLUME */
			case TRADE_RETCODE_MARKET_CLOSED       : return 132; /* ERR_MARKET_CLOSED */
			case TRADE_RETCODE_TRADE_DISABLED      : return 133; /* ERR_TRADE_DISABLED */
			case TRADE_RETCODE_NO_MONEY            : return 134; /* ERR_NOT_ENOUGH_MONEY */
			case TRADE_RETCODE_PRICE_CHANGED       : return 135; /* ERR_PRICE_CHANGED */
			case TRADE_RETCODE_PRICE_OFF           : return 136; /* ERR_OFF_QUOTES */
			//case ERR_TRADE_SEND_FAILED           : return 137; /* ERR_BROKER_BUSY */
			case TRADE_RETCODE_REQUOTE             : return 138; /* ERR_REQUOTE */
			case TRADE_RETCODE_LOCKED              : return 139; /* ERR_ORDER_LOCKED */
			//case TRADE_RETCODE_LONG_ONLY         : return 140; /* ERR_LONG_POSITIONS_ONLY_ALLOWED */
			case TRADE_RETCODE_TOO_MANY_REQUESTS   : return 141; /* ERR_TOO_MANY_REQUESTS */
			//case ERR_TRADE_MODIFY_DENIED         : return 145; /* ERR_TRADE_MODIFY_DENIED */
			//case ERR_TRADE_CONTEXT_BUSY          : return 146; /* ERR_TRADE_CONTEXT_BUSY */
			case TRADE_RETCODE_INVALID_EXPIRATION  : return 147; /* ERR_TRADE_EXPIRATION_DENIED */
			case TRADE_RETCODE_LIMIT_ORDERS        : return 148; /* ERR_TRADE_TOO_MANY_ORDERS */
			// TRADE_RETCODE_HEDGE_PROHIBITED is listed in MQL5's documentation as a value, but it's not defined as a constant
			case 10046                             : return 149; /* ERR_TRADE_HEDGE_PROHIBITED */
			case TRADE_RETCODE_FIFO_CLOSE          : return 150; /* ERR_TRADE_PROHIBITED_BY_FIFO */
	
			//--- mql4 run time errors
			//case ERR_NO_MQLERROR                 : return 4000; /* ERR_NO_MQLERROR */
			case ERR_INVALID_POINTER_TYPE          : return 4001; /* ERR_WRONG_FUNCTION_POINTER */
			case ERR_SMALL_ARRAY                   : return 4002; /* ERR_ARRAY_INDEX_OUT_OF_RANGE */
			//case ERR_NOT_ENOUGH_MEMORY           : return 4003; /* ERR_NO_MEMORY_FOR_CALL_STACK */
			case ERR_MATH_OVERFLOW                 : return 4004; /* ERR_RECURSIVE_STACK_OVERFLOW */
			//case ERR_NOT_ENOUGH_STACK_FOR_PARAM  : return 4005; /* ERR_NOT_ENOUGH_STACK_FOR_PARAM */
			case ERR_STRING_OUT_OF_MEMORY          : return 4006; /* ERR_NO_MEMORY_FOR_PARAM_STRING */
			//case ERR_NO_MEMORY_FOR_TEMP_STRING   : return 4007; /* ERR_NO_MEMORY_FOR_TEMP_STRING */
			case ERR_NOTINITIALIZED_STRING         : return 4008; /* ERR_NOT_INITIALIZED_STRING */
			//case ERR_NOT_INITIALIZED_ARRAYSTRING : return 4009; /* ERR_NOT_INITIALIZED_ARRAYSTRING */
			//case ERR_NO_MEMORY_FOR_ARRAYSTRING   : return 4010; /* ERR_NO_MEMORY_FOR_ARRAYSTRING */
			case ERR_STRING_TOO_BIGNUMBER          : return 4011; /* ERR_TOO_LONG_STRING */
			//case ERR_REMAINDER_FROM_ZERO_DIVIDE  : return 4012; /* ERR_REMAINDER_FROM_ZERO_DIVIDE */
			//case ERR_ZERO_DIVIDE                 : return 4013; /* ERR_ZERO_DIVIDE */
			//case ERR_UNKNOWN_COMMAND             : return 4014; /* ERR_UNKNOWN_COMMAND */
			//case ERR_WRONG_JUMP                  : return 4015; /* ERR_WRONG_JUMP */
			case ERR_ZEROSIZE_ARRAY                : return 4016; /* ERR_NOT_INITIALIZED_ARRAY */
			//case ERR_DLL_CALLS_NOT_ALLOWED       : return 4017; /* ERR_DLL_CALLS_NOT_ALLOWED */
			//case ERR_CANNOT_LOAD_LIBRARY         : return 4018; /* ERR_CANNOT_LOAD_LIBRARY */
			//case ERR_CANNOT_CALL_FUNCTION        : return 4019; /* ERR_CANNOT_CALL_FUNCTION */
			//case ERR_EXTERNAL_CALLS_NOT_ALLOWED  : return 4020; /* ERR_EXTERNAL_CALLS_NOT_ALLOWED */
			//case ERR_NO_MEMORY_FOR_RETURNED_STR  : return 4021; /* ERR_NO_MEMORY_FOR_RETURNED_STR */
			//case ERR_SYSTEM_BUSY                 : return 4022; /* ERR_SYSTEM_BUSY */
			//case ERR_DLLFUNC_CRITICALERROR       : return 4023; /* ERR_DLLFUNC_CRITICALERROR */
			case ERR_INTERNAL_ERROR                : return 4024; /* ERR_INTERNAL_ERROR */
			case ERR_NOT_ENOUGH_MEMORY             : return 4025; /* ERR_OUT_OF_MEMORY */
			case ERR_INVALID_POINTER               : return 4026; /* ERR_INVALID_POINTER */
			case ERR_TOO_MANY_FORMATTERS           : return 4027; /* ERR_FORMAT_TOO_MANY_FORMATTERS */
			case ERR_TOO_MANY_PARAMETERS           : return 4028; /* ERR_FORMAT_TOO_MANY_PARAMETERS */
			case ERR_INVALID_ARRAY                 : return 4029; /* ERR_ARRAY_INVALID */
			case ERR_CHART_NO_REPLY                : return 4030; /* ERR_CHART_NOREPLY */
			//case ERR_INVALID_FUNCTION_PARAMSCNT  : return 4050; /* ERR_INVALID_FUNCTION_PARAMSCNT */
			//case ERR_INVALID_FUNCTION_PARAMVALUE : return 4051; /* ERR_INVALID_FUNCTION_PARAMVALUE */
			case ERR_WRONG_INTERNAL_PARAMETER      : return 4052; /* ERR_STRING_FUNCTION_INTERNAL */
			//case ERR_SOME_ARRAY_ERROR            : return 4053; /* ERR_SOME_ARRAY_ERROR */
			case ERR_SERIES_ARRAY                  : return 4054; /* ERR_INCORRECT_SERIESARRAY_USING */
			//case ERR_CUSTOM_INDICATOR_ERROR      : return 4055; /* ERR_CUSTOM_INDICATOR_ERROR */
			case ERR_INCOMPATIBLE_ARRAYS           : return 4056; /* ERR_INCOMPATIBLE_ARRAYS */
			case ERR_GLOBALVARIABLE_EXISTS         :
			case ERR_GLOBALVARIABLE_NOT_MODIFIED   :
			case ERR_GLOBALVARIABLE_CANNOTREAD     :
			case ERR_GLOBALVARIABLE_CANNOTWRITE    : return 4057; /* ERR_GLOBAL_VARIABLES_PROCESSING */
			case ERR_GLOBALVARIABLE_NOT_FOUND      : return 4058; /* ERR_GLOBAL_VARIABLE_NOT_FOUND */
			//case ERR_FUNC_NOT_ALLOWED_IN_TESTING : return 4059; /* ERR_FUNC_NOT_ALLOWED_IN_TESTING */
			case ERR_FUNCTION_NOT_ALLOWED          : return 4060; /* ERR_FUNCTION_NOT_CONFIRMED */
			case ERR_MAIL_SEND_FAILED              : return 4061; /* ERR_SEND_MAIL_ERROR */
			//case ERR_STRING_PARAMETER_EXPECTED   : return 4062; /* ERR_STRING_PARAMETER_EXPECTED */
			//case ERR_INTEGER_PARAMETER_EXPECTED  : return 4063; /* ERR_INTEGER_PARAMETER_EXPECTED */
			//case ERR_DOUBLE_PARAMETER_EXPECTED   : return 4064; /* ERR_DOUBLE_PARAMETER_EXPECTED */
			//case ERR_ARRAY_AS_PARAMETER_EXPECTED : return 4065; /* ERR_ARRAY_AS_PARAMETER_EXPECTED */
			//case ERR_HISTORY_WILL_UPDATED        : return 4066; /* ERR_HISTORY_WILL_UPDATED */
			//case ERR_TRADE_ERROR                 : return 4067; /* ERR_TRADE_ERROR */
			case ERR_RESOURCE_NOT_FOUND            : return 4068; /* ERR_RESOURCE_NOT_FOUND */
			case ERR_RESOURCE_UNSUPPOTED_TYPE      : return 4069; /* ERR_RESOURCE_NOT_SUPPORTED */
			case ERR_RESOURCE_NAME_DUPLICATED      : return 4070; /* ERR_RESOURCE_DUPLICATED */
			case ERR_INDICATOR_CANNOT_CREATE       : return 4071; /* ERR_INDICATOR_CANNOT_INIT */
			case ERR_INDICATOR_CANNOT_ADD          :
			case ERR_CHART_INDICATOR_CANNOT_ADD    : return 4072; /* ERR_INDICATOR_CANNOT_LOAD */
			case ERR_HISTORY_NOT_FOUND             : return 4073; /* ERR_NO_HISTORY_DATA */
			case ERR_HISTORY_LOAD_ERRORS           : return 4074; /* ERR_NO_MEMORY_FOR_HISTORY */
			case ERR_BUFFERS_NO_MEMORY             : return 4075; /* ERR_NO_MEMORY_FOR_INDICATOR */
			case ERR_FILE_ENDOFFILE                : return 4099; /* ERR_END_OF_FILE */
			// The file errors below have duplicate errors below around code 5010
			//case ERR_SOME_FILE_ERROR             : return 4100; /* ERR_SOME_FILE_ERROR */
			//case ERR_WRONG_FILENAME              : return 4101; /* ERR_WRONG_FILE_NAME */
			//case ERR_TOO_MANY_FILES              : return 4102; /* ERR_TOO_MANY_OPENED_FILES */
			//case ERR_CANNOT_OPEN_FILE            : return 4103; /* ERR_CANNOT_OPEN_FILE */
			//case ERR_INCOMPATIBLE_FILE           : return 4104; /* ERR_INCOMPATIBLE_FILEACCESS */
			case ERR_TRADE_POSITION_NOT_FOUND      :
			case ERR_TRADE_ORDER_NOT_FOUND         :
			case ERR_TRADE_DEAL_NOT_FOUND          : return 4105; /* ERR_NO_ORDER_SELECTED */
			case ERR_MARKET_UNKNOWN_SYMBOL         :
			case ERR_INDICATOR_UNKNOWN_SYMBOL      : return 4106; /* ERR_UNKNOWN_SYMBOL */
			//case ERR_INVALID_PRICE_PARAM         : return 4107; /* ERR_INVALID_PRICE_PARAM */
			//case ERR_INVALID_TICKET              : return 4108; /* ERR_INVALID_TICKET */
			case ERR_TRADE_DISABLED                :
			case TRADE_RETCODE_CLIENT_DISABLES_AT  : return 4109; /* ERR_TRADE_NOT_ALLOWED */
			case TRADE_RETCODE_SHORT_ONLY          : return 4110; /* ERR_LONGS_NOT_ALLOWED */
			case TRADE_RETCODE_LONG_ONLY           : return 4111; /* ERR_SHORTS_NOT_ALLOWED */
			case TRADE_RETCODE_SERVER_DISABLES_AT  : return 4112; /* ERR_TRADE_EXPERT_DISABLED_BY_SERVER */
			//case ERR_OBJECT_ALREADY_EXISTS       : return 4200; /* ERR_OBJECT_ALREADY_EXISTS */ // MQL5 doesn't give error when an object with the same name is created
			case ERR_OBJECT_WRONG_PROPERTY         : return 4201; /* ERR_UNKNOWN_OBJECT_PROPERTY */
			case ERR_OBJECT_NOT_FOUND              : return 4202; /* ERR_OBJECT_DOES_NOT_EXIST */
			//case ERR_INVALID_PARAMETER           : return 4203; /* ERR_UNKNOWN_OBJECT_TYPE */ // Value found after testing
			//case ERR_WRONG_STRING_PARAMETER      : return 4204; /* ERR_NO_OBJECT_NAME */ // Value found after testing
			//case ERR_OBJECT_COORDINATES_ERROR    : return 4205; /* ERR_OBJECT_COORDINATES_ERROR */
			//case ERR_INVALID_PARAMETER           : return 4206; /* ERR_NO_SPECIFIED_SUBWINDOW */ // Value found after testing
			case ERR_OBJECT_ERROR                  : return 4207; /* ERR_SOME_OBJECT_ERROR */
			case ERR_CHART_WRONG_PROPERTY          : return 4210; /* ERR_CHART_PROP_INVALID */
			case ERR_CHART_NOT_FOUND               : return 4211; /* ERR_CHART_NOT_FOUND */
			case ERR_CHART_WINDOW_NOT_FOUND        : return 4212; /* ERR_CHARTWINDOW_NOT_FOUND */
			case ERR_CHART_INDICATOR_NOT_FOUND     : return 4213; /* ERR_CHARTINDICATOR_NOT_FOUND */
			case ERR_MARKET_NOT_SELECTED           : return 4220; /* ERR_SYMBOL_SELECT */
			case ERR_NOTIFICATION_SEND_FAILED      : return 4250; /* ERR_NOTIFICATION_ERROR */
			case ERR_NOTIFICATION_WRONG_PARAMETER  : return 4251; /* ERR_NOTIFICATION_PARAMETER */
			case ERR_NOTIFICATION_WRONG_SETTINGS   : return 4252; /* ERR_NOTIFICATION_SETTINGS */
			case ERR_NOTIFICATION_TOO_FREQUENT     : return 4253; /* ERR_NOTIFICATION_TOO_FREQUENT */
			case ERR_FTP_NOSERVER                  : return 4260; /* ERR_FTP_NOSERVER */
			case ERR_FTP_NOLOGIN                   : return 4261; /* ERR_FTP_NOLOGIN */
			case ERR_FTP_CONNECT_FAILED            : return 4262; /* ERR_FTP_CONNECT_FAILED  */
			// ERR_FTP_CLOSED is listed in MQL5's documentation as a value, but it's not defined as a constant
			case 4524                              : return 4263; /* ERR_FTP_CLOSED */
			case ERR_FTP_CHANGEDIR                 : return 4264; /* ERR_FTP_CHANGEDIR */
			case ERR_FTP_FILE_ERROR                : return 4265; /* ERR_FTP_FILE_ERROR */
			case ERR_FTP_SEND_FAILED               : return 4266; /* ERR_FTP_ERROR */
			case ERR_TOO_MANY_FILES                : return 5001; /* ERR_FILE_TOO_MANY_OPENED */
			case ERR_WRONG_FILENAME                : return 5002; /* ERR_FILE_WRONG_FILENAME */
			case ERR_TOO_LONG_FILENAME             : return 5003; /* ERR_FILE_TOO_LONG_FILENAME */
			case ERR_CANNOT_OPEN_FILE              : return 5004; /* ERR_FILE_CANNOT_OPEN */
			case ERR_FILE_CACHEBUFFER_ERROR        : return 5005; /* ERR_FILE_BUFFER_ALLOCATION_ERROR */
			case ERR_CANNOT_DELETE_FILE            : return 5006; /* ERR_FILE_CANNOT_DELETE */
			case ERR_INVALID_FILEHANDLE            : return 5007; /* ERR_FILE_INVALID_HANDLE */
			case ERR_WRONG_FILEHANDLE              : return 5008; /* ERR_FILE_WRONG_HANDLE */
			case ERR_FILE_NOTTOWRITE               : return 5009; /* ERR_FILE_NOT_TOWRITE */
			case ERR_FILE_NOTTOREAD                : return 5010; /* ERR_FILE_NOT_TOREAD */
			case ERR_FILE_NOTBIN                   : return 5011; /* ERR_FILE_NOT_BIN */
			case ERR_FILE_NOTTXT                   : return 5012; /* ERR_FILE_NOT_TXT */
			case ERR_FILE_NOTTXTORCSV              : return 5013; /* ERR_FILE_NOT_TXTORCSV */
			case ERR_FILE_NOTCSV                   : return 5014; /* ERR_FILE_NOT_CSV */
			case ERR_FILE_READERROR                : return 5015; /* ERR_FILE_READ_ERROR */
			case ERR_FILE_WRITEERROR               : return 5016; /* ERR_FILE_WRITE_ERROR */
			case ERR_FILE_BINSTRINGSIZE            : return 5017; /* ERR_FILE_BIN_STRINGSIZE */
			case ERR_INCOMPATIBLE_FILE             : return 5018; /* ERR_FILE_INCOMPATIBLE */
			case ERR_FILE_IS_DIRECTORY             : return 5019; /* ERR_FILE_IS_DIRECTORY */
			case ERR_FILE_NOT_EXIST                : return 5020; /* ERR_FILE_NOT_EXIST */
			case ERR_FILE_CANNOT_REWRITE           : return 5021; /* ERR_FILE_CANNOT_REWRITE */
			case ERR_WRONG_DIRECTORYNAME           : return 5022; /* ERR_FILE_WRONG_DIRECTORYNAME */
			case ERR_DIRECTORY_NOT_EXIST           : return 5023; /* ERR_FILE_DIRECTORY_NOT_EXIST */
			case ERR_FILE_ISNOT_DIRECTORY          : return 5024; /* ERR_FILE_NOT_DIRECTORY */
			case ERR_CANNOT_DELETE_DIRECTORY       : return 5025; /* ERR_FILE_CANNOT_DELETE_DIRECTORY */
			case ERR_CANNOT_CLEAN_DIRECTORY        : return 5026; /* ERR_FILE_CANNOT_CLEAN_DIRECTORY */
			case ERR_ARRAY_RESIZE_ERROR            : return 5027; /* ERR_FILE_ARRAYRESIZE_ERROR */
			case ERR_STRING_RESIZE_ERROR           : return 5028; /* ERR_FILE_STRINGRESIZE_ERROR */
			case ERR_STRUCT_WITHOBJECTS_ORCLASS    : return 5029; /* ERR_FILE_STRUCT_WITH_OBJECTS */
			case ERR_WEBREQUEST_INVALID_ADDRESS    : return 5200; /* ERR_WEBREQUEST_INVALID_ADDRESS */
			case ERR_WEBREQUEST_CONNECT_FAILED     : return 5201; /* ERR_WEBREQUEST_CONNECT_FAILED */
			case ERR_WEBREQUEST_TIMEOUT            : return 5202; /* ERR_WEBREQUEST_TIMEOUT */
			case ERR_WEBREQUEST_REQUEST_FAILED     : return 5203; /* ERR_WEBREQUEST_REQUEST_FAILED */
			case ERR_USER_ERROR_FIRST              : return 65536; /* ERR_USER_ERROR_FIRST */
	
			// There is no something like ERR_COMMON_ERROR in MQL5, but for example ERR_INVALID_PARAMETER is returned
			// for what should be ERR_UNKNOWN_OBJECT_TYPE or ERR_NO_SPECIFIED_SUBWINDOW. Instead of deciding which one
			// to return, return ERR_COMMON_ERROR
			default : return 2; /* ERR_COMMON_ERROR */
		}
	}
	
	static bool IsConnected() {
		return (bool)::TerminalInfoInteger(TERMINAL_CONNECTED);
	}
	
	static bool IsTesting() {
		return (bool)::MQLInfoInteger(MQL_TESTER);
	}
	
	/**
	* Can't find such functionality in MQL5, but I think TERMINAL_CONNECTED should be here
	*/
	static bool IsTradeContextBusy() {
		if (!::TerminalInfoInteger(TERMINAL_CONNECTED)) return true;
	
		return false;
	}
	
	static bool IsVisualMode() {
		return (bool)::MQLInfoInteger(MQL_VISUAL_MODE);
	}
	
	static double MarketInfo(string symbol, int type) {
		// For most cases below this is not needed, but OrderCalcMargin() returns error 5040 (Damaged parameter of string type) if the symbol is NULL
		if (symbol == NULL) symbol = ::Symbol();
	
		switch(type) {
			case 1 /* MODE_LOW                */ : return ::SymbolInfoDouble(symbol, SYMBOL_LASTLOW);
			case 2 /* MODE_HIGH               */ : return ::SymbolInfoDouble(symbol, SYMBOL_LASTHIGH);
			case 5 /* MODE_TIME               */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_TIME);
			case 9 /* MODE_BID                */ : return ::SymbolInfoDouble(symbol, SYMBOL_BID);
			case 10 /* MODE_ASK               */ : return ::SymbolInfoDouble(symbol, SYMBOL_ASK);
			case 11 /* MODE_POINT             */ : return ::SymbolInfoDouble(symbol, SYMBOL_POINT);
			case 12 /* MODE_DIGITS            */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_DIGITS);
			case 13 /* MODE_SPREAD            */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_SPREAD);
			case 14 /* MODE_STOPLEVEL         */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);
			case 15 /* MODE_LOTSIZE           */ : return ::SymbolInfoDouble(symbol, SYMBOL_TRADE_CONTRACT_SIZE);
			case 16 /* MODE_TICKVALUE         */ : return ::SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE);
			case 17 /* MODE_TICKSIZE          */ : return ::SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE);
			case 18 /* MODE_SWAPLONG          */ : return ::SymbolInfoDouble(symbol, SYMBOL_SWAP_LONG);
			case 19 /* MODE_SWAPSHORT         */ : return ::SymbolInfoDouble(symbol, SYMBOL_SWAP_SHORT);
			case 20 /* MODE_STARTING          */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_START_TIME);
			case 21 /* MODE_EXPIRATION        */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_EXPIRATION_TIME);
			case 22 /* MODE_TRADEALLOWED      */ : return (::SymbolInfoInteger(symbol, SYMBOL_TRADE_MODE) != SYMBOL_TRADE_MODE_DISABLED);
			case 23 /* MODE_MINLOT            */ : return ::SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);
			case 24 /* MODE_LOTSTEP           */ : return ::SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
			case 25 /* MODE_MAXLOT            */ : return ::SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);
			case 26 /* MODE_SWAPTYPE          */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_SWAP_MODE);
			case 27 /* MODE_PROFITCALCMODE    */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_TRADE_CALC_MODE);
			case 28 /* MODE_MARGINCALCMODE    */ : return (double)::SymbolInfoInteger(symbol, SYMBOL_TRADE_CALC_MODE);
			case 29 /* MODE_MARGININIT        */ : return (double)::SymbolInfoDouble(symbol, SYMBOL_MARGIN_INITIAL);
			case 30 /* MODE_MARGINMAINTENANCE */ : return (double)::SymbolInfoDouble(symbol, SYMBOL_MARGIN_MAINTENANCE);
			case 31 /* MODE_MARGINHEDGED      */ : return (double)::SymbolInfoDouble(symbol, SYMBOL_MARGIN_HEDGED);
			case 32 /* MODE_MARGINREQUIRED    */ :	{
				// Free margin required to open 1 lot for buying
			   double margin = 0.0;
	
				if (::OrderCalcMargin(ORDER_TYPE_BUY, symbol, 1, ::SymbolInfoDouble(symbol, SYMBOL_ASK), margin))
					return margin;
				else
					return 0.0;
			}
			case 33 /* MODE_FREEZELEVEL */     : return (double)::SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);
			case 34 /* MODE_CLOSEBY_ALLOWED */ : return 0.0;
		}
	
		return 0.0;
	}
	
	static bool ObjectCreate(
		long chart_id, string object_name, ENUM_OBJECT object_type, int sub_window,
		datetime time1, double price1,
		datetime time2 = 0, double price2 = 0,
		datetime time3 = 0, double price3 = 0,
		datetime time4 = 0, double price4 = 0,
		datetime time5 = 0, double price5 = 0,
		datetime time6 = 0, double price6 = 0,
		datetime time7 = 0, double price7 = 0,
		datetime time8 = 0, double price8 = 0,
		datetime time9 = 0, double price9 = 0,
		datetime time10 = 0, double price10 = 0,
		datetime time11 = 0, double price11 = 0,
		datetime time12 = 0, double price12 = 0,
		datetime time13 = 0, double price13 = 0,
		datetime time14 = 0, double price14 = 0,
		datetime time15 = 0, double price15 = 0,
		datetime time16 = 0, double price16 = 0,
		datetime time17 = 0, double price17 = 0,
		datetime time18 = 0, double price18 = 0,
		datetime time19 = 0, double price19 = 0,
		datetime time20 = 0, double price20 = 0,
		datetime time21 = 0, double price21 = 0,
		datetime time22 = 0, double price22 = 0,
		datetime time23 = 0, double price23 = 0,
		datetime time24 = 0, double price24 = 0,
		datetime time25 = 0, double price25 = 0,
		datetime time26 = 0, double price26 = 0,
		datetime time27 = 0, double price27 = 0,
		datetime time28 = 0, double price28 = 0,
		datetime time29 = 0, double price29 = 0
	) {
		return (bool)::ObjectCreate(
			chart_id, object_name, object_type, sub_window,
			time1, price1,
			time2, price2,
			time3, price3,
			time4, price4,
			time5, price5,
			time6, price6,
			time7, price7,
			time8, price8,
			time9, price9,
			time10, price10,
			time11, price11,
			time12, price12,
			time13, price13,
			time14, price14,
			time15, price15,
			time16, price16,
			time17, price17,
			time18, price18,
			time19, price19,
			time20, price20,
			time21, price21,
			time22, price22,
			time23, price23,
			time24, price24,
			time25, price25,
			time26, price26,
			time27, price27,
			time28, price28,
			time29, price29
			);
	}
	
	static bool ObjectCreate(
		string object_name, ENUM_OBJECT object_type, int sub_window,
		datetime time1, double price1,
		datetime time2 = 0, double price2 = 0,
		datetime time3 = 0, double price3 = 0
	) {
		return (bool)::ObjectCreate(0, object_name, object_type, sub_window, time1, price1, time2, price2, time3, price3);
	}
	
	static bool ObjectDelete(long chart_id, string object_name) {
		return (bool)::ObjectDelete(chart_id, object_name);
	}
	static bool ObjectDelete(string object_name) {
		return (bool)::ObjectDelete(0, object_name);
	}
	
	static int ObjectFind(long chart_id, string object_name) {
		return ::ObjectFind(chart_id, object_name);
	}
	static int ObjectFind(string object_name) {
		return ::ObjectFind(0, object_name);
	}
	
	/**
	* In MQL5 the names of the constants in ENUM_OBJECT_PROPERTY_* are pretty much the same as in MQL4, so when constants are used the functions below will serve
	*/
	static double ObjectGetDouble(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_DOUBLE prop_id, int prop_modifier = 0) {
		return ::ObjectGetDouble(chart_id, object_name, prop_id, prop_modifier);
	}
	static bool ObjectGetDouble(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_DOUBLE prop_id, int prop_modifier, double &double_var) {
		return ::ObjectGetDouble(chart_id, object_name, prop_id, prop_modifier, double_var);
	}
	/**
	* These overloads are used just in case when integer value is passed to prop_id.
	* It's presumed that this integer value is what represents the enumeration constants in MQL4, which representation is different in MQL5.
	*/
	static double ObjectGetDouble(long chart_id, const string object_name, int prop_id, int prop_modifier = 0) {
		ENUM_OBJECT_PROPERTY_DOUBLE propID;
		
		switch (prop_id) {
			case 1 /* OBJPROP_PRICE1 */ : propID = OBJPROP_PRICE; prop_modifier = 0; break;
			case 3 /* OBJPROP_PRICE2 */ : propID = OBJPROP_PRICE; prop_modifier = 1; break;
			case 6 /* OBJPROP_PRICE3 */ : propID = OBJPROP_PRICE; prop_modifier = 2; break;
			default : {
				propID = FAAE::_ConvertEnumObjectPropertyDouble_(prop_id);
			}
		}
		
		if (propID == -1) return 0.0;
	
		return ::ObjectGetDouble(chart_id, object_name, propID, prop_modifier);
	}
	static bool ObjectGetDouble(long chart_id, const string object_name, int prop_id, int prop_modifier, double &double_var) {
		ENUM_OBJECT_PROPERTY_DOUBLE propID;
		
		switch (prop_id) {
			case 1 /* OBJPROP_PRICE1 */ : propID = OBJPROP_PRICE; prop_modifier = 0; break;
			case 3 /* OBJPROP_PRICE2 */ : propID = OBJPROP_PRICE; prop_modifier = 1; break;
			case 6 /* OBJPROP_PRICE3 */ : propID = OBJPROP_PRICE; prop_modifier = 2; break;
			default : {
				propID = FAAE::_ConvertEnumObjectPropertyDouble_(prop_id);
			}
		}
	
		if (propID == -1) return true;
	
		return ::ObjectGetDouble(chart_id, object_name, propID, prop_modifier, double_var);
	}
	
	/**
	* In MQL5 the names of the constants in ENUM_OBJECT_PROPERTY_* are pretty much the same as in MQL4, so when constants are used the functions below will serve
	*/
	static long ObjectGetInteger(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_INTEGER prop_id, int prop_modifier = 0) {
		return ::ObjectGetInteger(chart_id, object_name, prop_id, prop_modifier);
	}
	static bool ObjectGetInteger(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_INTEGER prop_id, int prop_modifier, long & long_var) {
		return ::ObjectGetInteger(chart_id, object_name, prop_id, prop_modifier, long_var);
	}
	/**
	* These overloads are used just in case when integer value is passed to prop_id.
	* It's presumed that this integer value is what represents the enumeration constants in MQL4, which representation is different in MQL5.
	*/
	static long ObjectGetInteger(long chart_id, const string object_name, int prop_id, int prop_modifier = 0) {
		ENUM_OBJECT_PROPERTY_INTEGER propID;
	
		switch (prop_id) {
			case 0 /* OBJPROP_PRICE1 */ : propID = OBJPROP_TIME; prop_modifier = 0; break;
			case 2 /* OBJPROP_PRICE2 */ : propID = OBJPROP_TIME; prop_modifier = 1; break;
			case 4 /* OBJPROP_PRICE3 */ : propID = OBJPROP_TIME; prop_modifier = 2; break;
			default : {
				propID = FAAE::_ConvertEnumObjectPropertyInteger_(prop_id);
			}
		}
	
		if (propID == -1) return 0;
	
		return ::ObjectGetInteger(chart_id, object_name, propID, prop_modifier);
	}
	static bool ObjectGetInteger(long chart_id, const string object_name, int prop_id, int prop_modifier, long & long_var) {
		ENUM_OBJECT_PROPERTY_INTEGER propID;
	
		switch (prop_id) {
			case 0 /* OBJPROP_PRICE1 */ : propID = OBJPROP_TIME; prop_modifier = 0; break;
			case 2 /* OBJPROP_PRICE2 */ : propID = OBJPROP_TIME; prop_modifier = 1; break;
			case 4 /* OBJPROP_PRICE3 */ : propID = OBJPROP_TIME; prop_modifier = 2; break;
			default : {
				propID = FAAE::_ConvertEnumObjectPropertyInteger_(prop_id);
			}
		}
	
		if (propID == -1) {
			long_var = 0;
			return true;
		}
	
		return ::ObjectGetInteger(chart_id, object_name, propID, prop_modifier, long_var);
	}
	
	/**
	* This overload is not described in MQL4's documentation, but it exists in MQL4
	*/
	static string ObjectName(long chart_id, int object_index, int sub_window=-1, int object_type=-1) {
		return ::ObjectName(chart_id, object_index, sub_window, object_type);
	}
	/**
	* And this is the old fashion overload
	*/
	static string ObjectName(int index) {
		return ::ObjectName(0, index);
	}
	
	/**
	* These overloads are used just in case when integer value is passed to prop_id.
	* It's presumed that this integer value is what represents the enumeration constants in MQL4, which representation is different in MQL5.
	*/
	static bool ObjectSetDouble(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_DOUBLE prop_id, double prop_value) {
		return ::ObjectSetDouble(chart_id, object_name, prop_id, prop_value);
	}
	static bool ObjectSetDouble(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_DOUBLE prop_id, int prop_modifier, double prop_value) {
		return ::ObjectSetDouble(chart_id, object_name, prop_id, prop_modifier, prop_value);
	}
	static bool ObjectSetDouble(long chart_id, const string object_name, int prop_id, double prop_value) {
		ENUM_OBJECT_PROPERTY_DOUBLE propID = FAAE::_ConvertEnumObjectPropertyDouble_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetDouble(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetDouble(long chart_id, const string object_name, int prop_id, int prop_modifier, double prop_value) {
		ENUM_OBJECT_PROPERTY_DOUBLE propID = FAAE::_ConvertEnumObjectPropertyDouble_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetDouble(chart_id, object_name, propID, prop_modifier, prop_value);
	}
	
	/**
	* These overloads are used just in case when integer value is passed to prop_id.
	* It's presumed that this integer value is what represents the enumeration constants in MQL4, which representation is different in MQL5.
	*/
	static bool ObjectSetInteger(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_INTEGER prop_id, long prop_value) {
		return ::ObjectSetInteger(chart_id, object_name, prop_id, prop_value);
	}
	static bool ObjectSetInteger(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_INTEGER prop_id, int prop_modifier, long prop_value) {
		return ::ObjectSetInteger(chart_id, object_name, prop_id, prop_modifier, prop_value);
	}
	static bool ObjectSetInteger(long chart_id, const string object_name, int prop_id, long prop_value) {
		ENUM_OBJECT_PROPERTY_INTEGER propID = FAAE::_ConvertEnumObjectPropertyInteger_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetInteger(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetInteger(long chart_id, const string object_name, int prop_id, int prop_modifier, long prop_value) {
		ENUM_OBJECT_PROPERTY_INTEGER propID = FAAE::_ConvertEnumObjectPropertyInteger_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetInteger(chart_id, object_name, propID, prop_modifier, prop_value);
	}
	
	/**
	* These overloads are used just in case when integer value is passed to prop_id.
	* It's presumed that this integer value is what represents the enumeration constants in MQL4, which representation is different in MQL5.
	*/
	static bool ObjectSetString(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_STRING prop_id, string prop_value) {
		return ::ObjectSetString(chart_id, object_name, prop_id, prop_value);
	}
	static bool ObjectSetString(long chart_id, const string object_name, ENUM_OBJECT_PROPERTY_STRING prop_id, int prop_modifier, string prop_value) {
		return ::ObjectSetString(chart_id, object_name, prop_id, prop_modifier, prop_value);
	}
	static bool ObjectSetString(long chart_id, const string object_name, int prop_id, string prop_value) {
		ENUM_OBJECT_PROPERTY_STRING propID = FAAE::_ConvertEnumObjectPropertyString_(prop_id);
		if (propID == -1) return true;
	
		return ::ObjectSetString(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetString(long chart_id, const string object_name, int prop_id, int prop_modifier, string prop_value) {
		ENUM_OBJECT_PROPERTY_STRING propID = FAAE::_ConvertEnumObjectPropertyString_(prop_id);
		if (propID == -1) return true;
	
		return ::ObjectSetString(chart_id, object_name, propID, prop_modifier, prop_value);
	}
	
	static int ObjectsTotal(long chart_id, int sub_window = -1, ENUM_OBJECT type = -1) {
		return ::ObjectsTotal(chart_id, sub_window, type);
	}
	/**
	* In the MQL4 documentation the second version of the function has only one "int" argument for "type".
	* This is misleading, because actually the type is ENUM_OBJECT.
	* It could not be "int", because interferes with the "long" argument of the main overload.
	*/
	static int ObjectsTotal(ENUM_OBJECT type = -1, int sub_window = -1) {
		return ::ObjectsTotal(0, sub_window, type);
	}
	
	static bool OrderClose(long ticket, double lots, double price, int slippage, color arrow_color = clrNONE) {
		// ticket is actually position id, so find the position by its id
		int positionsTotal = ::PositionsTotal();
		bool found = false;
		long positionID = ticket;
	
		// try to find the position by position ID
		for (int index = positionsTotal-1; index >= 0; index--) {
			ticket = (long)::PositionGetTicket(index);
			if (::PositionGetInteger(POSITION_IDENTIFIER) == positionID) {
				found = true;
				break;
			}
		}
	
		/*
		// try to find the position by deal ticket
		if (!found) {
			if (::HistoryDealSelect(ticket))	{
				long posID = ::HistoryDealGetInteger(ticket, DEAL_POSITION_ID);
	
				for (int index = positionsTotal-1; index >= 0; index--) {
					ticket = (long)::PositionGetTicket(index);
					
					if (::PositionGetInteger(POSITION_IDENTIFIER) == posID) {
						found = true;
						break;
					}
				}
			}
		}
		*/
	
		if (!found) return false;
	
		double lots0   = ::NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5);
		string symbol  = ::PositionGetString(POSITION_SYMBOL);
		double lotstep = ::SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
	
		while (true) {
			//-- fixing -------------------------------------------------------
			lots = ::MathFloor(lots/lotstep)*lotstep;
	
			//-- close --------------------------------------------------------
			MqlTradeRequest request;
			MqlTradeResult result;
			::ZeroMemory(request);
			::ZeroMemory(result);
	
			request.action    = TRADE_ACTION_DEAL;
			request.price     = price;
			request.type      = (::PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY) ? ORDER_TYPE_SELL : ORDER_TYPE_BUY ;
			request.position  = ::PositionGetInteger(POSITION_TICKET);
			request.symbol    = symbol;
			request.volume    = lots;
			request.magic     = ::PositionGetInteger(POSITION_MAGIC);
			request.deviation = (ulong)slippage;
			request.comment   = "from #" + ::IntegerToString(ticket);
	
			// filling type
			if (FAAE_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
				request.type_filling = ORDER_FILLING_FOK;
			else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
				request.type_filling = ORDER_FILLING_IOC;
			else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
				request.type_filling = ORDER_FILLING_RETURN;
	
			int success = ::OrderSend(request, result);
	
			//-- error check --------------------------------------------------
			if (!success || (result.retcode!=TRADE_RETCODE_DONE && result.retcode!=TRADE_RETCODE_PLACED && result.retcode!=TRADE_RETCODE_DONE_PARTIAL)) {
				string errmsgpfx = "Closing trade error";
				int erraction    = FAAE_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
				return false;
			}
	
			//-- finish work --------------------------------------------------
			if (result.retcode == TRADE_RETCODE_DONE || result.retcode == TRADE_RETCODE_PLACED || result.retcode == TRADE_RETCODE_DONE_PARTIAL) {
				//- closing: full
				if (lots0 == ::NormalizeDouble(result.volume, 5)) {
					while (true) {
						if (!::PositionSelectByTicket(ticket)) {
							break;
						}
	
						::Sleep(10);
					}
				}
				//- closing: partial
				else if (lots0 > ::NormalizeDouble(result.volume, 5))	{
					while (true) {
						if (::PositionSelectByTicket(ticket) && (lots0 != ::NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5))) {
							break;
						}
	
						::Sleep(10);
					}
				}
			}
	
			break;
		}
	
		::ResetLastError();
	
		return true;
	}
	
	static double OrderClosePrice() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PRICE_CURRENT);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_PRICE_CURRENT);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_PRICE);
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(FAAE::OrderTicket(), ORDER_PRICE_CURRENT);
	
		return 0.0;
	}
	
	static datetime OrderCloseTime() {
		if (FAAE_TRADES::LoadedType() == 1) return (datetime)::PositionGetInteger(POSITION_TIME);
	
		if (FAAE_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_DONE);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return (datetime)::HistoryDealGetInteger(ticket, DEAL_TIME);
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(FAAE::OrderTicket(), ORDER_TIME_DONE);
	
		return 0;
	}
	
	static string OrderComment() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetString(POSITION_COMMENT);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetString(ORDER_COMMENT);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetString(ticket, DEAL_COMMENT); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetString(FAAE::OrderTicket(), ORDER_COMMENT);
	
		return "";
	}
	
	static double OrderCommission() {
		if (FAAE_TRADES::LoadedType() == 1) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetDouble(ticket, DEAL_COMMISSION); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 2) return 0;
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_COMMISSION);
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return 0;
		
		return 0.0;
	}
	
	static bool OrderDelete(long ticket, color arrow_color = clrNONE) {
		if (!::OrderSelect(ticket)) return false;
	
		while (true) {
			//-- close --------------------------------------------------------
			MqlTradeRequest request;
			MqlTradeResult result;
			MqlTradeCheckResult check_result;
			::ZeroMemory(request);
			::ZeroMemory(result);
			::ZeroMemory(check_result);
	
			request.action = TRADE_ACTION_REMOVE;
			request.order  = ticket;
	
			if (!::OrderCheck(request,check_result)) {
				::Print("OrderCheck() failed: "+(string)check_result.comment+" ("+(string)check_result.retcode+")");
	
				return false;
			}
	
			int success = ::OrderSend(request, result);
	
			//-- error check --------------------------------------------------
			if (!success || (result.retcode!=TRADE_RETCODE_DONE && result.retcode!=TRADE_RETCODE_PLACED && result.retcode!=TRADE_RETCODE_DONE_PARTIAL)) {
				string errmsgpfx = "Closing order error";
				int erraction    = FAAE_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
	
				// MQL5 does not put the trading error into GetLastError, but I need it for later use in GetLastError
				FAAE::_LastError_(result.retcode);
	
				return false;
			}
	
			//-- finish work --------------------------------------------------
			if (result.retcode==TRADE_RETCODE_DONE || result.retcode==TRADE_RETCODE_PLACED || result.retcode==TRADE_RETCODE_DONE_PARTIAL) {
				while (true) {
					if (!::OrderSelect(ticket)) {
						break;
					}
	
					::Sleep(10);
				}
			}
	
			break;
		}
	
		::ResetLastError();
	
		return true;
	}
	
	static datetime OrderExpiration()
	{
		// In MQL4 the expiration is set for the trades and then it could be get with OrderExpiration correctly
		// In MQL5 expiration can be read from ORDER_TIME_EXPIRATION of the order who produced the position, but
		// that expiration equals to ORDER_TIME_SETUP, which means that it's wrong. That's why return 0.
	
		if (FAAE_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_EXPIRATION);
		if (FAAE_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(FAAE::OrderTicket(), ORDER_TIME_EXPIRATION);
		
		return 0.0;
	}
	
	static double OrderLots() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_VOLUME);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_VOLUME_CURRENT);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_VOLUME);
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(FAAE::OrderTicket(), ORDER_VOLUME_CURRENT);
	
		return 0.0;
	}
	
	static long OrderMagicNumber() {
		if (FAAE_TRADES::LoadedType() == 1) return (long)::PositionGetInteger(POSITION_MAGIC);
	
		if (FAAE_TRADES::LoadedType() == 2) return (long)::OrderGetInteger(ORDER_MAGIC);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return (long)::HistoryDealGetInteger(ticket, DEAL_MAGIC);
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return (long)::HistoryOrderGetInteger(FAAE::OrderTicket(), ORDER_MAGIC);
	
		return 0;
	}
	
	static bool OrderModify(long ticket, double price, double sl, double tp, datetime expiration, color arrow_color = clrNONE) {
		bool isTrade = true;
	
		string symbol = "";
		long magic    = 0;
	
		if (::PositionSelectByTicket(ticket)) {
			symbol = ::PositionGetString(POSITION_SYMBOL);
		}
		else if (::OrderSelect(ticket)) {
			isTrade = false;
	
			symbol = ::OrderGetString(ORDER_SYMBOL);
		}
		else {
			return false;
		}
	
		::ResetLastError();
	
		//-- pre-fixing ---------------------------------------------------
		int digits = (int)::SymbolInfoInteger(symbol, SYMBOL_DIGITS);
	
		sl = ::NormalizeDouble(sl, digits);
		tp = ::NormalizeDouble(tp, digits);
		price = ::NormalizeDouble(price, digits);
	
		while (true) {
			//-- close --------------------------------------------------------
			MqlTradeRequest request;
			MqlTradeResult result;
			::ZeroMemory(request);
			::ZeroMemory(result);
	
			if (isTrade) {
				if (
					   sl == ::NormalizeDouble(PositionGetDouble(POSITION_SL), digits)
					&& tp == ::NormalizeDouble(PositionGetDouble(POSITION_TP), digits)
				) {
					return true;
				}
	
				request.action   = TRADE_ACTION_SLTP;
				request.symbol   = symbol;
				request.position = ::PositionGetInteger(POSITION_TICKET);
				request.magic    = ::PositionGetInteger(POSITION_MAGIC);
				request.comment  = ::PositionGetString(POSITION_COMMENT);
			}
			else {
				//-- check if needed to modify ------------------------------------
				if (
					   price == ::NormalizeDouble(OrderGetDouble(ORDER_PRICE_OPEN), digits)
					&& sl == ::NormalizeDouble(OrderGetDouble(ORDER_SL), digits)
					&& tp == ::NormalizeDouble(OrderGetDouble(ORDER_TP), digits)
					&& expiration == ::OrderGetInteger(ORDER_TIME_EXPIRATION)
				) {
					return true;
				}
	
				request.action   = TRADE_ACTION_MODIFY;
				request.order    = ::OrderGetInteger(ORDER_TICKET);
				request.price    = price;
				request.volume   = ::OrderGetDouble(ORDER_VOLUME_CURRENT);
				request.magic    = ::OrderGetInteger(ORDER_MAGIC);
				request.type_time  = ORDER_TIME_SPECIFIED;
				request.expiration = expiration;
				request.comment    = ::OrderGetString(ORDER_COMMENT);
	
				//-- filling type
				uint filling=(uint)::SymbolInfoInteger(request.symbol,SYMBOL_FILLING_MODE);
	
				if (filling==SYMBOL_FILLING_FOK) {
					request.type_filling=ORDER_FILLING_FOK;
				}
				else if (filling==SYMBOL_FILLING_IOC) {
					request.type_filling=ORDER_FILLING_IOC;
				}
			}
	
			request.sl = sl;
			request.tp = tp;
		
			int success = ::OrderSend(request, result);
			
			//-- error check --------------------------------------------------
			if (!success || (result.retcode!=TRADE_RETCODE_DONE && result.retcode!=TRADE_RETCODE_PLACED && result.retcode!=TRADE_RETCODE_DONE_PARTIAL)) {
				string errmsgpfx = "Modify error";
				int erraction    = FAAE_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
				return false;
			}
			
			//-- finish work --------------------------------------------------
			if (result.retcode==TRADE_RETCODE_DONE || result.retcode==TRADE_RETCODE_PLACED || result.retcode==TRADE_RETCODE_DONE_PARTIAL) {
				int w;
	
				for (w = 0; w < 5000; w++) {
					double actualSl = ::NormalizeDouble(OrderStopLoss(), digits);
					double actualTp = ::NormalizeDouble(OrderTakeProfit(), digits);
	
					if (
						((FAAE_TRADES::LoadedType() == 1 && ::PositionSelectByTicket(ticket)) || ::OrderSelect(ticket))
						&& (sl == actualSl && tp == actualTp)
					) {
						break;
					}
	
					::Sleep(1);
				}
				
				if (w == 5000) {
					::Print("Check error: Modify order stops");
	
					return false;
				}
			}
			
			break;
		}
	
		::ResetLastError();
	
		return true;
	}
	
	static double OrderOpenPrice() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PRICE_OPEN);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_PRICE_OPEN);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetDouble(ticket, DEAL_PRICE); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(FAAE::OrderTicket(), ORDER_PRICE_OPEN);
	
		return 0.0;
	}
	
	static datetime OrderOpenTime() {
		if (FAAE_TRADES::LoadedType() == 1) return (datetime)::PositionGetInteger(POSITION_TIME);
	
		if (FAAE_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_SETUP);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return (datetime)::HistoryDealGetInteger(ticket, DEAL_TIME); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(FAAE::OrderTicket(), ORDER_TIME_SETUP);
	
		return 0;
	}
	
	static double OrderProfit() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PROFIT);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_PROFIT);
				}
			}
		}
	
		return 0.0;
	}
	
	static bool OrderSelect(long index, int select, int pool = 0) {
		// SELECT_BY_POS is 0, SELECT_BY_TICKET is 1. If any other value is used, it defaults to SELECT_BY_TICKET
		// MODE_TRADES is 0, MODE_HISTORY is 1
	
		if (pool < 0 || pool > 1) pool = 0;
		if (select != 0) select = 1;
	
		bool selected = false;
		int loadedTypeTrade = 1;
		int loadedTypeOrder = 2;
	
		FAAE::OrderTicket(0);
		FAAE_TRADES::LoadedType(0);
	
		// SELECT_BY_POS
		if (select == 0) {
			// MODE_TRADES (running trades + pending orders)
			int totalTrades = 0;
			int totalOrders = 0;
	
			if (pool == 1) {
				::HistorySelect(0, ::TimeCurrent() + 1);
				
				totalTrades = ::HistoryDealsTotal();
				totalOrders = ::HistoryOrdersTotal();
				
				loadedTypeTrade = 3;
				loadedTypeOrder = 4;
			}
			else {
				totalTrades = ::PositionsTotal();
				totalOrders = ::OrdersTotal();
				
				loadedTypeTrade = 1;
				loadedTypeOrder = 2;
			}
	
			if (totalTrades == 0 && totalOrders == 0) {
				// nothing to select
				FAAE::_LastError_(ERR_INVALID_PARAMETER);
			}
			else {
				// mixed trades and orders
				int total = ::MathMax(totalTrades, totalOrders);
				int tradeIndex = 0;
				int orderIndex = 0;
				int iterationIndex = 0;
	
				while (true) {
					ulong tradeTicket = 0;
					ulong orderTicket = 0;
	
					if (tradeIndex < totalTrades) {
						if (pool == 1) {
							tradeTicket = ::HistoryDealGetTicket(tradeIndex);
	
							if (
								(tradeTicket == 0) // something is wrong
								|| (::HistoryDealGetInteger(tradeTicket, DEAL_ENTRY) != DEAL_ENTRY_OUT) // not that kind of a deal
							) {
								tradeIndex++;
								continue;
							}
	
							// However, after the OUT deal was just found, the ticket needs to be the position's ID
							if (tradeTicket > 0) {
								tradeTicket = ::HistoryDealGetInteger(tradeTicket, DEAL_POSITION_ID);
							}
						}
						else {
							tradeTicket = ::PositionGetTicket(tradeIndex);
						}
					}
	
					if (orderIndex < totalOrders) {
						if (pool == 1) {
							orderTicket            = ::HistoryOrderGetTicket(orderIndex);
							ENUM_ORDER_STATE state = (ENUM_ORDER_STATE)::HistoryOrderGetInteger(orderTicket, ORDER_STATE);
	
							if (
								(orderTicket == 0) // something is wrong
								|| (state != ORDER_STATE_CANCELED && state != ORDER_STATE_EXPIRED) // not that kind of state
							) {
								orderIndex++;
								continue;
							}
						}
						else {
							orderTicket = ::OrderGetTicket(orderIndex);
						}
					}
	
					iterationIndex++;
	
					// finished checking
					if (tradeTicket == 0 && orderTicket == 0) {
						break;
					}
					else if (tradeTicket > 0 && orderTicket == 0) {
						tradeIndex++;
						
						if (iterationIndex > index) {
							FAAE::OrderTicket(tradeTicket);
							FAAE_TRADES::LoadedType(loadedTypeTrade);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket == 0 && orderTicket > 0) {
						orderIndex++;
						
						if (iterationIndex > index) {
							FAAE::OrderTicket(orderTicket);
							FAAE_TRADES::LoadedType(loadedTypeOrder);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket <= orderTicket) {
						tradeIndex++;
						
						if (iterationIndex > index) {
							FAAE::OrderTicket(tradeTicket);
							FAAE_TRADES::LoadedType(loadedTypeTrade);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket > orderTicket) {
						orderIndex++;
						
						if (iterationIndex > index) {
							FAAE::OrderTicket(orderTicket);
							FAAE_TRADES::LoadedType(loadedTypeOrder);
							selected = true;
							
							break;
						}
					}
				}
			}
		}
		// SELECT_BY_TICKET
		else {
			long ticket = index;
	
			// Select whatever has the ticket here, the pool doesn't matter
			if (::PositionSelectByTicket(ticket)) {
				FAAE::OrderTicket(::PositionGetInteger(POSITION_IDENTIFIER));
				FAAE_TRADES::LoadedType(1);
				selected = true;
			}
			else if (::OrderSelect(ticket)) {
				FAAE::OrderTicket(ticket);
				FAAE_TRADES::LoadedType(2);
				selected = true;
			}
			else {
				::HistorySelect(0, ::TimeCurrent() + 1);
				long posID = ::HistoryDealGetInteger(ticket, DEAL_POSITION_ID);
	
				if (posID) {
					FAAE::OrderTicket(posID);
					FAAE_TRADES::LoadedType(3);
					selected = true;
				}
	
				if (selected == false) {
					long orderTicket = ::HistoryOrderGetInteger(ticket, ORDER_TICKET);
					
					if (orderTicket) {
						FAAE::OrderTicket(ticket);
						FAAE_TRADES::LoadedType(4);
						selected = true;
					}
				}
			}
		}
	
		if (selected) ::ResetLastError();
		
		return selected;
	}
	
	static int OrderSend(
		string   symbol,              // symbol 
		int      cmd,                 // operation 
		double   volume,              // volume 
		double   price,               // price 
		int      slippage,            // slippage 
		double   sl,                  // stop loss 
		double   tp,                  // take profit 
		string   comment=NULL,        // comment 
		long      magic=0,             // magic number 
		datetime expiration=0,        // pending order expiration 
		color    arrow_color=clrNONE  // color
	) {
		int type                       = cmd;
		ulong ticket                   = -1;
		bool successed                 = false;
		bool isPendingOrder            = (cmd > 1);
		ENUM_ORDER_TYPE_TIME type_time = ORDER_TIME_GTC;
	
		symbol = (symbol == NULL || symbol == "") ? ::Symbol() : symbol;
	
		if (isPendingOrder) {
			if (expiration <= 0) {
				expiration = 0;
	
				if (FAAE_TRADES::IsExpirationTypeAllowed(symbol, SYMBOL_EXPIRATION_GTC))
					type_time = ORDER_TIME_GTC;
				else
					type_time = ORDER_TIME_DAY;
			}
			else {
				type_time = ORDER_TIME_SPECIFIED;
			}
		}
		else {
			expiration = 0;
		}
	
		//-- we need this to prevent false-synchronous behaviour of MQL5 -----
		bool closing = false;
		double lots0 = 0;
		long type0   = type;
	
		if (
			   (::AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_NETTING)
			&& (type == POSITION_TYPE_BUY || type == POSITION_TYPE_SELL)
		) {
			if (::PositionSelect(symbol)) {
				if ((int)::PositionGetInteger(POSITION_TYPE) != type) {
					closing = true;
				}
	
				lots0 = ::NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5);
				type0 = ::PositionGetInteger(POSITION_TYPE);
			}
		}
	
		while (true) {
			// fixing
			int digits     = (int)::SymbolInfoInteger(symbol, SYMBOL_DIGITS);
			double ask     = ::SymbolInfoDouble(symbol, SYMBOL_ASK);
			double bid     = ::SymbolInfoDouble(symbol, SYMBOL_BID);
			double lotstep = ::SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
	
			sl     = ::NormalizeDouble(sl, digits);
			tp     = ::NormalizeDouble(tp, digits);
			price  = ::NormalizeDouble(price, digits);
			volume = ::MathFloor(volume/lotstep) * lotstep; // MQL4's OrderSend rounds to floor
	
			// MQL4 gives error 130 and doesn't make pending order when outside of the requirements listed here: https://book.mql4.com/appendix/limits
			// MQL5 seems to don't have such and instead it would make a pending order or a trade. That's why these checks are needed here.
			if (isPendingOrder) {
				if (
					(type == ORDER_TYPE_BUY_LIMIT && price >= ask)
					|| (type == ORDER_TYPE_SELL_LIMIT && price <= bid)
					|| (type == ORDER_TYPE_BUY_STOP && price <= ask)
					|| (type == ORDER_TYPE_SELL_STOP && price >= bid)
				) {
					FAAE::_LastError_(TRADE_RETCODE_INVALID_STOPS);
	
					return -1;
				}
			}
	
			// Give error 130 when the stops are wrong right away
			if (
				   ((type == POSITION_TYPE_BUY || type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_BUY_STOP) && ((sl > 0 && sl >= price) || (tp > 0 && tp <= price)))
				|| ((type == POSITION_TYPE_SELL || type == ORDER_TYPE_SELL_LIMIT || type == ORDER_TYPE_SELL_STOP) && ((sl > 0 && sl <= price) || (tp > 0 && tp >= price)))
			) {
					FAAE::_LastError_(TRADE_RETCODE_INVALID_STOPS);
					return -1;
			}
	
			// send
			MqlTradeRequest request;
			MqlTradeResult result;
			MqlTradeCheckResult check_result;
			::ZeroMemory(request);
			::ZeroMemory(result);
			::ZeroMemory(check_result);
	
			request.action     = (type < 2) ? TRADE_ACTION_DEAL : TRADE_ACTION_PENDING;
			request.symbol     = symbol;
			request.volume     = volume;
			request.type       = (ENUM_ORDER_TYPE)type;
			request.price      = price;
			request.deviation  = slippage;
			request.sl         = sl;
			request.tp         = tp;
			request.comment    = comment;
			request.magic      = magic;
			request.type_time  = type_time;
			request.expiration = expiration;
	
			//-- filling type
			if (isPendingOrder) {
				if (FAAE_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN))
					request.type_filling = ORDER_FILLING_RETURN;
				else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_FOK))
					request.type_filling = ORDER_FILLING_FOK;
				else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_IOC))
					request.type_filling = ORDER_FILLING_IOC;
			}
			else {
				// in case of positions I would check for SYMBOL_FILLING_ and then set ORDER_FILLING_
				// this is because it appears that FAAE_TRADES::IsFillingTypeAllowed() works correct with SYMBOL_FILLING_, but then the position works correctly with ORDER_FILLING_
				// FOK and IOC integer values are not the same for ORDER and SYMBOL
	
				if (FAAE_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
					request.type_filling = ORDER_FILLING_FOK;
				else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
					request.type_filling = ORDER_FILLING_IOC;
				else if (FAAE_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
					request.type_filling = ORDER_FILLING_RETURN;
			}
	
			bool success = ::OrderSend(request, result);
	
			//-- check security flag ------------------------------------------
			if (successed == true) {
				::Print("The program will be removed because of suspicious attempt to create new positions");
				::ExpertRemove();
				::Sleep(10000);
	
				break;
			}
	
			if (success) {
				successed = true;
			}
	
			//-- error check --------------------------------------------------
			if (
				   success == false
				|| (
					   result.retcode != TRADE_RETCODE_DONE
					&& result.retcode != TRADE_RETCODE_PLACED
					&& result.retcode != TRADE_RETCODE_DONE_PARTIAL
				)
			) {
				string errmsgpfx = (type > ORDER_TYPE_SELL) ? "New pending order error" : "New position error";
	
				int erraction = FAAE_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
	
				// MQL5 does not put the trading error into GetLastError, but I need it for later use in GetLastError
				FAAE::_LastError_(result.retcode);
	
				return -1;
			}
	
			//-- finish work --------------------------------------------------
			if (
				   result.retcode==TRADE_RETCODE_DONE
				|| result.retcode==TRADE_RETCODE_PLACED
				|| result.retcode==TRADE_RETCODE_DONE_PARTIAL
			) {
				ticket = result.order;
				//== Whatever was created, we need to wait until MT5 updates it's cache
	
				//-- Synchronize: Position
				if (type <= ORDER_TYPE_SELL) {
					if (::AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_NETTING) {
						if (closing == false) {
							//- new position: 2 situations here - new position or add to position
							//- ... because of that we will check the lot size instead of PositionSelect
							while (true) {
								if (::PositionSelect(symbol) && (lots0 != ::NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5))) {
									break;
								}
	
								Sleep(10);
							}
						}
						else {
							//- closing position: full
							if (lots0 == ::NormalizeDouble(result.volume, 5)) {
								while (true) {
									if (!::PositionSelect(symbol)) {break;}
									::Sleep(10);
								}
							}
							//- closing position: partial
							else if (lots0 > ::NormalizeDouble(result.volume, 5)) {
								while (true) {
									if (::PositionSelect(symbol) && (lots0 != ::NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5))) {
										break;
									}
	
									::Sleep(10);
								}
							}
							//-- position reverse
							else if (lots0 < ::NormalizeDouble(result.volume, 5)) {
								while (true) {
									if (::PositionSelect(symbol) && (type0 != ::PositionGetInteger(POSITION_TYPE))) {
										break;
									}
	
									::Sleep(10);
								}
							}
						}
					}
					else if (::AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_HEDGING) {
						if (closing == false) {
							while (true) {
								if (::PositionSelectByTicket(ticket)) {
									break;
								}
	
								::Sleep(10);
							}
						}
					}
				}
				//-- Synchronize: Order
				else {
					while (true) {
						if (FAAE_TRADES::LoadPendingOrder(result.order)) {
							break;
						}
	
						::Sleep(10);
					}
				}
			}
	
			break;
		}
	
		if (ticket > 0) {
			// In MQL4 OrderSend() selects the order
			int loadedType = (isPendingOrder) ? 2 : 1; // 1 for trade, 2 for pending order
			FAAE::OrderTicket(ticket);
			FAAE_TRADES::LoadedType(loadedType);
			::ResetLastError();
		}
	
		return (int)ticket;
	}
	
	static double OrderStopLoss() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_SL);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_SL);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					ulong orderTicket = ::HistoryDealGetInteger(ticket, DEAL_ORDER);
					return ::HistoryOrderGetDouble(orderTicket, ORDER_SL); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(FAAE::OrderTicket(), ORDER_SL);
	
		return 0.0;
	}
	
	static double OrderSwap() {
		if (FXD_SELECTED_TYPE == 1) return ::PositionGetDouble(POSITION_SWAP);
	
		if (FXD_SELECTED_TYPE == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_SWAP);
				}
			}
		}
	
		return 0.0;
	}
	
	static string OrderSymbol() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetString(POSITION_SYMBOL);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetString(ORDER_SYMBOL);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetString(ticket, DEAL_SYMBOL); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetString(FAAE::OrderTicket(), ORDER_SYMBOL);
	
		return _Symbol;
	}
	
	static double OrderTakeProfit() {
		if (FAAE_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_TP);
	
		if (FAAE_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_TP);
	
		if (FAAE_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(FAAE::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					ulong orderTicket = ::HistoryDealGetInteger(ticket, DEAL_ORDER);
					return ::HistoryOrderGetDouble(orderTicket, ORDER_TP); 
				}
			}
		}
	
		if (FAAE_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(FAAE::OrderTicket(), ORDER_TP);
	
		return 0.0;
	}
	
	static int OrderTicket(long ticket = 0) {
		static int memory = 0;
	
		if (ticket > 0) {
			memory = (int)ticket;
		}
	
		return memory;
	}
	
	static int OrderType() {
		if (FAAE_TRADES::LoadedType() == 1) return (int)::PositionGetInteger(POSITION_TYPE);
		if (FAAE_TRADES::LoadedType() == 2) return (int)::OrderGetInteger(ORDER_TYPE);
		if (FAAE_TRADES::LoadedType() == 3) return (int)::HistoryDealGetInteger(FAAE::OrderTicket(), DEAL_TYPE);
		if (FAAE_TRADES::LoadedType() == 4) return (int)::HistoryOrderGetInteger(FAAE::OrderTicket(), ORDER_TYPE);
		
		return 0; // MQL4 returns 0 if there is nothing loaded
	}
	
	static int OrdersHistoryTotal() {
		int total = 0;
	
		::HistorySelect(0, ::TimeCurrent() + 1);
	
		int totalDeals  = ::HistoryDealsTotal();
		int totalOrders = ::HistoryOrdersTotal();
	
		for (int index = 0; index < totalDeals; index++) {
			ulong ticket = ::HistoryDealGetTicket(index);
			
			if (ticket == 0) continue;
	
			if (::HistoryDealGetInteger(ticket, DEAL_ENTRY) == DEAL_ENTRY_OUT) total++;
		}
	
		for (int index = 0; index < totalOrders; index++) {
			ulong ticket = ::HistoryOrderGetTicket(index);
	
			if (ticket == 0) continue;
	
			ENUM_ORDER_STATE state = (ENUM_ORDER_STATE)::HistoryOrderGetInteger(ticket, ORDER_STATE);
	
			if (state == ORDER_STATE_CANCELED || state == ORDER_STATE_EXPIRED) total++;
		}
	
		return total;
	}
	
	static int OrdersTotal() {
		return ::PositionsTotal() + ::OrdersTotal();
	}
	
	/**
	* Refresh the data in the predefined variables and series arrays
	* In MQL5 this function should run on every tick or calculate
	*
	* Note that when Symbol or Timeframe is changed,
	* the global arrays (Ask, Bid...) are reset to size 0,
	* and also the static variables are reset to initial values.
	*/
	static bool RefreshRates() {
		static bool initialized = false;
		static double prevAsk   = 0.0;
		static double prevBid   = 0.0;
		static int prevBars     = 0;
		static MqlRates ratesArray[1];
	
		bool isDataUpdated = false;
	
		if (initialized == false) {
			::ArraySetAsSeries(::Close, true);
			::ArraySetAsSeries(::High, true);
			::ArraySetAsSeries(::Low, true);
			::ArraySetAsSeries(::Open, true);
			::ArraySetAsSeries(::Volume, true);
	
			initialized = true;
		}
	
		// For Bars below, if the symbol parameter is provided through a string variable, the function returns 0 immediately when the terminal is started
		::Bars = ::Bars(::_Symbol, PERIOD_CURRENT);
		::Ask  = ::SymbolInfoDouble(::_Symbol, SYMBOL_ASK);
		::Bid  = ::SymbolInfoDouble(::_Symbol, SYMBOL_BID);
	
		if ((::Bars > 0) && (::Bars > prevBars)) {
			// Tried to resize these arrays below on every successful single result, but turns out that this is veeeery slow
			::ArrayResize(::Time, ::Bars);
			::ArrayResize(::Open, ::Bars);
			::ArrayResize(::High, ::Bars);
			::ArrayResize(::Low, ::Bars);
			::ArrayResize(::Close, ::Bars);
			::ArrayResize(::Volume, ::Bars);
	
			// Fill the missing data
			for (int i = prevBars; i < ::Bars; i++) {
				int success = ::CopyRates(::_Symbol, PERIOD_CURRENT, i, 1, ratesArray);
	
				if (success == 1) {
					::Time[i]   = ratesArray[0].time;
					::Open[i]   = ratesArray[0].open;
					::High[i]   = ratesArray[0].high;
					::Low[i]    = ratesArray[0].low;
					::Close[i]  = ratesArray[0].close;
					::Volume[i] = ratesArray[0].tick_volume;
				}
			}
		}
		else {
			// Update the current bar only
			int success = ::CopyRates(::_Symbol, PERIOD_CURRENT, 0, 1, ratesArray);
	
			if (success == 1) {
				::Time[0]   = ratesArray[0].time;
				::Open[0]   = ratesArray[0].open;
				::High[0]   = ratesArray[0].high;
				::Low[0]    = ratesArray[0].low;
				::Close[0]  = ratesArray[0].close;
				::Volume[0] = ratesArray[0].tick_volume;
			}
		}
	
		if (::Bars != prevBars || ::Ask != prevAsk || ::Bid != prevBid) {
			isDataUpdated = true;
		}
	
		prevBars = ::Bars;
		prevAsk  = ::Ask;
		prevBid  = ::Bid;
	
		return isDataUpdated;
	}
	
	static long StrToInteger(string value) {
		return ::StringToInteger(value);
	}
	
	template<
		typename T1,typename T2
	>static string StringConcatenate(
		T1 p1,T2 p2
		) {
		string output = "";
		::StringConcatenate(output,p1,p2);
		return output;
	};
	template<
		typename T1,typename T2,typename T3
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58,typename T59
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58,
		T59 p59
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58,typename T59,typename T60
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58,
		T59 p59,T60 p60
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58,typename T59,typename T60,
		typename T61
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58,
		T59 p59,T60 p60,T61 p61
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58,typename T59,typename T60,
		typename T61,typename T62
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58,
		T59 p59,T60 p60,T61 p61,T62 p62
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62);
		return output;
	};
	template<
		typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,
		typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,
		typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename T28,typename T29,typename T30,
		typename T31,typename T32,typename T33,typename T34,typename T35,typename T36,typename T37,typename T38,typename T39,typename T40,
		typename T41,typename T42,typename T43,typename T44,typename T45,typename T46,typename T47,typename T48,typename T49,typename T50,
		typename T51,typename T52,typename T53,typename T54,typename T55,typename T56,typename T57,typename T58,typename T59,typename T60,
		typename T61,typename T62,typename T63
	>static string StringConcatenate(
		T1 p1,T2 p2,T3 p3,T4 p4,T5 p5,T6 p6,T7 p7,T8 p8,T9 p9,T10 p10,T11 p11,T12 p12,T13 p13,T14 p14,T15 p15,T16 p16,T17 p17,T18 p18,T19 p19,T20 p20,T21 p21,T22 p22,T23 p23,T24 p24,T25 p25,T26 p26,T27 p27,T28 p28,T29 p29,T30 p30,
		T31 p31,T32 p32,T33 p33,T34 p34,T35 p35,T36 p36,T37 p37,T38 p38,T39 p39,T40 p40,T41 p41,T42 p42,T43 p43,T44 p44,T45 p45,T46 p46,T47 p47,T48 p48,T49 p49,T50 p50,T51 p51,T52 p52,T53 p53,T54 p54,T55 p55,T56 p56,T57 p57,T58 p58,
		T59 p59,T60 p60,T61 p61,T62 p62,T63 p63
		) {
		string output = "";
		::StringConcatenate(output,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63);
		return output;
	};
	
	/**
	* In MQL5 when length is 0, it returns an empty string
	* In MQL4 when length is 0, it returns the whole string
	*/
	static string StringSubstr(const string string_value, int start_pos, int length = 0) {
		return ::StringSubstr(string_value, start_pos, ((length <= 0) ? -1 : length));
	}
	
	static string StringTrimLeft(string string_var) {
		::StringTrimLeft(string_var);
	
		return string_var;
	}
	
	static string StringTrimRight(string string_var) {
		::StringTrimRight(string_var);
	
		return string_var;
	}
	
	static int TimeDay(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.day;
	}
	
	static int TimeDayOfWeek(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.day_of_week;
	}
	
	static int TimeHour(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.hour;
	}
	
	static int TimeMinute(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.min;
	}
	
	static int TimeMonth(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.mon;
	}
	
	static int TimeSeconds(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return(tm.sec);
	}
	
	static int TimeYear(datetime date) {
		MqlDateTime tm;
		::TimeToStruct(date,tm);
	
		return tm.year;
	}
	
	static ENUM_OBJECT_PROPERTY_DOUBLE _ConvertEnumObjectPropertyDouble_(int propID) {
		// The extra "case" in some rows are the MQL5 values for the particular constant
		switch (propID) {
			case 20 : case 9 :    return OBJPROP_PRICE;
			case 204 :            return OBJPROP_LEVELVALUE;
			case 12 : case 1006 : return OBJPROP_SCALE;
			case 13 : case 1007 : return OBJPROP_ANGLE;
			case 16 : case 1010 : return OBJPROP_DEVIATION;
		}
	
		return (ENUM_OBJECT_PROPERTY_DOUBLE)-1;
	}
	
	static ENUM_OBJECT_PROPERTY_INTEGER _ConvertEnumObjectPropertyInteger_(int propID) {
		// The extra "case" in some rows are the MQL5 values for the particular constant
		switch (propID) {
			case 6 : case 0 : return OBJPROP_COLOR;
			case 7 : case 1 : return OBJPROP_STYLE;
			case 8 : case 2 : return OBJPROP_WIDTH;
			case 9 : case 3 : return OBJPROP_BACK;
			case 207 :        return OBJPROP_ZORDER;
			case 1031 :       return OBJPROP_FILL;
			case 208 :        return OBJPROP_HIDDEN;
			case 4 :          return OBJPROP_SELECTED;
			case 1028 :       return OBJPROP_READONLY;
			case 18 : /*case 7 :*/    return OBJPROP_TYPE;
			case 19 : /*case 8 :*/    return OBJPROP_TIME;
			case 1000 : /*case 10 :*/ return OBJPROP_SELECTABLE;
			case 998 : /*case 11 :*/  return OBJPROP_CREATETIME;
			case 200 :             return OBJPROP_LEVELS;
			case 201 :             return OBJPROP_LEVELCOLOR;
			case 202 :             return OBJPROP_LEVELSTYLE;
			case 203 :             return OBJPROP_LEVELWIDTH;
			case 1036 :            return OBJPROP_ALIGN;
			case 100 : case 1002 : return OBJPROP_FONTSIZE;
			case 1003 :            return OBJPROP_RAY_LEFT;
			case 1004 :            return OBJPROP_RAY_RIGHT;
			case 10 : case 1032 :  return OBJPROP_RAY;
			case 11 : /*case 1005 :*/  return OBJPROP_ELLIPSE;
			case 14 : /*case 1008 :*/  return OBJPROP_ARROWCODE;
			case 15 : /*case 12 :*/    return OBJPROP_TIMEFRAMES;
			case 1011 :                  return OBJPROP_ANCHOR;
			case 102 : /*case 1012 :*/ return OBJPROP_XDISTANCE;
			case 103 : /*case 1013 :*/ return OBJPROP_YDISTANCE;
			case 1014 : return OBJPROP_DIRECTION;
			case 1015 : return OBJPROP_DEGREE;
			case 1016 : return OBJPROP_DRAWLINES;
			case 1018 : return OBJPROP_STATE;
			case 1030 : return OBJPROP_CHART_ID;
			case 1019 : return OBJPROP_XSIZE;
			case 1020 : return OBJPROP_YSIZE;
			case 1033 : return OBJPROP_XOFFSET;
			case 1034 : return OBJPROP_YOFFSET;
			case 1022 : return OBJPROP_PERIOD;
			case 1023 : return OBJPROP_DATE_SCALE;
			case 1024 : return OBJPROP_PRICE_SCALE;
			case 1027 : return OBJPROP_CHART_SCALE;
			case 1025 : return OBJPROP_BGCOLOR;
			case 101 : /*case 1026 :*/ return OBJPROP_CORNER;
			case 1029 : return OBJPROP_BORDER_TYPE;
			case 1035 : return OBJPROP_BORDER_COLOR;
		}
	
		return (ENUM_OBJECT_PROPERTY_INTEGER)-1;
	}
	
	
	static ENUM_OBJECT_PROPERTY_STRING _ConvertEnumObjectPropertyString_(int propID) {
		// The extra "case" in some rows are the MQL5 values for the particular constant
		switch (propID) {
			case 1037 : case 5 : return OBJPROP_NAME;
			case 999 : case 6 :  return OBJPROP_TEXT;
			case 206 :           return OBJPROP_TOOLTIP;
			case 205 :           return OBJPROP_LEVELTEXT;
			case 1001 :          return OBJPROP_FONT;
			case 1017 :          return OBJPROP_BMPFILE;
			case 1021 :          return OBJPROP_SYMBOL;
		}
	
		return (ENUM_OBJECT_PROPERTY_STRING)-1;
	}
	
	/**
	* In MQL4 the values are the number of minutes in the period
	* In MQL5 the values are the minutes up to M30, then it's the number of seconds in the period
	* This function converts all values that exist in MQL4, but not in MQL5
	* There are no conflict values otherwise
	*/
	static ENUM_TIMEFRAMES _ConvertTimeframe_(int timeframe) {
		switch (timeframe) {
			case 60    : return PERIOD_H1;
			case 120   : return PERIOD_H2;
			case 180   : return PERIOD_H3;
			case 240   : return PERIOD_H4;
			case 360   : return PERIOD_H6;
			case 480   : return PERIOD_H8;
			case 720   : return PERIOD_H12;
			case 1440  : return PERIOD_D1;
			case 10080 : return PERIOD_W1;
			case 43200 : return PERIOD_MN1;
		}
	
		return (ENUM_TIMEFRAMES)timeframe;
	}
	static ENUM_TIMEFRAMES _ConvertTimeframe_(ENUM_TIMEFRAMES timeframe) {
		return timeframe;
	}
	
	static double _GetIndicatorValue_(int handle, int mode = 0, int shift = 0, bool isCustom = false) {
		static double buffer[1];
	
		double valueOnError = (isCustom) ? EMPTY_VALUE : 0.0;
	
		::ResetLastError(); 
	
		if (handle < 0) {
			::Print("Error: Indicator not loaded (handle=", handle, " | error code=", ::_LastError, ")");
	
			return valueOnError;
		}
		
		int barsCalculated = 0;
	
		for (int i = 0; i < 100; i++) {
			barsCalculated = ::BarsCalculated(handle);
	
			if (barsCalculated > 0) break;
	
			::Sleep(50); // doesn't work when in custom indicators
		}
	
		int copied = ::CopyBuffer(handle, mode, shift, 1, buffer);
	
		// Some indicators like MA could be working fine for most candles, but not for the few oldest candles where MA cannot be calculated.
		// In this case the amount of copied idems is 0. That's why don't rely on that value and use BarsCalculated instead.
		if (barsCalculated > 0) {
			double value = (copied > 0) ? buffer[0] : EMPTY_VALUE;
			
			// In MQL4 all built-in indicators return 0.0 when they have nothing to return, for example when asked for value from non existent bar.
			// In MQL5 they return EMPTY_VALUE in this case. That's why here this fix is needed.
			if (value == EMPTY_VALUE && isCustom == false) value = 0.0;
			
			return value;
		}
	
		FAAE::_IndicatorProblem_(true);
	
		return valueOnError;
	}
	
	/**
	* _IndicatorProblem_() to get the state
	* _IndicatorProblem_(true) or _IndicatorProblem_(false) to set the state
	*/
	static bool _IndicatorProblem_(int setState = -1) {
		static bool memory = false;
	
		if (setState > -1) memory = setState;
	
		if (memory == 1) FXD_INDICATOR_COUNTED_MEMORY = 0; // Resets the IndicatorCount() function
	
		return memory;
	}
	
	/**
	* Getter
	*/
	static int _LastError_() {
		return _LastError;
	}
	/**
	* Setter
	*/
	static void _LastError_(int error) {
		_LastError = error;
	}
	
	static double iStochastic( 
		string symbol,
		int timeframe,
		int Kperiod,
		int Dperiod,
		int slowing,
		ENUM_MA_METHOD ma_method,
		ENUM_STO_PRICE price_field,
		int mode,
		int shift
	) {
		return FAAE::_GetIndicatorValue_(
			::iStochastic(
				symbol,
				FAAE::_ConvertTimeframe_(timeframe),
				Kperiod,
				Dperiod,
				slowing,
				ma_method,
				price_field),
			mode,
			shift
		);
	}
};
int FAAE::_LastError = -1;

class FAAE_TRADES
{
public:
	/**
	* Constructor
	*/
	FAAE_TRADES() {};
	
		static int CheckForTradingError(int error_code = -1, string msg_prefix = "")
		{
			// return 0 -> no error
			// return 1 -> overcomable error
			// return 2 -> fatal error
	
			static int tryout = 0;
			int tryouts = 5;   // How many times to retry
			int delay   = 1000; // Time delay between retries, in milliseconds
			int retval  = 0;
	
			//-- error check -----------------------------------------------------
			switch(error_code)
			{
				//-- no error
				case 0:
					retval = 0;
					break;
				//-- overcomable errors
				case TRADE_RETCODE_REQUOTE:
				case TRADE_RETCODE_REJECT:
				case TRADE_RETCODE_ERROR:
				case TRADE_RETCODE_TIMEOUT:
				case TRADE_RETCODE_INVALID_VOLUME:
				case TRADE_RETCODE_INVALID_PRICE:
				case TRADE_RETCODE_INVALID_STOPS:
				case TRADE_RETCODE_INVALID_EXPIRATION:
				case TRADE_RETCODE_PRICE_CHANGED:
				case TRADE_RETCODE_PRICE_OFF:
				case TRADE_RETCODE_TOO_MANY_REQUESTS:
				case TRADE_RETCODE_NO_CHANGES:
				case TRADE_RETCODE_CONNECTION:
					retval = 1;
					break;
				//-- critical errors
				default:
					retval = 2;
					break;
			}
	
			if (error_code > 0)
			{
				if (retval == 1)
				{
					Print(msg_prefix,": ",(error_code),". Retrying in ",(delay)," milliseconds..");
					Sleep(delay); 
				}
				else if (retval == 2)
				{
					Print(msg_prefix,": ",(error_code));
				}
			}
	
			if (retval == 0)
			{
				tryout = 0;
			}
			else if (retval == 1)
			{
				tryout++;
	
				if (tryout > tryouts)
				{
					tryout = 0;
					retval  = 2;
				}
				else
				{
					Print("retry #", tryout, " of ", tryouts);
				}
			}
	
			return retval;
		}
	
		static bool IsExpirationTypeAllowed(string symbol, int exp_type)
		{
			int expiration = (int)SymbolInfoInteger(symbol,SYMBOL_EXPIRATION_MODE);
			return ((expiration&exp_type) == exp_type);
		}
	
		static bool IsFillingTypeAllowed(string symbol,int fill_type)
		{
			int filling=(int)SymbolInfoInteger(symbol,SYMBOL_FILLING_MODE);
			return((filling & fill_type)==fill_type);
		}
	
	static bool LoadPendingOrder(long ticket)
	{
		bool success = false;
	
	   if (::OrderSelect(ticket))
		{
			// The order could be from any type, so check the type
			// and allow only true pending orders.
			ENUM_ORDER_TYPE type = (ENUM_ORDER_TYPE)::OrderGetInteger(ORDER_TYPE);
	
			if (
				   type == ORDER_TYPE_BUY_LIMIT
				|| type == ORDER_TYPE_SELL_LIMIT
				|| type == ORDER_TYPE_BUY_STOP
				|| type == ORDER_TYPE_SELL_STOP
			) {
				FAAE_TRADES::LoadedType(2);
				FAAE::OrderTicket(ticket);
				success = true;
			}
		}
	
	   return success;
	}
	
	static int LoadedType(int type = 0)
	{
		// 1 - position
		// 2 - pending order
		// 3 - history position
		// 4 - history pending order
	
		static int memory;
	
		if (type > 0) {memory = type;}
	
		return memory;
	}
};
bool ___RefreshRates___ = FAAE::RefreshRates();

//== fxDreema MQL4 to MQL5 Converter ==//