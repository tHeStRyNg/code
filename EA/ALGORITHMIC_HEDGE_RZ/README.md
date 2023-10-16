### ALGORITHMIC HEDGE RZ (Recovery Zone) - ( YES it Hedges ^_^ !!!)

![image](https://user-images.githubusercontent.com/118682909/226175121-0f6d56fe-6e0d-413c-9caa-659557b1fd2b.png)

#### DESCRIPTION
- **Entry Strategy** - x1 FVG Signal and x1 Stochastic Oscillator
- Stochastic oscillators display two lines: 
- %K - The %K line compares the lowest low and the highest high of a given period to define a price range, then displays the last closing price as a percentage of this range. 
- %D - The %D line is a moving average of %K.

- **Exit Strategy** - Hedge

The scope of this EA is to provide a decent Entry and Exit Strategy.
So the Entry is calculated based on Stochastic Oscillator Indicator.
If it opens a position and is impacting profit, (Hedge Exit Strategy) a counter pending order will be opened at
twice as much lot size as the initial trade to counter that trade and exist still
with the specified amount of profit.

#### INPUT OPTIONS
- **TIMEFRAMES** - M5, M10, M15, M30, H1 (requires config for each TF)
#### VERSION 0.08
#### EXEC EXAMPLE

![image](https://user-images.githubusercontent.com/118682909/226171871-e77daaa0-6d3c-48f8-ab60-8a7bb1275482.png)

#### LOGIC

![image](https://user-images.githubusercontent.com/118682909/226171243-bb4833a4-e8e0-4f32-8f89-49e6ee262587.png)

#### FEATURES
- HEDGING ENALBLED SO IF A POSITION GOES THE WRONG WAY THERE IS AN EXIT STRATEGY - BASED ON MARTINGALE MULTIPLIER
![image](https://user-images.githubusercontent.com/118682909/226172011-d41eb887-fc65-4c6d-8692-7f75b55d3d6c.png)

- LICENSING ENABLED: TESTING/BACKTESTING ALLOWED, DEMO LIC REQ., REAL LIC REQ.
![image](https://user-images.githubusercontent.com/118682909/226170771-bddabb8f-f0d4-4cbe-b94a-18b0536f6337.png)

- BROKER CURRENT DATE AND TIME - CHART STATS
- BALANCE - CHART STATS
- EQUITY - CHART STATS
- DRAWDOWN - CHART STATS
- LICENSE INFO - CHART EXPERT LOGS/CHART STATS - ALGORITHMIC GMBH - 2678236474-9355725779-1478557820-008

![image](https://user-images.githubusercontent.com/118682909/226170968-a6b20d19-fb7c-4559-9fb3-9cc6d311a29a.png)
![image](https://user-images.githubusercontent.com/118682909/226171057-8c06a9be-1c6b-41ad-9478-2a6c19db04f7.png)
![image](https://user-images.githubusercontent.com/118682909/226171199-dbb1a4a4-df7a-4b6a-9b67-31f6cd3d0b37.png)

#### TEST 1 - YEAR 2022 BACKTEST - M10 - CONFIG USED - HEDGE_RZ_001_EURUSD_M10_JAN_2022.set
##### GRAPH

![image](https://user-images.githubusercontent.com/118682909/226172577-42a58686-92a7-4ca1-b218-76c0bcc32564.png)

##### BACKTEST

![image](https://user-images.githubusercontent.com/118682909/226172692-fbc332ed-b557-4c37-b0a4-26c2106d99f2.png)

##### XLS REPORT
[TEST_1_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_HEDGE_RZ/Tests/TEST_1_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx)

#### TEST 2 - YEAR 2022 BACKTEST - M15 - CONFIG USED - HEDGE_RZ_001_EURUSD_M10_JAN_2022.set
##### GRAPH

![image](https://user-images.githubusercontent.com/118682909/226173226-6fb2649e-a436-435e-b16c-17ea4329c179.png)

##### BACKTEST

![image](https://user-images.githubusercontent.com/118682909/226173247-23140624-da6b-49f8-91b2-f4985a637af0.png)

##### XLS REPORT
[TEST_2_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_HEDGE_RZ/Tests/TEST_2_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx)

#### TEST 3 - YEAR 2022 BACKTEST - M30 - CONFIG USED - HEDGE_RZ_001_EURUSD_M10_JAN_2022.set
##### GRAPH

![image](https://user-images.githubusercontent.com/118682909/226173494-8c1859ce-3e52-494a-b494-10637fff6f9a.png)

##### BACKTEST

![image](https://user-images.githubusercontent.com/118682909/226173533-c58c5089-d0c2-44a3-9742-fb459224829d.png)

##### XLS REPORT
[TEST_3_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_HEDGE_RZ/Tests/TEST_3_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx)

#### TEST 4 - YEAR 2022 BACKTEST - H1 - CONFIG USED - HEDGE_RZ_001_EURUSD_M10_JAN_2022.set
##### GRAPH

![image](https://user-images.githubusercontent.com/118682909/226173770-739ef50c-0407-40cf-be6c-bf0cd98a0767.png)

##### BACKTEST

![image](https://user-images.githubusercontent.com/118682909/226173798-4ac7805d-a189-451b-9b2c-b1c1ed0217d2.png)

![image](https://user-images.githubusercontent.com/118682909/226173876-c07a8581-215e-4af7-a6df-19e3d521572d.png)

![image](https://user-images.githubusercontent.com/118682909/226173919-db0673c7-1cda-4825-a55c-40b10bddc02c.png)

##### XLS REPORT
[TEST_3_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_HEDGE_RZ/Tests/TEST_4_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx)

#### TEST 5 - YEAR 2022 BACKTEST - M10 - CONFIG USED - HEDGE_RZ_009.4.2_EURUSD_M10_JAN_2022.set
##### GRAPH



##### BACKTEST


##### XLS REPORT
[TEST_3_HEDGE_RZ_001_EURUSD_M10_JAN_2022.xlsx]()
