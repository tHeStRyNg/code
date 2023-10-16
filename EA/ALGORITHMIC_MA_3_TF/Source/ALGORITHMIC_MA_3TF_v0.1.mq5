#property copyright   "Copyright 2023, ALGORITHMIC GMBH"
#property link        "https://www.algorithmic.one"
#property description "This Forex Robot Trade (EA) uses MA with 3 TimeFrames (TF) to determine the trend and open trades."
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
#define SELECT_BY_TICKET 1
#define MODE_TRADES 0
#define OP_SELL 1
#define OP_SELLSTOP 5
#define OP_SELLLIMIT 3
#define OP_BUY 0
#define SELECT_BY_POS 0
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
#define PROJECT_ID "mt4-2326"
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
input string EA_Name = "ALGORITHMIC MA 3 TF";
input double Lot = 0.01;
input int TP_pips = 10;
input int MA_fast = 5;
input int MA_Slow = 25;
input ENUM_TIMEFRAMES TimeFrames_1 = PERIOD_M5;
input ENUM_TIMEFRAMES TimeFrames_2 = PERIOD_M15;
input ENUM_TIMEFRAMES TimeFrames_3_Signal = PERIOD_M30;
input bool Cut_Loss = true;
input double Cut_Loss_Percent = 5.0; // Cut_Loss_(%)
input int Nearby_pips = 20;
input int MagicStart = 2326; // Magic Number, kind of...
class c
{
		public:
	static string EA_Name;
	static double Lot;
	static int TP_pips;
	static int MA_fast;
	static int MA_Slow;
	static ENUM_TIMEFRAMES TimeFrames_1;
	static ENUM_TIMEFRAMES TimeFrames_2;
	static ENUM_TIMEFRAMES TimeFrames_3_Signal;
	static bool Cut_Loss;
	static double Cut_Loss_Percent;
	static int Nearby_pips;
	static int MagicStart;
};
string c::EA_Name;
double c::Lot;
int c::TP_pips;
int c::MA_fast;
int c::MA_Slow;
ENUM_TIMEFRAMES c::TimeFrames_1;
ENUM_TIMEFRAMES c::TimeFrames_2;
ENUM_TIMEFRAMES c::TimeFrames_3_Signal;
bool c::Cut_Loss;
double c::Cut_Loss_Percent;
int c::Nearby_pips;
int c::MagicStart;


//--
// Variables (Global Variables)



class v
{
		public:
	static double Count_B;
	static double Count_S;
	static double Cut_Loss_Percent_BS;
};
double v::Count_B;
double v::Count_S;
double v::Cut_Loss_Percent_BS;




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
int FXD_BLOCKS_COUNT        = 53;
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
	c::Lot = Lot;
	c::TP_pips = TP_pips;
	c::MA_fast = MA_fast;
	c::MA_Slow = MA_Slow;
	c::TimeFrames_1 = TimeFrames_1;
	c::TimeFrames_2 = TimeFrames_2;
	c::TimeFrames_3_Signal = TimeFrames_3_Signal;
	c::Cut_Loss = Cut_Loss;
	c::Cut_Loss_Percent = Cut_Loss_Percent;
	c::Nearby_pips = Nearby_pips;
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

	v::Count_B = 0.0;
	v::Count_S = 0.0;
	v::Cut_Loss_Percent_BS = 0.0;




	Comment("");
	for (int i=AEBD::ObjectsTotal(ChartID()); i>=0; i--)
	{
		string name = AEBD::ObjectName(ChartID(), i);
		if (AEBD::StringSubstr(name,0,8) == "fxd_cmnt") {AEBD::ObjectDelete(ChartID(), name);}
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
	ArrayResize(_blocks_, 53);

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
	_blocks_[18] = new Block18();
	_blocks_[19] = new Block19();
	_blocks_[20] = new Block20();
	_blocks_[21] = new Block21();
	_blocks_[22] = new Block22();
	_blocks_[23] = new Block23();
	_blocks_[24] = new Block24();
	_blocks_[25] = new Block25();
	_blocks_[26] = new Block26();
	_blocks_[27] = new Block27();
	_blocks_[28] = new Block28();
	_blocks_[29] = new Block29();
	_blocks_[30] = new Block30();
	_blocks_[31] = new Block31();
	_blocks_[32] = new Block32();
	_blocks_[33] = new Block33();
	_blocks_[34] = new Block34();
	_blocks_[35] = new Block35();
	_blocks_[36] = new Block36();
	_blocks_[37] = new Block37();
	_blocks_[38] = new Block38();
	_blocks_[39] = new Block39();
	_blocks_[40] = new Block40();
	_blocks_[41] = new Block41();
	_blocks_[42] = new Block42();
	_blocks_[43] = new Block43();
	_blocks_[44] = new Block44();
	_blocks_[45] = new Block45();
	_blocks_[46] = new Block46();
	_blocks_[47] = new Block47();
	_blocks_[48] = new Block48();
	_blocks_[49] = new Block49();
	_blocks_[50] = new Block50();
	_blocks_[51] = new Block51();
	_blocks_[52] = new Block52();

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

	if (AEBD::OrdersTotal()) // this makes things faster
	{
		OCODriver(); // Check and close OCO orders
	}

	if (ENABLE_EVENT_TRADE) {OnTrade();}


	// skip ticks
	if (TimeLocal() < FXD_TICKSKIP_UNTIL) {return;}

	//-- run blocks
	int blocks_to_run[] = {0,6,12,21,30,31,38,39,42,44,46,51};
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
	if (FXD_CHART_IS_OFFLINE && AEBD::RefreshRates()) {
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
	if (reson == REASON_CHARTCHANGE || reson == REASON_PARAMETERS || reason == REASON_TEMPLATE || reason == REASON_ACCOUNT ) {return;}

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


// "No trade" model
template<typename T1,typename T2,typename T3,typename T4,typename T5>
class MDL_NoOpenedOrders: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_NoOpenedOrders()
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
		
		if (exist == false) {_callback_(1);} else {_callback_(0);}
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
			AEBD::CopyTime(Symbol, Period, 1, 1, time);
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

// "For each Trade" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10>
class MDL_LoopStartTrades: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 LoopDirection;
	T7 LoopSkip;
	T8 LoopEvery;
	T9 LoopLimit;
	T10 PassEnd;
	/* Static Parameters */
	double trades[][2];
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopStartTrades()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		LoopDirection = (string)"newest-to-oldest";
		LoopSkip = (int)0;
		LoopEvery = (int)0;
		LoopLimit = (int)0;
		PassEnd = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		// used when sorting by profit
		
		int saved_type     = attrTypeInLoop();
		ulong saved_ticket = attrTicketInLoop(); // This ticket number will be reloaded at the end of this loop, so if we are in another overlapping loop - it will continue using it's last used ticket number
		
		int total = TradesTotal();
		int count = 0;
		int skip  = -1;
		int every = 0;
		
		bool get_from_array = false;
		
		int i_start = 0, i_stop = 0, i_inc = 0, i = 0;
		
		if (LoopDirection == "newest-to-oldest")
		{
			i_start = total-1;
			i_stop  = 0;
			i_inc   = -1;
		}
		else if (LoopDirection == "oldest-to-newest")
		{
		  	i_start = 0;
			i_stop  = total-1;
			i_inc   = 1;
		}
		else if (LoopDirection == "profitable-first" || LoopDirection == "profitable-last")
		{
			int last_index = -1;
			get_from_array = true;
			
			// Collect data
			ArrayResize(trades,0);
			int size = 0;
		
			for (int pos=0; pos < total; pos++)
			{
				if (!TradeSelectByIndex(pos, GroupMode, Group, SymbolMode, Symbol, BuysOrSells)) continue;
		
				size++;
				ArrayResize(trades,size);
		
				trades[size-1][0] = AEBD::OrderProfit();
				trades[size-1][1] = (double)AEBD::OrderTicket();
			}
		
			// Sort
			if (size > 0)
			{
				AEBD::ArraySort(trades);
				last_index = size - 1;
			}
		
			// At this moment the array is sorted starting from the least profitable trade
		
			i_start = last_index;
			i_stop  = 0;
			i_inc   = -1;
			
			if (LoopDirection == "profitable-last")
			{
				i_start = 0;
				i_stop  = last_index;
				i_inc   = 1;
			}
		}
		
		i = i_start - i_inc;
		
		while (true)
		{
		  	if (i == i_stop) break;
		  	i = i + i_inc;
			
			// simulate break and continue functionality in loop blocks
			if (FXD_CONTINUE == true)
			{
				FXD_BREAK    = false;
				FXD_CONTINUE = false;
			}
			else if (FXD_BREAK == true)
			{
				FXD_BREAK    = false;
				FXD_CONTINUE = false;
				break;
			}
			
			if (get_from_array)
			{
				if (!TradeSelectByTicket((ulong)trades[i][1])) continue;
			}
			else
			{
				if (!TradeSelectByIndex(i, GroupMode, Group, SymbolMode, Symbol, BuysOrSells)) continue;
			}
		
			skip++;
		
			if (LoopSkip <= skip && (count < LoopLimit || LoopLimit == 0))
			{
				if (LoopEvery > 0)
				{
					every++;
		
					if (every < LoopEvery) {continue;} else {every = 0;}
				}
				
				count++;
				attrTypeInLoop(1);
				attrTicketInLoop(AEBD::OrderTicket());
		
				_callback_(1);
				
				if (count == LoopLimit) break;
			}
			
			if (LoopDirection == "oldest-to-newest")
			{
				// if trade was closed meanwhile
				if (i_stop > TradesTotal()-1)
				{
					i_stop = TradesTotal()-1;
					i--;
				}
			}
		}
		
		attrTypeInLoop(saved_type);
		attrTicketInLoop(saved_ticket); // Reloading Ticket number from the overlapping loop (if any)
		
		FXD_BREAK    = false;
		FXD_CONTINUE = false;
		
		if (
			   (PassEnd == 0)
			|| (PassEnd == 1 && count > 0)
			|| (PassEnd == 2 && count == 0)
		) {
			_callback_(0);
		}
	}
};

