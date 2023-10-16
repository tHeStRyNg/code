### ALGORITHMIC_HEDGING_T1

 - This algorithm is a reseach into pending orders towards an improved exit strategy based on improved math logic.
 - This code will later replace RSI_STORM existing hedging strategy on version => 2.1.5.6.6
 
### LOGIC

![image](https://user-images.githubusercontent.com/118682909/228537094-1f8cfba3-d275-4d09-91a3-8291887ad979.png)

### EXAMPLE

#### STEP 1

![image](https://user-images.githubusercontent.com/118682909/228537639-6ab7811c-72c6-4831-8c4d-1c87a948fbe4.png)

#### STEP 2

![image](https://user-images.githubusercontent.com/118682909/228538256-084d42cc-3bf9-423f-a727-ba3257496b74.png)

#### STEP 3

- Fixed on version 0.4 the deletion of pending orders tied to previous cvlosed orers using tp or sl

![image](https://user-images.githubusercontent.com/118682909/228538855-96dca459-f811-4914-98a4-491d5ae4ef32.png)


### FEATURES - v0.4

- Improved hedging math logic
- 5 groups or depth of iteration of hedging
- Provides SL and TP to mitigate runaway trades pending for days
- fixed non closure of existing pending order that were linked to previous order that was closed by tp or sl
- 

 
