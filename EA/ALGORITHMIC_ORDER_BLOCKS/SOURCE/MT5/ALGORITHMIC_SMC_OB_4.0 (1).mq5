//+------------------------------------------------------------------------------+//
//)   ____  _  _  ____  ____  ____  ____  __  __    __      ___  _____  __  __   (//
//)  ( ___)( \/ )(  _ \(  _ \( ___)( ___)(  \/  )  /__\    / __)(  _  )(  \/  )  (//
//)   )__)  )  (  )(_) ))   / )__)  )__)  )    (  /(__)\  ( (__  )(_)(  )    (   (//
//)  (__)  (_/\_)(____/(_)\_)(____)(____)(_/\/\_)(__)(__)()\___)(_____)(_/\/\_)  (//
//)   https://fxdreema.com                             Copyright 2023, fxDreema  (//
//+------------------------------------------------------------------------------+//
#property copyright   "COPYRIGHT, 2023 - ALGORITHMIC, GMBH"
#property link        "https://www.algorithmic.one"
#property description "ALGORITHMIC SMC ORDER BLOCKS"
#property version     "4.0"
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
#define PROJECT_ID "mt5-6653"
//--
// Point Format Rules
#define POINT_FORMAT_RULES "0.001=0.01,0.00001=0.0001,0.000001=0.0001" // this is deserialized in a special function later
#define ENABLE_SPREAD_METER false
#define ENABLE_STATUS false
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
#define ON_TIMER_PERIOD 60 // Timer event period (in seconds)

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// System constants (predefined constants) //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
//--
#define TLOBJPROP_TIME1 801
#define OBJPROP_TL_PRICE_BY_SHIFT 802
#define OBJPROP_TL_SHIFT_BY_PRICE 803
#define OBJPROP_FIBOVALUE 804
#define OBJPROP_FIBOPRICEVALUE 805
#define OBJPROP_FIRSTLEVEL 806
#define OBJPROP_TIME1 807
#define OBJPROP_TIME2 808
#define OBJPROP_TIME3 809
#define OBJPROP_PRICE1 810
#define OBJPROP_PRICE2 811
#define OBJPROP_PRICE3 812
#define OBJPROP_BARSHIFT1 813
#define OBJPROP_BARSHIFT2 814
#define OBJPROP_BARSHIFT3 815
#define SEL_CURRENT 0
#define SEL_INITIAL 1

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// Enumerations, Imports, Constants, Variables //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//

//--
// Enumerations by Custom Indicators










//--
// Constants (Input Parameters)
input string SYMB = "======== INSTRUMENTS CONFIGURATION ========"; // ======== INSTRUMENTS CONFIGURATION ======== 
input string SYMBOLS = ""; //  INSTRUMENTS TO USE SEPERATED BY COMMA ","
input string TP_SL_CONFIG = "======== TP & SL CONFIGURATION ========"; // ======== TP & SL CONFIGURATION ======== 
input bool RM_PERCENT_ACT = true; // MONEY MANAGEMTN BASED ON % FREE EQUITY NOT LOTS
input double RM_PERCT = 0.5; // SL = % RISK OF BALANCE WHEN HITS SL
input double TP_perc = 300.0; // TP = % OF SL - 1:2RR = 200 - 1:3RR = 300 - 1:5RR = 500
input string _________BREAKEVEN_CONFIG__ = "======== BREAKEVEN_CONFIG ========"; // ======== BREAKEVEN_CONFIG ========
input bool BE_ENABLED = true; // BE_ENABLED
input double BreakEvenTP = 50.0; // BREAKEVEN AT TP %
input string _________PARTIALS_CONFIG_______ = "======== PARTIALS_CONFIG ========"; // ======== PARTIALS_CONFIG ========
input bool PARTIALS_ENABLED = false; // PARTIALS_ENABLED - 
input double PARTIALS_TRIGGER_AMOUNT = 1000.0; // AMOUNT OF MONEY TO TRIGGER THE PARTIAL
input double PartialPrecent = 50.0; // THE PARTIALS % OF THE EXISTING VOLUME WHEN BE IS HIT
input string _TRAILING_CONFIG = "======== SL TRAILING_CONFIG ========"; // ======== SL TRAILING_CONFIG ========
input bool TRAILING_ENABLED = false; // SL TRAILING_ENABLED
input double Trailing_Stop = 50.0; // SL STARTS TRAILING AT % OF TOTAL PROFIT SIZE
input double Trailing_Step = 25.0; // STEPS ARE A %  OF SL TRAILING STOP
input string TP_TRAILING_CONFIG = "======== TP TRAILING_CONFIG ========"; // ======== TP TRAILING_CONFIG ========
input bool TP_TRAILING_ENABLED = true; // TP TRAILING_ENABLED
input double TP_TRAILING_STOP = 1000.0; // TP STARTS TRAILING -  HOW MANY PIPS ON TP TO START TRAILING
input double TP_TRAILING_STEP = 2500.0; // TP TRAILING STEP - NEW TP IN PIPS AS STEP AFTER TRIGGER ABOVE
input string MAX_DD = "===== MAX DRAWDOWN KILL SWITCH CONFIG ====="; // ===== MAX DRAWDOWN KILL SWITCH CONFIG =====
input bool Cut_Loss = false; // MAX DRAWDOWN STOP (enabled if = true)
input double Cut_Loss_percent = 1.5; // MAX DRAWDOWN TO STOP ALL TRADES AT % (% of total balance)
input string PROFIT_CONFIG = "===== PROFIT CONFIG ====="; // ===== PROFIT CONFIG =====
input double DAILY_PROFIT_GOAL = 5000.0; // DEFINES MAX DAILY PROFIT 
input double DAILY_LOSS_GOAL = -500.0; // DEFINES MAX DAILY LOSS 
input string Time_Control = "======== TIME CONFIGURATION ========"; // ======== TIME CONFIGURATION ======== 
input bool Monday = true; // MONDAY - ENABLED TRUE/FALSE
input bool Tuesday = true; // TUESDAY - ENABLED TRUE/FALSE
input bool Wednesday = true; // WEDNESDAY - ENABLED TRUE/FALSE
input bool Thursday = true; // THURSDAY - ENABLED TRUE/FALSE
input bool Friday = true; // FRIDAY - ENABLED TRUE/FALSE
input bool Saturday = false; // SATURDAY - ENABLED TRUE/FALSE
input bool Sunday = false; // SUNDAY - ENABLED TRUE/FALSE
input string Start_Hour = "0:01"; // START HOUR
input string End_Hour = "23:59"; // END HOUR
input string MAX_PT = "======== MAX_PARALELL_TRADES CONFIGURATION ========"; // ======== MAX_PARALELL_TRADES CONFIGURATION ======== 
input int MAX_PARALELL_TRADES_BUY = 1; // MAX_PARALELL_TRADES_BUY
input int MAX_PARALELL_TRADES_SELL = 1; // MAX_PARALELL_TRADES_SELL
input int TOTAL_MAX_PARALLEL_TRADES = 1; // TOTAL_MAX_PARALLEL_TRADES
input int MagicStart = 73633; // Magic Number, kind of...
class c
{
		public:
	static string SYMB;
	static string SYMBOLS;
	static string TP_SL_CONFIG;
	static bool RM_PERCENT_ACT;
	static double RM_PERCT;
	static double TP_perc;
	static string _________BREAKEVEN_CONFIG__;
	static bool BE_ENABLED;
	static double BreakEvenTP;
	static string _________PARTIALS_CONFIG_______;
	static bool PARTIALS_ENABLED;
	static double PARTIALS_TRIGGER_AMOUNT;
	static double PartialPrecent;
	static string _TRAILING_CONFIG;
	static bool TRAILING_ENABLED;
	static double Trailing_Stop;
	static double Trailing_Step;
	static string TP_TRAILING_CONFIG;
	static bool TP_TRAILING_ENABLED;
	static double TP_TRAILING_STOP;
	static double TP_TRAILING_STEP;
	static string MAX_DD;
	static bool Cut_Loss;
	static double Cut_Loss_percent;
	static string PROFIT_CONFIG;
	static double DAILY_PROFIT_GOAL;
	static double DAILY_LOSS_GOAL;
	static string Time_Control;
	static bool Monday;
	static bool Tuesday;
	static bool Wednesday;
	static bool Thursday;
	static bool Friday;
	static bool Saturday;
	static bool Sunday;
	static string Start_Hour;
	static string End_Hour;
	static string MAX_PT;
	static int MAX_PARALELL_TRADES_BUY;
	static int MAX_PARALELL_TRADES_SELL;
	static int TOTAL_MAX_PARALLEL_TRADES;
	static int MagicStart;
};
string c::SYMB;
string c::SYMBOLS;
string c::TP_SL_CONFIG;
bool c::RM_PERCENT_ACT;
double c::RM_PERCT;
double c::TP_perc;
string c::_________BREAKEVEN_CONFIG__;
bool c::BE_ENABLED;
double c::BreakEvenTP;
string c::_________PARTIALS_CONFIG_______;
bool c::PARTIALS_ENABLED;
double c::PARTIALS_TRIGGER_AMOUNT;
double c::PartialPrecent;
string c::_TRAILING_CONFIG;
bool c::TRAILING_ENABLED;
double c::Trailing_Stop;
double c::Trailing_Step;
string c::TP_TRAILING_CONFIG;
bool c::TP_TRAILING_ENABLED;
double c::TP_TRAILING_STOP;
double c::TP_TRAILING_STEP;
string c::MAX_DD;
bool c::Cut_Loss;
double c::Cut_Loss_percent;
string c::PROFIT_CONFIG;
double c::DAILY_PROFIT_GOAL;
double c::DAILY_LOSS_GOAL;
string c::Time_Control;
bool c::Monday;
bool c::Tuesday;
bool c::Wednesday;
bool c::Thursday;
bool c::Friday;
bool c::Saturday;
bool c::Sunday;
string c::Start_Hour;
string c::End_Hour;
string c::MAX_PT;
int c::MAX_PARALELL_TRADES_BUY;
int c::MAX_PARALELL_TRADES_SELL;
int c::TOTAL_MAX_PARALLEL_TRADES;
int c::MagicStart;


//--
// Variables (Global Variables)




















class v
{
		public:
	static string EA_NAME;
	static string L_Name;
	static string L_Email;
	static string L_Activation;
	static string L_Validity;
	static string L_Validity_T;
	static double Cut_Loss_percent;
	static bool max_dd_hit;
	static bool EA_Running;
	static bool EA_Weekday;
	static double SL;
	static double TP;
	static bool max_d_profit_hit;
	static bool max_daily_loss_hit;
	static double total_profit_remaining;
	static int DISPLACEMENT;
	static int END_candle_ID_1;
	static int END_candle_ID_2;
	static string Trendline_Name_B;
	static string Trendline_Name_S;
};
string v::EA_NAME;
string v::L_Name;
string v::L_Email;
string v::L_Activation;
string v::L_Validity;
string v::L_Validity_T;
double v::Cut_Loss_percent;
bool v::max_dd_hit;
bool v::EA_Running;
bool v::EA_Weekday;
double v::SL;
double v::TP;
bool v::max_d_profit_hit;
bool v::max_daily_loss_hit;
double v::total_profit_remaining;
int v::DISPLACEMENT;
int v::END_candle_ID_1;
int v::END_candle_ID_2;
string v::Trendline_Name_B;
string v::Trendline_Name_S;



//-----------------------------------======== SMC CONFIGURATION ========"------------------------------------------------------------------------------
// Externs (Global Variables)
string inp94_ObjText_se1 = "======== SMC CONFIGURATION ========";
int inp94_ObjText_mode = 2;
int inp94_ObjText_inp_style = 1;
bool inp94_ObjText_show_trend = false;
string inp94_ObjText_s1 = "";
string inp94_ObjText_se2 = "------------";
bool inp94_ObjText_show_internals = true;
int inp94_ObjText_show_ibull = 0;
color inp94_ObjText_swing_ibull_css = MediumSeaGreen;
int inp94_ObjText_show_ibear = 0;
color inp94_ObjText_swing_ibear_css = OrangeRed;
bool inp94_ObjText_ifilter_confluence = false;
int inp94_ObjText_internal_structure_size = 7;
string inp94_ObjText_s2 = "";
string inp94_ObjText_se3 = "------------";
bool inp94_ObjText_show_Structure = true;
int inp94_ObjText_show_bull = 0;
color inp94_ObjText_swing_bull_css = MediumSeaGreen;
int inp94_ObjText_show_bear = 0;
color inp94_ObjText_swing_bear_css = OrangeRed;
/-----------------------------------======== BB CONFIGURATION ========"------------------------------------------------------------------------------
string inp96_ObjText_se1 = "";
int inp96_ObjText_len = 5;
bool inp96_ObjText_showManyArrow = false;
string inp96_ObjText_s1 = "";
string inp96_ObjText_se2 = "------------";
bool inp96_ObjText_breakerCandleOnlyBody = false;
bool inp96_ObjText_breakerCandle_2Last = false;
bool inp96_ObjText_tillFirstBreak = true;
string inp96_ObjText_s2 = "";
string inp96_ObjText_se3 = "------------";
bool inp96_ObjText_onlyWhenInPDarray = false;
bool inp96_ObjText_showPDarray = true;
bool inp96_ObjText_showBreaks = true;
bool inp96_ObjText_showSPD = true;
color inp96_ObjText_PDtxtCss = DarkGray;
color inp96_ObjText_PDSCss = DarkGray;
string inp96_ObjText_s3 = "";
string inp96_ObjText_se4 = "------------";
bool inp96_ObjText_iTP = true;
color inp96_ObjText_tpCss = SteelBlue;
double inp96_ObjText_R1a = 1.0;
double inp96_ObjText_R2a = 2.0;
double inp96_ObjText_R1b = 1.0;
double inp96_ObjText_R2b = 3.0;
double inp96_ObjText_R1c = 1.0;
double inp96_ObjText_R2c = 4.0;
string inp96_ObjText_s4 = "";
string inp96_ObjText_se5 = "------------";
color inp96_ObjText_cBBplusA = LightSeaGreen;
color inp96_ObjText_cBBplusB = MediumSeaGreen;
color inp96_ObjText_cSwingBl = OrangeRed;
string inp96_ObjText_s5 = "";
string inp96_ObjText_se6 = "------------";
color inp96_ObjText_cBB_minA = SandyBrown;
color inp96_ObjText_cBB_minB = Red;
color inp96_ObjText_cSwingBr = Teal;
string inp96_ObjText_s6 = "";
string inp96_ObjText_se7 = "------------";
int inp96_ObjText_noti_temp = 0;
int inp96_ObjText_noti_type = 1;
string inp96_ObjText_ssemail = "if email notification";
string inp96_ObjText_email_sub = "";
string inp96_ObjText_sss = "If telegram notification";
string inp96_ObjText_tele_file_name = "symbol_tele.txt";
int inp96_ObjText_tele_channel = 0;
string inp96_ObjText_tele_bot_token = "";
string inp96_ObjText_s7 = "";
double inp53_MinBodySize = 1250.0;
double inp54_MinBodySize = 400.0;
double inp58_MinBodySize = 750.0;
double inp59_MinBodySize = 1150.0;
class _externs
{
		public:
//-----------------------------------======== SMC CONFIGURATION ========"------------------------------------------------------------------------------
	static string inp94_ObjText_se1;
	static int inp94_ObjText_mode;
	static int inp94_ObjText_inp_style;
	static bool inp94_ObjText_show_trend;
	static string inp94_ObjText_s1;
	static string inp94_ObjText_se2;
	static bool inp94_ObjText_show_internals;
	static int inp94_ObjText_show_ibull;
	static color inp94_ObjText_swing_ibull_css;
	static int inp94_ObjText_show_ibear;
	static color inp94_ObjText_swing_ibear_css;
	static bool inp94_ObjText_ifilter_confluence;
	static int inp94_ObjText_internal_structure_size;
	static string inp94_ObjText_s2;
	static string inp94_ObjText_se3;
	static bool inp94_ObjText_show_Structure;
	static int inp94_ObjText_show_bull;
	static color inp94_ObjText_swing_bull_css;
	static int inp94_ObjText_show_bear;
	static color inp94_ObjText_swing_bear_css;
//-----------------------------------======== BB CONFIGURATION ========"------------------------------------------------------------------------------
	static string inp96_ObjText_se1;
	static int inp96_ObjText_len;
	static bool inp96_ObjText_showManyArrow;
	static string inp96_ObjText_s1;
	static string inp96_ObjText_se2;
	static bool inp96_ObjText_breakerCandleOnlyBody;
	static bool inp96_ObjText_breakerCandle_2Last;
	static bool inp96_ObjText_tillFirstBreak;
	static string inp96_ObjText_s2;
	static string inp96_ObjText_se3;
	static bool inp96_ObjText_onlyWhenInPDarray;
	static bool inp96_ObjText_showPDarray;
	static bool inp96_ObjText_showBreaks;
	static bool inp96_ObjText_showSPD;
	static color inp96_ObjText_PDtxtCss;
	static color inp96_ObjText_PDSCss;
	static string inp96_ObjText_s3;
	static string inp96_ObjText_se4;
	static bool inp96_ObjText_iTP;
	static color inp96_ObjText_tpCss;
	static double inp96_ObjText_R1a;
	static double inp96_ObjText_R2a;
	static double inp96_ObjText_R1b;
	static double inp96_ObjText_R2b;
	static double inp96_ObjText_R1c;
	static double inp96_ObjText_R2c;
	static string inp96_ObjText_s4;
	static string inp96_ObjText_se5;
	static color inp96_ObjText_cBBplusA;
	static color inp96_ObjText_cBBplusB;
	static color inp96_ObjText_cSwingBl;
	static string inp96_ObjText_s5;
	static string inp96_ObjText_se6;
	static color inp96_ObjText_cBB_minA;
	static color inp96_ObjText_cBB_minB;
	static color inp96_ObjText_cSwingBr;
	static string inp96_ObjText_s6;
	static string inp96_ObjText_se7;
	static int inp96_ObjText_noti_temp;
	static int inp96_ObjText_noti_type;
	static string inp96_ObjText_ssemail;
	static string inp96_ObjText_email_sub;
	static string inp96_ObjText_sss;
	static string inp96_ObjText_tele_file_name;
	static int inp96_ObjText_tele_channel;
	static string inp96_ObjText_tele_bot_token;
	static string inp96_ObjText_s7;
	static double inp53_MinBodySize;
	static double inp54_MinBodySize;
	static double inp58_MinBodySize;
	static double inp59_MinBodySize;
};
string inp94_ObjText_se1;
int inp94_ObjText_mode;
int inp94_ObjText_inp_style;
bool inp94_ObjText_show_trend;
string inp94_ObjText_s1;
string inp94_ObjText_se2;
bool inp94_ObjText_show_internals;
int inp94_ObjText_show_ibull;
color inp94_ObjText_swing_ibull_css;
int inp94_ObjText_show_ibear;
color inp94_ObjText_swing_ibear_css;
bool inp94_ObjText_ifilter_confluence;
int inp94_ObjText_internal_structure_size;
string inp94_ObjText_s2;
string inp94_ObjText_se3;
bool inp94_ObjText_show_Structure;
int inp94_ObjText_show_bull;
color inp94_ObjText_swing_bull_css;
int inp94_ObjText_show_bear;
color inp94_ObjText_swing_bear_css;
string inp96_ObjText_se1;
int inp96_ObjText_len;
bool inp96_ObjText_showManyArrow;
string inp96_ObjText_s1;
string inp96_ObjText_se2;
bool inp96_ObjText_breakerCandleOnlyBody;
bool inp96_ObjText_breakerCandle_2Last;
bool inp96_ObjText_tillFirstBreak;
string inp96_ObjText_s2;
string inp96_ObjText_se3;
bool inp96_ObjText_onlyWhenInPDarray;
bool inp96_ObjText_showPDarray;
bool inp96_ObjText_showBreaks;
bool inp96_ObjText_showSPD;
color inp96_ObjText_PDtxtCss;
color inp96_ObjText_PDSCss;
string inp96_ObjText_s3;
string inp96_ObjText_se4;
bool inp96_ObjText_iTP;
color inp96_ObjText_tpCss;
double inp96_ObjText_R1a;
double inp96_ObjText_R2a;
double inp96_ObjText_R1b;
double inp96_ObjText_R2b;
double inp96_ObjText_R1c;
double inp96_ObjText_R2c;
string inp96_ObjText_s4;
string inp96_ObjText_se5;
color inp96_ObjText_cBBplusA;
color inp96_ObjText_cBBplusB;
color inp96_ObjText_cSwingBl;
string inp96_ObjText_s5;
string inp96_ObjText_se6;
color inp96_ObjText_cBB_minA;
color inp96_ObjText_cBB_minB;
color inp96_ObjText_cSwingBr;
string inp96_ObjText_s6;
string inp96_ObjText_se7;
int inp96_ObjText_noti_temp;
int inp96_ObjText_noti_type;
string inp96_ObjText_ssemail;
string inp96_ObjText_email_sub;
string inp96_ObjText_sss;
string inp96_ObjText_tele_file_name;
int inp96_ObjText_tele_channel;
string inp96_ObjText_tele_bot_token;
string inp96_ObjText_s7;
double inp53_MinBodySize;
double inp54_MinBodySize;
double inp58_MinBodySize;
double inp59_MinBodySize;



//VVVVVVVVVVVVVVVVVVVVVVVVV//
// System global variables //
//^^^^^^^^^^^^^^^^^^^^^^^^^//
//--
// Blocks Lookup Functions
string fxdBlocksLookupTable[];

int FXD_CURRENT_FUNCTION_ID = 0;
double FXD_MILS_INIT_END    = 0;
int FXD_TICKS_FROM_START    = 0;
int FXD_MORE_SHIFT          = 0;
bool FXD_DRAW_SPREAD_INFO   = false;
bool FXD_FIRST_TICK_PASSED  = false;
bool FXD_BREAK              = false;
bool FXD_CONTINUE           = false;
bool USE_VIRTUAL_STOPS = VIRTUAL_STOPS_ENABLED;
string FXD_CURRENT_SYMBOL   = "";
int FXD_BLOCKS_COUNT        = 97;
datetime FXD_TICKSKIP_UNTIL = 0;

int FXD_ICUSTOM_HANDLES_IDS[]; // only used in MQL5
string FXD_ICUSTOM_HANDLES_KEYS[]; // only used in MQL5

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
int OnInit()
{

	// Initiate Constants
	c::SYMB = SYMB;
	c::SYMBOLS = SYMBOLS;
	c::TP_SL_CONFIG = TP_SL_CONFIG;
	c::RM_PERCENT_ACT = RM_PERCENT_ACT;
	c::RM_PERCT = RM_PERCT;
	c::TP_perc = TP_perc;
	c::_________BREAKEVEN_CONFIG__ = _________BREAKEVEN_CONFIG__;
	c::BE_ENABLED = BE_ENABLED;
	c::BreakEvenTP = BreakEvenTP;
	c::_________PARTIALS_CONFIG_______ = _________PARTIALS_CONFIG_______;
	c::PARTIALS_ENABLED = PARTIALS_ENABLED;
	c::PARTIALS_TRIGGER_AMOUNT = PARTIALS_TRIGGER_AMOUNT;
	c::PartialPrecent = PartialPrecent;
	c::_TRAILING_CONFIG = _TRAILING_CONFIG;
	c::TRAILING_ENABLED = TRAILING_ENABLED;
	c::Trailing_Stop = Trailing_Stop;
	c::Trailing_Step = Trailing_Step;
	c::TP_TRAILING_CONFIG = TP_TRAILING_CONFIG;
	c::TP_TRAILING_ENABLED = TP_TRAILING_ENABLED;
	c::TP_TRAILING_STOP = TP_TRAILING_STOP;
	c::TP_TRAILING_STEP = TP_TRAILING_STEP;
	c::MAX_DD = MAX_DD;
	c::Cut_Loss = Cut_Loss;
	c::Cut_Loss_percent = Cut_Loss_percent;
	c::PROFIT_CONFIG = PROFIT_CONFIG;
	c::DAILY_PROFIT_GOAL = DAILY_PROFIT_GOAL;
	c::DAILY_LOSS_GOAL = DAILY_LOSS_GOAL;
	c::Time_Control = Time_Control;
	c::Monday = Monday;
	c::Tuesday = Tuesday;
	c::Wednesday = Wednesday;
	c::Thursday = Thursday;
	c::Friday = Friday;
	c::Saturday = Saturday;
	c::Sunday = Sunday;
	c::Start_Hour = Start_Hour;
	c::End_Hour = End_Hour;
	c::MAX_PT = MAX_PT;
	c::MAX_PARALELL_TRADES_BUY = MAX_PARALELL_TRADES_BUY;
	c::MAX_PARALELL_TRADES_SELL = MAX_PARALELL_TRADES_SELL;
	c::TOTAL_MAX_PARALLEL_TRADES = TOTAL_MAX_PARALLEL_TRADES;
	c::MagicStart = MagicStart;




	// Initiate Externs
//-----------------------------------======== SMC CONFIGURATION ========"------------------------------------------------------------------------------
	inp94_ObjText_se1 = inp94_ObjText_se1;
	inp94_ObjText_mode = inp94_ObjText_mode;
	inp94_ObjText_inp_style = inp94_ObjText_inp_style;
	inp94_ObjText_show_trend = inp94_ObjText_show_trend;
	inp94_ObjText_s1 = inp94_ObjText_s1;
	inp94_ObjText_se2 = inp94_ObjText_se2;
	inp94_ObjText_show_internals = inp94_ObjText_show_internals;
	inp94_ObjText_show_ibull = inp94_ObjText_show_ibull;
	inp94_ObjText_swing_ibull_css = inp94_ObjText_swing_ibull_css;
	inp94_ObjText_show_ibear = inp94_ObjText_show_ibear;
	inp94_ObjText_swing_ibear_css = inp94_ObjText_swing_ibear_css;
	inp94_ObjText_ifilter_confluence = inp94_ObjText_ifilter_confluence;
	inp94_ObjText_internal_structure_size = inp94_ObjText_internal_structure_size;
	inp94_ObjText_s2 = inp94_ObjText_s2;
	inp94_ObjText_se3 = inp94_ObjText_se3;
	inp94_ObjText_show_Structure = inp94_ObjText_show_Structure;
	inp94_ObjText_show_bull = inp94_ObjText_show_bull;
	inp94_ObjText_swing_bull_css = inp94_ObjText_swing_bull_css;
	inp94_ObjText_show_bear = inp94_ObjText_show_bear;
	inp94_ObjText_swing_bear_css = inp94_ObjText_swing_bear_css;
//-----------------------------------======== BB CONFIGURATION ========"------------------------------------------------------------------------------
	inp96_ObjText_se1 = inp96_ObjText_se1;
	inp96_ObjText_len = inp96_ObjText_len;
	inp96_ObjText_showManyArrow = inp96_showManyArrow;
	inp96_ObjText_s1 = inp96_ObjText_s1;
	inp96_ObjText_se2 = inp96_ObjText_se2;
	inp96_ObjText_breakerCandleOnlyBody = inp96_ObjText_breakerCandleOnlyBody;
	inp96_ObjText_breakerCandle_2Last = inp96_ObjText_breakerCandle_2Last;
	inp96_ObjText_tillFirstBreak = inp96_ObjText_tillFirstBreak;
	inp96_ObjText_s2 = inp96_ObjText_s2;
	inp96_ObjText_se3 = inp96_ObjText_se3;
	inp96_ObjText_onlyWhenInPDarray = inp96_ObjText_onlyWhenInPDarray;
	inp96_ObjText_showPDarray = inp96_ObjText_showPDarray;
	inp96_ObjText_showBreaks = inp96_ObjText_showBreaks;
	inp96_ObjText_showSPD = inp96_ObjText_showSPD;
	inp96_ObjText_PDtxtCss = inp96_ObjText_PDtxtCss;
	inp96_ObjText_PDSCss = inp96_ObjText_PDSCss;
	inp96_ObjText_s3 = inp96_ObjText_s3;
	inp96_ObjText_se4 = inp96_ObjText_se4;
	inp96_ObjText_iTP = inp96_ObjText_iTP;
	inp96_ObjText_tpCss = inp96_ObjText_tpCss;
	inp96_ObjText_R1a = inp96_ObjText_R1a;
	inp96_ObjText_R2a = inp96_ObjText_R2a;
	inp96_ObjText_R1b = inp96_ObjText_R1b;
	inp96_ObjText_R2b = inp96_ObjText_R2b;
	inp96_ObjText_R1c = inp96_ObjText_R1c;
	inp96_ObjText_R2c = inp96_ObjText_R2c;
	inp96_ObjText_s4 = inp96_ObjText_s4;
	inp96_ObjText_se5 = inp96_ObjText_se5;
	inp96_ObjText_cBBplusA = inp96_ObjText_cBBplusA;
	inp96_ObjText_cBBplusB = inp96_ObjText_cBBplusB;
	inp96_ObjText_cSwingBl = inp96_ObjText_cSwingBl;
	inp96_ObjText_s5 = inp96_ObjText_s5;
	inp96_ObjText_se6 = inp96_ObjText_se6;
	inp96_ObjText_cBB_minA = inp96_ObjText_cBB_minA;
	inp96_ObjText_cBB_minB = inp96_ObjText_cBB_minB;
	inp96_ObjText_cSwingBr = inp96_ObjText_cSwingBr;
	inp96_ObjText_s6 = inp96_ObjText_s6;
	inp96_ObjText_se7 = inp96_ObjText_se7;
	inp96_ObjText_noti_temp = inp96_ObjText_noti_temp;
	inp96_ObjText_noti_type = inp96_ObjText_noti_type;
 	inp96_ObjText_ssemail = inp96_ObjText_ssemail;
 	inp96_ObjText_email_sub = inp96_ObjText_email_sub;
 	inp96_ObjText_sss = inp96_ObjText_sss;
 	inp96_ObjText_tele_file_name = inp96_ObjText_tele_file_name;
 	inp96_ObjText_tele_channel = inp96_ObjText_tele_channel;
 	inp96_ObjText_tele_bot_token = inp96_ObjText_tele_bot_token;
 	inp96_ObjText_s7 = inp96_ObjText_s7;
	inp53_MinBodySize = inp53_MinBodySize;
	inp54_MinBodySize = inp54_MinBodySize;
	inp58_MinBodySize = inp58_MinBodySize;
	inp59_MinBodySize = inp59_MinBodySize;



	// do or do not not initilialize on reload
	if (UninitializeReason() != 0)
	{
		if (UninitializeReason() == REASON_CHARTCHANGE)
		{
			// if the symbol is the same, do not reload, otherwise continue below
			if (FXD_CURRENT_SYMBOL == Symbol()) {return INIT_SUCCEEDED;}
		}
		else
		{
			return INIT_SUCCEEDED;
		}
	}
	FXD_CURRENT_SYMBOL = Symbol();

	CurrentSymbol(FXD_CURRENT_SYMBOL); // CurrentSymbol() has internal memory that should be set from here when the symboll is changed
	CurrentTimeframe(PERIOD_CURRENT);

	v::EA_NAME = "ALGORITHMIC_SMC_OB";
	v::L_Name = "ALGORITHMIC, GMBH";
	v::L_Email = "info@algorithmic.one";
	v::L_Activation = "2022.03.19";
	v::L_Validity = "UNLIMITED";
	v::L_Validity_T = "BACKTESTING";
	v::Cut_Loss_percent = 0.0;
	v::max_dd_hit = false;
	v::EA_Running = false;
	v::EA_Weekday = false;
	v::SL = 0.0;
	v::TP = 0.0;
	v::max_d_profit_hit = false;
	v::max_daily_loss_hit = false;
	v::total_profit_remaining = 0.0;
	v::DISPLACEMENT = 20;
	v::END_candle_ID_1 = 72;
	v::END_candle_ID_2 = 62;
	v::Trendline_Name_B = "MyTrendlineBuy";
	v::Trendline_Name_S = "MyTrendlineSell";




	Comment("");
	for (int i=ObjectsTotal(ChartID()); i>=0; i--)
	{
		string name = ObjectName(ChartID(), i);
		if (StringSubstr(name,0,8) == "fxd_cmnt") {ObjectDelete(ChartID(), name);}
	}
	ChartRedraw();



	//-- disable virtual stops in optimization, because graphical objects does not work
	// http://docs.mql4.com/runtime/testing
	if (MQLInfoInteger(MQL_OPTIMIZATION)) {
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

	if (ENABLE_EVENT_TIMER) {
		OnTimerSet(ON_TIMER_PERIOD);
	}


	//-- Initialize blocks classes
	ArrayResize(_blocks_, 97);

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
	_blocks_[53] = new Block53();
	_blocks_[54] = new Block54();
	_blocks_[55] = new Block55();
	_blocks_[56] = new Block56();
	_blocks_[57] = new Block57();
	_blocks_[58] = new Block58();
	_blocks_[59] = new Block59();
	_blocks_[60] = new Block60();
	_blocks_[61] = new Block61();
	_blocks_[62] = new Block62();
	_blocks_[63] = new Block63();
	_blocks_[64] = new Block64();
	_blocks_[65] = new Block65();
	_blocks_[66] = new Block66();
	_blocks_[67] = new Block67();
	_blocks_[68] = new Block68();
	_blocks_[69] = new Block69();
	_blocks_[70] = new Block70();
	_blocks_[71] = new Block71();
	_blocks_[72] = new Block72();
	_blocks_[73] = new Block73();
	_blocks_[74] = new Block74();
	_blocks_[75] = new Block75();
	_blocks_[76] = new Block76();
	_blocks_[77] = new Block77();
	_blocks_[78] = new Block78();
	_blocks_[79] = new Block79();
	_blocks_[80] = new Block80();
	_blocks_[81] = new Block81();
	_blocks_[82] = new Block82();
	_blocks_[83] = new Block83();
	_blocks_[84] = new Block84();
	_blocks_[85] = new Block85();
	_blocks_[86] = new Block86();
	_blocks_[87] = new Block87();
	_blocks_[88] = new Block88();
	_blocks_[89] = new Block89();
	_blocks_[90] = new Block90();
	_blocks_[91] = new Block91();
	_blocks_[92] = new Block92();
	_blocks_[93] = new Block93();
	_blocks_[94] = new Block94();
	_blocks_[95] = new Block95();
	_blocks_[96] = new Block96();

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

	//-- run blocks
	int blocks_to_run[] = {1};
	for (int i=0; i<ArraySize(blocks_to_run); i++) {
		_blocks_[blocks_to_run[i]].run();
	}


	FXD_MILS_INIT_END     = (double)GetTickCount();
	FXD_FIRST_TICK_PASSED = false; // reset is needed when changing inputs

	return(INIT_SUCCEEDED);
}

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed on every incoming tick //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
void OnTick()
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

	OCODriver(); // Check and close OCO orders

	// skip ticks
	if (TimeLocal() < FXD_TICKSKIP_UNTIL) {return;}

	//-- run blocks
	int blocks_to_run[] = {10,20,44,45,46,54,59,71,74,82,95};
	for (int i=0; i<ArraySize(blocks_to_run); i++) {
		_blocks_[blocks_to_run[i]].run();
	}


	return;
}

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV//
// This function is executed on trade events - open, close, modify //
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
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
	if (reson == REASON_CHARTCHANGE || reson == REASON_PARAMETERS || reason == REASON_TEMPLATE || reason == REASON_ACCOUNT) {return;}

	//-- if Timer was set, kill it here
	EventKillTimer();

	if (ENABLE_STATUS) DrawStatus("stopped");
	if (ENABLE_SPREAD_METER) DrawSpreadInfo();
	ChartSetString(0, CHART_COMMENT, "");



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
			case REASON_PROGRAM		: Print("Expert Advisor self terminated"); break;
			case REASON_REMOVE		: Print("Expert Advisor removed from the chart"); break;
			case REASON_RECOMPILE	: Print("Expert Advisor has been recompiled"); break;
			case REASON_CHARTCHANGE	: Print("Symbol or chart period has been changed"); break;
			case REASON_CHARTCLOSE	: Print("Chart has been closed"); break;
			case REASON_PARAMETERS	: Print("Input parameters have been changed by a user"); break;
			case REASON_ACCOUNT		: Print("Another account has been activated or reconnection to the trade server has occurred due to changes in the account settings"); break;
			case REASON_TEMPLATE		: Print("A new template has been applied"); break;
			case REASON_INITFAILED	: Print("OnInit() handler has returned a nonzero value"); break;
			case REASON_CLOSE			: Print("Terminal has been closed"); break;
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
// |                                             Classes of blocks                                                    | //
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


// "Modify chart properties" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18>
class MDL_ChartSetProperties: public BlockCalls
{
	public: /* Input Parameters */
	T1 ChartMode;
	T2 ChartOnForeground;
	T3 ChartShift;
	T4 ChartAutoScroll;
	T5 ChartScale;
	T6 ChartShowOHLC;
	T7 ChartShowBidLine;
	T8 ChartShowAskLine;
	T9 ChartShowLastLine;
	T10 ChartShowPeriodSeparators;
	T11 ChartShowGrid;
	T12 ChartShowVolumes;
	T13 ChartShowDescriptions;
	T14 ChartShowTradeLevels;
	T15 ChartShowDateScale;
	T16 ChartShowPriceScale;
	T17 ChartScaleFix11;
	T18 ChartScaleFix;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ChartSetProperties()
	{
		ChartMode = (int)-1;
		ChartOnForeground = (int)-1;
		ChartShift = (int)-1;
		ChartAutoScroll = (int)-1;
		ChartScale = (int)-1;
		ChartShowOHLC = (int)-1;
		ChartShowBidLine = (int)-1;
		ChartShowAskLine = (int)-1;
		ChartShowLastLine = (int)-1;
		ChartShowPeriodSeparators = (int)-1;
		ChartShowGrid = (int)-1;
		ChartShowVolumes = (int)-1;
		ChartShowDescriptions = (int)-1;
		ChartShowTradeLevels = (int)-1;
		ChartShowDateScale = (int)-1;
		ChartShowPriceScale = (int)-1;
		ChartScaleFix11 = (int)-1;
		ChartScaleFix = (int)-1;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		ResetLastError();
		
		if (ChartMode!=-1) {
		   if(!ChartSetInteger(0,CHART_MODE,ChartMode)) {Print("Unable to set chart mode. Error code: ",GetLastError());}
		}
		
		//-- chart positioning
		if (ChartOnForeground!=-1) {
		   if(!ChartSetInteger(0,CHART_FOREGROUND,ChartOnForeground)) {Print("Unable to set chart foreground mode. Error code: ",GetLastError());}
		}
		if (ChartShift!=-1) {
		   if(!ChartSetInteger(0,CHART_SHIFT,ChartShift)) {Print("Unable to set chart shift mode. Error code: ",GetLastError());}
		}
		if (ChartAutoScroll!=-1) {
		   if(!ChartSetInteger(0,CHART_AUTOSCROLL,ChartAutoScroll)) {Print("Unable to set chart autoscroll mode. Error code: ",GetLastError());}
		}
		
		//-- chart scale
		if (ChartScale!=-1) {
		   if(!ChartSetInteger(0,CHART_SCALE,ChartScale)) {Print("Unable to set chart scale mode. Error code: ",GetLastError());}
		}
		
		//-- chart elements
		if (ChartShowOHLC!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_OHLC,ChartShowOHLC)) {Print("Unable to set chart OHLC mode. Error code: ",GetLastError());}
		}
		if (ChartShowBidLine!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_BID_LINE,ChartShowBidLine)) {Print("Unable to set chart Bid price line mode. Error code: ",GetLastError());}
		}
		if (ChartShowAskLine!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_ASK_LINE,ChartShowAskLine)) {Print("Unable to set chart Ask price line mode. Error code: ",GetLastError());}
		}
		if (ChartShowLastLine!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_LAST_LINE,ChartShowLastLine)) {Print("Unable to set chart last price line mode. Error code: ",GetLastError());}
		}
		if (ChartShowPeriodSeparators!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_PERIOD_SEP,ChartShowPeriodSeparators)) {Print("Unable to set chart period separators mode. Error code: ",GetLastError());}
		}
		if (ChartShowGrid!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_GRID,ChartShowGrid)) {Print("Unable to set chart grid mode. Error code: ",GetLastError());}
		}
		if (ChartShowVolumes!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_VOLUMES,ChartShowVolumes)) {Print("Unable to set chart volumes mode. Error code: ",GetLastError());}
		}
		if (ChartShowDescriptions!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_OBJECT_DESCR,ChartShowDescriptions)) {Print("Unable to set chart object descriptions mode. Error code: ",GetLastError());}
		}
		if (ChartShowTradeLevels!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_TRADE_LEVELS,ChartShowTradeLevels)) {Print("Unable to set chart trade levels mode. Error code: ",GetLastError());}
		}
		if (ChartShowDateScale!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_DATE_SCALE,ChartShowDateScale)) {Print("Unable to set chart date scale mode. Error code: ",GetLastError());}
		}
		if (ChartShowPriceScale!=-1) {
		   if(!ChartSetInteger(0,CHART_SHOW_PRICE_SCALE,ChartShowPriceScale)) {Print("Unable to set chart price scale mode. Error code: ",GetLastError());}
		}
		
		// scale fix
		if (ChartScaleFix!=-1) {
		   if(!ChartSetInteger(0,CHART_SCALEFIX,ChartScaleFix)) {Print("Unable to set scale fix One to One. Error code: ",GetLastError());}
		}
		else {
			if (ChartScaleFix11!=-1) {
		   	if(!ChartSetInteger(0,CHART_SCALEFIX_11,ChartScaleFix11)) {Print("Unable to set scale fix One to One. Error code: ",GetLastError());}
			}
		}
		
		ChartRedraw();
		
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

// "Modify chart colors" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13>
class MDL_ChartSetColors: public BlockCalls
{
	public: /* Input Parameters */
	T1 ChartColorBackground;
	T2 ChartColorForeground;
	T3 ChartColorGrid;
	T4 ChartColorBarUp;
	T5 ChartColorBarDown;
	T6 ChartColorBullCandle;
	T7 ChartColorBearCandle;
	T8 ChartColorDojiCandle;
	T9 ChartColorVolumes;
	T10 ChartColorBid;
	T11 ChartColorAsk;
	T12 ChartColorLast;
	T13 ChartColorStopLevels;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ChartSetColors()
	{
		ChartColorBackground = (color)clrBlack;
		ChartColorForeground = (color)clrWhite;
		ChartColorGrid = (color)clrLightSlateGray;
		ChartColorBarUp = (color)clrLime;
		ChartColorBarDown = (color)clrLime;
		ChartColorBullCandle = (color)clrBlack;
		ChartColorBearCandle = (color)clrWhite;
		ChartColorDojiCandle = (color)clrLime;
		ChartColorVolumes = (color)clrLimeGreen;
		ChartColorBid = (color)clrLightSlateGray;
		ChartColorAsk = (color)clrRed;
		ChartColorLast = (color)clrLimeGreen;
		ChartColorStopLevels = (color)clrRed;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		ResetLastError();
		
		if (ChartColorBackground!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_BACKGROUND,ChartColorBackground)) {Print("Unable to set chart background color. Error code: ",GetLastError());}
		}
		if (ChartColorForeground!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_FOREGROUND,ChartColorForeground)) {Print("Unable to set chart foreground color. Error code: ",GetLastError());}
		}
		if (ChartColorGrid!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_GRID,ChartColorGrid)) {Print("Unable to set chart grid color. Error code: ",GetLastError());}
		}
		if (ChartColorBarUp!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_CHART_UP,ChartColorBarUp)) {Print("Unable to set chart bar up color. Error code: ",GetLastError());}
		}
		if (ChartColorBarDown!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_CHART_DOWN,ChartColorBarDown)) {Print("Unable to set chart bar down color. Error code: ",GetLastError());}
		}
		if (ChartColorBullCandle!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_CANDLE_BULL,ChartColorBullCandle)) {Print("Unable to set chart bull candle color. Error code: ",GetLastError());}
		}
		if (ChartColorBearCandle!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_CANDLE_BEAR,ChartColorBearCandle)) {Print("Unable to set chart bear candle color. Error code: ",GetLastError());}
		}
		if (ChartColorDojiCandle!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_CHART_LINE,ChartColorDojiCandle)) {Print("Unable to set chart doji candle color. Error code: ",GetLastError());}
		}
		if (ChartColorVolumes!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_VOLUME,ChartColorVolumes)) {Print("Unable to set chart volumes color. Error code: ",GetLastError());}
		}
		if (ChartColorBid!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_BID,ChartColorBid)) {Print("Unable to set chart Bid line color. Error code: ",GetLastError());}
		}
		if (ChartColorAsk!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_ASK,ChartColorAsk)) {Print("Unable to set chart Ask line color. Error code: ",GetLastError());}
		}
		if (ChartColorLast!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_LAST,ChartColorLast)) {Print("Unable to set chart last price line color. Error code: ",GetLastError());}
		}
		if (ChartColorStopLevels!=clrNONE) {
		   if(!ChartSetInteger(0,CHART_COLOR_STOP_LEVEL,ChartColorStopLevels)) {Print("Unable to set chart stop levels color. Error code: ",GetLastError());}
		}
		
		ChartRedraw();
		
		_callback_(1);
	}
};

// "Weekday filter" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8>
class MDL_WeekdayFilter: public BlockCalls
{
	public: /* Input Parameters */
	T1 ServerOrLocalTime;
	T2 tradeMonday;
	T3 tradeTuesday;
	T4 tradeWednesday;
	T5 tradeThursday;
	T6 tradeFriday;
	T7 tradeSaturday;
	T8 tradeSunday;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_WeekdayFilter()
	{
		ServerOrLocalTime = (string)"server";
		tradeMonday = (bool)true;
		tradeTuesday = (bool)true;
		tradeWednesday = (bool)true;
		tradeThursday = (bool)true;
		tradeFriday = (bool)true;
		tradeSaturday = (bool)false;
		tradeSunday = (bool)false;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int day = 0;
		
		     if (ServerOrLocalTime == "server") {day = TimeDayOfWeek(TimeCurrent());}
		else if (ServerOrLocalTime == "local")  {day = TimeDayOfWeek(TimeLocal());}
		else if (ServerOrLocalTime == "gmt")    {day = TimeDayOfWeek(TimeGMT());}
		
		if (
			   (tradeMonday    && day == 1)
			|| (tradeTuesday   && day == 2)
			|| (tradeWednesday && day == 3)
			|| (tradeThursday  && day == 4)
			|| (tradeFriday    && day == 5)
			|| (tradeSaturday  && day == 6)
			|| (tradeSunday    && day == 0)
			)
		{
		   _callback_(1);
		}
		else
		{
		   _callback_(0);
		}
	}
};

// "Hours filter" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12>
class MDL_HoursFilter: public BlockCalls
{
	public: /* Input Parameters */
	T1 ServerOrLocalTime;
	T2 StartHour;
	T3 EndHour;
	T4 SecondHoursBlock;
	T5 SecondStartHour;
	T6 SecondEndHour;
	T7 ThirdHoursBlock;
	T8 ThirdStartHour;
	T9 ThirdEndHour;
	T10 FourthHoursBlock;
	T11 FourthStartHour;
	T12 FourthEndHour;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_HoursFilter()
	{
		ServerOrLocalTime = (string)"server";
		StartHour = (string)"00:00";
		EndHour = (string)"06:00";
		SecondHoursBlock = (bool)false;
		SecondStartHour = (string)"06:00";
		SecondEndHour = (string)"12:00";
		ThirdHoursBlock = (bool)false;
		ThirdStartHour = (string)"12:00";
		ThirdEndHour = (string)"18:00";
		FourthHoursBlock = (bool)false;
		FourthStartHour = (string)"18:00";
		FourthEndHour = (string)"00:00";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		bool pass     = false;
		int mode_time = 0;
		datetime start = 0, end = 0, now = 0;
		
			  if (ServerOrLocalTime == "server") {mode_time = 0; now = TimeCurrent();}
		else if (ServerOrLocalTime == "local")  {mode_time = 1; now = TimeLocal();} 
		else if (ServerOrLocalTime == "gmt")	 {mode_time = 2; now = TimeGMT();}
		
		start = TimeFromString(mode_time, StartHour);
		end   = TimeFromString(mode_time, EndHour);
		
		if (end < start) end = end + 86400;
		
		if (now >= start && now < end) pass=true;
		
		if (pass == false && SecondHoursBlock == true)
		{
			start = TimeFromString(mode_time, SecondStartHour);
			end   = TimeFromString(mode_time, SecondEndHour);
		
			if (end < start) end = end + 86400;
		
			if (now >= start && now < end) pass = true;
		}
		
		if (pass == false && ThirdHoursBlock == true)
		{
			start = TimeFromString(mode_time, ThirdStartHour);
			end   = TimeFromString(mode_time, ThirdEndHour);
		
			if (end < start) end = end + 86400;
		
			if (now >= start && now < end) pass = true;
		}
		
		if (pass == false && FourthHoursBlock == true)
		{
			start = TimeFromString(mode_time, FourthStartHour);
			end   = TimeFromString(mode_time, FourthEndHour);
		
			if (end < start) end = end + 86400;
			if (now >= start && now < end) pass = true;
		}
		
		if (pass == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "Modify Variables" model
template<typename T1,typename T2,typename _T2_,typename T3,typename T4,typename _T4_,typename T5,typename T6,typename _T6_,typename T7,typename T8,typename _T8_,typename T9,typename T10,typename _T10_>
class MDL_ModifyVariables: public BlockCalls
{
	public: /* Input Parameters */
	T1 Variable1;
	T2 Value1; virtual _T2_ _Value1_(){return(_T2_)0;}
	T3 Variable2;
	T4 Value2; virtual _T4_ _Value2_(){return(_T4_)0;}
	T5 Variable3;
	T6 Value3; virtual _T6_ _Value3_(){return(_T6_)0;}
	T7 Variable4;
	T8 Value4; virtual _T8_ _Value4_(){return(_T8_)0;}
	T9 Variable5;
	T10 Value5; virtual _T10_ _Value5_(){return(_T10_)0;}
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

// "Condition" model
template<typename T1,typename _T1_,typename T2,typename T3,typename _T3_,typename T4>
class MDL_Condition: public BlockCalls
{
	public: /* Input Parameters */
	T1 Lo; virtual _T1_ _Lo_(){return(_T1_)0;}
	T2 compare;
	T3 Ro; virtual _T3_ _Ro_(){return(_T3_)0;}
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

// "If position" model
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

// "Formula" model
template<typename T1,typename _T1_,typename T2,typename T3,typename _T3_>
class MDL_Formula_1: public BlockCalls
{
	public: /* Input Parameters */
	T1 Lo; virtual _T1_ _Lo_(){return(_T1_)0;}
	T2 compare;
	T3 Ro; virtual _T3_ _Ro_(){return(_T3_)0;}
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
		
		v::Cut_Loss_percent = formula(compare, lo, ro)/100;
		
		_callback_(1);
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
				double tradeProfit    = NormalizeDouble(OrderProfit() + OrderSwap() + OrderCommission(), 2);
		
				// Filter out individual trades
				if (EachProfitMode == "money") {
					if (compare(EachCompare, tradeProfit, EachProfitAmount)) {/* do nothing */} else {continue;}
				}
				else if (EachProfitMode == "pips") {
					double individual_profit = toPips(OrderClosePrice() - OrderOpenPrice, OrderSymbol());
		
					if (OrderType() == 1) {individual_profit = -1 * individual_profit;}
		
					if (compare(EachCompare, individual_profit, EachProfitAmountPips)) {/* do nothing*/} else {continue;}
				}
		
				profitMoney += tradeProfit;
		
				if (ProfitMode == "pips" || ProfitMode == "pips-sum") {
					if (IsOrderTypeBuy()) {
						pipsSum += toPips(OrderClosePrice() - OrderOpenPrice, OrderSymbol());
						avgLoad += OrderOpenPrice * OrderLots();
						avgLots += OrderLots();
					}
					else {
						pipsSum += toPips(OrderOpenPrice - OrderClosePrice(), OrderSymbol());
						avgLoad -= OrderOpenPrice * OrderLots();
						avgLots -= OrderLots();
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

// "Close positions" model
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
					datetime time_diff = TimeCurrent() - OrderOpenTime();
		
					if (time_diff < 0) {time_diff = 0;} // this actually happens sometimes
		
					if (time_diff >= 60 * OrderMinutes)
					{
						if (CloseTrade(OrderTicket(), Slippage, ArrowColor))
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

// "Delete pending orders" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7>
class MDL_DeletePendingOrders: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 LimitsOrStops;
	T7 ArrowColor;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_DeletePendingOrders()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		LimitsOrStops = (string)"both";
		ArrowColor = (color)clrDeepPink;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		for (int index = OrdersTotal()-1; index >= 0; index--)
		{
			if (PendingOrderSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells, LimitsOrStops))
			{
				DeleteOrder(OrderTicket(), ArrowColor);
			}
		}
		
		_callback_(1);
	}
};

// "Log message" model
template<typename T1>
class MDL_PrintMessage: public BlockCalls
{
	public: /* Input Parameters */
	T1 PrintText;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_PrintMessage()
	{
		PrintText = (string)"Enter your text here";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		Print(PrintText);
		
		_callback_(1);
	}
};

// "Set "Current Market" for next blocks" model
template<typename T1>
class MDL_SetCurrentSymbol2: public BlockCalls
{
	public: /* Input Parameters */
	T1 ListOfSymbols;
	/* Static Parameters */
	string symbols0;
	string symbols[];
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_SetCurrentSymbol2()
	{
		ListOfSymbols = (string)"EURUSD,GBPUSD,AUDUSD";
		/* Static Parameters (initial value) */
		symbols0 =  "";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int i,s,size;
		
		//-- explode and correct symbols list, then check for existence
		if (ListOfSymbols != symbols0)
		{
			string symbols_tmp[];
		
			//- explode
			symbols0 = ListOfSymbols;
			StringExplode(",", ListOfSymbols, symbols_tmp);
		
			//- trim
			size = ArraySize(symbols_tmp);
		
			for (i=0; i<size; i++) {
				symbols_tmp[i] = StringTrim(symbols_tmp[i]);
			}
		
			//- check for existence
			string symbols_all[];
			SymbolsList(symbols_all, false);
		
			s = 0;
			ArrayResize(symbols, size);
		
			for (i=0; i<size; i++)
			{
				//- exclude non-existing symbol
				if (ArraySearch(symbols_all, symbols_tmp[i]) == -1)
				{
					Alert("Symbol " + symbols_tmp[i] + " does not exists and will be excluded from the list in block #" + __block_user_number);
					continue;
				}
		
				symbols[s] = symbols_tmp[i];
				s++;
			}
		
			ArrayResize(symbols, s);
		}
		
		// Create a loop
		size = ArraySize(symbols);
		
		for (i=0; i<size; i++)
		{
			CurrentSymbol(symbols[i]);
			_callback_(1);
		}
		
		CurrentSymbol(Symbol()); // Reset the current symbol
		_callback_(0);
	}
};

// "Check profit (period of time)" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13>
class MDL_CheckProfitInPeriod: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 Time1;
	T7 DayShift1;
	T8 Time2;
	T9 DayShift2;
	T10 Time1Relative;
	T11 ReturnMode;
	T12 Compare;
	T13 ProfitMoney;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CheckProfitInPeriod()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		Time1 = (string)"00:00";
		DayShift1 = (double)0.0;
		Time2 = (string)"";
		DayShift2 = (double)0.0;
		Time1Relative = (bool)false;
		ReturnMode = (int)0;
		Compare = (string)">";
		ProfitMoney = (double)10.0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int count     = 0;
		int total     = 0;
		int index     = 0;
		double profit     = 0;
		double profit_tot = 0;
		double profit_min = EMPTY_VALUE;
		double profit_max = -EMPTY_VALUE;
		datetime ordertime;
		datetime t1, t2;
		
		//-- parse times ----------------------------------------------------------
		//-- time 2
		if (Time2 == "") {
			t2 = TimeCurrent();
		}
		else {
			if (StringFind(Time2, ":") == -1) {t2 = (datetime)StringToInteger(Time2);} else {t2 = StringToTimeEx(Time2, "server");}
		}
		
		// if time 1 is expected to be absolute
		if (Time1Relative == false)
		{
			if (Time1 == "") {
				t1 = TimeCurrent();
			}
			else {
				if (StringFind(Time1, ":") == -1) {t1 = (datetime)StringToInteger(Time1);}
				else {t1 = StringToTimeEx(Time1, "server");}
			}
		}
		// if time 1 is expected to be relative to time 2
		else {
			
			if (Time1 == "") {
				t1 = t2;
			}
			else {
				//- 1) time 1 is in numeric format => treat the number as hours
				if (StringFind(Time1, ":") == -1) {
					t1 = t2 - (datetime)StringToInteger(Time1)*3600;
				}
				//- 2) time 1 is is HH:MM:SS format => treat that as hours difference
				else {
					t1 = t2 - (StringToTimeEx(Time1, "server") - StringToTimeEx("00:00", "server"));
				}
			}
		}
		
		t1 = (datetime)((t1 - (DayShift1 * 86400) - (MathFloor(DayShift1/5) * 172800)));
		t2 = (datetime)((t2 - (DayShift2 * 86400) - (MathFloor(DayShift2/5) * 172800)));
		
		int weekday = 0;
		
		if (DayShift1 != 0)
		{
			weekday = TimeDayOfWeek(t1);
		
			     if (weekday == 0) {t1 = t1-172800;}
			else if (weekday == 6) {t1 = t1-86400;}
		}
		
		if (DayShift2 != 0)
		{
			weekday = TimeDayOfWeek(t2);
		
			     if (weekday == 0) {t2 = t2-172800;}
			else if (weekday == 6) {t2 = t2-86400;}
		}
		
		// reverse times if needed
		if (t1 > t2)
		{
			datetime ttmp = t1;
			t1 = t2;
			t2 = ttmp;
		}
		
		//-- get profit of the running orders -----------------------------------------
		//-- 1) checking currently running trades. Only needed if the current day is chosen
		if (t2 >= TimeCurrent())
		{
			total = TradesTotal();
			
			for (index = total-1; index >= 0; index--)
			{
				if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
				{
					profit     = NormalizeDouble(OrderProfit() + OrderCommission() + OrderSwap(), 2);
					profit_tot += profit;
		
					if (profit < profit_min) {profit_min = profit;}
					if (profit > profit_max) {profit_max = profit;}
		
					count++;
				}
			}
		}
		
		//-- get profit of the history orders -----------------------------------------
		total = HistoryTradesTotal(t1, t2);
		
		for (index = total-1; index >= 0; index--)
		{
			if (HistoryTradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				ordertime = OrderCloseTime();
		
				if (ordertime > t2) {continue;}
				if (ordertime < t1) {break;}
		
				profit     = NormalizeDouble(OrderProfit() + OrderCommission() + OrderSwap(), 2);
				profit_tot += profit;
		
				if (profit < profit_min) {profit_min = profit;}
				if (profit > profit_max) {profit_max = profit;}
		
				count++;
			}
		}
		
		//-- output -------------------------------------------------------------------
		switch(ReturnMode)
		{
			case 0: {profit = profit_tot; break;}
			case 1: {profit = profit_tot / count; break;}
			case 2: {profit = profit_max; break;}
			case 3: {profit = profit_min; break;}
		}
		
		if (CompareValues(Compare, profit, ProfitMoney)) {_callback_(1);} else {_callback_(0);}
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
	T16 Value1; virtual _T16_ _Value1_(){return(_T16_)0;}
	T17 FormatNumber1;
	T18 FormatTime1;
	T19 Label2;
	T20 Value2; virtual _T20_ _Value2_(){return(_T20_)0;}
	T21 FormatNumber2;
	T22 FormatTime2;
	T23 Label3;
	T24 Value3; virtual _T24_ _Value3_(){return(_T24_)0;}
	T25 FormatNumber3;
	T26 FormatTime3;
	T27 Label4;
	T28 Value4; virtual _T28_ _Value4_(){return(_T28_)0;}
	T29 FormatNumber4;
	T30 FormatTime4;
	T31 Label5;
	T32 Value5; virtual _T32_ _Value5_(){return(_T32_)0;}
	T33 FormatNumber5;
	T34 FormatTime5;
	T35 Label6;
	T36 Value6; virtual _T36_ _Value6_(){return(_T36_)0;}
	T37 FormatNumber6;
	T38 FormatTime6;
	T39 Label7;
	T40 Value7; virtual _T40_ _Value7_(){return(_T40_)0;}
	T41 FormatNumber7;
	T42 FormatTime7;
	T43 Label8;
	T44 Value8; virtual _T44_ _Value8_(){return(_T44_)0;}
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
		
					if(ObjectFind(ObjChartID, nametitle) < 0)
					{
						if (!ObjectCreate(ObjChartID, nametitle, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", GetLastError());
						}
						else
						{
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_FONTSIZE, (int)(ObjTitleFontSize));
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_COLOR, ObjTitleFontColor);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_BACK, 0);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_SELECTABLE, 1);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_SELECTED, 0);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_HIDDEN, 1);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_CORNER, ObjCorner);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_ANCHOR, ObjAnchor);
		
							ObjectSetString(ObjChartID, nametitle, OBJPROP_FONT, ObjTitleFont);
		
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_XDISTANCE, ObjX);
							ObjectSetInteger(ObjChartID, nametitle, OBJPROP_YDISTANCE, ObjY);
						}
					}
					else
					{
						ObjX = (int)ObjectGetInteger(ObjChartID, nametitle, OBJPROP_XDISTANCE);
						ObjY = (int)ObjectGetInteger(ObjChartID, nametitle, OBJPROP_YDISTANCE);
					}
		
					ObjectSetString(ObjChartID, nametitle, OBJPROP_TEXT, (string)Title);
		
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
							ObjectDelete(ObjChartID, namelbl);
							ObjectDelete(ObjChartID, name);
						}
		
						continue;
					}
		
					//-- draw initial objects
					if (ObjectFind(ObjChartID, name) < 0)
					{
						if (textlbl == "")
						{
							continue;
						}
		
						if (ObjectCreate(ObjChartID, namelbl, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_CORNER, ObjCorner);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_ANCHOR, ObjAnchor);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_BACK, 0);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_SELECTABLE, 0);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_SELECTED, 0);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_HIDDEN, 1);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_FONTSIZE, ObjLabelsFontSize);
							ObjectSetInteger(ObjChartID, namelbl, OBJPROP_COLOR, ObjLabelsFontColor);
							ObjectSetString(ObjChartID, namelbl, OBJPROP_FONT, ObjLabelsFont);
						}
						else
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", GetLastError());
						}
		
						if (ObjectCreate(ObjChartID, name, OBJ_LABEL, subwindow, 0, 0, 0, 0))
						{
							ObjectSetInteger(ObjChartID, name, OBJPROP_CORNER, ObjCorner);
							ObjectSetInteger(ObjChartID, name, OBJPROP_ANCHOR, ObjAnchor);
							ObjectSetInteger(ObjChartID, name, OBJPROP_BACK, 0);
							ObjectSetInteger(ObjChartID, name, OBJPROP_SELECTABLE, 0);
							ObjectSetInteger(ObjChartID, name, OBJPROP_SELECTED, 0);
							ObjectSetInteger(ObjChartID, name, OBJPROP_HIDDEN, 1);
							ObjectSetInteger(ObjChartID, name, OBJPROP_FONTSIZE, ObjFontSize);
							ObjectSetInteger(ObjChartID, name, OBJPROP_COLOR, ObjFontColor);
							ObjectSetString(ObjChartID, name, OBJPROP_FONT, ObjFont);
						}
						else
						{
							Print(__FUNCTION__, ": failed to create text object! Error code = ", GetLastError());
						}
					}
					else
					{
						if (textlbl == "")
						{
							ObjectDelete(ObjChartID, namelbl);
							ObjectDelete(ObjChartID, name);
							continue;
						}
					}
		
					ObjY  = (int)(ObjY + ObjFontSize + ObjFontSize/2);
		
					//-- update label objects
					ObjectSetInteger(ObjChartID, namelbl, OBJPROP_XDISTANCE, ObjX);
					ObjectSetInteger(ObjChartID, namelbl, OBJPROP_YDISTANCE, ObjY);
					ObjectSetString(ObjChartID, namelbl, OBJPROP_TEXT, (string)textlbl);
		
					//-- update value objects
					int x        = 0;
					int xsizelbl = (int)ObjectGetInteger(ObjChartID, namelbl, OBJPROP_XSIZE);
		
					if (xsizelbl == 0) {
						//-- when the object is newly created, it returns 0 for XSIZE and YSIZE, so here we will trick it somehow
						xsizelbl = (int)(StringLen((string)textlbl) * ObjFontSize / 1.5 + ObjFontSize / 2);
					}
		
					x = ObjX + (xsizelbl + ObjFontSize/2);
		
					ObjectSetInteger(ObjChartID, name, OBJPROP_XDISTANCE, x);
					ObjectSetInteger(ObjChartID, name, OBJPROP_YDISTANCE, ObjY);
					ObjectSetString(ObjChartID, name, OBJPROP_TEXT, (string)text);
				}
				
				ChartRedraw();
			}
		
			initialized = true;
		}
		
		_callback_(1);
	}
};

// "Time filter" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23>
class MDL_TimeFilter: public BlockCalls
{
	public: /* Input Parameters */
	T1 ServerOrLocalTime;
	T2 TimeStartMode;
	T3 TimeStart;
	T4 TimeStartYear;
	T5 TimeStartMonth;
	T6 TimeStartDay;
	T7 TimeStartHour;
	T8 TimeStartMinute;
	T9 TimeStartSecond;
	T10 TimeEndMode;
	T11 TimeEnd;
	T12 TimeEndYear;
	T13 TimeEndMonth;
	T14 TimeEndDay;
	T15 TimeEndHour;
	T16 TimeEndMinute;
	T17 TimeEndSecond;
	T18 TimeEndRelYears;
	T19 TimeEndRelMonths;
	T20 TimeEndRelDays;
	T21 TimeEndRelHours;
	T22 TimeEndRelMinutes;
	T23 TimeEndRelSeconds;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_TimeFilter()
	{
		ServerOrLocalTime = (string)"server";
		TimeStartMode = (string)"text";
		TimeStart = (string)"00:00";
		TimeStartYear = (int)0;
		TimeStartMonth = (int)0;
		TimeStartDay = (double)0.0;
		TimeStartHour = (double)1.0;
		TimeStartMinute = (double)0.0;
		TimeStartSecond = (int)0;
		TimeEndMode = (string)"text";
		TimeEnd = (string)"00:01";
		TimeEndYear = (int)0;
		TimeEndMonth = (int)0;
		TimeEndDay = (double)0.0;
		TimeEndHour = (double)1.0;
		TimeEndMinute = (double)1.0;
		TimeEndSecond = (int)0;
		TimeEndRelYears = (int)0;
		TimeEndRelMonths = (int)0;
		TimeEndRelDays = (double)0.0;
		TimeEndRelHours = (double)0.0;
		TimeEndRelMinutes = (double)1.0;
		TimeEndRelSeconds = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		datetime t0 = 0, t1 = 0, tx = 0, now = 0;
		int mode_time = 0;
		
		     if (ServerOrLocalTime == "server") {mode_time = 0; now = TimeCurrent();}
		else if (ServerOrLocalTime == "local")  {mode_time = 1; now = TimeLocal();}
		else if (ServerOrLocalTime == "gmt")    {mode_time = 2; now = TimeGMT();}
		
		//-- start time
		if (TimeStartMode == "text")
		{
			t0 = TimeFromString(mode_time, TimeStart);
		}
		else if (TimeStartMode == "component")
		{
			t0 = TimeFromComponents(mode_time, TimeStartYear, TimeStartMonth, TimeStartDay, TimeStartHour, TimeStartMinute, TimeStartSecond);
		}
		
		//-- end time
		if (TimeEndMode == "text")
		{
			t1 = TimeFromString(mode_time, TimeEnd);
		}
		else if (TimeEndMode == "component")
		{
			t1 = TimeFromComponents(mode_time, TimeEndYear, TimeEndMonth, TimeEndDay, TimeEndHour, TimeEndMinute, TimeEndSecond);
		}
		else if (TimeEndMode == "relative")
		{
			MqlDateTime tm;
			TimeToStruct(t0, tm);
		
			tm.year += TimeEndRelYears;
			tm.mon  += TimeEndRelMonths;
			tm.day  += (int)MathFloor(TimeEndRelDays);
			tm.hour += (int)(MathFloor(TimeEndRelHours) + (24 * (TimeEndRelDays - MathFloor(TimeEndRelDays))));
			tm.min  += (int)(MathFloor(TimeEndRelMinutes) + (60 * (TimeEndRelHours - MathFloor(TimeEndRelHours))));
			tm.sec  += (int)((double)TimeEndRelSeconds + (60 * (TimeEndRelMinutes - MathFloor(TimeEndRelMinutes))));
		
			t1 = StructToTime(tm);
		
			if (t1 < t0) {t1 = t1 + 86400;}
		}
		
		if ((now >= t0 && now < t1) || (t0 > t1 && (now >= t0 || now < t1))) {_callback_(1);} else {_callback_(0);}
	}
};

// "Counter: Pass once" model
template<typename T1>
class MDL_PassOnce: public BlockCalls
{
	public: /* Input Parameters */
	T1 CounterID;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_PassOnce()
	{
		CounterID = (int)1;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int passes = Counter(CounterID, "increment");
		
		if (passes == 0) {_callback_(1);} else {_callback_(0);}
	}
};

// "No pending order" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_NoPendingOrders: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 LimitsOrStops;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_NoPendingOrders()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		LimitsOrStops = (string)"both";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		bool exist = false;
		
		for (int index = OrdersTotal()-1; index >= 0; index--)
		{
			if (PendingOrderSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells, LimitsOrStops))
			{
				exist = true;
				break;
			}
		}
		
		if (exist == false) {_callback_(1);} else {_callback_(0);}
	}
};

// "Check pending orders count" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8>
class MDL_CheckOrdersCount: public BlockCalls
{
	public: /* Input Parameters */
	T1 Compare;
	T2 CompareCount;
	T3 GroupMode;
	T4 Group;
	T5 SymbolMode;
	T6 Symbol;
	T7 BuysOrSells;
	T8 LimitsOrStops;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_CheckOrdersCount()
	{
		Compare = (string)">";
		CompareCount = (int)3;
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		LimitsOrStops = (string)"both";
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int count = 0;
		
		for (int index = OrdersTotal()-1; index >= 0; index--)
		{
			if (PendingOrderSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells, LimitsOrStops))
			{
				count++;
			}
		}
		
		if (compare(Compare, count, CompareCount)) {_callback_(1);} else {_callback_(0);}
	}
};

// "Trailing stop" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename T13,typename T14,typename _T14_,typename T15,typename _T15_,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23,typename T24,typename _T24_,typename T25,typename _T25_,typename T26,typename T27,typename T28,typename T29,typename _T29_,typename T30>
class MDL_TrailingStop2: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 TrailWhat;
	T7 TrailingReferencePrice;
	T8 TrailingStopMode;
	T9 tStopPips;
	T10 tStopMoney;
	T11 tStopMultiple;
	T12 tStopPercentTP;
	T13 tStopPercentProfit;
	T14 ftStop; virtual _T14_ _ftStop_(){return(_T14_)0;}
	T15 ftDigits; virtual _T15_ _ftDigits_(){return(_T15_)0;}
	T16 TrailingStepMode;
	T17 tStepPips;
	T18 tStepPercentTS;
	T19 TrailingStartMode;
	T20 tStartPips;
	T21 tStartPercentTS;
	T22 tStartPercentSL;
	T23 tStartPercentTP;
	T24 ftStart; virtual _T24_ _ftStart_(){return(_T24_)0;}
	T25 ftStartFraction; virtual _T25_ _ftStartFraction_(){return(_T25_)0;}
	T26 TrailingTPmode;
	T27 tTPpips;
	T28 tTPpercentTS;
	T29 ftTP; virtual _T29_ _ftTP_(){return(_T29_)0;}
	T30 LevelColor;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_TrailingStop2()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		TrailWhat = (int)1;
		TrailingReferencePrice = (int)0;
		TrailingStopMode = (string)"fixed";
		tStopPips = (double)40.0;
		tStopMoney = (double)10.0;
		tStopMultiple = (string)"20/5, 30/10";
		tStopPercentTP = (double)100.0;
		tStopPercentProfit = (double)50.0;
		TrailingStepMode = (string)"fixed";
		tStepPips = (double)1.0;
		tStepPercentTS = (double)10.0;
		TrailingStartMode = (string)"none";
		tStartPips = (double)10.0;
		tStartPercentTS = (double)100.0;
		tStartPercentSL = (double)10.0;
		tStartPercentTP = (double)10.0;
		TrailingTPmode = (string)"none";
		tTPpips = (double)20.0;
		tTPpercentTS = (double)200.0;
		LevelColor = (color)clrDeepPink;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		int total = TradesTotal();
		
		for (int index = 0; index < total; index++)
		{
			if (TradeSelectByIndex(index, GroupMode, Group, SymbolMode, Symbol, BuysOrSells))
			{
				string symbol     = OrderSymbol();
				double ask        = SymbolInfoDouble(symbol, SYMBOL_ASK);
				double bid        = SymbolInfoDouble(symbol, SYMBOL_BID);
				double stopslevel = (double)SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);
				int digits        = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
				int polarity      = 1;   // 1 = buy, -1 = sell
				double askbid     = ask; // could be Ask or Bid
				double bidask     = bid; // the opposite of askbid
				double sltp       = 0;   // could be SL or TP
				double tpsl       = 0;   // the opposite of sltp
				double fsl        = 0;   // Freeze Level
				double limit      = 0;
				double t_stop     = 0;   // trailing STOP
				double t_start    = 0;   // trailing START
				double t_step     = 0;   // trailing STEP
				double t_opp      = 0;   // trailing Opposite (TP when trailing SL or SL when trailing TP)
		
				if (TrailWhat > 0) {
					sltp = attrStopLoss();
					tpsl = attrTakeProfit();
				}
				else {
					sltp = attrTakeProfit();
					tpsl = attrStopLoss();
				}
		
				if (OrderType() == 0) {
					polarity = 1;
		
					if (TrailingReferencePrice == 1)
					{
						askbid = bid;
						bidask = ask;
					}
				}
				else if (OrderType() == 1) {
					polarity = -1;
					askbid   = bid;
					bidask   = ask;
		
					if (TrailingReferencePrice == 1) {
						askbid = ask;
						bidask = bid;
					}
				}
		
				if (TrailingReferencePrice == 2) {
					askbid = (ask + bid) / 2;
					bidask = (ask + bid) / 2;
				}
		
				// Trailing Stop Size
				     if (TrailingStopMode == "fixed")         {t_stop = toDigits(tStopPips, symbol);} 
				else if (TrailingStopMode == "percentTP")     {t_stop = (MathAbs(OrderOpenPrice() - tpsl)) * (tStopPercentTP / 100);}
				else if (TrailingStopMode == "percentProfit") {t_stop = (MathAbs(askbid - OrderOpenPrice())) * (tStopPercentProfit / 100);}
				else if (TrailingStopMode == "dynamicSize")   {t_stop = toDigits(_ftStop_(), symbol);}
				else if (TrailingStopMode == "dynamicDigits") {t_stop = _ftDigits_();}
				else if (TrailingStopMode == "dynamic")
				{
					// TODO: ftStop is now used for both, dynamic and dynamicSize - separate it
					t_stop = _ftStop_();
					t_stop = (polarity == 1) ? ask - t_stop : t_stop - bid;
				}
				else if (TrailingStopMode == "money")
				{
					t_stop = tStopMoney;
		
					double lotsize   = SymbolInfoDouble(symbol, SYMBOL_TRADE_CONTRACT_SIZE);
					double tickvalue = (SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE) / SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE)) * SymbolInfoDouble(symbol, SYMBOL_POINT);
					t_stop = t_stop /  (OrderLots() * PipValue(symbol));
					// TODO: remove this toDigits(), the calculation should be made directly into digits
					t_stop = toDigits(t_stop / tickvalue, symbol);
				}
		
				// Trailing Start Level
				     if (TrailingStartMode == "none")             {t_start = -EMPTY_VALUE;}
				else if (TrailingStartMode == "zero")             {t_start = 0;}
				else if (TrailingStartMode == "fixed")            {t_start = toDigits(tStartPips, symbol);}
				else if (TrailingStartMode == "percentTS")        {t_start = t_stop * (tStartPercentTS / 100);}
				else if (TrailingStartMode == "percentTP")        {t_start = (MathAbs(OrderOpenPrice() - tpsl)) * (tStartPercentTP / 100);}
				else if (TrailingStartMode == "percentSL")        {t_start = (MathAbs(OrderOpenPrice() - sltp)) * (tStartPercentSL / 100);}
				else if (TrailingStartMode == "function")         {t_start = toDigits(_ftStart_(), symbol);}
				else if (TrailingStartMode == "functionFraction") {t_start = _ftStartFraction_();}
		
				// Trailing Step Size
				     if (TrailingStepMode == "fixed")     {t_step = toDigits(tStepPips, symbol);}
				else if (TrailingStepMode == "percentTS") {t_step = t_stop * (tStepPercentTS / 100);}
		
				// Trailing Opposite Size
				     if (TrailingTPmode == "none")      {t_opp = tpsl;}
				else if (TrailingTPmode == "clear")     {t_opp = 0;}
				else if (TrailingTPmode == "fixed")     {t_opp = TrailWhat * (OrderOpenPrice() + (polarity * toDigits(tTPpips, symbol)));}
				else if (TrailingTPmode == "percentTS") {t_opp = TrailWhat * (OrderOpenPrice() + (polarity * toDigits(t_stop * (tTPpercentTS / 100), symbol)));}
				else if (TrailingTPmode == "function")  {t_opp = _ftTP_();}
		
				// this mode is located here because it overrides Start, Stop and Step
				// the idea here is to use Start as target profits
				if (TrailingStopMode == "multiple")
				{
					bool next = false;
					string tmp1[];
					string tmp2[];
		
					StringExplode(",", tStopMultiple, tmp1);
		
					for (int i = ArraySize(tmp1)-1; i >= 0; i--)
					{
						StringExplode("/", tmp1[i], tmp2);
		
						if (ArraySize(tmp2) != 2) {continue;}
		
						// trailing start will be used as the treshold level
						double new_start = toDigits(StringToDouble(StringTrim(tmp2[0])), symbol);
		
						// the regular trailing start is bigger than this level -> skip
						if (new_start < t_start) {continue;}
		
						// check whether the current price<->op distance is bigger than some of the desired levels
						double diff = NormalizeDouble(askbid - OrderOpenPrice(), digits);
		
						if (polarity * TrailWhat * diff >= new_start)
						{
							// and setup parameters so SL will be moved
							t_start = new_start;
							t_stop  = polarity * TrailWhat * diff - toDigits(StringToDouble(StringTrim(tmp2[1])), symbol);
		
							next = true;
							break;
						}
					}
		
					if (next == false) {continue;}
				}
		
				stopslevel   = stopslevel * SymbolInfoDouble(symbol, SYMBOL_POINT);
		
				if (t_stop <= 0) {continue;}
		
				if (OrderType() == 0 && TrailWhat * (askbid - OrderOpenPrice()) > t_start)
				{
					if ((TrailWhat * (askbid - sltp) >= t_stop + t_step) || sltp == 0)
					{
						// consider minimum stop
						fsl   = MathAbs(askbid - t_stop);
						limit = bidask - stopslevel * TrailWhat;
		
						if (fsl > limit) {fsl = limit;}
		
						if (TrailWhat == 1) // trail SL
						{
							if (sltp == 0 || sltp < fsl) {
								ModifyStops(OrderTicket(), askbid - t_stop, t_opp, LevelColor);
							}
						}
						else { // trail TP
							if (sltp == 0 || sltp > fsl) {
								ModifyStops(OrderTicket(), t_opp, askbid + t_stop, LevelColor);
							}
						}
					}
				}
				else if (OrderType() == 1 && TrailWhat * (OrderOpenPrice() - askbid) > t_start)
				{
					if ((TrailWhat * (sltp - askbid) >= t_stop + t_step) || sltp == 0)
					{
						// consider minimum stop
						fsl   = MathAbs(askbid + t_stop);
						limit = bidask + stopslevel * TrailWhat;
		
						if (fsl < limit) {fsl = limit;}
		
						if (TrailWhat == 1)
						{ // trail SL
							if (sltp == 0 || sltp > fsl)
							{
								ModifyStops(OrderTicket(), askbid + t_stop, t_opp, LevelColor);
							}
						}
						else
						{ // trail TP
							if (sltp == 0 || sltp < fsl)
							{
								ModifyStops(OrderTicket(), t_opp, askbid - t_stop, LevelColor);
							}
						}
					}
				}
			}
		}
		
		_callback_(1);
	}
};

// "Break even point" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11>
class MDL_BreakEvenPoint: public BlockCalls
{
	public: /* Input Parameters */
	T1 GroupMode;
	T2 Group;
	T3 SymbolMode;
	T4 Symbol;
	T5 BuysOrSells;
	T6 OnProfitMode;
	T7 OnProfitPips;
	T8 OnProfitPercentSL;
	T9 OnProfitPercentTP;
	T10 BEoffsetMode;
	T11 BEPoffsetPips;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_BreakEvenPoint()
	{
		GroupMode = (string)"group";
		Group = (string)"";
		SymbolMode = (string)"symbol";
		Symbol = (string)CurrentSymbol();
		BuysOrSells = (string)"both";
		OnProfitMode = (string)"fixed";
		OnProfitPips = (double)15.0;
		OnProfitPercentSL = (double)50.0;
		OnProfitPercentTP = (double)50.0;
		BEoffsetMode = (string)"none";
		BEPoffsetPips = (double)0.0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		for (int index = TradesTotal()-1; index >= 0; index--)
		{
			if (!TradeSelectByIndex(index,GroupMode,Group, SymbolMode,Symbol, BuysOrSells)) {continue;}
			
			string symbol   = OrderSymbol();
			double distance = 0;
		
			     if (OnProfitMode == "fixed")     {distance = toDigits(OnProfitPips,symbol);}
			else if (OnProfitMode == "percentSL") {distance = MathAbs(OrderOpenPrice()-attrStopLoss())*OnProfitPercentSL/100;}
			else if (OnProfitMode == "percentTP") {distance = MathAbs(OrderOpenPrice()-attrTakeProfit())*OnProfitPercentTP/100;}
		
			if (
				   (OrderType() == 0 && (SymbolInfoDouble(symbol,SYMBOL_ASK)-OrderOpenPrice() > distance) && (attrStopLoss() < OrderOpenPrice()))
				|| (OrderType() == 1 && (OrderOpenPrice()-SymbolInfoDouble(symbol,SYMBOL_BID) > distance) && ((attrStopLoss() > OrderOpenPrice()) || attrStopLoss() == 0))
			)
			{
				double be_offset = 0;
		
				if (BEoffsetMode == "pips")
				{
					be_offset = toDigits(BEPoffsetPips,symbol);
		
					if (OrderType() == 1) {be_offset = be_offset*(-1);}
				}
		
				ModifyStops(OrderTicket(), OrderOpenPrice()+be_offset, attrTakeProfit());
			}
		}
		
		_callback_(1);
	}
};

// "close (partially)" model
template<typename T1,typename T2,typename T3,typename T4,typename T5>
class MDL_LoopClosePart: public BlockCalls
{
	public: /* Input Parameters */
	T1 PartVolMode;
	T2 PartVolLots;
	T3 PartVolPercent;
	T4 Slippage;
	T5 ArrowColor;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopClosePart()
	{
		PartVolMode = (string)"percent";
		PartVolLots = (double)0.05;
		PartVolPercent = (double)50.0;
		Slippage = (ulong)4;
		ArrowColor = (color)clrDeepPink;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK == true) {return;}
		
		LoopedResume();
		
		//-- lots to close ------------------------------------------------------------------------------------------
		double lots = 0;
		
		     if (PartVolMode == "fixed")            {lots = PartVolLots;}
		else if (PartVolMode == "percent")          {lots = (OrderLots()*PartVolPercent)/100;}
		else if (PartVolMode == "percent-initial")  {lots = (attrLotsInitial()*PartVolPercent)/100;}
		
		if (PartVolPercent > 100) {lots = OrderLots();}
		
		//-- partial close ------------------------------------------------------------------------------------------
		bool success = true;
		
		if (OrderType() < 2) {
			success = CloseTradePartial(OrderTicket(), lots, Slippage, ArrowColor);
		}
		
		if (success) {_callback_(1);} else {_callback_(0);}
	}
};

// "Check positions count" model
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

// "Bear candle" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_SignalBearCandle: public BlockCalls
{
	public: /* Input Parameters */
	T1 SignalType;
	T2 CandleID;
	T3 MinBodySize;
	T4 MaxBodySize;
	T5 Symbol;
	T6 Period;
	/* Static Parameters */
	datetime bartime;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_SignalBearCandle()
	{
		SignalType = (string)"continuous";
		CandleID = (int)1;
		MinBodySize = (double)5.0;
		MaxBodySize = (double)0.0;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		/* Static Parameters (initial value) */
		bartime =  0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		double cOpen  = iOpen(Symbol,Period,CandleID);
		double cClose = iClose(Symbol,Period,CandleID);
		
		if (SignalType == "continuous" || bartime < iTime(Symbol,Period,1))
		{
			if (
				(cClose < cOpen)
				&& (cOpen-cClose >= toDigits(MinBodySize, Symbol))
				&& (MaxBodySize <= 0 || cOpen-cClose <= toDigits(MaxBodySize, Symbol))
			)
			{
				if (SignalType != "continuous") {
					bartime = iTime(Symbol,Period,1);
				}
		
				_callback_(1);
		
				return;
			}
		}
		
		_callback_(0);
	}
};

// "Bull candle" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_SignalBullCandle: public BlockCalls
{
	public: /* Input Parameters */
	T1 SignalType;
	T2 CandleID;
	T3 MinBodySize;
	T4 MaxBodySize;
	T5 Symbol;
	T6 Period;
	/* Static Parameters */
	datetime bartime;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_SignalBullCandle()
	{
		SignalType = (string)"continuous";
		CandleID = (int)1;
		MinBodySize = (double)5.0;
		MaxBodySize = (double)0.0;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		/* Static Parameters (initial value) */
		bartime =  0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		double cOpen  = iOpen(Symbol,Period,CandleID);
		double cClose = iClose(Symbol,Period,CandleID);
		
		if (SignalType == "continuous" || bartime < iTime(Symbol,Period,1))
		{
			if (
				(cOpen < cClose)
				&& (cClose-cOpen >= toDigits(MinBodySize, Symbol))
				&& (MaxBodySize <= 0 || cClose-cOpen <= toDigits(MaxBodySize, Symbol))
			)
			{
				if (SignalType != "continuous") {
					bartime = iTime(Symbol,Period,1);
				}
		
				_callback_(1);
		
				return;
			}
		}
		
		_callback_(0);
	}
};

// "AND" model
class MDL_LogicalAND: public BlockCalls
{
	/* Static Parameters */
	int list[];
	int check[];
	int list_size;
	int old_tick;
	bool passed;
	virtual void _callback_(int r) {return;}

	public: /* The main method */
	virtual void _execute_()
	{
		bool go_to_next = false;
		
		if (!passed)
		{
			fxdGetInboundBlocks(__block_number, list);
		   list_size = ArraySize(list);
			passed = true;
		}
		
		if (list_size == 0)
		{
		   // This block is at the very top => pass everytime
		   go_to_next = true;
		}
		else
		{
		   // This block is child
		   int ticks = FXD_TICKS_FROM_START;
		   
			if (old_tick != ticks)
			{
				old_tick = ticks;
		      ArrayResize(check, 0); // reset
		   }
			
		   if (
				   ArraySearch(list, __parent_number) > -1
				&& ArraySearch(check, __parent_number) == -1
			)
			{
		      ArrayEnsureValue(check, __parent_number); // add current parent
				
		      if (list_size == ArraySize(check))
				{
					go_to_next = true;
				}
		   }
		   
		}
		
		if (go_to_next == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "OR" model
class MDL_LogicalOR: public BlockCalls
{
	/* Static Parameters */
	int old_tick;
	virtual void _callback_(int r) {return;}

	public: /* The main method */
	virtual void _execute_()
	{
		int tickID = FXD_TICKS_FROM_START;
		
		if (old_tick != tickID)
		{
			old_tick = tickID;
		
		   _callback_(1);
		}
	}
};

// "Sell pending order" model
template<typename T1,typename T2,typename T3,typename T4,typename _T4_,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename _T12_,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename _T27_,typename T28,typename _T28_,typename T29,typename _T29_,typename T30,typename T31,typename T32,typename T33,typename T34,typename _T34_,typename T35,typename _T35_,typename T36,typename _T36_,typename T37,typename T38,typename T39,typename T40,typename T41,typename _T41_,typename T42,typename T43,typename T44,typename T45>
class MDL_SellPending: public BlockCalls
{
	public: /* Input Parameters */
	T1 Group;
	T2 Symbol;
	T3 Price;
	T4 dPrice; virtual _T4_ _dPrice_(){return(_T4_)0;}
	T5 PriceOffset;
	T6 VolumeMode;
	T7 VolumeSize;
	T8 VolumeSizeRisk;
	T9 VolumeRisk;
	T10 VolumePercent;
	T11 VolumeBlockPercent;
	T12 dVolumeSize; virtual _T12_ _dVolumeSize_(){return(_T12_)0;}
	T13 FixedRatioUnitSize;
	T14 FixedRatioDelta;
	T15 mmMgInitialLots;
	T16 mmMgMultiplyOnLoss;
	T17 mmMgMultiplyOnProfit;
	T18 mmMgAddLotsOnLoss;
	T19 mmMgAddLotsOnProfit;
	T20 mmMgResetOnLoss;
	T21 mmMgResetOnProfit;
	T22 VolumeUpperLimit;
	T23 StopLossMode;
	T24 StopLossPips;
	T25 StopLossPercentPrice;
	T26 StopLossPercentTP;
	T27 dlStopLoss; virtual _T27_ _dlStopLoss_(){return(_T27_)0;}
	T28 dpStopLoss; virtual _T28_ _dpStopLoss_(){return(_T28_)0;}
	T29 ddStopLoss; virtual _T29_ _ddStopLoss_(){return(_T29_)0;}
	T30 TakeProfitMode;
	T31 TakeProfitPips;
	T32 TakeProfitPercentPrice;
	T33 TakeProfitPercentSL;
	T34 dlTakeProfit; virtual _T34_ _dlTakeProfit_(){return(_T34_)0;}
	T35 ddTakeProfit; virtual _T35_ _ddTakeProfit_(){return(_T35_)0;}
	T36 dpTakeProfit; virtual _T36_ _dpTakeProfit_(){return(_T36_)0;}
	T37 ExpMode;
	T38 ExpDays;
	T39 ExpHours;
	T40 ExpMinutes;
	T41 dExp; virtual _T41_ _dExp_(){return(_T41_)0;}
	T42 CreateOCO;
	T43 Slippage;
	T44 MyComment;
	T45 ArrowColorSell;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_SellPending()
	{
		Group = (string)"";
		Symbol = (string)CurrentSymbol();
		Price = (string)"bid";
		PriceOffset = (double)20.0;
		VolumeMode = (string)"fixed";
		VolumeSize = (double)0.1;
		VolumeSizeRisk = (double)50.0;
		VolumeRisk = (double)2.5;
		VolumePercent = (double)100.0;
		VolumeBlockPercent = (double)3.0;
		FixedRatioUnitSize = (double)0.01;
		FixedRatioDelta = (double)20.0;
		mmMgInitialLots = (double)0.1;
		mmMgMultiplyOnLoss = (double)2.0;
		mmMgMultiplyOnProfit = (double)1.0;
		mmMgAddLotsOnLoss = (double)0.0;
		mmMgAddLotsOnProfit = (double)0.0;
		mmMgResetOnLoss = (int)0;
		mmMgResetOnProfit = (int)1;
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
		CreateOCO = (int)0;
		Slippage = (ulong)4;
		MyComment = (string)"";
		ArrowColorSell = (color)clrRed;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		//-- open price -------------------------------------------------------------
		double op = 0;
		
		     if (Price == "ask")     {op = SymbolAsk(Symbol);}
		else if (Price == "bid")     {op = SymbolBid(Symbol);}
		else if (Price == "mid")     {op = (SymbolAsk(Symbol)+SymbolBid(Symbol))/2;}
		else if (Price == "dynamic") {op = _dPrice_();}
		
		op = op - toDigits(PriceOffset, Symbol);
		
		//-- stops ------------------------------------------------------------------
		double sll = 0, slp = 0, tpl = 0, tpp = 0;
		
		     if (StopLossMode == "fixed")         {slp = StopLossPips;}
		else if (StopLossMode == "dynamicPips")   {slp = _dpStopLoss_();}
		else if (StopLossMode == "dynamicDigits") {slp = toPips(_ddStopLoss_(),Symbol);}
		else if (StopLossMode == "dynamicLevel")  {sll = _dlStopLoss_();}
		else if (StopLossMode == "percentPrice")  {sll = op + (op * StopLossPercentPrice / 100);}
		
		     if (TakeProfitMode == "fixed")         {tpp = TakeProfitPips;}
		else if (TakeProfitMode == "dynamicPips")   {tpp = _dpTakeProfit_();}
		else if (TakeProfitMode == "dynamicDigits") {tpp = toPips(_ddTakeProfit_(),Symbol);}
		else if (TakeProfitMode == "dynamicLevel")  {tpl = _dlTakeProfit_();}
		else if (TakeProfitMode == "percentPrice")  {tpl = op - (op * TakeProfitPercentPrice / 100);}
		
		if (StopLossMode == "percentTP")
		{
			if (tpp > 0) {slp = tpp*StopLossPercentTP/100;}
			if (tpl > 0) {slp = toPips(MathAbs(op - tpl), Symbol)*StopLossPercentTP/100;}
		}
		
		if (TakeProfitMode == "percentSL")
		{
			if (slp > 0) {tpp = slp*TakeProfitPercentSL/100;}
			if (sll > 0) {tpp = toPips(MathAbs(op - sll), Symbol)*TakeProfitPercentSL/100;}
		}
		
		//-- lots -------------------------------------------------------------------
		double lots    = 0;
		double pre_sll = sll;
		
		if (pre_sll == 0) {pre_sll = op;}
		
		double pre_sl_pips = toPips((pre_sll+toDigits(slp,Symbol))-op, Symbol);
		
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
		else if (VolumeMode == "martingale")       {lots = BetMartingale(Group, Symbol, 0, mmMgInitialLots, mmMgMultiplyOnLoss, mmMgMultiplyOnProfit, mmMgAddLotsOnLoss, mmMgAddLotsOnProfit, mmMgResetOnLoss, mmMgResetOnProfit);}
		else if (VolumeMode == "dynamic")          {lots = _dVolumeSize_();}
		
		lots = AlignLots(Symbol, lots, 0, VolumeUpperLimit);
		
		//-- expiration -------------------------------------------------------------
		datetime exp = ExpirationTime(ExpMode,ExpDays,ExpHours,ExpMinutes,_dExp_());
		
		//-- send -------------------------------------------------------------------
		long ticket = SellLater(Symbol,lots,op,sll,tpl,slp,tpp,Slippage,exp,(MagicStart+(int)Group),MyComment,ArrowColorSell,CreateOCO);
		
		if (ticket > 0) {_callback_(1);} else {_callback_(0);}
	}
};

// "Buy pending order" model
template<typename T1,typename T2,typename T3,typename T4,typename _T4_,typename T5,typename T6,typename T7,typename T8,typename T9,typename T10,typename T11,typename T12,typename _T12_,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21,typename T22,typename T23,typename T24,typename T25,typename T26,typename T27,typename _T27_,typename T28,typename _T28_,typename T29,typename _T29_,typename T30,typename T31,typename T32,typename T33,typename T34,typename _T34_,typename T35,typename _T35_,typename T36,typename _T36_,typename T37,typename T38,typename T39,typename T40,typename T41,typename _T41_,typename T42,typename T43,typename T44,typename T45>
class MDL_BuyPending: public BlockCalls
{
	public: /* Input Parameters */
	T1 Group;
	T2 Symbol;
	T3 Price;
	T4 dPrice; virtual _T4_ _dPrice_(){return(_T4_)0;}
	T5 PriceOffset;
	T6 VolumeMode;
	T7 VolumeSize;
	T8 VolumeSizeRisk;
	T9 VolumeRisk;
	T10 VolumePercent;
	T11 VolumeBlockPercent;
	T12 dVolumeSize; virtual _T12_ _dVolumeSize_(){return(_T12_)0;}
	T13 FixedRatioUnitSize;
	T14 FixedRatioDelta;
	T15 mmMgInitialLots;
	T16 mmMgMultiplyOnLoss;
	T17 mmMgMultiplyOnProfit;
	T18 mmMgAddLotsOnLoss;
	T19 mmMgAddLotsOnProfit;
	T20 mmMgResetOnLoss;
	T21 mmMgResetOnProfit;
	T22 VolumeUpperLimit;
	T23 StopLossMode;
	T24 StopLossPips;
	T25 StopLossPercentPrice;
	T26 StopLossPercentTP;
	T27 dlStopLoss; virtual _T27_ _dlStopLoss_(){return(_T27_)0;}
	T28 dpStopLoss; virtual _T28_ _dpStopLoss_(){return(_T28_)0;}
	T29 ddStopLoss; virtual _T29_ _ddStopLoss_(){return(_T29_)0;}
	T30 TakeProfitMode;
	T31 TakeProfitPips;
	T32 TakeProfitPercentPrice;
	T33 TakeProfitPercentSL;
	T34 dlTakeProfit; virtual _T34_ _dlTakeProfit_(){return(_T34_)0;}
	T35 ddTakeProfit; virtual _T35_ _ddTakeProfit_(){return(_T35_)0;}
	T36 dpTakeProfit; virtual _T36_ _dpTakeProfit_(){return(_T36_)0;}
	T37 ExpMode;
	T38 ExpDays;
	T39 ExpHours;
	T40 ExpMinutes;
	T41 dExp; virtual _T41_ _dExp_(){return(_T41_)0;}
	T42 CreateOCO;
	T43 Slippage;
	T44 MyComment;
	T45 ArrowColorBuy;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_BuyPending()
	{
		Group = (string)"";
		Symbol = (string)CurrentSymbol();
		Price = (string)"ask";
		PriceOffset = (double)20.0;
		VolumeMode = (string)"fixed";
		VolumeSize = (double)0.1;
		VolumeSizeRisk = (double)50.0;
		VolumeRisk = (double)2.5;
		VolumePercent = (double)100.0;
		VolumeBlockPercent = (double)3.0;
		FixedRatioUnitSize = (double)0.01;
		FixedRatioDelta = (double)20.0;
		mmMgInitialLots = (double)0.1;
		mmMgMultiplyOnLoss = (double)2.0;
		mmMgMultiplyOnProfit = (double)1.0;
		mmMgAddLotsOnLoss = (double)0.0;
		mmMgAddLotsOnProfit = (double)0.0;
		mmMgResetOnLoss = (int)0;
		mmMgResetOnProfit = (int)1;
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
		CreateOCO = (int)0;
		Slippage = (ulong)4;
		MyComment = (string)"";
		ArrowColorBuy = (color)clrBlue;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		//-- open price -------------------------------------------------------------
		double op = 0;
		
		     if (Price == "ask")     {op = SymbolAsk(Symbol);}
		else if (Price == "bid")     {op = SymbolBid(Symbol);}
		else if (Price == "mid")     {op = (SymbolAsk(Symbol)+SymbolBid(Symbol))/2;}
		else if (Price == "dynamic") {op = _dPrice_();}
		
		op = op + toDigits(PriceOffset, Symbol);
		
		//-- stops ------------------------------------------------------------------
		double sll = 0, slp = 0, tpl = 0, tpp = 0;
		
		     if (StopLossMode == "fixed")         {slp = StopLossPips;}
		else if (StopLossMode == "dynamicPips")   {slp = _dpStopLoss_();}
		else if (StopLossMode == "dynamicDigits") {slp = toPips(_ddStopLoss_(),Symbol);}
		else if (StopLossMode == "dynamicLevel")  {sll = _dlStopLoss_();}
		else if (StopLossMode == "percentPrice")  {sll = op - (op * StopLossPercentPrice / 100);}
		
		     if (TakeProfitMode == "fixed")         {tpp = TakeProfitPips;}
		else if (TakeProfitMode == "dynamicPips")   {tpp = _dpTakeProfit_();}
		else if (TakeProfitMode == "dynamicDigits") {tpp = toPips(_ddTakeProfit_(),Symbol);}
		else if (TakeProfitMode == "dynamicLevel")  {tpl = _dlTakeProfit_();}
		else if (TakeProfitMode == "percentPrice")  {tpl = op + (op * TakeProfitPercentPrice / 100);}
		
		if (StopLossMode == "percentTP")
		{
			if (tpp > 0) {slp = tpp*StopLossPercentTP/100;}
			if (tpl > 0) {slp = toPips(MathAbs(op - tpl), Symbol)*StopLossPercentTP/100;}
		}
		
		if (TakeProfitMode == "percentSL")
		{
			if (slp > 0) {tpp = slp*TakeProfitPercentSL/100;}
			if (sll > 0) {tpp = toPips(MathAbs(op - sll), Symbol)*TakeProfitPercentSL/100;}
		}
		
		//-- lots -------------------------------------------------------------------
		double lots    = 0;
		double pre_sll = sll;
		
		if (pre_sll == 0) {pre_sll = op;}
		
		double pre_sl_pips = toPips(op-(pre_sll-toDigits(slp,Symbol)), Symbol);
		
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
		else if (VolumeMode == "martingale")       {lots = BetMartingale(Group, Symbol, 0, mmMgInitialLots, mmMgMultiplyOnLoss, mmMgMultiplyOnProfit, mmMgAddLotsOnLoss, mmMgAddLotsOnProfit, mmMgResetOnLoss, mmMgResetOnProfit);}
		else if (VolumeMode == "dynamic")          {lots = _dVolumeSize_();}
		
		lots = AlignLots(Symbol, lots, 0, VolumeUpperLimit);
		
		//-- expiration -------------------------------------------------------------
		datetime exp = ExpirationTime(ExpMode,ExpDays,ExpHours,ExpMinutes,_dExp_());
		
		//-- send -------------------------------------------------------------------
		long ticket = BuyLater(Symbol,lots,op,sll,tpl,slp,tpp,Slippage,exp,(MagicStart+(int)Group),MyComment,ArrowColorBuy,CreateOCO);
		
		if (ticket > 0) {_callback_(1);} else {_callback_(0);}
	}
};

// "Draw Line" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename _T5_,typename T6,typename _T6_,typename T7,typename _T7_,typename T8,typename _T8_,typename T9,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21>
class MDL_ChartDrawLine: public BlockCalls
{
	public: /* Input Parameters */
	T1 ObjectPerBar;
	T2 ObjectUpdate;
	T3 ObjName;
	T4 ObjectType;
	T5 ObjTime1; virtual _T5_ _ObjTime1_(){return(_T5_)0;}
	T6 ObjPrice1; virtual _T6_ _ObjPrice1_(){return(_T6_)0;}
	T7 ObjTime2; virtual _T7_ _ObjTime2_(){return(_T7_)0;}
	T8 ObjPrice2; virtual _T8_ _ObjPrice2_(){return(_T8_)0;}
	T9 ObjAngle;
	T10 ObjRay;
	T11 ObjRayLeft;
	T12 ObjRayRight;
	T13 ObjColor;
	T14 ObjStyle;
	T15 ObjWidth;
	T16 ObjBack;
	T17 ObjSelectable;
	T18 ObjSelected;
	T19 ObjHidden;
	T20 ObjZorder;
	T21 ObjChartSubWindow;
	/* Static Parameters */
	int count;
	datetime time0;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ChartDrawLine()
	{
		ObjectPerBar = (bool)true;
		ObjectUpdate = (bool)true;
		ObjName = (string)"";
		ObjectType = (ENUM_OBJECT)OBJ_VLINE;
		ObjAngle = (double)45.0;
		ObjRay = (bool)true;
		ObjRayLeft = (bool)false;
		ObjRayRight = (bool)false;
		ObjColor = (color)clrDeepPink;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_SOLID;
		ObjWidth = (int)1;
		ObjBack = (bool)false;
		ObjSelectable = (bool)true;
		ObjSelected = (bool)false;
		ObjHidden = (bool)false;
		ObjZorder = (int)0;
		ObjChartSubWindow = (string)"";
		/* Static Parameters (initial value) */
		count =  0;
		time0 =  0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		string ObjNamePrefix = "fxd_line_";
		long ObjChartID      = 0;
		int subwindow_id     = WindowFindVisible(ObjChartID, ObjChartSubWindow);
		
		if (subwindow_id >= 0)
		{
			string name       = "";
			string name_base  = "";
			bool get_new_name = false;
			bool do_update    = true;
		
			if (ObjectPerBar == true)
			{
				datetime time = iTime(Symbol(),0,1);
		
				if (time0 < time)
				{
					time0        = time;
					get_new_name = true;
				}
				else
				{
					if (ObjectUpdate == false) {do_update = false;}
				}
			}
			else
			{
				if (ObjectUpdate == false) {get_new_name = true;}
			}
		
			if (do_update)
			{
				if (ObjName != "") {name_base = ObjName;} else {name_base = ObjNamePrefix + __block_user_number + "_";}
		
				if (get_new_name == false)
				{
					name = name_base + IntegerToString(count);
				}
				else
				{
					while (true)
					{
						count++;
						name = name_base + IntegerToString(count);
		
						if (ObjectFind(ObjChartID,name) < 0) {break;}
					}
				}
		
				if (ObjName != "" && count == 0) {name = ObjName;}
		
				if (ObjectFind(ObjChartID,name) < 0 && !ObjectCreate(ObjChartID,name,(ENUM_OBJECT)ObjectType,subwindow_id,0,0))
				{
					Print(__FUNCTION__,": failed to create line object! Error code = ",GetLastError());
				}
		
				double p1=0, p2=0;
				datetime t1=0, t2=0;
		
				switch(ObjectType)
				{
					case OBJ_VLINE        : {t1=1; break;}
					case OBJ_HLINE        : {p1=1; break;}
					case OBJ_TREND        : {t1=1; p1=1; t2=1; p2=1; break;}
					case OBJ_TRENDBYANGLE : {t1=1; p1=1; break;}
					case OBJ_CYCLES       : {t1=1; p1=1; t2=1; p2=1; break;}
				}
		
				if (t1 == 1) {t1 = _ObjTime1_(); ObjectSetInteger(ObjChartID,name,OBJPROP_TIME,0,t1);}
				if (t2 == 1) {t2 = _ObjTime2_(); ObjectSetInteger(ObjChartID,name,OBJPROP_TIME,1,t2);}
				if (p1 == 1) {p1 = _ObjPrice1_(); ObjectSetDouble(ObjChartID,name,OBJPROP_PRICE,0,p1);}
				if (p2 == 1) {p2 = _ObjPrice2_(); ObjectSetDouble(ObjChartID,name,OBJPROP_PRICE,1,p2);}
		
				ObjectSetInteger(ObjChartID,name,OBJPROP_STYLE,ObjStyle);
				ObjectSetInteger(ObjChartID,name,OBJPROP_COLOR,ObjColor);
				ObjectSetInteger(ObjChartID,name,OBJPROP_BACK,ObjBack);
				ObjectSetInteger(ObjChartID,name,OBJPROP_WIDTH,ObjWidth);
				ObjectSetInteger(ObjChartID,name,OBJPROP_SELECTABLE,ObjSelectable);
				ObjectSetInteger(ObjChartID,name,OBJPROP_SELECTED,ObjSelected);
				ObjectSetInteger(ObjChartID,name,OBJPROP_HIDDEN,ObjHidden);
				ObjectSetInteger(ObjChartID,name,OBJPROP_ZORDER,ObjZorder);
		
				ObjectSetDouble(ObjChartID,name,OBJPROP_ANGLE,ObjAngle);
				ObjectSetInteger(ObjChartID,name,OBJPROP_RAY,ObjRay);
				ObjectSetInteger(ObjChartID,name,OBJPROP_RAY_LEFT,ObjRayLeft);
				ObjectSetInteger(ObjChartID,name,OBJPROP_RAY_RIGHT,ObjRayRight);
		
				ChartRedraw();
			}
		}
		
		_callback_(1);
	}
};

// "Delete objects" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_ChartDeleteObjects: public BlockCalls
{
	public: /* Input Parameters */
	T1 NameStartsWith;
	T2 NameContains;
	T3 ObjColor;
	T4 SortMode;
	T5 MaxObjects;
	T6 SkipObjects;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ChartDeleteObjects()
	{
		NameStartsWith = (string)"";
		NameContains = (string)"";
		ObjColor = (color)EMPTY_VALUE;
		SortMode = (string)"z-a";
		MaxObjects = (int)0;
		SkipObjects = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		// TODO: Combine "a-z" and "z-a" loops into one loop
		// TODO: Fix the problem with "Any color" and the EMPTY_VALUE value
		
		int index         = 0;
		int total         = ObjectsTotal(0,-1,-1);
		int length        = 0;
		bool deleted      = false;
		int deleted_count = 0;
		int skipped_count = 0;
		string name       = "";
		
		if (SortMode == "a-z")
		{
			for (index=0; index<total; index++)
			{
				name = ObjectName(0,index);
		
				if (name != "")
				{
					if (MaxObjects > 0 && deleted_count >= MaxObjects) {break;}
		
					deleted = false;
		
					// ObjColor != clrBlack below is because in MQL5 when the value is EMPTY_VALUE, it is turned into clrBlack because of the data type
					if (ObjColor != EMPTY_VALUE && ObjColor != clrBlack && ObjectGetInteger(0, name, OBJPROP_COLOR) != ObjColor) {continue;}
		
					if (NameStartsWith == "" && NameContains == "")
					{
						if (SkipObjects > 0 && skipped_count < SkipObjects)
						{
							skipped_count++;
							continue;
						}
		
						if (ObjectDelete(0,name))
						{
							deleted_count++;
						}
					}
					else
					{
						if (NameStartsWith != "")
						{
							length = StringLen(NameStartsWith);
		
							if (StringSubstr(name,0,length) == NameStartsWith)
							{
								if (SkipObjects > 0 && skipped_count < SkipObjects)
								{
									skipped_count++;
									continue;
								}
		
								if (ObjectDelete(0,name))
								{
									deleted_count++;
								}
							}
						}
		
						if (deleted == false && NameContains != "")
						{
							if (StringFind(name,NameContains,0) > -1)
							{
								if (SkipObjects > 0 && skipped_count < SkipObjects)
								{
									skipped_count++;
									continue;
								}
		
								if (ObjectDelete(0,name))
								{
									deleted_count++;
								}
							}
						}
					}
				}
			}
		}
		else if (SortMode == "z-a")
		{
			for (index=total-1; index>=0; index--)
			{
				name = ObjectName(0,index);
		
				if (name != "")
				{
					if (MaxObjects > 0 && deleted_count >= MaxObjects) {break;}
		
					deleted = false;
		
					// ObjColor != clrBlack below is because in MQL5 when the value is EMPTY_VALUE, it is turned into clrBlack because of the data type
					if (ObjColor != EMPTY_VALUE && ObjColor != clrBlack && ObjectGetInteger(0, name, OBJPROP_COLOR) != ObjColor) {continue;}
		
					if (NameStartsWith == "" && NameContains == "")
					{
						if (SkipObjects > 0 && skipped_count < SkipObjects)
						{
							skipped_count++;
							continue;
						}
		
						if (ObjectDelete(0,name))
						{
							deleted_count++;
						}
					}
					else
					{
						if (NameStartsWith != "")
						{
							length = StringLen(NameStartsWith);
		
							if (StringSubstr(name,0,length) == NameStartsWith)
							{
								if (SkipObjects > 0 && skipped_count < SkipObjects)
								{
									skipped_count++;
									continue;
								}
		
								if (ObjectDelete(0,name))
								{
									deleted_count++;
								}
							}
						}
		
						if (deleted == false && NameContains != "")
						{
							if (StringFind(name,NameContains,0) > -1)
							{
								if (SkipObjects > 0 && skipped_count < SkipObjects)
								{
									skipped_count++;
									continue;
								}
		
								if (ObjectDelete(0,name))
								{
									deleted_count++;
								}
							}
						}
					}
				}
			}
		}
		
		if (deleted_count > 0)
		{
			ChartRedraw();
		}
		
		_callback_(1);
	}
};

// "For each Position" model
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
		
				trades[size-1][0] = OrderProfit();
				trades[size-1][1] = (double)OrderTicket();
			}
		
			// Sort
			if (size > 0)
			{
				ArraySort(trades);
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
				attrTicketInLoop(OrderTicket());
		
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

// "once per position/order" model
template<typename T1>
class MDL_LoopOncePer: public BlockCalls
{
	public: /* Input Parameters */
	T1 AllowOldOrders;
	/* Static Parameters */
	int memory[];
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopOncePer()
	{
		AllowOldOrders = (bool)false;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK==true) {return;}
		
		LoopedResume();
		
		
		
		bool next = false;
		
		if (AllowOldOrders || OrderOpenTime() >= TimeAtStart())
		{
		   int ticket = (int)attrTicketParent(OrderTicket());
		
		   if (InArray(memory, ticket) == false)
			{
		      ArrayEnsureValue(memory, ticket);
		      next = true;
		   }
		}
		
		if (next == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "check group number" model
template<typename T1>
class MDL_LoopCheckGroup: public BlockCalls
{
	public: /* Input Parameters */
	T1 IsThisGroup;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopCheckGroup()
	{
		IsThisGroup = (int)0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK == true) {return;}
		
		LoopedResume();
		
		if (OrderMagicNumber() == (MagicStart + IsThisGroup)) {_callback_(1);} else {_callback_(0);}
	}
};

// "check take-profit" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename _T5_>
class MDL_LoopCheckTP: public BlockCalls
{
	public: /* Input Parameters */
	T1 Compare;
	T2 CheckMode;
	T3 PipsSize;
	T4 PercentSL;
	T5 fSize; virtual _T5_ _fSize_(){return(_T5_)0;}
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopCheckTP()
	{
		Compare = (string)">";
		CheckMode = (string)"fixed";
		PipsSize = (double)25.0;
		PercentSL = (double)100.0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK == true) {return;}
		
		LoopedResume();
		
		double c1 = 0, c2 = 0;
		
		if (CheckMode == "function")
		{
			//-- calculate c1 and c2
			c1 = attrTakeProfit();
			c2 = _fSize_();
		}
		else
		{
			int digits = (int)SymbolInfoInteger(OrderSymbol(), SYMBOL_DIGITS);
		
			//-- get SL and TP as levels
			double sl = attrStopLoss();
			double tp = attrTakeProfit();
		
			//-- get SL and TP as fraction values
			double slf = (sl == 0) ? 0 : NormalizeDouble(MathAbs(OrderOpenPrice()-sl), digits);
			double tpf = (tp == 0) ? 0 : NormalizeDouble(MathAbs(OrderOpenPrice()-tp), digits);
		
			//-- calculate c1 and c2
			c1 = tpf;
		
		   if (CheckMode == "fixed")
			{
				c2 = toDigits(PipsSize, OrderSymbol());
			}
			else if (CheckMode == "percentSL")
			{
				c2 = (slf*PercentSL/100);
			}
		}
		
		if (compare(Compare, c1, c2))
		{
			_callback_(1);
		}
		else
		{
			_callback_(0);
		}
	}
};

// "modify stops" model
template<typename T1,typename T2,typename _T2_,typename T3,typename T4,typename T5,typename T6,typename T7,typename T8,typename _T8_,typename T9,typename _T9_,typename T10,typename _T10_,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename _T16_,typename T17,typename _T17_,typename T18,typename _T18_,typename T19>
class MDL_LoopModifySLTP: public BlockCalls
{
	public: /* Input Parameters */
	T1 RelativeTo;
	T2 dPrice; virtual _T2_ _dPrice_(){return(_T2_)0;}
	T3 NewSLmode;
	T4 NewStopLoss;
	T5 NewStopLossPercentPrice;
	T6 NewStopLossPercent;
	T7 NewStopLossPercentTP;
	T8 fNewStopLoss; virtual _T8_ _fNewStopLoss_(){return(_T8_)0;}
	T9 dpNewStopLoss; virtual _T9_ _dpNewStopLoss_(){return(_T9_)0;}
	T10 ddNewStopLoss; virtual _T10_ _ddNewStopLoss_(){return(_T10_)0;}
	T11 NewTPmode;
	T12 NewTakeProfit;
	T13 NewTakeProfitPercentPrice;
	T14 NewTakeProfitPercent;
	T15 NewTakeProfitPercentSL;
	T16 fNewTakeProfit; virtual _T16_ _fNewTakeProfit_(){return(_T16_)0;}
	T17 dpNewTakeProfit; virtual _T17_ _dpNewTakeProfit_(){return(_T17_)0;}
	T18 ddNewTakeProfit; virtual _T18_ _ddNewTakeProfit_(){return(_T18_)0;}
	T19 LevelColor;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopModifySLTP()
	{
		RelativeTo = (string)"openprice";
		NewSLmode = (string)"fixed";
		NewStopLoss = (double)50.0;
		NewStopLossPercentPrice = (double)0.55;
		NewStopLossPercent = (double)50.0;
		NewStopLossPercentTP = (double)50.0;
		NewTPmode = (string)"fixed";
		NewTakeProfit = (double)50.0;
		NewTakeProfitPercentPrice = (double)0.55;
		NewTakeProfitPercent = (double)50.0;
		NewTakeProfitPercentSL = (double)50.0;
		LevelColor = (color)clrDeepPink;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK == true) {return;}
		
		LoopedResume();
		
		string symbol = OrderSymbol();
		int digits    = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
		int polarity  = (IsOrderTypeBuy()) ? 1 : -1;
		double price  = (IsOrderTypeBuy()) ? SymbolAsk(symbol) : SymbolBid(symbol);
		
		//-- New Price level ------------------------------------------------------------------------------------------------------------------------     
		     if (RelativeTo == "openprice") {price = OrderOpenPrice();}
		else if (RelativeTo == "dynamic")   {price = _dPrice_();}
		else if (RelativeTo == "current-reverse")
		{
			price = (IsOrderTypeBuy()) ? SymbolBid(symbol) : SymbolAsk(symbol);
		}
		
		//-- Stop Loss and Take Profit --------------------------------------------------------------------------------------------------------------
		double oldSL = NormalizeDouble(attrStopLoss(), digits);
		double oldTP = NormalizeDouble(attrTakeProfit(), digits);
		double SL = oldSL;
		double TP = oldTP;
		
		     if (NewSLmode == "fixed")        {SL = (NewStopLoss == 0.0) ? 0.0 : price - (polarity * toDigits(NewStopLoss, symbol));}
		else if (NewSLmode == "percentPrice") {SL = (NewStopLossPercentPrice == 0.0) ? 0.0 : price - (polarity * price * NewStopLossPercentPrice / 100);}
		else if (NewSLmode == "percent")      {SL = (NewStopLossPercent == 0.0) ? 0.0 : price - (polarity * MathAbs(price-oldSL)*NewStopLossPercent/100);}
		else if (NewSLmode == "percentTP")    {SL = (NewStopLossPercentTP == 0.0) ? 0.0 : price - (polarity * MathAbs(price-oldTP)*NewStopLossPercentTP/100);}
		else if (NewSLmode == "function")     {SL = _fNewStopLoss_();}
		else if (NewSLmode == "dynamicPips")
		{
		   SL = toDigits(_dpNewStopLoss_(), symbol);
			SL = (SL == 0.0) ? 0.0 : price - (polarity * SL);
		}
		else if (NewSLmode == "dynamicDigits")
		{
			SL = _ddNewStopLoss_();
			SL = (SL == 0.0) ? 0.0 : price - (polarity * SL);
		}
		
		     if (NewTPmode == "fixed")        {TP = (NewTakeProfit == 0.0) ? 0.0 : price + (polarity * toDigits(NewTakeProfit, symbol));}
		else if (NewSLmode == "percentPrice") {TP = (NewTakeProfitPercentPrice == 0.0) ? 0.0 : price + (polarity * price * NewTakeProfitPercentPrice / 100);}
		else if (NewTPmode == "percent")      {TP = (NewTakeProfitPercent == 0.0) ? 0.0 : price + (polarity * MathAbs(price-oldTP)*NewTakeProfitPercent/100);}
		else if (NewTPmode == "percentSL")    {TP = (NewTakeProfitPercentSL == 0.0) ? 0.0 : price + (polarity * MathAbs(price-oldSL)*NewTakeProfitPercentSL/100);}
		else if (NewTPmode == "function")     {TP = _fNewTakeProfit_();}
		else if (NewTPmode == "dynamicPips")
		{
			TP = toDigits(_dpNewTakeProfit_(), symbol);
			TP = (TP == 0.0) ? 0.0 : price + (polarity * TP);
		}
		else if (NewTPmode == "dynamicDigits")
		{
			TP = _ddNewTakeProfit_();
			TP = (TP == 0.0) ? 0.0 : price + (polarity * TP);
		}
		
		//-- Send -----------------------------------------------------------------------------------------------------------------------------------
		bool success = false;
		
		if (SL != oldSL || TP != oldTP)
		{
		   success = ModifyOrder(OrderTicket(), OrderOpenPrice(), SL, TP, 0, 0, OrderExpirationTime(), LevelColor);
		}
		
		if (success == true) {_callback_(1);} else {_callback_(0);}
	}
};

// "check age" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename T6>
class MDL_LoopCheckAge: public BlockCalls
{
	public: /* Input Parameters */
	T1 AgeRelativeTo;
	T2 AgeCompare;
	T3 AgeDays;
	T4 AgeHours;
	T5 AgeMinutes;
	T6 AgeSeconds;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_LoopCheckAge()
	{
		AgeRelativeTo = (string)"open-time";
		AgeCompare = (string)">=";
		AgeDays = (double)0.0;
		AgeHours = (double)1.0;
		AgeMinutes = (double)0.0;
		AgeSeconds = (double)0.0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		if (FXD_BREAK == true) {return;}
		
		LoopedResume();
		
		bool pass = false;
		int age   = 0;
		datetime current_time      = TimeCurrent(); // the current server time
		datetime trade_time        = 0;             // the time of the trade
		datetime saturday_midnight = 0;             // the time at 00:00 on the next Saturday after the trade creation
		int weeks = 1;                              // the amount of weeks after trade creation, used to subtract the number of weekends
		
		if (AgeRelativeTo == "open-time") {trade_time = OrderOpenTime();}
		else if (AgeRelativeTo == "close-time") {trade_time = OrderCloseTime();}
		
		age = (int)(current_time - trade_time);
		
		MqlDateTime t;
		TimeToStruct(trade_time, t);
		
		if (t.day_of_week > 0 && t.day_of_week < 6)
		{
			saturday_midnight = trade_time + ((6 - t.day_of_week) * 86400) - ((t.hour * 3600) + (t.min * 60) + (t.sec));
		
			// do the age needs correction (removal of weekdays)
			if (current_time > saturday_midnight)
			{
				weeks = (int)MathCeil(((current_time - saturday_midnight) / 86400.0) / 7.0);
				age   = age - (weeks * 2 * 86400);
			}
		
			datetime AgeAmount = (datetime)((AgeDays * 86400) + (AgeHours * 3600) + (AgeMinutes * 60) + AgeSeconds);
		
			if (compare(AgeCompare, age, AgeAmount)) {pass = true;}
		}
		
		if (pass) {_callback_(1);} else {_callback_(0);}
	}
};

// "Draw Text" model
template<typename T1,typename T2,typename T3,typename T4,typename T5,typename _T5_,typename T6,typename _T6_,typename T7,typename T8,typename T9,typename _T9_,typename T10,typename T11,typename T12,typename T13,typename T14,typename T15,typename T16,typename T17,typename T18,typename T19,typename T20,typename T21>
class MDL_ChartDrawText: public BlockCalls
{
	public: /* Input Parameters */
	T1 ObjectPerBar;
	T2 ObjectUpdate;
	T3 ObjName;
	T4 ObjectType;
	T5 ObjTime1; virtual _T5_ _ObjTime1_(){return(_T5_)0;}
	T6 ObjPrice1; virtual _T6_ _ObjPrice1_(){return(_T6_)0;}
	T7 ObjX;
	T8 ObjY;
	T9 ObjText; virtual _T9_ _ObjText_(){return(_T9_)0;}
	T10 ObjFont;
	T11 ObjFontSize;
	T12 ObjAngle;
	T13 ObjCorner;
	T14 ObjAnchor;
	T15 ObjColor;
	T16 ObjBack;
	T17 ObjSelectable;
	T18 ObjSelected;
	T19 ObjHidden;
	T20 ObjZorder;
	T21 ObjChartSubWindow;
	/* Static Parameters */
	int count;
	datetime time0;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDL_ChartDrawText()
	{
		ObjectPerBar = (bool)true;
		ObjectUpdate = (bool)true;
		ObjName = (string)"";
		ObjectType = (ENUM_OBJECT)OBJ_TEXT;
		ObjX = (int)0;
		ObjY = (int)0;
		ObjFont = (string)"Arial";
		ObjFontSize = (int)10;
		ObjAngle = (double)0.0;
		ObjCorner = (ENUM_BASE_CORNER)CORNER_LEFT_UPPER;
		ObjAnchor = (int)ANCHOR_LEFT_UPPER;
		ObjColor = (color)clrSkyBlue;
		ObjBack = (bool)false;
		ObjSelectable = (bool)true;
		ObjSelected = (bool)false;
		ObjHidden = (bool)false;
		ObjZorder = (int)0;
		ObjChartSubWindow = (string)"";
		/* Static Parameters (initial value) */
		count =  0;
		time0 =  0;
	}

	public: /* The main method */
	virtual void _execute_()
	{
		string ObjNamePrefix = "fxd_text_";
		long ObjChartID      = 0;
		int subwindow_id     = WindowFindVisible(ObjChartID, ObjChartSubWindow);
		
		if (subwindow_id >= 0)
		{
			string name       = "";
			string name_base  = "";
			bool get_new_name = false;
			bool do_update    = true;
		
			if (ObjectPerBar == true)
			{
				datetime time = iTime(Symbol(),0,1);
		
				if (time0 < time)
				{
					time0        = time;
					get_new_name = true;
				}
				else
				{
					if (ObjectUpdate == false) {do_update = false;}
				}
			}
			else
			{
				if (ObjectUpdate == false) {get_new_name = true;}
			}
		
			if (do_update)
			{
				if (ObjName != "") {name_base = ObjName;} else {name_base = ObjNamePrefix + __block_user_number + "_";}
		
				if (get_new_name == false)
				{
					name = name_base + IntegerToString(count);
				}
				else
				{
					while (true)
					{
						count++;
						name = name_base + IntegerToString(count);
		
						if (ObjectFind(ObjChartID,name) < 0) {break;}
					}
				}
		
				if (ObjName != "" && count == 0) {name = ObjName;}
		
				if (ObjectFind(ObjChartID,name) < 0 && !ObjectCreate(ObjChartID,name,(ENUM_OBJECT)ObjectType,subwindow_id,0,0))
				{
					Print(__FUNCTION__,": failed to create text object! Error code = ",GetLastError());
				}
				
				double p1=0, p2=0;
				datetime t1=0, t2=0;
		
				if (ObjectType == OBJ_TEXT)
				{
					ObjectSetInteger(ObjChartID,name,OBJPROP_TIME,0,(long)_ObjTime1_());
					ObjectSetDouble(ObjChartID,name,OBJPROP_PRICE,0,(double)_ObjPrice1_());
				}
				else
				{
					ObjectSetInteger(ObjChartID,name,OBJPROP_XDISTANCE,ObjX);
					ObjectSetInteger(ObjChartID,name,OBJPROP_YDISTANCE,ObjY);
				}
		
				ObjectSetString(ObjChartID,name,OBJPROP_TEXT,(string)(_ObjText_()));
				ObjectSetString(ObjChartID,name,OBJPROP_FONT,ObjFont);
				ObjectSetInteger(ObjChartID,name,OBJPROP_FONTSIZE,ObjFontSize);
				ObjectSetDouble(ObjChartID,name,OBJPROP_ANGLE,ObjAngle);
				ObjectSetInteger(ObjChartID,name,OBJPROP_CORNER,ObjCorner);
				ObjectSetInteger(ObjChartID,name,OBJPROP_ANCHOR,ObjAnchor);
		
				//ObjectSetInteger(ObjChartID,name,OBJPROP_STYLE,ObjStyle);
				ObjectSetInteger(ObjChartID,name,OBJPROP_COLOR,ObjColor);
				ObjectSetInteger(ObjChartID,name,OBJPROP_BACK,ObjBack);
				//ObjectSetInteger(ObjChartID,name,OBJPROP_WIDTH,ObjWidth);
				ObjectSetInteger(ObjChartID,name,OBJPROP_SELECTABLE,ObjSelectable);
				ObjectSetInteger(ObjChartID,name,OBJPROP_SELECTED,ObjSelected);
				ObjectSetInteger(ObjChartID,name,OBJPROP_HIDDEN,ObjHidden);
				ObjectSetInteger(ObjChartID,name,OBJPROP_ZORDER,ObjZorder);
		
				ChartRedraw();
			}
		}
		
		_callback_(1);
	}
};


//------------------------------------------------------------------------------------------------------------------------

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

// "Profit (Equity - Balance)" model
class MDLIC_account_AccountProfit
{
	public: /* Input Parameters */
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_account_AccountProfit()
	{
	}

	public: /* The main method */
	double _execute_()
	{
		return NormalizeDouble(AccountInfoDouble(ACCOUNT_PROFIT), 2);
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
			CopyTime(TimeMarket,TimeCandleTimeframe,TimeCandleID,1,Time);
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
					year   = TimeYear(retval);
					month  = TimeMonth(retval);
					day    = TimeDay(retval);
					hour   = TimeHour(retval);
					minute = TimeMinute(retval);
					second = TimeSeconds(retval);
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
				int weekday = TimeDayOfWeek(retval);
		
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

// "Parabolic SAR" model
class MDLIC_indicators_iSAR
{
	public: /* Input Parameters */
	double Step;
	double Maximum;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_indicators_iSAR()
	{
		Step = (double)0.02;
		Maximum = (double)0.2;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		return iSAR(Symbol, Period, Step, Maximum, Shift + FXD_MORE_SHIFT);
	}
};

// "Pips" model
class MDLIC_value_points
{
	public: /* Input Parameters */
	double Value;
	int ModeValue;
	string Symbol;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_value_points()
	{
		Value = (double)10.0;
		ModeValue = (int)1;
		Symbol = (string)CurrentSymbol();
	}

	public: /* The main method */
	double _execute_()
	{
		double retval = 0;
		
		     if (ModeValue == 0) {retval = Value;}
		else if (ModeValue == 1) {retval = Value*SymbolInfoDouble(Symbol,SYMBOL_POINT)*PipValue(Symbol);}
		
		return retval;
	}
};

// "Lowest Price (Candles period)" model
class MDLIC_prices_LowestFromToCandles
{
	public: /* Input Parameters */
	int StartBar;
	int EndBar;
	int WhatToGet;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_prices_LowestFromToCandles()
	{
		StartBar = (int)0;
		EndBar = (int)10;
		WhatToGet = (int)1;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}

	public: /* The main method */
	double _execute_()
	{
		return LowestFromTo(Symbol,Period,StartBar,EndBar,WhatToGet);
	}
};

// "Highest Price (Candles period)" model
class MDLIC_prices_HighestFromToCandles
{
	public: /* Input Parameters */
	int StartBar;
	int EndBar;
	int WhatToGet;
	string Symbol;
	ENUM_TIMEFRAMES Period;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_prices_HighestFromToCandles()
	{
		StartBar = (int)0;
		EndBar = (int)10;
		WhatToGet = (int)1;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}

	public: /* The main method */
	double _execute_()
	{
		return HighestFromTo(Symbol,Period,StartBar,EndBar,WhatToGet);
	}
};

// "Stop-Loss" model
class MDLIC_eventTrade_e_attrStopLoss
{
	public: /* Input Parameters */
	string Mode;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_eventTrade_e_attrStopLoss()
	{
		Mode = (string)"level";
	}

	public: /* The main method */
	double _execute_()
	{
		double retval = 0;
		string symbol = e_attrSymbol();
		int digits    = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
		
		if (Mode == "level")
		{
			retval = e_attrStopLoss();
		}
		else if (Mode == "fraction")
		{
			if (e_attrStopLoss() > 0)
			{
				retval = MathAbs(e_attrOpenPrice() - e_attrStopLoss());
			}
		}
		else if (Mode == "pips")
		{
			if (e_attrStopLoss() > 0)
			{
				double point = SymbolInfoDouble(symbol, SYMBOL_POINT);
		
				retval = MathAbs(e_attrOpenPrice() - e_attrStopLoss()) / (PipValue(symbol) * point);
			}
		}
		
		return NormalizeDouble(retval, digits);
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
			if (CopyOpen(Symbol,Period,cID,1,O) > -1) retval = O[0];
		}
		else if (iOHLC == "iHigh")
		{
			if (CopyHigh(Symbol,Period,cID,1,H) > -1) retval = H[0];
		}
		else if (iOHLC == "iLow")
		{
			if (CopyLow(Symbol,Period,cID,1,L) > -1) retval = L[0];
		}
		else if (iOHLC == "iClose")
		{
			if (CopyClose(Symbol,Period,cID,1,C) > -1) retval = C[0];
		}
		
		//-- non-price values  ----------------------------------------------------
		else if (iOHLC == "iVolume" || iOHLC == "iTickVolume")
		{
			if (CopyTickVolume(Symbol,Period,cID,1,cTickVolume) > -1) retval = (double)cTickVolume[0];
			
			return retval;
		}
		else if (iOHLC == "iRealVolume")
		{
			if (CopyRealVolume(Symbol,Period,cID,1,cRealVolume) > -1) retval = (double)cRealVolume[0];
			
			return retval;
		}
		else if (iOHLC == "iTime")
		{
			if (CopyTime(Symbol,Period,cID,1,T) > -1) retval = (double)T[0];
			
			return retval;
		}
		
		//-- simple calculations --------------------------------------------------
		else if (iOHLC == "iMedian")
		{
			if (
				   CopyLow(Symbol,Period,cID,1,L) > -1
				&& CopyHigh(Symbol,Period,cID,1,H) > -1
			)
			{
				retval = ((L[0]+H[0])/2);
			}
		}
		else if (iOHLC == "iTypical")
		{
			if (
				   CopyLow(Symbol,Period,cID,1,L) > -1
				&& CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = ((L[0]+H[0]+C[0])/3);
			}
		}
		else if (iOHLC == "iAverage")
		{
			if (
				   CopyLow(Symbol,Period,cID,1,L) > -1
				&& CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = ((L[0]+H[0]+C[0]+C[0])/4);
			}
		}
		
		//-- more complex levels --------------------------------------------------
		else if (iOHLC=="iTotal")
		{
			if (
				   CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = toPips(MathAbs(H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBody")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
			)
			{
				retval = toPips(MathAbs(C[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iUpperWick")
		{
			if (
				   CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = (C[0] > O[0]) ? toPips(MathAbs(H[0]-C[0]),Symbol) : toPips(MathAbs(H[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBottomWick")
		{
			if (
				   CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& CopyLow(Symbol,Period,cID,1,L) > -1
			)
			{
				retval = (C[0] > O[0]) ? toPips(MathAbs(O[0]-L[0]),Symbol) : toPips(MathAbs(C[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iGap")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID+1,1,C) > -1
			)
			{
				retval = toPips(MathAbs(O[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullTotal")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyLow(Symbol,Period,cID,1,L) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullBody")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((C[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullUpperWick")
		{
			if (
				   CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((H[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBullBottomWick")
		{
			if (
				   CopyLow(Symbol,Period,cID,1,L) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] > O[0]
			)
			{
				retval = toPips((O[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearTotal")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyLow(Symbol,Period,cID,1,L) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((H[0]-L[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearBody")
		{
			if (
				   CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((O[0]-C[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearUpperWick")
		{
			if (
				   CopyHigh(Symbol,Period,cID,1,H) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((H[0]-O[0]),Symbol);
			}
		}
		else if (iOHLC == "iBearBottomWick")
		{
			if (
				   CopyLow(Symbol,Period,cID,1,L) > -1
				&& CopyOpen(Symbol,Period,cID,1,O) > -1
				&& CopyClose(Symbol,Period,cID,1,C) > -1
				&& C[0] < O[0]
			)
			{
				retval = toPips((C[0]-L[0]),Symbol);
			}
		}
		
		return NormalizeDouble(retval, digits);
	}
};

// "Attributes set 1 (numeric)" model
class MDLIC_objectattributes_OBJECT
{
	public: /* Input Parameters */
	string ObjSource;
	string Name;
	int Property;
	int FiboLevelID;
	double TLpriceLevel;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_objectattributes_OBJECT()
	{
		ObjSource = (string)"name";
		Name = (string)"my_object_name";
		Property = (int)OBJPROP_PRICE1;
		FiboLevelID = (int)0;
		TLpriceLevel = (double)1.2;
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		string name = Name;
		
		if (ObjSource == "objloop") {name = LoadedObjectName();}
		if (ObjectFind(0,name)<0) {return EMPTY_VALUE;}
		
		double retval = 0;
		int modifier  = 0;
		
		double Fibo100  = 0;
		double Fibo0    = 0;
		double FiboDiff = 0;
		
		     if (Property == OBJPROP_TIME1)   {retval = (int)ObjectGetInteger(0,name,OBJPROP_TIME,0);}
		else if (Property == OBJPROP_TIME2)   {retval = (int)ObjectGetInteger(0,name,OBJPROP_TIME,1);}
		else if (Property == OBJPROP_TIME3)   {retval = (int)ObjectGetInteger(0,name,OBJPROP_TIME,2);}
		
		else if (Property == OBJPROP_PRICE1)  {retval = ObjectGetDouble(0,name,OBJPROP_PRICE,0);}
		else if (Property == OBJPROP_PRICE2)  {retval = ObjectGetDouble(0,name,OBJPROP_PRICE,1);}
		else if (Property == OBJPROP_PRICE3)  {retval = ObjectGetDouble(0,name,OBJPROP_PRICE,2);}
		
		else if (Property == OBJPROP_BARSHIFT1) {retval = iBarShift(Symbol(), Period(), (int)ObjectGetInteger(0,name,OBJPROP_TIME,0), true); if (retval==-1) {SkipThePass(true);}}
		else if (Property == OBJPROP_BARSHIFT2) {retval = iBarShift(Symbol(), Period(), (int)ObjectGetInteger(0,name,OBJPROP_TIME,1), true); if (retval==-1) {SkipThePass(true);}}
		else if (Property == OBJPROP_BARSHIFT3) {retval = iBarShift(Symbol(), Period(), (int)ObjectGetInteger(0,name,OBJPROP_TIME,2), true); if (retval==-1) {SkipThePass(true);}}
		
		else if (Property == OBJPROP_COLOR)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_COLOR);}
		else if (Property == OBJPROP_STYLE)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_STYLE);}
		else if (Property == OBJPROP_WIDTH)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_WIDTH);}
		else if (Property == OBJPROP_BACK)       {retval = (int)ObjectGetInteger(0,name,OBJPROP_BACK);}
		else if (Property == OBJPROP_RAY_LEFT)   {retval = (int)ObjectGetInteger(0,name,OBJPROP_RAY_LEFT);}
		else if (Property == OBJPROP_RAY_RIGHT)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_RAY_RIGHT);}
		else if (Property == OBJPROP_RAY)        {retval = (int)ObjectGetInteger(0,name,OBJPROP_RAY);}
		else if (Property == OBJPROP_ELLIPSE)    {retval = (int)ObjectGetInteger(0,name,OBJPROP_ELLIPSE);}
		else if (Property == OBJPROP_ARROWCODE)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_ARROWCODE);}
		else if (Property == OBJPROP_FONTSIZE)   {retval = (int)ObjectGetInteger(0,name,OBJPROP_FONTSIZE);}
		else if (Property == OBJPROP_CORNER)     {retval = (int)ObjectGetInteger(0,name,OBJPROP_CORNER);}
		else if (Property == OBJPROP_XDISTANCE)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_XDISTANCE);}
		else if (Property == OBJPROP_YDISTANCE)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_YDISTANCE);}
		else if (Property == OBJPROP_LEVELCOLOR) {retval = (int)ObjectGetInteger(0,name,OBJPROP_LEVELCOLOR);}
		else if (Property == OBJPROP_LEVELSTYLE) {retval = (int)ObjectGetInteger(0,name,OBJPROP_LEVELSTYLE);}
		else if (Property == OBJPROP_LEVELWIDTH) {retval = (int)ObjectGetInteger(0,name,OBJPROP_LEVELWIDTH);}
		else if (Property == OBJPROP_ANCHOR)     {retval = (int)ObjectGetInteger(0,name,OBJPROP_ANCHOR);}
		else if (Property == OBJPROP_DIRECTION)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_DIRECTION);}
		else if (Property == OBJPROP_DEGREE)     {retval = (int)ObjectGetInteger(0,name,OBJPROP_DEGREE);}
		else if (Property == OBJPROP_DRAWLINES)  {retval = (int)ObjectGetInteger(0,name,OBJPROP_DRAWLINES);}
		else if (Property == OBJPROP_STATE)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_STATE);}
		else if (Property == OBJPROP_XSIZE)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_XSIZE);}
		else if (Property == OBJPROP_YSIZE)      {retval = (int)ObjectGetInteger(0,name,OBJPROP_YSIZE);}
		else if (Property == OBJPROP_PERIOD)     {retval = (int)ObjectGetInteger(0,name,OBJPROP_PERIOD);}
		else if (Property == OBJPROP_LEVELS)     {retval = (int)ObjectGetInteger(0,name,OBJPROP_LEVELS);}
		
		else if (Property == OBJPROP_ANGLE)      {retval = ObjectGetDouble(0,name,OBJPROP_ANGLE);}
		else if (Property == OBJPROP_SCALE)      {retval = ObjectGetDouble(0,name,OBJPROP_SCALE);}
		else if (Property == OBJPROP_DEVIATION)  {retval = ObjectGetDouble(0,name,OBJPROP_DEVIATION);}
		
		else if (Property == OBJPROP_FIRSTLEVEL)        {retval = ObjectGetDouble(0,name,OBJPROP_LEVELVALUE,FiboLevelID);}
		else if (Property == OBJPROP_TL_PRICE_BY_SHIFT) {retval = ObjectGetValueByShift(name, Shift+FXD_MORE_SHIFT);}
		else if (Property == OBJPROP_TL_SHIFT_BY_PRICE) {retval = ObjectGetShiftByValue(name,TLpriceLevel);}
		
		else if (Property == OBJPROP_FIBOVALUE) {
			Fibo100  = ObjectGetDouble(0,name,OBJPROP_PRICE,0);
			Fibo0    = ObjectGetDouble(0,name,OBJPROP_PRICE,1);
			FiboDiff = Fibo100 - Fibo0;
			retval=0;
			if (FiboDiff != 0) {retval = (SymbolInfoDouble(Symbol(),SYMBOL_BID)-Fibo0)/FiboDiff;}
		}
		else if (Property == OBJPROP_FIBOPRICEVALUE) {
			Fibo100  = ObjectGetDouble(0,name,OBJPROP_PRICE,0);
			Fibo0    = ObjectGetDouble(0,name,OBJPROP_PRICE,1);
			FiboDiff = Fibo100 - Fibo0;
			retval=(ObjectGetDouble(0,name,OBJPROP_LEVELVALUE,FiboLevelID)*(FiboDiff))+Fibo0;
		}
		
		return retval;
	}
};

// "Accelerator Oscillator" model
class MDLIC_indicators_iAC
{
	public: /* Input Parameters */
	string Symbol;
	ENUM_TIMEFRAMES Period;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_indicators_iAC()
	{
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		return iAC(Symbol, Period, Shift + FXD_MORE_SHIFT);
	}
};

// "My Indicators" model
class MDLIC_myindicators_myindicators_1
{
	public: /* Input Parameters */
	string Symbol;
	ENUM_TIMEFRAMES Period;
	string ModeOutput;
	string TimeStamp;
	int VisibleID;
	int VisibleShift;
	int VisibleLimit;
	int RangeCandleStart;
	int RangeCandleEnd;
	string RangeTimeSource;
	string RangeTimeStart;
	string RangeTimeEnd;
	double RangeDayOffset;
	string RangeValue;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_myindicators_myindicators_1()
	{
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		ModeOutput = (string)"id";
		TimeStamp = (string)"00:00";
		VisibleID = (int)0;
		VisibleShift = (int)0;
		VisibleLimit = (int)100;
		RangeCandleStart = (int)0;
		RangeCandleEnd = (int)10;
		RangeTimeSource = (string)"server";
		RangeTimeStart = (string)"01:00";
		RangeTimeEnd = (string)"08:00";
		RangeDayOffset = (double)0.0;
		RangeValue = (string)"max";
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		//== MQL5 specifics BEGIN ==//
		// The problem is that iCustom() always returns new handle when called, regardless of the input parameters.
		int handle = INVALID_HANDLE;
		
		// turn the input parameters into a key
		string key = "";
		StringConcatenate(key, Symbol, Period, "ALGORITHMIC_SMC" , (string)inp94_ObjText_se1, (int)inp94_ObjText_mode, (int)inp94_ObjText_inp_style, (bool)inp94_ObjText_show_trend, (string)inp94_ObjText_s1, (string)inp94_ObjText_se2, (bool)inp94_ObjText_show_internals, (int)inp94_ObjText_show_ibull, (color)inp94_ObjText_swing_ibull_css, (int)inp94_ObjText_show_ibear, (color)inp94_ObjText_swing_ibear_css, (bool)inp94_ObjText_ifilter_confluence, (int)inp94_ObjText_internal_structure_size, (string)inp94_ObjText_s2, (string)inp94_ObjText_se3, (bool)inp94_ObjText_show_Structure, (int)inp94_ObjText_show_bull, (color)inp94_ObjText_swing_bull_css, (int)inp94_ObjText_show_bear, (color)inp94_ObjText_swing_bear_css);
		
		// for our parameters, do we already have an indicator handle?
		int array_key = ArraySearch(FXD_ICUSTOM_HANDLES_KEYS, key);
		
		// if we don't have a handle, then create one
		if (array_key == -1)
		{
			handle = iCustom(Symbol, Period, "ALGORITHMIC_SMC" , (string)inp94_ObjText_se1, (int)inp94_ObjText_mode, (int)inp94_ObjText_inp_style, (bool)inp94_ObjText_show_trend, (string)inp94_ObjText_s1, (string)inp94_ObjText_se2, (bool)inp94_ObjText_show_internals, (int)inp94_ObjText_show_ibull, (color)inp94_ObjText_swing_ibull_css, (int)inp94_ObjText_show_ibear, (color)inp94_ObjText_swing_ibear_css, (bool)inp94_ObjText_ifilter_confluence, (int)inp94_ObjText_internal_structure_size, (string)inp94_ObjText_s2, (string)inp94_ObjText_se3, (bool)inp94_ObjText_show_Structure, (int)inp94_ObjText_show_bull, (color)inp94_ObjText_swing_bull_css, (int)inp94_ObjText_show_bear, (color)inp94_ObjText_swing_bear_css, PRICE_CLOSE);
			
			if (handle == INVALID_HANDLE) {
				return EMPTY_VALUE;	
			}
			
			int size = ArraySize(FXD_ICUSTOM_HANDLES_KEYS);
		
			ArrayResize(FXD_ICUSTOM_HANDLES_KEYS, size+1);
			ArrayResize(FXD_ICUSTOM_HANDLES_IDS, size+1);
			
			FXD_ICUSTOM_HANDLES_KEYS[size] = key;
			FXD_ICUSTOM_HANDLES_IDS[size] = handle;
			
			array_key = size;
		}
		// yes, we have a handle, then get it
		else {
			handle = FXD_ICUSTOM_HANDLES_IDS[array_key];
		}
		
		//== MQL5 specifics END ==//
		
		//!!! I must define all input properties here, because they are not automatically defined.
		// This function is not global prototype, one new function is created for each case. This is because % iCustom % must be unique
		
		string symbol = Symbol;
		ENUM_TIMEFRAMES timeframe = Period;
		int buffer    = 0;
		int shift     = Shift + FXD_MORE_SHIFT;
		
		double retval = EMPTY_VALUE;
		int i;
		double ival;
		
		if (ModeOutput == "id")
		{
			retval = fxdCustomIndicator(handle, buffer, shift);
		}
		else if (ModeOutput == "time")
		{
			datetime time;
			
			if (0 && StringFind(TimeStamp, ":") == -1)
			{	
				time = (datetime)StringToInteger(TimeStamp); // hangs in MQL4!!!
			}
			else
			{
				time = StringToTime(TimeStamp);
			}
			
			shift = iCandleID(symbol, timeframe, time);
			retval = fxdCustomIndicator(handle, buffer, shift);
		}
		else if (ModeOutput == "visible" || ModeOutput == "id_by_visible")
		{
			if (VisibleLimit == 0) {VisibleLimit = Bars(symbol, timeframe);}
			
			int vid = 0;
			
			for (i = shift; i <= VisibleLimit; i++)
			{
				ival = fxdCustomIndicator(handle, buffer, shift + i);
				
				if (ival == EMPTY_VALUE || ival == 0) {continue;}
				if (vid >= VisibleID) {
					if (ModeOutput == "visible") {retval = ival;}
					else {retval = i;}
					break;	
				}
					
				vid++;
			}
		}
		else if (ModeOutput == "range")
		{
			// reverse values, if needed
			if (RangeCandleStart > RangeCandleEnd) {
				int ctmp = RangeCandleEnd;
				RangeCandleEnd = RangeCandleStart;
				RangeCandleStart = ctmp;
			}
		
			if (RangeValue == "max")
			{
				retval = -EMPTY_VALUE;
				
				for (i = RangeCandleStart; i <= RangeCandleEnd; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival > retval) {retval = ival;}
				}
				
				if (retval == -EMPTY_VALUE) {retval = EMPTY_VALUE;}
			}
			else if (RangeValue == "min")
			{
				retval = EMPTY_VALUE;
				
				for (i = RangeCandleStart; i <= RangeCandleEnd; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival < retval) {retval = ival;}
				}
			}
		}
		else if (ModeOutput == "range_time")
		{
			datetime offset = 0;
			if (RangeTimeSource == "gmt") {offset = (int)(TimeCurrent() - TimeLocal() + TimeGMTOffset());}
			else if (RangeTimeSource == "server") {offset = (int)(TimeCurrent() - TimeLocal());}
			
			datetime time1 = StringToTime(RangeTimeStart)-(datetime)(86400*RangeDayOffset) + offset;
			datetime time2 = StringToTime(RangeTimeEnd)-(datetime)(86400*RangeDayOffset) + offset;
		
			int x1 = iBarShift(symbol, timeframe, time1, false);
			int x2 = iBarShift(symbol, timeframe, time2, false);
			if (x1<x2) {x1=iBarShift(symbol,timeframe,(time1-86400),false);}
			
			if (RangeValue == "max")
			{
				retval = -EMPTY_VALUE;
				
				for (i=x2; i<=x1; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival > retval) {retval = ival;}
				}
				
				if (retval == -EMPTY_VALUE) {retval = EMPTY_VALUE;}
			}
			else if (RangeValue == "min")
			{
				retval = EMPTY_VALUE;
				
				for (i=x2; i<=x1; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival < retval) {retval = ival;}
				}
			}
		}
		
		return (retval);
	}
};

// "My Indicators" model
class MDLIC_myindicators_myindicators_2
{
	public: /* Input Parameters */
	string Symbol;
	ENUM_TIMEFRAMES Period;
	string ModeOutput;
	string TimeStamp;
	int VisibleID;
	int VisibleShift;
	int VisibleLimit;
	int RangeCandleStart;
	int RangeCandleEnd;
	string RangeTimeSource;
	string RangeTimeStart;
	string RangeTimeEnd;
	double RangeDayOffset;
	string RangeValue;
	int Shift;
	virtual void _callback_(int r) {return;}

	public: /* Constructor */
	MDLIC_myindicators_myindicators_2()
	{
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
		ModeOutput = (string)"id";
		TimeStamp = (string)"00:00";
		VisibleID = (int)0;
		VisibleShift = (int)0;
		VisibleLimit = (int)100;
		RangeCandleStart = (int)0;
		RangeCandleEnd = (int)10;
		RangeTimeSource = (string)"server";
		RangeTimeStart = (string)"01:00";
		RangeTimeEnd = (string)"08:00";
		RangeDayOffset = (double)0.0;
		RangeValue = (string)"max";
		Shift = (int)0;
	}

	public: /* The main method */
	double _execute_()
	{
		//== MQL5 specifics BEGIN ==//
		// The problem is that iCustom() always returns new handle when called, regardless of the input parameters.
		int handle = INVALID_HANDLE;
		
		// turn the input parameters into a key
		string key = "";
			//StringConcatenate(key, Symbol, Period, "ALGORITHMIC_BREAKER_BLOCKS" , (string)inp96_ObjText_se1, (int)inp96_ObjText_len, (bool)inp96_ObjText_showManyArrow, (string)inp96_ObjText_s1, (string)inp96_ObjText_se2, (bool)inp96_ObjText_breakerCandleOnlyBody, (bool)inp96_ObjText_breakerCandle_2Last, (bool)inp96_ObjText_tillFirstBreak, (string)inp96_ObjText_s2, (string)inp96_ObjText_se3, (bool)inp96_ObjText_onlyWhenInPDarray, (bool)inp96_ObjText_showPDarray, (bool)inp96_ObjText_showBreaks, (bool)inp96_ObjText_showSPD, (color)inp96_ObjText_PDtxtCss, (color)inp96_ObjText_PDSCss, (string)inp96_ObjText_s3, (string)inp96_ObjText_se4, (bool)inp96_ObjText_iTP, (color)inp96_ObjText_tpCss, (double)inp96_ObjText_R1a, (double)inp96_ObjText_R2a, (double)inp96_ObjText_R1b, (double)inp96_ObjText_R2b, (double)inp96_ObjText_R1c, (double)inp96_ObjText_R2c, (string)inp96_ObjText_s4, (string)inp96_ObjText_se5, (color)inp96_ObjText_cBBplusA, (color)inp96_ObjText_cBBplusB, (color)inp96_ObjText_cSwingBl, (string)inp96_ObjText_s5, (string)inp96_ObjText_se6, (color)inp96_ObjText_cBB_minA, (color)inp96_ObjText_cBB_minB, (color)inp96_ObjText_cSwingBr, (string)inp96_ObjText_s6, (string)inp96_ObjText_se7, (int)inp96_ObjText_noti_temp, (int)inp96_ObjText_noti_type, (string)inp96_ObjText_ssemail, (string)inp96_ObjText_email_sub, (string)inp96_ObjText_sss, (string)inp96_ObjText_tele_file_name, (int)inp96_ObjText_tele_channel, (string)inp96_ObjText_tele_bot_token, (string)inp96_ObjText_s7);
		
		// for our parameters, do we already have an indicator handle?
		int array_key = ArraySearch(FXD_ICUSTOM_HANDLES_KEYS, key);
		
		// if we don't have a handle, then create one
		if (array_key == -1)
		{
				//handle = iCustom(Symbol, Period, "ALGORITHMIC_BREAKER_BLOCKS" , (string)inp96_ObjText_se1, (int)inp96_ObjText_len, (bool)inp96_ObjText_showManyArrow, (string)inp96_ObjText_s1, (string)inp96_ObjText_se2, (bool)inp96_ObjText_breakerCandleOnlyBody, (bool)inp96_ObjText_breakerCandle_2Last, (bool)inp96_ObjText_tillFirstBreak, (string)inp96_ObjText_s2, (string)inp96_ObjText_se3, (bool)inp96_ObjText_onlyWhenInPDarray, (bool)inp96_ObjText_showPDarray, (bool)inp96_ObjText_showBreaks, (bool)inp96_ObjText_showSPD, (color)inp96_ObjText_PDtxtCss, (color)inp96_ObjText_PDSCss, (string)inp96_ObjText_s3, (string)inp96_ObjText_se4, (bool)inp96_ObjText_iTP, (color)inp96_ObjText_tpCss, (double)inp96_ObjText_R1a, (double)inp96_ObjText_R2a, (double)inp96_ObjText_R1b, (double)inp96_ObjText_R2b, (double)inp96_ObjText_R1c, (double)inp96_ObjText_R2c, (string)inp96_ObjText_s4, (string)inp96_ObjText_se5, (color)inp96_ObjText_cBBplusA, (color)inp96_ObjText_cBBplusB, (color)inp96_ObjText_cSwingBl, (string)inp96_ObjText_s5, (string)inp96_ObjText_se6, (color)inp96_ObjText_cBB_minA, (color)inp96_ObjText_cBB_minB, (color)inp96_ObjText_cSwingBr, (string)inp96_ObjText_s6, (string)inp96_ObjText_se7, (int)inp96_ObjText_noti_temp, (int)inp96_ObjText_noti_type, (string)inp96_ObjText_ssemail, (string)inp96_ObjText_email_sub, (string)inp96_ObjText_sss, (string)inp96_ObjText_tele_file_name, (int)inp96_ObjText_tele_channel, (string)inp96_ObjText_tele_bot_token, (string)inp96_ObjText_s7, PRICE_CLOSE);
			
			if (handle == INVALID_HANDLE) {
				return EMPTY_VALUE;	
			}
			
			int size = ArraySize(FXD_ICUSTOM_HANDLES_KEYS);
		
			ArrayResize(FXD_ICUSTOM_HANDLES_KEYS, size+1);
			ArrayResize(FXD_ICUSTOM_HANDLES_IDS, size+1);
			
			FXD_ICUSTOM_HANDLES_KEYS[size] = key;
			FXD_ICUSTOM_HANDLES_IDS[size] = handle;
			
			array_key = size;
		}
		// yes, we have a handle, then get it
		else {
			handle = FXD_ICUSTOM_HANDLES_IDS[array_key];
		}
		
		//== MQL5 specifics END ==//
		
		//!!! I must define all input properties here, because they are not automatically defined.
		// This function is not global prototype, one new function is created for each case. This is because % iCustom % must be unique
		
		string symbol = Symbol;
		ENUM_TIMEFRAMES timeframe = Period;
		int buffer    = 0;
		int shift     = Shift + FXD_MORE_SHIFT;
		
		double retval = EMPTY_VALUE;
		int i;
		double ival;
		
		if (ModeOutput == "id")
		{
			retval = fxdCustomIndicator(handle, buffer, shift);
		}
		else if (ModeOutput == "time")
		{
			datetime time;
			
			if (0 && StringFind(TimeStamp, ":") == -1)
			{	
				time = (datetime)StringToInteger(TimeStamp); // hangs in MQL4!!!
			}
			else
			{
				time = StringToTime(TimeStamp);
			}
			
			shift = iCandleID(symbol, timeframe, time);
			retval = fxdCustomIndicator(handle, buffer, shift);
		}
		else if (ModeOutput == "visible" || ModeOutput == "id_by_visible")
		{
			if (VisibleLimit == 0) {VisibleLimit = Bars(symbol, timeframe);}
			
			int vid = 0;
			
			for (i = shift; i <= VisibleLimit; i++)
			{
				ival = fxdCustomIndicator(handle, buffer, shift + i);
				
				if (ival == EMPTY_VALUE || ival == 0) {continue;}
				if (vid >= VisibleID) {
					if (ModeOutput == "visible") {retval = ival;}
					else {retval = i;}
					break;	
				}
					
				vid++;
			}
		}
		else if (ModeOutput == "range")
		{
			// reverse values, if needed
			if (RangeCandleStart > RangeCandleEnd) {
				int ctmp = RangeCandleEnd;
				RangeCandleEnd = RangeCandleStart;
				RangeCandleStart = ctmp;
			}
		
			if (RangeValue == "max")
			{
				retval = -EMPTY_VALUE;
				
				for (i = RangeCandleStart; i <= RangeCandleEnd; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival > retval) {retval = ival;}
				}
				
				if (retval == -EMPTY_VALUE) {retval = EMPTY_VALUE;}
			}
			else if (RangeValue == "min")
			{
				retval = EMPTY_VALUE;
				
				for (i = RangeCandleStart; i <= RangeCandleEnd; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival < retval) {retval = ival;}
				}
			}
		}
		else if (ModeOutput == "range_time")
		{
			datetime offset = 0;
			if (RangeTimeSource == "gmt") {offset = (int)(TimeCurrent() - TimeLocal() + TimeGMTOffset());}
			else if (RangeTimeSource == "server") {offset = (int)(TimeCurrent() - TimeLocal());}
			
			datetime time1 = StringToTime(RangeTimeStart)-(datetime)(86400*RangeDayOffset) + offset;
			datetime time2 = StringToTime(RangeTimeEnd)-(datetime)(86400*RangeDayOffset) + offset;
		
			int x1 = iBarShift(symbol, timeframe, time1, false);
			int x2 = iBarShift(symbol, timeframe, time2, false);
			if (x1<x2) {x1=iBarShift(symbol,timeframe,(time1-86400),false);}
			
			if (RangeValue == "max")
			{
				retval = -EMPTY_VALUE;
				
				for (i=x2; i<=x1; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival > retval) {retval = ival;}
				}
				
				if (retval == -EMPTY_VALUE) {retval = EMPTY_VALUE;}
			}
			else if (RangeValue == "min")
			{
				retval = EMPTY_VALUE;
				
				for (i=x2; i<=x1; i++)
				{
					ival = fxdCustomIndicator(handle, buffer, shift + i);
					if (ival == EMPTY_VALUE || ival == 0) {continue;}
					if (ival < retval) {retval = ival;}
				}
			}
		}
		
		return (retval);
	}
};


//------------------------------------------------------------------------------------------------------------------------

// Block 1 (CHART GRID OFF)
class Block0: public MDL_ChartSetProperties<int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int>
{

	public: /* Constructor */
	Block0() {
		__block_number = 0;
		__block_user_number = "1";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {2};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		ChartShowGrid = 0;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[2].run(0);
		}
	}

	virtual void _beforeExecute_()
	{

		ChartMode = (int)CHART_CANDLES;
	}
};

// Block 2 (Pass)
class Block1: public MDL_Pass
{

	public: /* Constructor */
	Block1() {
		__block_number = 1;
		__block_user_number = "2";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {0};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[0].run(1);
		}
	}
};

// Block 3 (Modify chart colors)
class Block2: public MDL_ChartSetColors<color,color,color,color,color,color,color,color,color,color,color,color,color>
{

	public: /* Constructor */
	Block2() {
		__block_number = 2;
		__block_user_number = "3";
		_beforeExecuteEnabled = true;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ChartColorBackground = (color)clrBlack;
		ChartColorForeground = (color)clrNONE;
		ChartColorGrid = (color)clrNONE;
		ChartColorBarUp = (color)clrLimeGreen;
		ChartColorBarDown = (color)clrCrimson;
		ChartColorBullCandle = (color)clrLimeGreen;
		ChartColorBearCandle = (color)clrCrimson;
		ChartColorDojiCandle = (color)clrOrangeRed;
		ChartColorVolumes = (color)clrDarkOrange;
		ChartColorBid = (color)clrLimeGreen;
		ChartColorAsk = (color)clrRed;
		ChartColorLast = (color)clrLimeGreen;
		ChartColorStopLevels = (color)clrRed;
	}
};

// Block 4 (Pass)
class Block3: public MDL_Pass
{

	public: /* Constructor */
	Block3() {
		__block_number = 3;
		__block_user_number = "4";


		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {22,4};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[4].run(3);
			_blocks_[22].run(3);
		}
	}
};

// Block 5 (Weekday filter)
class Block4: public MDL_WeekdayFilter<string,bool,bool,bool,bool,bool,bool,bool>
{

	public: /* Constructor */
	Block4() {
		__block_number = 4;
		__block_user_number = "5";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[3] = {5,8,9};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[9].run(4);
		}
		else if (value == 1) {
			_blocks_[5].run(4);
			_blocks_[8].run(4);
		}
	}

	virtual void _beforeExecute_()
	{

		tradeMonday = (bool)c::Monday;
		tradeTuesday = (bool)c::Tuesday;
		tradeWednesday = (bool)c::Wednesday;
		tradeThursday = (bool)c::Thursday;
		tradeFriday = (bool)c::Friday;
		tradeSaturday = (bool)c::Saturday;
		tradeSunday = (bool)c::Sunday;
	}
};

// Block 6 (Hours filter)
class Block5: public MDL_HoursFilter<string,string,string,bool,string,string,bool,string,string,bool,string,string>
{

	public: /* Constructor */
	Block5() {
		__block_number = 5;
		__block_user_number = "6";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {6,7};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[7].run(5);
		}
		else if (value == 1) {
			_blocks_[6].run(5);
		}
	}

	virtual void _beforeExecute_()
	{

		StartHour = (string)c::Start_Hour;
		EndHour = (string)c::End_Hour;
	}
};

// Block 7 (EA RUNNING)
class Block6: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block6() {
		__block_number = 6;
		__block_user_number = "7";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[5] = {32,64,68,78,80};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[32].run(6);
			_blocks_[64].run(6);
			_blocks_[68].run(6);
			_blocks_[78].run(6);
			_blocks_[80].run(6);
		}
	}

	virtual void _beforeExecute_()
	{

		v::EA_Running = _Value1_();
	}
};

// Block 8 (EA NOT RUNNING)
class Block7: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block7() {
		__block_number = 7;
		__block_user_number = "8";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Boolean = false;
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::EA_Running = _Value1_();
	}
};

// Block 9 (EA WEEK RUNNING)
class Block8: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block8() {
		__block_number = 8;
		__block_user_number = "9";
		_beforeExecuteEnabled = true;
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::EA_Weekday = _Value1_();
	}
};

// Block 10 (EA WEEKLY NOT RUNNING)
class Block9: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block9() {
		__block_number = 9;
		__block_user_number = "10";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Boolean = false;
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::EA_Weekday = _Value1_();
	}
};

// Block 11 (ON-OFF (Cut Loss))
class Block10: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block10() {
		__block_number = 10;
		__block_user_number = "11";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {11};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
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
			_blocks_[11].run(10);
		}
	}
};

// Block 12 (If trade(Buy/Sell))
class Block11: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block11() {
		__block_number = 11;
		__block_user_number = "12";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {12};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[12].run(11);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 13 (Formula(Cut Loss Percent))
class Block12: public MDL_Formula_1<MDLIC_account_AccountBalance,double,string,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block12() {
		__block_number = 12;
		__block_user_number = "13";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {13};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "*";
	}

	public: /* Custom methods */
	virtual double _Lo_() {return Lo._execute_();}
	virtual double _Ro_() {
		Ro.Value = c::Cut_Loss_percent;

		double value = (double)Ro._execute_();
		value = value*(-1); // Adjust the value
		return value;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[13].run(12);
		}
	}
};

// Block 14 (Check profit (Percent)(Buy/Sell))
class Block13: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block13() {
		__block_number = 13;
		__block_user_number = "14";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {14};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
		Compare = "<";
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
		ProfitAmount = (double)v::Cut_Loss_percent;
	}
};

// Block 15 (Close trades(Buy/Sell))
class Block14: public MDL_CloseOpened<string,string,string,string,string,int,ulong,color>
{

	public: /* Constructor */
	Block14() {
		__block_number = 14;
		__block_user_number = "15";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {15};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[15].run(14);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ArrowColor = (color)clrDeepPink;
	}
};

// Block 16 (Delete pending orders(HEDGE))
class Block15: public MDL_DeletePendingOrders<string,string,string,string,string,string,color>
{

	public: /* Constructor */
	Block15() {
		__block_number = 15;
		__block_user_number = "16";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {16};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
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
		ArrowColor = (color)clrDeepPink;
	}
};

// Block 17 (Log message)
class Block16: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block16() {
		__block_number = 16;
		__block_user_number = "17";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {17};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		PrintText = "--------------- ALGORITHMIC_SMC_OB - MAX DD KILL SWITCHED TRIGGERED ---------------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[17].run(16);
		}
	}
};

// Block 18 (Log message)
class Block17: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block17() {
		__block_number = 17;
		__block_user_number = "18";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {18};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		PrintText = "--------------- ALGORITHMIC_SMC_OB - STOPPING TODAY TO RESET MAX DD DAILY ---------------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[18].run(17);
		}
	}
};

// Block 19 (SET MAX DD = TRUE)
class Block18: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block18() {
		__block_number = 18;
		__block_user_number = "19";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {41};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[41].run(18);
		}
	}

	virtual void _beforeExecute_()
	{

		v::max_dd_hit = _Value1_();
	}
};

// Block 20 (SET MAX DD = FALSE)
class Block19: public MDL_ModifyVariables<int,MDLIC_boolean_boolean,bool,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double,int,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block19() {
		__block_number = 19;
		__block_user_number = "20";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value1.Boolean = false;
	}

	public: /* Custom methods */
	virtual bool _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual double _Value4_() {return Value4._execute_();}
	virtual double _Value5_() {return Value5._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		v::max_dd_hit = _Value1_();
	}
};

// Block 21 (Set \"Current Market\" for next blocks)
class Block20: public MDL_SetCurrentSymbol2<string>
{

	public: /* Constructor */
	Block20() {
		__block_number = 20;
		__block_user_number = "21";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {21};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[21].run(20);
		}
		else if (value == 1) {
			_blocks_[21].run(20);
		}
	}

	virtual void _beforeExecute_()
	{

		ListOfSymbols = (string)c::SYMBOLS;
	}
};

// Block 22 (CHECK IF MAX PROFIT WAS HIT TODAY)
class Block21: public MDL_CheckProfitInPeriod<string,string,string,string,string,string,double,string,double,bool,int,string,double>
{

	public: /* Constructor */
	Block21() {
		__block_number = 21;
		__block_user_number = "22";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {27,40};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		Group = "DAILY PROFIT CHECKER";
		SymbolMode = "all";
		Time1 = "00:00:00";
		Compare = ">=";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[40].run(21);
		}
		else if (value == 1) {
			_blocks_[27].run(21);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitMoney = (double)c::DAILY_PROFIT_GOAL;
	}
};

// Block 23 (Comment)
class Block22: public MDL_CommentEx<string,string,int,int,int,string,color,int,string,color,int,string,color,int,string,MDLIC_account_AccountBalance,double,int,int,string,MDLIC_account_AccountEquity,double,int,int,string,MDLIC_account_AccountProfit,double,int,int,string,MDLIC_value_time,datetime,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_boolean_boolean,bool,int,int>
{

	public: /* Constructor */
	Block22() {
		__block_number = 22;
		__block_user_number = "23";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {23};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		Value5.Text = "";
		// Block input parameters
		ObjTitleFontSize = 14;
		Label1 = "BALANCE";
		Label2 = "EQUITY";
		Label3 = "DRAWDOWN";
		Label4 = "BROKER TIME";
		Label6 = "START HOUR";
		Label7 = "END HOUR";
		Label8 = "EA RUNNING";
	}

	public: /* Custom methods */
	virtual double _Value1_() {return Value1._execute_();}
	virtual double _Value2_() {return Value2._execute_();}
	virtual double _Value3_() {return Value3._execute_();}
	virtual datetime _Value4_() {return Value4._execute_();}
	virtual string _Value5_() {return Value5._execute_();}
	virtual string _Value6_() {
		Value6.Text = c::Start_Hour;

		return Value6._execute_();
	}
	virtual string _Value7_() {
		Value7.Text = c::End_Hour;

		return Value7._execute_();
	}
	virtual bool _Value8_() {
		Value8.Boolean = v::EA_Running;

		return Value8._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[23].run(22);
		}
	}

	virtual void _beforeExecute_()
	{

		/* Inputs, modified into the code must be set here every time */
		ObjY = 24;
		Title = (string)v::EA_NAME;
		ObjCorner = (int)CORNER_LEFT_UPPER;
		ObjTitleFontColor = (color)clrGoldenrod;
		ObjLabelsFontColor = (color)clrDarkGray;
		ObjFontColor = (color)clrWhite;
		FormatNumber1 = (int)EMPTY_VALUE;
		FormatTime1 = (int)EMPTY_VALUE;
		FormatNumber2 = (int)EMPTY_VALUE;
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

// Block 24 (Comment)
class Block23: public MDL_CommentEx<string,string,int,int,int,string,color,int,string,color,int,string,color,int,string,MDLIC_boolean_boolean,bool,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_boolean_boolean,bool,int,int,string,MDLIC_text_text,string,int,int,string,MDLIC_boolean_boolean,bool,int,int,string,MDLIC_boolean_boolean,bool,int,int,string,MDLIC_text_text,string,int,int>
{

	public: /* Constructor */
	Block23() {
		__block_number = 23;
		__block_user_number = "24";
		_beforeExecuteEnabled = true;

		// IC input parameters
		Value5.Text = "true";
		Value8.Text = "";
		// Block input parameters
		Title = "";
		ObjY = 149;
		ObjTitleFontSize = 14;
		Label1 = "DAYS WEEK";
		Label2 = "MAX DD KILL SWITCH";
		Label3 = "MAX DD VALUE";
		Label4 = "MAX DD HIT";
		Label5 = "AUTO TP-SL";
		Label6 = "DAILY PROFIT HIT";
		Label7 = "DAILY LOSS HIT";
	}

	public: /* Custom methods */
	virtual bool _Value1_() {
		Value1.Boolean = v::EA_Weekday;

		return Value1._execute_();
	}
	virtual string _Value2_() {
		Value2.Text = c::Cut_Loss;

		return Value2._execute_();
	}
	virtual string _Value3_() {
		Value3.Text = v::Cut_Loss_percent;

		return Value3._execute_();
	}
	virtual bool _Value4_() {
		Value4.Boolean = v::max_dd_hit;

		return Value4._execute_();
	}
	virtual string _Value5_() {return Value5._execute_();}
	virtual bool _Value6_() {
		Value6.Boolean = v::max_d_profit_hit;

		return Value6._execute_();
	}
	virtual bool _Value7_() {
		Value7.Boolean = v::max_daily_loss_hit;

		return Value7._execute_();
	}
	virtual string _Value8_() {return Value8._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		/* Inputs, modified into the code must be set here every time */
		ObjY = 149;
		ObjCorner = (int)CORNER_LEFT_UPPER;
		ObjTitleFontColor = (color)clrGoldenrod;
		ObjLabelsFontColor = (color)clrDarkGray;
		ObjFontColor = (color)clrWhite;
		FormatNumber1 = (int)EMPTY_VALUE;
		FormatTime1 = (int)EMPTY_VALUE;
		FormatNumber2 = (int)EMPTY_VALUE;
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

// Block 25 (Log message)
class Block24: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block24() {
		__block_number = 24;
		__block_user_number = "25";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {25};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - DAILY LOSS WAS REACHED ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[25].run(24);
		}
	}
};

// Block 26 (Log message)
class Block25: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block25() {
		__block_number = 25;
		__block_user_number = "26";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - WAITING FOR NEXT DAY AT 00:01 HOURS BROKER TIME TO RESTART ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 27 (Log message)
class Block26: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block26() {
		__block_number = 26;
		__block_user_number = "27";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {28};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - DAILY PROFIT GOAL WAS REACHED ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[28].run(26);
		}
	}
};

// Block 28 (WAIT FOR NEXT DAY)
class Block27: public MDL_TimeFilter<string,string,string,int,int,double,double,double,int,string,string,int,int,double,double,double,int,int,int,double,double,double,int>
{

	public: /* Constructor */
	Block27() {
		__block_number = 27;
		__block_user_number = "28";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {29};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[29].run(27);
		}
	}
};

// Block 29 (Log message)
class Block28: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block28() {
		__block_number = 28;
		__block_user_number = "29";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - WAITING FOR NEXT DAY AT 00:01 HOURS BROKER TIME TO RESTART ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 30 (Counter: Pass once)
class Block29: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block29() {
		__block_number = 29;
		__block_user_number = "30";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {26};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[26].run(29);
		}
	}
};

// Block 31 (No pending order)
class Block30: public MDL_NoPendingOrders<string,string,string,string,string,string>
{

	public: /* Constructor */
	Block30() {
		__block_number = 30;
		__block_user_number = "31";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[3] = {35,50,51};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[35].run(30);
		}
		else if (value == 1) {
			_blocks_[50].run(30);
			_blocks_[51].run(30);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 32 (Log message)
class Block31: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block31() {
		__block_number = 31;
		__block_user_number = "32";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - ALREADY A PENDING ORDER  ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 33 (Check pending orders count)
class Block32: public MDL_CheckOrdersCount<string,int,string,string,string,string,string,string>
{

	public: /* Constructor */
	Block32() {
		__block_number = 32;
		__block_user_number = "33";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {30,34};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "<";
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[34].run(32);
		}
		else if (value == 1) {
			_blocks_[30].run(32);
		}
	}

	virtual void _beforeExecute_()
	{

		CompareCount = (int)c::TOTAL_MAX_PARALLEL_TRADES;
		Symbol = (string)CurrentSymbol();
	}
};

// Block 34 (Log message)
class Block33: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block33() {
		__block_number = 33;
		__block_user_number = "34";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - MAX PENDING ORDERS REACHED  ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 35 (Counter: Pass once)
class Block34: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block34() {
		__block_number = 34;
		__block_user_number = "35";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {33};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[33].run(34);
		}
	}
};

// Block 36 (Counter: Pass once)
class Block35: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block35() {
		__block_number = 35;
		__block_user_number = "36";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {31};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[31].run(35);
		}
	}
};

// Block 37 (SL TRAILING STOP)
class Block36: public MDL_TrailingStop2<string,string,string,string,string,int,int,string,double,double,string,double,double,MDLIC_indicators_iSAR,double,MDLIC_value_points,double,string,double,double,string,double,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,MDLIC_value_value,double,color>
{

	public: /* Constructor */
	Block36() {
		__block_number = 36;
		__block_user_number = "37";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {86};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		ftDigits.Value = 40.0;
		ftStart.Value = 0.0;
		ftStartFraction.Value = 0.001;
		ftTP.Value = 0.0;
		// Block input parameters
		GroupMode = "all";
		SymbolMode = "all";
		TrailingStopMode = "percentTP";
		tStopPercentProfit = 0.0;
		TrailingStepMode = "percentTS";
		tStartPercentTS = 0.0;
	}

	public: /* Custom methods */
	virtual double _ftStop_() {
		ftStop.Symbol = CurrentSymbol();
		ftStop.Period = CurrentTimeframe();

		return ftStop._execute_();
	}
	virtual double _ftDigits_() {
		ftDigits.Symbol = CurrentSymbol();

		return ftDigits._execute_();
	}
	virtual double _ftStart_() {return ftStart._execute_();}
	virtual double _ftStartFraction_() {return ftStartFraction._execute_();}
	virtual double _ftTP_() {return ftTP._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[86].run(36);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		tStopPips = (double)c::Trailing_Stop;
		tStopPercentTP = (double)c::Trailing_Stop;
		tStepPips = (double)c::Trailing_Step;
		tStepPercentTS = (double)c::Trailing_Step;
		LevelColor = (color)clrYellow;
	}
};

// Block 38 (BE TP %)
class Block37: public MDL_BreakEvenPoint<string,string,string,string,string,string,double,double,double,string,double>
{

	public: /* Constructor */
	Block37() {
		__block_number = 37;
		__block_user_number = "38";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {49};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		SymbolMode = "all";
		OnProfitMode = "percentTP";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[49].run(37);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		OnProfitPercentTP = (double)c::BreakEvenTP;
	}
};

// Block 39 (close (partially))
class Block38: public MDL_LoopClosePart<string,double,double,ulong,color>
{

	public: /* Constructor */
	Block38() {
		__block_number = 38;
		__block_user_number = "39";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {43};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[43].run(38);
		}
	}

	virtual void _beforeExecute_()
	{

		PartVolPercent = (double)c::PartialPrecent;
		ArrowColor = (color)clrOrangeRed;
	}
};

// Block 40 (Log message)
class Block39: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block39() {
		__block_number = 39;
		__block_user_number = "40";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - PARTIAL TAKEN ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 41 (CHECK IF MAX DD IS TRIGGERED)
class Block40: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_boolean_boolean,bool,int>
{

	public: /* Constructor */
	Block40() {
		__block_number = 40;
		__block_user_number = "41";


		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {3,42};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = v::max_dd_hit;

		return Lo._execute_();
	}
	virtual bool _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 0) {
			_blocks_[3].run(40);
		}
		else if (value == 1) {
			_blocks_[42].run(40);
		}
	}
};

// Block 42 (WAIT FOR NEXT DAY)
class Block41: public MDL_TimeFilter<string,string,string,int,int,double,double,double,int,string,string,int,int,double,double,double,int,int,int,double,double,double,int>
{

	public: /* Constructor */
	Block41() {
		__block_number = 41;
		__block_user_number = "42";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {19};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[19].run(41);
		}
	}
};

// Block 43 (Counter: Pass once)
class Block42: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block42() {
		__block_number = 42;
		__block_user_number = "43";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {24};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[24].run(42);
		}
	}
};

// Block 44 (Counter: Pass once)
class Block43: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block43() {
		__block_number = 43;
		__block_user_number = "44";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {39};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[39].run(43);
		}
	}
};

// Block 45 (SL TRAILING ENABLED)
class Block44: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block44() {
		__block_number = 44;
		__block_user_number = "45";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {36};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::TRAILING_ENABLED;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[36].run(44);
		}
	}
};

// Block 46 (PARTIALS ENABLED)
class Block45: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block45() {
		__block_number = 45;
		__block_user_number = "46";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {48};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::PARTIALS_ENABLED;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[48].run(45);
		}
	}
};

// Block 47 (BE ENABLED)
class Block46: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block46() {
		__block_number = 46;
		__block_user_number = "47";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {37};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::BE_ENABLED;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[37].run(46);
		}
	}
};

// Block 48 (Log message)
class Block47: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block47() {
		__block_number = 47;
		__block_user_number = "48";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - BREAK EVEN TRIGGERED AT SPECIFIED % ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 49 (Check profit (unrealized))
class Block48: public MDL_CheckUProfit<string,string,string,string,string,string,string,double,double,string,string,double,double>
{

	public: /* Constructor */
	Block48() {
		__block_number = 48;
		__block_user_number = "49";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {38};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = ">=";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[38].run(48);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		ProfitAmount = (double)c::PARTIALS_TRIGGER_AMOUNT;
	}
};

// Block 50 (Counter: Pass once)
class Block49: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block49() {
		__block_number = 49;
		__block_user_number = "50";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {47};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[47].run(49);
		}
	}
};

// Block 51 (BUY POSITION COUNT&lt;= THEN X)
class Block50: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block50() {
		__block_number = 50;
		__block_user_number = "51";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {57};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "<";
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[57].run(50);
		}
	}

	virtual void _beforeExecute_()
	{

		CompareCount = (int)c::MAX_PARALELL_TRADES_BUY;
		Symbol = (string)CurrentSymbol();
	}
};

// Block 52 (SELL POSITION COUNT&lt;= THEN X)
class Block51: public MDL_CheckTradesCount<string,int,string,string,string,string,string>
{

	public: /* Constructor */
	Block51() {
		__block_number = 51;
		__block_user_number = "52";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {52};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		Compare = "<";
		GroupMode = "all";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[52].run(51);
		}
	}

	virtual void _beforeExecute_()
	{

		CompareCount = (int)c::MAX_PARALELL_TRADES_SELL;
		Symbol = (string)CurrentSymbol();
	}
};

// Block 53 (Bear candle)
class Block52: public MDL_SignalBearCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block52() {
		__block_number = 52;
		__block_user_number = "53";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {53};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[53].run(52);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)inp53_MinBodySize;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 54 (Bull candle)
class Block53: public MDL_SignalBullCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block53() {
		__block_number = 53;
		__block_user_number = "54";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {55};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[55].run(53);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)inp54_MinBodySize;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 55 (Bull candle)
class Block54: public MDL_SignalBullCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block54() {
		__block_number = 54;
		__block_user_number = "55";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {56};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[56].run(54);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)v::DISPLACEMENT;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 56 (AND)
class Block55: public MDL_LogicalAND
{

	public: /* Constructor */
	Block55() {
		__block_number = 55;
		__block_user_number = "56";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {62};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[62].run(55);
		}
	}
};

// Block 57 (OR)
class Block56: public MDL_LogicalOR
{

	public: /* Constructor */
	Block56() {
		__block_number = 56;
		__block_user_number = "57";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {55};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[55].run(56);
		}
	}
};

// Block 58 (Bull candle)
class Block57: public MDL_SignalBullCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block57() {
		__block_number = 57;
		__block_user_number = "58";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {58};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[58].run(57);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)inp58_MinBodySize;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 59 (Bear candle)
class Block58: public MDL_SignalBearCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block58() {
		__block_number = 58;
		__block_user_number = "59";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {60};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[60].run(58);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)inp59_MinBodySize;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 60 (Bear candle)
class Block59: public MDL_SignalBearCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block59() {
		__block_number = 59;
		__block_user_number = "60";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {61};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[61].run(59);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)v::DISPLACEMENT;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 61 (AND)
class Block60: public MDL_LogicalAND
{

	public: /* Constructor */
	Block60() {
		__block_number = 60;
		__block_user_number = "61";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {63};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[63].run(60);
		}
	}
};

// Block 62 (OR)
class Block61: public MDL_LogicalOR
{

	public: /* Constructor */
	Block61() {
		__block_number = 61;
		__block_user_number = "62";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {60};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[60].run(61);
		}
	}
};

// Block 63 (Sell pending order)
class Block62: public MDL_SellPending<string,string,string,MDLIC_prices_LowestFromToCandles,double,double,string,double,double,double,double,double,MDLIC_value_value,double,double,double,double,double,double,double,double,int,int,double,string,double,double,double,MDLIC_prices_HighestFromToCandles,double,MDLIC_eventTrade_e_attrStopLoss,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,int,ulong,string,color>
{

	public: /* Constructor */
	Block62() {
		__block_number = 62;
		__block_user_number = "63";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dPrice.StartBar = 1;
		dPrice.EndBar = 5;
		dVolumeSize.Value = 0.1;
		dlStopLoss.StartBar = 1;
		dlStopLoss.EndBar = 3;
		dpStopLoss.Mode = "pips";
		ddStopLoss.Value = 0.01;
		ddTakeProfit.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftHours = 6.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		Group = "1";
		Price = "dynamic";
		PriceOffset = 0.0;
		VolumeMode = "balanceRisk";
		VolumeSize = 0.0;
		VolumeUpperLimit = 5.0;
		StopLossMode = "dynamicLevel";
		StopLossPercentPrice = 0.0;
		TakeProfitMode = "percentSL";
		TakeProfitPips = 0.0;
		ExpMode = "custom";
	}

	public: /* Custom methods */
	virtual double _dPrice_() {
		dPrice.Symbol = CurrentSymbol();
		dPrice.Period = CurrentTimeframe();

		return dPrice._execute_();
	}
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {
		dlStopLoss.Symbol = CurrentSymbol();
		dlStopLoss.Period = CurrentTimeframe();

		return dlStopLoss._execute_();
	}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeRisk = (double)c::RM_PERCT;
		VolumePercent = (double)c::RM_PERCT;
		TakeProfitPercentSL = (double)c::TP_perc;
		MyComment = (string)v::EA_NAME;
		ArrowColorSell = (color)clrRed;
	}
};

// Block 64 (Buy pending order)
class Block63: public MDL_BuyPending<string,string,string,MDLIC_prices_HighestFromToCandles,double,double,string,double,double,double,double,double,MDLIC_value_value,double,double,double,double,double,double,double,double,int,int,double,string,double,double,double,MDLIC_prices_HighestFromToCandles,double,MDLIC_eventTrade_e_attrStopLoss,double,MDLIC_value_value,double,string,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,string,int,int,int,MDLIC_value_time,datetime,int,ulong,string,color>
{

	public: /* Constructor */
	Block63() {
		__block_number = 63;
		__block_user_number = "64";
		_beforeExecuteEnabled = true;

		// IC input parameters
		dPrice.StartBar = 1;
		dPrice.EndBar = 5;
		dVolumeSize.Value = 0.1;
		dlStopLoss.StartBar = 1;
		dlStopLoss.EndBar = 3;
		dpStopLoss.Mode = "pips";
		ddStopLoss.Value = 0.01;
		ddTakeProfit.Value = 0.01;
		dpTakeProfit.Value = 100.0;
		dExp.ModeTimeShift = 2;
		dExp.TimeShiftHours = 6.0;
		dExp.TimeSkipWeekdays = true;
		// Block input parameters
		Group = "1";
		Price = "dynamic";
		PriceOffset = 0.0;
		VolumeMode = "balanceRisk";
		VolumeSize = 0.0;
		VolumeUpperLimit = 5.0;
		StopLossMode = "dynamicLevel";
		TakeProfitMode = "percentSL";
		TakeProfitPips = 0.0;
		ExpMode = "custom";
	}

	public: /* Custom methods */
	virtual double _dPrice_() {
		dPrice.Symbol = CurrentSymbol();
		dPrice.Period = CurrentTimeframe();

		return dPrice._execute_();
	}
	virtual double _dVolumeSize_() {return dVolumeSize._execute_();}
	virtual double _dlStopLoss_() {
		dlStopLoss.Symbol = CurrentSymbol();
		dlStopLoss.Period = CurrentTimeframe();

		return dlStopLoss._execute_();
	}
	virtual double _dpStopLoss_() {return dpStopLoss._execute_();}
	virtual double _ddStopLoss_() {return ddStopLoss._execute_();}
	virtual double _dlTakeProfit_() {return dlTakeProfit._execute_();}
	virtual double _ddTakeProfit_() {return ddTakeProfit._execute_();}
	virtual double _dpTakeProfit_() {return dpTakeProfit._execute_();}
	virtual datetime _dExp_() {return dExp._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
		VolumeRisk = (double)c::RM_PERCT;
		VolumePercent = (double)c::RM_PERCT;
		StopLossPercentPrice = (double)c::RM_PERCENT_ACT;
		TakeProfitPercentSL = (double)c::TP_perc;
		MyComment = (string)v::EA_NAME;
		ArrowColorBuy = (color)clrBlue;
	}
};

// Block 65 (FVG (Signal)(Buy))
class Block64: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_candles_candles,double,int>
{

	public: /* Constructor */
	Block64() {
		__block_number = 64;
		__block_user_number = "65";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {65};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		Lo.iOHLC = "iLow";
		Lo.CandleID = 1;
		Ro.iOHLC = "iHigh";
		Ro.CandleID = 3;
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.Symbol = CurrentSymbol();
		Ro.Period = CurrentTimeframe();

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[65].run(64);
		}
	}
};

// Block 66 (Bull candle(id2))
class Block65: public MDL_SignalBullCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block65() {
		__block_number = 65;
		__block_user_number = "66";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {66,67};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[66].run(65);
			_blocks_[67].run(65);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)v::DISPLACEMENT;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 67 (Draw Line(FVG-B1))
class Block66: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,MDLIC_value_time,datetime,MDLIC_candles_candles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block66() {
		__block_number = 66;
		__block_user_number = "67";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.iOHLC = "iLow";
		ObjPrice1.CandleID = 1;
		ObjPrice1.TimeStamp = "";
		ObjTime2.ModeTime = 3;
		ObjTime2.TimeCandleID = 10;
		ObjPrice2.CandleID = 10;
		ObjPrice2.TimeStamp = "";
		// Block input parameters
		ObjectPerBar = false;
		ObjName = "FVG-B1";
		ObjWidth = 2;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual datetime _ObjTime2_() {return ObjTime2._execute_();}
	virtual double _ObjPrice2_() {
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjectType = (ENUM_OBJECT)OBJ_HLINE;
		ObjColor = (color)clrLimeGreen;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_DOT;
	}
};

// Block 68 (Draw Line(FVG-B2))
class Block67: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,MDLIC_value_time,datetime,MDLIC_candles_candles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block67() {
		__block_number = 67;
		__block_user_number = "68";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.iOHLC = "iHigh";
		ObjPrice1.CandleID = 3;
		ObjPrice1.TimeStamp = "";
		ObjTime2.ModeTime = 3;
		ObjTime2.TimeCandleID = 10;
		ObjPrice2.CandleID = 10;
		ObjPrice2.TimeStamp = "";
		// Block input parameters
		ObjectPerBar = false;
		ObjName = "FVG-B2";
		ObjWidth = 2;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual datetime _ObjTime2_() {return ObjTime2._execute_();}
	virtual double _ObjPrice2_() {
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjectType = (ENUM_OBJECT)OBJ_HLINE;
		ObjColor = (color)clrLimeGreen;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_DOT;
	}
};

// Block 69 (FVG (Signal)(Sell))
class Block68: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_candles_candles,double,int>
{

	public: /* Constructor */
	Block68() {
		__block_number = 68;
		__block_user_number = "69";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {77};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		Lo.iOHLC = "iHigh";
		Lo.CandleID = 1;
		Ro.iOHLC = "iLow";
		Ro.CandleID = 3;
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.Symbol = CurrentSymbol();
		Ro.Period = CurrentTimeframe();

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[77].run(68);
		}
	}
};

// Block 70 (Draw Line(FVG-S1))
class Block69: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,MDLIC_value_time,datetime,MDLIC_candles_candles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block69() {
		__block_number = 69;
		__block_user_number = "70";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.iOHLC = "iHigh";
		ObjPrice1.CandleID = 1;
		ObjPrice1.TimeStamp = "";
		ObjTime2.ModeTime = 3;
		ObjTime2.TimeCandleID = 10;
		ObjPrice2.CandleID = 10;
		ObjPrice2.TimeStamp = "";
		// Block input parameters
		ObjectPerBar = false;
		ObjName = "FVG-S1";
		ObjWidth = 2;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual datetime _ObjTime2_() {return ObjTime2._execute_();}
	virtual double _ObjPrice2_() {
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjectType = (ENUM_OBJECT)OBJ_HLINE;
		ObjColor = (color)clrOrangeRed;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_DOT;
	}
};

// Block 71 (Draw Line(FVG-S2))
class Block70: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,MDLIC_value_time,datetime,MDLIC_candles_candles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block70() {
		__block_number = 70;
		__block_user_number = "71";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.iOHLC = "iLow";
		ObjPrice1.CandleID = 3;
		ObjPrice1.TimeStamp = "";
		ObjTime2.ModeTime = 3;
		ObjTime2.TimeCandleID = 10;
		ObjPrice2.CandleID = 10;
		ObjPrice2.TimeStamp = "";
		// Block input parameters
		ObjectPerBar = false;
		ObjName = "FVG-S2";
		ObjWidth = 2;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual datetime _ObjTime2_() {return ObjTime2._execute_();}
	virtual double _ObjPrice2_() {
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjectType = (ENUM_OBJECT)OBJ_HLINE;
		ObjColor = (color)clrOrangeRed;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_DOT;
	}
};

// Block 72 (Delete(FVG-B))
class Block71: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_objectattributes_OBJECT,double,int>
{

	public: /* Constructor */
	Block71() {
		__block_number = 71;
		__block_user_number = "72";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {72};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		Lo.CandleID = 1;
		Ro.Name = "FVG-B2";
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.Property = OBJPROP_PRICE1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[72].run(71);
		}
	}
};

// Block 73 (Delete objects(FVG-B1))
class Block72: public MDL_ChartDeleteObjects<string,string,color,string,int,int>
{

	public: /* Constructor */
	Block72() {
		__block_number = 72;
		__block_user_number = "73";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {73};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		NameContains = "FVG-B1";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[73].run(72);
		}
	}

	virtual void _beforeExecute_()
	{

		ObjColor = (color)EMPTY_VALUE;
	}
};

// Block 74 (Delete objects(FVG-B2))
class Block73: public MDL_ChartDeleteObjects<string,string,color,string,int,int>
{

	public: /* Constructor */
	Block73() {
		__block_number = 73;
		__block_user_number = "74";
		_beforeExecuteEnabled = true;
		// Block input parameters
		NameContains = "FVG-B2";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjColor = (color)EMPTY_VALUE;
	}
};

// Block 75 (Delete(FVG-S))
class Block74: public MDL_Condition<MDLIC_candles_candles,double,string,MDLIC_objectattributes_OBJECT,double,int>
{

	public: /* Constructor */
	Block74() {
		__block_number = 74;
		__block_user_number = "75";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {75};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		Lo.CandleID = 1;
		Ro.Name = "FVG-S2";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.Property = OBJPROP_PRICE1;

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[75].run(74);
		}
	}
};

// Block 76 (Delete objects(FVG-S1))
class Block75: public MDL_ChartDeleteObjects<string,string,color,string,int,int>
{

	public: /* Constructor */
	Block75() {
		__block_number = 75;
		__block_user_number = "76";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {76};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		NameContains = "FVG-S1";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[76].run(75);
		}
	}

	virtual void _beforeExecute_()
	{

		ObjColor = (color)EMPTY_VALUE;
	}
};

// Block 77 (Delete objects(FVG-S2))
class Block76: public MDL_ChartDeleteObjects<string,string,color,string,int,int>
{

	public: /* Constructor */
	Block76() {
		__block_number = 76;
		__block_user_number = "77";
		_beforeExecuteEnabled = true;
		// Block input parameters
		NameContains = "FVG-S2";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjColor = (color)EMPTY_VALUE;
	}
};

// Block 78 (Bear candle(id2))
class Block77: public MDL_SignalBearCandle<string,int,double,double,string,ENUM_TIMEFRAMES>
{

	public: /* Constructor */
	Block77() {
		__block_number = 77;
		__block_user_number = "78";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {69,70};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		CandleID = 2;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[69].run(77);
			_blocks_[70].run(77);
		}
	}

	virtual void _beforeExecute_()
	{

		MinBodySize = (double)v::DISPLACEMENT;
		Symbol = (string)CurrentSymbol();
		Period = (ENUM_TIMEFRAMES)CurrentTimeframe();
	}
};

// Block 79 (UP)
class Block78: public MDL_Condition<MDLIC_prices_HighestFromToCandles,double,string,MDLIC_prices_HighestFromToCandles,double,int>
{

	public: /* Constructor */
	Block78() {
		__block_number = 78;
		__block_user_number = "79";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {79};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.EndBar = v::END_candle_ID_1;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.EndBar = v::END_candle_ID_2;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = CurrentTimeframe();

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[79].run(78);
		}
	}
};

// Block 80 (Draw TrendLine (Buy))
class Block79: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_prices_HighestFromToCandles,double,MDLIC_prices_HighestFromToCandles,double,MDLIC_prices_HighestFromToCandles,double,MDLIC_prices_HighestFromToCandles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block79() {
		__block_number = 79;
		__block_user_number = "80";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.WhatToGet = 2;
		ObjTime2.WhatToGet = 2;
		// Block input parameters
		ObjectPerBar = false;
		ObjRayRight = true;
	}

	public: /* Custom methods */
	virtual double _ObjTime1_() {
		ObjTime1.EndBar = v::END_candle_ID_1;
		ObjTime1.Symbol = CurrentSymbol();
		ObjTime1.Period = CurrentTimeframe();

		return ObjTime1._execute_();
	}
	virtual double _ObjPrice1_() {
		ObjPrice1.EndBar = v::END_candle_ID_1;
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual double _ObjTime2_() {
		ObjTime2.EndBar = v::END_candle_ID_2;
		ObjTime2.Symbol = CurrentSymbol();
		ObjTime2.Period = CurrentTimeframe();

		return ObjTime2._execute_();
	}
	virtual double _ObjPrice2_() {
		ObjPrice2.EndBar = v::END_candle_ID_2;
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjName = (string)v::Trendline_Name_B;
		ObjectType = (ENUM_OBJECT)OBJ_TREND;
		ObjColor = (color)clrForestGreen;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_SOLID;
	}
};

// Block 81 (DOWN)
class Block80: public MDL_Condition<MDLIC_prices_LowestFromToCandles,double,string,MDLIC_prices_LowestFromToCandles,double,int>
{

	public: /* Constructor */
	Block80() {
		__block_number = 80;
		__block_user_number = "81";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {81};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "<";
	}

	public: /* Custom methods */
	virtual double _Lo_() {
		Lo.EndBar = v::END_candle_ID_1;
		Lo.Symbol = CurrentSymbol();
		Lo.Period = CurrentTimeframe();

		return Lo._execute_();
	}
	virtual double _Ro_() {
		Ro.EndBar = v::END_candle_ID_2;
		Ro.Symbol = CurrentSymbol();
		Ro.Period = CurrentTimeframe();

		return Ro._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[81].run(80);
		}
	}
};

// Block 82 (Draw TrendLine (Sell))
class Block81: public MDL_ChartDrawLine<bool,bool,string,ENUM_OBJECT,MDLIC_prices_LowestFromToCandles,double,MDLIC_prices_LowestFromToCandles,double,MDLIC_prices_LowestFromToCandles,double,MDLIC_prices_LowestFromToCandles,double,double,bool,bool,bool,color,ENUM_LINE_STYLE,int,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block81() {
		__block_number = 81;
		__block_user_number = "82";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.WhatToGet = 2;
		ObjTime2.WhatToGet = 2;
		// Block input parameters
		ObjectPerBar = false;
		ObjRayRight = true;
	}

	public: /* Custom methods */
	virtual double _ObjTime1_() {
		ObjTime1.EndBar = v::END_candle_ID_1;
		ObjTime1.Symbol = CurrentSymbol();
		ObjTime1.Period = CurrentTimeframe();

		return ObjTime1._execute_();
	}
	virtual double _ObjPrice1_() {
		ObjPrice1.EndBar = v::END_candle_ID_1;
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual double _ObjTime2_() {
		ObjTime2.EndBar = v::END_candle_ID_2;
		ObjTime2.Symbol = CurrentSymbol();
		ObjTime2.Period = CurrentTimeframe();

		return ObjTime2._execute_();
	}
	virtual double _ObjPrice2_() {
		ObjPrice2.EndBar = v::END_candle_ID_2;
		ObjPrice2.Symbol = CurrentSymbol();
		ObjPrice2.Period = CurrentTimeframe();

		return ObjPrice2._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		ObjName = (string)v::Trendline_Name_S;
		ObjectType = (ENUM_OBJECT)OBJ_TREND;
		ObjColor = (color)clrRed;
		ObjStyle = (ENUM_LINE_STYLE)STYLE_SOLID;
	}
};

// Block 83 (TP TRAILING ENABLED)
class Block82: public MDL_Condition<MDLIC_boolean_boolean,bool,string,MDLIC_value_value,double,int>
{

	public: /* Constructor */
	Block82() {
		__block_number = 82;
		__block_user_number = "83";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {87};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		compare = "==";
	}

	public: /* Custom methods */
	virtual bool _Lo_() {
		Lo.Boolean = c::TP_TRAILING_ENABLED;

		return Lo._execute_();
	}
	virtual double _Ro_() {return Ro._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[87].run(82);
		}
	}
};

// Block 84 (Log message)
class Block83: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block83() {
		__block_number = 83;
		__block_user_number = "84";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - TP TRAILING TRIGGERED  ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 85 (Counter: Pass once)
class Block84: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block84() {
		__block_number = 84;
		__block_user_number = "85";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {83};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[83].run(84);
		}
	}
};

// Block 86 (Log message)
class Block85: public MDL_PrintMessage<string>
{

	public: /* Constructor */
	Block85() {
		__block_number = 85;
		__block_user_number = "86";

		// Block input parameters
		PrintText = "---------- ALGORITHMIC_SMC_OB - SL TRAILING TRIGGERED  ----------";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}
};

// Block 87 (Counter: Pass once)
class Block86: public MDL_PassOnce<int>
{

	public: /* Constructor */
	Block86() {
		__block_number = 86;
		__block_user_number = "87";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {85};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[85].run(86);
		}
	}
};

// Block 88 (If trade)
class Block87: public MDL_IfOpenedOrders<string,string,string,string,string>
{

	public: /* Constructor */
	Block87() {
		__block_number = 87;
		__block_user_number = "88";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {88};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		Group = "1";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[88].run(87);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 89 (For each Trade)
class Block88: public MDL_LoopStartTrades<string,string,string,string,string,string,int,int,int,int>
{

	public: /* Constructor */
	Block88() {
		__block_number = 88;
		__block_user_number = "89";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {89};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		GroupMode = "all";
		Group = "1";
		SymbolMode = "all";
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[89].run(88);
		}
	}

	virtual void _beforeExecute_()
	{

		Symbol = (string)CurrentSymbol();
	}
};

// Block 90 (once per trade/order)
class Block89: public MDL_LoopOncePer<bool>
{

	public: /* Constructor */
	Block89() {
		__block_number = 89;
		__block_user_number = "90";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {90};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		AllowOldOrders = true;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[90].run(89);
		}
	}
};

// Block 91 (check group number)
class Block90: public MDL_LoopCheckGroup<int>
{

	public: /* Constructor */
	Block90() {
		__block_number = 90;
		__block_user_number = "91";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {91};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		IsThisGroup = 1;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[91].run(90);
		}
	}
};

// Block 92 (check take-profit)
class Block91: public MDL_LoopCheckTP<string,string,double,double,MDLIC_value_value,double>
{

	public: /* Constructor */
	Block91() {
		__block_number = 91;
		__block_user_number = "92";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {93};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		fSize.Value = 0.0;
	}

	public: /* Custom methods */
	virtual double _fSize_() {return fSize._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[93].run(91);
		}
	}

	virtual void _beforeExecute_()
	{

		PipsSize = (double)c::TP_TRAILING_STOP;
	}
};

// Block 93 (modify stops)
class Block92: public MDL_LoopModifySLTP<string,MDLIC_value_value,double,string,double,double,double,double,MDLIC_indicators_iAC,double,MDLIC_value_value,double,MDLIC_value_value,double,string,double,double,double,double,MDLIC_value_value,double,MDLIC_value_value,double,MDLIC_value_value,double,color>
{

	public: /* Constructor */
	Block92() {
		__block_number = 92;
		__block_user_number = "93";
		_beforeExecuteEnabled = true;

		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {84};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);

		// IC input parameters
		dPrice.Value = 0.0;
		dpNewStopLoss.Value = 10.0;
		ddNewStopLoss.Value = 0.001;
		fNewTakeProfit.Value = 50.0;
		dpNewTakeProfit.Value = 10.0;
		ddNewTakeProfit.Value = 0.001;
		// Block input parameters
		NewSLmode = "none";
	}

	public: /* Custom methods */
	virtual double _dPrice_() {return dPrice._execute_();}
	virtual double _fNewStopLoss_() {
		fNewStopLoss.Symbol = CurrentSymbol();
		fNewStopLoss.Period = CurrentTimeframe();

		return fNewStopLoss._execute_();
	}
	virtual double _dpNewStopLoss_() {return dpNewStopLoss._execute_();}
	virtual double _ddNewStopLoss_() {return ddNewStopLoss._execute_();}
	virtual double _fNewTakeProfit_() {return fNewTakeProfit._execute_();}
	virtual double _dpNewTakeProfit_() {return dpNewTakeProfit._execute_();}
	virtual double _ddNewTakeProfit_() {return ddNewTakeProfit._execute_();}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[84].run(92);
		}
	}

	virtual void _beforeExecute_()
	{

		NewTakeProfit = (double)c::TP_TRAILING_STEP;
		LevelColor = (color)clrDeepPink;
	}
};

// Block 94 (check age)
class Block93: public MDL_LoopCheckAge<string,string,double,double,double,double>
{

	public: /* Constructor */
	Block93() {
		__block_number = 93;
		__block_user_number = "94";


		// Fill the list of outbound blocks
		int ___outbound_blocks[1] = {92};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
		// Block input parameters
		AgeCompare = "<";
		AgeHours = 0.0;
		AgeSeconds = 5.0;
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[92].run(93);
		}
	}
};

// Block 95 (SMC)
class Block94: public MDL_ChartDrawText<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,int,int,MDLIC_myindicators_myindicators_1,double,string,int,double,ENUM_BASE_CORNER,int,color,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block94() {
		__block_number = 94;
		__block_user_number = "95";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.TimeStamp = "";
		ObjText.Shift = 1;
		// Block input parameters
		ObjectPerBar = false;
		ObjX = 10;
		ObjY = 300;
		ObjSelectable = false;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual double _ObjText_() {
		ObjText.Symbol = CurrentSymbol();
		ObjText.Period = CurrentTimeframe();

		return ObjText._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		/* Inputs, modified into the code must be set here every time */
		ObjText.RangeCandleStart = 0;
		ObjText.RangeCandleEnd = 10;
		ObjectType = (ENUM_OBJECT)OBJ_LABEL;
		ObjCorner = (ENUM_BASE_CORNER)CORNER_LEFT_UPPER;
		ObjAnchor = (int)ANCHOR_LEFT_UPPER;
		ObjColor = (color)clrWhite;
	}
};

// Block 99 (Pass)
class Block95: public MDL_Pass
{

	public: /* Constructor */
	Block95() {
		__block_number = 95;
		__block_user_number = "99";


		// Fill the list of outbound blocks
		int ___outbound_blocks[2] = {94,96};
		ArrayCopy(__outbound_blocks, ___outbound_blocks);
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
		if (value == 1) {
			_blocks_[94].run(95);
			_blocks_[96].run(95);
		}
	}
};

// Block 100 (Draw Text)
class Block96: public MDL_ChartDrawText<bool,bool,string,ENUM_OBJECT,MDLIC_value_time,datetime,MDLIC_candles_candles,double,int,int,MDLIC_myindicators_myindicators_2,double,string,int,double,ENUM_BASE_CORNER,int,color,bool,bool,bool,bool,int,string>
{

	public: /* Constructor */
	Block96() {
		__block_number = 96;
		__block_user_number = "100";
		_beforeExecuteEnabled = true;

		// IC input parameters
		ObjTime1.ModeTime = 3;
		ObjTime1.TimeCandleID = 0;
		ObjPrice1.TimeStamp = "";
		ObjText.Shift = 1;
		// Block input parameters
		ObjectPerBar = false;
		ObjX = 10;
		ObjY = 315;
	}

	public: /* Custom methods */
	virtual datetime _ObjTime1_() {return ObjTime1._execute_();}
	virtual double _ObjPrice1_() {
		ObjPrice1.Symbol = CurrentSymbol();
		ObjPrice1.Period = CurrentTimeframe();

		return ObjPrice1._execute_();
	}
	virtual double _ObjText_() {
		ObjText.Symbol = CurrentSymbol();
		ObjText.Period = CurrentTimeframe();

		return ObjText._execute_();
	}

	public: /* Callback & Run */
	virtual void _callback_(int value) {
	}

	virtual void _beforeExecute_()
	{

		/* Inputs, modified into the code must be set here every time */
		ObjText.RangeCandleStart = 0;
		ObjText.RangeCandleEnd = 10;
		ObjectType = (ENUM_OBJECT)OBJ_LABEL;
		ObjCorner = (ENUM_BASE_CORNER)CORNER_LEFT_UPPER;
		ObjAnchor = (int)ANCHOR_LEFT_UPPER;
		ObjColor = (color)clrSkyBlue;
	}
};


/************************************************************************************************************************/
// +------------------------------------------------------------------------------------------------------------------+ //
// |                                                   Functions                                                      | //
// |                                 System and Custom functions used in the program                                  | //
// +------------------------------------------------------------------------------------------------------------------+ //
/************************************************************************************************************************/


double AccountBalance()
{
	return NormalizeDouble(AccountInfoDouble(ACCOUNT_BALANCE), 2);
}

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

double AccountEquity()
{
	return AccountInfoDouble(ACCOUNT_EQUITY);
}

double AccountFreeMargin()
{
	return AccountInfoDouble(ACCOUNT_FREEMARGIN);
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
		   type == ORDER_TYPE_SELL
		|| type == ORDER_TYPE_SELL_STOP
		|| type == ORDER_TYPE_SELL_LIMIT
		|| type == ORDER_TYPE_SELL_STOP_LIMIT
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
				DoubleToStr(sl, digits),
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
				DoubleToStr(sl, digits),
				" or ",
				DoubleToStr(MathAbs(sl - askbid) / point, 0),
				" points), minimum will be taken (",
				DoubleToStr(sllimit, digits),
				" or ",
				DoubleToStr(MathAbs(askbid - sllimit) / point, 0),
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
		   type == ORDER_TYPE_SELL
		|| type == ORDER_TYPE_SELL_STOP
		|| type == ORDER_TYPE_SELL_LIMIT
		|| type == ORDER_TYPE_SELL_STOP_LIMIT
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
				DoubleToStr(tp, digits),
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
				DoubleToStr(tp, digits),
				" or ",
				DoubleToStr(MathAbs(tp - askbid) / point, 0),
				" points), minimum will be taken (",
				DoubleToStr(tplimit, digits),
				" or ",
				DoubleToStr(MathAbs(askbid - tplimit) / point, 0),
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

long BuyLater(
	string symbol,
	double lots,
	double price,
	double sll = 0, // SL level
	double tpl = 0, // TP level
	double slp = 0, // SL adjust in points
	double tpp = 0, // TP adjust in points
	double slippage = 0,
	datetime expiration = 0,
	int magic = 0,
	string comment = "",
	color arrowcolor = clrNONE,
	bool oco = false
	)
{
	double ask = SymbolInfoDouble(symbol,SYMBOL_ASK);
	ENUM_ORDER_TYPE type = 0;

	     if (price == ask) {type = ORDER_TYPE_BUY;}
	else if (price < ask)  {type = ORDER_TYPE_BUY_LIMIT;}
	else if (price > ask)  {type = ORDER_TYPE_BUY_STOP;}

	return OrderCreate(
		symbol,
		type,
		lots,
		price,
		sll,
		tpl,
		slp,
		tpp,
		slippage,
		magic,
		comment,
		arrowcolor,
		expiration,
		oco
	);
}

int CheckForTradingError(int error_code=-1, string msg_prefix="")
{
   // return 0 -> no error
   // return 1 -> overcomable error
   // return 2 -> fatal error
   
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
         retval=1;
         break;
      //-- critical errors
      default:
         retval=2;
         break;
   }
   
   if (error_code > 0)
   {
      string msg = "";
      if (retval == 1)
      {
         StringConcatenate(msg, msg_prefix,": ",ErrorMessage(error_code),". Retrying in 5 seconds..");
         Sleep(500); 
      }
      else if (retval == 2)
      {
         StringConcatenate(msg, msg_prefix,": ",ErrorMessage(error_code));
      }
      Print(msg);
   }
   
   if (retval==0)
   {
      tryouts=0;
   }
   else if (retval==1)
   {
      tryouts++;
      if (tryouts>=10)
      {
         tryouts=0;
         retval=2;
      }
      else
      {
         Print("retry #"+(string)tryouts+" of 10");
      }
   }
   
   return(retval);
}

bool CloseTrade(ulong ticket, ulong deviation = 0, color clr = clrNONE)
{
	while(true)
	{
		bool success = false;

		if (!PositionSelectByTicket(ticket))
		{
			return false;
		}

		string symbol = PositionGetString(POSITION_SYMBOL);
		long magic    = PositionGetInteger(POSITION_MAGIC);
		double volume = PositionGetDouble(POSITION_VOLUME);

		// With some CFD we can open position with the max volume more than once,
		// so we get a position that has volume bigger than the maximum.
		// Then we cannot close that position, because the volume is too high.
		// For that reason here we will close it in parts.
		double max_volume  = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);
		double part_volume = (volume > max_volume) ? max_volume : volume;

		//-- close --------------------------------------------------------
		MqlTradeRequest request;
		MqlTradeResult result;
		MqlTradeCheckResult check_result;
		ZeroMemory(request);
		ZeroMemory(result);
		ZeroMemory(check_result);

		if((ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY)
		{
			//--- prepare request for close BUY position
			request.type  = ORDER_TYPE_SELL;
			request.price = SymbolInfoDouble(symbol, SYMBOL_BID);
		}
		else
		{
			//--- prepare request for close SELL position
			request.type  = ORDER_TYPE_BUY;
			request.price = SymbolInfoDouble(symbol, SYMBOL_ASK);
		}

		request.action    = TRADE_ACTION_DEAL;
		request.symbol    = symbol;
		request.volume    = part_volume;
		request.magic     = magic;
		request.deviation = (int)(deviation * PipValue(symbol));

		// for hedging mode
		request.position  = ticket;

		// filling type
		if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
			request.type_filling = ORDER_FILLING_FOK;
		else if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
			request.type_filling = ORDER_FILLING_IOC;
		else if (IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
			request.type_filling = ORDER_FILLING_RETURN;
		else
			request.type_filling = ORDER_FILLING_RETURN;

		success = OrderSend(request, result);

		//-- error check --------------------------------------------------
		if (!success || (result.retcode != TRADE_RETCODE_DONE && result.retcode != TRADE_RETCODE_PLACED && result.retcode != TRADE_RETCODE_DONE_PARTIAL))
		{
			string errmsgpfx = "Closing position/trade error";

			int erraction = CheckForTradingError(result.retcode, errmsgpfx);

			switch(erraction)
			{
				case 0: break;    // no error
				case 1: continue; // overcomable error
				case 2: break;    // fatal error
			}

			return false;
		}
		
		//-- finish work --------------------------------------------------
		if (result.retcode == TRADE_RETCODE_DONE || result.retcode == TRADE_RETCODE_PLACED)
		{
			// we are closing the position in parts?
			if (volume != part_volume)
			{
				continue; // continue the "while" loop, so that the whole volume could be closed
			}

			while (true)
			{
			  	if (MQLInfoInteger(MQL_TESTER) || !PositionSelectByTicket(ticket))
				{
					break;
				}

				Sleep(10);
			}
		}

		if (success == true)
		{
			if (USE_VIRTUAL_STOPS)
			{
				VirtualStopsDriver("clear", ticket);
			}

			expirationWorker.RemoveExpiration(ticket);
		}
		
		break;
	}
	
	OnTrade();

	return true;
}

bool CloseTradePartial(
	long   ticket,
	double volume,
	double deviation  = 0,
	color  arrowcolor = clrNONE // fake parameter
) {
	// When closing position with lot size bigger than the max lot size, the position is closed in parts.
	// This variable keeps the volume that remains to be closed.
	double volume_left_to_close = EMPTY_VALUE;
	
	while(true)
	{
		if (ticket != OrderTicket())
		{
			if (!PositionSelectByTicket(ticket))
			{
				Print("Cannot close a position: Position #", (string)ticket, " is already closed or it does not exist"); 
	
				return false;
			}
		}

		if (!PositionSelectByTicket(ticket))
		{
			return false;
		}

		string symbol           = PositionGetString(POSITION_SYMBOL);
		long magic              = PositionGetInteger(POSITION_MAGIC);
		double lotstep          = SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
		ENUM_POSITION_TYPE type = (ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);

		double old_sl     = attrStopLoss();
		double old_tp     = attrTakeProfit();
		double old_volume = OrderLots();

		if (volume > old_volume) {volume = old_volume;}

		// With some CFD we can open position with the max volume more than once,
		// so we get a position that has volume bigger than the maximum.
		// Then we cannot close that position, because the volume is too high.
		// For that reason here we will close it in parts.
		double max_volume  = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);

		volume = MathRound(volume / lotstep) * lotstep;
		volume = AlignLots(symbol, volume);
		
		double part_volume = 0;

		part_volume          = (volume > max_volume) ? max_volume : volume;
		part_volume          = AlignLots(symbol, part_volume);
		volume_left_to_close = (volume_left_to_close == EMPTY_VALUE) ? volume : volume_left_to_close - part_volume;

		if (volume_left_to_close <= 0) {break;} // stop the process if there is nothing left to be closed
		
		if (part_volume > volume_left_to_close) part_volume = volume_left_to_close;

		//-- close --------------------------------------------------------
		MqlTradeRequest request;
		MqlTradeResult result;
		MqlTradeCheckResult check_result;
		ZeroMemory(request);
		ZeroMemory(result);
		ZeroMemory(check_result);

		if((ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY)
		{
			//--- prepare request for close BUY position
			request.type  = ORDER_TYPE_SELL;
			request.price = SymbolInfoDouble(symbol, SYMBOL_BID);
		}
		else
		{
			//--- prepare request for close SELL position
			request.type  = ORDER_TYPE_BUY;
			request.price = SymbolInfoDouble(symbol, SYMBOL_ASK);
		}

		request.action    = TRADE_ACTION_DEAL;
		request.symbol    = symbol;
		request.volume    = part_volume;
		request.magic     = magic;
		request.deviation = (int)(deviation*PipValue(symbol));

		// for hedging mode
		request.position  = ticket;

		// filling type
		if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
			request.type_filling = ORDER_FILLING_FOK;
		else if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
			request.type_filling = ORDER_FILLING_IOC;
		else if (IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
			request.type_filling = ORDER_FILLING_RETURN;

		int success = OrderSend(request, result);

		//-- error check --------------------------------------------------
		if (!success || (result.retcode != TRADE_RETCODE_DONE && result.retcode!=TRADE_RETCODE_PLACED && result.retcode != TRADE_RETCODE_DONE_PARTIAL))
		{
			string errmsgpfx = "New position error";

			int erraction = CheckForTradingError(result.retcode, errmsgpfx);

			switch(erraction)
			{
				case 0: break;    // no error
				case 1: continue; // overcomable error
				case 2: break;    // fatal error
			}

			return false;
		}

		//-- finish work --------------------------------------------------
		if (result.retcode == TRADE_RETCODE_DONE || result.retcode == TRADE_RETCODE_PLACED || result.retcode == TRADE_RETCODE_DONE_PARTIAL)
		{
			// we are closing the position in parts?
			if (volume != part_volume)
			{
				continue; // continue the "while" loop, so that the whole volume could be closed
			}

			while (true)
			{
				if (MQLInfoInteger(MQL_TESTER) || !PositionSelectByTicket(ticket) || (old_volume != NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5)))
				{
					break;
				}

			  	Sleep(10);
			}
		}

		if (USE_VIRTUAL_STOPS)
		{
			VirtualStopsDriver("clear",ticket);
		}

		if (volume != old_volume)
		{
			attrLotsClosed(volume);

			if (USE_VIRTUAL_STOPS)
			{
				VirtualStopsDriver("partial", ticket, old_sl, old_tp);
			}

			// In MQL5 it seems that when partially closing a position, the ticket number remains the same.
			// However, just in case we will extract the ticket number by using the the deal of the result.
			datetime expiration    = expirationWorker.GetExpiration(ticket);
			long positionID        = HistoryDealGetInteger(result.deal, DEAL_POSITION_ID);
			long positionNewTicket = 0;

			for (int i = 0; i < PositionsTotal(); i++)
			{
				if (PositionGetTicket(i) > 0)
				{
					if (PositionGetInteger(POSITION_IDENTIFIER) == positionID)
					{
						positionNewTicket = PositionGetInteger(POSITION_TICKET);
						break;
					}
				}
			}

			expirationWorker.RemoveExpiration(ticket);

			if (positionNewTicket > 0 && expiration > 0)
			{
				expirationWorker.SetExpiration(positionNewTicket, expiration);
			}
		}
		else
		{
			expirationWorker.RemoveExpiration(ticket);
		}

		break;
	}

	OnTrade();

	return true;
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

int Counter(int id, string cmd = "", int set_passes = 0)
{
	static int idx[]; // index list
	static int pl[];  // passes list
	int size    = 0;
	int passes  = 0;
	int cnt_idx = ArraySearch(idx, id);

	if (cnt_idx == -1)
	{
		// Counter not found
		size = ArraySize(idx);

		ArrayResize(idx, size + 1);
		ArrayResize(pl, size + 1);

		idx[size] = id;
		pl[size]  = 0;
		cnt_idx   = size;
	}

	passes = pl[cnt_idx];

	if (cmd != "")
	{
		if (cmd == "increment")
		{
			pl[cnt_idx] = pl[cnt_idx] + 1;
		}
		else if (cmd == "reset")
		{
			pl[cnt_idx] = 0;
		}
	}

	return passes;
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

ENUM_TIMEFRAMES CurrentTimeframe(ENUM_TIMEFRAMES tf=-1)
{
   static ENUM_TIMEFRAMES memory=0;
   if (tf>=0) {memory=tf;}
   return(memory);
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
					if (StringFind(symbol, StringSubstr(s_from, 1), 3) == 3)
					{
						points[i] = to;
					}
				}
				else if (pos > 0) // ? is the second symbol => match the first symbol
				{
					if (StringFind(symbol, StringSubstr(s_from, 0, pos)) == 0)
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

bool DeleteOrder(ulong ticket, color arrowcolor=clrNONE)
{
   while(true)
   {
      MqlTradeRequest request;
      MqlTradeResult result;
      MqlTradeCheckResult check_result;
      ZeroMemory(request);
      ZeroMemory(result);
      ZeroMemory(check_result);
   
      request.order=ticket;
      request.action=TRADE_ACTION_REMOVE;
      request.comment="Pending order canceled";
   
      if (!OrderCheck(request,check_result))  {
         Print("OrderCheck() failed: "+(string)check_result.comment+" ("+(string)check_result.retcode+")");
         return false;
      }
      
      bool success = OrderSend(request,result);
      
      //-- error check --------------------------------------------------
      if (!success || result.retcode!=TRADE_RETCODE_DONE)
      {
         string errmsgpfx="Delete order error";
         int erraction=CheckForTradingError(result.retcode, errmsgpfx);
         switch(erraction)
         {
            case 0: break;    // no error
            case 1: continue; // overcomable error
            case 2: break;    // fatal error
         }
         return(false);
      }
      
      //-- finish work --------------------------------------------------
      if (result.retcode==TRADE_RETCODE_DONE)
      {
         //== Wait until MT5 updates it's cache
         int w;
         for (w=0; w<5000; w++)
         {
            if (!OrderSelect(ticket)) {break;}
            Sleep(1);
         }
         if (w==5000) {
            Print("Check error: Delete order");  
         }
         if (OrderSelect(ticket)) {
            Print("Something went wrong with the order");
            return false;
         }
      }
		
		if (success==true) {
         if (USE_VIRTUAL_STOPS) {
            VirtualStopsDriver("clear",ticket);
         }
         //RegisterEvent("trade");
         //return(true);
      }
		
      break;
   }
   OnTrade();
   return(true);
}

string DoubleToStr(double d, int dig){return(DoubleToString(d,dig));}

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
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+1);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "Spread:");
      }
      name="fxd_spread_max_label";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "max:");
      }
      name="fxd_spread_avg_label";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "avg:");
      }
      name="fxd_spread_min_label";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+148);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "min:");
      }
      name="fxd_spread_current";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+93);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 18);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_max";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+17);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrOrangeRed);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_avg";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+9);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrDarkOrange);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
      name="fxd_spread_min";
      if (ObjectFind(0, name)==-1) {
         ObjectCreate(0, name, OBJ_LABEL, 0, 0, 0);
         ObjectSetInteger(0, name, OBJPROP_XDISTANCE, x+173);
         ObjectSetInteger(0, name, OBJPROP_YDISTANCE, y+1);
         ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
         ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
         ObjectSetInteger(0, name, OBJPROP_FONTSIZE, 7);
         ObjectSetInteger(0, name, OBJPROP_COLOR, clrGold);
         ObjectSetString(0, name, OBJPROP_FONT, "Arial");
         ObjectSetString(0, name, OBJPROP_TEXT, "0");
      }
   }
   
   ObjectSetString(0, "fxd_spread_current", OBJPROP_TEXT, DoubleToStr(current_spread,2));
   ObjectSetString(0, "fxd_spread_max", OBJPROP_TEXT, DoubleToStr(max_spread,2));
   ObjectSetString(0, "fxd_spread_avg", OBJPROP_TEXT, DoubleToStr(avg_spread,2));
   ObjectSetString(0, "fxd_spread_min", OBJPROP_TEXT, DoubleToStr(min_spread,2));
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
      ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      ObjectSetInteger(0,name, OBJPROP_BACK, false);
      ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x);
      ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+17);
      ObjectSetString(0,name, OBJPROP_TEXT, "Status");
      ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 7);
      ObjectSetInteger(0,name, OBJPROP_COLOR, clrGray);
      
      name="fxd_status_text";
      ObjectCreate(0,name, OBJ_LABEL, 0, 0, 0);
      ObjectSetInteger(0,name, OBJPROP_BACK, false);
      ObjectSetInteger(0, name, OBJPROP_CORNER, CORNER_LEFT_LOWER);
      ObjectSetInteger(0, name, OBJPROP_ANCHOR, ANCHOR_LEFT_LOWER);
      ObjectSetInteger(0, name, OBJPROP_HIDDEN, true);
      ObjectSetInteger(0,name, OBJPROP_XDISTANCE, x+2);
      ObjectSetInteger(0,name, OBJPROP_YDISTANCE, y+1);
      ObjectSetString(0,name, OBJPROP_FONT, "Arial");
      ObjectSetInteger(0,name, OBJPROP_FONTSIZE, 12);
      ObjectSetInteger(0,name, OBJPROP_COLOR, clrAqua);
   }

   //-- update the text when needed
   if (text != memory) {
      memory=text;
      ObjectSetString(0,"fxd_status_text", OBJPROP_TEXT, text);
   }
   
   return(text);
}

double DynamicLots(string symbol, string mode="balance", double value=0, double sl=0, string align="align")
{
   double size=0;
   double LotStep=SymbolLotStep(symbol);
   double LotSize=SymbolLotSize(symbol);
   double MinLots=SymbolMinLot(symbol);
   double MaxLots=SymbolMaxLot(symbol);
   double TickValue=SymbolInfoDouble(symbol,SYMBOL_TRADE_TICK_VALUE);
   double margin_required=0;
   bool ocm = OrderCalcMargin(ORDER_TYPE_BUY,symbol,1,ask(symbol),margin_required); // This is the MODE_MARGINREQUIRED analog in MQL5
   //if (value>MaxLots) {value=value/LotSize;} // Money-to-Lot conversion
   
        if (mode=="fixed" || mode=="lots") {size=value;}
   else if (mode=="block-equity")     {size=(value/100)*AccountEquity()/margin_required;}
   else if (mode=="block-balance")    {size=(value/100)*AccountBalance()/margin_required;}
   else if (mode=="block-freemargin") {size=(value/100)*AccountFreeMargin()/margin_required;}
   else if (mode=="equity")     {size=(value/100)*AccountEquity()/(LotSize*TickValue);}
   else if (mode=="balance")    {size=(value/100)*AccountBalance()/(LotSize*TickValue);}
   else if (mode=="freemargin") {size=(value/100)*AccountFreeMargin()/(LotSize*TickValue);}
   else if (mode=="equityRisk") {size=((value/100)*AccountEquity())/(sl*TickValue*PipValue(symbol));}
   else if (mode=="balanceRisk"){size=((value/100)*AccountBalance())/(sl*TickValue*PipValue(symbol));}
   else if (mode=="freemarginRisk") {size=((value/100)*AccountFreeMargin())/(sl*TickValue*PipValue(symbol));}
   else if (mode=="fixedRisk")   {size=(value)/(sl*TickValue*PipValue(symbol));}
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
         RJFR_target_upper=AccountEquity()+(RJFR_units*RJFR_delta);
         Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Upper Target Equity=>",RJFR_target_upper);
      }
      if (AccountEquity()>=RJFR_target_upper)
      {
         while(true) {
            Print("Fixed Ratio MM going up to ",(RJFR_start_lots*(RJFR_units+1))," lots: Equity is above Upper Target Equity (",AccountEquity(),">=",RJFR_target_upper,")");
            RJFR_units++;
            RJFR_target_lower=RJFR_target_upper;
            RJFR_target_upper=RJFR_target_upper+(RJFR_units*RJFR_delta);
            Print("Fixed Ratio MM: Units=>",RJFR_units,"; Delta=",RJFR_delta,"; Lower Target Equity=>",RJFR_target_lower,"; Upper Target Equity=>",RJFR_target_upper);
            if (AccountEquity()<RJFR_target_upper) {break;}
         }
      }
      else if (AccountEquity()<=RJFR_target_lower)
      {
         while(true) {
         if (AccountEquity()>RJFR_target_lower) {break;}
            if (RJFR_units>1) {         
               Print("Fixed Ratio MM going down to ",(RJFR_start_lots*(RJFR_units-1))," lots: Equity is below Lower Target Equity | ", AccountEquity()," <= ",RJFR_target_lower,")");
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
   
   static bool alert_min_lots=false;
   if (size<MinLots && alert_min_lots==false) {alert_min_lots=true;
      Alert("You want to trade ",size," lot, but your broker's minimum is ",MinLots," lot. The trade/order will continue with ",MinLots," lot instead of ",size," lot. The same rule will be applied for next trades/orders with desired lot size lower than the minimum. You will not see this message again until you restart the program.");
   }

   size=MathRound(size/LotStep)*LotStep;
   
   if (align=="align") {
      if (size<MinLots) {size=MinLots;}
      if (size>MaxLots) {size=MaxLots;}
   }
   
   return (size);
}

string ErrorMessage(int error_code=-1)
{
	string e = "";
	if (error_code<0) {error_code=GetLastError();}
	

	switch(error_code)
	{
		//--- success
		case 0: return("The operation completed successfully");
		
		//--- Runtime
		case 4001: e = "Unexpected internal error"; break;
		case 4002: e = "Wrong parameter in the inner call of the client terminal function"; break;
		case 4003: e = "Wrong parameter when calling the system function"; break;
		case 4004: e = "Not enough memory to perform the system function"; break;
		case 4005: e = "The structure contains objects of strings and/or dynamic arrays and/or structure of such objects and/or classes"; break;
		case 4006: e = "Array of a wrong type, wrong size, or a damaged object of a dynamic array"; break;
		case 4007: e = "Not enough memory for the relocation of an array, or an attempt to change the size of a static array"; break;
		case 4008: e = "Not enough memory for the relocation of string"; break;
		case 4009: e = "Not initialized string"; break;
		case 4010: e = "Invalid date and/or time"; break;
		case 4011: e = "Requested array size exceeds 2 GB"; break;
		case 4012: e = "Wrong pointer"; break;
		case 4013: e = "Wrong type of pointer"; break;
		case 4014: e = "System function is not allowed to call"; break;
		case 4015: e = "The names of the dynamic and the static resource match"; break;
		case 4016: e = "Resource with this name has not been found in EX5"; break;
		case 4017: e = "Unsupported resource type or its size exceeds 16 Mb"; break;
		case 4018: e = "The resource name exceeds 63 characters"; break;
		
		//-- Charts
		case 4101: e = "Wrong chart ID"; break;
		case 4102: e = "Chart does not respond"; break;
		case 4103: e = "Chart not found"; break;
		case 4104: e = "No Expert Advisor in the chart that could handle the event"; break;
		case 4105: e = "Chart opening error"; break;
		case 4106: e = "Failed to change chart symbol and period"; break;
		case 4107: e = "Wrong parameter for timer"; break;
		case 4108: e = "Failed to create timer"; break;
		case 4109: e = "Wrong chart property ID"; break;
		case 4110: e = "Error creating screenshots"; break;
		case 4111: e = "Error navigating through chart"; break;
		case 4112: e = "Error applying template"; break;
		case 4113: e = "Subwindow containing the indicator was not found"; break;
		case 4114: e = "Error adding an indicator to chart"; break;
		case 4115: e = "Error deleting an indicator from the chart"; break;
		case 4116: e = "Indicator not found on the specified chart"; break;

		//-- Graphical Objects
		case 4201: e = "Error working with a graphical object"; break;
		case 4202: e = "Graphical object was not found"; break;
		case 4203: e = "Wrong ID of a graphical object property"; break;
		case 4204: e = "Unable to get date corresponding to the value"; break;
		case 4205: e = "Unable to get value corresponding to the date"; break;

		//-- Market Info
		case 4301: e = "Unknown symbol"; break;
		case 4302: e = "Symbol is not selected in MarketWatch"; break;
		case 4303: e = "Wrong identifier of a symbol property"; break;
		case 4304: e = "Time of the last tick is not known (no ticks)"; break;
		case 4305: e = "Error adding or deleting a symbol in MarketWatch"; break;

		//-- History Access
		case 4401: e = "Requested history not found"; break;
		case 4402: e = "Wrong ID of the history property"; break;

		//-- Global Variables
		case 4501: e = "Global variable of the client terminal is not found"; break;
		case 4502: e = "Global variable of the client terminal with the same name already exists"; break;
		case 4510: e = "Email sending failed"; break;
		case 4511: e = "Sound playing failed"; break;
		case 4512: e = "Wrong identifier of the program property"; break;
		case 4513: e = "Wrong identifier of the terminal property"; break;
		case 4514: e = "File sending via ftp failed"; break;
		case 4515: e = "Failed to send a notification"; break;
		case 4516: e = "Invalid parameter for sending a notification - an empty string or NULL has been passed to the SendNotification() function"; break;
		case 4517: e = "Wrong settings of notifications in the terminal (ID is not specified or permission is not set)"; break;
		case 4518: e = "Too frequent sending of notifications"; break;

		//-- Custom Indicator Buffers
		case 4601: e = "Not enough memory for the distribution of indicator buffers"; break;
		case 4602: e = "Wrong indicator buffer index"; break;

		//-- Custom Indicator Properties
		case 4603: e = "Wrong ID of the custom indicator property"; break;

		//-- Account
		case 4701: e = "Wrong account property ID"; break;
		case 4751: e = "Wrong trade property ID"; break;
		case 4752: e = "Trading by Expert Advisors prohibited"; break;
		case 4753: e = "Position not found"; break;
		case 4754: e = "Order not found"; break;
		case 4755: e = "Deal not found"; break;
		case 4756: e = "Trade request sending failed"; break;

		//-- Indicators
		case 4801: e = "Unknown symbol"; break;
		case 4802: e = "Indicator cannot be created"; break;
		case 4803: e = "Not enough memory to add the indicator"; break;
		case 4804: e = "The indicator cannot be applied to another indicator"; break;
		case 4805: e = "Error applying an indicator to chart"; break;
		case 4806: e = "Requested data not found"; break;
		case 4807: e = "Wrong indicator handle"; break;
		case 4808: e = "Wrong number of parameters when creating an indicator"; break;
		case 4809: e = "No parameters when creating an indicator"; break;
		case 4810: e = "The first parameter in the array must be the name of the custom indicator"; break;
		case 4811: e = "Invalid parameter type in the array when creating an indicator"; break;
		case 4812: e = "Wrong index of the requested indicator buffer"; break;

		//-- Depth of Market
		case 4901: e = "Depth Of Market can not be added"; break;
		case 4902: e = "Depth Of Market can not be removed"; break;
		case 4903: e = "The data from Depth Of Market can not be obtained"; break;
		case 4904: e = "Error in subscribing to receive new data from Depth Of Market"; break;

		//-- File Operations
		case 5001: e = "More than 64 files cannot be opened at the same time"; break;
		case 5002: e = "Invalid file name"; break;
		case 5003: e = "Too long file name"; break;
		case 5004: e = "File opening error"; break;
		case 5005: e = "Not enough memory for cache to read"; break;
		case 5006: e = "File deleting error"; break;
		case 5007: e = "A file with this handle was closed, or was not opening at all"; break;
		case 5008: e = "Wrong file handle"; break;
		case 5009: e = "The file must be opened for writing"; break;
		case 5010: e = "The file must be opened for reading"; break;
		case 5011: e = "The file must be opened as a binary one"; break;
		case 5012: e = "The file must be opened as a text"; break;
		case 5013: e = "The file must be opened as a text or CSV"; break;
		case 5014: e = "The file must be opened as CSV"; break;
		case 5015: e = "File reading error"; break;
		case 5016: e = "String size must be specified, because the file is opened as binary"; break;
		case 5017: e = "A text file must be for string arrays, for other arrays - binary"; break;
		case 5018: e = "This is not a file, this is a directory"; break;
		case 5019: e = "File does not exist"; break;
		case 5020: e = "File can not be rewritten"; break;
		case 5021: e = "Wrong directory name"; break;
		case 5022: e = "Directory does not exist"; break;
		case 5023: e = "This is a file, not a directory"; break;
		case 5024: e = "The directory cannot be removed"; break;
		case 5025: e = "Failed to clear the directory (probably one or more files are blocked and removal operation failed)"; break;
		case 5026: e = "Failed to write a resource to a file"; break;

		//-- String Casting
		case 5030: e = "No date in the string"; break;
		case 5031: e = "Wrong date in the string"; break;
		case 5032: e = "Wrong time in the string"; break;
		case 5033: e = "Error converting string to date"; break;
		case 5034: e = "Not enough memory for the string"; break;
		case 5035: e = "The string length is less than expected"; break;
		case 5036: e = "Too large number, more than ULONG_MAX"; break;
		case 5037: e = "Invalid format string"; break;
		case 5038: e = "Amount of format specifiers more than the parameters"; break;
		case 5039: e = "Amount of parameters more than the format specifiers"; break;
		case 5040: e = "Damaged parameter of string type"; break;
		case 5041: e = "Position outside the string"; break;
		case 5042: e = "0 added to the string end, a useless operation"; break;
		case 5043: e = "Unknown data type when converting to a string"; break;
		case 5044: e = "Damaged string object"; break;

		//-- Operations with Arrays
		case 5050: e = "Copying incompatible arrays. String array can be copied only to a string array, and a numeric array - in numeric array only"; break;
		case 5051: e = "The receiving array is declared as AS_SERIES, and it is of insufficient size"; break;
		case 5052: e = "Too small array, the starting position is outside the array"; break;
		case 5053: e = "An array of zero length"; break;
		case 5054: e = "Must be a numeric array"; break;
		case 5055: e = "Must be a one-dimensional array"; break;
		case 5056: e = "Timeseries cannot be used"; break;
		case 5057: e = "Must be an array of type double"; break;
		case 5058: e = "Must be an array of type float"; break;
		case 5059: e = "Must be an array of type long"; break;
		case 5060: e = "Must be an array of type int"; break;
		case 5061: e = "Must be an array of type short"; break;
		case 5062: e = "Must be an array of type char"; break;
		
		//-- Operations with OpenCL
		case 5100: e = "OpenCL functions are not supported on this computer"; break;
		case 5101: e = "Internal error occurred when running OpenCL"; break;
		case 5102: e = "Invalid OpenCL handle"; break;
		case 5103: e = "Error creating the OpenCL context"; break;
		case 5104: e = "Failed to create a run queue in OpenCL"; break;
		case 5105: e = "Error occurred when compiling an OpenCL program"; break;
		case 5106: e = "Too long kernel name (OpenCL kernel)"; break;
		case 5107: e = "Error creating an OpenCL kernel"; break;
		case 5108: e = "Error occurred when setting parameters for the OpenCL kernel"; break;
		case 5109: e = "OpenCL program runtime error"; break;
		case 5110: e = "Invalid size of the OpenCL buffer"; break;
		case 5111: e = "Invalid offset in the OpenCL buffer"; break;
		case 5112: e = "Failed to create an OpenCL buffer"; break;
		
		//-- Operations with WebRequest
		case 5200: e = "Invalid URL"; break;
		case 5201: e = "Failed to connect to specified URL"; break;
		case 5202: e = "Timeout exceeded"; break;
		case 5203: e = "HTTP request failed"; break;

		//-- trading errors
		case 10004: e = "Requote occured"; break;
		case 10006: e = "Order is not accepted by the server"; break;
		case 10007: e = "Request canceled by trader"; break;
		case 10010: e = "Only part of the request was completed"; break;
		case 10011: e = "Request processing error"; break;
		case 10012: e = "Request canceled by timeout"; break;
		case 10013: e = "Invalid request"; break;
		case 10014: e = "Invalid volume"; break;
		case 10015: e = "Invalid price"; break;
		case 10016: e = "Invalid SL or TP"; break;
		case 10017: e = "Trading is disabled"; break;
		case 10018: e = "Market is closed"; break;
		case 10019: e = "Not enough money to trade"; break;
		case 10020: e = "Prices changed"; break;
		case 10021: e = "There are no quotes to process the request"; break;
		case 10022: e = "Invalid expiration date in the order request"; break;
		case 10023: e = "Order state changed"; break;
		case 10024: e = "Too frequent requests"; break;
		case 10025: e = "No changes in request"; break;
		case 10026: e = "Autotrading is disabled by the server"; break;
		case 10027: e = "Autotrading is disabled by the client terminal"; break;
		case 10028: e = "Request locked for processing"; break;
		case 10029: e = "Order or trade frozen"; break;
		case 10030: e = "Invalid order filling type"; break;
		case 10031: e = "No connection with the trade server"; break;
		case 10032: e = "Operation is allowed only for live accounts"; break;
		case 10033: e = "The number of pending orders has reached the limit"; break;
		case 10034: e = "The volume of orders and trades for the symbol has reached the limit"; break;
		case 10035: e = "Incorrect or prohibited order type"; break;
		case 10036: e = "Position with the specified POSITION_IDENTIFIER has already been closed"; break;
		case 10038: e = "A close volume exceeds the current position volume"; break;
		case 10039: e = "A close order already exists for a specified position"; break;
		//-- User-Defined Errors
		case 65536: e = "User defined errors"; break;
		default:	e = "Unknown error";
	}

	StringConcatenate(e, e," (",error_code,")");
	
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

ENUM_ORDER_TYPE_TIME ExpirationTypeByTime(string symbol, datetime expiration)
{
	datetime now                   = TimeCurrent();
	ENUM_ORDER_TYPE_TIME type_time = ORDER_TIME_GTC;

	// Detect Type Time
	if (expiration == 0 || expiration <= now)
	{
		type_time = ORDER_TIME_GTC;
	}
	else if (expiration == (datetime)(MathFloor((now + 86400.0) / 86400.0) * 86400.0))
	{
		type_time = ORDER_TIME_DAY;
	}
	else
	{
		type_time = ORDER_TIME_SPECIFIED;
	}

	// What if certain Type Time is not allowed?
	if (type_time == ORDER_TIME_GTC && !IsExpirationTypeAllowed(symbol, SYMBOL_EXPIRATION_GTC))
	{
		type_time = ORDER_TIME_DAY;
	}
	
	if (type_time == ORDER_TIME_DAY && !IsExpirationTypeAllowed(symbol, SYMBOL_EXPIRATION_DAY))
	{
		type_time = ORDER_TIME_SPECIFIED;
	}

	// Return Type Time
	return type_time;
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

		int total = PositionsTotal();

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
		return (long)PositionGetTicket(index);
	}

	datetime GetExpirationFromObject(long ticket)
	{
		datetime expiration = (datetime)0;
		
		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;

		if (ObjectFind(chartID, objectName) == chartID)
		{
			expiration = (datetime)ObjectGetInteger(chartID, objectName, OBJPROP_TIME);
		}

		return expiration;
	}

	bool RemoveExpirationObject(long ticket)
	{
		bool success      = false;
		string objectName = "";

		objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		success    = ObjectDelete(chartID, objectName);

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
		if (!PositionSelectByTicket(ticket)) return false;

		string objectName = chartObjectPrefix + IntegerToString(ticket) + chartObjectSuffix;
		double price      = OrderOpenPrice();

		if (ObjectFind(chartID, objectName) == chartID)
		{
			ObjectSetInteger(chartID, objectName, OBJPROP_TIME, expiration);
			ObjectSetDouble(chartID, objectName, OBJPROP_PRICE, price);
		}
		else
		{
			ObjectCreate(chartID, objectName, OBJ_ARROW, 0, expiration, price);
		}

		ObjectSetInteger(chartID, objectName, OBJPROP_ARROWCODE, 77);
		ObjectSetInteger(chartID, objectName, OBJPROP_HIDDEN, true);
		ObjectSetInteger(chartID, objectName, OBJPROP_ANCHOR, ANCHOR_TOP);
		ObjectSetInteger(chartID, objectName, OBJPROP_COLOR, clrRed);
		ObjectSetInteger(chartID, objectName, OBJPROP_SELECTABLE, false);
		ObjectSetInteger(chartID, objectName, OBJPROP_TIMEFRAMES, OBJ_NO_PERIODS);
		ObjectSetString(chartID, objectName, OBJPROP_TEXT, TimeToString(expiration));

		return true;
	}
	
	bool TradeExists(long ticket)
	{
		bool exists  = false;

		for (int i = 0; i < PositionsTotal(); i++)
		{
			long positionTicket = (long)PositionGetTicket(i);

			if (!positionTicket) continue;

			if (positionTicket == ticket)
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
	string LimitsOrStops = "",
	int unused           = 0, // for MQL4 compatibility
	bool onTrade         = false
) {
	//-- db
	static string markets[];
	static string market0	= "-";
	static int markets_size = 0;
	
	static string groups[];
	static string group0	  = "-";
	static int groups_size = 0;
	
	//-- local variables
	bool type_pass	  = false;
	bool market_pass = false;
	bool group_pass  = false;

	int i;
	long type;
	ulong magic_number;
	string symbol;
	
	// Trades
	if (onTrade == false)
	{
		type         = OrderType();
		magic_number = OrderMagicNumber();
		symbol       = OrderSymbol();
	}
	else
	{
		type         = e_attrType();
		magic_number = e_attrMagicNumber();
		symbol       = e_attrSymbol();
	}
	
	// Trades && History trades
	if (LimitsOrStops == "")
	{
		if (
				(BuysOrSells == "both"  && (type == ORDER_TYPE_BUY || type == ORDER_TYPE_SELL))
			|| (BuysOrSells == "buys"  && type == ORDER_TYPE_BUY)
			|| (BuysOrSells == "sells" && type == ORDER_TYPE_SELL)
			)
		{
			type_pass = true;
		}
	}
	// Pending orders
	else
	{
		if (
				(BuysOrSells == "both" && (type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_BUY_STOP || type == ORDER_TYPE_SELL_LIMIT || type == ORDER_TYPE_SELL_STOP))
			||	(BuysOrSells == "buys" && (type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_BUY_STOP))
			|| (BuysOrSells == "sells" && (type == ORDER_TYPE_SELL_LIMIT || type == ORDER_TYPE_SELL_STOP))
			)
		{
			if (
					(LimitsOrStops == "both" && (type == ORDER_TYPE_BUY_STOP || type == ORDER_TYPE_SELL_STOP || type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_SELL_LIMIT))
				||	(LimitsOrStops == "stops" && (type == ORDER_TYPE_BUY_STOP || type == ORDER_TYPE_SELL_STOP))
				|| (LimitsOrStops == "limits" && (type == ORDER_TYPE_BUY_LIMIT || type == ORDER_TYPE_SELL_LIMIT))	
				)
			{
				type_pass = true;
			}
		}
	}
	if (type_pass == false) {return false;}
	
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
				StringExplode(",", group, groups);
				groups_size = ArraySize(groups);

				for(i = 0; i < groups_size; i++)
				{
					groups[i] = StringTrim(groups[i]);

					if (groups[i] == "")
					{
						groups[i] = "0";
					}
				}
			}

			for(i = 0; i < groups_size; i++)
			{
				if (magic_number == (MagicStart + (int)groups[i]))
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

	if (group_pass == false) {return false;}
	
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
					ArrayResize(markets,1);
					markets[0] = Symbol();
				}
				else
				{
					StringExplode(",", market, markets);
					markets_size = ArraySize(markets);

					for(i = 0; i < markets_size; i++)
					{
						markets[i] = StringTrim(markets[i]);

						if (markets[i] == "")
						{
							markets[i] = Symbol();
						}
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

	if (market_pass == false) {return false;}
 
	return(true);
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
				((pool == 0 || pool == 1) && TimeCurrent() - OrderOpenTime() < 3) // skip for brand new trades
				||
				(
					// exclude expired pending orders
					!historyTrades
					&& OrderExpiration() > 0
					&& OrderExpiration() <= OrderCloseTime()
				)
			) {
				continue;
			}

			if (lots == 0.0)
			{
				lots = OrderLots();
			}

			profit = OrderClosePrice() - OrderOpenPrice();
			profit = NormalizeDouble(profit, SymbolDigits(OrderSymbol()));
			
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

double HighestFromTo(string symbol, ENUM_TIMEFRAMES timeframe, datetime time1, datetime time2, int what_to_get=0)
{
	static datetime HighestTime = 0;
	static double HighestID     = 0.0;

	double retval     = 0.0;
	double HighestVal = 0;

	if (HighestTime == 0) {HighestTime = TimeCurrent();}

	//-- Time mode ---------------------------------------------------------------------
	if (time1 > 1000000)
	{
		double CandleHigh = 0.0;
		int x1            = iBarShift(symbol, timeframe, time1, false);
		int x2            = iBarShift(symbol, timeframe, time2, false);

		if (x1 < x2)
		{
			x1 = iBarShift(symbol, timeframe, (time1 - 86400), false);
		}

		if (x1 < 0 || x2 < 0)
		{
			return -1;
		}

		for (int i = x2; i <= x1; i++)
		{
			CandleHigh = iHigh(symbol, timeframe, i);

			if (CandleHigh > HighestVal)
			{
				HighestVal  = CandleHigh;
				HighestTime = iTime(symbol, timeframe, i);
				HighestID   = i;
			}
		}
	}
	//-- Bars mode ---------------------------------------------------------------------
	else
	{
		int shift = 0;

		if (time1 == time2)
		{
			shift = (int)time1;
		}
		else
		{
			int totalbars = iBars(symbol, timeframe) - 1;

			if (time2 > totalbars || time2 == 0)
			{
				time2 = totalbars;
			}

			shift = iHighest(symbol, timeframe, MODE_HIGH, (int)(time2-time1)+1, (int)time1);
		}

		HighestVal  = iHigh(symbol, timeframe, shift);
		HighestTime = iTime(symbol, timeframe, shift);
		HighestID   = shift;
	}

	retval = HighestVal;

	if (what_to_get == 2)
	{
		retval = (double)HighestTime;
	}
	else if (what_to_get == 0)
	{
		retval = HighestID;
	}

	retval = NormalizeDouble(retval, (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS));

	return retval;
}

bool HistoryTradeSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both"
) {
	if (LoadHistoryTrade(index, "select_by_pos") && LoadedType() == 3)
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
	if (to_date == 0) {to_date = TimeCurrent() + 1;}
	
	HistorySelect(from_date, to_date);
	
	SelectedHistoryFromTime(from_date);
	SelectedHistoryToTime(to_date);
	
	return HistoryDealsTotal();
}

void HistoryTradesTotalReset()
{
	if (SelectedHistoryToTime() > 0 || SelectedHistoryFromTime() > 0) {
		HistorySelect(SelectedHistoryFromTime(), SelectedHistoryToTime());
	}
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

//+------------------------------------------------------------------+
//| Checks if the specified expiration mode is allowed               |
//+------------------------------------------------------------------+
bool IsExpirationTypeAllowed(string symbol,int exp_type)
  {
//--- Obtain the value of the property that describes allowed expiration modes
   int expiration=(int)SymbolInfoInteger(symbol,SYMBOL_EXPIRATION_MODE);
//--- Return true, if mode exp_type is allowed
   return((expiration&exp_type)==exp_type);
  }

bool IsFillingTypeAllowed(string symbol,int fill_type)
{
//--- Obtain the value of the property that describes allowed filling modes
   int filling=(int)SymbolInfoInteger(symbol,SYMBOL_FILLING_MODE);
//--- Return true, if mode fill_type is allowed
   return((filling & fill_type)==fill_type);
}

bool IsOrderTypeBuy()
{
	int loadedType = LoadedType();

	if (loadedType == 1)
	{
		if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY)
		{
			return true;
		}
	}
	else if (loadedType == 3)
	{
		return (OrderType() == ORDER_TYPE_BUY);
	}
	else if (loadedType == 4)
	{
		if (
			HistoryOrderGetInteger(OrderTicket(), ORDER_TYPE) == ORDER_TYPE_BUY_LIMIT
			|| HistoryOrderGetInteger(OrderTicket(), ORDER_TYPE) == ORDER_TYPE_BUY_STOP
		) {
			return true;
		}
	}
	else if (
		OrderGetInteger(ORDER_TYPE) == ORDER_TYPE_BUY_LIMIT
		|| OrderGetInteger(ORDER_TYPE) == ORDER_TYPE_BUY_STOP
	) {
		return true;
	}

	return false;
}

bool IsOrderTypeSell()
{
	int loadedType = LoadedType();

	if (loadedType == 1)
	{
		if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_SELL)
		{
			return true;
		}
	}
	else if (loadedType == 3)
	{
		return (OrderType() == ORDER_TYPE_SELL);
	}
	else if (loadedType == 4)
	{
		if (
			HistoryOrderGetInteger(OrderTicket(), ORDER_TYPE) == ORDER_TYPE_SELL_LIMIT
			|| HistoryOrderGetInteger(OrderTicket(), ORDER_TYPE) == ORDER_TYPE_SELL_STOP
		) {
			return true;
		}
	}
	else if (
		OrderGetInteger(ORDER_TYPE) == ORDER_TYPE_SELL_LIMIT
		|| OrderGetInteger(ORDER_TYPE) == ORDER_TYPE_SELL_STOP
	) {
		return true;
	}

	return false;
}

bool LoadHistoryOrder(int index, string selectby="select_by_pos")
{
	if (selectby == "select_by_pos")
	{
		ulong ticket  = HistoryOrderGetTicket(index);

		if (ticket > 0)
		{
			if (
				   HistoryOrderGetInteger(ticket,ORDER_TYPE) >= 2
				&& HistoryOrderSelect(ticket))
			{
				OrderTicket(ticket);

				LoadedType(4);

				return true;
			}
			else if (
				   HistoryOrderGetInteger(ticket,ORDER_TYPE) < 2
				&& HistoryOrderSelect(HistoryDealGetInteger(ticket, DEAL_POSITION_ID))
				&& (ENUM_DEAL_ENTRY)HistoryDealGetInteger(ticket, DEAL_ENTRY) == DEAL_ENTRY_OUT
				)
			{
				OrderTicket(ticket);

				LoadedType(3);

				return true;
			}
		}
	}

	if (selectby == "select_by_ticket")
	{
		if (HistoryOrderSelect(index))
		{
			HistoryDealSelect(index); // Select deal, it will be just one with pos=0
			HistoryDealGetTicket(0); // Load the one and only selected deal

			OrderTicket(index);

			if (HistoryOrderGetInteger(index, ORDER_TYPE) >= 2)
			{
				LoadedType(4);

				return true;
			}
			else
			{
				LoadedType(3);

				return true;
			}
		}
	}

	return false;
}

bool LoadHistoryTrade(int index, string selectby="select_by_pos")
{
	if (selectby == "select_by_pos")
	{
		ulong ticket  = HistoryDealGetTicket(index);

		if (ticket > 0)
		{
			if (
				   //HistoryDealSelect(ticket) - commented, because it breaks HistorySelect()
				   HistoryDealGetInteger(ticket, DEAL_TYPE) < 2
				&& (ENUM_DEAL_ENTRY)HistoryDealGetInteger(ticket, DEAL_ENTRY) == DEAL_ENTRY_OUT
				)
			{
				OrderTicket(ticket);

				LoadedType(3);

				return true;
			}
		}
	}

	if (selectby == "select_by_ticket")
	{
		if (HistoryDealSelect(index))
		{
			OrderTicket(index);

			if (HistoryDealGetInteger(index, DEAL_TYPE) < 2)
			{
				LoadedType(3);

				return true;
			}
		}
	}

	return false;
}

bool LoadPendingOrder(long ticket)
{
	bool success = false;

   if (OrderSelect(ticket))
	{
		// The order could be from any type, so check the type
		// and allow only true pending orders.
		ENUM_ORDER_TYPE type = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);

		if (
			   type == ORDER_TYPE_BUY_LIMIT
			|| type == ORDER_TYPE_SELL_LIMIT
			|| type == ORDER_TYPE_BUY_STOP
			|| type == ORDER_TYPE_SELL_STOP
		) {
			LoadedType(2);
			OrderTicket(ticket);
			success = true;
		}
	}

   return success;
}

bool LoadPosition(ulong ticket)
{
   bool success = PositionSelectByTicket(ticket);

   if (success) {
		LoadedType(1);
		OrderTicket(ticket);
	}

   return success;
}

string LoadedObjectName(string name = "")
{
	static string memory = "";

	if (name != "") {memory = name;}

	return memory;
}

int LoadedType(int type = 0)
{
	// 1 - position
	// 2 - pending order
	// 3 - history position
	// 4 - history pending order

	static int memory;

	if (type > 0) {memory = type;}

	return memory;
}

bool LoopedResume()
{
	long ticket = attrTicketInLoop();
	int type    = attrTypeInLoop();

	if (ticket > 0 && ticket != OrderTicket()) {
		     if (type == 1) return LoadPosition(ticket);
		else if (type == 2) return LoadPendingOrder(ticket);
		else if (type == 3) return LoadHistoryOrder((int)ticket, "select_by_ticket");
	}

	return false;
}

double LowestFromTo(string symbol, ENUM_TIMEFRAMES timeframe, datetime time1, datetime time2, int what_to_get=0)
{
	static datetime LowestTime = 0;
	static double LowestID     = 0.0;

	double retval    = 0.0;
	double LowestVal = 0.0;

	if (LowestTime == 0) {LowestTime = TimeCurrent();}

	//-- Time mode ---------------------------------------------------------------------
	if (time1 > 1000000)
	{
		double CandleLow = 0.0;
		int x1           = iBarShift(symbol, timeframe, time1, false);
		int x2           = iBarShift(symbol, timeframe, time2, false);

		if (x1 < x2)
		{
			x1 = iBarShift(symbol, timeframe, (time1 - 86400), false);
		}

		if (x1 < 0 || x2 < 0)
		{
			return -1;
		}

		for (int i = x2; i <= x1; i++)
		{
			CandleLow = iLow(symbol, timeframe, i);

			if (CandleLow < LowestVal || LowestVal == 0)
			{
				LowestVal  = CandleLow;
				LowestTime = iTime(symbol, timeframe, i);
				LowestID   = i;
			}
		}
	}
	//-- Bars mode ---------------------------------------------------------------------
	else
	{
		int shift = 0;

		if (time1 == time2)
		{
			shift = (int)time1;
		}
		else
		{
			int totalbars = iBars(symbol, timeframe) - 1;

			if (time2 > totalbars || time2 == 0)
			{
				time2 = totalbars;
			}

			shift = iLowest(symbol, timeframe, MODE_LOW, (int)((time2-time1)+1), (int)time1);
		}

		LowestVal  = iLow(symbol, timeframe, shift);
		LowestTime = iTime(symbol, timeframe, shift);
		LowestID   = shift;
	}

	retval = LowestVal;

	if (what_to_get == 2)
	{
		retval = (double)LowestTime;
	}
	else if (what_to_get == 0)
	{
		retval = LowestID;
	}
	
	retval = NormalizeDouble(retval, (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS));

	return retval;
}

bool ModifyOrder(
	long ticket,
	double op,
	double sll = 0,
	double tpl = 0,
	double slp = 0,
	double tpp = 0,
	datetime exp = 0,
	color clr = clrNONE
) {
	int bs = 1;

	if (LoadedType() == 1)
	{
		if (OrderType() == POSITION_TYPE_SELL)
		{bs = -1;} // Positive when Buy, negative when Sell
	}
	else
	{
		if (
				OrderType() == ORDER_TYPE_SELL
			|| OrderType() == ORDER_TYPE_SELL_STOP
			|| OrderType() == ORDER_TYPE_SELL_LIMIT
		)
		{bs = -1;} // Positive when Buy, negative when Sell
	}

	while (true)
	{
		uint time0 = GetTickCount();
		
		if (LoadedType() == 1)
		{
			if (!PositionSelectByTicket(ticket)) {return false;}
		}
		else
		{
			if (!OrderSelect(ticket)) {return false;}
		}

		string symbol      = OrderSymbol();
		int type           = OrderType();
		int digits         = (int)SymbolInfoInteger(symbol,SYMBOL_DIGITS);
		double ask         = SymbolInfoDouble(symbol,SYMBOL_ASK);
		double bid         = SymbolInfoDouble(symbol,SYMBOL_BID);
		double point       = SymbolInfoDouble(symbol,SYMBOL_POINT);
		double stoplevel   = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);
		double freezelevel = point * SymbolInfoInteger(symbol, SYMBOL_TRADE_FREEZE_LEVEL);

		if (OrderType() < 2) {op = OrderOpenPrice();} else {op = NormalizeDouble(op,digits);}
		
		sll = NormalizeDouble(sll,digits);
		tpl = NormalizeDouble(tpl,digits);

		if (op < 0 || op >= EMPTY_VALUE || sll < 0 || slp < 0 || tpl < 0 || tpp < 0)
		{
			break;
		}

		//-- OP -----------------------------------------------------------
		// https://book.mql4.com/appendix/limits
		if (type == ORDER_TYPE_BUY_LIMIT)
		{
			if (ask - op < stoplevel) {op = ask - stoplevel;}
			if (ask - op <= freezelevel) {op = ask - freezelevel - point;}
		}
		else if (type == ORDER_TYPE_BUY_STOP)
		{
			if (op - ask < stoplevel) {op = ask + stoplevel;}
			if (op - ask <= freezelevel) {op = ask + freezelevel + point;}
		}
		else if (type == ORDER_TYPE_SELL_LIMIT)
		{
			if (op - bid < stoplevel) {op = bid + stoplevel;}
			if (op - bid <= freezelevel) {op = bid + freezelevel + point;}
		}
		else if (type == ORDER_TYPE_SELL_STOP)
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
			sl  = 0;
			tp  = 0;

			double askbid = ask;

			if (bs < 0) {askbid = bid;}

			if (vsl > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL > 0 || EMERGENCY_STOPS_ADD > 0)
				{
					sl = vsl - EMERGENCY_STOPS_REL*MathAbs(askbid-vsl)*bs;

					if (sl <= 0) {sl = askbid;}
					sl = sl-toDigits(EMERGENCY_STOPS_ADD,symbol)*bs;
				}
			}

			if (vtp > 0 || USE_EMERGENCY_STOPS == "always")
			{
				if (EMERGENCY_STOPS_REL>0 || EMERGENCY_STOPS_ADD>0)
				{
					tp=vtp+EMERGENCY_STOPS_REL*MathAbs(vtp-askbid)*bs;

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
		
		// check if needed to modify
		if (LoadedType() == 1)
		{
			if (
				   sl == NormalizeDouble(PositionGetDouble(POSITION_SL),digits)
				&& tp == NormalizeDouble(PositionGetDouble(POSITION_TP),digits)
				&& exp == OrderExpirationTime()
			) {
				return true;
			}
		}
		else
		{
			if (
				   op == NormalizeDouble(OrderGetDouble(ORDER_PRICE_OPEN),digits)
				&& sl == NormalizeDouble(OrderGetDouble(ORDER_SL),digits)
				&& tp == NormalizeDouble(OrderGetDouble(ORDER_TP),digits)
			) {
				return true;
			}
		}

		// prepare to modify
		MqlTradeRequest request;
		MqlTradeResult result;
		MqlTradeCheckResult check_result;
		ZeroMemory(request);
		ZeroMemory(result);
		ZeroMemory(check_result);

		// modify
		if (LoadedType() == 1)
		{
			// in case of position, only sl and tp are going to be modified
			request.action   = TRADE_ACTION_SLTP;
			request.symbol   = symbol;
			request.position = PositionGetInteger(POSITION_TICKET);
			request.magic    = PositionGetInteger(POSITION_MAGIC);
			request.comment  = PositionGetString(POSITION_COMMENT);
		}
		else
		{
			// in case of pending order
			request.action     = TRADE_ACTION_MODIFY;
			request.order      = ticket;
			request.price      = op;
			request.volume     = OrderGetDouble(ORDER_VOLUME_CURRENT);
			request.magic      = OrderGetInteger(ORDER_MAGIC);
			request.type_time  = ExpirationTypeByTime(symbol, exp);
			request.expiration = exp;
			request.comment    = OrderGetString(ORDER_COMMENT);

			//-- filling type
			uint filling = (uint)SymbolInfoInteger(request.symbol,SYMBOL_FILLING_MODE);

			if (filling == SYMBOL_FILLING_FOK)
			{
				request.type_filling = ORDER_FILLING_FOK;
			}
			else if (filling == SYMBOL_FILLING_IOC)
			{
				request.type_filling = ORDER_FILLING_IOC;
			}
		}
		
		request.sl = sl;
		request.tp = tp;

		if (!OrderCheck(request,check_result))
		{
			Print("OrderCheck() failed: " + (string)check_result.comment + " (" + (string)check_result.retcode + ")");

			return false;
		}

		success = OrderSend(request, result);

		//-- error check --------------------------------------------------
		if (result.retcode != TRADE_RETCODE_DONE)
		{
			string errmsgpfx = "Modify error";
			int erraction = CheckForTradingError(result.retcode, errmsgpfx);

			switch(erraction)
			{
				case 0: break;    // no error
				case 1: continue; // overcomable error
				case 2: break;    // fatal error
			}

			return false;
		}

		//-- finish work --------------------------------------------------
		if (result.retcode == TRADE_RETCODE_DONE)
		{
			//== Wait until MT5 updates its cache
			int w;

			for (w = 0; w < 5000; w++)
			{
				if (((LoadedType() == 1 && PositionSelectByTicket(ticket)) || OrderSelect(ticket)) && (sl == NormalizeDouble(OrderStopLoss(), digits) && tp == NormalizeDouble(OrderTakeProfit(), digits)))
				{
					break;
				}

				Sleep(1);
			}

			if (w == 5000)
			{
				Print("Check error: Modify order stops");  
			}

			if (!((LoadedType() == 1 && PositionSelectByTicket(ticket)) || OrderSelect(ticket)) || (sl != NormalizeDouble(OrderStopLoss(), digits) || tp != NormalizeDouble(OrderTakeProfit(), digits)))
			{
				Print("Something went wrong when trying to modify the stops");

				return false;
			}

			if (!((LoadedType() == 1 && PositionSelectByTicket(ticket)) || OrderSelect(ticket)))
			{
				return false;
			}

			OrderModified((int)ticket);
		}

		break;
	}

	OnTrade();

	return true;
}

bool ModifyStops(ulong ticket, double sl=-1, double tp=-1, color clr=clrNONE)
{
   return ModifyOrder(
		ticket,
		OrderOpenPrice(),
		sl,
		tp,
		0,
		0,
		OrderExpirationTime()
	);
}

int OCODriver()
{
	static long last_known_ticket = 0;
	static long orders1[];
	static long orders2[];
	int i, size;

	int total = OrdersTotal();

	for (int pos=total-1; pos>=0; pos--)
	{
		if (LoadPendingOrder(OrderGetTicket(pos)))
		{
			long ticket = OrderTicket();

			//-- end here if we reach the last known ticket
			if (ticket == last_known_ticket) {break;}

			//-- set the last known ticket, only if this is the first iteration
			if (pos == total-1) {
				last_known_ticket = ticket;
			}

			//-- we are searching for pending orders, skip trades
			if (OrderType() <= ORDER_TYPE_SELL) {continue;}

			//--
			if (StringSubstr(OrderComment(), 0, 5) == "[oco:")
			{
				int ticket_oco = StrToInteger(StringSubstr(OrderComment(), 5, StringLen(OrderComment())-1)); 

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

	for (i = size - 1; i >= 0; i--)
	{
		if (LoadPendingOrder(orders1[i]) == false || OrderType() <= ORDER_TYPE_SELL)
		{
			if (LoadPendingOrder(orders2[i])) {
				if (DeleteOrder(orders2[i]))
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
		if (LoadPendingOrder(orders2[i]) == false || OrderType() <= ORDER_TYPE_SELL)
		{
			if (LoadPendingOrder(orders1[i])) {
				if (DeleteOrder(orders1[i]))
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

int ObjectGetShiftByValue(string name, double value) {
   ENUM_TIMEFRAMES timeframe=TFMigrate(PERIOD_CURRENT);
   datetime Arr[];
   MqlRates mql4[];
   if(ObjectGetTimeByValue(0,name,value)<0) {return(-1);}
   CopyRates(NULL,timeframe,0,1,mql4);
      if(CopyTime(NULL, timeframe, mql4[0].time, ObjectGetTimeByValue(0,name,value), Arr)>0) {return(ArraySize(Arr)-1);}
      else {return(-1);}
}

int ObjectGetShiftByValue(long chart_id, string name, double value) {
   ENUM_TIMEFRAMES timeframe=TFMigrate(PERIOD_CURRENT);
   datetime Arr[];
   MqlRates mql4[];
   if(ObjectGetTimeByValue(chart_id,name,value)<0) {return(-1);}
   CopyRates(NULL, timeframe, 0, 1, mql4);
   if(CopyTime(NULL, timeframe, mql4[0].time, ObjectGetTimeByValue(chart_id,name,value),Arr)>0) {return(ArraySize(Arr)-1);}
   else {return(-1);}
}

double ObjectGetValueByShift(string name, int shift)
{
	MqlRates rates[];
	CopyRates(NULL, PERIOD_CURRENT, shift, 1, rates);

	return ObjectGetValueByTime(0, name, rates[0].time, 0);
}

double ObjectGetValueByShift(long ctart_id, string name, int shift)
{
	MqlRates rates[];
	CopyRates(NULL, PERIOD_CURRENT, shift, 1, rates);

	return ObjectGetValueByTime(ctart_id, name, rates[0].time, 0);
}

bool OnTimerSet(double seconds)
{
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
		ENUM_POSITION_TYPE type;
		ENUM_POSITION_REASON reason;
		long     positionId,
		         magic,
		         ticket,
		         timeMs,
		         timeUpdateMs;
		datetime time,
					timeExpiration,
		         timeUpdate;
		double   priceCurrent,
		         priceOpen,
		         profit,
		         stopLoss,
		         swap,
		         takeProfit,
		         volume;
		string   externalId,
		         comment,
		         symbol;
	};

	struct PendingOrder
	{
		ENUM_ORDER_TYPE type;
		ENUM_ORDER_STATE state;
		ENUM_ORDER_TYPE_FILLING typeFilling;
		ENUM_ORDER_TYPE_TIME typeTime;
		ENUM_ORDER_REASON reason;
		long     magic,
		         positionId,
		         positionById,
		         ticket,
		         timeSetupMs,
		         timeDoneMs;
		datetime timeDone,
		         timeExpiration,
		         timeSetup;
		double   priceCurrent,
		         priceOpen,
		         priceStopLimit,
		         stopLoss,
		         takeProfit,
		         volume,
		         volumeInitial;
		string   externalId,
		         comment,
		         symbol;
	};
	
	struct PositionExpirationTimes
	{
		long ticket;
		datetime timeExpiration;
	};

	//--- variables and arrays
	bool debug;
	
	// Because we can have multiple new events at once, the idea is
	// to run the detector repeatedly until no new event is detected.
	// When this variable is true, it means that the event detection
	// is repeated. It should stop repeating when no new event is detected.
	bool isRepeat;

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

		int count        = OrdersTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (OrderGetTicket(index) <= 0) continue;

			ENUM_ORDER_TYPE orderType = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);

			if (
				orderType != ORDER_TYPE_BUY_LIMIT
				&& orderType != ORDER_TYPE_SELL_LIMIT
				&& orderType != ORDER_TYPE_BUY_STOP
				&& orderType != ORDER_TYPE_SELL_STOP
				&& orderType != ORDER_TYPE_BUY_STOP_LIMIT
				&& orderType != ORDER_TYPE_SELL_STOP_LIMIT
			) {
				continue;
			}

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// enum types
			list[i].type        = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);
			list[i].state       = (ENUM_ORDER_STATE)OrderGetInteger(ORDER_STATE);
			list[i].typeFilling = (ENUM_ORDER_TYPE_FILLING)OrderGetInteger(ORDER_TYPE_FILLING);
			list[i].typeTime    = (ENUM_ORDER_TYPE_TIME)OrderGetInteger(ORDER_TYPE_TIME);
			list[i].reason      = (ENUM_ORDER_REASON)OrderGetInteger(ORDER_REASON);

			// long
			list[i].magic        = (long)OrderGetInteger(ORDER_MAGIC);
			list[i].positionId   = (long)OrderGetInteger(ORDER_POSITION_ID);
			list[i].positionById = (long)OrderGetInteger(ORDER_POSITION_BY_ID);
			list[i].ticket       = (long)OrderGetInteger(ORDER_TICKET);
			list[i].timeSetupMs  = (long)OrderGetInteger(ORDER_TIME_SETUP_MSC);
			list[i].timeDoneMs   = (long)OrderGetInteger(ORDER_TIME_DONE_MSC);

			// datetime
			list[i].timeDone       = (datetime)OrderGetInteger(ORDER_TIME_DONE);
			list[i].timeExpiration = (datetime)OrderGetInteger(ORDER_TIME_EXPIRATION);
			list[i].timeSetup      = (datetime)OrderGetInteger(ORDER_TIME_SETUP);

			// double
			list[i].priceCurrent   = OrderGetDouble(ORDER_PRICE_CURRENT);
			list[i].priceOpen      = OrderGetDouble(ORDER_PRICE_OPEN);
			list[i].priceStopLimit = OrderGetDouble(ORDER_PRICE_STOPLIMIT);
			list[i].stopLoss       = OrderGetDouble(ORDER_SL);
			list[i].takeProfit     = OrderGetDouble(ORDER_TP);
			list[i].volume         = OrderGetDouble(ORDER_VOLUME_CURRENT);
			list[i].volumeInitial  = OrderGetDouble(ORDER_VOLUME_INITIAL);

			// string
			list[i].externalId = OrderGetString(ORDER_EXTERNAL_ID);
			list[i].comment    = OrderGetString(ORDER_COMMENT);
			list[i].symbol     = OrderGetString(ORDER_SYMBOL);
		}

		return howManyAdded;
	}

	/**
	* Overloaded method 2 of 2
	*/
	int MakeListOf(Position &list[])
	{
		ArrayResize(list, 0);

		int count        = PositionsTotal();
		int howManyAdded = 0;

		for (int index = 0; index < count; index++)
		{
			if (PositionGetTicket(index) <= 0) continue;

			howManyAdded++;
			ArrayResize(list, howManyAdded);
			int i = howManyAdded - 1;

			// enum types
			list[i].type   = (ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
			list[i].reason = (ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);

			// long
			list[i].positionId   = (long)PositionGetInteger(POSITION_IDENTIFIER);
			list[i].magic        = (long)PositionGetInteger(POSITION_MAGIC);
			list[i].ticket       = (long)PositionGetInteger(POSITION_TICKET);
			list[i].timeMs       = (long)PositionGetInteger(POSITION_TIME_MSC);
			list[i].timeUpdateMs = (long)PositionGetInteger(POSITION_TIME_UPDATE_MSC);

			// datetime
			list[i].time           = (datetime)PositionGetInteger(POSITION_TIME);
			list[i].timeExpiration = (datetime)0;
			list[i].timeUpdate     = (datetime)PositionGetInteger(POSITION_TIME_UPDATE);

			// double
			list[i].priceCurrent = PositionGetDouble(POSITION_PRICE_CURRENT);
			list[i].priceOpen    = PositionGetDouble(POSITION_PRICE_OPEN);
			list[i].profit       = PositionGetDouble(POSITION_PROFIT);
			list[i].stopLoss     = PositionGetDouble(POSITION_SL);
			list[i].swap         = PositionGetDouble(POSITION_SWAP);
			list[i].takeProfit   = PositionGetDouble(POSITION_TP);
			list[i].volume       = PositionGetDouble(POSITION_VOLUME);

			// string
			list[i].externalId = PositionGetString(POSITION_EXTERNAL_ID);
			list[i].comment    = PositionGetString(POSITION_COMMENT);
			list[i].symbol     = PositionGetString(POSITION_SYMBOL);

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

		// closed
		if (reason == "") {
			for (int index = 0; index < countBefore; index++) {
				item = FindMissingItem(previousItems, currentItems);

				if (item.ticket > 0) {
					DeleteItem(previousItems, item);
					reason = "close";

					break;
				}
			}
		}

		// new
		if (reason == "") {
			for (int index = 0; index < countNow; index++) {
				item = FindMissingItem(currentItems, previousItems);

				if (item.ticket > 0) {
					if (
						item.type < 2 // it's a running trade
						&& item.ticket != attrTicketParent(item.ticket)
					) {
						// In MQL4: When a trade is closed partially, the ticket changes.
						// The original (parent) trade is closed and a new one is created,
						// with a different ticket.
						reason = "decrement";
					}
					else {
						reason = "new";
					}

					PushItem(previousItems, item);

					break;
				}
			}
		}

		// modified
		if (reason == "") {
			if (countBefore != countNow) {
				Print("OnTrade event detector: Uncovered situation reached");
			}

			for (int index = 0; index < countNow; index++) {
				int previousIndex = -1;

				ITEMS_TYPE current = currentItems[index];
				ITEMS_TYPE previous;
				previous.ticket = 0;

				for (int j = 0; j < countBefore; j++) {
					if (current.ticket == previousItems[j].ticket) {
						previousIndex = j;
						previous = previousItems[j];

						break;
					}
				}

				if (current.ticket != previous.ticket) {
					Print("OnTrade event detector: Uncovered situation reached (2)");
				}

				if (previous.volume < current.volume) {
					previousItems[previousIndex].volume = current.volume;
					item = previousItems[previousIndex];

					reason = "increment";

					break;
				}

				if (previous.volume > current.volume) {
					previousItems[previousIndex].volume = current.volume;
					item = previousItems[previousIndex];

					reason = "decrement";

					break;
				}

				if (
					previous.stopLoss != current.stopLoss
					&& previous.takeProfit != current.takeProfit
				) {
					previousItems[previousIndex].stopLoss = current.stopLoss;
					previousItems[previousIndex].takeProfit = current.takeProfit;
					item = previousItems[previousIndex];

					reason = "modify";
					detail = "sltp";

					break;
				}
				// SL modified
				else if (previous.stopLoss != current.stopLoss) {
					previousItems[previousIndex].stopLoss = current.stopLoss;
					item = previousItems[previousIndex];

					reason = "modify";
					detail = "sl";

					break;
				}
				// TP modified
				else if (previous.takeProfit != current.takeProfit) {
					previousItems[previousIndex].takeProfit = current.takeProfit;
					item = previousItems[previousIndex];

					reason = "modify";
					detail = "tp";

					break;
				}

				if (previous.timeExpiration != current.timeExpiration) {
					previousItems[previousIndex].timeExpiration = current.timeExpiration;
					item = previousItems[previousIndex];

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
	* From the source list of orders or positions, find the item that is missing
	* in the target list of orders or positions. The searching is by the item's ticket.
	*
	* If all items from the source list exist in the target list, return an empty item with ticket 0.
	* If for some item in source list there is no item in the target list, return that source item.
	*/
	template<typename T> 
	T FindMissingItem(T &source[], T &target[])
	{
		int sourceCount = ArraySize(source);
		int targetCount  = ArraySize(target);
		T item;
		item.ticket = 0;

		long ticket = 0;

		for (int i = 0; i < sourceCount; i++)
		{
			bool found = false;

			for (int j = 0; j < targetCount; j++)
			{
				if (source[i].ticket == target[j].ticket)
				{
					found = true;
					break;
				}
			}

			if (found == false)
			{
				item = source[i];
				break;
			}
		}

		return item;
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
	* Push a new item in the list
	*/
	template<typename T> 
	void PushItem(T &list[], T &item)
	{
		int listCount = ArraySize(list);

		ArrayResize(list, listCount + 1);

		list[listCount] = item;
	}

	/**
	* Overloaded method 1 of 2
	*/
	void UpdateValues(Position &item, string reason, string detail)
	{
		long ticket        = item.ticket;
		datetime timeOpen  = item.time;
		datetime timeClose = (datetime)0;
		double priceOpen   = item.priceOpen;
		double priceClose  = item.priceCurrent;
		double profit      = item.profit;
		double swap        = item.swap;
		double commission  = 0.0;
		double volume      = item.volume;

		if (reason == "close" || reason == "decrement")
		{
			if (HistorySelectByPosition(item.positionId))
			{
				int total = HistoryDealsTotal();

				if (total > 0)
				{
					long firstTicket = (long)HistoryDealGetTicket(0);
					long lastTicket  = (long)HistoryDealGetTicket(total - 1);

					// Ticket is the ticket of the previous deal, the one before the last one
					ticket = (long)HistoryDealGetTicket(total - 2);

					// Open Time and Open Price - get them from the very first deal
					priceOpen = HistoryDealGetDouble(firstTicket, DEAL_PRICE);
					timeOpen  = (datetime)HistoryDealGetInteger(firstTicket, DEAL_TIME);

					// Close Time - get it from the very last deal
					timeClose  = (datetime)HistoryDealGetInteger(lastTicket, DEAL_TIME);
					priceClose = HistoryDealGetDouble(lastTicket, DEAL_PRICE);

					profit     = HistoryDealGetDouble(lastTicket, DEAL_PROFIT);
					swap       = HistoryDealGetDouble(lastTicket, DEAL_SWAP);
					commission = HistoryDealGetDouble(lastTicket, DEAL_COMMISSION);

					volume = HistoryDealGetDouble(lastTicket, DEAL_VOLUME);

					// Find why the position has been closed
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
						ENUM_DEAL_REASON dealReason = (ENUM_DEAL_REASON)HistoryDealGetInteger(lastTicket, DEAL_REASON);
	
						switch (dealReason)
						{
							case DEAL_REASON_SL: detail = "sl"; break;
							case DEAL_REASON_TP: detail = "tp"; break;
							case DEAL_REASON_SO: detail = "so"; break;
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
		datetime timeExpiration = item.timeExpiration;

		// When the lifetime of the order is ORDER_TIME_DAY,
		// the expiration (ORDER_TIME_EXPIRATION) equals to the time of opening.
		// Here we fix this.
		if (item.typeTime == ORDER_TIME_DAY)
		{
			timeExpiration = (datetime)(MathFloor(((double)item.timeSetup + 86400.0) / 86400.0) * 86400.0);
		}

		int i = eventValuesQueueIndex;

		eventValues[i].reason = reason;
		eventValues[i].detail = detail;

		eventValues[i].priceClose     = item.priceCurrent;
		eventValues[i].timeClose      = item.timeDone;
		eventValues[i].comment        = item.comment;
		eventValues[i].commission     = 0.0;
		eventValues[i].timeExpiration = timeExpiration;
		eventValues[i].volume         = item.volume;
		eventValues[i].magic          = item.magic;
		eventValues[i].priceOpen      = item.priceOpen;
		eventValues[i].timeOpen       = item.timeSetup;
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
			" <<<\n",
			" | reason: ", e_Reason(),
			" | detail: ", e_ReasonDetail(),
			" | ticket: ", e_attrTicket(),
			" | type: ", EnumToString((ENUM_ORDER_TYPE)e_attrType()),
			"\n",
			" | openTime : ", e_attrOpenTime(),
			" | openPrice : ", e_attrOpenPrice(),
			"\n",
			" | closeTime: ", e_attrCloseTime(),
			" | closePrice: ", e_attrClosePrice(),
			"\n",
			" | volume: ", e_attrLots(),
			" | sl: ", e_attrStopLoss(),
			" | tp: ", e_attrTakeProfit(),
			" | profit: ", e_attrProfit(),
			" | swap: ", e_attrSwap(),
			" | exp: ", e_attrExpiration(),
			" | comment: ", e_attrComment(),
			"\n >>>"
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
		isRepeat = false;
		eventValuesQueueIndex = -1;
	};

	bool Start()
	{
		AddEventValues();

		if (isRepeat == false) {
			MakeListOf(pendingOrders);
			MakeListOf(positions);
		}

		bool success = false;

		if (!success) success = DetectEvent(previousPendingOrders, pendingOrders);

		if (!success) success = DetectEvent(previousPositions, positions);

		//CopyList(previousPendingOrders, pendingOrders);
		//CopyList(previousPositions, positions);

		isRepeat = success; // Repeat until no success

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
	long ticket = PositionGetInteger(POSITION_TICKET);
	long positionID = PositionGetInteger(POSITION_IDENTIFIER);

	HistorySelectByPosition(positionID);

	double openPrice = 0;
	int total = HistoryDealsTotal();

	if (total > 0) {
		double orderClosePrice = HistoryDealGetDouble(HistoryDealGetTicket(total -1), DEAL_PRICE);
		openPrice = orderClosePrice;
	}

	PositionSelectByTicket(ticket);
	
	HistoryTradesTotalReset();

	return openPrice;
}

double OrderClosePrice()
{
	int type = LoadedType();

	if (type == 1)
	{
		if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY)
		{
			return SymbolInfoDouble(PositionGetString(POSITION_SYMBOL), SYMBOL_BID);
		}
		else if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_SELL)
		{
			return SymbolInfoDouble(PositionGetString(POSITION_SYMBOL), SYMBOL_ASK);
		}
	}
	if (type == 3) {
		ulong dealTicket = OrderTicket();
		ENUM_DEAL_ENTRY dealEntry = (ENUM_DEAL_ENTRY)HistoryDealGetInteger(dealTicket, DEAL_ENTRY);
		long positionId = HistoryDealGetInteger(dealTicket, DEAL_POSITION_ID);
		double price = HistoryDealGetDouble(dealTicket, DEAL_PRICE);

		HistorySelectByPosition(positionId);
		
		// Search for the first OUT deal after this one and get the price from it

		int total = HistoryDealsTotal();
	
		for (int i = total - 1; i >= 0; i--) {
			ulong ticket = HistoryDealGetTicket(i);
	
			if (ticket == dealTicket) {
				// Get the current value if the deal is the the last one
				if (i == total - 1 && PositionSelectByDeal(ticket))
				{
					if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY)
					{
						price = SymbolInfoDouble(PositionGetString(POSITION_SYMBOL), SYMBOL_BID);
					}
					else if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_SELL)
					{
						price = SymbolInfoDouble(PositionGetString(POSITION_SYMBOL), SYMBOL_ASK);
					}
				}
		
				break;
			}
	
			if (HistoryDealGetInteger(ticket, DEAL_ENTRY) == DEAL_ENTRY_OUT) {
				price = HistoryDealGetDouble(ticket, DEAL_PRICE);
			}
		}
		
		HistoryTradesTotalReset();
		
		return price;
	}
	if (type == 4) {return HistoryDealGetDouble(OrderTicket(), DEAL_PRICE);}

	return(OrderGetDouble(ORDER_PRICE_CURRENT));
}

datetime OrderCloseTime()
{
	int type = LoadedType();

	if (type == 1)
	{
		return 0;
	}

	if (type == 3)
	{
		ulong dealTicket = OrderTicket();
		ENUM_DEAL_ENTRY dealEntry = (ENUM_DEAL_ENTRY)HistoryDealGetInteger(dealTicket, DEAL_ENTRY);
		long positionId = HistoryDealGetInteger(dealTicket, DEAL_POSITION_ID);
		datetime time = (datetime)HistoryDealGetInteger(dealTicket, DEAL_TIME);

		HistorySelectByPosition(positionId);

		// Search for the first OUT deal after this one and get the time from it

		int total = HistoryDealsTotal();

		for (int i = total - 1; i >= 0; i--) {
			ulong ticket = HistoryDealGetTicket(i);

			if (ticket == dealTicket) {
				if (i == total - 1 && PositionSelectByDeal(ticket))
				{
					time = (datetime)0;
				}

				break;
			}

			if (HistoryDealGetInteger(ticket, DEAL_ENTRY) == DEAL_ENTRY_OUT) {
				time = (datetime)HistoryDealGetInteger(ticket, DEAL_TIME);
			}
		}

		HistoryTradesTotalReset();

		return time;
	}

	if (type == 4)
	{
		return (datetime)HistoryOrderGetInteger(OrderTicket(),ORDER_TIME_DONE);
	}
	
	return (datetime)OrderGetInteger(ORDER_TIME_DONE);
}

string OrderComment()
{
	int type = LoadedType();

	if (type == 1) {return PositionGetString(POSITION_COMMENT);}
	if (type == 3) {return HistoryOrderGetString(HistoryDealGetInteger(OrderTicket(), DEAL_POSITION_ID), ORDER_COMMENT);}
	if (type == 4) {return HistoryOrderGetString(OrderTicket(), ORDER_COMMENT);}

	return OrderGetString(ORDER_COMMENT);
}

double OrderCommission()
{
	int type = LoadedType();

	if (type == 1){return PositionGetDouble(POSITION_COMMISSION);}
	if (type == 3){return HistoryDealGetDouble(OrderTicket(),DEAL_COMMISSION);}
	if (type == 4){return 0;}

	return 0;
}

long OrderCreate(
	string   symbol     = "",
	int      type       = ORDER_TYPE_BUY,
	double   lots       = 0,
	double   op         = 0,
	double   sll        = 0,
	double   tpl        = 0,
	double   slp        = 0,
	double   tpp        = 0,
	double   slippage   = 0,
	ulong    magic      = 0,
	string   comment    = NULL,
	color    arrowcolor = clrNONE,
	datetime expiration = 0,
	bool     oco        = false
	)
{
	OnTrade(); // When position is closed by sl or tp, this event is not fired (by MetaTrader) until the end of the tick, and if a new position is opened, it will be missed. 

	uint time0 = GetTickCount(); // used to measure speed of execution of the order
	
	bool placeExpirationObject = false; // whether or not to create an object for expiration for trades

	bool closing = false;
	double lots0 = 0;
	long type0   = type;

	if (
		   (AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_NETTING)
		&& (type == POSITION_TYPE_BUY || type == POSITION_TYPE_SELL)
		)
	{
		if (PositionSelect(symbol))
		{
			if ((int)PositionGetInteger(POSITION_TYPE) != type)
			{
				closing = true;
			}

			lots0 = NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5);
			type0 = PositionGetInteger(POSITION_TYPE);
		}
	}

	ulong ticket = -1;

	// calculate buy/sell flag (1 when Buy or -1 when Sell)
	int bs = 1;

	if (
		   type == ORDER_TYPE_SELL
		|| type == ORDER_TYPE_SELL_STOP
		|| type == ORDER_TYPE_SELL_LIMIT
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
	bool successed = false;

	//-- attempts to send position/order ---------------------------------
	while (true)
	{
		digits   = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
		ask      = SymbolInfoDouble(symbol, SYMBOL_ASK);
		bid      = SymbolInfoDouble(symbol, SYMBOL_BID);
		point    = SymbolInfoDouble(symbol, SYMBOL_POINT);
		ticksize = SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE);

		//- not enough money check: fix maximum possible lot by margin required, or quit
		if ((type == POSITION_TYPE_BUY || type == POSITION_TYPE_SELL) && closing == false)
		{
			double LotStep         = SymbolLotStep(symbol);
			double MinLots         = SymbolMinLot(symbol);
			double margin_required = 0;
			bool ocm               = OrderCalcMargin((ENUM_ORDER_TYPE)type, symbol, 1, SymbolInfoDouble(symbol, SYMBOL_ASK), margin_required);
			static bool not_enough_message = false;

			if (margin_required != 0)
			{
				double max_size_by_margin = AccountFreeMargin() / margin_required;
			
				if (lots > max_size_by_margin)
				{
					double lots_old = lots;
					lots = max_size_by_margin;

					if (lots < MinLots)
					{
						if (not_enough_message == false)
						{
							Print("Not enough money to trade :( The robot is still working, waiting for some funds to appear...");
						}

						not_enough_message = true;

						return -1;
					}
					else
					{
						lots = MathFloor(lots / LotStep) * LotStep;
						Print("Not enough money to trade " + DoubleToString(lots_old, 2) + ", the volume to trade will be the maximum possible of " + DoubleToString(lots, 2));
					}
				}
			}

			not_enough_message = false;
		}

		// fix the comment, because it seems that the comment is deleted if its lenght is > 31 symbols
		if (StringLen(comment) > 31)
		{
			comment = StringSubstr(comment, 0, 31);
		}

		//- expiration for trades
		if (type == POSITION_TYPE_BUY || type == POSITION_TYPE_SELL)
		{
			if (expiration > 0)
			{
				//- bo broker?
				if (
					   StringLen(symbol) > 6
					&& StringSubstr(symbol, StringLen(symbol) - 2) == "bo"
				) {
					//- convert UNIX to seconds
					if (expiration > TimeCurrent()-100)
					{
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

		if (type == ORDER_TYPE_BUY || type == ORDER_TYPE_SELL)
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
		vsl = 0;
		vtp = 0;

		sl = AlignStopLoss(symbol, type, op, 0, NormalizeDouble(sll,digits), slp);

		if (sl < 0) {break;}

		tp = AlignTakeProfit(symbol, type, op, 0, NormalizeDouble(tpl,digits), tpp);

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

		//-- send ---------------------------------------------------------
		MqlTradeRequest request;
		MqlTradeResult result;
		MqlTradeCheckResult check_result;
		ZeroMemory(request);
		ZeroMemory(result);
		ZeroMemory(check_result);

		ENUM_SYMBOL_TRADE_EXECUTION exec = (ENUM_SYMBOL_TRADE_EXECUTION)SymbolInfoInteger(symbol,SYMBOL_TRADE_EXEMODE);

		//-- fix prices by ticksize
		op = MathRound(op / ticksize) * ticksize;
		sl = MathRound(sl / ticksize) * ticksize;
		tp = MathRound(tp / ticksize) * ticksize;

		request.symbol     = symbol;
		request.type       = (ENUM_ORDER_TYPE)type;
		request.volume     = lots;
		request.price      = op;
		request.deviation  = (ulong)(slippage * PipValue(symbol));
		request.sl         = sl;
		request.tp         = tp;
		request.comment    = comment;
		request.magic      = magic;
		request.type_time  = ExpirationTypeByTime(symbol, expiration);
		request.expiration = expiration;

		//-- request action
		if (type > ORDER_TYPE_SELL)
		{
			request.action = TRADE_ACTION_PENDING;
		}
		else
		{
			request.action = TRADE_ACTION_DEAL;
		}
		//-- filling type
		
		// check ORDER_FILLING_RETURN for pending orders only 
		if (type > ORDER_TYPE_SELL)
		{
			if (IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN))
				request.type_filling = ORDER_FILLING_RETURN;
			else if (IsFillingTypeAllowed(symbol, ORDER_FILLING_FOK))
				request.type_filling = ORDER_FILLING_FOK;
			else if (IsFillingTypeAllowed(symbol, ORDER_FILLING_IOC))
				request.type_filling = ORDER_FILLING_IOC;
		}
		else
		{
			// in case of positions I would check for SYMBOL_FILLING_ and then set ORDER_FILLING_
			// this is because it appears that IsFillingTypeAllowed() works correct with SYMBOL_FILLING_, but then the position works correctly with ORDER_FILLING_
			// FOK and IOC integer values are not the same for ORDER and SYMBOL

			if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_FOK))
				request.type_filling = ORDER_FILLING_FOK;
			else if (IsFillingTypeAllowed(symbol, SYMBOL_FILLING_IOC))
				request.type_filling = ORDER_FILLING_IOC;
			else if (IsFillingTypeAllowed(symbol, ORDER_FILLING_RETURN)) // just in case
				request.type_filling = ORDER_FILLING_RETURN;
			else
				request.type_filling = ORDER_FILLING_RETURN;
		}

		if (!OrderCheck(request,check_result))
		{
			Print("OrderCheck() failed: ", (string)check_result.comment, " (", (string)check_result.retcode, ")");

			return -1;
		}

		bool success = OrderSend(request, result);

		//-- check security flag ------------------------------------------
		if (successed == true)
		{
			Print("The program will be removed because of suspicious attempt to create a new position");
			ExpertRemove();
			Sleep(10000);

			break;
		}

		if (success) {successed = true;}

		//-- error check --------------------------------------------------
		if (
			   success == false
			|| (
				   result.retcode != TRADE_RETCODE_DONE
				&& result.retcode != TRADE_RETCODE_PLACED
				&& result.retcode != TRADE_RETCODE_DONE_PARTIAL
			)
		)
		{
			string errmsgpfx = (type > ORDER_TYPE_SELL) ? "New pending order error" : "New position error";

			int erraction = CheckForTradingError(result.retcode, errmsgpfx);

			switch (erraction)
			{
				case 0: break;    // no error
				case 1: continue; // overcomable error
				case 2: break;    // fatal error
			}

			return -1;
		}

		//-- finish work --------------------------------------------------
		if (
			   result.retcode == TRADE_RETCODE_DONE
			|| result.retcode == TRADE_RETCODE_PLACED
			|| result.retcode == TRADE_RETCODE_DONE_PARTIAL
		) {
			ticket = result.order;
			//== Whatever was created, we need to wait until MT5 updates it's cache

			//-- Synchronize: Position
			if (type <= ORDER_TYPE_SELL)
			{
				if (AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_NETTING)
				{
					if (closing == false)
					{
						//- new position: 2 situations here - new position or add to position
						//- ... because of that we will check the lot size instead of PositionSelect
						while (true)
						{
							if (PositionSelect(symbol) && (lots0 != NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5))) {break;}
							Sleep(10);
						}
					}
					else
					{
						//- closing position: full
						if (lots0 == NormalizeDouble(result.volume, 5))
						{
							while (true)
							{
								if (!PositionSelect(symbol)) {break;}
								Sleep(10);
							}
						}
						//- closing position: partial
						else if (lots0 > NormalizeDouble(result.volume, 5))
						{
							while (true)
							{
								if (PositionSelect(symbol) && (lots0 != NormalizeDouble(PositionGetDouble(POSITION_VOLUME), 5))) {break;}
								Sleep(10);
							}
						}
						else if (lots0 < NormalizeDouble(result.volume, 5))
						{
						//-- position reverse
							while (true)
							{
								if (PositionSelect(symbol) && (type0 != PositionGetInteger(POSITION_TYPE))) {break;}
								Sleep(10);
							}
						}
					}
				}
				else if (AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_HEDGING)
				{
					if (closing == false)
					{
						while (true)
						{
							if (PositionSelectByTicket(ticket)) {break;}
							Sleep(10);
						}
					}
				}
			}
			//-- Synchronize: Order
			else
			{
				while (true)
				{
					if (LoadPendingOrder(result.order)) {break;}
					Sleep(10);
				}
			}

			//-- fix arrow color (it works only in visual mode)
			// TODO: this piece of code slows down the backtest for some reason
			if (0 && MQLInfoInteger(MQL_VISUAL_MODE) && arrowcolor != CLR_NONE)
			{
				if (type <= ORDER_TYPE_SELL)
				{
					uint t0 = GetTickCount();
					ENUM_OBJECT objType = (type==POSITION_TYPE_BUY) ? OBJ_ARROW_BUY : OBJ_ARROW_SELL;

					// wait for the object to be created (MQL5 is async even here)
					while(true)
					{
						int total        = ObjectsTotal(0,0,objType);
						string name      = ObjectName(0,total-1,0,objType);
						datetime objTime = (datetime)ObjectGetInteger(0,name,OBJPROP_TIME);

						if (objTime > TimeCurrent()-1)
						{
							if (StringFind(name, "#" + IntegerToString(ticket) + " ") == 0)
							{
								ObjectSetInteger(0,name,OBJPROP_COLOR,arrowcolor);
							}

							break;
						}

						if (GetTickCount() - t0 > 1000) break;
					}
				}
				else
				{
					// Pending orders don't have arrows
				}
			}
		}

		if (ticket > 0)
		{
			if (USE_VIRTUAL_STOPS)
			{
				VirtualStopsDriver("set", ticket, vsl, vtp, toPips(MathAbs(op-vsl), symbol), toPips(MathAbs(vtp-op), symbol));
			}

			//-- show some info
			double slip = 0;

			if (LoadPosition(ticket))
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
					slip = OrderOpenPrice() - op;

					Print(
						"Operation details: Speed ",
						(GetTickCount() - time0),
						" ms | Slippage ",
						DoubleToStr(toPips(slip, symbol), 1),
						" pips"
					);
				}
			}
			
			//-- fix stops in case of slippage
			if (
				   !MQLInfoInteger(MQL_TESTER)
				&& !MQLInfoInteger(MQL_VISUAL_MODE)
				&& !MQLInfoInteger(MQL_OPTIMIZATION)
			) {

				slip = NormalizeDouble(OrderOpenPrice(), digits) - NormalizeDouble(op, digits);

				if (slip != 0 && (OrderStopLoss() != 0 || OrderTakeProfit() != 0))
				{
					Print("Correcting stops because of slippage...");

					sl = OrderStopLoss();
					tp = OrderTakeProfit();

					if (sl != 0 || tp != 0)
					{
						if (sl != 0) {sl = NormalizeDouble(OrderStopLoss() + slip, digits);}
						if (tp != 0) {tp = NormalizeDouble(OrderTakeProfit() + slip, digits);}

						ModifyOrder(ticket, OrderOpenPrice(), sl, tp, 0, 0);
					}
				}
			}

			//RegisterEvent("trade");

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

		if (typeoco == ORDER_TYPE_BUY_STOP)
		{
			typeoco = ORDER_TYPE_SELL_STOP;
			op = bid - MathAbs(op-ask);
		}
		else if (typeoco == ORDER_TYPE_BUY_LIMIT)
		{
			typeoco = ORDER_TYPE_SELL_LIMIT;
			op = bid + MathAbs(op-ask);
		}
		else if (typeoco == ORDER_TYPE_SELL_STOP)
		{
			typeoco = ORDER_TYPE_BUY_STOP;
			op = ask + MathAbs(op-bid);
		}
		else if (typeoco == ORDER_TYPE_SELL_LIMIT)
		{
			typeoco = ORDER_TYPE_BUY_LIMIT;
			op = ask - MathAbs(op-bid);
		}

		if (typeoco == ORDER_TYPE_BUY_STOP || typeoco == ORDER_TYPE_BUY_LIMIT)
		{
			sl = (sl > 0) ? op - sl : 0;
			tp = (tp > 0) ? op + tp : 0;
		}
		else {
			sl = (sl > 0) ? op + sl : 0;
			tp = (tp > 0) ? op - tp : 0;
		}

		comment = "[oco:" + (string)ticket + "]";

		OrderCreate(
			symbol,
			typeoco,
			lots,
			op,
			sl,
			tp,
			0,
			0,
			slippage,
			magic,
			comment,
			arrowcolor,
			expiration,
			false
		);
	}

	OnTrade();

	return (long)ticket;
}

datetime OrderExpiration()
{
	return OrderExpirationTime();
}

datetime OrderExpirationTime()
{
	int LoadedType = LoadedType();

	if (LoadedType == 1) return expirationWorker.GetExpiration(PositionGetInteger(POSITION_TICKET));
	if (LoadedType == 2) return (datetime)OrderGetInteger(ORDER_TIME_EXPIRATION);

	return 0;
}

double OrderLots()
{
	int type    = LoadedType();
	double lots = 0;

	if (type == 1) {
		lots = PositionGetDouble(POSITION_VOLUME);
	}
	else if (type == 3) {
		// Calculate lots as the difference between the intial lots
		// and the lots of all 

		long positionId = HistoryDealGetInteger(OrderTicket(), DEAL_POSITION_ID);

		HistorySelectByPosition(positionId);

		int total = HistoryDealsTotal();

		lots = 0.0;

		for (int i = 0; i < total; i++) {
			ulong ticket = HistoryDealGetTicket(i);
			ENUM_DEAL_ENTRY entry = (ENUM_DEAL_ENTRY)HistoryDealGetInteger(ticket, DEAL_ENTRY);
			double dealVolume = HistoryDealGetDouble(ticket, DEAL_VOLUME);

			if (entry == DEAL_ENTRY_IN) {
				lots += dealVolume;
			}
			else {
				// If the last deal is the final close, it's size would be the same as the
				// calculated lots. In this case, skip, otherwise the final lots will be 0.
				if (NormalizeDouble(dealVolume, 4) < NormalizeDouble(lots, 4)) {
					lots -= dealVolume;
				}
			}
		}

		HistoryTradesTotalReset();
	}
	else if (type == 4) {lots = HistoryOrderGetDouble(OrderTicket(),ORDER_VOLUME_INITIAL);}
	else                {lots = OrderGetDouble(ORDER_VOLUME_CURRENT);}

	return NormalizeDouble(lots, 2);
}

int OrderMagicNumber()
{
	int type = LoadedType();

	if (type == 1) {return (int)PositionGetInteger(POSITION_MAGIC);}
	if (type == 3) {return (int)HistoryOrderGetInteger(HistoryDealGetInteger(OrderTicket(),DEAL_POSITION_ID),ORDER_MAGIC);}
	if (type == 4) {return (int)HistoryOrderGetInteger(OrderTicket(),ORDER_MAGIC);}

	return (int)OrderGetInteger(ORDER_MAGIC);
}

bool OrderModified(ulong ticket = 0, string action = "set")
{
	static ulong memory[];

	if (ticket == 0)
	{
		ticket = OrderTicket();
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

double OrderOpenPrice()
{
	double op  = 0.0;
	int type   = LoadedType();
	int digits = (int)SymbolInfoInteger(OrderSymbol(), SYMBOL_DIGITS);

	if (type == 1)
	{
		op = PositionGetDouble(POSITION_PRICE_OPEN);
	}
	else if (type == 3)
	{
		// Get the value from the very first deal in the position

		ulong positionId = HistoryDealGetInteger(OrderTicket(), DEAL_POSITION_ID);

		HistorySelectByPosition(positionId);

		ulong ticket = HistoryDealGetTicket(0);

		op = HistoryDealGetDouble(ticket, DEAL_PRICE);

		HistoryTradesTotalReset();
	}
	else if (type == 4)
	{
		op = HistoryOrderGetDouble(OrderTicket(), ORDER_PRICE_OPEN);
	}
   else
   {
   	op = OrderGetDouble(ORDER_PRICE_OPEN);
   }

	return NormalizeDouble(op, digits);
}

datetime OrderOpenTime()
{
	datetime time = 0;
	int type      = LoadedType();

	if (type == 1)
	{
		time = (datetime)PositionGetInteger(POSITION_TIME);
	}
	else if (type == 3)
	{
		// Get the value from the very first deal in the position

		ulong positionId = HistoryDealGetInteger(OrderTicket(), DEAL_POSITION_ID);

		HistorySelectByPosition(positionId);

		ulong ticket = HistoryDealGetTicket(0);
		
		time = (datetime)HistoryDealGetInteger(ticket, DEAL_TIME);
		
		HistoryTradesTotalReset();
	}
	else if (type == 4)
	{
		time = (datetime)HistoryOrderGetInteger(OrderTicket(), ORDER_TIME_SETUP);
	}
	else
	{
		time = (datetime)OrderGetInteger(ORDER_TIME_SETUP);
	}
	
	return time;
}

double OrderProfit()
{
	int type = LoadedType();

   if (type == 1) {
		return PositionGetDouble(POSITION_PROFIT);
	}
   if (type == 3) {
		return HistoryDealGetDouble(OrderTicket(), DEAL_PROFIT);
	}
   if (type == 4) {
		return 0;
	}
	
	return 0;
}

double OrderStopLoss()
{
	int type = LoadedType();

	if (type == 1) {return PositionGetDouble(POSITION_SL);}
	if (type == 3) {return HistoryDealGetDouble(OrderTicket(), DEAL_SL);}
	if (type == 4) {return HistoryOrderGetDouble(OrderTicket(), ORDER_SL);}

	return OrderGetDouble(ORDER_SL);
}

double OrderSwap()
{
	int type = LoadedType();

	if (type == 1) {return PositionGetDouble(POSITION_SWAP);}
	if (type == 3) {return HistoryDealGetDouble(OrderTicket(),DEAL_SWAP);}
	if (type == 4) {return 0;}

	return 0;
}

string OrderSymbol()
{
	int type = LoadedType();

	if (type == 1) {return PositionGetString(POSITION_SYMBOL);}
	if (type == 3) {return HistoryDealGetString(OrderTicket(),DEAL_SYMBOL);}
	if (type == 4) {return HistoryOrderGetString(OrderTicket(),ORDER_SYMBOL);}

	return OrderGetString(ORDER_SYMBOL);
}

double OrderTakeProfit()
{
	int type = LoadedType();

	if (type == 1) {return PositionGetDouble(POSITION_TP);}
	if (type == 3) {return HistoryDealGetDouble(OrderTicket(), DEAL_TP);}
	if (type == 4) {return HistoryOrderGetDouble(OrderTicket(),ORDER_TP);}

	return OrderGetDouble(ORDER_TP);
}

long OrderTicket(long ticket = 0)
{
	static long memory = 0;

	if (ticket > 0) {memory = ticket;}

	return memory;
}

int OrderType()
{
	int type = LoadedType();

	if (type == 1) {return (int)PositionGetInteger(POSITION_TYPE);}
	if (type == 2) {return (int)OrderGetInteger(ORDER_TYPE);}
	if (type == 3)
	{
		ulong dealTicket = OrderTicket();
		long positionId = HistoryDealGetInteger(dealTicket, DEAL_POSITION_ID);

		HistorySelectByPosition(positionId);

		ulong firstDealTicket = HistoryDealGetTicket(0);
		
		int orderType = (int)HistoryDealGetInteger(firstDealTicket, DEAL_TYPE);

		HistoryTradesTotalReset();

		return orderType;
	}
	if (type == 4) {return (int)HistoryOrderGetInteger(OrderTicket(),ORDER_TYPE);}

	return (int)OrderGetInteger(ORDER_TYPE);
}

bool PendingOrderSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both",
	string LimitsOrStops = "both"
)
{
	if (LoadPendingOrder(OrderGetTicket(index)))
	{
		if (FilterOrderBy(
			group_mode,
			group,
			market_mode,
			market,
			BuysOrSells,
			LimitsOrStops,
			1)
		) {
			return true;
		}
	}

	return false;
}

bool PendingOrderSelectByTicket(ulong ticket)
{
	bool success = OrderSelect(ticket);

	if (success) {
		LoadedType(2);
		OrderTicket(ticket);
	}

	return success;
}

double PipValue(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return CustomPoint(symbol) / SymbolInfoDouble(symbol, SYMBOL_POINT);
}

bool PositionSelectByDeal(ulong dealTicket)
{
	bool success = false;
	long positionId = HistoryDealGetInteger(dealTicket, DEAL_POSITION_ID);
	
	if (positionId)
	{
		int total = PositionsTotal();
		
		for (int i = total - 1; i >= 0; i--)
		{
			if (PositionGetTicket(i))
			{
				if (PositionGetInteger(POSITION_IDENTIFIER) == positionId)
				{
					success = true;

					break;
				}
			}
		}
	}

	return success;
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

datetime SelectedHistoryFromTime(datetime setTime = -1)
{
	static datetime time;
	
	if (setTime > -1)
	{
		time = setTime;
	}
	
	return time;
}

datetime SelectedHistoryToTime(datetime setTime = -1)
{
	static datetime time;
	
	if (setTime > -1)
	{
		time = setTime;
	}
	
	return time;
}

long SellLater(
	string symbol,
	double lots,
	double price,
	double sll = 0, // SL level
	double tpl = 0, // TP level
	double slp = 0, // SL adjust in points
	double tpp = 0, // TP adjust in points
	double slippage = 0,
	datetime expiration = 0,
	int magic = 0,
	string comment = "",
	color arrowcolor = clrNONE,
	bool oco = false
	)
{
	double bid = SymbolInfoDouble(symbol,SYMBOL_BID);
	ENUM_ORDER_TYPE type = 0;

	     if (price == bid) {type = ORDER_TYPE_SELL;}
	else if (price < bid)  {type = ORDER_TYPE_SELL_STOP;}
	else if (price > bid)  {type = ORDER_TYPE_SELL_LIMIT;}

	return OrderCreate(
		symbol,
		type,
		lots,
		price,
		sll,
		tpl,
		slp,
		tpp,
		slippage,
		magic,
		comment,
		arrowcolor,
		expiration,
		oco
	);
}

bool SkipThePass(bool set=false)
{
   static int mem_fid=0;
   static bool mem=false;
   if (set==true) {
      mem=true;
      mem_fid=FXD_CURRENT_FUNCTION_ID;
   }
   else {
      if (mem_fid!=FXD_CURRENT_FUNCTION_ID) {
         mem=false; // reset
         return(false);
      }
      if (mem==true) {
         mem=false; // reset
         return(true);
      }
   }
   return(mem);
}

int StrToInteger(string value)
{
	return (int)StringToInteger(value);
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
					output[element] = (T)StringSubstr(inputString, begin, end - begin);
				}
			}
			else
			{
				output[element] = (T)StringSubstr(inputString, begin, length - begin);
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
	StringTrimRight(text);
	StringTrimLeft(text);

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

double SymbolLotSize(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_TRADE_CONTRACT_SIZE);
}

double SymbolLotStep(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
}

double SymbolMaxLot(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);
}

double SymbolMinLot(string symbol)
{
	if (symbol == "") symbol = Symbol();

	return SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);
}

int SymbolsList(string &symbols[], bool selected)
{
	static string memory[];
	static int symbols_count;
	static bool do_read = true;

	//-- read all symbols once, or read them every time if selected==true
	if (do_read == true || selected == true)
	{
		do_read = false;

		symbols_count = SymbolsTotal(selected);

		int s = 0;

		for(int i = 0; i < symbols_count; i++)
		{
			string symbol = SymbolName(i, selected);

			if (StringLen(symbol) > 0 /* add another condition here if needed */)
			{
				ArrayResize(memory, s+1);
				memory[s] = symbol;
				s++;
			}
		}

		symbols_count = s;
	}

	ArrayCopy(symbols,memory);

	return symbols_count;
}

ENUM_TIMEFRAMES TFMigrate(int tf)
{
	switch (tf)
	{
		case 0: return PERIOD_CURRENT;
		case 1: return PERIOD_M1;
		case 5: return PERIOD_M5;
		case 15: return PERIOD_M15;
		case 30: return PERIOD_M30;
		case 60: return PERIOD_H1;
		case 240: return PERIOD_H4;
		case 1440: return PERIOD_D1;
		case 10080: return PERIOD_W1;
		case 43200: return PERIOD_MN1;

		case 2: return PERIOD_M2;
		case 3: return PERIOD_M3;
		case 4: return PERIOD_M4;      
		case 6: return PERIOD_M6;
		case 10: return PERIOD_M10;
		case 12: return PERIOD_M12;
		case 16385: return PERIOD_H1;
		case 16386: return PERIOD_H2;
		case 16387: return PERIOD_H3;
		case 16388: return PERIOD_H4;
		case 16390: return PERIOD_H6;
		case 16392: return PERIOD_H8;
		case 16396: return PERIOD_H12;
		case 16408: return PERIOD_D1;
		case 32769: return PERIOD_W1;
		case 49153: return PERIOD_MN1;

		default: return PERIOD_CURRENT;
	}
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

int TimeDay(datetime time)
{
	MqlDateTime tm;
   TimeToStruct(time,tm);
   return(tm.day);
}

int TimeDayOfWeek(datetime time)
{
   MqlDateTime tm;
   TimeToStruct(time,tm);
   return(tm.day_of_week);
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

datetime TimeFromString(int mode_time, string stamp)
{
	datetime t = 0;

	     if (mode_time == 0) t = TimeCurrent();
	else if (mode_time == 1) t = TimeLocal();
	else if (mode_time == 2) t = TimeGMT();

	int stamplen = StringLen(stamp);

	if (stamplen < 9)
	{
		int thour    = TimeHour(t);
		int tminute  = TimeMinute(t);
		int tseconds = TimeSeconds(t);

		int hour   = (int)StringSubstr(stamp, 0, 2);
		int minute = (int)StringSubstr(stamp, 3, 2);
		int second = 0;

		if (stamplen > 5)
		{
			second = (int)StringSubstr(stamp, 6, 2);
		}

		datetime t1 = (datetime)(t - (thour-hour)*3600 - (tminute - minute)*60 - (tseconds-second));

		return t1;
	}

	return StringToTime(stamp);
}

int TimeHour(datetime time)
{
	MqlDateTime tm;
	TimeToStruct(time,tm);

	return tm.hour;
}

int TimeMinute(datetime time)
{
	MqlDateTime tm;
	TimeToStruct(time,tm);
	
	return tm.min;
}

int TimeMonth(datetime time)
{
	MqlDateTime tm;
	TimeToStruct(time,tm);

	return tm.mon;
}

int TimeSeconds(datetime time)
{
	MqlDateTime tm;
	TimeToStruct(time,tm);

	return tm.sec;
}

int TimeYear(datetime time)
{
   MqlDateTime tm;
	TimeToStruct(time,tm);

	return tm.year;
}

bool TradeSelectByIndex(
	int index,
	string group_mode    = "all",
	string group         = "0",
	string market_mode   = "all",
	string market        = "",
	string BuysOrSells   = "both"
) {
	if (LoadPosition(PositionGetTicket(index)))
	{
		if (FilterOrderBy(
			group_mode,
			group,
			market_mode,
			market,
			BuysOrSells)
			)
		{
			return true;
		}
	}

	return false;
}

bool TradeSelectByTicket(ulong ticket)
{
	if (LoadPosition(ticket) && OrderType() < 2)
	{
		return true;
	}

	return false;
}

int TradesTotal()
{
	return PositionsTotal();
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
		int total     = ObjectsTotal(0, -1, OBJ_HLINE);
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
			name = ObjectName(0, i, -1, OBJ_HLINE); // for example: #1 sl

			if (StringSubstr(name, 0, 1) != "#")
			{
				continue;
			}

			length = StringLen(name);

			if (length < 5)
			{
				continue;
			}

			clr = (color)ObjectGetInteger(0, name, OBJPROP_COLOR);

			if (clr != loop_color[0] && clr != loop_color[1])
			{
				continue;
			}

			string last_symbols = StringSubstr(name, length-2, 2);

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

			ulong ticket0 = StringToInteger(StringSubstr(name, 1, length - 4));

			// prevent loading the same ticket number twice in a row
			if (ticket0 != ticket)
			{
				ticket = ticket0;

				if (TradeSelectByTicket(ticket))
				{
					symbol     = OrderSymbol();
					polarity   = (OrderType() == 0) ? 1 : -1;
					askbid   = (OrderType() == 0) ? SymbolInfoDouble(symbol, SYMBOL_BID) : SymbolInfoDouble(symbol, SYMBOL_ASK);
					
					trade_pass = true;
				}
				else
				{
					trade_pass = false;
				}
			}

			if (trade_pass)
			{
				level    = ObjectGetDouble(0, name, OBJPROP_PRICE, 0);

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
							ObjectDelete(0, "#" + (string)ticket + " sl");
							ObjectDelete(0, "#" + (string)ticket + " tp");
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
				|| OrderCloseTime() > 0 // in case the order has been closed
			)
			{
				ObjectDelete(0, name);
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

		name = "#" + IntegerToString(ti) + " " + StringSubstr(command, 4, 2);

		if (ObjectFind(0, name) > -1)
		{
			value = ObjectGetDouble(0, name, OBJPROP_PRICE, 0);
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
				if (ObjectFind(0, name) == -1)
				{
						 ObjectCreate(0, name, OBJ_HLINE, 0, 0, loop_price[i]);
					ObjectSetInteger(0, name, OBJPROP_WIDTH, 1);
					ObjectSetInteger(0, name, OBJPROP_COLOR, loop_color[i]);
					ObjectSetInteger(0, name, OBJPROP_STYLE, STYLE_DOT);
					ObjectSetString(0, name, OBJPROP_TEXT, name + " (virtual)");
				}
				// 2) modify existing line
				else
				{
					ObjectSetDouble(0, name, OBJPROP_PRICE, 0, loop_price[i]);
				}
			}
			else
			{
				// 3) delete existing line
				ObjectDelete(0, name);
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
				DoubleToStr(sl, (int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS)),
				" tp ",
				DoubleToStr(tp,(int)SymbolInfoInteger(Symbol(),SYMBOL_DIGITS))
			);
		}

		return 1;
	}

	return 1;
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

double ask(string symbol = NULL)
{
	return SymbolInfoDouble(symbol, SYMBOL_ASK);
}

// The lots closed when partially closing a trade
double attrLotsClosed(double lots=-1)
{
	static double mem=0;
   if (lots>=0) {mem=lots;}
   return(mem);
}

double attrLotsInitial()
{
	double retval = 0.0;
	ulong ticket = OrderTicket();

	long parentTicket = attrTicketParent(ticket);

	if (HistorySelectByPosition(parentTicket)) {
		int total = HistoryDealsTotal();

		if (total > 0) {
			long dealTicket = (long)HistoryDealGetTicket(0);

			retval = HistoryDealGetDouble(dealTicket, DEAL_VOLUME);
		}
	}

	HistoryTradesTotalReset();
	PositionSelectByTicket(ticket);

   return retval;
}

double attrLotsInitial(string symbol) {
	double retval = 0.0;

   if (!PositionSelect(symbol)) {
   	return 0.0;
   }
  
   long positionId = PositionGetInteger(POSITION_IDENTIFIER);
   
   if (HistorySelectByPosition(positionId)) {
		int total = HistoryDealsTotal();

		if (total > 0) {
			long ticket = (long)HistoryDealGetTicket(0);
			
			retval = HistoryDealGetDouble(ticket, DEAL_VOLUME);
		}
	}

	HistoryTradesTotalReset();
		
   return retval;
}

double attrStopLoss()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get sl", OrderTicket());
	}

	return OrderStopLoss();
}

double attrTakeProfit()
{
	if (USE_VIRTUAL_STOPS)
	{
		return VirtualStopsDriver("get tp", OrderTicket());
	}

   return OrderTakeProfit();
}

long attrTicketInLoop(long ticket = 0)
{
	static long t;

	if (ticket > 0) {t = ticket;}

	return t;
}

/**
* Get the parent position ticket when the current position
* was created as "add to volume" child.
* In other cases, return the input ticket.
*/
long attrTicketParent(long ticket)
{
	long parentTicket = 0;

	if (PositionSelectByTicket(ticket)) {
		string comment = PositionGetString(POSITION_COMMENT);
		int tagPos     = StringFind(comment, "[p=");
		
		if (tagPos >= 0) {
			string tag   = StringSubstr(comment, tagPos);
			tag          = StringSubstr(tag, 0, StringFind(tag, "]") + 1);
			parentTicket = StringToInteger(StringSubstr(tag, 3, -1));
		}
	}

	if (parentTicket == 0) {
		parentTicket = ticket;
	}

	return parentTicket;
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

long e_attrMagicNumber() {return onTradeEventDetector.EventValueMagic();}

double e_attrOpenPrice() {return onTradeEventDetector.EventValuePriceOpen();}

datetime e_attrOpenTime() {return onTradeEventDetector.EventValueTimeOpen();}

double e_attrProfit() {return onTradeEventDetector.EventValueProfit();}

double e_attrStopLoss() {return onTradeEventDetector.EventValueStopLoss();}

double e_attrSwap() {return onTradeEventDetector.EventValueSwap();}

string e_attrSymbol() {return onTradeEventDetector.EventValueSymbol();}

double e_attrTakeProfit() {return onTradeEventDetector.EventValueTakeProfit();}

long e_attrTicket() {return onTradeEventDetector.EventValueTicket();}

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

double fxdCustomIndicator(int handle, int mode=0, int shift=0)
{
	static double buffer[1];

	if (handle < 0)
	{
		Print("Error: Indicator not handled. (handle=",handle," | error code=",GetLastError(),")");
		return 0;
	}

	int tryouts = 0;

	while (true)
	{
		if (BarsCalculated(handle) > 0) break;
		else
		{
			tryouts++;

			if (MQLInfoInteger(MQL_TESTER))
			{
				Sleep(10);
			}
			else
			{
				if (tryouts > 100)
				{
					Print("Error: Custom indicator could not load (handle=",handle," | error code=",GetLastError(),")");

					break;
				}

				Sleep(50);
			}
		}
	}

	int success = CopyBuffer(handle,mode,shift,1,buffer);

	if (success < 0)
	{
		Print("Error: Cannot get value from a custom indicator. (handle=",handle," | error code=",GetLastError(),")");
		return 0;
	}

	//ArraySetAsSeries(buffer,true);

	return buffer[0];
}

void fxdGetInboundBlocks(int block_id, int &list[])
{
	if (block_id > -1 && ArraySize(_blocks_) > block_id) {
		ArrayCopy(list, _blocks_[block_id].__inbound_blocks);
	}
}

void fxdGetInboundBlocks(string block_string_id, int &list[])
{
	// first we need to get the numeric id of the block
	int block_id = ArraySearch(fxdBlocksLookupTable, block_string_id);

	if (block_id > -1 && ArraySize(_blocks_) > block_id) {
		ArrayCopy(list, _blocks_[block_id].__inbound_blocks);
	}
}

double iAC( 
	string             symbol,
	ENUM_TIMEFRAMES    timeframe,
	int                shift
)
{
	int handle = iAC(symbol, timeframe);
	double val = fxdCustomIndicator(handle, 0, shift);

	return NormalizeDouble(val, 7);
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
		mins_tf = (int)PeriodSeconds(PERIOD_CURRENT) / 60;
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
			int dow = TimeDayOfWeek(time_stamp);

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
		if (iTime(SYMBOL, TIMEFRAME, CandleID) >= time_stamp) {break;}

		CandleID--;

		if (CandleID <= 0) {CandleID = 0; break;}
	}

	return CandleID;
}

double iSAR( 
	string             symbol,
	ENUM_TIMEFRAMES    timeframe,
	double             step,
	double             maximum,
	int                shift
)
{
	int handle = iSAR(symbol, timeframe, step, maximum);
	double val = fxdCustomIndicator(handle, 0, shift);

	return NormalizeDouble(val, 10);
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

/*<fxdreema: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
:fxdreema>*/