// "No trade nearby" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename _T6_,typename T7,typename _T7_,typename T8,typename T9,typename _T9_,typename T10,typename T11,typename T12,typename T13>
class MDL_NoNearbyRunning: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 Time1; virtual _T6_ _Time1_(){return(_T6_)0;
return NULL;
}
	T7 Time2; virtual _T7_ _Time2_(){return(_T7_)0;
return NULL;
}
	T8 ModeBasePrice;
	T9 BasePrice; virtual _T9_ _BasePrice_(){return(_T9_)0;
return NULL;
}
	T10 ModeRange;
	T11 RangePips;
	T12 RangeFraction;
	T13 RangePosition;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_NoNearbyRunning()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		ModeBasePrice = (string)"current";
		ModeRange = (string)"pips";
		RangePips = (double)10.0;
		RangeFraction = (double)0.0010;
		RangePosition = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int next               = true;
		double price           = 0;
		bool use_current_price = (ModeBasePrice == "current");
		
		// prepare the time filters
		datetime t1 = _Time1_();
		datetime t2 = _Time2_();
		
		if (t1 >= TimeCurrent()) t1 = 0;
		
		if (!use_current_price)
		{
			price = _BasePrice_();
		}
		
		for (int index = TradesTotal()-1; index >= 0; index--)
		{
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				// filter by time
				if ((t1 < t2 && AEBD::OrderOpenTime() < t1) || AEBD::OrderOpenTime() > t2)
				{
					continue;
				}
		
				// what is the distance?
				double distance = RangeFraction;
		
				if (ModeRange == "pips") {distance = toDigits(RangePips, Symbol);}
		
				// checking the position
				if (AEBD::OrderType() == 0) // buy?
				{
					if (use_current_price) {price = SymbolInfoDouble(Symbol, SYMBOL_ASK);}
		
					switch (RangePosition)
					{
						case 0: if (price <= (AEBD::OrderOpenPrice() + distance/2) && price >= (AEBD::OrderOpenPrice() - distance/2)) {next = false;} break;
						case 1: if (price <= AEBD::OrderOpenPrice() + distance && price >= AEBD::OrderOpenPrice()) {next = false;} break;
						case 2: if (price <= AEBD::OrderOpenPrice() && price >= AEBD::OrderOpenPrice() - distance) {next = false;} break;
					}
				}
				else
				{
					if (use_current_price) {price = SymbolInfoDouble(Symbol, SYMBOL_BID);}
		
					switch (RangePosition)
					{
						case 0: if (price <= (AEBD::OrderOpenPrice() + distance/2) && price >= (AEBD::OrderOpenPrice() - distance/2)) {next = false;} break;
						case 1: if (price <= AEBD::OrderOpenPrice() && price >= AEBD::OrderOpenPrice() - distance) {next = false;} break;
						case 2: if (price <= AEBD::OrderOpenPrice() + distance && price >= AEBD::OrderOpenPrice()) {next = false;} break;
					}
				}
		
				if (next == false) {break;}
			}
		}
		
		if (next == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "Check trades count" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7>
class MDL_CheckTradesCount: public BlockCalls
{
	public: /* Input Parameters */
	T1 Compare;
	T2 CompareCount;
	T3 GroupMode;
	T4 Group;
	T5 SymbolMode;
	T6 Symbol;
	T7 BuysOrSells;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CheckTradesCount()
	{
		Compare = (string)">";
		CompareCount = (int)3;
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int count = 0;
		
		for (int index = TradesTotal()-1; index >= 0; index--)
		{
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				count++;
			}
		}
		
		if (compare(Compare, count, CompareCount)) {_callback_(1);} else {_callback_(0);}
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
		double avgPrice    = 0;
		double avgLoad     = 0;
		double avgLots     = 0;
		double profitMoney = 0;
		double profitPips  = 0;
		double pipsSum     = 0;
		int tradesCount    = 0;
		
		for (int index = TradesTotal()-1; index >= 0; index--) {
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells)) {
				double OrderOpenPrice = OrderChildOpenPrice();
				double tradeProfit    = NormalizeDouble(AEBD::OrderProfit() + AEBD::OrderSwap() + AEBD::OrderCommission(), 2);
		
				// Filter out individual trades
				if (EachProfitMode == "money") {
					if (compare(EachCompare, tradeProfit, EachProfitAmount)) {/* do nothing */} else {continue;}
				}
				else if (EachProfitMode == "pips") {
					double individual_profit = toPips(AEBD::OrderClosePrice() - OrderOpenPrice, AEBD::OrderSymbol());
		
					if (AEBD::OrderType() == 1) {individual_profit = -1 * individual_profit;}
		
					if (compare(EachCompare, individual_profit, EachProfitAmountPips)) {/* do nothing*/} else {continue;}
				}
		
				profitMoney += tradeProfit;
		
				if (ProfitMode == "pips" || ProfitMode == "pips-sum") {
					if (IsOrderTypeBuy()) {
						pipsSum += toPips(AEBD::OrderClosePrice() - OrderOpenPrice, AEBD::OrderSymbol());
						avgLoad += OrderOpenPrice * AEBD::OrderLots();
						avgLots += AEBD::OrderLots();
					}
					else {
						pipsSum += toPips(OrderOpenPrice - AEBD::OrderClosePrice(), AEBD::OrderSymbol());
						avgLoad -= OrderOpenPrice * AEBD::OrderLots();
						avgLots -= AEBD::OrderLots();
					}
				}
		
				tradesCount += 1;
			}
		}
		
		if (ProfitMode == "pips") {
			avgPrice = 0;
		
			if (avgLots != 0) {
				avgPrice = (avgLoad / avgLots);
			}
		
			if (avgPrice != 0) {
				if (avgLots > 0) {
					profitPips = SymbolInfoDouble(Symbol, SYMBOL_BID) - avgPrice;
				}
				else {
					profitPips = avgPrice - SymbolInfoDouble(Symbol, SYMBOL_ASK);
				}
		
				profitPips = toPips(profitPips, Symbol);
			}
		}
		
		if (
			   (ProfitMode == "money"    && (CompareValues(Compare, profitMoney, ProfitAmount)))
			|| (ProfitMode == "pips"     && (CompareValues(Compare, profitPips, ProfitAmountPips)))
			|| (ProfitMode == "pips-sum" && (CompareValues(Compare, pipsSum, ProfitAmountPips)))
		) {
			_callback_(1);
		}
		else {
			_callback_(0);
		}
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
					datetime time_diff = TimeCurrent() - AEBD::OrderOpenTime();
		
					if (time_diff < 0) {time_diff = 0;} // this actually happens sometimes
		
					if (time_diff >= 60 * OrderMinutes)
					{
						if (CloseTrade(AEBD::OrderTicket(), Slippage, ArrowColor))
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

// "Modify Variables" model
template<typename T1,typename T2,typename _T2_,typename T3,typename T4,typename _T4_,typename T5,typename T6,typename _T6_,typename T7,typename T8,typename _T8_,typename T9,typename T10,typename _T10_>
class MDL_ModifyVariables: public BlockCalls
{
	public: /* Input Parameters */
	T1 Variable1;
	T2 Value1; virtual _T2_ _Value1_(){return(_T2_)0;
return NULL;
}
	T3 Variable2;
	T4 Value2; virtual _T4_ _Value2_(){return(_T4_)0;
return NULL;
}
	T5 Variable3;
	T6 Value3; virtual _T6_ _Value3_(){return(_T6_)0;
return NULL;
}
	T7 Variable4;
	T8 Value4; virtual _T8_ _Value4_(){return(_T8_)0;
return NULL;
}
	T9 Variable5;
	T10 Value5; virtual _T10_ _Value5_(){return(_T10_)0;
return NULL;
}
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ModifyVariables()
	{
		Variable1 = (int)0;
		Variable2 = (int)0;
		Variable3 = (int)0;
		Variable4 = (int)0;
		Variable5 = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		// nothing here, because the actual code is generated in the generator
		// _Value1_()
		// _Value2_()
		// _Value3_()
		// _Value4_()
		// _Value5_()
		_callback_(1);
	}
};

// "Bucket of Trades" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_BucketSelectOpened: public BlockCalls
{
	public: /* Input Parameters */
	T1 BucketID;
	T2 GroupMode;
	T3 Group;
	T4 SymbolMode;
	T5 Symbol;
	T6 BuysOrSells;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_BucketSelectOpened()
	{
		BucketID = (color)clrGray;
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int list[];
		double sortexp[];
		int s = 0;
		
		int i_start = TradesTotal()-1;
		int i_stop  = 0;
		int i_inc   = -1;
		
		int pool = 0;
		int i    = i_start - i_inc;
		
		while (true)
		{
			if (i == i_stop) {break;}
			i = i + i_inc;	
		
			if (TradeSelectByIndex(i, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				ArrayResize(list, s+1);
		
				list[s] = (int)AEBD::OrderTicket();
				s++;
			}
		}
		
		BucketsOfOrders(BucketID, list, pool, true);
		
		if (s > 0) {_callback_(1);} else {_callback_(0);}
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
		
		v::Cut_Loss_Percent_BS = formula(compare, lo, ro)/100;
		
		_callback_(1);
	}
};

// "Pass" model
class MDL_Pass: public BlockCalls
{
	virtual void _callback_(int r) {return;}

	public: /* The main method */
	virtual void _execute_()
	{
		_callback_(1);
	}
};

// "Comment" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename _T16_,typename T17,typename T18,typename T19,typename T20,typename _T20_,typename T21,typename T22,typename T23,typename T24,typename _T24_,typename T25,typename T26,typename T27,typename T28,typename _T28_,typename T29,typename T30,typename T31,typename T32,typename _T32_,typename T33,typename T34,typename T35,typename T36,typename _T36_,typename T37,typename T38,typename T39,typename T40,typename _T40_,typename T41,typename T42,typename T43,typename T44,typename _T44_,typename T45,typename T46>
class MDL_CommentEx: public BlockCalls
{
	public: /* Input Parameters */
	T1 Title;
	T2 ObjChartSubWindow;
	T3 ObjCorner;
	T4 ObjX;
	T5 ObjY;
	T6 ObjTitleFont;
	T7 ObjTitleFontColor;
	T8 ObjTitleFontSize;
	T9 ObjLabelsFont;
	T10 ObjLabelsFontColor;
	T11 ObjLabelsFontSize;
	T12 ObjFont;
	T13 ObjFontColor;
	T14 ObjFontSize;
	T15 Label1;
	T16 Value1; virtual _T16_ _Value1_(){return(_T16_)0;
return NULL;
}
	T17 FormatNumber1;
	T18 FormatTime1;
	T19 Label2;
	T20 Value2; virtual _T20_ _Value2_(){return(_T20_)0;
return NULL;
}
	T21 FormatNumber2;
	T22 FormatTime2;
	T23 Label3;
	T24 Value3; virtual _T24_ _Value3_(){return(_T24_)0;
return NULL;
}
	T25 FormatNumber3;
	T26 FormatTime3;
	T27 Label4;
	T28 Value4; virtual _T28_ _Value4_(){return(_T28_)0;
return NULL;
}
	T29 FormatNumber4;
	T30 FormatTime4;
	T31 Label5;
	T32 Value5; virtual _T32_ _Value5_(){return(_T32_)0;
return NULL;
}
	T33 FormatNumber5;
	T34 FormatTime5;
	T35 Label6;
	T36 Value6; virtual _T36_ _Value6_(){return(_T36_)0;
return NULL;
}
	T37 FormatNumber6;
	T38 FormatTime6;
	T39 Label7;
	T40 Value7; virtual _T40_ _Value7_(){return(_T40_)0;
return NULL;
}
	T41 FormatNumber7;
	T42 FormatTime7;
	T43 Label8;
	T44 Value8; virtual _T44_ _Value8_(){return(_T44_)0;
return NULL;
}
	T45 FormatNumber8;
	T46 FormatTime8;
	/* Static Parameters */
	bool initialized;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CommentEx()
	{
		Title = (string)"Comment Message";
		ObjChartSubWindow = (string)"";
		ObjCorner = (int)CORNER_LEFT_UPPER;
		ObjX = (int)5;
		ObjY = (int)24;
		ObjTitleFont = (string)"Georgia";
		ObjTitleFontColor = (color)clrGold;
		ObjTitleFontSize = (int)13;
		ObjLabelsFont = (string)"Verdana";
		ObjLabelsFontColor = (color)clrDarkGray;
		ObjLabelsFontSize = (int)10;
		ObjFont = (string)"Verdana";
		ObjFontColor = (color)clrWhite;
		ObjFontSize = (int)10;
		Label1 = (string)"";
		FormatNumber1 = (int)EMPTY_VALUE;
		FormatTime1 = (int)EMPTY_VALUE;
		Label2 = (string)"";
		FormatNumber2 = (int)EMPTY_VALUE;
		FormatTime2 = (int)EMPTY_VALUE;
		Label3 = (string)"";
		FormatNumber3 = (int)EMPTY_VALUE;
		FormatTime3 = (int)EMPTY_VALUE;
		Label4 = (string)"";
		FormatNumber4 = (int)EMPTY_VALUE;
		FormatTime4 = (int)EMPTY_VALUE;
		Label5 = (string)"";
		FormatNumber5 = (int)EMPTY_VALUE;
		FormatTime5 = (int)EMPTY_VALUE;
		Label6 = (string)"";
		FormatNumber6 = (int)EMPTY_VALUE;
		FormatTime6 = (int)EMPTY_VALUE;
		Label7 = (string)"";
		FormatNumber7 = (int)EMPTY_VALUE;
		FormatTime7 = (int)EMPTY_VALUE;
		Label8 = (string)"";
		FormatNumber8 = (int)EMPTY_VALUE;
		FormatTime8 = (int)EMPTY_VALUE;
		/* Static Parameters (initial value) */
		initialized =  false;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (!MQLInfoInteger(MQL_TESTER) || MQLInfoInteger(MQL_VISUAL_MODE))
		{
			
		
			long ObjChartID = 0;
			int ObjAnchor   = ANCHOR_LEFT;
		
			if (ObjCorner == CORNER_RIGHT_UPPER || ObjCorner == CORNER_RIGHT_LOWER)
			{
				ObjAnchor = ANCHOR_RIGHT;
			}
		
			string namebase = "fxd_cmnt_" + __block_user_number;
		
			int subwindow = WindowFindVisible(ObjChartID, ObjChartSubWindow);
		
			if (subwindow >= 0)
			{
				//-- draw comment title
				if ((string)Title != "")
				{
					string nametitle = namebase;
		
					if(AEBD::ObjectFind(ObjChartID, nametitle) < 0)
					{
						if (!AEBD::ObjectCreate(ObjChartID, nametitle, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", AEBD::GetLastError());
						}
						else
						{
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_FONTSIZE, (int)(ObjTitleFontSize));
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_COLOR, ObjTitleFontColor);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_BACK, 0);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_SELECTABLE, 1);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_SELECTED, 0);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_HIDDEN, 1);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_CORNER, ObjCorner);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_ANCHOR, ObjAnchor);
		
							AEBD::ObjectSetString(ObjChartID, nametitle, OBJPROP_FONT, ObjTitleFont);
		
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_XDISTANCE, ObjX);
							AEBD::ObjectSetInteger(ObjChartID, nametitle, OBJPROP_YDISTANCE, ObjY);
						}
					}
					else
					{
						ObjX = (int)AEBD::ObjectGetInteger(ObjChartID, nametitle, OBJPROP_XDISTANCE);
						ObjY = (int)AEBD::ObjectGetInteger(ObjChartID, nametitle, OBJPROP_YDISTANCE);
					}
		
					AEBD::ObjectSetString(ObjChartID, nametitle, OBJPROP_TEXT, (string)Title);
		
					ObjY = (int)(ObjY + ObjTitleFontSize / 3);
				}
		
				//-- draw comment rows
				for (int i = 1; i <= 8; i++)
				{
					string text    = "";
					string textlbl = "";
		
					switch(i)
					{
						case 1:
						{
							if (Label1 != "")
							{
								textlbl = Label1;
								text    = FormatValueForPrinting(_Value1_(), FormatNumber1, FormatTime1);
							}
		
							break;
						}
						case 2:
						{
							if (Label2 != "")
							{
								textlbl = Label2;
								text    = FormatValueForPrinting(_Value2_(), FormatNumber2, FormatTime2);
							}
		
							break;
						}
						case 3:
						{
							if (Label3 != "")
							{
								textlbl = Label3;
								text    = FormatValueForPrinting(_Value3_(), FormatNumber3, FormatTime3);
							}
		
							break;
						}
						case 4:
						{
							if (Label4 != "")
							{
								textlbl = Label4;
								text    = FormatValueForPrinting(_Value4_(), FormatNumber4, FormatTime4);
							}
		
							break;
						}
						case 5:
						{
							if (Label5 != "")
							{
								textlbl = Label5;
								text    = FormatValueForPrinting(_Value5_(), FormatNumber5, FormatTime5);
							}
		
							break;
						}
						case 6:
						{
							if (Label6 != "")
							{
								textlbl = Label6;
								text    = FormatValueForPrinting(_Value6_(), FormatNumber6, FormatTime6);
							}
		
							break;
						}
						case 7:
						{
							if (Label7 != "")
							{
								textlbl = Label7;
								text    = FormatValueForPrinting(_Value7_(), FormatNumber7, FormatTime7);
							}
		
							break;
						}
						case 8:
						{
							if (Label8 != "")
							{
								textlbl = Label8;
								text    = FormatValueForPrinting(_Value8_(), FormatNumber8, FormatTime8);
							}
		
							break;
						}
				   }
		
					string name    = namebase + "_" + (string)i;
					string namelbl = name + "_l";
		
					if (textlbl == "")
					{
						if (!initialized)
						{
							//-- pre-delete
							AEBD::ObjectDelete(ObjChartID, namelbl);
							AEBD::ObjectDelete(ObjChartID, name);
						}
		
						continue;
					}
		
					//-- draw initial objects
					if (AEBD::ObjectFind(ObjChartID, name) < 0)
					{
						if (textlbl == "")
						{
							continue;
						}
		
						if (AEBD::ObjectCreate(ObjChartID, namelbl, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_CORNER, ObjCorner);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_ANCHOR, ObjAnchor);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_BACK, 0);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_SELECTABLE, 0);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_SELECTED, 0);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_HIDDEN, 1);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_FONTSIZE, ObjLabelsFontSize);
							AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_COLOR, ObjLabelsFontColor);
							AEBD::ObjectSetString(ObjChartID, namelbl, OBJPROP_FONT, ObjLabelsFont);
						}
						else
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", AEBD::GetLastError());
						}
		
						if (AEBD::ObjectCreate(ObjChartID, name, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_CORNER, ObjCorner);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_ANCHOR, ObjAnchor);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_BACK, 0);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_SELECTABLE, 0);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_SELECTED, 0);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_HIDDEN, 1);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_FONTSIZE, ObjFontSize);
							AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_COLOR, ObjFontColor);
							AEBD::ObjectSetString(ObjChartID, name, OBJPROP_FONT, ObjFont);
						}
						else
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", AEBD::GetLastError());
						}
					}
					else
					{
						if (textlbl == "")
						{
							AEBD::ObjectDelete(ObjChartID, namelbl);
							AEBD::ObjectDelete(ObjChartID, name);
							continue;
						}
					}
		
					ObjY  = (int)(ObjY + ObjFontSize + ObjFontSize/2);
		
					//-- update label objects
					AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_XDISTANCE, ObjX);
					AEBD::ObjectSetInteger(ObjChartID, namelbl, OBJPROP_YDISTANCE, ObjY);
					AEBD::ObjectSetString(ObjChartID, namelbl, OBJPROP_TEXT, (string)textlbl);
		
					//-- update value objects
					int x        = 0;
					int xsizelbl = (int)AEBD::ObjectGetInteger(ObjChartID, namelbl, OBJPROP_XSIZE);
		
					if (xsizelbl == 0) {
						//-- when the object is newly created, it returns 0 for XSIZE and YSIZE, so here we will trick it somehow
						xsizelbl = (int)(StringLen((string)textlbl) * ObjFontSize / 1.5 + ObjFontSize / 2);
					}
		
					x = ObjX + (xsizelbl + ObjFontSize/2);
		
					AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_XDISTANCE, x);
					AEBD::ObjectSetInteger(ObjChartID, name, OBJPROP_YDISTANCE, ObjY);
					AEBD::ObjectSetString(ObjChartID, name, OBJPROP_TEXT, (string)text);
				}
				
				ChartRedraw();
			}
		
			initialized = true;
		}
		
		_callback_(1);
	}
};


//------------------------------------------------------------------------------------------------------------------------

// "Moving Average" model
class MDLIC_indicators_iMA
{
	public: /* Input Parameters */
	int MAperiod;
	int MAshift;
	ENUM_MA_METHOD MAmethod;
	ENUM_APPLIED_PRICE AppliedPrice;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_indicators_iMA()
	{
		MAperiod = (int)14;
		MAshift = (int)0;
		MAmethod = (ENUM_MA_METHOD)MODE_SMA;
		AppliedPrice = (ENUM_APPLIED_PRICE)PRICE_CLOSE;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		return AEBD::iMA(Symbol, Period, MAperiod, MAshift, MAmethod, AppliedPrice, Shift + FXD_MORE_SHIFT);
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
	datetime TimeValue;
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
		TimeValue = (datetime)0;
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
	}

	public: /* The main method */
	datetime _execute_()
	{
		// this is static for speed reasons
		
		if (TimeMarket == "") TimeMarket = Symbol();
		
		if (ModeTime == 0)
		{
			     if (TimeSource == 0) {retval = TimeCurrent();}
			else if (TimeSource == 1) {retval = TimeLocal() + (TimeCurrent() - TimeLocal());}
			else if (TimeSource == 2) {retval = TimeGMT() + (TimeCurrent() - TimeGMT());}
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
			AEBD::CopyTime(TimeMarket,TimeCandleTimeframe,TimeCandleID,1,Time);
			retval = Time[0];
		}
		else if (ModeTime == 4)
		{
			retval = TimeValue;
		}
		
		if (ModeTimeShift > 0)
		{
			int sh = 1;
		
			if (ModeTimeShift == 1) {sh = -1;}
		
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
					year   = AEBD::TimeYear(retval);
					month  = AEBD::TimeMonth(retval);
					day    = AEBD::TimeDay(retval);
					hour   = AEBD::TimeHour(retval);
					minute = AEBD::TimeMinute(retval);
					second = AEBD::TimeSeconds(retval);
				}
		
				year  = year + TimeShiftYears * sh;
				month = month + TimeShiftMonths * sh;
		
				if (month < 0) {month = 12 - month;}
				else if (month > 12) {month = month - 12;}
		
				retval = StringToTime(IntegerToString(year)+"."+IntegerToString(month)+"."+IntegerToString(day)+" "+IntegerToString(hour)+":"+IntegerToString(minute)+":"+IntegerToString(second));
			}
		
			retval = retval + (sh * ((604800 * TimeShiftWeeks) + SecondsFromComponents(TimeShiftDays, TimeShiftHours, TimeShiftMinutes, TimeShiftSeconds)));
		
			if (TimeSkipWeekdays == true)
			{
				int weekday = AEBD::TimeDayOfWeek(retval);
		
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
		
		
		return (datetime)retval;
	}
};

// "Candle" model
class MDLIC_candles_candles
{
	public: /* Input Parameters */
	string iOHLC;
	string ModeCandleFindBy;
	int CandleID;
	string TimeStamp;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_candles_candles()
	{
		iOHLC = (string)"iClose";
		ModeCandleFindBy = (string)"id";
		CandleID = (int)0;
		TimeStamp = (string)"00:00";
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}

