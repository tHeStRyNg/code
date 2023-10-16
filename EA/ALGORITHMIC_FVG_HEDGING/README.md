### ALGORITHMIC FVG (FAIR VALUE GAP) - HEDGING

![image](https://user-images.githubusercontent.com/118682909/225350233-e8a826d2-d28f-4172-a7ad-3b6b2c9d34e9.png)

### INPUT OPTIONS
- **TIMEFRAME** - USE H1 OR ABOVE
##### VERSION 1

![image](https://user-images.githubusercontent.com/118682909/225333738-df8acbaf-0e96-4c5c-b97e-8bc4d5e9c05e.png)

##### VERSION 3

![image](https://user-images.githubusercontent.com/118682909/226040758-e71f848f-0b5a-4912-addd-c78a838817ae.png)

#### EXEC EXAMPLE

![image](https://user-images.githubusercontent.com/118682909/225336966-acc44314-cac7-45fb-91d6-87529364b150.png)

##### VERSION 3

![image](https://user-images.githubusercontent.com/118682909/226042949-55790892-025b-4615-8c51-904a1dd9e9bb.png)

#### LOGIC
##### VERSION 1

![image](https://user-images.githubusercontent.com/118682909/225337182-ff0dce5a-f248-4702-83e8-2e9847a54b1e.png)

#### VERSION 3

![image](https://user-images.githubusercontent.com/118682909/226040156-c2d8d564-f2a1-4818-8031-d91f5ce6a694.png)

##### VERSION 4

![image](https://user-images.githubusercontent.com/118682909/226104699-5b0ae859-9eb2-44b4-951f-772fc1024723.png)

##### VERSION 1
###### FEATURES
- FVG DETECTION - RAY (Horizontal vector line traced) FUNCTION UPON GAP FOUND

![image](https://user-images.githubusercontent.com/118682909/226107064-1910b038-bd55-40f7-87a1-741477bd78b3.png)

- HEDGING IF GOES THE WRONG WAY - BASED ON MARTINGALE MULTIPLIER (Opens Position Countering Existing Trade with x2 much lot size as previous position)
- BROKER CURRENT DATE AND TIME - CHART STATS
- BALANCE - CHART STATS
- EQUITY - CHART STATS
- AUTO LOTS ENABLED - CHART STATS
- AUTO LOTS RISK % - CHART STATS
- 

##### VERSION 3
###### FEATURES
- AUTO LOTS (Linear Increase of Lot Size and Take Profit which is based on Account Balance)

![image](https://user-images.githubusercontent.com/118682909/226104646-3db48e9e-bbbb-4915-967e-0afa0506eb09.png)

- CURRENT DRAWDOWN - CHART STATS
- MAX DRAWDOWN STOP AT - (AUTO KILL SWITCH (Based on % of Total Current Account Balance)) - CHART STATS

https://user-images.githubusercontent.com/118682909/226093064-f72494be-8a6c-4bff-b4d9-c19c2aaede92.mp4

##### VERSION 4
###### FEATURES
- MAJOR BUG WITH ORDERS BUY/SELL ON AUTO/LOTS MARTINGALE FUNCTION LOGIC - FIXED
- PROPER DELETION OF USED CHART FVG RAY VECTORS UPON POSITION CLOSURE - FIXED
- CREATED M1 GBPUSD CONFIG TESTED ON FEB_2022 VERY POSITIVE AND PROFITABLE - FVGH.004_M1_CONFIG_GBPUSD_FEB_2022_PROFITABLE.set - TESTED

#### TEST 1 - INITIAL CONFIG - FVGH.001.set
- Year 2022 Backtest @ H1

#### GRAPH

![image](https://user-images.githubusercontent.com/118682909/225338256-6134bc54-5104-4ebf-a63d-3fe41c37ac3f.png)

#### BACKTEST

![image](https://user-images.githubusercontent.com/118682909/225338443-b243c0ba-5e9f-492a-bae3-3140cf280d53.png)
