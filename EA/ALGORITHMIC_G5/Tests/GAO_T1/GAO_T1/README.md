### GENETIC ALGORITHM OPTIMIZATION GAO - ALGORITHMIC_G5
#### TEST 1 CONFIG SETUP -> [ALGORITHMIC_G5_GAO_T1_SETTINGS.ini](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_G5/Tests/GAO_T1/GAO_T1/ALGORITHMIC_G5_GAO_T1_SETTINGS.ini)
 - **TIMEFRAME** - H1
 - **CURRENCY PAIRS** - NZDCAD,EURCAD,USDCHF,AUDUSD,CADJPY,EURCHF,EURJPY,GBPNZD
 - **DATES** - 01.02.2022 TO 30.11.2022
 - **AUTO_LOTS** - TRUE (based on existing balance / 1000000 * Risk)
 - **EA VERSION** - v1.15
 - **OPTIMIZATION CRITERION**: FGA-CCM - Fast Genetic Algorithm with Complex Criterion max

#### TEST INPUTS -> [ALGORITHMIC_G5_GAO_T1_INPUT_CONFIG.set](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_G5/Tests/GAO_T1/GAO_T1/ALGORITHMIC_G5_GAO_T1_INPUT_CONFIG.set)



#### GAO RESULTS
- POPULATION SIZE: 256 (**Population size * (Unconditional number of generations + Number of generations for convergence estimation)**)
- TOTAL RESULTS OBTAINED (at moment): 248/248
- Best result 
- [TEST 1 GAO CACHE FILE](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_G5/Tests/GAO_T1/GAO_T1/GAO_CACHE_FILES/ALGORITHMIC_G5.NZDCAD.H1.20220201.20221130.01.2264CF3761215262196FE6772FF1F541.opt)


- Excel file GAO Results -> [GAO_TEST_1_ALGORITHMIC_G5_v1.15](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_G5/Tests/GAO_T1/GAO_T1/ReportOptimizer-1051534382.xlsx)

These are just a few examples, the complete report gao report can be found on the above excel file above

##### COMPLEX CRITERION MAX RESULTS

![image](https://user-images.githubusercontent.com/118682909/227772268-ddf9de06-ed7a-407e-9b37-47cb1761db3d.png)
![image](https://user-images.githubusercontent.com/118682909/227772274-f73300e4-b623-4f8c-926d-c1181080ee1d.png)
![image](https://user-images.githubusercontent.com/118682909/227772298-560e5f1c-aa6c-41bd-845c-796b563ecc6b.png)

##### OPTIMIZED CONFIGURATION PARAMETERS
These are just a few examples, the complete report gao report can be found on the above excel file above

![image](https://user-images.githubusercontent.com/118682909/227772315-1a6179b2-377e-46f7-8312-8ce2b0d64006.png)

```
NO	0	11:40:33.355	Tester	Best result 83.9526 produced at generation 0. Next generation 11
QS	0	11:41:54.218	Tester	Best result 83.9526 produced at generation 0. Next generation 12
LF	0	11:43:37.536	Tester	Best result 83.9526 produced at generation 0. Next generation 13
PM	0	11:44:51.112	Tester	Best result 83.9526 produced at generation 0. Next generation 14
PQ	0	11:46:08.896	Tester	Best result 83.9526 produced at generation 0. Next generation 15
QD	0	11:46:08.898	Tester	Best result 83.9526 produced at generation 0. Next generation 16
IH	0	11:46:08.912	Tester	Best result 83.9526 produced at generation 0. Next generation 17
NL	0	11:46:08.913	Tester	genetic calculation is over
IG	0	11:46:08.913	Tester	result cache used 1341 times
QN	0	11:46:08.913	Tester	genetic optimization finished on pass 1596 (of 84640)
EG	0	11:46:09.097	Statistics	optimization done in 29 minutes 06 seconds
EO	0	11:46:09.097	Statistics	shortest pass 0:01:08.952, longest pass 0:02:39.077, average pass 0:01:46.618
LN	0	11:46:09.097	Statistics	local 0 tasks (0%), remote 0 tasks (0%), cloud 263 tasks (100%)
GG	0	11:46:09.097	MQL5 Cloud Europe	8 hours and 22 minutes of cloud time spent on successful calculation of 263 tasks, 105 cloud agents used
MR	0	11:46:09.097	Tester	248 new records saved to cache file 'tester\cache\ALGORITHMIC_G5.NZDCAD.H1.20220201.20221130.01.2264CF3761215262196FE6772FF1F541.opt'
```
