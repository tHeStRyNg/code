## ALGORITHMIC_G5
### This is a placeholder for stats for ALGORITHMIC_ALGORITHMIC_G5 iterating whtought several config sets which allows us to have an understanding of the diff on roi, dd.

### EA CONFIG

#### POSITION MANAGEMENT
Normally we have seen based on direct experience trading with this algo, that it opens a position when there is a breakout possibility to take advantage of the FVG.
Based on that it opens a position eG: 2.41 lots and then places a SL of 438 pips (-771.46) and a TP of 1563 pips (+2.752.54).

![image](https://user-images.githubusercontent.com/118682909/225019532-e6834340-2033-4789-afb0-b235f8b93790.png)

##### POSITION STRATEGY CALCULATION
Lets assume that based on the above Position values, the EA opens 5 positions in a day.
We will use this to extrapolate the best sets for daily goals returns.

The ratio seems to be between 1:3.6 to 1:3.7 at the present configuration.

The following table which shows how many position you need in order to be in profit or in loss based on the ratio 1:3.[6-7] mentioned above.

| POSITION 1 | POSITION 2 | POSITION 3 | POSITION 4 | POSITION 5 | TOTAL P/L |
| ------------------ | ------------------ | ------------------ | ------------------ |  ------------------ | :------------------: |
| LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | -3857.32 |
| PROFIT, 2752.54 | LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | -333.31 |
| PROFIT, 2752.54 | PROFIT, 2752.54 | LOSS, -771.46 | LOSS, -771.46 | LOSS, -771.46 | 3,190.68 |
| PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | LOSS, -771.46 | LOSS, -771.46 | 6,714.69 |
| PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | LOSS, -771.46 | 10,238.69 |
| PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | PROFIT, 2752.54 | 13,762.7 |


### TEST DATASET TO QUANTIFY THE DEVIATION OF ROI AND DD BASED ON 4 SPREAD CONFIG
With this set of tests we will have diferent configurations in which only the spread will change, the remaining configuratio nis basxed on G5_001.set
With this we will scope to understand the spread inplications cross a year (2022) with a normal account at leverage of 1:500 starting with 100USD.
With that in mind the only variable in the configuratio nthat will be changed is MaxSpreadA=[25|50|100|150]

##### TEST 1 - SPREAD 25
- [Config Used](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_007.set)

###### GRAPH
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_007.1.set.png)
###### BACKTEST
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_007.2.set.png)
##### Excel Detailed Report
[Excel](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Tests/G5_007%20-%20100.00_YEARLY_2022.xlsx)

##### TEST 2 - SPREAD 50
- [Config Used](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_006.set)

###### GRAPH
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_006.1.set.png)
###### BACKTEST
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_006.2.set.png)
##### Excel Detailed Report
[Excel](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Tests/G5_006%20-%20100.00_YEARLY_2022.xlsx)

##### TEST 3 - SPREAD 100
- [Config Used](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_004.set)

###### GRAPH
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_004.1.set.png)
###### BACKTEST
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_004.2.set.png)
##### Excel Detailed Report
[Excel](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Tests/G5_004%20-%20100.00_YEARLY_2022.xlsx)

##### TEST 4 - SPREAD 150
- [Config Used](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_005.set)

###### GRAPH
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_005.1.set.png)
###### BACKTEST
![image](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Configs/G5_005.2.set.png)
##### Excel Detailed Report
[Excel](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC_G5/Tests/G5_005%20-%20100.00_YEARLY_2022.xlsx)

##### CONCLUSION
On a H1 timeframe we should be using a spread of 50 min to 100 max. They translate to havving the lower DD higher ROI and least Losses.
Further research is needed to obtain the nest normal between these 2 values. 