	public: /* The main method */
	double _execute_()
	{
		int digits = (int)SymbolInfoInteger(Symbol, SYMBOL_DIGITS);
		
		double O[];
		double H[];
		double L[];
		double C[]; 
		long cTickVolume[];
		long cRealVolume[];
		datetime T[];
		
		double retval = EMPTY_VALUE;
		
		// candle's id will change, so we don't want to mess with the variable CandleID;
		int cID = CandleID;
		
		if (ModeCandleFindBy == "time")
		{
			cID = iCandleID(Symbol, Period, StringToTimeEx(TimeStamp, "server"));
		}
		
		cID = cID + FXD_MORE_SHIFT;
		
		//-- the common levels ----------------------------------------------------
		if (iOHLC == "iOpen")
		{
			if (AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1) retval = O[0];
		}
		else if (iOHLC == "iHigh")
		{
			if (AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1) retval = H[0];
		}
		else if (iOHLC == "iLow")
		{
			if (AEBD::CopyLow(Symbol,Period,cID,1,L) > -1) retval = L[0];
		}
		else if (iOHLC == "iClose")
		{
			if (AEBD::CopyClose(Symbol,Period,cID,1,C) > -1) retval = C[0];
		}
		
		//-- non-price values  ----------------------------------------------------
		else if (iOHLC == "iVolume" || iOHLC == "iTickVolume")
		{
			if (AEBD::CopyTickVolume(Symbol,Period,cID,1,cTickVolume) > -1) retval = (double)cTickVolume[0];
			
			return retval;
		}
		else if (iOHLC == "iRealVolume")
		{
			if (CopyRealVolume(Symbol,Period,cID,1,cRealVolume) > -1) retval = (double)cRealVolume[0];
			
			return retval;
		}
		else if (iOHLC == "iTime")
		{
			if (AEBD::CopyTime(Symbol,Period,cID,1,T) > -1) retval = (double)T[0];
			
			return retval;
		}
		
		//-- simple calculations --------------------------------------------------
		else if (iOHLC == "iMedian")
		{
			if (
				   AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
			)
			{
				retval = ((L[0]+H[0])/2);
			}
		}
		else if (iOHLC == "iTypical")
		{
			if (
				   AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = ((L[0]+H[0]+C[0])/3);
			}
		}
		else if (iOHLC == "iAverage")
		{
			if (
				   AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = ((L[0]+H[0]+C[0]+C[0])/4);
			}
		}
		
		//-- more complex levels --------------------------------------------------
		else if (iOHLC=="iTotal")
		{
			if (
				   AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = toPips(MathAbs(H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBody")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = toPips(MathAbs(C[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iUpperWick")
		{
			if (
				   AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = (C[0] > O[0]) ? toPips(MathAbs(H[0]-C[0]),Symbol) : toPips(MathAbs(H[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBottomWick")
		{
			if (
				   AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = (C[0] > O[0]) ? toPips(MathAbs(O[0]-L[0]),Symbol) : toPips(MathAbs(C[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iGap")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID+1,1,C) > -1
			)
			{
				retval = toPips(MathAbs(O[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullTotal")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullBody")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((C[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullUpperWick")
		{
			if (
				   AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((H[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullBottomWick")
		{
			if (
				   AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((O[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearTotal")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearBody")
		{
			if (
				   AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((O[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearUpperWick")
		{
			if (
				   AEBD::CopyHigh(Symbol,Period,cID,1,H) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((H[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearBottomWick")
		{
			if (
				   AEBD::CopyLow(Symbol,Period,cID,1,L) > -1
				&& AEBD::CopyOpen(Symbol,Period,cID,1,O) > -1
				&& AEBD::CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((C[0]-L[0]),Symbol);
			}
		}
		
		return NormalizeDouble(retval, digits);
	}
};

// "Open Price" model
class MDLIC_inloop_OrderOpenPrice
{
	public: /* Input Parameters */
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_inloop_OrderOpenPrice()
	{
	}

	public: /* The main method */
	double _execute_()
	{
		return AEBD::OrderOpenPrice();
	}
};

// "Ask, Bid, Mid" model
class MDLIC_prices_prices
{
	public: /* Input Parameters */
	string Price;
	int TickID;
	string Symbol;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_prices_prices()
	{
		Price = (string)"ASK";
		TickID = (int)0;
		Symbol = (string)CurrentSymbol();
	}

	public: /* The main method */
	double _execute_()
	{
		int digits = (int)SymbolInfoInteger(Symbol, SYMBOL_DIGITS);
		
		double retval = 0;
		int tID       = TickID + FXD_MORE_SHIFT;
		
		     if (Price == "ASK")      {retval = TicksData(Symbol,SYMBOL_ASK,tID);}
		else if (Price == "BID")      {retval = TicksData(Symbol,SYMBOL_BID,tID);}
		else if (Price == "MID")      {retval = ((TicksData(Symbol,SYMBOL_ASK,tID)+TicksData(Symbol,SYMBOL_BID,tID))/2);}
		else if (Price == "BIDHIGH")  {retval = SymbolInfoDouble(Symbol,SYMBOL_BIDHIGH);}
		else if (Price == "BIDLOW")   {retval = SymbolInfoDouble(Symbol,SYMBOL_BIDLOW);}
		else if (Price == "ASKHIGH")  {retval = SymbolInfoDouble(Symbol,SYMBOL_ASKHIGH);}
		else if (Price == "ASKLOW")   {retval = SymbolInfoDouble(Symbol,SYMBOL_ASKLOW);}
		else if (Price == "LAST")     {retval = SymbolInfoDouble(Symbol,SYMBOL_LAST);}
		else if (Price == "LASTHIGH") {retval = SymbolInfoDouble(Symbol,SYMBOL_LASTHIGH);}
		else if (Price == "LASTLOW")  {retval = SymbolInfoDouble(Symbol,SYMBOL_LASTLOW);}
		
		return NormalizeDouble(retval, digits);
	}
};

// "Bucket" model
class MDLIC_bucket_bucket_1
{
	public: /* Input Parameters */
	color BucketID;
	int Attribute;
	int PriceMode;
	int ReturnMode;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_bucket_bucket_1()
	{
		BucketID = (color)clrNONE;
		Attribute = (int)1;
		PriceMode = (int)0;
		ReturnMode = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		//-- various local variables
		double retval = 0;
		int normalize = -1;
		int i, size;
		double values[];
		
		//-- get collected tickets into an array
		int tickets[];
		int pool;
		size = BucketsOfOrders(BucketID, tickets, pool);
		
		//-- but if the bucket is empty -> quit
		if (size == 0) {
			if (Attribute == 0) {return 0;}
			return EMPTY_VALUE;
		}
		
		ArrayResize(values, ArraySize(tickets));
		
		for (i=0; i<size; i++)
		{
		   if (!AEBD::OrderSelect(tickets[i], SELECT_BY_TICKET, pool)) {continue;}
			if (pool == MODE_TRADES && AEBD::OrderCloseTime() > 0) {continue;}
		  	
			int z=1;
		  	if (!(z*++z-1)) {continue;}
		   
		   switch (Attribute)
		  	{
			 	case 0: // COUNT
			  	{
				  	values[i] = 1;
				  	break;
			  	}
		   	case 1: // PROFIT
		   	{
					normalize = 2;
		   	   values[i] = AEBD::OrderProfit()+AEBD::OrderCommission()+AEBD::OrderSwap();
				  	break;
		   	}
		   	case 2: // VOLUME_CURRENT
			   {
		   	   values[i] = AEBD::OrderLots();
				  	break;
		   	}
		   	case 3: // VOLUME_INITIAL
		   	{
		   	   values[i] = attrLotsInitial();
				  	break;
		   	}
		   	case 4: // SL
			   {
		   	   if (PriceMode == 0)
		   	   {
		   	      values[i] = attrStopLoss();
		   	   }
		      	if (PriceMode == 1)
		      	{
		      	   values[i] = toPips(MathAbs(AEBD::OrderOpenPrice()-attrStopLoss()), AEBD::OrderSymbol());
		      	}
		      	else if (PriceMode == 2)
		      	{
		      	   values[i] = MathAbs(AEBD::OrderOpenPrice()-attrStopLoss());
		      	}
				  	break;
		   	}
		   	case 5: // TP
		   	{
		   	   if (PriceMode == 0)
		   	   {
		   	      values[i] = attrTakeProfit();
		   	   }
		   	   if (PriceMode == 1)
		   	   {
		   	      values[i] = toPips(MathAbs(AEBD::OrderOpenPrice()-attrTakeProfit()), AEBD::OrderSymbol());
		   	   }
		   	   else if (PriceMode == 2)
		   	   {
		   	      values[i] = MathAbs(AEBD::OrderOpenPrice()-attrTakeProfit());
		   	   }
				  	break;
		   	}
		   	case 6: // PRICE_OPEN
		   	{
					normalize = (int)SymbolInfoInteger(AEBD::OrderSymbol(), SYMBOL_DIGITS);
		   	   values[i] = NormalizeDouble(AEBD::OrderOpenPrice(), normalize);
				  	break;
		   	}
		   	case 7: // PRICE_CURRENT
		   	{
					normalize = (int)SymbolInfoInteger(AEBD::OrderSymbol(), SYMBOL_DIGITS);
		   	   values[i] = NormalizeDouble(AEBD::OrderClosePrice(), normalize);
				  	break;
		   	}
			 	default :
			  	{
				  	break;
				}
			}
		}
		
		//-- Sum, Average, Min, Max
		
		double tmp = 0;
		
		switch(ReturnMode)
		{
		  //.. sum
		   case 0:
		   {
		      for (i=0; i<size; i++)
		      {
		         retval += values[i];
		      }
		      break;
		   }
			//.. average
		   case 1:
		   {
				double total = 0;
		      for (i=0; i<size; i++)
		      {
		         total += values[i];
		      }
		      retval = total/size;
		      break;
		   }
		  	//.. max
		   case 2:
		   {
		      retval = -EMPTY_VALUE;
		      for (i=0; i<size; i++)
		      {
		         tmp = values[i];
		         if (tmp > retval) {retval = tmp;}
		      }
		      break;
			}
		  	//.. min
		   case 3:
		   {
		      retval = EMPTY_VALUE;
		      for (i=0; i<size; i++)
		      {
		         tmp = values[i];
		         if (tmp < retval) {retval = tmp;}
		      }
		      break;
		   }
		}
		
		if (normalize != -1) {retval = NormalizeDouble(retval, normalize);}
		
		return retval;
	}
};

// "Bucket" model
class MDLIC_bucket_bucket_2
{
	public: /* Input Parameters */
	color BucketID;
	int Attribute;
	int PriceMode;
	int ReturnMode;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_bucket_bucket_2()
	{
		BucketID = (color)clrNONE;
		Attribute = (int)1;
		PriceMode = (int)0;
		ReturnMode = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		//-- various local variables
		double retval = 0;
		int normalize = -1;
		int i, size;
		double values[];
		
		//-- get collected tickets into an array
		int tickets[];
		int pool;
		size = BucketsOfOrders(BucketID, tickets, pool);
		
		//-- but if the bucket is empty -> quit
		if (size == 0) {
			if (Attribute == 0) {return 0;}
			return EMPTY_VALUE;
		}
		
		ArrayResize(values, ArraySize(tickets));
		
		for (i=0; i<size; i++)
		{
		   if (!AEBD::OrderSelect(tickets[i], SELECT_BY_TICKET, pool)) {continue;}
			if (pool == MODE_TRADES && AEBD::OrderCloseTime() > 0) {continue;}
		  	
			int z=1;
		  	if (!(z*++z-1)) {continue;}
		   
		   switch (Attribute)
		  	{
			 	case 0: // COUNT
			  	{
				  	values[i] = 1;
				  	break;
			  	}
		   	case 1: // PROFIT
		   	{
					normalize = 2;
		   	   values[i] = AEBD::OrderProfit()+AEBD::OrderCommission()+AEBD::OrderSwap();
				  	break;
		   	}
		   	case 2: // VOLUME_CURRENT
			   {
		   	   values[i] = AEBD::OrderLots();
				  	break;
		   	}
		   	case 3: // VOLUME_INITIAL
		   	{
		   	   values[i] = attrLotsInitial();
				  	break;
		   	}
		   	case 4: // SL
			   {
		   	   if (PriceMode == 0)
		   	   {
		   	      values[i] = attrStopLoss();
		   	   }
		      	if (PriceMode == 1)
		      	{
		      	   values[i] = toPips(MathAbs(AEBD::OrderOpenPrice()-attrStopLoss()), AEBD::OrderSymbol());
		      	}
		      	else if (PriceMode == 2)
		      	{
		      	   values[i] = MathAbs(AEBD::OrderOpenPrice()-attrStopLoss());
		      	}
				  	break;
		   	}
		   	case 5: // TP
		   	{
		   	   if (PriceMode == 0)
		   	   {
		   	      values[i] = attrTakeProfit();
		   	   }
		   	   if (PriceMode == 1)
		   	   {
		   	      values[i] = toPips(MathAbs(AEBD::OrderOpenPrice()-attrTakeProfit()), AEBD::OrderSymbol());
		   	   }
		   	   else if (PriceMode == 2)
		   	   {
		   	      values[i] = MathAbs(AEBD::OrderOpenPrice()-attrTakeProfit());
		   	   }
				  	break;
		   	}
		   	case 6: // PRICE_OPEN
		   	{
					normalize = (int)SymbolInfoInteger(AEBD::OrderSymbol(), SYMBOL_DIGITS);
		   	   values[i] = NormalizeDouble(AEBD::OrderOpenPrice(), normalize);
				  	break;
		   	}
		   	case 7: // PRICE_CURRENT
		   	{
					normalize = (int)SymbolInfoInteger(AEBD::OrderSymbol(), SYMBOL_DIGITS);
		   	   values[i] = NormalizeDouble(AEBD::OrderClosePrice(), normalize);
				  	break;
		   	}
			 	default :
			  	{
				  	break;
				}
			}
		}
		
		//-- Sum, Average, Min, Max
		
		double tmp = 0;
		
		switch(ReturnMode)
		{
		  //.. sum
		   case 0:
		   {
		      for (i=0; i<size; i++)
		      {
		         retval += values[i];
		      }
		      break;
		   }
			//.. average
		   case 1:
		   {
				double total = 0;
		      for (i=0; i<size; i++)
		      {
		         total += values[i];
		      }
		      retval = total/size;
		      break;
		   }
		  	//.. max
		   case 2:
		   {
		      retval = -EMPTY_VALUE;
		      for (i=0; i<size; i++)
		      {
		         tmp = values[i];
		         if (tmp > retval) {retval = tmp;}
		      }
		      break;
			}
		  	//.. min
		   case 3:
		   {
		      retval = EMPTY_VALUE;
		      for (i=0; i<size; i++)
		      {
		         tmp = values[i];
		         if (tmp < retval) {retval = tmp;}
		      }
		      break;
		   }
		}
		
		if (normalize != -1) {retval = NormalizeDouble(retval, normalize);}
		
		return retval;
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

// "Equity" model
class MDLIC_account_AccountEquity
{
	public: /* Input Parameters */
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_account_AccountEquity()
	{
	}

	public: /* The main method */
	double _execute_()
	{
		return NormalizeDouble(AccountInfoDouble(ACCOUNT_EQUITY), 2);
	}
};

// "Text" model
class MDLIC_text_text
{
	public: /* Input Parameters */
	string Text;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_text_text()
	{
		Text = (string)"sample text";
	}

	public: /* The main method */
	string _execute_()
	{
		return Text;
	}
};


//------------------------------------------------------------------------------------------------------------------------

// Block 1 (No trade(Buy))
class Block0: public MDL_NoOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block0() {
		__block_number = 0;
		__block_user_number = "1";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {1};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[1].run(0);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 2 (MA -T1(Buy))
class Block1: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block1() {
		__block_number = 1;
		__block_user_number = "2";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {2};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_1;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[2].run(1);
		}
	}
};

// Block 3 (MA -T2(Buy))
class Block2: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block2() {
		__block_number = 2;
		__block_user_number = "3";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {3};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_2;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_2;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[3].run(2);
		}
	}
};

// Block 4 (MA -T3 Signal(Buy))
class Block3: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block3() {
		__block_number = 3;
		__block_user_number = "4";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {4};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "x>";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_3_Signal;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_3_Signal;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[4].run(3);
		}
	}
};

// Block 5 (Once per bar)
class Block4: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block4() {
		__block_number = 4;
		__block_user_number = "5";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {5};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[5].run(4);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 6 (Buy now)
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
		VolumeSize = (double)c::Lot;
		TakeProfitPips = (double)c::TP_pips;
		MyComment = (string)c::EA_Name;
		ArrowColorBuy = (color)clrBlue;
	}
};

// Block 7 (No trade(Sell))
class Block6: public MDL_NoOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block6() {
		__block_number = 6;
		__block_user_number = "7";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {7};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[7].run(6);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 8 (MA -T1(Sell))
class Block7: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block7() {
		__block_number = 7;
		__block_user_number = "8";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {8};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_1;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[8].run(7);
		}
	}
};

// Block 9 (MA -T2(Sell))
class Block8: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block8() {
		__block_number = 8;
		__block_user_number = "9";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {9};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_2;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_2;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[9].run(8);
		}
	}
};

// Block 10 (MA -T3 Signal(Sell))
class Block9: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block9() {
		__block_number = 9;
		__block_user_number = "10";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {10};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "x<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_3_Signal;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_3_Signal;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[10].run(9);
		}
	}
};

// Block 11 (Once per bar)
class Block10: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block10() {
		__block_number = 10;
		__block_user_number = "11";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {11};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[11].run(10);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 12 (Sell now)
class Block11: public MDL_SellNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block11() {
		__block_number = 11;
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
		VolumeSize = (double)c::Lot;
		TakeProfitPips = (double)c::TP_pips;
		MyComment = (string)c::EA_Name;
		ArrowColorSell = (color)clrRed;
	}
};

// Block 13 (If trade(Buy))
class Block12: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block12() {
		__block_number = 12;
		__block_user_number = "13";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {13};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
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

// Block 14 (For each Trade(Loop Buy))
class Block13: public MDL_LoopStartTrades<string,string,string,string,string,string,int,int,int,int>
{

	public: /* Constructor */
	Block13() {
		__block_number = 13;
		__block_user_number = "14";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {14};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
		LoopLimit = 1;
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
	}
};

// Block 15 (Condition)
class Block14: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_inloop_OrderOpenPrice,double,int>
{

	public: /* Constructor */
	Block14() {
		__block_number = 14;
		__block_user_number = "15";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {15};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[15].run(14);
		}
	}
};

// Block 16 (No trade nearby(Buy))
class Block15: public MDL_NoNearbyRunning<string,string,string,string,string,MDLIC_value_time,datetime,MDLIC_value_time,datetime,string,MDLIC_prices_prices,double,string,double,double,int>
{

	public: /* Constructor */
	Block15() {
		__block_number = 15;
		__block_user_number = "16";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {16};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Custom methods */
	virtual datetime _Time1_() {return Time1._execute_();}
	virtual datetime _Time2_() {return Time2._execute_();}
	virtual double _BasePrice_() {
		BasePrice.Symbol = CurrentSymbol();

		return BasePrice._execute_();
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
		RangePips = (double)c::Nearby_pips;
	}
};

// Block 17 (MA -T1(Buy))
class Block16: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block16() {
		__block_number = 16;
		__block_user_number = "17";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {17};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_1;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[17].run(16);
		}
	}
};

// Block 18 (MA -T2(Buy))
class Block17: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block17() {
		__block_number = 17;
		__block_user_number = "18";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {18};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_2;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_2;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[18].run(17);
		}
	}
};

// Block 19 (MA -T3 Signal(Buy))
class Block18: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block18() {
		__block_number = 18;
		__block_user_number = "19";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {19};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "x>";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_3_Signal;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_3_Signal;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[19].run(18);
		}
	}
};

// Block 20 (Once per bar)
class Block19: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block19() {
		__block_number = 19;
		__block_user_number = "20";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {20};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[20].run(19);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 21 (Buy now)
class Block20: public MDL_BuyNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block20() {
		__block_number = 20;
		__block_user_number = "21";
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
		VolumeSize = (double)c::Lot;
		MyComment = (string)c::EA_Name;
		ArrowColorBuy = (color)clrBlue;
	}
};

// Block 22 (If trade(Sell))
class Block21: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block21() {
		__block_number = 21;
		__block_user_number = "22";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {22};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[22].run(21);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 23 (For each Trade(Loop Sell))
class Block22: public MDL_LoopStartTrades<string,string,string,string,string,string,int,int,int,int>
{

	public: /* Constructor */
	Block22() {
		__block_number = 22;
		__block_user_number = "23";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {23};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
		LoopLimit = 1;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[23].run(22);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 24 (Condition)
class Block23: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_inloop_OrderOpenPrice,double,int>
{

	public: /* Constructor */
	Block23() {
		__block_number = 23;
		__block_user_number = "24";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {24};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[24].run(23);
		}
	}
};

// Block 25 (No trade nearby(Sell))
class Block24: public MDL_NoNearbyRunning<string,string,string,string,string,MDLIC_value_time,datetime,MDLIC_value_time,datetime,string,MDLIC_prices_prices,double,string,double,double,int>
{

	public: /* Constructor */
	Block24() {
		__block_number = 24;
		__block_user_number = "25";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {25};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Custom methods */
	virtual datetime _Time1_() {return Time1._execute_();}
	virtual datetime _Time2_() {return Time2._execute_();}
	virtual double _BasePrice_() {
		BasePrice.Symbol = CurrentSymbol();

		return BasePrice._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[25].run(24);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		RangePips = (double)c::Nearby_pips;
	}
};

// Block 26 (MA -T1(Sell))
class Block25: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block25() {
		__block_number = 25;
		__block_user_number = "26";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {26};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_1;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[26].run(25);
		}
	}
};

// Block 27 (MA -T2(Sell))
class Block26: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block26() {
		__block_number = 26;
		__block_user_number = "27";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {27};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_2;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_2;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[27].run(26);
		}
	}
};

// Block 28 (MA -T3 Signal(Sell))
class Block27: public MDL_Condition<MDLIC_indicators_iMA,double,string,MDLIC_indicators_iMA,double,int>
{

	public: /* Constructor */
	Block27() {
		__block_number = 27;
		__block_user_number = "28";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {28};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "x<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.MAperiod = c::MA_fast;
		Lo.MAmethod = MODE_EMA;
		Lo.AppliedPrice = PRICE_CLOSE;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = c::TimeFrames_3_Signal;

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.MAperiod = c::MA_Slow;
		Ro.MAmethod = MODE_EMA;
		Ro.AppliedPrice = PRICE_CLOSE;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = c::TimeFrames_3_Signal;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[28].run(27);
		}
	}
};

// Block 29 (Once per bar)
class Block28: public MDL_OncePerBar<string,ENUM_TIMEFRAMES,int>
{

	public: /* Constructor */
	Block28() {
		__block_number = 28;
		__block_user_number = "29";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {29};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[29].run(28);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 30 (Sell now)
class Block29: public MDL_SellNow<string,string,string,double,double,double,double,double,MDLIC_value_value,double,double,double,int,double,double,double,double,double,int,int,double,bool,double,double,bool,double,string,bool,double,string,string,bool,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,ulong,string,color>
{

	public: /* Constructor */
	Block29() {
		__block_number = 29;
		__block_user_number = "30";
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
		VolumeSize = (double)c::Lot;
		MyComment = (string)c::EA_Name;
		ArrowColorSell = (color)clrRed;
	}
};

// Block 31 (If trade(Buy))
class Block30: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block30() {
		__block_number = 30;
		__block_user_number = "31";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {32};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[32].run(30);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 40 (If trade(Sell))
class Block31: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block31() {
		__block_number = 31;
		__block_user_number = "40";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {35};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[35].run(31);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 41 (Check trades count(Buy))
class Block32: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block32() {
		__block_number = 32;
		__block_user_number = "41";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {33};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = ">=";
		CompareCount = 2;
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[33].run(32);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 42 (Check profit (TP)(Buy))
class Block33: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block33() {
		__block_number = 33;
		__block_user_number = "42";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {34};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
		ProfitMode = "pips";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[34].run(33);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmountPips = (double)c::TP_pips;
	}
};

// Block 43 (Close trades(Buy))
class Block34: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block34() {
		__block_number = 34;
		__block_user_number = "43";
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

// Block 44 (Check trades count(Sell))
class Block35: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block35() {
		__block_number = 35;
		__block_user_number = "44";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {36};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = ">=";
		CompareCount = 2;
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[36].run(35);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 45 (Check profit (TP)(Sell))
class Block36: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block36() {
		__block_number = 36;
		__block_user_number = "45";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {37};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
		ProfitMode = "pips";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[37].run(36);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmountPips = (double)c::TP_pips;
	}
};

// Block 46 (Close trades(Sell))
class Block37: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block37() {
		__block_number = 37;
		__block_user_number = "46";
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

// Block 47 (Check trades count(Buy=0))
class Block38: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block38() {
		__block_number = 38;
		__block_user_number = "47";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {40};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "==";
		CompareCount = 0;
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[40].run(38);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 50 (Check trades count(Sell=0))
class Block39: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block39() {
		__block_number = 39;
		__block_user_number = "50";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {41};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "==";
		CompareCount = 0;
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[41].run(39);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 51 (Modify Variables(=0))
class Block40: public MDL_ModifyVariables<int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block40() {
		__block_number = 40;
		__block_user_number = "51";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Value = 0.0;
	}

	public: /* Custom methods */
	virtual double _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::Count_B = _Value1_();
	}
};

// Block 52 (Modify Variables(=0))
class Block41: public MDL_ModifyVariables<int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block41() {
		__block_number = 41;
		__block_user_number = "52";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Value = 0.0;
	}

	public: /* Custom methods */
	virtual double _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::Count_S = _Value1_();
	}
};

// Block 53 (Bucket of Trades(Buy))
class Block42: public MDL_BucketSelectOpened<color,string,string,string,string,string>
{

	public: /* Constructor */
	Block42() {
		__block_number = 42;
		__block_user_number = "53";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {43};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "buys";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[43].run(42);
		}
	}

	virtual void _beforeExecute_()
	{

		BucketID = (color)clrGreen;
		Symbol = (string)CurrentSymbol();
	}
};

// Block 54 (Modify Variables(Count Buy))
class Block43: public MDL_ModifyVariables<int,MDLIC_bucket_bucket_1,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block43() {
		__block_number = 43;
		__block_user_number = "54";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Attribute = 0;
	}

	public: /* Custom methods */
	virtual double _Value1_() {
		Value1.BucketID = clrGreen;

		return Value1._execute_();
	}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::Count_B = _Value1_();
	}
};

// Block 55 (Bucket of Trades(Sell))
class Block44: public MDL_BucketSelectOpened<color,string,string,string,string,string>
{

	public: /* Constructor */
	Block44() {
		__block_number = 44;
		__block_user_number = "55";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {45};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		BuysOrSells = "sells";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[45].run(44);
		}
	}

	virtual void _beforeExecute_()
	{

		BucketID = (color)clrRed;
		Symbol = (string)CurrentSymbol();
	}
};

// Block 56 (Modify Variables(Count Sell))
class Block45: public MDL_ModifyVariables<int,MDLIC_bucket_bucket_2,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block45() {
		__block_number = 45;
		__block_user_number = "56";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Attribute = 0;
	}

	public: /* Custom methods */
	virtual double _Value1_() {
		Value1.BucketID = clrRed;

		return Value1._execute_();
	}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::Count_S = _Value1_();
	}
};

// Block 57 (If trade(Buy/Sell))
class Block46: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block46() {
		__block_number = 46;
		__block_user_number = "57";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {47};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[47].run(46);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 58 (ON-OFF(Cut Loss))
class Block47: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block47() {
		__block_number = 47;
		__block_user_number = "58";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {48};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::Cut_Loss;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[48].run(47);
		}
	}
};

// Block 59 (Formula(Cut Loss %))
class Block48: public MDL_Formula_1<MDLIC_account_AccountBalance,double,string,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block48() {
		__block_number = 48;
		__block_user_number = "59";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {49};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "*";
	}

	public: /* Custom methods */
	virtual double _Lo_() {return Lo._execute_();}
	virtual double _Ro_() {
		Ro.Value = c::Cut_Loss_Percent;

		double value = (double)Ro._execute_();
		value = value*-1; // Adjust the value
		return value;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[49].run(48);
		}
	}
};

// Block 60 (Check profit (Cut Loss)(Buy/Sell))
class Block49: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block49() {
		__block_number = 49;
		__block_user_number = "60";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {50};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "<=";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[50].run(49);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmount = (double)v::Cut_Loss_Percent_BS;
	}
};

// Block 61 (Close trades(Buy/Sell))
class Block50: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block50() {
		__block_number = 50;
		__block_user_number = "61";
		_beforeExecuteEnabled = true;
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

// Block 62 (Pass)
class Block51: public MDL_Pass
{

	public: /* Constructor */
	Block51() {
		__block_number = 51;
		__block_user_number = "62";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {52};
		AEBD::ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[52].run(51);
		}
	}
};

// Block 63 (Comment)
class Block52: public MDL_CommentEx<string,string,int,int,int,string,color,int,string,color,int,string,color,int,string,MDLIC_account_AccountBalance,double,int,int,string,MDLIC_account_AccountEquity,double,int,int,string,MDLIC_value_value,double,int,int,string,MDLIC_value_value,double,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int>
{

	public: /* Constructor */
	Block52() {
		__block_number = 52;
		__block_user_number = "63";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value5.Text = "";
		Value6.Text = "";
		Value7.Text = "";
		Value8.Text = "";
		// Block input parameters
		Label1 = "Balance";
		FormatNumber1 = 2;
		Label2 = "Equity";
		FormatNumber2 = 2;
		Label3 = "Count (Buy)";
		Label4 = "Count (Sell)";
	}

	public: /* Custom methods */
	virtual double _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {
		Value3.Value = v::Count_B;

		return Value3._execute_();
	}
	virtual double _Value4_() {
		Value4.Value = v::Count_S;

		return Value4._execute_();
	}
	virtual string _Value5_() {return Value5._execute_();}
	virtual string _Value6_() {return Value6._execute_();}
	virtual string _Value7_() {return Value7._execute_();}
	virtual string _Value8_() {return Value8._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		/* Inputs, modified into the code must be set here every time */
		ObjY = 24;
		Title = (string)c::EA_Name;
		ObjCorner = (int)CORNER_RIGHT_UPPER;
		ObjTitleFontColor = (color)clrGold;
		ObjLabelsFontColor = (color)clrDarkGray;
		ObjFontColor = (color)clrWhite;
		FormatTime1 = (int)EMPTY_VALUE;
		FormatTime2 = (int)EMPTY_VALUE;
		FormatNumber3 = (int)EMPTY_VALUE;
		FormatTime3 = (int)EMPTY_VALUE;
		FormatNumber4 = (int)EMPTY_VALUE;
		FormatTime4 = (int)EMPTY_VALUE;
		FormatNumber5 = (int)EMPTY_VALUE;
		FormatTime5 = (int)EMPTY_VALUE;
		FormatNumber6 = (int)EMPTY_VALUE;
		FormatTime6 = (int)EMPTY_VALUE;
		FormatNumber7 = (int)EMPTY_VALUE;
		FormatTime7 = (int)EMPTY_VALUE;
		FormatNumber8 = (int)EMPTY_VALUE;
		FormatTime8 = (int)EMPTY_VALUE;
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
				AEBD::DoubleToStr(sl, digits),
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
				AEBD::DoubleToStr(sl, digits),
				" or ",
				AEBD::DoubleToStr(MathAbs(sl - askbid) / point, 0),
				" points), minimum will be taken (",
				AEBD::DoubleToStr(sllimit, digits),
				" or ",
				AEBD::DoubleToStr(MathAbs(askbid - sllimit) / point, 0),
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
				AEBD::DoubleToStr(tp, digits),
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
				AEBD::DoubleToStr(tp, digits),
				" or ",
				AEBD::DoubleToStr(MathAbs(tp - askbid) / point, 0),
				" points), minimum will be taken (",
				AEBD::DoubleToStr(tplimit, digits),
				" or ",
				AEBD::DoubleToStr(MathAbs(askbid - tplimit) / point, 0),
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

	if (memTicket[id] == (long)AEBD::OrderTicket())
	{
		// the last known ticket (memTicket[id]) should be different than OderTicket() normally
		// when failed to create a new trade - the last ticket remains the same
		// so we need to reset
		memList[id] = listOfNumbers;
	}

	memTicket[id] = (long)AEBD::OrderTicket();

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

	if (memTicket[id] == (long)AEBD::OrderTicket())
	{
		// Normally the last known ticket (memTicket[id]) should be different than OderTicket()
		// when failed to create a new trade, the last ticket remains the same
		// so we need to reset
		memLossList[id]   = sequenceOnLoss;
		memProfitList[id] = sequenceOnProfit;
	}

	memTicket[id] = (long)AEBD::OrderTicket();

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

int BucketsOfOrders(color &label, int &list[], int &pool, bool set=false)
{
	static color mem_labels[];
	static string mem_tickets[];
	static int mem_pool[]; // 0 - trades, 1 - pending orders, 2 - history trades
	
	//-- cache, this will store only the last list that was set
	static int mem_tickets_last[];
	static color mem_label_last = clrNONE;
	static int mem_pool_last = 0;
	
  
	int size;
	
	//-- get data if the same data was asked before
	if (set == false && (label == clrNONE || label == mem_label_last))
	{
		ArrayResize(list, 0);
		AEBD::ArrayCopy(list, mem_tickets_last);

	  	label = mem_label_last;
		pool = mem_pool_last;

		return ArraySize(list);
	}
	
	int idx = ArraySearch(mem_labels, label);
	
	//-- set
	if (set == true)
	{
		if (idx == -1)
		{
			size = ArraySize(mem_labels);

			ArrayResize(mem_labels, size+1);
			ArrayResize(mem_pool, size+1);
			ArrayResize(mem_tickets, size+1);
			
			mem_labels[size] = label;
			mem_pool[size]   = pool;
			idx              = size;
		}

		mem_tickets[idx] = StringImplode(",", list);
		mem_pool[idx]	  = pool;

		//-- cache, save this array in a temporary memory
		ArrayResize(mem_tickets_last, 0);
		AEBD::ArrayCopy(mem_tickets_last, list);

		mem_label_last = label;
		mem_pool_last  = pool;
		
		return true;
	}

	if (idx == -1)
	{
		ArrayResize(list, 0);

		return 0;
	}
	
	//-- get data
	pool = mem_pool[idx];

	if (mem_tickets[idx] == "")
	{
		// because StringExplode returns one empty element for an empty string
		ArrayResize(list, 0);
	}
	else
	{
		StringExplode(",", mem_tickets[idx], list);
	}

	return ArraySize(list);
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
      error_code=AEBD::GetLastError();  
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
         AEBD::RefreshRates();
         retval=1;
         break;
      case 4: //ERR_SERVER_BUSY
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         Sleep(1000);
         AEBD::RefreshRates();
         retval=1;
         break;
      case 6: //ERR_NO_CONNECTION
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         while(!AEBD::IsConnected()) {Sleep(100);}
         while(AEBD::IsTradeContextBusy()) {Sleep(50);}
         AEBD::RefreshRates();
         retval=1;
         break;
      case 128: //ERR_TRADE_TIMEOUT
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         AEBD::RefreshRates();
         retval=1;
         break;
      case 129: //ERR_INVALID_PRICE
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         if (!AEBD::IsTesting()) {while(AEBD::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 130: //ERR_INVALID_STOPS
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!AEBD::IsTesting()) {while(AEBD::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 135: //ERR_PRICE_CHANGED
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!AEBD::IsTesting()) {while(AEBD::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 136: //ERR_OFF_QUOTES
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!AEBD::IsTesting()) {while(AEBD::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 137: //ERR_BROKER_BUSY
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         Sleep(1000);
         retval=1;
         break;
      case 138: //ERR_REQUOTE
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         if (!AEBD::IsTesting()) {while(AEBD::RefreshRates()==false) {Sleep(1);}}
         retval=1;
         break;
      case 142: //This code should be processed in the same way as error 128.
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         AEBD::RefreshRates();
         retval=1;
         break;
      case 143: //This code should be processed in the same way as error 128.
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         AEBD::RefreshRates();
         retval=1;
         break;
      /*case 145: //ERR_TRADE_MODIFY_DENIED
         if (msg_prefix!="") {Print(StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Waiting for a new tick to retry.."));}
         while(RefreshRates()==false) {Sleep(1);}
         return(1);
      */
      case 146: //ERR_TRADE_CONTEXT_BUSY
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code),". Retrying.."));}
         while(AEBD::IsTradeContextBusy()) {Sleep(50);}
         AEBD::RefreshRates();
         retval=1;
         break;
      //-- critical errors
      default:
         if (msg_prefix!="") {Print(AEBD::StringConcatenate(msg_prefix,": ",ErrorMessage(error_code)));}
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
	
	for (int i = 0; i < AEBD::OrdersTotal(); i++)
	{
		if (!AEBD::OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;

		if (AEBD::OrderTicket() == ticket)
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
		success = AEBD::OrderClose((int)ticket, AEBD::OrderLots(), AEBD::OrderClosePrice(), (int)(slippage * PipValue(AEBD::OrderSymbol())), arrowcolor);

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
		int erraction = CheckForTradingError(AEBD::GetLastError(), "Closing trade #" + (string)ticket + " error");

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
					if (StringFind(symbol, AEBD::StringSubstr(s_from, 1), 3) == 3)
					{
						points[i] = to;
					}
				}
				else if (pos > 0) // ? is the second symbol => match the first symbol
				{
					if (StringFind(symbol, AEBD::StringSubstr(s_from, 0, pos)) == 0)
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
   if (!AEBD::OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) {return(false);}
   
   while(true)
   {
      //-- wait if needed -----------------------------------------------
      WaitTradeContextIfBusy();
      //-- delete -------------------------------------------------------
      success=AEBD::OrderDelete(ticket,arrowcolor);
      if (success==true) {
         if (USE_VIRTUAL_STOPS) {
            VirtualStopsDriver("clear",ticket);
         }
         OnTrade();
         return(true);
      }
      //-- error check --------------------------------------------------
      int erraction=CheckForTradingError(AEBD::GetLastError(), "Deleting order #"+(string)ticket+" error");
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
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+1);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "Spread:");
      }
      name="fxd_spread_max_label";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "max:");
      }
      name="fxd_spread_avg_label";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "avg:");
      }
      name="fxd_spread_min_label";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "min:");
      }
      name="fxd_spread_current";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+93);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_max";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_avg";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_min";
      if (AEBD::ObjectFind(0, name)==-1) {
         AEBD::ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         AEBD::ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         AEBD::ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         AEBD::ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         AEBD::ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         AEBD::ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
   }
   
   AEBD::ObjectSetString(0, "fxd_spread_current", OBJPROP_TEXT, AEBD::DoubleToStr(current_spread,2));
   AEBD::ObjectSetString(0, "fxd_spread_max", OBJPROP_TEXT, AEBD::DoubleToStr(max_spread,2));
   AEBD::ObjectSetString(0, "fxd_spread_avg", OBJPROP_TEXT, AEBD::DoubleToStr(avg_spread,2));
   AEBD::ObjectSetString(0, "fxd_spread_min", OBJPROP_TEXT, AEBD::DoubleToStr(min_spread,2));
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
      AEBD::ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      AEBD::ObjectSetInteger(0,name, OBJPROP_BACK, false);
      AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      AEBD::ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x);
      AEBD::ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+17);
      AEBD::ObjectSetString(0,name, OBJPROP_TEXT, "Status");
      AEBD::ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      AEBD::ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 7);
      AEBD::ObjectSetInteger(0,name, OBJPROP_COLOR, clrGray);
      
      name="fxd_status_text";
      AEBD::ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      AEBD::ObjectSetInteger(0,name, OBJPROP_BACK, false);
      AEBD::ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      AEBD::ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      AEBD::ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      AEBD::ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x+2);
      AEBD::ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+1);
      AEBD::ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      AEBD::ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 12);
      AEBD::ObjectSetInteger(0,name, OBJPROP_COLOR, clrAqua);
   }

   //-- update the text when needed
   if (text != memory) {
      memory=text;
      AEBD::ObjectSetString(0,"fxd_status_text", OBJPROP_TEXT, text);
   }
   
   return(text);
}

double DynamicLots(string symbol, string mode="balance", double value=0, double sl=0, string align="align", double RJFR_initial_lots=0)
{
   double size=0;
   double LotStep=AEBD::MarketInfo(symbol,MODE_LOTSTEP);
   double LotSize=AEBD::MarketInfo(symbol,MODE_LOTSIZE);
   double MinLots=AEBD::MarketInfo(symbol,MODE_MINLOT);
   double MaxLots=AEBD::MarketInfo(symbol,MODE_MAXLOT);
   double TickValue=AEBD::MarketInfo(symbol,MODE_TICKVALUE);
   double point=AEBD::MarketInfo(symbol,MODE_POINT);
   double ticksize=AEBD::MarketInfo(symbol,MODE_TICKSIZE);
   double margin_required=AEBD::MarketInfo(symbol,MODE_MARGINREQUIRED);
   
   if (mode=="fixed" || mode=="lots")     {size=value;}
   else if (mode=="block-equity")      {size=(value/100)*AEBD::AccountEquity()/margin_required;}
   else if (mode=="block-balance")     {size=(value/100)*AEBD::AccountBalance()/margin_required;}
   else if (mode=="block-freemargin")  {size=(value/100)*AEBD::AccountFreeMargin()/margin_required;}
   else if (mode=="equity")      {size=(value/100)*AEBD::AccountEquity()/(LotSize*TickValue);}
   else if (mode=="balance")     {size=(value/100)*AEBD::AccountBalance()/(LotSize*TickValue);}
   else if (mode=="freemargin")  {size=(value/100)*AEBD::AccountFreeMargin()/(LotSize*TickValue);}
   else if (mode=="equityRisk")     {size=((value/100)*AEBD::AccountEquity())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="balanceRisk")    {size=((value/100)*AEBD::AccountBalance())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
   else if (mode=="freemarginRisk") {size=((value/100)*AEBD::AccountFreeMargin())/(sl*((TickValue/ticksize)*point)*PipValue(symbol));}
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
         RJFR_target_upper=AEBD::AccountEquity()+(RJFR_units*RJFR_delta);
         Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Upper Target Equity=>",RJFR_target_upper);
      }
      if (AEBD::AccountEquity()>=RJFR_target_upper)
      {
         while(true) {
            Print("Fixed Ratio MM going up to ",(RJFR_start_lots*(RJFR_units+1))," lots: Equity is above Upper Target Equity (",AEBD::AccountEquity(),">=",RJFR_target_upper,")");
            RJFR_units++;
            RJFR_target_lower=RJFR_target_upper;
            RJFR_target_upper=RJFR_target_upper+(RJFR_units*RJFR_delta);
            Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Lower Target Equity=>",RJFR_target_lower,"; Upper Target Equity=>",RJFR_target_upper);
            if (AEBD::AccountEquity()<RJFR_target_upper) {break;}
         }
      }
      else if (AEBD::AccountEquity()<=RJFR_target_lower)
      {
         while(true) {
         if (AEBD::AccountEquity()>RJFR_target_lower) {break;}
            if (RJFR_units>1) {         
               Print("Fixed Ratio MM going down to ",(RJFR_start_lots*(RJFR_units-1))," lots: Equity is below Lower Target Equity | ", AEBD::AccountEquity()," <= ",RJFR_target_lower,")");
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
	
	if (error_code < 0) {error_code = AEBD::GetLastError();}
	
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

	e = AEBD::StringConcatenate(e, " (", error_code, ")");
	
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

		int total = AEBD::OrdersTotal();

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

		if (AEBD::OrderSelect(index, SELECT_BY_POS, MODE_TRADES))
		{
			if (AEBD::OrderType() <= OP_SELL) ticket = (long)AEBD::OrderTicket();
		}

		return ticket;
	}

	datetime GetExpirationFromObject(long ticket)
	{
		datetime expiration = (datetime)0;
		
		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;

		if (AEBD::ObjectFind(chartID, objectName) == chartID)
		{
			expiration = (datetime)AEBD::ObjectGetInteger(chartID, objectName, OBJPROP_TIME);
		}

		return expiration;
	}

	bool RemoveExpirationObject(long ticket)
	{
		bool success      = false;
		string objectName = "";

		objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		success    = AEBD::ObjectDelete(chartID, objectName);

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
		if (!AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET)) return false;

		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		double price      = AEBD::OrderOpenPrice();

		if (AEBD::ObjectFind(chartID, objectName) == chartID)
		{
			AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_TIME, expiration);
			AEBD::ObjectSetDouble(chartID, objectName, OBJPROP_PRICE, price);
		}
		else
		{
			AEBD::ObjectCreate(chartID, objectName, OBJ_ARROW, 0, expiration, price);
		}

		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_ARROWCODE, 77);
		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_HIDDEN, true);
		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_ANCHOR, ANCHOR_TOP);
		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_COLOR, clrRed);
		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_SELECTABLE, false);
		AEBD::ObjectSetInteger(chartID, objectName, OBJPROP_TIMEFRAMES, OBJ_NO_PERIODS);
		AEBD::ObjectSetString(chartID, objectName, OBJPROP_TEXT, TimeToString(expiration));

		return true;
	}
	
	bool TradeExists(long ticket)
	{
		bool exists  = false;

		for (int i = 0; i < AEBD::OrdersTotal(); i++)
		{
			if (!AEBD::OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;

			if (AEBD::OrderTicket() == ticket)
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
		type         = AEBD::OrderType();
		magic_number = AEBD::OrderMagicNumber();
		symbol       = AEBD::OrderSymbol();
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
					groups[i] = AEBD::StringTrimRight(groups[i]);
					groups[i] = AEBD::StringTrimLeft(groups[i]);

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
						markets[i] = AEBD::StringTrimRight(markets[i]);
						markets[i] = AEBD::StringTrimLeft(markets[i]);

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

/**
* This overload works for numeric values and for boolean values
*/
template<typename T>
string FormatValueForPrinting(
	T value,
	int digits,
	int timeFormat
) {
	string outputValue = "";
	string typeName    = typename(value);

	if (typeName == "double" || typeName == "float")
	{
		if (digits >= -16 && digits <= 8)
		{
			if (value > -1.0 && value < 1.0)
			{
				/**
				* Find how many zeroes are after the point, but before the first non-zero digit.
				* For example 0.000195 has 3 zeroes
				* The function would return negative value for values bigger than 0
				*
				* @see https://stackoverflow.com/questions/31001901/how-can-i-count-the-number-of-zero-decimals-in-javascript/31002148#31002148
				*/
				int zeroesAfterPoint = (int)-MathFloor(MathLog10(MathAbs(value)) + 1);

				digits = zeroesAfterPoint + digits;
			}
			
			T normalizedValue  = NormalizeDouble(value, digits);
			outputValue = DoubleToString(normalizedValue, digits);
		}
		else
		{
			outputValue = (string)NormalizeDouble(value, 8);
		}
	}
	else {
		outputValue = IntegerToString((long)value);
	}

	return outputValue;
}

/**
* Bool overload
*/
string FormatValueForPrinting(
	bool value,
	int digits,
	int timeFormat
) {
	return (value) ? "true" : "false";
}

/**
* Datetime overload
*/
string FormatValueForPrinting(
	datetime value,
	int digits,
	int timeFormat
) {
	if (
		timeFormat == (int)EMPTY_VALUE
		|| timeFormat == EMPTY_VALUE
	) timeFormat = TIME_DATE|TIME_MINUTES;
	return TimeToString(value, timeFormat);
}

/**
* String overload
*/
string FormatValueForPrinting(
	string value,
	int digits,
	int timeFormat
) {
	return value;
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
				(TimeCurrent() - AEBD::OrderOpenTime() < 3) // skip for brand new trades
				||
				(
					// exclude expired pending orders
					!historyTrades
					&& AEBD::OrderExpiration() > 0
					&& AEBD::OrderExpiration() <= AEBD::OrderCloseTime()
				)
			) {
				continue;
			}

			if (lots == 0.0)
			{
				lots = AEBD::OrderLots();
			}

			profit = AEBD::OrderClosePrice() - AEBD::OrderOpenPrice();
			profit = NormalizeDouble(profit, SymbolDigits(AEBD::OrderSymbol()));
			
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
	if (AEBD::OrderSelect((int)index, SELECT_BY_POS, MODE_HISTORY) && AEBD::OrderType() < 2)
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

	return AEBD::OrdersHistoryTotal();
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
	int type = AEBD::OrderType();

	return (type == OP_BUY || type == OP_BUYSTOP || type == OP_BUYLIMIT);
}

bool IsOrderTypeSell()
{
	int type = AEBD::OrderType();

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
		   AEBD::OrderType() == OP_SELL
		|| AEBD::OrderType() == OP_SELLSTOP
		|| AEBD::OrderType() == OP_SELLLIMIT
	)
	{bs = -1;} // Positive when Buy, negative when Sell

	while (true)
	{
		uint time0 = GetTickCount();

		WaitTradeContextIfBusy();

		if (!AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET))
		{
			return false;
		}

		string symbol      = AEBD::OrderSymbol();
		int type           = AEBD::OrderType();
		double ask         = SymbolInfoDouble(symbol, SYMBOL_ASK);
		double bid         = SymbolInfoDouble(symbol, SYMBOL_BID);
		int digits         = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
		double point       = SymbolInfoDouble(symbol, SYMBOL_POINT);
		double stoplevel   = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);
		double freezelevel = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);

		if (AEBD::OrderType() < 2) {op = AEBD::OrderOpenPrice();} else {op = NormalizeDouble(op,digits);}

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
			   (AEBD::OrderType() > 1 && op != NormalizeDouble(AEBD::OrderOpenPrice(),digits))
			|| sl != NormalizeDouble(AEBD::OrderStopLoss(),digits)
			|| tp != NormalizeDouble(AEBD::OrderTakeProfit(),digits)
			|| exp != OrderExpirationTime()
		) {
			success = AEBD::OrderModify((int)ticket, op, sl, tp, exp, clr);
		}

		//-- error check --------------------------------------------------
		int erraction = CheckForTradingError(AEBD::GetLastError(), "Modify error");

		switch(erraction)
		{
			case 0: break;    // no error
			case 1: continue; // overcomable error
			case 2: break;    // fatal error
		}

		//-- finish work --------------------------------------------------
		if (success == true)
		{
			if (!AEBD::IsTesting() && !AEBD::IsVisualMode())
			{
				Print("Operation details: Speed " + (string)(GetTickCount()-time0) + " ms");
			}

			if (ontrade_event == true)
			{
				OrderModified(ticket);
				OnTrade();
			}

			if (AEBD::OrderSelect((int)ticket,SELECT_BY_TICKET)) {}

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
   
   int total = AEBD::OrdersTotal();
   
   for (int pos=total-1; pos>=0; pos--)
   {
      if (AEBD::OrderSelect(pos,SELECT_BY_POS,MODE_TRADES))
      {
         int ticket = AEBD::OrderTicket();
         
         //-- end here if we reach the last known ticket
         if (ticket == last_known_ticket) {break;}
         
         //-- set the last known ticket, only if this is the first iteration
         if (pos == total-1) {
            last_known_ticket = ticket;
         }
         
         //-- we are searching for pending orders, skip trades
         if (AEBD::OrderType() <= OP_SELL) {continue;}
         
         //--
         if (AEBD::StringSubstr(AEBD::OrderComment(), 0, 5) == "[oco:")
         {
            int ticket_oco = AEBD::StrToInteger(AEBD::StringSubstr(AEBD::OrderComment(), 5, StringLen(AEBD::OrderComment())-1)); 
            
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
      if (AEBD::OrderSelect(orders1[i], SELECT_BY_TICKET, MODE_TRADES) == false || AEBD::OrderType() <= OP_SELL)
      {
         if (AEBD::OrderSelect(orders2[i], SELECT_BY_TICKET, MODE_TRADES)) {
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
      if (AEBD::OrderSelect(orders2[i], SELECT_BY_TICKET, MODE_TRADES) == false || AEBD::OrderType() <= OP_SELL)
      {
         if (AEBD::OrderSelect(orders1[i], SELECT_BY_TICKET, MODE_TRADES)) {
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

		int count        = AEBD::OrdersTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (AEBD::OrderSelect(index, SELECT_BY_POS) == false) continue;
			if (AEBD::OrderType() < OP_BUYLIMIT) continue;

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// int
			list[i].type   = AEBD::OrderType();
			list[i].magic  = AEBD::OrderMagicNumber();
			list[i].ticket = AEBD::OrderTicket();

			// datetime
			list[i].timeClose      = AEBD::OrderCloseTime();
			list[i].timeExpiration = AEBD::OrderExpiration();
			list[i].timeOpen       = AEBD::OrderOpenTime();

			// double
			list[i].priceCurrent = AEBD::OrderClosePrice();
			list[i].priceOpen    = AEBD::OrderOpenPrice();
			list[i].stopLoss     = AEBD::OrderStopLoss();
			list[i].takeProfit   = AEBD::OrderTakeProfit();
			list[i].volume       = AEBD::OrderLots();

			// string
			list[i].comment = AEBD::OrderComment();
			list[i].symbol  = AEBD::OrderSymbol();
		}

		return howManyAdded;
	}

	/**
	* Overloaded method 2 of 2
	*/
	int MakeListOf(Position &list[])
	{
		ArrayResize(list, 0);

		int count        = AEBD::OrdersTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (AEBD::OrderSelect(index, SELECT_BY_POS) == false) continue;
			if (AEBD::OrderType() > OP_SELL) continue;

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// int
			list[i].type   = AEBD::OrderType();
			list[i].magic  = AEBD::OrderMagicNumber();
			list[i].ticket = AEBD::OrderTicket();

			// datetime
			list[i].timeClose      = AEBD::OrderCloseTime();
			list[i].timeExpiration = (datetime)0;
			list[i].timeOpen       = AEBD::OrderOpenTime();

			// double
			list[i].commission   = AEBD::OrderCommission();
			list[i].priceCurrent = AEBD::OrderClosePrice();
			list[i].priceOpen    = AEBD::OrderOpenPrice();
			list[i].profit       = AEBD::OrderProfit();
			list[i].stopLoss     = AEBD::OrderStopLoss();
			list[i].swap         = AEBD::OrderSwap();
			list[i].takeProfit   = AEBD::OrderTakeProfit();
			list[i].volume       = AEBD::OrderLots();

			// string
			list[i].comment = AEBD::OrderComment();
			list[i].symbol  = AEBD::OrderSymbol();
			
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

			// After this function ends, positions is copied over previousPositions,
			// However, sometimes we can have multiple events happened at once.
			// In this case we don't want the fresh positions to be copied over previousPositions,
			// because we could lose the detection of some un-detected event. Rather,
			// we want to delete the item that we just detected from previousPositions,
			// copy it over positions, and then positions would be copied over previousPositions,
			// which would technically not change it.
			DeleteItem(previousItems, item);
			CopyList(positions, previousPositions);
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
						// We can end up here if a position was closed
						// and a new one was created at the same time.
						// This can happen when we have for example one position
						// with SL and one pending order with OpenPrice equal to SL.

						item   = FindMissingItem(previousItems, currentItems);
						reason = "close";
						
						// Remove the item that we just detected. But there is also
						// a "new" event that must be detected, and for this set
						// "positions" to be "previousPositions" with the deleted item.
						DeleteItem(previousItems, item);
						CopyList(positions, previousPositions);
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
	* From the list of previous orders or positions, find and remove the
	* provided item.
	*/
	template<typename T> 
	bool DeleteItem(T &list[], T &item)
	{
		int listCount = ArraySize(list);
		bool removed = false;

		for (int i = 0; i < listCount; i++)
		{
			if (list[i].ticket == item.ticket) {
				ArrayStripKey(list, i);
				removed = true;

				break;
			}
		}

		return removed;
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
			if (AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_HISTORY))
			{
				timeOpen   = AEBD::OrderOpenTime();
				timeClose  = AEBD::OrderCloseTime();
				priceOpen  = AEBD::OrderOpenPrice();
				priceClose = AEBD::OrderClosePrice();
				profit     = AEBD::OrderProfit();
				swap       = AEBD::OrderSwap();
				commission = AEBD::OrderCommission();
				volume     = AEBD::OrderLots();

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
					string comment = AEBD::OrderComment();

					// Try with comments, which works in the Tester, but it could not work in real
					     if (comment == "[tp]") detail = "tp";
					else if (comment == "[sl]") detail = "sl";

					// Try to detect close by SL or TP by the close price
					if (detail == "")
					{
						int type = item.type;

						double sl = AEBD::OrderStopLoss();
						double tp = AEBD::OrderTakeProfit();

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

/**
* When a trade is a child, its Open Price is the same as the Open Price of the most parent trade.
* This function will return the actual Open Price of this parent trade, which would be the Close
* Price of the previous child trade, or the parent trade if this is the only child, or itself if
* it's the trade is not a child.
*/
double OrderChildOpenPrice() {
	int ticket     = AEBD::OrderTicket();
	int prevTicket = attrTicketPreviousSibling(ticket);

	double openPrice = 0;

	if (ticket == prevTicket) {
		openPrice = AEBD::OrderOpenPrice();
	}
	else {
		double prevClosePrice = 0;
		datetime prevCloseTime = 0;
		
		if (AEBD::OrderSelect(prevTicket, SELECT_BY_TICKET, MODE_HISTORY)) {
			prevClosePrice = AEBD::OrderClosePrice();
			prevCloseTime = AEBD::OrderCloseTime();
		}
		
		bool success = AEBD::OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES);
		
		openPrice = (prevCloseTime > 0)
			? prevClosePrice    // partial close
			: AEBD::OrderOpenPrice(); // added to volume
	}
	
	return openPrice;
}

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
			&& !AEBD::MarketInfo(symbol, MODE_TRADEALLOWED)
		) {
			if (not_allowed_message == false)
			{
				Print("Market ("+symbol+") is closed");
			}

			not_allowed_message = true;

			return false;
		}

		not_allowed_message = false;

		digits   = (int)AEBD::MarketInfo(symbol, MODE_DIGITS);
		ask      = AEBD::MarketInfo(symbol, MODE_ASK);
		bid      = AEBD::MarketInfo(symbol, MODE_BID);
		point    = AEBD::MarketInfo(symbol, MODE_POINT);
		ticksize = AEBD::MarketInfo(symbol, MODE_TICKSIZE);

		//- not enough money check: fix maximum possible lot by margin required, or quit
		if (type==OP_BUY || type==OP_SELL)
		{
			double LotStep          = AEBD::MarketInfo(symbol,MODE_LOTSTEP);
			double MinLots          = AEBD::MarketInfo(symbol,MODE_MINLOT);
			double margin_required  = AEBD::MarketInfo(symbol,MODE_MARGINREQUIRED);
			static bool not_enough_message = false;

			if (margin_required != 0)
			{
				double max_size_by_margin = AEBD::AccountFreeMargin() / margin_required;

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
			comment = AEBD::StringSubstr(comment,0,31);
		}

		//- expiration for trades
		if (type == OP_BUY || type == OP_SELL)
		{
			if (expiration > 0)
			{
				//- bo broker?
				if (
					   StringLen(symbol) > 6
					&& AEBD::StringSubstr(symbol, StringLen(symbol) - 2) == "bo"
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

		ticket = AEBD::OrderSend(
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

		int erraction = CheckForTradingError(AEBD::GetLastError(), msg_prefix);

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

			if (AEBD::OrderSelect(ticket, SELECT_BY_TICKET))
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
					slip = AEBD::OrderOpenPrice() - op;

					Print(
						"Operation details: Speed ",
						(GetTickCount() - time0),
						" ms | Slippage ",
						AEBD::DoubleToStr(toPips(slip, symbol), 1),
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
				slip = NormalizeDouble(AEBD::OrderOpenPrice(), digits) - NormalizeDouble(op, digits);

				if (slip != 0 && (AEBD::OrderStopLoss() != 0 || AEBD::OrderTakeProfit() != 0))
				{
					Print("Correcting stops because of slippage...");

					sl = AEBD::OrderStopLoss();
					tp = AEBD::OrderTakeProfit();

					if (sl != 0 || tp != 0)
					{
						if (sl != 0) {sl = NormalizeDouble(AEBD::OrderStopLoss() + slip, digits);}
						if (tp != 0) {tp = NormalizeDouble(AEBD::OrderTakeProfit() + slip, digits);}

						ModifyOrder(ticket, AEBD::OrderOpenPrice(), sl, tp, 0, 0, 0, CLR_NONE, false);
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

	if (AEBD::OrderType() > OP_SELL)
	{
		expiration = AEBD::OrderExpiration();
	}
	else if (check_trade)
	{
		expiration = (datetime)expirationWorker.GetExpiration(AEBD::OrderTicket());
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

	if (AEBD::OrderType() > OP_SELL)
	{
		expiration = AEBD::OrderExpiration();
	}
	else
	{
		expiration = (datetime)expirationWorker.GetExpiration(AEBD::OrderTicket());
	}

	return expiration;
}

bool OrderModified(ulong ticket = 0, string action = "set")
{
	static ulong memory[];

	if (ticket == 0)
	{
		ticket = AEBD::OrderTicket();
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
	if (AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_TRADES) && AEBD::OrderType() > 1)
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
					output[element] = (T)AEBD::StringSubstr(inputString, begin, end - begin);
				}
			}
			else
			{
				output[element] = (T)AEBD::StringSubstr(inputString, begin, length - begin);
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
      retval = AEBD::StringConcatenate(retval, (string)array[i], delimeter);
   }
	
   return AEBD::StringSubstr(retval, 0, (StringLen(retval) - StringLen(delimeter)));
}

datetime StringToTimeEx(string str, string mode="server")
{
	// mode: server, local, gmt
	int offset = 0;

	if (mode == "server") {offset = 0;}
	else if (mode == "local") {offset = (int)(TimeLocal() - TimeCurrent());}
	else if (mode == "gmt") {offset = (int)(TimeGMT() - TimeCurrent());}

	datetime time = StringToTime(str) - offset;

	return time;
}

string StringTrim(string text)
{
   text = AEBD::StringTrimRight(text);
   text = AEBD::StringTrimLeft(text);
	
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
	int offset = 0;

	if (time_src == 0) {
		TimeCurrent(tm);
	}
	else if (time_src == 1) {
		TimeLocal(tm); 
		offset = (int)(TimeLocal() - TimeCurrent());
	}
	else if (time_src == 2) {
		TimeGMT(tm);
		offset = (int)(TimeGMT() - TimeCurrent());
	}

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
	
	datetime time = StructToTime(tm) - offset;

	return time;
}

bool TradeSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both"
) {
	if (AEBD::OrderSelect((int)index, SELECT_BY_POS, MODE_TRADES) && AEBD::OrderType() < 2)
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
	if (AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET, MODE_TRADES) && AEBD::OrderType() < 2)
	{
		return true;
	}

	return false;
}

int TradesTotal()
{
	return AEBD::OrdersTotal();
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
		int total     = AEBD::ObjectsTotal(0, -1, OBJ_HLINE);
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
			name = AEBD::ObjectName(0, i, -1, OBJ_HLINE); // for example: #1 sl

			if (AEBD::StringSubstr(name, 0, 1) != "#")
			{
				continue;
			}

			length = StringLen(name);

			if (length < 5)
			{
				continue;
			}

			clr = (color)AEBD::ObjectGetInteger(0, name, OBJPROP_COLOR);

			if (clr != loop_color[0] && clr != loop_color[1])
			{
				continue;
			}

			string last_symbols = AEBD::StringSubstr(name, length-2, 2);

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

			ulong ticket0 = StringToInteger(AEBD::StringSubstr(name, 1, length - 4));

			// prevent loading the same ticket number twice in a row
			if (ticket0 != ticket)
			{
				ticket = ticket0;

				if (TradeSelectByTicket(ticket))
				{
					symbol     = AEBD::OrderSymbol();
					polarity   = (AEBD::OrderType() == 0) ? 1 : -1;
					askbid   = (AEBD::OrderType() == 0) ? SymbolInfoDouble(symbol, SYMBOL_BID) : SymbolInfoDouble(symbol, SYMBOL_ASK);
					
					trade_pass = true;
				}
				else
				{
					trade_pass = false;
				}
			}

			if (trade_pass)
			{
				level    = AEBD::ObjectGetDouble(0, name, OBJPROP_PRICE, 0);

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
							AEBD::ObjectDelete(0, "#" + (string)ticket + " sl");
							AEBD::ObjectDelete(0, "#" + (string)ticket + " tp");
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
				|| AEBD::OrderCloseTime() > 0 // in case the order has been closed
			)
			{
				AEBD::ObjectDelete(0, name);
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

		name = "#" + IntegerToString(ti) + " " + AEBD::StringSubstr(command, 4, 2);

		if (AEBD::ObjectFind(0, name) > -1)
		{
			value = AEBD::ObjectGetDouble(0, name, OBJPROP_PRICE, 0);
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
				if (AEBD::ObjectFind(0, name) == -1)
				{
						 AEBD::ObjectCreate(0, name, OBJ_HLINE, 0, 0, loop_price[i]);
					AEBD::ObjectSetInteger(0, name, OBJPROP_WIDTH, 1);
					AEBD::ObjectSetInteger(0, name, OBJPROP_COLOR, loop_color[i]);
					AEBD::ObjectSetInteger(0, name, OBJPROP_STYLE, STYLE_DOT);
					AEBD::ObjectSetString(0, name, OBJPROP_TEXT, name + " (virtual)");
				}
				// 2) modify existing line
				else
				{
					AEBD::ObjectSetDouble(0, name, OBJPROP_PRICE, 0, loop_price[i]);
				}
			}
			else
			{
				// 3) delete existing line
				AEBD::ObjectDelete(0, name);
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
				AEBD::DoubleToStr(sl, (int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS)),
				" tp ",
				AEBD::DoubleToStr(tp,(int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS))
			);
		}

		return 1;
	}

	return 1;
}

void WaitTradeContextIfBusy()
{
	if(AEBD::IsTradeContextBusy()) {
      while(true)
      {
         Sleep(1);
         if(!AEBD::IsTradeContextBusy()) {
            AEBD::RefreshRates();
            break;
         }
      }
   }
   return;
}

int WindowFindVisible(long chart_id, string term)
{
   //-- the search term can be chart name, such as Force(13), or subwindow index
   if (term == "" || term == "0") {return 0;}
   
   int subwindow = (int)StringToInteger(term);
  
   if (subwindow == 0 && StringLen(term) > 1)
   {
      subwindow = ChartWindowFind(chart_id, term);
   }
   
   if (subwindow > 0 && !ChartGetInteger(chart_id, CHART_WINDOW_IS_VISIBLE, subwindow))
   {
      return -1;  
   }
   
   return subwindow;
}

double attrLotsInitial()
{
	// Only running trades allowed
	if (AEBD::OrderType() != OP_BUY && AEBD::OrderType() != OP_SELL) {
		return 0.0;
	}

	int ticket = AEBD::OrderTicket();
	double retval = 0.0;

	//-- return cached value if possible
	static long cacheTickets[];
	static double cacheValues[];

	int size = ArraySize(cacheTickets);
	int idx  = -1;

	for (int i = size-1; i >= 0; i--) {
		if (cacheTickets[i] == ticket) {
			return cacheValues[i];
		}  
	}

	/**
	* When added to volume, we rely on the [p=X] tags in the
	* comments.
	*/

	string comment = AEBD::OrderComment();
	int tagPos     = StringFind(comment, "[p=");

	if (tagPos >= 0) {
		string tag = AEBD::StringSubstr(comment, tagPos);
		tag        = AEBD::StringSubstr(tag, 0, StringFind(tag, "]") + 1);
		int initialTicket = (int)StringToInteger(AEBD::StringSubstr(tag, 3, -1));

		if (initialTicket == ticket) {
			retval = AEBD::OrderLots();
		}
		else {
			for (int pos = AEBD::OrdersTotal() - 1; pos >= 0; pos--) {
				if (!AEBD::OrderSelect(pos, SELECT_BY_POS, MODE_TRADES)) {
					break;
				}

				if (AEBD::OrderTicket() == initialTicket) {
					retval = AEBD::OrderLots();
	
					break;
				}
			}

			if (retval == 0.0) {
				for (int pos = AEBD::OrdersHistoryTotal() - 1; pos >= 0; pos--) {
					if (!AEBD::OrderSelect(pos, SELECT_BY_POS, MODE_HISTORY)) {
						break;
					}
	
					if (AEBD::OrderTicket() == initialTicket) {
						retval = AEBD::OrderLots();
	
						break;
					}
				}
			}
		}
	}

	/**
	* In MQL4 after partially closing a trade, its OrderLots()
	* strarts returning the remaining lots, not the initial.
	* That's why we need to calculate the initial lots as
	* the sum of all lots.
	*/

	if (retval == 0.0) {
	   int T = AEBD::OrderType();
	   int M = AEBD::OrderMagicNumber();
	   string S = AEBD::OrderSymbol();
	   double OP = AEBD::OrderOpenPrice();
	   datetime OT = AEBD::OrderOpenTime();
	   int digits = (int)AEBD::MarketInfo(S,MODE_DIGITS);    

		retval = AEBD::OrderLots();

	   for (int i = AEBD::OrdersHistoryTotal()-1; i>=0; i--) {
	      if (!AEBD::OrderSelect(i, SELECT_BY_POS, MODE_HISTORY)) {
	      	break;
	      }

	      if (AEBD::OrderOpenTime() < OT) {
            break;
         }

         if (
         	(AEBD::OrderMagicNumber() == M)
         	&& (AEBD::OrderTicket() < ticket)
         	&& (AEBD::OrderType() == T)
         	&& (AEBD::OrderOpenTime() == OT)
         	&& (NormalizeDouble(AEBD::OrderOpenPrice(), digits) == NormalizeDouble(OP, digits))
            && (AEBD::OrderSymbol() == S)
            )
         {
            retval += AEBD::OrderLots();
         }
	   }
	}

	if (retval > 0) {
		size = ArraySize(cacheTickets);
		ArrayResize(cacheTickets, size + 1);
		ArrayResize(cacheValues, size + 1);
		cacheTickets[size] = ticket;
		cacheValues[size]  = retval;
	}

   // Load the original trade again
   int success = AEBD::OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES);

   return retval;
}

double attrStopLoss()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get sl", AEBD::OrderTicket());
	}

	return AEBD::OrderStopLoss();
}

double attrTakeProfit()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get tp", AEBD::OrderTicket());
	}

   return AEBD::OrderTakeProfit();
}

ulong attrTicketInLoop(ulong ticket=0)
{
	static ulong t;

	if (ticket > 0) {t = ticket;}

	return t;
}

long attrTicketParent(long ticket)
{
	int pos = 0;
	int total = 0;
	long retval = 0;
	static long cacheTickets[];
	static long cacheValues[];

	//-- return cached value if possible
	int size = ArraySize(cacheTickets);
	int idx  = -1;

	for (int i = size-1; i >= 0; i--) {
		if (cacheTickets[i] == ticket) {
			return cacheValues[i];
		}  
	}

	if (!AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET)) {
		retval = ticket;
	}

	//-- check if trade is added to volume
	if (retval == 0) {
		string comment = AEBD::OrderComment();
		int tagPos     = StringFind(comment, "[p=");

		if (tagPos >= 0) {
			string tag = AEBD::StringSubstr(comment, tagPos);
			tag        = AEBD::StringSubstr(tag, 0, StringFind(tag, "]") + 1);
			retval     = (int)StringToInteger(AEBD::StringSubstr(tag, 3, -1));
		}
	}

	double OP   = AEBD::OrderOpenPrice();
	datetime OT = AEBD::OrderOpenTime();
	string S    = AEBD::OrderSymbol();
	int M       = AEBD::OrderMagicNumber();
	int T       = AEBD::OrderType(); 
	double L    = AEBD::OrderLots();
	int D       = (int)AEBD::MarketInfo(S, MODE_DIGITS);

	//-- check if trade is partially closed
	if (retval == 0) {
		total = AEBD::OrdersHistoryTotal();

		for (pos = total-1; pos >= 0; pos--) {
			if (AEBD::OrderSelect(pos, SELECT_BY_POS, MODE_HISTORY)) {
				if (AEBD::OrderOpenTime() < OT) {
					break;
				}

				if (
					(AEBD::OrderMagicNumber() == M)
					&& (AEBD::OrderTicket() < ticket)
					&& (AEBD::OrderType() == T)
					&& (AEBD::OrderOpenTime() == OT)
					&& (NormalizeDouble(AEBD::OrderOpenPrice(), D) == NormalizeDouble(OP, D))
					&& (AEBD::OrderSymbol() == S)
				) {
					retval = AEBD::OrderTicket();
				}
			}
		}
	}

	if (retval > 0) {
		size = ArraySize(cacheTickets);
		ArrayResize(cacheTickets, size + 1);
		ArrayResize(cacheValues,size + 1);
		cacheTickets[size] = ticket;
		cacheValues[size]  = retval;
	}

	// Load the original trade again
	if (!AEBD::OrderSelect((int)ticket,SELECT_BY_TICKET)) {
		retval = ticket;
	}

	if (retval <= 0) {
		retval = ticket;
	}

	return retval;
}

ulong attrTicketPreviousSibling(ulong ticket)
{
	ulong retval = 0;
	static ulong cacheTickets[];
	static ulong cacheValues[];

	//-- return cached value if possible
	int size = ArraySize(cacheTickets);
	int idx  = -1;

	for (int i = size-1; i >= 0; i--) {
		if (cacheTickets[i] == ticket) {
			return cacheValues[i];
		}  
	}

	if (!AEBD::OrderSelect((int)ticket, SELECT_BY_TICKET)) {
		retval = ticket;
	}

	if (retval == 0) {
		// 1. Get the parent trade
		long parentTicket = attrTicketParent(ticket);

		for (int pos = AEBD::OrdersTotal() - 1; pos >= 0; pos--) {
			if (!AEBD::OrderSelect(pos, SELECT_BY_POS, MODE_TRADES)) {
				break;
			}

			if ((ulong)AEBD::OrderTicket() >= ticket) {
				continue;
			}

			if (attrTicketParent(AEBD::OrderTicket()) == parentTicket) {
				retval = AEBD::OrderTicket();

				break;
			}
		}

		// when partially closed, look in the history trades also
		if (retval == 0) {
			for (int pos = AEBD::OrdersHistoryTotal() - 1; pos >= 0; pos--) {
				if (!AEBD::OrderSelect(pos, SELECT_BY_POS, MODE_HISTORY)) {
					break;
				}

				if ((ulong)AEBD::OrderTicket() >= ticket) {
					continue;
				}

				if (attrTicketParent(AEBD::OrderTicket()) == parentTicket) {
					retval = AEBD::OrderTicket();

					break;
				}
			}
		}

		// No sibling ticket found, then the sibling ticket
		// is the original ticket
		if (retval == 0.0) retval = ticket;
	}

	if (retval > 0) {
		size = ArraySize(cacheTickets);
		ArrayResize(cacheTickets, size + 1);
		ArrayResize(cacheValues,size + 1);
		cacheTickets[size] = ticket;
		cacheValues[size]  = retval;
	}

	// Load the original trade again
	if (!AEBD::OrderSelect((int)ticket,SELECT_BY_TICKET)) {
		retval = ticket;
	}

	return retval;
}

int attrTypeInLoop(int type=0)
{
	static int t;

	if (type > 0) {t = type;}

	return t;
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

int iCandleID(string SYMBOL, ENUM_TIMEFRAMES TIMEFRAME, datetime time_stamp)
{
	bool TimeStampPrevDayShift = true;
	int CandleID               = 0;

	// get the time resolution of the desired period, in minutes
	int mins_tf  = TIMEFRAME;
	int mins_tf0 = 0;

	if (TIMEFRAME == PERIOD_CURRENT)
	{
		mins_tf = (int)AEBD::PeriodSeconds(PERIOD_CURRENT) / 60;
	}

	// get the difference between now and the time we want, in minutes
	int days_adjust = 0;

	if (TimeStampPrevDayShift)
	{
		// automatically shift to the previous day
		if (time_stamp > TimeCurrent())
		{
			time_stamp = time_stamp - 86400;
		}

		// also shift weekdays
		while (true)
		{
			int dow = AEBD::TimeDayOfWeek(time_stamp);

			if (dow > 0 && dow < 6) {break;}

			time_stamp = time_stamp - 86400;
			days_adjust++;
		}
	}

	int mins_diff = (int)(TimeCurrent() - time_stamp);
	mins_diff = mins_diff - days_adjust*86400;
	mins_diff = mins_diff / 60;

	// the difference is negative => quit here
	if (mins_diff < 0)
	{
		return (int)EMPTY_VALUE;
	}

	// now calculate the candle ID, it is relative to the current time
	if (mins_diff > 0)
	{
		CandleID = (int)MathCeil((double)mins_diff/(double)mins_tf);
	}

	// now, after all the shifting and in case of missing candles, the calculated candle id can be few candles early
	// so we will search for the right candle
	while(true)
	{
		if (AEBD::iTime(SYMBOL, TIMEFRAME, CandleID) >= time_stamp) {break;}

		CandleID--;

		if (CandleID <= 0) {CandleID = 0; break;}
	}

	return CandleID;
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

/*<fxdreema:eNrtPWlz27iSf0XlV1s18yrJEOApZebV+pAzqfW1lpPZ2S8sSqJsjilSj6TiaKfy3xcnL4EWRVO2bMIfLIkAG91Ad6PR6AacgTn4Ox4AMDiYhEHgThIvDOKDj85AA4O/vYGCvqm4hj44mHmuPz34GKNXDk6Gp4dfzm7wL2NwEIfLaOLiHwgOYA8TJ7p1E/YQHnz84Q3A9tCgCJpKoMHtoakiaBqBpm4PTRNB0wk0bXtougiaQaDp20MzRdAsAs3YHpolgtYn0MztofXXoEHENgoBZ20Jjr0pgAcIvH4DeEAIj7Gw0gCgKgRI+Q6ABgA1IUDKegA2AKgLAVLuA2oDgKYQIGVAoDUAaAkBUh4EegOAQi6ElAuBsT1AKGRDSNkQmA0wNIQkmxRgA0GBUIgh1aaggaRAIWNDytiwgaRAIWNDytiwgaRAYR9C2oewgaRAIWNDytiwgaRAIWNDytiwgaRAIWOrlLFhA0mBQuUAqXKADSRFFSpYjUoKbCApmhgg1diwgaRoQknRmN3RQFI0IWNrlLHVBpKiCQdFo4OiNpAUTai+NGYcNZAUTSgpOh1ltYGk6EIMdTrKagNJ0YXqS2ckN5AUXTgoOhuUBpKii/uQahu1gaToQm2jU22jNpAUXahtDKpt1AaSYghH2aBsozWQFEMoywaW5R/k+dgPJ/dkzaOreM2DhQcC3IhFVkVJFPq0GD/rDw4+ReFycR5OSQsIkVv8m33/xL8rgwNi7qLP0Wo+Dn3+AsaPPGA/RukP/goykY+Wq/gyGrk+bjkeaAhL9AShTBDASDle4Eas7Mab3OOvCN+pFztj30X9MkaLN9I37vfEjeiiThn8/YOQ703zqzUE0ovtyTJOwjl/0eIdQ7uMYB0n7py1M0fU+DYDg1C4CC8XbuBOL6OpGxGcAWp64UTO3EXNI+hhGE3jHJkI4sJDS84UVdR78cTxeScFYTR3fN6HsYthJWFE6GDjxCnAa8Hsu5p+p+MbJ06yJK9BxjlhEM5muKpC+2/qJE6K2Q9SJfESigkm4yLsJZEzdX8dR//6CQ3NzwxFBIV0D4OMIPnuLMGAATJJY4TmQRIu8G9Lx3BRhQfHSzjBqNu/OZGHxys3Oqi9cJkslkmcB+yhZ/g9QDF22U8Fg0XNTGLeLwhjzNPO5B6zZTB9Pwn9MGJi8o/D/nH/9JTxalqCeusfnPNmiLfeP7je7V2S7xI8xlwWbMRRkZNhDBBDjUM88O/jZEW7jb5HF+lCYdLwM/TiWZiSmfElJjiYehMy4LZ3fsi4Lg/AYkDPDxdu5IVTToA+GQzOD+2ZEyeM6vPD+M6b8WWrwmCdHyLOvKPv4Z+XJ0N7SFvCBB0uFr7nTq8ij61b0atX15+Ph/bx2eVoWCW86NlVig5EI3w1vP58eWIff7m+Hl7cINxuvLl7isUitgEbiBFHL6c0ji/RC8c3ny8vsu6k3DEJ50gW+GL6X0yhXbfaj2S6pR058sOHN9iRuGgShXH84E2Tu4O8zniM19vVvrAF7YtePw7RIGPP3a71LqXg6TpVx1zTe38DttCoUCloVKAr+6FST09Pjg/7TVSqQG2isU0Q+sEt/sm8klJ9Vkg9lOrzxTpyL9Sn2nH1CZurTwj0DqhPrcvqUzUel3rVHnm3AeXVp2hRhO73TqjR3XXo1toUpLu2+C17/bV2Fa3WTUULIVO0ao+O7Bb6VinpW6sL5qpepW8JWhsFDPN6UcC4+F45cXzufMfCFu+Qz/U2vGGIsstg4iKyjpzotZgUkCLdQ9q3N6Zob8XfqrYn9sRYcaGlPqOHy6h0F2tsIMo+YaHTF31+Df3l3M05lmfed3daLB15/+cyJlU+ADT/nIUJF52sxrUX3xd2TTIAvAh1KfxA+B2ovAyx7MQNElaMhpgUW7z4CEtArg63wHGnTvPorVkAAPOBv3Rt8l8w/XOe/crLVULfpmkTQTnFfXTtoFnlS+AlvHs0/LoCuLWcVTpx
fSoF6Y49Htv5/Ab7d+OrkA4Ktyvwu/P5+e1nBNpzfNTXcQk5i1Y4X/qJt/BXl8FZGMd57w5UyjWuonDmJXn/O1YQuM7hdIqbKAChePRLFQowCqheu0hiBRDMQnEVDkCFRjWxKq9y7X5DmixlU8eP3QzGqTcOK2FA0tsnSLnNx26UbOjYtF5Fg5BgdOaMw+Xkzo3canBGseKZR+1zzJngHXynvtPe6e+MrK+zqlW0kqZH7r+PnNgVNAhYcTYU6G0VNWUU3hYOBWSFVU0bXCK/LJC+PvPmXsHORK+PkFrG7XJlouFZJHDLxVfeIi7oCcytaSGV9NRkJjJFtzjxQJeq3VyV1AaCNPV5pVZ0Qto/jxvS00WrrRZJeqzdaavt5lXYIw1jg8e5dykXCeeOQg0+4una6ubKXnAugIWajwx/X1BxdFbqLYgZIKv2bCyA21203G49JsAtT1tuuR4bIHkcfk/3pBG2n26OmUWEnp84q7y9aZGHv4fLKC73KQbiBcvEzdfHtiMqEJCjcHISZJiLqIF8WY8wu2F10ilJwbY6shnysaEKM25IQeLM+b66ogwytsKFx04w9d3PJ2UKcNm5E927BZXYz7+Ev82wOV6eIEmVcL5AmjJI/nSpGcxBWKXyc0TnXb6CUaqAej1fXIaP+z8XW5pDMm2BjETZDihUGbmou6eCvkv5hzevZoMwyrlPYKoieAGmOz/62LBICwnRhdL8q3+47n1cajQt5EyYDlb+zZQZS51JG13jyEIx7QNh8b23wDhNWdMaXq7ibsEig8Zz5HuLhXPrlrwc5yvUv3Nu5GLXzGAwPLQvOMcgqg6jKHw4xquLo+WKCdrEj45Ip7e+LDVaWJYaJKjkgnrRdrki1evFZmDnLOda7DhoM2bDJLT2AkrsVoEaar+tdaxSXMeCLdeximIpVOPl17G4ZEb+KlazOFIoxGFRDVa0iMrInSSZO8fcv0gozIj0e+tSZspQqA1OIqsUCoVHZbMrFKoyFirNbZGb+TuMhfpVbua/3lgoq6Ob+UYhFqqmStW6GAzVl/pzt8FQUn++4mCofsf1J3yC/uxGNBTJXZbhUM8QDvWrDId6s+FQ6YkDHYyHUkXxUDVVLuxiQBQArzkiKj0MQ4ZE1QiJKnN4d0OiAJQxUTImSsZEyZgoGRMlY6JkTJSMiZIxUTImSsZEveGYKC0fE4U9Asyon/jRtTvdxcK0jbMT8JSNcH3mqCjlZaKiLEpsrbCocsyGpij7ERY1mykvHhYF1M6cEJWeXtpCXNTn2Rs+IurzbNsjojRDhkVlx8EKxQmN6ovLE52xz8JwceJF9HxsPp0G7oMbJ++T8D1SLS5dPFu0Lp5lcw306dMhWrqu1h+ni1VuBpjUvTvMWzHty3UbSd3YECL0Jk6UUH/RS82kSsVMCnIzqdKOwEPsYwujnutM7no3qdjjjujVk32tKPtgX1zFx0NFOR6KptdT8reD6TVVA3qj3WmMJ1nBIDajn4I1l8kG2bv8/eyYjY537IeZ7wjrCroSOvWC6dGKCYnHN1BLS6uNS7KmOzstReugfjzwAh8xpE2mWzzzpl6LspYlTLHP0S3pCeXd23Ito7zBpCjtsSqdCGupzMAH6j7YD8xXAKSv6DX6itJXK5xFyrM7i0QvPo+vKNtw+fEj5Wso+Vry9Vvia94jeBMztZmw9bWMIuYARZ2ZK11jfwRggYtim34IJIDHQaQN4KTS0X+xGQYbSpSFN4RHVJhsfUrBNZok+YYJ39BCReRxuull4E3/yWBwgYZ3vEo3vjARpOJp5Exy1ofyQVGAUqhxFcaZSbWjxarR0mL1IqR0Xi+DwAtud20FahVeqEcWq60sULUsU68XEIK3cEyVg6P3JblE7JnK2WAlIzI3Nk9Zl5oy7UQeYS7T9qo0s9nxQ3i3OMNcM0sRot1IO5F5z/IQc5m3V6lArY4rUPgEBdqNJJK+zNuTx5jLvL2nq9qO5kg/4RxzTS9qXE3rgskK
lVeetgcVmbZXM22vzOE6UDqatgeBTNuTaXsybU+m7cm0PZm2tydpe/nhFmbtZQMuU/Vkqp5M1ZOpejJVb4+OL8fGaRtnyMjzy2tlEemGIs8vT904sDsHmGM5gzJTb/MJ5oVMvXpnlxmKTNWjAqXuYapeJlFvNlcPqjJXr+neR786V6+e9OuWTNZbUwSaTNZrLUTnzSXrQU0m69UwKrqYrAf1PUzWy1sQMltPZjXJbD3J15KvZbaezNZraP/pMltvmyWqLs7Wq7s8lel6+ZWpIbNN5C17Ml2vSjUbHc02aXLNXtnvr4IupJtAmfAs79mT+XqVGtTsuAaFT9GgZiecnJZM2JMX7cmEvafr2o7mRj/lor3ydjU+zqcDKrf/2jP2+jJjr2bGXpnDdaWrF+2piszYkxl7MmNPZuzJjD2ZsScz9mTGnszYk6EqMmNPXq73tMWo2sbxMfJyvZqRv7quy8v1uCNHBV26XE8FMmVvF5frWZrM2CPipCmdSoHVFClPO0mB7fcVKVBEoCrnJ5K3ZuLNpvwW5b9+44sI9vwYEVEwht/YlKa1MqWhwuM7d3JPXaNZnz2TED6SrNrK/p7JyKNyGPcmmMAtpjeg7GdK6rOJY3n/T4P7fQkcpm/oTO6KrrLcq7jweD1lFHd29t7hnAsCexO7TMvFOTcbSP0eay46njlQVFhps5C/kjWZ+gSMYlmam0AaxKEJVywvoX3d0soJF5AJ35ec9/sFJvdd6BWuNnsLQlrvp5urn7dRK/p+pqQ+/yxfedCFtRfaBG+ZY8zXPVUVXiaMQuZD4i1M/OjEdRdXXnC/C2lt5dQKhCZJ/qf2+L6dWKHs4MQKTjEzDraQX1iSX2NHjqVt5VczLDjWtnYstZMRpGlvwmLf5apZkyZ7nTvfK0z2mitoo2yzK1232ff9LAhptLeiXXRptNdzBpSN9rqKpWy1K1212o39s9oL+uR1mO2GNNsbXrKzZrbXlGCzbLcr0m4faOZ2dvtvj9ntylv0tJvSbK9z/GO1p/03pcaiupTCqIGu2+268iYEc4cLal2RkrlJMlXl0QV1HdEsW75SNHWw8YDmr6wv0gDWb4MB4S37iHU4CeUEbYVPK5tPv+IowSIXEyjwucK4c3ioAjzUF8BDE+ChvQAeugAP/XnwaF81g5bOJkNTjzdbfc00y8tcS5HXzMqOVzgap7qXkk30dS0zqrS3iK9y3os1jo7+DEO0xhmTvx35KnT4BE09kppaauo3r6mh1NQvoan7piI1dV5TV8aCGOzZ0XJy7yY0Ncwi7tlPkesGb9DlpLcS0pF2GcLYnSTP4yLWthTLFg93pcT2whm9gCRuHuhpwD2JyNJN3Vxf4T7L3SO6tss1roplBw+XTT8Ec2MNsafnPviIiwtHD2V3CR0maN0+LmVb9tkJ0+WdZvR57SbLKBAUSFtN2mp7YKtp0lZr6gcFFbYaUVi9ZtOE1XGTTd/GZMtlUr/BrQhdWmzbB9ELLbZmcX7SZMO30u7S2dXQZCuIvTTYpMHWKYPNkAZbU4MNPmqwNZwlum6xmft57EeIj1xqX/pMeUzB5mjK8rEfv9QTLQDLh3/0OxoPrVtNb+kdh6HvOoHNPqvmMETVUVYDv4iPu5ogy22Z2OkpoFsc6E5DxaoOdN/ZqY0vfqmE3tWDzvGB1RfvL09P6Qy6THqYbWoJuVFMp9K1Dhxzrj9+zHmFRGNl6kxIfJ19SD+PHN8JGt0wvXabzT/bFVnMEiCnQuz8oc9raKGB+ed7wExksbxCdgC8M/1rGfMl7S8gvfo7cuOln/B++rbesn002oUN0G/njL1TJKVL33lFNxswjAsS3/uPWjIPinkSYE/ym2czy1o/OK+hzPPZ21D29EiTkE2Te5UdiU8gDwN3tZ4eiV769beq/EjMj0qVzFenTTJEWlcKhiJzJR9de6/lSqYmw9arBACLysS0OrpMMMB+HnbC9cyryJo0gMyabHpikeCwk/pr/aIUq5pM
ncR7TlUSvYvFq9FGoKZGb1p6JWZsDtsN/AmL/Kn1zf3gzwn5E/GnSv52NddUBlNqBhuHm3zoHDsYvXfuxjHS8qWD0RG6l+O/ju+cKBktx394wZQev51t2+HiMGJsjrex0fLxYnhtX3/+9PuN/eXqanjNxhPV/B82iejZoz/5dT1aOhWN/yIYnoYBv2rxkxtGt56TQymtcZzrWRwgRnZS6cjkq/Grg7BdqfJNTVThzBm7fpxr6qsbTZ3A4dQUqqzNdk50/ymilwIwvLLK+RYVBhxVqGgKpoVpIzTi7Y87L0kvNmRV1kAjYknDgEHOOR8e2ddt1WsB2LrTSS6W+FIfULiOAPBCfIh/eoXO8Pzq5k/76+HZl2GeCsh+DP+99JLVhk1afJhXiYjsvSfSAKtpgBtoSMWb7lnlg1Hb3ObF9kMx9HIL8tQKGoqUqhso1bLcY0Jp3q5ocye5QOpoS1K1WqRqG0ituT+NtGKCNLaN/1WRhg0CVlzjFtESNXotavQN1BgCaowXoMaoRY2xgRpTQI35AtSYtagxN1BjCaixXoAaqxY14lrtm8FqW3s4xOQZft+1LYwMiFqOm3yAXf7eFGTN5b6bue9WDk4/95yEqfICkF95gnzTIB/IAfKLT6Dnfxj5H2b+h9XqItVMB2V7t5KuWfvio57NdOPZ3Er0wiPUS4kX3FJ6TI6iM0m8b65dJXsY6CIK/3IniR0wU5/cv91Tezen5RrJasGZ3f2+cKOEm88TJFY2shdvl8w9hJPi/vssnUXRiCMcItdJ0pw5qED1vaK+B8qNAgeKMtDVD33D/N/CK3MS+1P3lblz601sxH8R33qCKjS4afjNiz3EA7bvjSMnWtmpY62gI/AtXLwmUSRV9TDbIYUX2XF2RVXqVcbYLEIPmSfRkrEd8dwqOV6bRVhrTQfKB0UB9OUkZA8AXr+Bisrr1RX6Aqx8QfzGD6rzljEyvrwoWTo+6rww9boHYdZ1uVJyHxwRDCrQuMcwCBd1xq0bTFYCILhOqdyOXL98/Vm5ijMtXH+Ge9X9hlRDjBmD81nCWbmflk5WEzR8/JZ5pndxcYC1gB0vECdObaLnC5ELalaFKbGsEC+REhcNPxrxu/DBzq67L9+uehs5izs7jDyEi5MGCKAaN+HiJjwKEzJd0UUllywkTl7krIfCTsLFKuJaQlWxcmQPelga3vWOwu/fQyx+PbQ0R5OTn8qPG08ib8FBWvi6tjsv7qG52v3euw7HYUIDrns/DQ9/7j04cW+89PykN16tA+3Nwqjnu04UIA2DT4+JYrcXBv6KjYFPHL0IQ/T9LkkW8eCXXx4eHj6sEJ8sx+6HSTj/5T9TqEzJ4DtPGXb4CsYP+U0e1P8BVc0AsOiX1BmRhdSkG7M5R4VF55ecqoqTCGFd0S+sq3W2CinrP6r3yd3L5Wb5c1GT03A59t36TaYXQdKZKT0gVEBqWrbWLkLIC5L6jWYba4Rie+bEibDJtOzJTVKHT9riyMc+JHGLtKwNIqGe7v9iE/UUW3ixDdYbXq+x1jyOuxpefDm3bz6fD0+vD8+Ho/q49NN7738HIpTgRpRg2yiRzV2K07lKmYHfQ8maVO2Rdxtgu3YNt6qKu0MR0KHEvsU06q2MVqFwDRWNBtzVbz67kPkHOydsLVhmrWOEtbbWE8STwsH8RIM2SqzNhwy9fIG083hVoTfWKrQiV0oatl8wsNX0ZDrmihIIeM5N9XTtma4+UsCjRxodtdwoFgNhSINIXipiH1pDh66mHGTf8EMCqR1pFTFh1soji/LcNp/+sbDsMtnSl8VwIrOzb1Gc79h6Bl8RBD4Kog8XbtAj28u9n9gM+3MV76NHJ/lHzLxdowM2pkMDZUJUVSsToltq+4SoIkLU5gNirRFCMh4KhKiKUiKE+H7IdjA+BHsL9DUR+lp99A2lhD85kreAv7mGP7DW8Le4o5nvYfd+6ylb0KGL6NBr06Gbm8eBBM4W6eDEFu4gGTnfkK2d
7g9kO/I1STFEpBj1h6RfpAQAC5aFHJprLGWWhZxOvb00Gr0e8qYIebM28ppmbsQe6GvYA73/8THXUy3kfxQXMli0f/w/40GyKA==
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
	AEBD::RefreshRates();
	__OnTick__();
}



class AEBD
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
	AEBD() {
		
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
	* In MQL4's documentation is written that ArraySort return either true or false, which is incorrect.
	* What ArraySort really returns the number of sorted elements or -1 on error. It is an "int" function, not "bool".
	*/
	template<typename T>
	static int ArraySort(T &array[], int count = WHOLE_ARRAY, int start = 0, int direction = 1) {
		// What is the idea here:
		// 1) We copy part of the array that needs to be sorted and store this in temporary array
		// 2) We sort that temporary array
		// 3) Over the previously copied part of the original array we put the values of the sorted array
	
		if (count <= 0) count = 0; // WHOLE_ARRAY in MQL4 is 0 and in MQL5 is -1
		if (start < 0) start = 0;
		direction = (direction == 2) ? -1 : 1; // In MQL4 when the value is anything different than 2, it sorts by ascending order
	
		int arrayRange = ::ArrayRange(array, 0);
		int howManyElements = (count == 0) ? arrayRange : count;
	
		int end = start + howManyElements - 1;
		if (end >= arrayRange) end = arrayRange - 1;
	
		// MQL4 reacts on this with error message and the returned value is -1
		if (start > arrayRange) {
			::Print("incorrect start position " + (string)start + " for ArraySort function");
			return -1;
		}
	
		// Bubble sort algorithm: https://www.geeksforgeeks.org/bubble-sort/
		bool swapped = false;
	
		if (direction == 1) {
			for (int i = start; i <= end; i++) {
				swapped = false;
	
				for (int j = start; j < end; j++) {
					if (array[j] > array[j+1]) {
						T temp     = array[j];
						array[j]   = array[j+1];
						array[j+1] = temp;
						swapped = true;
					}
				}
	
				if (swapped == false) break;
			}
		}
		else {
			for (int i = end; i >= start; i--) {
				swapped = false;
	
				for (int j = end; j > start; j--) {
					if (array[j] > array[j-1]) {
						T temp     = array[j];
						array[j]   = array[j-1];
						array[j-1] = temp;
						swapped = true;
					}
				}
	
				if (swapped == false) break;
			}
		}
	
		return end - start + 1;
	}
	template<typename T>
	static int ArraySort(T &array[][], int count = WHOLE_ARRAY, int start = 0, int direction = 1) {
		// What is the idea here:
		// 1) We copy part of the array that needs to be sorted and store this in temporary array
		// 2) We sort that temporary array
		// 3) Over the previously copied part of the original array we put the values of the sorted array
	
		if (count <= 0) count = 0; // WHOLE_ARRAY in MQL4 is 0 and in MQL5 is -1
		if (start < 0) start = 0;
		direction = (direction == 2) ? -1 : 1; // In MQL4 when the value is anything different than 2, it sorts by ascending order
	
		int arrayRange = ::ArrayRange(array, 0);
		int howManyElements = (count == 0) ? arrayRange : count;
	
		int end = start + howManyElements - 1;
		if (end >= arrayRange) end = arrayRange - 1;
	
		// MQL4 reacts on this with error message and the returned value is -1
		if (start > arrayRange) {
			::Print("incorrect start position " + (string)start + " for ArraySort function");
			return -1;
		}
	
		// Bubble sort algorithm: https://www.geeksforgeeks.org/bubble-sort/
		bool swapped = false;
		int elementsCount = ::ArrayRange(array, 1);
	
		if (direction == 1) {
			for (int i = start; i <= end; i++) {
				swapped = false;
	
				for (int j = start; j < end; j++) {
					if (array[j][0] > array[j + 1][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp        = array[j][k];
							array[j][k]   = array[j+1][k];
							array[j+1][k] = temp;
							swapped = true;
						}
					}
				}
	
				if (swapped == false) break;
			}
		}
		else {
			for (int i = end; i >= start; i--) {
				swapped = false;
	
				for (int j = end; j > start; j--) {
					if (array[j][0] > array[j - 1][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp        = array[j][k];
							array[j][k]   = array[j-1][k];
							array[j-1][k] = temp;
							swapped = true;
						}
					}	
				}
	
				if (swapped == false) break;
			}
		}
	
		return end - start + 1;
	}
	template<typename T>
	static int ArraySort(T &array[][][], int count = WHOLE_ARRAY, int start = 0, int direction = 1) {
		// What is the idea here:
		// 1) We copy part of the array that needs to be sorted and store this in temporary array
		// 2) We sort that temporary array
		// 3) Over the previously copied part of the original array we put the values of the sorted array
	
		if (count <= 0) count = 0; // WHOLE_ARRAY in MQL4 is 0 and in MQL5 is -1
		if (start < 0) start = 0;
		direction = (direction == 2) ? -1 : 1; // In MQL4 when the value is anything different than 2, it sorts by ascending order
	
		int arrayRange = ::ArrayRange(array, 0);
		int howManyElements = (count == 0) ? arrayRange : count;
	
		int end = start + howManyElements - 1;
		if (end >= arrayRange) end = arrayRange - 1;
	
		// MQL4 reacts on this with error message and the returned value is -1
		if (start > arrayRange) {
			Print("incorrect start position " + (string)start + " for ArraySort function");
			return -1;
		}
	
		// Bubble sort algorithm: https://www.geeksforgeeks.org/bubble-sort/
		bool swapped = false;
		int elementsCount = ::ArrayRange(array, 2);
	
		if (direction == 1) {
			for (int i = start; i <= end; i++) {
				swapped = false;
	
				for (int j = start; j < end; j++) {
					if (array[j][0][0] > array[j+1][0][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp           = array[j][0][k];
							array[j][0][k]   = array[j+1][0][k];
							array[j+1][0][k] = temp;
							swapped = true;
						}
					}
				}
	
				if (swapped == false) break;
			}
		}
		else {
			for (int i = end; i >= start; i--) {
				swapped = false;
	
				for (int j = end; j > start; j--) {
					if (array[j][0][0] > array[j-1][0][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp           = array[j][0][k];
							array[j][0][k]   = array[j-1][0][k];
							array[j-1][0][k] = temp;
							swapped = true;
						}
					}	
				}
	
				if (swapped == false) break;
			}
		}
	
		return end - start + 1;
	}
	template<typename T>
	static int ArraySort(T &array[][][][], int count = WHOLE_ARRAY, int start = 0, int direction = 1) {
		// What is the idea here:
		// 1) We copy part of the array that needs to be sorted and store this in temporary array
		// 2) We sort that temporary array
		// 3) Over the previously copied part of the original array we put the values of the sorted array
	
		if (count <= 0) count = 0; // WHOLE_ARRAY in MQL4 is 0 and in MQL5 is -1
		if (start < 0) start = 0;
		direction = (direction == 2) ? -1 : 1; // In MQL4 when the value is anything different than 2, it sorts by ascending order
	
		int arrayRange = ::ArrayRange(array, 0);
		int howManyElements = (count == 0) ? arrayRange : count;
	
		int end = start + howManyElements - 1;
		if (end >= arrayRange) end = arrayRange - 1;
	
		// MQL4 reacts on this with error message and the returned value is -1
		if (start > arrayRange) {
			::Print("incorrect start position " + (string)start + " for ArraySort function");
			return -1;
		}
	
		// Bubble sort algorithm: https://www.geeksforgeeks.org/bubble-sort/
		bool swapped = false;
		int elementsCount = ::ArrayRange(array, 3);
	
		if (direction == 1) {
			for (int i = start; i <= end; i++) {
				swapped = false;
	
				for (int j = start; j < end; j++) {
					if (array[j][0][0][0] > array[j+1][0][0][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp              = array[j][0][0][k];
							array[j][0][0][k]   = array[j+1][0][0][k];
							array[j+1][0][0][k] = temp;
							swapped = true;
						}
					}
				}
	
				if (swapped == false) break;
			}
		}
		else {
			for (int i = end; i >= start; i--) {
				swapped = false;
	
				for (int j = end; j > start; j--) {
					if (array[j][0][0][0] > array[j-1][0][0][0]) {
						for (int k = 0; k < elementsCount; k++) {
							T temp              = array[j][0][0][k];
							array[j][0][0][k]   = array[j-1][0][0][k];
							array[j-1][0][0][k] = temp;
							swapped = true;
						}
					}	
				}
	
				if (swapped == false) break;
			}
		}
	
		return end - start + 1;
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyClose(const string symbol_name, int timeframe, int start_pos, int count, double &close_array[]) {
		return ::CopyClose(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, close_array);
	}
	static int CopyClose(const string symbol_name, int timeframe, datetime start_time, int count, double &close_array[]) {
		return ::CopyClose(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, close_array);
	}
	static int CopyClose(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, double &close_array[]) {
		return ::CopyClose(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, close_array);
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyHigh(const string symbol_name, int timeframe, int start_pos, int count, double &high_array[]) {
		return ::CopyHigh(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, high_array);
	}
	static int CopyHigh(const string symbol_name, int timeframe, datetime start_time, int count, double &high_array[]) {
		return ::CopyHigh(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, high_array);
	}
	static int CopyHigh(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, double &high_array[]) {
		return ::CopyHigh(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, high_array);
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyLow(const string symbol_name, int timeframe, int start_pos, int count, double &low_array[]) {
		return ::CopyLow(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, low_array);
	}
	static int CopyLow(const string symbol_name, int timeframe, datetime start_time, int count, double &low_array[]) {
		return ::CopyLow(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, low_array);
	}
	static int CopyLow(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, double &low_array[]) {
		return ::CopyLow(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, low_array);
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyOpen(const string symbol_name, int timeframe, int start_pos, int count, double &open_array[]) {
		return ::CopyOpen(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, open_array);
	}
	static int CopyOpen(const string symbol_name, int timeframe, datetime start_time, int count, double &open_array[]) {
		return ::CopyOpen(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, open_array);
	}
	static int CopyOpen(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, double &open_array[]) {
		return ::CopyOpen(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, open_array);
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyTickVolume(const string symbol_name, int timeframe, int start_pos, int count, long &volume_array[]) {
		return ::CopyTickVolume(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, volume_array);
	}
	static int CopyTickVolume(const string symbol_name, int timeframe, datetime start_time, int count, long &volume_array[]) {
		return ::CopyTickVolume(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, volume_array);
	}
	static int CopyTickVolume(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, long &volume_array[]) {
		return ::CopyTickVolume(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, volume_array);
	}
	
	/**
	* Overloads for the case when numeric value is used for timeframe
	*/
	static int CopyTime(const string symbol_name, int timeframe, int start_pos, int count, datetime &time_array[]) {
		return ::CopyTime(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_pos, count, time_array);
	}
	static int CopyTime(const string symbol_name, int timeframe, datetime start_time, int count, datetime &time_array[]) {
		return ::CopyTime(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, count, time_array);
	}
	static int CopyTime(const string symbol_name, int timeframe, datetime start_time, datetime stop_time, datetime &time_array[]) {
		return ::CopyTime(symbol_name, AEBD::_ConvertTimeframe_(timeframe), start_time, stop_time, time_array);
	}
	
	static string DoubleToStr(double value, int digits = 8) {
		return ::DoubleToString(value, digits);
	}
	
	/**
	* In MQL4's documentation errors are also shown as numeric values and sometimes people use these numbers, because they are shorter to write.
	* This means that GetLastError shoud return such MQL4 numeric values instead of the MQL5 values.
	* Supports custom error codes that can be set with AEBD -> _LastError
	*/
	static int GetLastError() {
		int errorCode = 0;
	
		if (AEBD::_LastError >= 0) {
			errorCode = AEBD::_LastError;
			AEBD::_LastError = -1;
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
				propID = AEBD::_ConvertEnumObjectPropertyDouble_(prop_id);
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
				propID = AEBD::_ConvertEnumObjectPropertyDouble_(prop_id);
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
				propID = AEBD::_ConvertEnumObjectPropertyInteger_(prop_id);
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
				propID = AEBD::_ConvertEnumObjectPropertyInteger_(prop_id);
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
		ENUM_OBJECT_PROPERTY_DOUBLE propID = AEBD::_ConvertEnumObjectPropertyDouble_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetDouble(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetDouble(long chart_id, const string object_name, int prop_id, int prop_modifier, double prop_value) {
		ENUM_OBJECT_PROPERTY_DOUBLE propID = AEBD::_ConvertEnumObjectPropertyDouble_(prop_id);
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
		ENUM_OBJECT_PROPERTY_INTEGER propID = AEBD::_ConvertEnumObjectPropertyInteger_(prop_id);
		if (propID == -1) return false;
	
		return ::ObjectSetInteger(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetInteger(long chart_id, const string object_name, int prop_id, int prop_modifier, long prop_value) {
		ENUM_OBJECT_PROPERTY_INTEGER propID = AEBD::_ConvertEnumObjectPropertyInteger_(prop_id);
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
		ENUM_OBJECT_PROPERTY_STRING propID = AEBD::_ConvertEnumObjectPropertyString_(prop_id);
		if (propID == -1) return true;
	
		return ::ObjectSetString(chart_id, object_name, propID, prop_value);
	}
	static bool ObjectSetString(long chart_id, const string object_name, int prop_id, int prop_modifier, string prop_value) {
		ENUM_OBJECT_PROPERTY_STRING propID = AEBD::_ConvertEnumObjectPropertyString_(prop_id);
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
			if (AEBD_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
				request.type_filling = ORDER_FILLING_FOK;
			else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
				request.type_filling = ORDER_FILLING_IOC;
			else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
				request.type_filling = ORDER_FILLING_RETURN;
	
			int success = ::OrderSend(request, result);
	
			//-- error check --------------------------------------------------
			if (!success || (result.retcode!=TRADE_RETCODE_DONE && result.retcode!=TRADE_RETCODE_PLACED && result.retcode!=TRADE_RETCODE_DONE_PARTIAL)) {
				string errmsgpfx = "Closing trade error";
				int erraction    = AEBD_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
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
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PRICE_CURRENT);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_PRICE_CURRENT);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_PRICE);
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(AEBD::OrderTicket(), ORDER_PRICE_CURRENT);
	
		return 0.0;
	}
	
	static datetime OrderCloseTime() {
		if (AEBD_TRADES::LoadedType() == 1) return (datetime)::PositionGetInteger(POSITION_TIME);
	
		if (AEBD_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_DONE);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return (datetime)::HistoryDealGetInteger(ticket, DEAL_TIME);
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(AEBD::OrderTicket(), ORDER_TIME_DONE);
	
		return 0;
	}
	
	static string OrderComment() {
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetString(POSITION_COMMENT);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetString(ORDER_COMMENT);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetString(ticket, DEAL_COMMENT); 
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetString(AEBD::OrderTicket(), ORDER_COMMENT);
	
		return "";
	}
	
	static double OrderCommission() {
		if (AEBD_TRADES::LoadedType() == 1) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetDouble(ticket, DEAL_COMMISSION); 
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 2) return 0;
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_COMMISSION);
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return 0;
		
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
				int erraction    = AEBD_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
	
				// MQL5 does not put the trading error into GetLastError, but I need it for later use in GetLastError
				AEBD::_LastError_(result.retcode);
	
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
	
		if (AEBD_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_EXPIRATION);
		if (AEBD_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(AEBD::OrderTicket(), ORDER_TIME_EXPIRATION);
		
		return 0.0;
	}
	
	static double OrderLots() {
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_VOLUME);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_VOLUME_CURRENT);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return ::HistoryDealGetDouble(ticket, DEAL_VOLUME);
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(AEBD::OrderTicket(), ORDER_VOLUME_CURRENT);
	
		return 0.0;
	}
	
	static long OrderMagicNumber() {
		if (AEBD_TRADES::LoadedType() == 1) return (long)::PositionGetInteger(POSITION_MAGIC);
	
		if (AEBD_TRADES::LoadedType() == 2) return (long)::OrderGetInteger(ORDER_MAGIC);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = total -1; index >= 0; index--) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_OUT) {
					return (long)::HistoryDealGetInteger(ticket, DEAL_MAGIC);
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return (long)::HistoryOrderGetInteger(AEBD::OrderTicket(), ORDER_MAGIC);
	
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
				int erraction    = AEBD_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
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
						((AEBD_TRADES::LoadedType() == 1 && ::PositionSelectByTicket(ticket)) || ::OrderSelect(ticket))
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
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PRICE_OPEN);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_PRICE_OPEN);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetDouble(ticket, DEAL_PRICE); 
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(AEBD::OrderTicket(), ORDER_PRICE_OPEN);
	
		return 0.0;
	}
	
	static datetime OrderOpenTime() {
		if (AEBD_TRADES::LoadedType() == 1) return (datetime)::PositionGetInteger(POSITION_TIME);
	
		if (AEBD_TRADES::LoadedType() == 2) return (datetime)::OrderGetInteger(ORDER_TIME_SETUP);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
	
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return (datetime)::HistoryDealGetInteger(ticket, DEAL_TIME); 
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return (datetime)::HistoryOrderGetInteger(AEBD::OrderTicket(), ORDER_TIME_SETUP);
	
		return 0;
	}
	
	static double OrderProfit() {
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_PROFIT);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
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
	
		AEBD::OrderTicket(0);
		AEBD_TRADES::LoadedType(0);
	
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
				AEBD::_LastError_(ERR_INVALID_PARAMETER);
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
							AEBD::OrderTicket(tradeTicket);
							AEBD_TRADES::LoadedType(loadedTypeTrade);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket == 0 && orderTicket > 0) {
						orderIndex++;
						
						if (iterationIndex > index) {
							AEBD::OrderTicket(orderTicket);
							AEBD_TRADES::LoadedType(loadedTypeOrder);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket <= orderTicket) {
						tradeIndex++;
						
						if (iterationIndex > index) {
							AEBD::OrderTicket(tradeTicket);
							AEBD_TRADES::LoadedType(loadedTypeTrade);
							selected = true;
							
							break;
						}
					}
					else if (tradeTicket > orderTicket) {
						orderIndex++;
						
						if (iterationIndex > index) {
							AEBD::OrderTicket(orderTicket);
							AEBD_TRADES::LoadedType(loadedTypeOrder);
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
				AEBD::OrderTicket(::PositionGetInteger(POSITION_IDENTIFIER));
				AEBD_TRADES::LoadedType(1);
				selected = true;
			}
			else if (::OrderSelect(ticket)) {
				AEBD::OrderTicket(ticket);
				AEBD_TRADES::LoadedType(2);
				selected = true;
			}
			else {
				::HistorySelect(0, ::TimeCurrent() + 1);
				long posID = ::HistoryDealGetInteger(ticket, DEAL_POSITION_ID);
	
				if (posID) {
					AEBD::OrderTicket(posID);
					AEBD_TRADES::LoadedType(3);
					selected = true;
				}
	
				if (selected == false) {
					long orderTicket = ::HistoryOrderGetInteger(ticket, ORDER_TICKET);
					
					if (orderTicket) {
						AEBD::OrderTicket(ticket);
						AEBD_TRADES::LoadedType(4);
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
	
				if (AEBD_TRADES::IsExpirationTypeAllowed(symbol, SYMBOL_EXPIRATION_GTC))
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
					AEBD::_LastError_(TRADE_RETCODE_INVALID_STOPS);
	
					return -1;
				}
			}
	
			// Give error 130 when the stops are wrong right away
			if (
				   ((type == POSITION_TYPE_BUY || type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_BUY_STOP) && ((sl > 0 && sl >= price) || (tp > 0 && tp <= price)))
				|| ((type == POSITION_TYPE_SELL || type == ORDER_TYPE_SELL_LIMIT || type == ORDER_TYPE_SELL_STOP) && ((sl > 0 && sl <= price) || (tp > 0 && tp >= price)))
			) {
					AEBD::_LastError_(TRADE_RETCODE_INVALID_STOPS);
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
				if (AEBD_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN))
					request.type_filling = ORDER_FILLING_RETURN;
				else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_FOK))
					request.type_filling = ORDER_FILLING_FOK;
				else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_IOC))
					request.type_filling = ORDER_FILLING_IOC;
			}
			else {
				// in case of positions I would check for SYMBOL_FILLING_ and then set ORDER_FILLING_
				// this is because it appears that AEBD_TRADES::IsFillingTypeAllowed() works correct with SYMBOL_FILLING_, but then the position works correctly with ORDER_FILLING_
				// FOK and IOC integer values are not the same for ORDER and SYMBOL
	
				if (AEBD_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
					request.type_filling = ORDER_FILLING_FOK;
				else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
					request.type_filling = ORDER_FILLING_IOC;
				else if (AEBD_TRADES::IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
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
	
				int erraction = AEBD_TRADES::CheckForTradingError(result.retcode, errmsgpfx);
	
				switch (erraction) {
					case 0: break;    // no error
					case 1: continue; // overcomable error
					case 2: break;    // fatal error
				}
	
				// MQL5 does not put the trading error into GetLastError, but I need it for later use in GetLastError
				AEBD::_LastError_(result.retcode);
	
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
						if (AEBD_TRADES::LoadPendingOrder(result.order)) {
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
			AEBD::OrderTicket(ticket);
			AEBD_TRADES::LoadedType(loadedType);
			::ResetLastError();
		}
	
		return (int)ticket;
	}
	
	static double OrderStopLoss() {
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_SL);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_SL);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
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
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(AEBD::OrderTicket(), ORDER_SL);
	
		return 0.0;
	}
	
	static double OrderSwap() {
		if (FXD_SELECTED_TYPE == 1) return ::PositionGetDouble(POSITION_SWAP);
	
		if (FXD_SELECTED_TYPE == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
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
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetString(POSITION_SYMBOL);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetString(ORDER_SYMBOL);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
			int total = ::HistoryDealsTotal();
			
			for (int index = 0; index < total; index++) {
				ulong ticket = ::HistoryDealGetTicket(index);
				ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)::HistoryDealGetInteger(ticket, DEAL_ENTRY);
	
				if (entry == DEAL_ENTRY_IN) {
					return ::HistoryDealGetString(ticket, DEAL_SYMBOL); 
				}
			}
		}
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetString(AEBD::OrderTicket(), ORDER_SYMBOL);
	
		return _Symbol;
	}
	
	static double OrderTakeProfit() {
		if (AEBD_TRADES::LoadedType() == 1) return ::PositionGetDouble(POSITION_TP);
	
		if (AEBD_TRADES::LoadedType() == 2) return ::OrderGetDouble(ORDER_TP);
	
		if (AEBD_TRADES::LoadedType() == 3) {
			::HistorySelectByPosition(AEBD::OrderTicket());
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
	
		if (AEBD_TRADES::LoadedType() == 4) return ::HistoryOrderGetDouble(AEBD::OrderTicket(), ORDER_TP);
	
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
		if (AEBD_TRADES::LoadedType() == 1) return (int)::PositionGetInteger(POSITION_TYPE);
		if (AEBD_TRADES::LoadedType() == 2) return (int)::OrderGetInteger(ORDER_TYPE);
		if (AEBD_TRADES::LoadedType() == 3) return (int)::HistoryDealGetInteger(AEBD::OrderTicket(), DEAL_TYPE);
		if (AEBD_TRADES::LoadedType() == 4) return (int)::HistoryOrderGetInteger(AEBD::OrderTicket(), ORDER_TYPE);
		
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
	* Overload for the case when numeric value is used for timeframe
	*/
	static int PeriodSeconds(int period = PERIOD_CURRENT) {
		return ::PeriodSeconds(AEBD::_ConvertTimeframe_(period));
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
	
	/**
	* Values in ENUM_APPLIED_PRICE are from 0 to 6 in MQL4 and from 1 to 7 in MQL5.
	* These overloads help with the situation when the applied price is privided as an integer value.
	*/
	static ENUM_APPLIED_PRICE _ConvertAppliedPrice_(ENUM_APPLIED_PRICE applied_price) {
		return applied_price;
	}
	
	static ENUM_APPLIED_PRICE _ConvertAppliedPrice_(int applied_price) {
		return (ENUM_APPLIED_PRICE)(++applied_price);
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
	
		AEBD::_IndicatorProblem_(true);
	
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
	
	template<typename AP>
	static double iMA( 
		string symbol,
		int timeframe,
		int ma_period,
		int ma_shift,
		ENUM_MA_METHOD ma_method,
		AP applied_price,
		int shift
	) {
		return AEBD::_GetIndicatorValue_(
			::iMA(
				symbol,
				AEBD::_ConvertTimeframe_(timeframe),
				ma_period,
				ma_shift,
				ma_method,
				AEBD::_ConvertAppliedPrice_(applied_price)),
			0,
			shift
		);
	}
	
	/**
	* Overload for the case when numeric value is used for timeframe
	*/
	static datetime iTime(const string symbol, int timeframe, int shift) {
		return ::iTime(symbol, AEBD::_ConvertTimeframe_(timeframe), shift);
	}
};
int AEBD::_LastError = -1;

class AEBD_TRADES
{
public:
	/**
	* Constructor
	*/
	AEBD_TRADES() {};
	
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
				AEBD_TRADES::LoadedType(2);
				AEBD::OrderTicket(ticket);
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
bool ___RefreshRates___ = AEBD::RefreshRates();

//== fxDreema MQL4 to MQL5 Converter ==//