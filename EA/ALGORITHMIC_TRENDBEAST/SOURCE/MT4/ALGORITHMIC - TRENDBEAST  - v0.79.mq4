/ / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 / / )       _ _ _ _     _     _     _ _ _ _     _ _ _ _     _ _ _ _     _ _ _ _     _ _     _ _         _ _             _ _ _     _ _ _ _ _     _ _     _ _       ( / /  
 / / )     (   _ _ _ ) (   \ /   ) (     _   \ (     _   \ (   _ _ _ ) (   _ _ _ ) (     \ /     )     / _ _ \         /   _ _ ) (     _     ) (     \ /     )     ( / /  
 / / )       ) _ _ )     )     (     ) ( _ )   ) )       /   ) _ _ )     ) _ _ )     )         (     / ( _ _ ) \     (   ( _ _     ) ( _ ) (     )         (       ( / /  
 / / )     ( _ _ )     ( _ / \ _ ) ( _ _ _ _ / ( _ ) \ _ ) ( _ _ _ _ ) ( _ _ _ _ ) ( _ / \ / \ _ ) ( _ _ ) ( _ _ ) ( ) \ _ _ _ ) ( _ _ _ _ _ ) ( _ / \ / \ _ )     ( / /  
 / / )       h t t p s : / / f x d r e e m a . c o m                                                           C o p y r i g h t   2 0 2 3 ,   f x D r e e m a     ( / /  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 # p r o p e r t y   c o p y r i g h t       " C O P Y R I G H T ,   2 0 2 3   -   A L G O R I T H M I C ,   G M B H "  
 # p r o p e r t y   l i n k                 " h t t p s : / / w w w . a l g o r i t h m i c . o n e "  
 # p r o p e r t y   d e s c r i p t i o n   " A L G O R I T H M I C   -   T R E N D B E A S T "  
 # p r o p e r t y   v e r s i o n           " 0 . 7 9 "  
 # p r o p e r t y   s t r i c t  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                               I N P U T   P A R A M E T E R S ,   G L O B A L   V A R I A B L E S ,   C O N S T A N T S ,   I M P O R T S   a n d   I N C L U D E S                                                 |   / /  
 / /   |                                             S y s t e m   a n d   C u s t o m   v a r i a b l e s   a n d   o t h e r   d e f i n i t i o n s   u s e d   i n   t h e   p r o j e c t                                               |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   c o n s t a n t s   ( p r o j e c t   s e t t i n g s )   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 # d e f i n e   P R O J E C T _ I D   " m t 4 - 7 0 4 5 "  
 / / - -  
 / /   P o i n t   F o r m a t   R u l e s  
 # d e f i n e   P O I N T _ F O R M A T _ R U L E S   " 0 . 0 0 1 = 0 . 0 1 , 0 . 0 0 0 0 1 = 0 . 0 0 0 1 , 0 . 0 0 0 0 0 1 = 0 . 0 0 0 1 "   / /   t h i s   i s   d e s e r i a l i z e d   i n   a   s p e c i a l   f u n c t i o n   l a t e r  
 # d e f i n e   E N A B L E _ S P R E A D _ M E T E R   f a l s e  
 # d e f i n e   E N A B L E _ S T A T U S   f a l s e  
 # d e f i n e   E N A B L E _ T E S T _ I N D I C A T O R S   f a l s e  
 / / - -  
 / /   E v e n t s   O n / O f f  
 # d e f i n e   E N A B L E _ E V E N T _ T I C K   1   / /   e n a b l e   " T i c k "   e v e n t  
 # d e f i n e   E N A B L E _ E V E N T _ T R A D E   0   / /   e n a b l e   " T r a d e "   e v e n t  
 # d e f i n e   E N A B L E _ E V E N T _ T I M E R   0   / /   e n a b l e   " T i m e r "   e v e n t  
 / / - -  
 / /   V i r t u a l   S t o p s  
 # d e f i n e   V I R T U A L _ S T O P S _ E N A B L E D   0   / /   e n a b l e   v i r t u a l   s t o p s  
 # d e f i n e   V I R T U A L _ S T O P S _ T I M E O U T   0   / /   v i r t u a l   s t o p s   t i m e o u t  
 # d e f i n e   U S E _ E M E R G E N C Y _ S T O P S   " n o "   / /   " y e s "   t o   u s e   e m e r g e n c y   ( h a r d   s t o p s )   w h e n   v i r t u a l   s t o p s   a r e   i n   u s e .   " a l w a y s "   t o   u s e   E M E R G E N C Y _ S T O P S _ A D D   a s   e m e r g e n c y   s t o p s   w h e n   t h e r e   i s   n o   v i r t u a l   s t o p .  
 # d e f i n e   E M E R G E N C Y _ S T O P S _ R E L   0   / /   u s e   0   t o   d i s a b l e   h a r d   s t o p s   w h e n   v i r t u a l   s t o p s   a r e   e n a b l e d .   U s e   a   v a l u e   > = 0   t o   a u t o m a t i c a l l y   s e t   h a r d   s t o p s   w i t h   v i r t u a l .   E x a m p l e :   i f   2   i s   u s e d ,   t h e n   h a r d   s t o p s   w i l l   b e   2   t i m e s   b i g g e r   t h a n   v i r t u a l   o n e s .  
 # d e f i n e   E M E R G E N C Y _ S T O P S _ A D D   0   / /   a d d   p i p s   t o   r e l a t i v e   s i z e   o f   e m e r g e n c y   s t o p s   ( h a r d   s t o p s )  
 / / - -  
 / /   S e t t i n g s   f o r   e v e n t s  
 # d e f i n e   O N _ T R A D E _ R E A L T I M E   0   / /  
 # d e f i n e   O N _ T I M E R _ P E R I O D   6 0   / /   T i m e r   e v e n t   p e r i o d   ( i n   s e c o n d s )  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   c o n s t a n t s   ( p r e d e f i n e d   c o n s t a n t s )   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 / /   B l o c k s   L o o k u p   F u n c t i o n s  
 s t r i n g   f x d B l o c k s L o o k u p T a b l e [ ] ;  
  
 # d e f i n e   T L O B J P R O P _ T I M E 1   8 0 1  
 # d e f i n e   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T   8 0 2  
 # d e f i n e   O B J P R O P _ T L _ S H I F T _ B Y _ P R I C E   8 0 3  
 # d e f i n e   O B J P R O P _ F I B O V A L U E   8 0 4  
 # d e f i n e   O B J P R O P _ F I B O P R I C E V A L U E   8 0 5  
 # d e f i n e   O B J P R O P _ B A R S H I F T 1   8 0 7  
 # d e f i n e   O B J P R O P _ B A R S H I F T 2   8 0 8  
 # d e f i n e   O B J P R O P _ B A R S H I F T 3   8 0 9  
 # d e f i n e   S E L _ C U R R E N T   0  
 # d e f i n e   S E L _ I N I T I A L   1  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   E n u m e r a t i o n s ,   I m p o r t s ,   C o n s t a n t s ,   V a r i a b l e s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
  
  
  
  
  
  
 / / - -  
 / /   C o n s t a n t s   ( I n p u t   P a r a m e t e r s )  
 i n p u t   b o o l   M o d e _ O p e n _ O r d e r   =   t r u e ;   / /   E A   O n   -   O f f   -   ( O f f   D i s a b l e d   -   w o n t   t r a d e )  
 i n p u t   s t r i n g   S Y M B   =   " = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   S Y M B O L S   =   " " ;   / /     I N S T R U M E N T S   T O   U S E   S E P E R A T E D   B Y   C O M M A   " , "  
 i n p u t   s t r i n g   T C   =   " = = = = = = = =   T R A D E   C O M M E N T S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T R A D E   C O M M E N T S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   E A _ N A M E _ U S E R   =   " A L G O R I T H M I C _ T R E N D B E A S T " ;   / /   T R A D E   C O M M E N T S  
 i n p u t   s t r i n g   _ _ _ _ _ _ L O T S _ C O N F I G _ _ _ _ _ _   =   " = = = = =   L O T S   C O N F I G   = = = = = " ;   / /   = = = = =   L O T S   C O N F I G   = = = = =  
 i n p u t   d o u b l e   L o t s   =   5 . 0 ;   / /   A m o u n t   o f   L o t s   p e r   T t r a d e  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ T P _ _ _ S L _ C O N F I G U R A T I O N _ _   =   " = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   i n t   S L _ p i p s   =   2 5 ;   / /   S t o p   L o s s   P i p s  
 i n p u t   i n t   T P _ p i p s   =   1 4 0 ;   / /   T a k e   P r o f i t   P i p s  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ T R E N D _ C O N F I G _ _ _ _ _ _ _ _   =   " = = = = = = = =   T R E N D _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   T R E N D _ C O N F I G   = = = = = = = =  
 i n p u t   i n t   E N D _ c a n d l e _ I D _ 1   =   8 1 ;  
 i n p u t   i n t   E N D _ c a n d l e _ I D _ 2   =   4 0 ;  
 i n p u t   s t r i n g   _ T R A I L I N G _ C O N F I G   =   " = = = = = = = =   T R A I L I N G _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   T R A I L I N G _ C O N F I G   = = = = = = = =  
 i n p u t   d o u b l e   T r a i l i n g _ S t o p   =   5 0 . 0 ;  
 i n p u t   d o u b l e   T r a i l i n g _ S t e p   =   5 . 0 ;  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _   =   " = = = = = = = =   B R E A K E V E N _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   B R E A K E V E N _ C O N F I G   = = = = = = = =  
 i n p u t   d o u b l e   B r e a k E v e n T P   =   3 0 . 0 ;   / /   B r e a k E v e n   a t   a   T P   %  
 i n p u t   d o u b l e   B r e a k E v e n S L   =   5 . 0 ;   / /   B r e a k E v e n   a t   a   S L   %  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _   =   " = = = = = = = =   P A R T I A L S _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   P A R T I A L S _ C O N F I G   = = = = = = = =  
 i n p u t   d o u b l e   P a r t i a l M o n e y P r o f i t   =   2 0 0 0 . 0 ;   / /   T h e   A m o u n t   o f   M o n e y   R e q u i r e d   f o r   P a r t i a l   t o   b e   t a k e n  
 i n p u t   d o u b l e   P a r t i a l P r e c e n t   =   5 0 . 0 ;   / /   T h e   P a r t i a l   %   o n   e x i t i n g   V o l u m e  
 i n p u t   s t r i n g   T i m e _ C o n t r o l   =   " = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   S t a r t _ H o u r   =   " 0 0 : 0 0 " ;   / /   S T A R T   H O U R  
 i n p u t   s t r i n g   E n d _ H o u r   =   " 2 3 : 5 9 " ;   / /   E N D   H O U R  
 i n p u t   b o o l   M o n d a y   =   t r u e ;   / /   M O N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T u e s d a y   =   t r u e ;   / /   T U E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   W e d n e s d a y   =   t r u e ;   / /   W E D N E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T h u r s d a y   =   t r u e ;   / /   T H U R S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   F r i d a y   =   t r u e ;   / /   F R I D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S a t u r d a y   =   f a l s e ;   / /   S A T U R D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S u n d a y   =   f a l s e ;   / /   S U N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   i n t   M a g i c S t a r t   =   2 3 3 3 ;   / /   M a g i c   N u m b e r ,   k i n d   o f . . .  
 c l a s s   c  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   b o o l   M o d e _ O p e n _ O r d e r ;  
 	 s t a t i c   s t r i n g   S Y M B ;  
 	 s t a t i c   s t r i n g   S Y M B O L S ;  
 	 s t a t i c   s t r i n g   T C ;  
 	 s t a t i c   s t r i n g   E A _ N A M E _ U S E R ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ L O T S _ C O N F I G _ _ _ _ _ _ ;  
 	 s t a t i c   d o u b l e   L o t s ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ T P _ _ _ S L _ C O N F I G U R A T I O N _ _ ;  
 	 s t a t i c   i n t   S L _ p i p s ;  
 	 s t a t i c   i n t   T P _ p i p s ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ T R E N D _ C O N F I G _ _ _ _ _ _ _ _ ;  
 	 s t a t i c   i n t   E N D _ c a n d l e _ I D _ 1 ;  
 	 s t a t i c   i n t   E N D _ c a n d l e _ I D _ 2 ;  
 	 s t a t i c   s t r i n g   _ T R A I L I N G _ C O N F I G ;  
 	 s t a t i c   d o u b l e   T r a i l i n g _ S t o p ;  
 	 s t a t i c   d o u b l e   T r a i l i n g _ S t e p ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 	 s t a t i c   d o u b l e   B r e a k E v e n T P ;  
 	 s t a t i c   d o u b l e   B r e a k E v e n S L ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 	 s t a t i c   d o u b l e   P a r t i a l M o n e y P r o f i t ;  
 	 s t a t i c   d o u b l e   P a r t i a l P r e c e n t ;  
 	 s t a t i c   s t r i n g   T i m e _ C o n t r o l ;  
 	 s t a t i c   s t r i n g   S t a r t _ H o u r ;  
 	 s t a t i c   s t r i n g   E n d _ H o u r ;  
 	 s t a t i c   b o o l   M o n d a y ;  
 	 s t a t i c   b o o l   T u e s d a y ;  
 	 s t a t i c   b o o l   W e d n e s d a y ;  
 	 s t a t i c   b o o l   T h u r s d a y ;  
 	 s t a t i c   b o o l   F r i d a y ;  
 	 s t a t i c   b o o l   S a t u r d a y ;  
 	 s t a t i c   b o o l   S u n d a y ;  
 	 s t a t i c   i n t   M a g i c S t a r t ;  
 } ;  
 b o o l   c : : M o d e _ O p e n _ O r d e r ;  
 s t r i n g   c : : S Y M B ;  
 s t r i n g   c : : S Y M B O L S ;  
 s t r i n g   c : : T C ;  
 s t r i n g   c : : E A _ N A M E _ U S E R ;  
 s t r i n g   c : : _ _ _ _ _ _ L O T S _ C O N F I G _ _ _ _ _ _ ;  
 d o u b l e   c : : L o t s ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ T P _ _ _ S L _ C O N F I G U R A T I O N _ _ ;  
 i n t   c : : S L _ p i p s ;  
 i n t   c : : T P _ p i p s ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ T R E N D _ C O N F I G _ _ _ _ _ _ _ _ ;  
 i n t   c : : E N D _ c a n d l e _ I D _ 1 ;  
 i n t   c : : E N D _ c a n d l e _ I D _ 2 ;  
 s t r i n g   c : : _ T R A I L I N G _ C O N F I G ;  
 d o u b l e   c : : T r a i l i n g _ S t o p ;  
 d o u b l e   c : : T r a i l i n g _ S t e p ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 d o u b l e   c : : B r e a k E v e n T P ;  
 d o u b l e   c : : B r e a k E v e n S L ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 d o u b l e   c : : P a r t i a l M o n e y P r o f i t ;  
 d o u b l e   c : : P a r t i a l P r e c e n t ;  
 s t r i n g   c : : T i m e _ C o n t r o l ;  
 s t r i n g   c : : S t a r t _ H o u r ;  
 s t r i n g   c : : E n d _ H o u r ;  
 b o o l   c : : M o n d a y ;  
 b o o l   c : : T u e s d a y ;  
 b o o l   c : : W e d n e s d a y ;  
 b o o l   c : : T h u r s d a y ;  
 b o o l   c : : F r i d a y ;  
 b o o l   c : : S a t u r d a y ;  
 b o o l   c : : S u n d a y ;  
 i n t   c : : M a g i c S t a r t ;  
  
  
 / / - -  
 / /   V a r i a b l e s   ( G l o b a l   V a r i a b l e s )  
  
  
  
  
  
 c l a s s   v  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   E A _ N A M E ;  
 	 s t a t i c   b o o l   E A _ R u n n i n g ;  
 	 s t a t i c   b o o l   E A _ W e e k d a y ;  
 	 s t a t i c   s t r i n g   T r e n d l i n e _ N a m e _ B ;  
 	 s t a t i c   s t r i n g   T r e n d l i n e _ N a m e _ S ;  
 } ;  
 s t r i n g   v : : E A _ N A M E ;  
 b o o l   v : : E A _ R u n n i n g ;  
 b o o l   v : : E A _ W e e k d a y ;  
 s t r i n g   v : : T r e n d l i n e _ N a m e _ B ;  
 s t r i n g   v : : T r e n d l i n e _ N a m e _ S ;  
  
  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   g l o b a l   v a r i a b l e s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 i n t   F X D _ C U R R E N T _ F U N C T I O N _ I D   =   0 ;  
 d o u b l e   F X D _ M I L S _ I N I T _ E N D         =   0 ;  
 i n t   F X D _ T I C K S _ F R O M _ S T A R T         =   0 ;  
 i n t   F X D _ M O R E _ S H I F T                     =   0 ;  
 b o o l   F X D _ D R A W _ S P R E A D _ I N F O       =   f a l s e ;  
 b o o l   F X D _ F I R S T _ T I C K _ P A S S E D     =   f a l s e ;  
 b o o l   F X D _ B R E A K                             =   f a l s e ;  
 b o o l   F X D _ C O N T I N U E                       =   f a l s e ;  
 b o o l   F X D _ C H A R T _ I S _ O F F L I N E       =   f a l s e ;  
 b o o l   F X D _ O N T I M E R _ T A K E N             =   f a l s e ;  
 b o o l   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
 d o u b l e   F X D _ O N T I M E R _ T A K E N _ T I M E   =   0 ;  
 b o o l   U S E _ V I R T U A L _ S T O P S   =   V I R T U A L _ S T O P S _ E N A B L E D ;  
 s t r i n g   F X D _ C U R R E N T _ S Y M B O L       =   " " ;  
 i n t   F X D _ B L O C K S _ C O U N T                 =   3 2 ;  
 d a t e t i m e   F X D _ T I C K S K I P _ U N T I L   =   0 ;  
  
 / / -   f o r   u s e   i n   O n C h a r t ( )   e v e n t  
 s t r u c t   f x d _ o n c h a r t  
 {  
 	 i n t   i d ;  
 	 l o n g   l p a r a m ;  
 	 d o u b l e   d p a r a m ;  
 	 s t r i n g   s p a r a m ;  
 } ;  
 f x d _ o n c h a r t   F X D _ O N C H A R T ;  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                                                                                   E V E N T   F U N C T I O N S                                                                                                     |   / /  
 / /   |                                                       T h e s e   a r e   t h e   m a i n   f u n c t i o n s   t h a t   c o n t r o l s   t h e   w h o l e   p r o j e c t                                                       |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n c e   w h e n   t h e   p r o g r a m   s t a r t s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 i n t   O n I n i t ( )  
 {  
  
 	 / /   I n i t i a t e   C o n s t a n t s  
 	 c : : M o d e _ O p e n _ O r d e r   =   M o d e _ O p e n _ O r d e r ;  
 	 c : : S Y M B   =   S Y M B ;  
 	 c : : S Y M B O L S   =   S Y M B O L S ;  
 	 c : : T C   =   T C ;  
 	 c : : E A _ N A M E _ U S E R   =   E A _ N A M E _ U S E R ;  
 	 c : : _ _ _ _ _ _ L O T S _ C O N F I G _ _ _ _ _ _   =   _ _ _ _ _ _ L O T S _ C O N F I G _ _ _ _ _ _ ;  
 	 c : : L o t s   =   L o t s ;  
 	 c : : _ _ _ _ _ _ _ _ _ T P _ _ _ S L _ C O N F I G U R A T I O N _ _   =   _ _ _ _ _ _ _ _ _ T P _ _ _ S L _ C O N F I G U R A T I O N _ _ ;  
 	 c : : S L _ p i p s   =   S L _ p i p s ;  
 	 c : : T P _ p i p s   =   T P _ p i p s ;  
 	 c : : _ _ _ _ _ _ _ _ _ T R E N D _ C O N F I G _ _ _ _ _ _ _ _   =   _ _ _ _ _ _ _ _ _ T R E N D _ C O N F I G _ _ _ _ _ _ _ _ ;  
 	 c : : E N D _ c a n d l e _ I D _ 1   =   E N D _ c a n d l e _ I D _ 1 ;  
 	 c : : E N D _ c a n d l e _ I D _ 2   =   E N D _ c a n d l e _ I D _ 2 ;  
 	 c : : _ T R A I L I N G _ C O N F I G   =   _ T R A I L I N G _ C O N F I G ;  
 	 c : : T r a i l i n g _ S t o p   =   T r a i l i n g _ S t o p ;  
 	 c : : T r a i l i n g _ S t e p   =   T r a i l i n g _ S t e p ;  
 	 c : : _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _   =   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 	 c : : B r e a k E v e n T P   =   B r e a k E v e n T P ;  
 	 c : : B r e a k E v e n S L   =   B r e a k E v e n S L ;  
 	 c : : _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _   =   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 	 c : : P a r t i a l M o n e y P r o f i t   =   P a r t i a l M o n e y P r o f i t ;  
 	 c : : P a r t i a l P r e c e n t   =   P a r t i a l P r e c e n t ;  
 	 c : : T i m e _ C o n t r o l   =   T i m e _ C o n t r o l ;  
 	 c : : S t a r t _ H o u r   =   S t a r t _ H o u r ;  
 	 c : : E n d _ H o u r   =   E n d _ H o u r ;  
 	 c : : M o n d a y   =   M o n d a y ;  
 	 c : : T u e s d a y   =   T u e s d a y ;  
 	 c : : W e d n e s d a y   =   W e d n e s d a y ;  
 	 c : : T h u r s d a y   =   T h u r s d a y ;  
 	 c : : F r i d a y   =   F r i d a y ;  
 	 c : : S a t u r d a y   =   S a t u r d a y ;  
 	 c : : S u n d a y   =   S u n d a y ;  
 	 c : : M a g i c S t a r t   =   M a g i c S t a r t ;  
  
  
  
  
 	 / /   d o   o r   d o   n o t   n o t   i n i t i l i a l i z e   o n   r e l o a d  
 	 i f   ( U n i n i t i a l i z e R e a s o n ( )   ! =   0 )  
 	 {  
 	 	 i f   ( U n i n i t i a l i z e R e a s o n ( )   = =   R E A S O N _ C H A R T C H A N G E )  
 	 	 {  
 	 	 	 / /   i f   t h e   s y m b o l   i s   t h e   s a m e ,   d o   n o t   r e l o a d ,   o t h e r w i s e   c o n t i n u e   b e l o w  
 	 	 	 i f   ( F X D _ C U R R E N T _ S Y M B O L   = =   S y m b o l ( ) )   { r e t u r n   I N I T _ S U C C E E D E D ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   I N I T _ S U C C E E D E D ;  
 	 	 }  
 	 }  
 	 F X D _ C U R R E N T _ S Y M B O L   =   S y m b o l ( ) ;  
  
 	 C u r r e n t S y m b o l ( F X D _ C U R R E N T _ S Y M B O L ) ;   / /   C u r r e n t S y m b o l ( )   h a s   i n t e r n a l   m e m o r y   t h a t   s h o u l d   b e   s e t   f r o m   h e r e   w h e n   t h e   s y m b o l l   i s   c h a n g e d  
 	 C u r r e n t T i m e f r a m e ( P E R I O D _ C U R R E N T ) ;  
  
 	 v : : E A _ N A M E   =   " A L G O R I T H M I C   -   T R E N D B E A S T " ;  
 	 v : : E A _ R u n n i n g   =   f a l s e ;  
 	 v : : E A _ W e e k d a y   =   f a l s e ;  
 	 v : : T r e n d l i n e _ N a m e _ B   =   " M y T r e n d l i n e B u y " ;  
 	 v : : T r e n d l i n e _ N a m e _ S   =   " M y T r e n d l i n e S e l l " ;  
  
  
  
  
 	 C o m m e n t ( " " ) ;  
 	 f o r   ( i n t   i = O b j e c t s T o t a l ( C h a r t I D ( ) ) ;   i > = 0 ;   i - - )  
 	 {  
 	 	 s t r i n g   n a m e   =   O b j e c t N a m e ( C h a r t I D ( ) ,   i ) ;  
 	 	 i f   ( S t r i n g S u b s t r ( n a m e , 0 , 8 )   = =   " f x d _ c m n t " )   { O b j e c t D e l e t e ( C h a r t I D ( ) ,   n a m e ) ; }  
 	 }  
 	 C h a r t R e d r a w ( ) ;  
  
  
  
 	 / / - -   d i s a b l e   v i r t u a l   s t o p s   i n   o p t i m i z a t i o n ,   b e c a u s e   g r a p h i c a l   o b j e c t s   d o e s   n o t   w o r k  
 	 / /   h t t p : / / d o c s . m q l 4 . c o m / r u n t i m e / t e s t i n g  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N )   | |   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) ) )   {  
 	 	 U S E _ V I R T U A L _ S T O P S   =   f a l s e ;  
 	 }  
  
 	 / / - -   s e t   i n i t i a l   l o c a l   a n d   s e r v e r   t i m e  
 	 T i m e A t S t a r t ( " s e t " ) ;  
  
 	 / / - -   s e t   i n i t i a l   b a l a n c e  
 	 A c c o u n t B a l a n c e A t S t a r t ( ) ;  
  
 	 / / - -   d r a w   t h e   i n i t i a l   s p r e a d   i n f o   m e t e r  
 	 i f   ( E N A B L E _ S P R E A D _ M E T E R   = =   f a l s e )   {  
 	 	 F X D _ D R A W _ S P R E A D _ I N F O   =   f a l s e ;  
 	 }  
 	 e l s e   {  
 	 	 F X D _ D R A W _ S P R E A D _ I N F O   =   ! ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) ) ;  
 	 }  
 	 i f   ( F X D _ D R A W _ S P R E A D _ I N F O )   D r a w S p r e a d I n f o ( ) ;  
  
 	 / / - -   d r a w   i n i t i a l   s t a t u s  
 	 i f   ( E N A B L E _ S T A T U S )   D r a w S t a t u s ( " w a i t i n g   f o r   t i c k . . . " ) ;  
  
 	 / / - -   d r a w   i n d i c a t o r s   a f t e r   t e s t  
 	 T e s t e r H i d e I n d i c a t o r s ( ! E N A B L E _ T E S T _ I N D I C A T O R S ) ;  
  
 	 / / - -   w o r k i n g   w i t h   o f f l i n e   c h a r t s  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   = =   P R O G R A M _ E X P E R T )  
 	 {  
 	 	 F X D _ C H A R T _ I S _ O F F L I N E   =   C h a r t G e t I n t e g e r ( 0 ,   C H A R T _ I S _ O F F L I N E ) ;  
 	 }  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   ! =   P R O G R A M _ S C R I P T )  
 	 {  
 	 	 i f   ( F X D _ C H A R T _ I S _ O F F L I N E   = =   t r u e   | |   ( E N A B L E _ E V E N T _ T R A D E   = =   1   & &   O N _ T R A D E _ R E A L T I M E   = =   1 ) )  
 	 	 {  
 	 	 	 F X D _ O N T I M E R _ T A K E N   =   t r u e ;  
 	 	 	 E v e n t S e t M i l l i s e c o n d T i m e r ( 1 ) ;  
 	 	 }  
 	 	 i f   ( E N A B L E _ E V E N T _ T I M E R )   {  
 	 	 	 O n T i m e r S e t ( O N _ T I M E R _ P E R I O D ) ;  
 	 	 }  
 	 }  
  
  
 	 / / - -   I n i t i a l i z e   b l o c k s   c l a s s e s  
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   3 2 ) ;  
  
 	 _ b l o c k s _ [ 0 ]   =   n e w   B l o c k 0 ( ) ;  
 	 _ b l o c k s _ [ 1 ]   =   n e w   B l o c k 1 ( ) ;  
 	 _ b l o c k s _ [ 2 ]   =   n e w   B l o c k 2 ( ) ;  
 	 _ b l o c k s _ [ 3 ]   =   n e w   B l o c k 3 ( ) ;  
 	 _ b l o c k s _ [ 4 ]   =   n e w   B l o c k 4 ( ) ;  
 	 _ b l o c k s _ [ 5 ]   =   n e w   B l o c k 5 ( ) ;  
 	 _ b l o c k s _ [ 6 ]   =   n e w   B l o c k 6 ( ) ;  
 	 _ b l o c k s _ [ 7 ]   =   n e w   B l o c k 7 ( ) ;  
 	 _ b l o c k s _ [ 8 ]   =   n e w   B l o c k 8 ( ) ;  
 	 _ b l o c k s _ [ 9 ]   =   n e w   B l o c k 9 ( ) ;  
 	 _ b l o c k s _ [ 1 0 ]   =   n e w   B l o c k 1 0 ( ) ;  
 	 _ b l o c k s _ [ 1 1 ]   =   n e w   B l o c k 1 1 ( ) ;  
 	 _ b l o c k s _ [ 1 2 ]   =   n e w   B l o c k 1 2 ( ) ;  
 	 _ b l o c k s _ [ 1 3 ]   =   n e w   B l o c k 1 3 ( ) ;  
 	 _ b l o c k s _ [ 1 4 ]   =   n e w   B l o c k 1 4 ( ) ;  
 	 _ b l o c k s _ [ 1 5 ]   =   n e w   B l o c k 1 5 ( ) ;  
 	 _ b l o c k s _ [ 1 6 ]   =   n e w   B l o c k 1 6 ( ) ;  
 	 _ b l o c k s _ [ 1 7 ]   =   n e w   B l o c k 1 7 ( ) ;  
 	 _ b l o c k s _ [ 1 8 ]   =   n e w   B l o c k 1 8 ( ) ;  
 	 _ b l o c k s _ [ 1 9 ]   =   n e w   B l o c k 1 9 ( ) ;  
 	 _ b l o c k s _ [ 2 0 ]   =   n e w   B l o c k 2 0 ( ) ;  
 	 _ b l o c k s _ [ 2 1 ]   =   n e w   B l o c k 2 1 ( ) ;  
 	 _ b l o c k s _ [ 2 2 ]   =   n e w   B l o c k 2 2 ( ) ;  
 	 _ b l o c k s _ [ 2 3 ]   =   n e w   B l o c k 2 3 ( ) ;  
 	 _ b l o c k s _ [ 2 4 ]   =   n e w   B l o c k 2 4 ( ) ;  
 	 _ b l o c k s _ [ 2 5 ]   =   n e w   B l o c k 2 5 ( ) ;  
 	 _ b l o c k s _ [ 2 6 ]   =   n e w   B l o c k 2 6 ( ) ;  
 	 _ b l o c k s _ [ 2 7 ]   =   n e w   B l o c k 2 7 ( ) ;  
 	 _ b l o c k s _ [ 2 8 ]   =   n e w   B l o c k 2 8 ( ) ;  
 	 _ b l o c k s _ [ 2 9 ]   =   n e w   B l o c k 2 9 ( ) ;  
 	 _ b l o c k s _ [ 3 0 ]   =   n e w   B l o c k 3 0 ( ) ;  
 	 _ b l o c k s _ [ 3 1 ]   =   n e w   B l o c k 3 1 ( ) ;  
  
 	 / /   f i l l   t h e   l o o k u p   t a b l e  
 	 A r r a y R e s i z e ( f x d B l o c k s L o o k u p T a b l e ,   A r r a y S i z e ( _ b l o c k s _ ) ) ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 f x d B l o c k s L o o k u p T a b l e [ i ]   =   _ b l o c k s _ [ i ] . _ _ b l o c k _ u s e r _ n u m b e r ;  
 	 }  
  
 	 / /   f i l l   t h e   l i s t   o f   i n b o u n d   b l o c k s   f o r   e a c h   B l o c k C a l l s   i n s t a n c e  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 _ b l o c k s _ [ i ] . _ _ a n n o u n c e T h i s B l o c k ( ) ;  
 	 }  
  
 	 / /   L i s t   o f   i n i t i a l l y   d i s a b l e d   b l o c k s  
 	 i n t   d i s a b l e d _ b l o c k s _ l i s t [ ]   =   { } ;  
 	 f o r   ( i n t   l   =   0 ;   l   <   A r r a y S i z e ( d i s a b l e d _ b l o c k s _ l i s t ) ;   l + + )   {  
 	 	 _ b l o c k s _ [ d i s a b l e d _ b l o c k s _ l i s t [ l ] ] . _ _ d i s a b l e d   =   t r u e ;  
 	 }  
  
  
  
 	 F X D _ M I L S _ I N I T _ E N D           =   ( d o u b l e ) G e t T i c k C o u n t ( ) ;  
 	 F X D _ F I R S T _ T I C K _ P A S S E D   =   f a l s e ;   / /   r e s e t   i s   n e e d e d   w h e n   c h a n g i n g   i n p u t s  
  
 	 r e t u r n ( I N I T _ S U C C E E D E D ) ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   e v e r y   i n c o m i n g   t i c k   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T i c k ( )  
 {  
 	 F X D _ T I C K S _ F R O M _ S T A R T + + ;  
  
 	 i f   ( E N A B L E _ S T A T U S   & &   F X D _ T I C K S _ F R O M _ S T A R T   = =   1 )   D r a w S t a t u s ( " w o r k i n g " ) ;  
  
 	 / / - -   s p e c i a l   s y s t e m   a c t i o n s  
 	 i f   ( F X D _ D R A W _ S P R E A D _ I N F O )   D r a w S p r e a d I n f o ( ) ;  
 	 T i c k s D a t a ( " " ) ;   / /   C o l l e c t   t i c k s   ( i f   n e e d e d )  
 	 T i c k s P e r S e c o n d ( f a l s e ,   t r u e ) ;   / /   C o l l e c t   t i c k s   p e r   s e c o n d  
 	 i f   ( U S E _ V I R T U A L _ S T O P S )   { V i r t u a l S t o p s D r i v e r ( ) ; }  
  
 	 i f   ( f a l s e )   E x p i r a t i o n W o r k e r   *   e x p i r a t i o n D u m m y   =   n e w   E x p i r a t i o n W o r k e r ( ) ;  
 	 e x p i r a t i o n W o r k e r . R u n ( ) ;  
  
 	 i f   ( O r d e r s T o t a l ( ) )   / /   t h i s   m a k e s   t h i n g s   f a s t e r  
 	 {  
 	 	 O C O D r i v e r ( ) ;   / /   C h e c k   a n d   c l o s e   O C O   o r d e r s  
 	 }  
  
 	 i f   ( E N A B L E _ E V E N T _ T R A D E )   { O n T r a d e ( ) ; }  
  
  
 	 / /   s k i p   t i c k s  
 	 i f   ( T i m e L o c a l ( )   <   F X D _ T I C K S K I P _ U N T I L )   { r e t u r n ; }  
  
 	 / / - -   r u n   b l o c k s  
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 1 3 , 1 9 , 2 8 } ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( b l o c k s _ t o _ r u n ) ;   i + + )   {  
 	 	 _ b l o c k s _ [ b l o c k s _ t o _ r u n [ i ] ] . r u n ( ) ;  
 	 }  
  
  
 	 r e t u r n ;  
 }  
  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   e v e r y   t i c k ,   b e c a u s e   i t ' s   n o t   n a t i v e   f o r   M Q L 4     / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T r a d e ( )  
 {  
 	 / /   T h i s   i s   n e e d e d   s o   t h a t   t h e   O n T r a d e E v e n t D e t e c t o r   c l a s s   i s   a d d e d   i n t o   t h e   c o d e  
 	 i f   ( f a l s e )   O n T r a d e E v e n t D e t e c t o r   *   d u m m y   =   n e w   O n T r a d e E v e n t D e t e c t o r ( ) ;  
  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   a   p e r i o d   b a s i s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T i m e r ( )  
 {  
 	 / / - -   t o   s i m u l a t e   t i c k s   i n   o f f l i n e   c h a r t s ,   T i m e r   i s   u s e d   i n s t e a d   o f   i n f i n i t e   l o o p  
 	 / / - -   t h e   n e x t   f u n c t i o n   c h e c k s   f o r   c h a n g e s   i n   p r i c e   a n d   c a l l s   O n T i c k ( )   m a n u a l l y  
 	 i f   ( F X D _ C H A R T _ I S _ O F F L I N E   & &   R e f r e s h R a t e s ( ) )   {  
 	 	 O n T i c k ( ) ;  
 	 }  
 	 i f   ( O N _ T R A D E _ R E A L T I M E   = =   1 )   {  
 	 	 O n T r a d e ( ) ;  
 	 }  
  
 	 s t a t i c   d a t e t i m e   t 0   =   0 ;  
 	 d a t e t i m e   t   =   0 ;  
 	 b o o l   o k   =   f a l s e ;  
  
 	 i f   ( F X D _ O N T I M E R _ T A K E N )  
 	 {  
 	 	 i f   ( F X D _ O N T I M E R _ T A K E N _ T I M E   >   0 )  
 	 	 {  
 	 	 	 i f   ( F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 t   =   G e t T i c k C o u n t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t   =   T i m e L o c a l ( ) ;  
 	 	 	 }  
 	 	 	 i f   ( ( t   -   t 0 )   > =   F X D _ O N T I M E R _ T A K E N _ T I M E )  
 	 	 	 {  
 	 	 	 	 t 0   =   t ;  
 	 	 	 	 o k   =   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( o k   = =   f a l s e )   {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 }  
  
 }  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   w h e n   c h a r t   e v e n t   h a p p e n s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n C h a r t E v e n t (  
 	 c o n s t   i n t   i d ,                   / /   E v e n t   I D  
 	 c o n s t   l o n g &   l p a r a m ,       / /   P a r a m e t e r   o f   t y p e   l o n g   e v e n t  
 	 c o n s t   d o u b l e &   d p a r a m ,   / /   P a r a m e t e r   o f   t y p e   d o u b l e   e v e n t  
 	 c o n s t   s t r i n g &   s p a r a m     / /   P a r a m e t e r   o f   t y p e   s t r i n g   e v e n t s  
 )  
 {  
 	 / / - -   w r i t e   p a r a m e t e r   t o   t h e   s y s t e m   g l o b a l   v a r i a b l e s  
 	 F X D _ O N C H A R T . i d           =   i d ;  
 	 F X D _ O N C H A R T . l p a r a m   =   l p a r a m ;  
 	 F X D _ O N C H A R T . d p a r a m   =   d p a r a m ;  
 	 F X D _ O N C H A R T . s p a r a m   =   s p a r a m ;  
  
  
 	 r e t u r n ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n c e   w h e n   t h e   p r o g r a m   e n d s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n D e i n i t ( c o n s t   i n t   r e a s o n )  
 {  
 	 i n t   r e s o n   =   U n i n i t i a l i z e R e a s o n ( ) ;  
 	 i f   ( r e s o n   = =   R E A S O N _ C H A R T C H A N G E   | |   r e s o n   = =   R E A S O N _ P A R A M E T E R S   | |   r e a s o n   = =   R E A S O N _ T E M P L A T E   | |   r e a s o n   = =   R E A S O N _ A C C O U N T   )   { r e t u r n ; }  
  
 	 / / - -   i f   T i m e r   w a s   s e t ,   k i l l   i t   h e r e  
 	 E v e n t K i l l T i m e r ( ) ;  
  
 	 i f   ( E N A B L E _ S T A T U S )   D r a w S t a t u s ( " s t o p p e d " ) ;  
 	 i f   ( E N A B L E _ S P R E A D _ M E T E R )   D r a w S p r e a d I n f o ( ) ;  
 	 C h a r t S e t S t r i n g ( 0 ,   C H A R T _ C O M M E N T ,   " " ) ;  
  
  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )   {  
 	 	 P r i n t ( " B a c k t e s t e d   i n   " + D o u b l e T o S t r i n g ( ( G e t T i c k C o u n t ( ) - F X D _ M I L S _ I N I T _ E N D ) / 1 0 0 0 ,   2 ) + "   s e c o n d s " ) ;  
 	 	 d o u b l e   t c   =   G e t T i c k C o u n t ( ) - F X D _ M I L S _ I N I T _ E N D ;  
 	 	 i f   ( t c   >   0 )  
 	 	 {  
 	 	 	 P r i n t ( " A v e r a g e   t i c k s   p e r   s e c o n d :   " + D o u b l e T o S t r i n g ( F X D _ T I C K S _ F R O M _ S T A R T / t c ,   0 ) ) ;  
 	 	 }  
 	 }  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   = =   P R O G R A M _ E X P E R T )  
 	 {  
 	 	 s w i t c h ( U n i n i t i a l i z e R e a s o n ( ) )  
 	 	 {  
 	 	 	 c a s e   R E A S O N _ P R O G R A M           :   P r i n t ( " E x p e r t   A d v i s o r   s e l f   t e r m i n a t e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E M O V E             :   P r i n t ( " E x p e r t   A d v i s o r   r e m o v e d   f r o m   t h e   c h a r t " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E C O M P I L E       :   P r i n t ( " E x p e r t   A d v i s o r   h a s   b e e n   r e c o m p i l e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C H A N G E   :   P r i n t ( " S y m b o l   o r   c h a r t   p e r i o d   h a s   b e e n   c h a n g e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C L O S E     :   P r i n t ( " C h a r t   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ P A R A M E T E R S     :   P r i n t ( " I n p u t   p a r a m e t e r s   h a v e   b e e n   c h a n g e d   b y   a   u s e r " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ A C C O U N T           :   P r i n t ( " A n o t h e r   a c c o u n t   h a s   b e e n   a c t i v a t e d   o r   r e c o n n e c t i o n   t o   t h e   t r a d e   s e r v e r   h a s   o c c u r r e d   d u e   t o   c h a n g e s   i n   t h e   a c c o u n t   s e t t i n g s " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ T E M P L A T E         :   P r i n t ( " A   n e w   t e m p l a t e   h a s   b e e n   a p p l i e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ I N I T F A I L E D     :   P r i n t ( " O n I n i t ( )   h a n d l e r   h a s   r e t u r n e d   a   n o n z e r o   v a l u e " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C L O S E               :   P r i n t ( " T e r m i n a l   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
 	 	 }  
 	 }  
  
 	 / /   d e l e t e   d y n a m i c   p o i n t e r s  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 d e l e t e   _ b l o c k s _ [ i ] ;  
 	 	 _ b l o c k s _ [ i ]   =   N U L L ;  
 	 }  
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   0 ) ;  
  
 	 r e t u r n ;  
 }  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   | 	                                                                                   C l a s s e s   o f   b l o c k s                                                                                                         |   / /  
 / /   |                             C l a s s e s   t h a t   c o n t a i n   t h e   a c t u a l   c o d e   o f   t h e   b l o c k s   a n d   t h e i r   i n p u t   p a r a m e t e r s   a s   w e l l                               |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / * *  
 	 T h e   b a s e   c l a s s   f o r   a l l   b l o c k   c a l l s  
       * /  
 c l a s s   B l o c k C a l l s  
 {  
 	 p u b l i c :  
 	 	 b o o l   _ _ d i s a b l e d ;   / /   w h e t h e r   o r   n o t   t h e   b l o c k   i s   d i s a b l e d  
  
 	 	 s t r i n g   _ _ b l o c k _ u s e r _ n u m b e r ;  
                 i n t   _ _ b l o c k _ n u m b e r ;  
 	 	 i n t   _ _ b l o c k _ w a i t i n g ;  
 	 	 i n t   _ _ p a r e n t _ n u m b e r ;  
 	 	 i n t   _ _ i n b o u n d _ b l o c k s [ ] ;  
 	 	 i n t   _ _ o u t b o u n d _ b l o c k s [ ] ;  
  
 	 	 v o i d   _ _ a d d I n b o u n d B l o c k ( i n t   i d   =   0 )   {  
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( _ _ i n b o u n d _ b l o c k s ) ;  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )   {  
 	 	 	 	 i f   ( _ _ i n b o u n d _ b l o c k s [ i ]   = =   i d )   {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 A r r a y R e s i z e ( _ _ i n b o u n d _ b l o c k s ,   s i z e   +   1 ) ;  
 	 	 	 _ _ i n b o u n d _ b l o c k s [ s i z e ]   =   i d ;  
 	 	 }  
  
 	 	 v o i d   B l o c k C a l l s ( )   {  
 	 	 	 _ _ d i s a b l e d                     =   f a l s e ;  
 	 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " " ;  
 	 	 	 _ _ b l o c k _ n u m b e r             =   0 ;  
 	 	 	 _ _ b l o c k _ w a i t i n g           =   0 ;  
 	 	 	 _ _ p a r e n t _ n u m b e r           =   0 ;  
 	 	 }  
  
 	 	 / * *  
 	 	       A n n o u n c e   t h i s   b l o c k   t o   t h e   l i s t   o f   i n b o u n d   c o n n e c t i o n s   o f   a l l   t h e   b l o c k s   t o   w h i c h   t h i s   b l o c k   i s   c o n n e c t e d   t o  
 	 	       * /  
 	 	 v o i d   _ _ a n n o u n c e T h i s B l o c k ( )  
 	 	 {  
 	 	       / /   a d d   t h e   c u r r e n t   b l o c k   n u m b e r   t o   t h e   l i s t   o f   i n b o u n d   b l o c k s  
 	 	       / /   f o r   e a c h   o u t b o u n d   b l o c k   t h a t   i s   p r o v i d e d  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   A r r a y S i z e ( _ _ o u t b o u n d _ b l o c k s ) ;   i + + )  
 	 	 	 {  
 	 	 	 	 i n t   b l o c k   =   _ _ o u t b o u n d _ b l o c k s [ i ] ;   / /   o u t b o u n d   b l o c k   n u m b e r  
 	 	 	 	 i n t   s i z e     =   A r r a y S i z e ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s ) ;   / /   t h e   s i z e   o f   i t s   i n b o u n d   l i s t  
  
 	 	 	 	 / /   s k i p   i f   t h e   c u r r e n t   b l o c k   w a s   a l r e a d y   a d d e d  
 	 	 	 	 f o r   ( i n t   j   =   0 ;   j   <   s i z e ;   j + + )   {  
 	 	 	 	 	 i f   ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s [ j ]   = =   _ _ b l o c k _ n u m b e r )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
  
 	 	 	 	 / /   a d d   t h e   c u r r e n t   b l o c k   n u m b e r   t o   t h e   l i s t   o f   i n b o u n d   b l o c k s   o f   t h e   o t h e r   b l o c k  
 	 	 	 	 A r r a y R e s i z e ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s ,   s i z e   +   1 ) ;  
 	 	 	 	 _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s [ s i z e ]   =   _ _ b l o c k _ n u m b e r ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / /   t h i s   i s   h e r e ,   b e c a u s e   i t   i s   u s e d   i n   t h e   " r u n "   f u n c t i o n  
 	 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )   =   0 ;  
  
 	 	 / * *  
 	 	 	 I n   t h e   d e r i v e d   c l a s s   t h i s   m e t h o d   s h o u l d   b e   u s e d   t o   s e t   d y n a m i c   p a r a m e t e r s   o r   o t h e r   s t u f f   b e f o r e   t h e   m a i n   e x e c u t e .  
 	 	 	 T h i s   m e t h o d   i s   a u t o m a t i c a l l y   c a l l e d   w i t h i n   t h e   m a i n   " r u n "   m e t h o d   b e l o w ,   b e f o r e   t h e   e x e c u t i o n   o f   t h e   m a i n   c l a s s .  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )   { r e t u r n ; } ;  
 	 	 b o o l   _ b e f o r e E x e c u t e E n a b l e d ;   / /   f o r   s p e e d  
  
 	 	 / * *  
 	 	 	 S a m e   a s   _ b e f o r e E x e c u t e _ ,   b u t   t o   w o r k   a f t e r   t h e   e x e c u t e   m e t h o d .  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   _ a f t e r E x e c u t e _ ( )   { r e t u r n ; } ;  
 	 	 b o o l   _ a f t e r E x e c u t e E n a b l e d ;   / /   f o r   s p e e d  
  
 	 	 / * *  
 	 	 	 T h i s   i s   t h e   m e t h o d   t h a t   i s   u s e d   t o   r u n   t h e   b l o c k  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   r u n ( i n t   _ p a r e n t _ = 0 )   {  
 	 	 	 _ _ p a r e n t _ n u m b e r   =   _ p a r e n t _ ;  
 	 	 	 i f   ( _ _ d i s a b l e d   | |   F X D _ B R E A K )   { r e t u r n ; }  
 	 	 	 F X D _ C U R R E N T _ F U N C T I O N _ I D   =   _ _ b l o c k _ n u m b e r ;  
  
 	 	 	 i f   ( _ b e f o r e E x e c u t e E n a b l e d )   { _ b e f o r e E x e c u t e _ ( ) ; }  
 	 	 	 _ e x e c u t e _ ( ) ;  
 	 	 	 i f   ( _ a f t e r E x e c u t e E n a b l e d )   { _ a f t e r E x e c u t e _ ( ) ; }  
  
 	 	 	 i f   ( _ _ b l o c k _ w a i t i n g   & &   F X D _ C U R R E N T _ F U N C T I O N _ I D   = =   _ _ b l o c k _ n u m b e r )   { f x d W a i t . A c c u m u l a t e ( F X D _ C U R R E N T _ F U N C T I O N _ I D ) ; }  
 	 	 }  
 } ;  
  
 B l o c k C a l l s   * _ b l o c k s _ [ ] ;  
  
  
 / /   " C o n d i t i o n "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ , t y p e n a m e   T 4 >  
 c l a s s   M D L _ C o n d i t i o n :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 T 4   c r o s s w i d t h ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C o n d i t i o n ( )  
 	 {  
 	 	 c o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 c r o s s w i d t h   =   ( i n t ) 1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   o u t p u t 1   =   f a l s e ,   o u t p u t 2   =   f a l s e ;   / /   o u t p u t   1   a n d   o u t p u t   2  
 	 	 i n t   c r o s s o v e r   =   0 ;  
 	 	  
 	 	 i f   ( c o m p a r e   = =   " x > "   | |   c o m p a r e   = =   " x < " )   { c r o s s o v e r   =   1 ; }  
 	 	  
 	 	 f o r   ( i n t   i   =   0 ;   i   < =   c r o s s o v e r ;   i + + )  
 	 	 {  
 	 	 	 / /   i = 0   -   n o r m a l   p a s s ,   i = 1   -   c r o s s o v e r   p a s s  
 	 	  
 	 	 	 / /   L e f t   o p e r a n d   o f   t h e   c o n d i t i o n  
 	 	 	 F X D _ M O R E _ S H I F T   =   i   *   c r o s s w i d t h ;  
 	 	 	 _ T 1 _   l o   =   _ L o _ ( ) ;  
 	 	 	 i f   ( M a t h A b s ( l o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 	 / /   R i g h t   o p e r a n d   o f   t h e   c o n d i t i o n  
 	 	 	 F X D _ M O R E _ S H I F T   =   i   *   c r o s s w i d t h ;  
 	 	 	 _ T 3 _   r o   =   _ R o _ ( ) ;  
 	 	 	 i f   ( M a t h A b s ( r o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 	 / /   C o n d i t i o n s  
 	 	 	 i f   ( C o m p a r e V a l u e s ( c o m p a r e ,   l o ,   r o ) )  
 	 	 	 {  
 	 	 	 	 i f   ( i   = =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 o u t p u t 1   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( i   = =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 o u t p u t 2   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 o u t p u t 2   =   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( c r o s s o v e r   = =   1 )  
 	 	 	 {  
 	 	 	 	 i f   ( C o m p a r e V a l u e s ( c o m p a r e ,   r o ,   l o ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( i   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 o u t p u t 2   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( i   = =   1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 o u t p u t 1   =   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 F X D _ M O R E _ S H I F T   =   0 ;   / /   r e s e t  
 	 	  
 	 	 	     i f   ( o u t p u t 1   = =   t r u e )   { _ c a l l b a c k _ ( 1 ) ; }  
 	 	 e l s e   i f   ( o u t p u t 2   = =   t r u e )   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " D r a w   L i n e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   _ T 5 _ , t y p e n a m e   T 6 , t y p e n a m e   _ T 6 _ , t y p e n a m e   T 7 , t y p e n a m e   _ T 7 _ , t y p e n a m e   T 8 , t y p e n a m e   _ T 8 _ , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 >  
 c l a s s   M D L _ C h a r t D r a w L i n e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O b j e c t P e r B a r ;  
 	 T 2   O b j e c t U p d a t e ;  
 	 T 3   O b j N a m e ;  
 	 T 4   O b j e c t T y p e ;  
 	 T 5   O b j T i m e 1 ;   v i r t u a l   _ T 5 _   _ O b j T i m e 1 _ ( ) { r e t u r n ( _ T 5 _ ) 0 ; }  
 	 T 6   O b j P r i c e 1 ;   v i r t u a l   _ T 6 _   _ O b j P r i c e 1 _ ( ) { r e t u r n ( _ T 6 _ ) 0 ; }  
 	 T 7   O b j T i m e 2 ;   v i r t u a l   _ T 7 _   _ O b j T i m e 2 _ ( ) { r e t u r n ( _ T 7 _ ) 0 ; }  
 	 T 8   O b j P r i c e 2 ;   v i r t u a l   _ T 8 _   _ O b j P r i c e 2 _ ( ) { r e t u r n ( _ T 8 _ ) 0 ; }  
 	 T 9   O b j A n g l e ;  
 	 T 1 0   O b j R a y ;  
 	 T 1 1   O b j R a y L e f t ;  
 	 T 1 2   O b j R a y R i g h t ;  
 	 T 1 3   O b j C o l o r ;  
 	 T 1 4   O b j S t y l e ;  
 	 T 1 5   O b j W i d t h ;  
 	 T 1 6   O b j B a c k ;  
 	 T 1 7   O b j S e l e c t a b l e ;  
 	 T 1 8   O b j S e l e c t e d ;  
 	 T 1 9   O b j H i d d e n ;  
 	 T 2 0   O b j Z o r d e r ;  
 	 T 2 1   O b j C h a r t S u b W i n d o w ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 i n t   c o u n t ;  
 	 d a t e t i m e   t i m e 0 ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h a r t D r a w L i n e ( )  
 	 {  
 	 	 O b j e c t P e r B a r   =   ( b o o l ) t r u e ;  
 	 	 O b j e c t U p d a t e   =   ( b o o l ) t r u e ;  
 	 	 O b j N a m e   =   ( s t r i n g ) " " ;  
 	 	 O b j e c t T y p e   =   ( E N U M _ O B J E C T ) O B J _ V L I N E ;  
 	 	 O b j A n g l e   =   ( d o u b l e ) 4 5 . 0 ;  
 	 	 O b j R a y   =   ( b o o l ) t r u e ;  
 	 	 O b j R a y L e f t   =   ( b o o l ) f a l s e ;  
 	 	 O b j R a y R i g h t   =   ( b o o l ) f a l s e ;  
 	 	 O b j C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 	 O b j S t y l e   =   ( E N U M _ L I N E _ S T Y L E ) S T Y L E _ S O L I D ;  
 	 	 O b j W i d t h   =   ( i n t ) 1 ;  
 	 	 O b j B a c k   =   ( b o o l ) f a l s e ;  
 	 	 O b j S e l e c t a b l e   =   ( b o o l ) t r u e ;  
 	 	 O b j S e l e c t e d   =   ( b o o l ) f a l s e ;  
 	 	 O b j H i d d e n   =   ( b o o l ) f a l s e ;  
 	 	 O b j Z o r d e r   =   ( i n t ) 0 ;  
 	 	 O b j C h a r t S u b W i n d o w   =   ( s t r i n g ) " " ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 c o u n t   =     0 ;  
 	 	 t i m e 0   =     0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 s t r i n g   O b j N a m e P r e f i x   =   " f x d _ l i n e _ " ;  
 	 	 l o n g   O b j C h a r t I D             =   0 ;  
 	 	 i n t   s u b w i n d o w _ i d           =   W i n d o w F i n d V i s i b l e ( O b j C h a r t I D ,   O b j C h a r t S u b W i n d o w ) ;  
 	 	  
 	 	 i f   ( s u b w i n d o w _ i d   > =   0 )  
 	 	 {  
 	 	 	 s t r i n g   n a m e               =   " " ;  
 	 	 	 s t r i n g   n a m e _ b a s e     =   " " ;  
 	 	 	 b o o l   g e t _ n e w _ n a m e   =   f a l s e ;  
 	 	 	 b o o l   d o _ u p d a t e         =   t r u e ;  
 	 	  
 	 	 	 i f   ( O b j e c t P e r B a r   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 d a t e t i m e   t i m e   =   i T i m e ( S y m b o l ( ) , 0 , 1 ) ;  
 	 	  
 	 	 	 	 i f   ( t i m e 0   <   t i m e )  
 	 	 	 	 {  
 	 	 	 	 	 t i m e 0                 =   t i m e ;  
 	 	 	 	 	 g e t _ n e w _ n a m e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( O b j e c t U p d a t e   = =   f a l s e )   { d o _ u p d a t e   =   f a l s e ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( O b j e c t U p d a t e   = =   f a l s e )   { g e t _ n e w _ n a m e   =   t r u e ; }  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( d o _ u p d a t e )  
 	 	 	 {  
 	 	 	 	 i f   ( O b j N a m e   ! =   " " )   { n a m e _ b a s e   =   O b j N a m e ; }   e l s e   { n a m e _ b a s e   =   O b j N a m e P r e f i x   +   _ _ b l o c k _ u s e r _ n u m b e r   +   " _ " ; }  
 	 	  
 	 	 	 	 i f   ( g e t _ n e w _ n a m e   = =   f a l s e )  
 	 	 	 	 {  
 	 	 	 	 	 n a m e   =   n a m e _ b a s e   +   I n t e g e r T o S t r i n g ( c o u n t ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c o u n t + + ;  
 	 	 	 	 	 	 n a m e   =   n a m e _ b a s e   +   I n t e g e r T o S t r i n g ( c o u n t ) ;  
 	 	  
 	 	 	 	 	 	 i f   ( O b j e c t F i n d ( O b j C h a r t I D , n a m e )   <   0 )   { b r e a k ; }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 i f   ( O b j N a m e   ! =   " "   & &   c o u n t   = =   0 )   { n a m e   =   O b j N a m e ; }  
 	 	  
 	 	 	 	 i f   ( O b j e c t F i n d ( O b j C h a r t I D , n a m e )   <   0   & &   ! O b j e c t C r e a t e ( O b j C h a r t I D , n a m e , ( E N U M _ O B J E C T ) O b j e c t T y p e , s u b w i n d o w _ i d , 0 , 0 ) )  
 	 	 	 	 {  
 	 	 	 	 	 P r i n t ( _ _ F U N C T I O N _ _ , " :   f a i l e d   t o   c r e a t e   l i n e   o b j e c t !   E r r o r   c o d e   =   " , G e t L a s t E r r o r ( ) ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 d o u b l e   p 1 = 0 ,   p 2 = 0 ;  
 	 	 	 	 d a t e t i m e   t 1 = 0 ,   t 2 = 0 ;  
 	 	  
 	 	 	 	 s w i t c h ( O b j e c t T y p e )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   O B J _ V L I N E                 :   { t 1 = 1 ;   b r e a k ; }  
 	 	 	 	 	 c a s e   O B J _ H L I N E                 :   { p 1 = 1 ;   b r e a k ; }  
 	 	 	 	 	 c a s e   O B J _ T R E N D                 :   { t 1 = 1 ;   p 1 = 1 ;   t 2 = 1 ;   p 2 = 1 ;   b r e a k ; }  
 	 	 	 	 	 c a s e   O B J _ T R E N D B Y A N G L E   :   { t 1 = 1 ;   p 1 = 1 ;   b r e a k ; }  
 	 	 	 	 	 c a s e   O B J _ C Y C L E S               :   { t 1 = 1 ;   p 1 = 1 ;   t 2 = 1 ;   p 2 = 1 ;   b r e a k ; }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 i f   ( t 1   = =   1 )   { t 1   =   _ O b j T i m e 1 _ ( ) ;   O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ T I M E , 0 , t 1 ) ; }  
 	 	 	 	 i f   ( t 2   = =   1 )   { t 2   =   _ O b j T i m e 2 _ ( ) ;   O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ T I M E , 1 , t 2 ) ; }  
 	 	 	 	 i f   ( p 1   = =   1 )   { p 1   =   _ O b j P r i c e 1 _ ( ) ;   O b j e c t S e t D o u b l e ( O b j C h a r t I D , n a m e , O B J P R O P _ P R I C E , 0 , p 1 ) ; }  
 	 	 	 	 i f   ( p 2   = =   1 )   { p 2   =   _ O b j P r i c e 2 _ ( ) ;   O b j e c t S e t D o u b l e ( O b j C h a r t I D , n a m e , O B J P R O P _ P R I C E , 1 , p 2 ) ; }  
 	 	  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S T Y L E , O b j S t y l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ C O L O R , O b j C o l o r ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ B A C K , O b j B a c k ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ W I D T H , O b j W i d t h ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S E L E C T A B L E , O b j S e l e c t a b l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S E L E C T E D , O b j S e l e c t e d ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ H I D D E N , O b j H i d d e n ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ Z O R D E R , O b j Z o r d e r ) ;  
 	 	  
 	 	 	 	 O b j e c t S e t D o u b l e ( O b j C h a r t I D , n a m e , O B J P R O P _ A N G L E , O b j A n g l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ R A Y , O b j R a y ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ R A Y _ L E F T , O b j R a y L e f t ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ R A Y _ R I G H T , O b j R a y R i g h t ) ;  
 	 	  
 	 	 	 	 C h a r t R e d r a w ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " N o   t r a d e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 >  
 c l a s s   M D L _ N o O p e n e d O r d e r s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ N o O p e n e d O r d e r s ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   e x i s t   =   f a l s e ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 {  
 	 	 	 	 e x i s t   =   t r u e ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( e x i s t   = =   f a l s e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " O n c e   p e r   b a r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 >  
 c l a s s   M D L _ O n c e P e r B a r :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   S y m b o l ;  
 	 T 2   P e r i o d ;  
 	 T 3   P a s s M a x T i m e s ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 s t r i n g   t o k e n s [ ] ;  
 	 i n t   p a s s e s [ ] ;  
 	 d a t e t i m e   o l d _ v a l u e s [ ] ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ O n c e P e r B a r ( )  
 	 {  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 P a s s M a x T i m e s   =   ( i n t ) 1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   n e x t         =   f a l s e ;  
 	 	 s t r i n g   t o k e n   =   S y m b o l   +   I n t e g e r T o S t r i n g ( P e r i o d ) ;  
 	 	 i n t   i n d e x         =   A r r a y S e a r c h ( t o k e n s ,   t o k e n ) ;  
 	 	  
 	 	 i f   ( i n d e x   = =   - 1 )  
 	 	 {  
 	 	 	 i n d e x   =   A r r a y S i z e ( t o k e n s ) ;  
 	 	 	  
 	 	 	 A r r a y R e s i z e ( t o k e n s ,   i n d e x   +   1 ) ;  
 	 	 	 A r r a y R e s i z e ( o l d _ v a l u e s ,   i n d e x   +   1 ) ;  
 	 	 	 A r r a y R e s i z e ( p a s s e s ,   i n d e x   +   1 ) ;  
 	 	 	  
 	 	 	 t o k e n s [ i n d e x ]   =   t o k e n ;  
 	 	 	 p a s s e s [ i n d e x ]   =   0 ;  
 	 	 	 o l d _ v a l u e s [ i n d e x ]   =   0 ;  
 	 	 }  
 	 	  
 	 	 i f   ( P a s s M a x T i m e s   >   0 )  
 	 	 {  
 	 	 	 / /   S o m e t i m e s   C o p y T i m e   d o e s n ' t   w o r k   p r o p e r l y .   I t   h a p p e n s   w h e n   t h e   h i s t o r y   d a t a   i s   b r o k e n   o r   s o m e t h i n g .  
 	 	 	 / /   T h e n ,   C o p y T i m e   c a n ' t   r e a d   a n y   c a n d l e s .   I t   h a p p e n s   w i t h i n g   f e w   c a n d l e s   o n l y ,   b u t   i t ' s   a   p r o b l e m   t h a t  
 	 	 	 / /   I   d o n ' t   k n o w   h o w   t o   f i x .   H o w e v e r ,   i T i m e ( )   s e e m s   t o   w o r k   f i n e .  
 	 	 	 d a t e t i m e   n e w _ v a l u e   =   i T i m e ( S y m b o l ,   P e r i o d ,   1 ) ;  
 	 	 	  
 	 	 	 i f   ( n e w _ v a l u e   = =   0 )   {  
 	 	 	 	 P r i n t ( " F a i l e d   t o   g e t   t h e   t i m e   f r o m   c a n d l e   1   o n   s y m b o l   " ,   S y m b o l ,   "   a n d   t i m e f r a m e   " ,   E n u m T o S t r i n g ( ( E N U M _ T I M E F R A M E S ) P e r i o d ) ,   " .   T h e   h i s t o r y   d a t a   n e e d s   t o   b e   f i x e d . " ) ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( n e w _ v a l u e   >   o l d _ v a l u e s [ i n d e x ] )  
 	 	 	 {  
 	 	 	 	 p a s s e s [ i n d e x ] + + ;  
 	 	  
 	 	 	 	 i f   ( p a s s e s [ i n d e x ]   > =   P a s s M a x T i m e s )  
 	 	 	 	 {  
 	 	 	 	 	 o l d _ v a l u e s [ i n d e x ]     =   n e w _ v a l u e ;  
 	 	 	 	 	 p a s s e s [ i n d e x ]   =   0 ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 n e x t   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( n e x t )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " B u y   n o w "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   T 2 9 , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   T 3 5 , t y p e n a m e   T 3 6 , t y p e n a m e   T 3 7 , t y p e n a m e   _ T 3 7 _ , t y p e n a m e   T 3 8 , t y p e n a m e   _ T 3 8 _ , t y p e n a m e   T 3 9 , t y p e n a m e   _ T 3 9 _ , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   T 4 2 , t y p e n a m e   T 4 3 , t y p e n a m e   T 4 4 , t y p e n a m e   _ T 4 4 _ , t y p e n a m e   T 4 5 , t y p e n a m e   _ T 4 5 _ , t y p e n a m e   T 4 6 , t y p e n a m e   _ T 4 6 _ , t y p e n a m e   T 4 7 , t y p e n a m e   T 4 8 , t y p e n a m e   T 4 9 , t y p e n a m e   T 5 0 , t y p e n a m e   T 5 1 , t y p e n a m e   _ T 5 1 _ , t y p e n a m e   T 5 2 , t y p e n a m e   T 5 3 , t y p e n a m e   T 5 4 >  
 c l a s s   M D L _ B u y N o w :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p ;  
 	 T 2   S y m b o l ;  
 	 T 3   V o l u m e M o d e ;  
 	 T 4   V o l u m e S i z e ;  
 	 T 5   V o l u m e S i z e R i s k ;  
 	 T 6   V o l u m e R i s k ;  
 	 T 7   V o l u m e P e r c e n t ;  
 	 T 8   V o l u m e B l o c k P e r c e n t ;  
 	 T 9   d V o l u m e S i z e ;   v i r t u a l   _ T 9 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 1   F i x e d R a t i o D e l t a ;  
 	 T 1 2   m m T r a d e s P o o l ;  
 	 T 1 3   m m M g I n i t i a l L o t s ;  
 	 T 1 4   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 5   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 6   m m M g A d d L o t s O n L o s s ;  
 	 T 1 7   m m M g A d d L o t s O n P r o f i t ;  
 	 T 1 8   m m M g R e s e t O n L o s s ;  
 	 T 1 9   m m M g R e s e t O n P r o f i t ;  
 	 T 2 0   m m 1 3 2 6 I n i t i a l L o t s ;  
 	 T 2 1   m m 1 3 2 6 R e v e r s e ;  
 	 T 2 2   m m F i b o I n i t i a l L o t s ;  
 	 T 2 3   m m D a l e m b e r t I n i t i a l L o t s ;  
 	 T 2 4   m m D a l e m b e r t R e v e r s e ;  
 	 T 2 5   m m L a b o u c h e r e I n i t i a l L o t s ;  
 	 T 2 6   m m L a b o u c h e r e L i s t ;  
 	 T 2 7   m m L a b o u c h e r e R e v e r s e ;  
 	 T 2 8   m m S e q B a s e L o t s ;  
 	 T 2 9   m m S e q O n L o s s ;  
 	 T 3 0   m m S e q O n P r o f i t ;  
 	 T 3 1   m m S e q R e v e r s e ;  
 	 T 3 2   V o l u m e U p p e r L i m i t ;  
 	 T 3 3   S t o p L o s s M o d e ;  
 	 T 3 4   S t o p L o s s P i p s ;  
 	 T 3 5   S t o p L o s s P e r c e n t P r i c e ;  
 	 T 3 6   S t o p L o s s P e r c e n t T P ;  
 	 T 3 7   d l S t o p L o s s ;   v i r t u a l   _ T 3 7 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 3 7 _ ) 0 ; }  
 	 T 3 8   d p S t o p L o s s ;   v i r t u a l   _ T 3 8 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 3 8 _ ) 0 ; }  
 	 T 3 9   d d S t o p L o s s ;   v i r t u a l   _ T 3 9 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 3 9 _ ) 0 ; }  
 	 T 4 0   T a k e P r o f i t M o d e ;  
 	 T 4 1   T a k e P r o f i t P i p s ;  
 	 T 4 2   T a k e P r o f i t P e r c e n t P r i c e ;  
 	 T 4 3   T a k e P r o f i t P e r c e n t S L ;  
 	 T 4 4   d l T a k e P r o f i t ;   v i r t u a l   _ T 4 4 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 4 _ ) 0 ; }  
 	 T 4 5   d p T a k e P r o f i t ;   v i r t u a l   _ T 4 5 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 5 _ ) 0 ; }  
 	 T 4 6   d d T a k e P r o f i t ;   v i r t u a l   _ T 4 6 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 6 _ ) 0 ; }  
 	 T 4 7   E x p M o d e ;  
 	 T 4 8   E x p D a y s ;  
 	 T 4 9   E x p H o u r s ;  
 	 T 5 0   E x p M i n u t e s ;  
 	 T 5 1   d E x p ;   v i r t u a l   _ T 5 1 _   _ d E x p _ ( ) { r e t u r n ( _ T 5 1 _ ) 0 ; }  
 	 T 5 2   S l i p p a g e ;  
 	 T 5 3   M y C o m m e n t ;  
 	 T 5 4   A r r o w C o l o r B u y ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ B u y N o w ( )  
 	 {  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) 0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) 2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   ( d o u b l e ) 3 . 0 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   ( d o u b l e ) 0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 m m T r a d e s P o o l   =   ( i n t ) 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   ( d o u b l e ) 2 . 0 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   ( d o u b l e ) 1 . 0 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g R e s e t O n L o s s   =   ( i n t ) 0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   ( i n t ) 1 ;  
 	 	 m m 1 3 2 6 I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m 1 3 2 6 R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m F i b o I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m D a l e m b e r t I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m D a l e m b e r t R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m L a b o u c h e r e I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m L a b o u c h e r e L i s t   =   ( s t r i n g ) " 1 , 2 , 3 , 4 , 5 , 6 " ;  
 	 	 m m L a b o u c h e r e R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m S e q B a s e L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m S e q O n L o s s   =   ( s t r i n g ) " 3 , 2 , 6 " ;  
 	 	 m m S e q O n P r o f i t   =   ( s t r i n g ) " 1 " ;  
 	 	 m m S e q R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 V o l u m e U p p e r L i m i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 S t o p L o s s M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 S t o p L o s s P e r c e n t P r i c e   =   ( d o u b l e ) 0 . 5 5 ;  
 	 	 S t o p L o s s P e r c e n t T P   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 T a k e P r o f i t P e r c e n t P r i c e   =   ( d o u b l e ) 0 . 5 5 ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 E x p M o d e   =   ( s t r i n g ) " G T C " ;  
 	 	 E x p D a y s   =   ( i n t ) 0 ;  
 	 	 E x p H o u r s   =   ( i n t ) 1 ;  
 	 	 E x p M i n u t e s   =   ( i n t ) 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) " " ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l   =   0 ,   s l p   =   0 ,   t p l   =   0 ,   t p p   =   0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e   = =   " f i x e d " )                   { s l p   =   S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c P i p s " )       { s l p   =   _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c D i g i t s " )   { s l p   =   t o P i p s ( _ d d S t o p L o s s _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c L e v e l " )     { s l l   =   _ d l S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " p e r c e n t P r i c e " )     { s l l   =   S y m b o l A s k ( S y m b o l )   -   ( S y m b o l A s k ( S y m b o l )   *   S t o p L o s s P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e   = =   " f i x e d " )                   { t p p   =   T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c P i p s " )       { t p p   =   _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c D i g i t s " )   { t p p   =   t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c L e v e l " )     { t p l   =   _ d l T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t P r i c e " )     { t p l   =   S y m b o l A s k ( S y m b o l )   +   ( S y m b o l A s k ( S y m b o l )   *   T a k e P r o f i t P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )   {  
 	 	       i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	       i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S y m b o l )   -   t p l ) ,   S y m b o l ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )   {  
 	 	       i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	       i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S y m b o l )   -   s l l ) ,   S y m b o l ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s   =   0 ;  
 	 	 d o u b l e   p r e _ s l l   =   s l l ;  
 	 	  
 	 	 i f   ( p r e _ s l l   = =   0 )   {  
 	 	 	 p r e _ s l l   =   S y m b o l A s k ( S y m b o l ) ;  
 	 	 }  
 	 	  
 	 	 d o u b l e   p r e _ s l _ p i p s   =   t o P i p s ( S y m b o l A s k ( S y m b o l ) - ( p r e _ s l l - t o D i g i t s ( s l p , S y m b o l ) ) ,   S y m b o l ) ;  
 	 	  
 	 	           i f   ( V o l u m e M o d e   = =   " f i x e d " )                         { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e S i z e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - e q u i t y " )           { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - b a l a n c e " )         { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - f r e e m a r g i n " )   { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " e q u i t y " )                       { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b a l a n c e " )                     { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f r e e m a r g i n " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " e q u i t y R i s k " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b a l a n c e R i s k " )             { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f r e e m a r g i n R i s k " )       { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i x e d R i s k " )                 { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e S i z e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i x e d R a t i o " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   F i x e d R a t i o U n i t S i z e ,   F i x e d R a t i o D e l t a ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d y n a m i c " )                     { l o t s   =   _ d V o l u m e S i z e _ ( ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " 1 3 2 6 " )                           { l o t s   =   B e t 1 3 2 6 ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m 1 3 2 6 I n i t i a l L o t s ,   m m 1 3 2 6 R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i b o n a c c i " )                 { l o t s   =   B e t F i b o n a c c i ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m F i b o I n i t i a l L o t s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d a l e m b e r t " )                 { l o t s   =   B e t D a l e m b e r t ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m D a l e m b e r t I n i t i a l L o t s ,   m m D a l e m b e r t R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " l a b o u c h e r e " )               { l o t s   =   B e t L a b o u c h e r e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m L a b o u c h e r e I n i t i a l L o t s ,   m m L a b o u c h e r e L i s t ,   m m L a b o u c h e r e R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " m a r t i n g a l e " )               { l o t s   =   B e t M a r t i n g a l e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " s e q u e n c e " )                   { l o t s   =   B e t S e q u e n c e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m S e q B a s e L o t s ,   m m S e q O n L o s s ,   m m S e q O n P r o f i t ,   m m S e q R e v e r s e ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( S y m b o l ,   l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 l o n g   t i c k e t   =   B u y N o w ( S y m b o l ,   l o t s ,   s l l ,   t p l ,   s l p ,   t p p ,   S l i p p a g e ,   ( M a g i c S t a r t + ( i n t ) G r o u p ) ,   M y C o m m e n t ,   A r r o w C o l o r B u y ,   e x p ) ;  
 	 	  
 	 	 i f   ( t i c k e t   >   0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " S e l l   n o w "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   T 2 9 , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   T 3 5 , t y p e n a m e   T 3 6 , t y p e n a m e   T 3 7 , t y p e n a m e   _ T 3 7 _ , t y p e n a m e   T 3 8 , t y p e n a m e   _ T 3 8 _ , t y p e n a m e   T 3 9 , t y p e n a m e   _ T 3 9 _ , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   T 4 2 , t y p e n a m e   T 4 3 , t y p e n a m e   T 4 4 , t y p e n a m e   _ T 4 4 _ , t y p e n a m e   T 4 5 , t y p e n a m e   _ T 4 5 _ , t y p e n a m e   T 4 6 , t y p e n a m e   _ T 4 6 _ , t y p e n a m e   T 4 7 , t y p e n a m e   T 4 8 , t y p e n a m e   T 4 9 , t y p e n a m e   T 5 0 , t y p e n a m e   T 5 1 , t y p e n a m e   _ T 5 1 _ , t y p e n a m e   T 5 2 , t y p e n a m e   T 5 3 , t y p e n a m e   T 5 4 >  
 c l a s s   M D L _ S e l l N o w :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p ;  
 	 T 2   S y m b o l ;  
 	 T 3   V o l u m e M o d e ;  
 	 T 4   V o l u m e S i z e ;  
 	 T 5   V o l u m e S i z e R i s k ;  
 	 T 6   V o l u m e R i s k ;  
 	 T 7   V o l u m e P e r c e n t ;  
 	 T 8   V o l u m e B l o c k P e r c e n t ;  
 	 T 9   d V o l u m e S i z e ;   v i r t u a l   _ T 9 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 1   F i x e d R a t i o D e l t a ;  
 	 T 1 2   m m T r a d e s P o o l ;  
 	 T 1 3   m m M g I n i t i a l L o t s ;  
 	 T 1 4   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 5   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 6   m m M g A d d L o t s O n L o s s ;  
 	 T 1 7   m m M g A d d L o t s O n P r o f i t ;  
 	 T 1 8   m m M g R e s e t O n L o s s ;  
 	 T 1 9   m m M g R e s e t O n P r o f i t ;  
 	 T 2 0   m m 1 3 2 6 I n i t i a l L o t s ;  
 	 T 2 1   m m 1 3 2 6 R e v e r s e ;  
 	 T 2 2   m m F i b o I n i t i a l L o t s ;  
 	 T 2 3   m m D a l e m b e r t I n i t i a l L o t s ;  
 	 T 2 4   m m D a l e m b e r t R e v e r s e ;  
 	 T 2 5   m m L a b o u c h e r e I n i t i a l L o t s ;  
 	 T 2 6   m m L a b o u c h e r e L i s t ;  
 	 T 2 7   m m L a b o u c h e r e R e v e r s e ;  
 	 T 2 8   m m S e q B a s e L o t s ;  
 	 T 2 9   m m S e q O n L o s s ;  
 	 T 3 0   m m S e q O n P r o f i t ;  
 	 T 3 1   m m S e q R e v e r s e ;  
 	 T 3 2   V o l u m e U p p e r L i m i t ;  
 	 T 3 3   S t o p L o s s M o d e ;  
 	 T 3 4   S t o p L o s s P i p s ;  
 	 T 3 5   S t o p L o s s P e r c e n t P r i c e ;  
 	 T 3 6   S t o p L o s s P e r c e n t T P ;  
 	 T 3 7   d l S t o p L o s s ;   v i r t u a l   _ T 3 7 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 3 7 _ ) 0 ; }  
 	 T 3 8   d p S t o p L o s s ;   v i r t u a l   _ T 3 8 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 3 8 _ ) 0 ; }  
 	 T 3 9   d d S t o p L o s s ;   v i r t u a l   _ T 3 9 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 3 9 _ ) 0 ; }  
 	 T 4 0   T a k e P r o f i t M o d e ;  
 	 T 4 1   T a k e P r o f i t P i p s ;  
 	 T 4 2   T a k e P r o f i t P e r c e n t P r i c e ;  
 	 T 4 3   T a k e P r o f i t P e r c e n t S L ;  
 	 T 4 4   d l T a k e P r o f i t ;   v i r t u a l   _ T 4 4 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 4 _ ) 0 ; }  
 	 T 4 5   d p T a k e P r o f i t ;   v i r t u a l   _ T 4 5 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 5 _ ) 0 ; }  
 	 T 4 6   d d T a k e P r o f i t ;   v i r t u a l   _ T 4 6 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 6 _ ) 0 ; }  
 	 T 4 7   E x p M o d e ;  
 	 T 4 8   E x p D a y s ;  
 	 T 4 9   E x p H o u r s ;  
 	 T 5 0   E x p M i n u t e s ;  
 	 T 5 1   d E x p ;   v i r t u a l   _ T 5 1 _   _ d E x p _ ( ) { r e t u r n ( _ T 5 1 _ ) 0 ; }  
 	 T 5 2   S l i p p a g e ;  
 	 T 5 3   M y C o m m e n t ;  
 	 T 5 4   A r r o w C o l o r S e l l ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ S e l l N o w ( )  
 	 {  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) 0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) 2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   ( d o u b l e ) 3 . 0 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   ( d o u b l e ) 0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 m m T r a d e s P o o l   =   ( i n t ) 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   ( d o u b l e ) 2 . 0 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   ( d o u b l e ) 1 . 0 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g R e s e t O n L o s s   =   ( i n t ) 0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   ( i n t ) 1 ;  
 	 	 m m 1 3 2 6 I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m 1 3 2 6 R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m F i b o I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m D a l e m b e r t I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m D a l e m b e r t R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m L a b o u c h e r e I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m L a b o u c h e r e L i s t   =   ( s t r i n g ) " 1 , 2 , 3 , 4 , 5 , 6 " ;  
 	 	 m m L a b o u c h e r e R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 m m S e q B a s e L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m S e q O n L o s s   =   ( s t r i n g ) " 3 , 2 , 6 " ;  
 	 	 m m S e q O n P r o f i t   =   ( s t r i n g ) " 1 " ;  
 	 	 m m S e q R e v e r s e   =   ( b o o l ) f a l s e ;  
 	 	 V o l u m e U p p e r L i m i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 S t o p L o s s M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 S t o p L o s s P e r c e n t P r i c e   =   ( d o u b l e ) 0 . 5 5 ;  
 	 	 S t o p L o s s P e r c e n t T P   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 T a k e P r o f i t P e r c e n t P r i c e   =   ( d o u b l e ) 0 . 5 5 ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 E x p M o d e   =   ( s t r i n g ) " G T C " ;  
 	 	 E x p D a y s   =   ( i n t ) 0 ;  
 	 	 E x p H o u r s   =   ( i n t ) 1 ;  
 	 	 E x p M i n u t e s   =   ( i n t ) 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) " " ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l   =   0 ,   s l p   =   0 ,   t p l   =   0 ,   t p p   =   0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e   = =   " f i x e d " )                   { s l p   =   S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c P i p s " )       { s l p   =   _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c D i g i t s " )   { s l p   =   t o P i p s ( _ d d S t o p L o s s _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c L e v e l " )     { s l l   =   _ d l S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " p e r c e n t P r i c e " )     { s l l   =   S y m b o l B i d ( S y m b o l )   +   ( S y m b o l B i d ( S y m b o l )   *   S t o p L o s s P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e   = =   " f i x e d " )                   { t p p   =   T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c P i p s " )       { t p p   =   _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c D i g i t s " )   { t p p   =   t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c L e v e l " )     { t p l   =   _ d l T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t P r i c e " )     { t p l   =   S y m b o l B i d ( S y m b o l )   -   ( S y m b o l B i d ( S y m b o l )   *   T a k e P r o f i t P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )   {  
 	 	       i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	       i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( S y m b o l B i d ( S y m b o l )   -   t p l ) ,   S y m b o l ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )   {  
 	 	       i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	       i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( S y m b o l B i d ( S y m b o l )   -   s l l ) ,   S y m b o l ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s   =   0 ;  
 	 	 d o u b l e   p r e _ s l l   =   s l l ;  
 	 	  
 	 	 i f   ( p r e _ s l l   = =   0 )   {  
 	 	 	 p r e _ s l l   =   S y m b o l B i d ( S y m b o l ) ;  
 	 	 }  
 	 	  
 	 	 d o u b l e   p r e _ s l _ p i p s   =   t o P i p s ( ( p r e _ s l l + t o D i g i t s ( s l p , S y m b o l ) ) - S y m b o l B i d ( S y m b o l ) ,   S y m b o l ) ;  
 	 	  
 	 	           i f   ( V o l u m e M o d e   = =   " f i x e d " )                         { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e S i z e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - e q u i t y " )           { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - b a l a n c e " )         { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b l o c k - f r e e m a r g i n " )   { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " e q u i t y " )                       { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b a l a n c e " )                     { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f r e e m a r g i n " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " e q u i t y R i s k " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " b a l a n c e R i s k " )             { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f r e e m a r g i n R i s k " )       { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i x e d R i s k " )                 { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   V o l u m e S i z e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i x e d R a t i o " )               { l o t s   =   D y n a m i c L o t s ( S y m b o l ,   V o l u m e M o d e ,   F i x e d R a t i o U n i t S i z e ,   F i x e d R a t i o D e l t a ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d y n a m i c " )                     { l o t s   =   _ d V o l u m e S i z e _ ( ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " 1 3 2 6 " )                           { l o t s   =   B e t 1 3 2 6 ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m 1 3 2 6 I n i t i a l L o t s ,   m m 1 3 2 6 R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " f i b o n a c c i " )                 { l o t s   =   B e t F i b o n a c c i ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m F i b o I n i t i a l L o t s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d a l e m b e r t " )                 { l o t s   =   B e t D a l e m b e r t ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m D a l e m b e r t I n i t i a l L o t s ,   m m D a l e m b e r t R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " l a b o u c h e r e " )               { l o t s   =   B e t L a b o u c h e r e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m L a b o u c h e r e I n i t i a l L o t s ,   m m L a b o u c h e r e L i s t ,   m m L a b o u c h e r e R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " m a r t i n g a l e " )               { l o t s   =   B e t M a r t i n g a l e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " s e q u e n c e " )                   { l o t s   =   B e t S e q u e n c e ( G r o u p ,   S y m b o l ,   m m T r a d e s P o o l ,   m m S e q B a s e L o t s ,   m m S e q O n L o s s ,   m m S e q O n P r o f i t ,   m m S e q R e v e r s e ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( S y m b o l ,   l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 l o n g   t i c k e t   =   S e l l N o w ( S y m b o l ,   l o t s ,   s l l ,   t p l ,   s l p ,   t p p ,   S l i p p a g e ,   ( M a g i c S t a r t + ( i n t ) G r o u p ) ,   M y C o m m e n t ,   A r r o w C o l o r S e l l ,   e x p ) ;  
 	 	  
 	 	 i f   ( t i c k e t   >   0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " T r a i l i n g   s t o p   ( e a c h   t r a d e ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   _ T 1 4 _ , t y p e n a m e   T 1 5 , t y p e n a m e   _ T 1 5 _ , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   _ T 2 4 _ , t y p e n a m e   T 2 5 , t y p e n a m e   _ T 2 5 _ , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   T 2 9 , t y p e n a m e   _ T 2 9 _ , t y p e n a m e   T 3 0 >  
 c l a s s   M D L _ T r a i l i n g S t o p 2 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   T r a i l W h a t ;  
 	 T 7   T r a i l i n g R e f e r e n c e P r i c e ;  
 	 T 8   T r a i l i n g S t o p M o d e ;  
 	 T 9   t S t o p P i p s ;  
 	 T 1 0   t S t o p M o n e y ;  
 	 T 1 1   t S t o p M u l t i p l e ;  
 	 T 1 2   t S t o p P e r c e n t T P ;  
 	 T 1 3   t S t o p P e r c e n t P r o f i t ;  
 	 T 1 4   f t S t o p ;   v i r t u a l   _ T 1 4 _   _ f t S t o p _ ( ) { r e t u r n ( _ T 1 4 _ ) 0 ; }  
 	 T 1 5   f t D i g i t s ;   v i r t u a l   _ T 1 5 _   _ f t D i g i t s _ ( ) { r e t u r n ( _ T 1 5 _ ) 0 ; }  
 	 T 1 6   T r a i l i n g S t e p M o d e ;  
 	 T 1 7   t S t e p P i p s ;  
 	 T 1 8   t S t e p P e r c e n t T S ;  
 	 T 1 9   T r a i l i n g S t a r t M o d e ;  
 	 T 2 0   t S t a r t P i p s ;  
 	 T 2 1   t S t a r t P e r c e n t T S ;  
 	 T 2 2   t S t a r t P e r c e n t S L ;  
 	 T 2 3   t S t a r t P e r c e n t T P ;  
 	 T 2 4   f t S t a r t ;   v i r t u a l   _ T 2 4 _   _ f t S t a r t _ ( ) { r e t u r n ( _ T 2 4 _ ) 0 ; }  
 	 T 2 5   f t S t a r t F r a c t i o n ;   v i r t u a l   _ T 2 5 _   _ f t S t a r t F r a c t i o n _ ( ) { r e t u r n ( _ T 2 5 _ ) 0 ; }  
 	 T 2 6   T r a i l i n g T P m o d e ;  
 	 T 2 7   t T P p i p s ;  
 	 T 2 8   t T P p e r c e n t T S ;  
 	 T 2 9   f t T P ;   v i r t u a l   _ T 2 9 _   _ f t T P _ ( ) { r e t u r n ( _ T 2 9 _ ) 0 ; }  
 	 T 3 0   L e v e l C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ T r a i l i n g S t o p 2 ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 T r a i l W h a t   =   ( i n t ) 1 ;  
 	 	 T r a i l i n g R e f e r e n c e P r i c e   =   ( i n t ) 0 ;  
 	 	 T r a i l i n g S t o p M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 t S t o p P i p s   =   ( d o u b l e ) 4 0 . 0 ;  
 	 	 t S t o p M o n e y   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 t S t o p M u l t i p l e   =   ( s t r i n g ) " 2 0 / 5 ,   3 0 / 1 0 " ;  
 	 	 t S t o p P e r c e n t T P   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 t S t o p P e r c e n t P r o f i t   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 T r a i l i n g S t e p M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 t S t e p P i p s   =   ( d o u b l e ) 1 . 0 ;  
 	 	 t S t e p P e r c e n t T S   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 T r a i l i n g S t a r t M o d e   =   ( s t r i n g ) " n o n e " ;  
 	 	 t S t a r t P i p s   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 t S t a r t P e r c e n t T S   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 t S t a r t P e r c e n t S L   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 t S t a r t P e r c e n t T P   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 T r a i l i n g T P m o d e   =   ( s t r i n g ) " n o n e " ;  
 	 	 t T P p i p s   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 t T P p e r c e n t T S   =   ( d o u b l e ) 2 0 0 . 0 ;  
 	 	 L e v e l C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   t o t a l   =   T r a d e s T o t a l ( ) ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   t o t a l ;   i n d e x + + )  
 	 	 {  
 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 {  
 	 	 	 	 s t r i n g   s y m b o l           =   O r d e r S y m b o l ( ) ;  
 	 	 	 	 d o u b l e   a s k                 =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 	 d o u b l e   b i d                 =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 	 	 	 	 d o u b l e   s t o p s l e v e l   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ;  
 	 	 	 	 i n t   d i g i t s                 =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 	 	 	 i n t   p o l a r i t y             =   1 ;       / /   1   =   b u y ,   - 1   =   s e l l  
 	 	 	 	 d o u b l e   a s k b i d           =   a s k ;   / /   c o u l d   b e   A s k   o r   B i d  
 	 	 	 	 d o u b l e   b i d a s k           =   b i d ;   / /   t h e   o p p o s i t e   o f   a s k b i d  
 	 	 	 	 d o u b l e   s l t p               =   0 ;       / /   c o u l d   b e   S L   o r   T P  
 	 	 	 	 d o u b l e   t p s l               =   0 ;       / /   t h e   o p p o s i t e   o f   s l t p  
 	 	 	 	 d o u b l e   f s l                 =   0 ;       / /   F r e e z e   L e v e l  
 	 	 	 	 d o u b l e   l i m i t             =   0 ;  
 	 	 	 	 d o u b l e   t _ s t o p           =   0 ;       / /   t r a i l i n g   S T O P  
 	 	 	 	 d o u b l e   t _ s t a r t         =   0 ;       / /   t r a i l i n g   S T A R T  
 	 	 	 	 d o u b l e   t _ s t e p           =   0 ;       / /   t r a i l i n g   S T E P  
 	 	 	 	 d o u b l e   t _ o p p             =   0 ;       / /   t r a i l i n g   O p p o s i t e   ( T P   w h e n   t r a i l i n g   S L   o r   S L   w h e n   t r a i l i n g   T P )  
 	 	  
 	 	 	 	 i f   ( T r a i l W h a t   >   0 )   {  
 	 	 	 	 	 s l t p   =   a t t r S t o p L o s s ( ) ;  
 	 	 	 	 	 t p s l   =   a t t r T a k e P r o f i t ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   {  
 	 	 	 	 	 s l t p   =   a t t r T a k e P r o f i t ( ) ;  
 	 	 	 	 	 t p s l   =   a t t r S t o p L o s s ( ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   0 )   {  
 	 	 	 	 	 p o l a r i t y   =   1 ;  
 	 	  
 	 	 	 	 	 i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a s k b i d   =   b i d ;  
 	 	 	 	 	 	 b i d a s k   =   a s k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( O r d e r T y p e ( )   = =   1 )   {  
 	 	 	 	 	 p o l a r i t y   =   - 1 ;  
 	 	 	 	 	 a s k b i d       =   b i d ;  
 	 	 	 	 	 b i d a s k       =   a s k ;  
 	 	  
 	 	 	 	 	 i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   1 )   {  
 	 	 	 	 	 	 a s k b i d   =   a s k ;  
 	 	 	 	 	 	 b i d a s k   =   b i d ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   2 )   {  
 	 	 	 	 	 a s k b i d   =   ( a s k   +   b i d )   /   2 ;  
 	 	 	 	 	 b i d a s k   =   ( a s k   +   b i d )   /   2 ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 / /   T r a i l i n g   S t o p   S i z e  
 	 	 	 	           i f   ( T r a i l i n g S t o p M o d e   = =   " f i x e d " )                   { t _ s t o p   =   t o D i g i t s ( t S t o p P i p s ,   s y m b o l ) ; }    
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " p e r c e n t T P " )           { t _ s t o p   =   ( M a t h A b s ( O r d e r O p e n P r i c e ( )   -   t p s l ) )   *   ( t S t o p P e r c e n t T P   /   1 0 0 ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " p e r c e n t P r o f i t " )   { t _ s t o p   =   ( M a t h A b s ( a s k b i d   -   O r d e r O p e n P r i c e ( ) ) )   *   ( t S t o p P e r c e n t P r o f i t   /   1 0 0 ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " d y n a m i c S i z e " )       { t _ s t o p   =   t o D i g i t s ( _ f t S t o p _ ( ) ,   s y m b o l ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " d y n a m i c D i g i t s " )   { t _ s t o p   =   _ f t D i g i t s _ ( ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " d y n a m i c " )  
 	 	 	 	 {  
 	 	 	 	 	 / /   T O D O :   f t S t o p   i s   n o w   u s e d   f o r   b o t h ,   d y n a m i c   a n d   d y n a m i c S i z e   -   s e p a r a t e   i t  
 	 	 	 	 	 t _ s t o p   =   _ f t S t o p _ ( ) ;  
 	 	 	 	 	 t _ s t o p   =   ( p o l a r i t y   = =   1 )   ?   a s k   -   t _ s t o p   :   t _ s t o p   -   b i d ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " m o n e y " )  
 	 	 	 	 {  
 	 	 	 	 	 t _ s t o p   =   t S t o p M o n e y ;  
 	 	  
 	 	 	 	 	 d o u b l e   l o t s i z e       =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ C O N T R A C T _ S I Z E ) ;  
 	 	 	 	 	 d o u b l e   t i c k v a l u e   =   ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ V A L U E )   /   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) )   *   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 	 	 	 	 t _ s t o p   =   t _ s t o p   /     ( O r d e r L o t s ( )   *   P i p V a l u e ( s y m b o l ) ) ;  
 	 	 	 	 	 / /   T O D O :   r e m o v e   t h i s   t o D i g i t s ( ) ,   t h e   c a l c u l a t i o n   s h o u l d   b e   m a d e   d i r e c t l y   i n t o   d i g i t s  
 	 	 	 	 	 t _ s t o p   =   t o D i g i t s ( t _ s t o p   /   t i c k v a l u e ,   s y m b o l ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 / /   T r a i l i n g   S t a r t   L e v e l  
 	 	 	 	           i f   ( T r a i l i n g S t a r t M o d e   = =   " n o n e " )                           { t _ s t a r t   =   - E M P T Y _ V A L U E ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " z e r o " )                           { t _ s t a r t   =   0 ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " f i x e d " )                         { t _ s t a r t   =   t o D i g i t s ( t S t a r t P i p s ,   s y m b o l ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " p e r c e n t T S " )                 { t _ s t a r t   =   t _ s t o p   *   ( t S t a r t P e r c e n t T S   /   1 0 0 ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " p e r c e n t T P " )                 { t _ s t a r t   =   ( M a t h A b s ( O r d e r O p e n P r i c e ( )   -   t p s l ) )   *   ( t S t a r t P e r c e n t T P   /   1 0 0 ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " p e r c e n t S L " )                 { t _ s t a r t   =   ( M a t h A b s ( O r d e r O p e n P r i c e ( )   -   s l t p ) )   *   ( t S t a r t P e r c e n t S L   /   1 0 0 ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " f u n c t i o n " )                   { t _ s t a r t   =   t o D i g i t s ( _ f t S t a r t _ ( ) ,   s y m b o l ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t a r t M o d e   = =   " f u n c t i o n F r a c t i o n " )   { t _ s t a r t   =   _ f t S t a r t F r a c t i o n _ ( ) ; }  
 	 	  
 	 	 	 	 / /   T r a i l i n g   S t e p   S i z e  
 	 	 	 	           i f   ( T r a i l i n g S t e p M o d e   = =   " f i x e d " )           { t _ s t e p   =   t o D i g i t s ( t S t e p P i p s ,   s y m b o l ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g S t e p M o d e   = =   " p e r c e n t T S " )   { t _ s t e p   =   t _ s t o p   *   ( t S t e p P e r c e n t T S   /   1 0 0 ) ; }  
 	 	  
 	 	 	 	 / /   T r a i l i n g   O p p o s i t e   S i z e  
 	 	 	 	           i f   ( T r a i l i n g T P m o d e   = =   " n o n e " )             { t _ o p p   =   t p s l ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g T P m o d e   = =   " c l e a r " )           { t _ o p p   =   0 ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g T P m o d e   = =   " f i x e d " )           { t _ o p p   =   T r a i l W h a t   *   ( O r d e r O p e n P r i c e ( )   +   ( p o l a r i t y   *   t o D i g i t s ( t T P p i p s ,   s y m b o l ) ) ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g T P m o d e   = =   " p e r c e n t T S " )   { t _ o p p   =   T r a i l W h a t   *   ( O r d e r O p e n P r i c e ( )   +   ( p o l a r i t y   *   t o D i g i t s ( t _ s t o p   *   ( t T P p e r c e n t T S   /   1 0 0 ) ,   s y m b o l ) ) ) ; }  
 	 	 	 	 e l s e   i f   ( T r a i l i n g T P m o d e   = =   " f u n c t i o n " )     { t _ o p p   =   _ f t T P _ ( ) ; }  
 	 	  
 	 	 	 	 / /   t h i s   m o d e   i s   l o c a t e d   h e r e   b e c a u s e   i t   o v e r r i d e s   S t a r t ,   S t o p   a n d   S t e p  
 	 	 	 	 / /   t h e   i d e a   h e r e   i s   t o   u s e   S t a r t   a s   t a r g e t   p r o f i t s  
 	 	 	 	 i f   ( T r a i l i n g S t o p M o d e   = =   " m u l t i p l e " )  
 	 	 	 	 {  
 	 	 	 	 	 b o o l   n e x t   =   f a l s e ;  
 	 	 	 	 	 s t r i n g   t m p 1 [ ] ;  
 	 	 	 	 	 s t r i n g   t m p 2 [ ] ;  
 	 	  
 	 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   t S t o p M u l t i p l e ,   t m p 1 ) ;  
 	 	  
 	 	 	 	 	 f o r   ( i n t   i   =   A r r a y S i z e ( t m p 1 ) - 1 ;   i   > =   0 ;   i - - )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S t r i n g E x p l o d e ( " / " ,   t m p 1 [ i ] ,   t m p 2 ) ;  
 	 	  
 	 	 	 	 	 	 i f   ( A r r a y S i z e ( t m p 2 )   ! =   2 )   { c o n t i n u e ; }  
 	 	  
 	 	 	 	 	 	 / /   t r a i l i n g   s t a r t   w i l l   b e   u s e d   a s   t h e   t r e s h o l d   l e v e l  
 	 	 	 	 	 	 d o u b l e   n e w _ s t a r t   =   t o D i g i t s ( S t r i n g T o D o u b l e ( S t r i n g T r i m ( t m p 2 [ 0 ] ) ) ,   s y m b o l ) ;  
 	 	  
 	 	 	 	 	 	 / /   t h e   r e g u l a r   t r a i l i n g   s t a r t   i s   b i g g e r   t h a n   t h i s   l e v e l   - >   s k i p  
 	 	 	 	 	 	 i f   ( n e w _ s t a r t   <   t _ s t a r t )   { c o n t i n u e ; }  
 	 	  
 	 	 	 	 	 	 / /   c h e c k   w h e t h e r   t h e   c u r r e n t   p r i c e < - > o p   d i s t a n c e   i s   b i g g e r   t h a n   s o m e   o f   t h e   d e s i r e d   l e v e l s  
 	 	 	 	 	 	 d o u b l e   d i f f   =   N o r m a l i z e D o u b l e ( a s k b i d   -   O r d e r O p e n P r i c e ( ) ,   d i g i t s ) ;  
 	 	  
 	 	 	 	 	 	 i f   ( p o l a r i t y   *   T r a i l W h a t   *   d i f f   > =   n e w _ s t a r t )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 / /   a n d   s e t u p   p a r a m e t e r s   s o   S L   w i l l   b e   m o v e d  
 	 	 	 	 	 	 	 t _ s t a r t   =   n e w _ s t a r t ;  
 	 	 	 	 	 	 	 t _ s t o p     =   p o l a r i t y   *   T r a i l W h a t   *   d i f f   -   t o D i g i t s ( S t r i n g T o D o u b l e ( S t r i n g T r i m ( t m p 2 [ 1 ] ) ) ,   s y m b o l ) ;  
 	 	  
 	 	 	 	 	 	 	 n e x t   =   t r u e ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 i f   ( n e x t   = =   f a l s e )   { c o n t i n u e ; }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 s t o p s l e v e l       =   s t o p s l e v e l   *   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 	  
 	 	 	 	 i f   ( t _ s t o p   < =   0 )   { c o n t i n u e ; }  
 	 	  
 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   0   & &   T r a i l W h a t   *   ( a s k b i d   -   O r d e r O p e n P r i c e ( ) )   >   t _ s t a r t )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( ( T r a i l W h a t   *   ( a s k b i d   -   s l t p )   > =   t _ s t o p   +   t _ s t e p )   | |   s l t p   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / /   c o n s i d e r   m i n i m u m   s t o p  
 	 	 	 	 	 	 f s l       =   M a t h A b s ( a s k b i d   -   t _ s t o p ) ;  
 	 	 	 	 	 	 l i m i t   =   b i d a s k   -   s t o p s l e v e l   *   T r a i l W h a t ;  
 	 	  
 	 	 	 	 	 	 i f   ( f s l   >   l i m i t )   { f s l   =   l i m i t ; }  
 	 	  
 	 	 	 	 	 	 i f   ( T r a i l W h a t   = =   1 )   / /   t r a i l   S L  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( s l t p   = =   0   | |   s l t p   <   f s l )   {  
 	 	 	 	 	 	 	 	 M o d i f y S t o p s ( O r d e r T i c k e t ( ) ,   a s k b i d   -   t _ s t o p ,   t _ o p p ,   L e v e l C o l o r ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   {   / /   t r a i l   T P  
 	 	 	 	 	 	 	 i f   ( s l t p   = =   0   | |   s l t p   >   f s l )   {  
 	 	 	 	 	 	 	 	 M o d i f y S t o p s ( O r d e r T i c k e t ( ) ,   t _ o p p ,   a s k b i d   +   t _ s t o p ,   L e v e l C o l o r ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( O r d e r T y p e ( )   = =   1   & &   T r a i l W h a t   *   ( O r d e r O p e n P r i c e ( )   -   a s k b i d )   >   t _ s t a r t )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( ( T r a i l W h a t   *   ( s l t p   -   a s k b i d )   > =   t _ s t o p   +   t _ s t e p )   | |   s l t p   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / /   c o n s i d e r   m i n i m u m   s t o p  
 	 	 	 	 	 	 f s l       =   M a t h A b s ( a s k b i d   +   t _ s t o p ) ;  
 	 	 	 	 	 	 l i m i t   =   b i d a s k   +   s t o p s l e v e l   *   T r a i l W h a t ;  
 	 	  
 	 	 	 	 	 	 i f   ( f s l   <   l i m i t )   { f s l   =   l i m i t ; }  
 	 	  
 	 	 	 	 	 	 i f   ( T r a i l W h a t   = =   1 )  
 	 	 	 	 	 	 {   / /   t r a i l   S L  
 	 	 	 	 	 	 	 i f   ( s l t p   = =   0   | |   s l t p   >   f s l )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 M o d i f y S t o p s ( O r d e r T i c k e t ( ) ,   a s k b i d   +   t _ s t o p ,   t _ o p p ,   L e v e l C o l o r ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {   / /   t r a i l   T P  
 	 	 	 	 	 	 	 i f   ( s l t p   = =   0   | |   s l t p   <   f s l )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 M o d i f y S t o p s ( O r d e r T i c k e t ( ) ,   t _ o p p ,   a s k b i d   -   t _ s t o p ,   L e v e l C o l o r ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " C h e c k   t r a d e s   c o u n t "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 >  
 c l a s s   M D L _ C h e c k T r a d e s C o u n t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   C o m p a r e ;  
 	 T 2   C o m p a r e C o u n t ;  
 	 T 3   G r o u p M o d e ;  
 	 T 4   G r o u p ;  
 	 T 5   S y m b o l M o d e ;  
 	 T 6   S y m b o l ;  
 	 T 7   B u y s O r S e l l s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h e c k T r a d e s C o u n t ( )  
 	 {  
 	 	 C o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 C o m p a r e C o u n t   =   ( i n t ) 3 ;  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   c o u n t   =   0 ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 {  
 	 	 	 	 c o u n t + + ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( c o m p a r e ( C o m p a r e ,   c o u n t ,   C o m p a r e C o u n t ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " B r e a k   e v e n   p o i n t   ( e a c h   t r a d e ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 >  
 c l a s s   M D L _ B r e a k E v e n P o i n t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   O n P r o f i t M o d e ;  
 	 T 7   O n P r o f i t P i p s ;  
 	 T 8   O n P r o f i t P e r c e n t S L ;  
 	 T 9   O n P r o f i t P e r c e n t T P ;  
 	 T 1 0   B E o f f s e t M o d e ;  
 	 T 1 1   B E P o f f s e t P i p s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ B r e a k E v e n P o i n t ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 O n P r o f i t M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 O n P r o f i t P i p s   =   ( d o u b l e ) 1 5 . 0 ;  
 	 	 O n P r o f i t P e r c e n t S L   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 O n P r o f i t P e r c e n t T P   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 B E o f f s e t M o d e   =   ( s t r i n g ) " n o n e " ;  
 	 	 B E P o f f s e t P i p s   =   ( d o u b l e ) 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( ! T r a d e S e l e c t B y I n d e x ( i n d e x , G r o u p M o d e , G r o u p ,   S y m b o l M o d e , S y m b o l ,   B u y s O r S e l l s ) )   { c o n t i n u e ; }  
 	 	 	  
 	 	 	 s t r i n g   s y m b o l       =   O r d e r S y m b o l ( ) ;  
 	 	 	 d o u b l e   d i s t a n c e   =   0 ;  
 	 	  
 	 	 	           i f   ( O n P r o f i t M o d e   = =   " f i x e d " )           { d i s t a n c e   =   t o D i g i t s ( O n P r o f i t P i p s , s y m b o l ) ; }  
 	 	 	 e l s e   i f   ( O n P r o f i t M o d e   = =   " p e r c e n t S L " )   { d i s t a n c e   =   M a t h A b s ( O r d e r O p e n P r i c e ( ) - a t t r S t o p L o s s ( ) ) * O n P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 	 e l s e   i f   ( O n P r o f i t M o d e   = =   " p e r c e n t T P " )   { d i s t a n c e   =   M a t h A b s ( O r d e r O p e n P r i c e ( ) - a t t r T a k e P r o f i t ( ) ) * O n P r o f i t P e r c e n t T P / 1 0 0 ; }  
 	 	  
 	 	 	 i f   (  
 	 	 	 	       ( O r d e r T y p e ( )   = =   0   & &   ( S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ A S K ) - O r d e r O p e n P r i c e ( )   >   d i s t a n c e )   & &   ( a t t r S t o p L o s s ( )   <   O r d e r O p e n P r i c e ( ) ) )  
 	 	 	 	 | |   ( O r d e r T y p e ( )   = =   1   & &   ( O r d e r O p e n P r i c e ( ) - S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ B I D )   >   d i s t a n c e )   & &   ( ( a t t r S t o p L o s s ( )   >   O r d e r O p e n P r i c e ( ) )   | |   a t t r S t o p L o s s ( )   = =   0 ) )  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 d o u b l e   b e _ o f f s e t   =   0 ;  
 	 	  
 	 	 	 	 i f   ( B E o f f s e t M o d e   = =   " p i p s " )  
 	 	 	 	 {  
 	 	 	 	 	 b e _ o f f s e t   =   t o D i g i t s ( B E P o f f s e t P i p s , s y m b o l ) ;  
 	 	  
 	 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   1 )   { b e _ o f f s e t   =   b e _ o f f s e t * ( - 1 ) ; }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 M o d i f y S t o p s ( O r d e r T i c k e t ( ) ,   O r d e r O p e n P r i c e ( ) + b e _ o f f s e t ,   a t t r T a k e P r o f i t ( ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " C l o s e   t r a d e s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 >  
 c l a s s   M D L _ C l o s e O p e n e d :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   O r d e r M i n u t e s ;  
 	 T 7   S l i p p a g e ;  
 	 T 8   A r r o w C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C l o s e O p e n e d ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 O r d e r M i n u t e s   =   ( i n t ) 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   c l o s e d _ c o u n t   =   0 ;  
 	 	 b o o l   f i n i s h e d         =   f a l s e ;  
 	 	  
 	 	 w h i l e   ( f i n i s h e d   = =   f a l s e )  
 	 	 {  
 	 	 	 i n t   c o u n t   =   0 ;  
 	 	  
 	 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 	 {  
 	 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 	 {  
 	 	 	 	 	 d a t e t i m e   t i m e _ d i f f   =   T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( ) ;  
 	 	  
 	 	 	 	 	 i f   ( t i m e _ d i f f   <   0 )   { t i m e _ d i f f   =   0 ; }   / /   t h i s   a c t u a l l y   h a p p e n s   s o m e t i m e s  
 	 	  
 	 	 	 	 	 i f   ( t i m e _ d i f f   > =   6 0   *   O r d e r M i n u t e s )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( O r d e r T i c k e t ( ) ,   S l i p p a g e ,   A r r o w C o l o r ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c l o s e d _ c o u n t + + ;  
 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 c o u n t + + ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( c o u n t   = =   0 )   { f i n i s h e d   =   t r u e ; }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " C h e c k   p r o f i t   ( u n r e a l i z e d ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 >  
 c l a s s   M D L _ C h e c k U P r o f i t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   E a c h P r o f i t M o d e ;  
 	 T 7   E a c h C o m p a r e ;  
 	 T 8   E a c h P r o f i t A m o u n t ;  
 	 T 9   E a c h P r o f i t A m o u n t P i p s ;  
 	 T 1 0   P r o f i t M o d e ;  
 	 T 1 1   C o m p a r e ;  
 	 T 1 2   P r o f i t A m o u n t ;  
 	 T 1 3   P r o f i t A m o u n t P i p s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h e c k U P r o f i t ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 E a c h P r o f i t M o d e   =   ( s t r i n g ) " " ;  
 	 	 E a c h C o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 E a c h P r o f i t A m o u n t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 E a c h P r o f i t A m o u n t P i p s   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 P r o f i t M o d e   =   ( s t r i n g ) " m o n e y " ;  
 	 	 C o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 P r o f i t A m o u n t P i p s   =   ( d o u b l e ) 1 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   a v g P r i c e         =   0 ;  
 	 	 d o u b l e   a v g L o a d           =   0 ;  
 	 	 d o u b l e   a v g L o t s           =   0 ;  
 	 	 d o u b l e   p r o f i t M o n e y   =   0 ;  
 	 	 d o u b l e   p r o f i t P i p s     =   0 ;  
 	 	 d o u b l e   p i p s S u m           =   0 ;  
 	 	 i n t   t r a d e s C o u n t         =   0 ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )   {  
 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )   {  
 	 	 	 	 d o u b l e   O r d e r O p e n P r i c e   =   O r d e r C h i l d O p e n P r i c e ( ) ;  
 	 	 	 	 d o u b l e   t r a d e P r o f i t         =   N o r m a l i z e D o u b l e ( O r d e r P r o f i t ( )   +   O r d e r S w a p ( )   +   O r d e r C o m m i s s i o n ( ) ,   2 ) ;  
 	 	  
 	 	 	 	 / /   F i l t e r   o u t   i n d i v i d u a l   t r a d e s  
 	 	 	 	 i f   ( E a c h P r o f i t M o d e   = =   " m o n e y " )   {  
 	 	 	 	 	 i f   ( c o m p a r e ( E a c h C o m p a r e ,   t r a d e P r o f i t ,   E a c h P r o f i t A m o u n t ) )   { / *   d o   n o t h i n g   * / }   e l s e   { c o n t i n u e ; }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( E a c h P r o f i t M o d e   = =   " p i p s " )   {  
 	 	 	 	 	 d o u b l e   i n d i v i d u a l _ p r o f i t   =   t o P i p s ( O r d e r C l o s e P r i c e ( )   -   O r d e r O p e n P r i c e ,   O r d e r S y m b o l ( ) ) ;  
 	 	  
 	 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   1 )   { i n d i v i d u a l _ p r o f i t   =   - 1   *   i n d i v i d u a l _ p r o f i t ; }  
 	 	  
 	 	 	 	 	 i f   ( c o m p a r e ( E a c h C o m p a r e ,   i n d i v i d u a l _ p r o f i t ,   E a c h P r o f i t A m o u n t P i p s ) )   { / *   d o   n o t h i n g * / }   e l s e   { c o n t i n u e ; }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 p r o f i t M o n e y   + =   t r a d e P r o f i t ;  
 	 	  
 	 	 	 	 i f   ( P r o f i t M o d e   = =   " p i p s "   | |   P r o f i t M o d e   = =   " p i p s - s u m " )   {  
 	 	 	 	 	 i f   ( I s O r d e r T y p e B u y ( ) )   {  
 	 	 	 	 	 	 p i p s S u m   + =   t o P i p s ( O r d e r C l o s e P r i c e ( )   -   O r d e r O p e n P r i c e ,   O r d e r S y m b o l ( ) ) ;  
 	 	 	 	 	 	 a v g L o a d   + =   O r d e r O p e n P r i c e   *   O r d e r L o t s ( ) ;  
 	 	 	 	 	 	 a v g L o t s   + =   O r d e r L o t s ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   {  
 	 	 	 	 	 	 p i p s S u m   + =   t o P i p s ( O r d e r O p e n P r i c e   -   O r d e r C l o s e P r i c e ( ) ,   O r d e r S y m b o l ( ) ) ;  
 	 	 	 	 	 	 a v g L o a d   - =   O r d e r O p e n P r i c e   *   O r d e r L o t s ( ) ;  
 	 	 	 	 	 	 a v g L o t s   - =   O r d e r L o t s ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 t r a d e s C o u n t   + =   1 ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( P r o f i t M o d e   = =   " p i p s " )   {  
 	 	 	 a v g P r i c e   =   0 ;  
 	 	  
 	 	 	 i f   ( a v g L o t s   ! =   0 )   {  
 	 	 	 	 a v g P r i c e   =   ( a v g L o a d   /   a v g L o t s ) ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( a v g P r i c e   ! =   0 )   {  
 	 	 	 	 i f   ( a v g L o t s   >   0 )   {  
 	 	 	 	 	 p r o f i t P i p s   =   S y m b o l I n f o D o u b l e ( S y m b o l ,   S Y M B O L _ B I D )   -   a v g P r i c e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   {  
 	 	 	 	 	 p r o f i t P i p s   =   a v g P r i c e   -   S y m b o l I n f o D o u b l e ( S y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 p r o f i t P i p s   =   t o P i p s ( p r o f i t P i p s ,   S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (  
 	 	 	       ( P r o f i t M o d e   = =   " m o n e y "         & &   ( C o m p a r e V a l u e s ( C o m p a r e ,   p r o f i t M o n e y ,   P r o f i t A m o u n t ) ) )  
 	 	 	 | |   ( P r o f i t M o d e   = =   " p i p s "           & &   ( C o m p a r e V a l u e s ( C o m p a r e ,   p r o f i t P i p s ,   P r o f i t A m o u n t P i p s ) ) )  
 	 	 	 | |   ( P r o f i t M o d e   = =   " p i p s - s u m "   & &   ( C o m p a r e V a l u e s ( C o m p a r e ,   p i p s S u m ,   P r o f i t A m o u n t P i p s ) ) )  
 	 	 )   {  
 	 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 	 }  
 	 	 e l s e   {  
 	 	 	 _ c a l l b a c k _ ( 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   " c l o s e   ( p a r t i a l l y ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 >  
 c l a s s   M D L _ L o o p C l o s e P a r t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   P a r t V o l M o d e ;  
 	 T 2   P a r t V o l L o t s ;  
 	 T 3   P a r t V o l P e r c e n t ;  
 	 T 4   S l i p p a g e ;  
 	 T 5   A r r o w C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ L o o p C l o s e P a r t ( )  
 	 {  
 	 	 P a r t V o l M o d e   =   ( s t r i n g ) " p e r c e n t " ;  
 	 	 P a r t V o l L o t s   =   ( d o u b l e ) 0 . 0 5 ;  
 	 	 P a r t V o l P e r c e n t   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( F X D _ B R E A K   = =   t r u e )   { r e t u r n ; }  
 	 	  
 	 	 L o o p e d R e s u m e ( ) ;  
 	 	  
 	 	 / / - -   l o t s   t o   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s   =   0 ;  
 	 	  
 	 	           i f   ( P a r t V o l M o d e   = =   " f i x e d " )                         { l o t s   =   P a r t V o l L o t s ; }  
 	 	 e l s e   i f   ( P a r t V o l M o d e   = =   " p e r c e n t " )                     { l o t s   =   ( O r d e r L o t s ( ) * P a r t V o l P e r c e n t ) / 1 0 0 ; }  
 	 	 e l s e   i f   ( P a r t V o l M o d e   = =   " p e r c e n t - i n i t i a l " )     { l o t s   =   ( a t t r L o t s I n i t i a l ( ) * P a r t V o l P e r c e n t ) / 1 0 0 ; }  
 	 	  
 	 	 i f   ( P a r t V o l P e r c e n t   >   1 0 0 )   { l o t s   =   O r d e r L o t s ( ) ; }  
 	 	  
 	 	 / / - -   p a r t i a l   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 b o o l   s u c c e s s   =   t r u e ;  
 	 	  
 	 	 i f   ( O r d e r T y p e ( )   <   2 )   {  
 	 	 	 s u c c e s s   =   C l o s e T r a d e P a r t i a l ( O r d e r T i c k e t ( ) ,   l o t s ,   S l i p p a g e ,   A r r o w C o l o r ) ;  
 	 	 }  
 	 	  
 	 	 i f   ( s u c c e s s )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " P a s s "   m o d e l  
 c l a s s   M D L _ P a s s :   p u b l i c   B l o c k C a l l s  
 {  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " W e e k d a y   f i l t e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 >  
 c l a s s   M D L _ W e e k d a y F i l t e r :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   S e r v e r O r L o c a l T i m e ;  
 	 T 2   t r a d e M o n d a y ;  
 	 T 3   t r a d e T u e s d a y ;  
 	 T 4   t r a d e W e d n e s d a y ;  
 	 T 5   t r a d e T h u r s d a y ;  
 	 T 6   t r a d e F r i d a y ;  
 	 T 7   t r a d e S a t u r d a y ;  
 	 T 8   t r a d e S u n d a y ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ W e e k d a y F i l t e r ( )  
 	 {  
 	 	 S e r v e r O r L o c a l T i m e   =   ( s t r i n g ) " s e r v e r " ;  
 	 	 t r a d e M o n d a y   =   ( b o o l ) t r u e ;  
 	 	 t r a d e T u e s d a y   =   ( b o o l ) t r u e ;  
 	 	 t r a d e W e d n e s d a y   =   ( b o o l ) t r u e ;  
 	 	 t r a d e T h u r s d a y   =   ( b o o l ) t r u e ;  
 	 	 t r a d e F r i d a y   =   ( b o o l ) t r u e ;  
 	 	 t r a d e S a t u r d a y   =   ( b o o l ) f a l s e ;  
 	 	 t r a d e S u n d a y   =   ( b o o l ) f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   d a y   =   0 ;  
 	 	  
 	 	           i f   ( S e r v e r O r L o c a l T i m e   = =   " s e r v e r " )   { d a y   =   T i m e D a y O f W e e k ( T i m e C u r r e n t ( ) ) ; }  
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " l o c a l " )     { d a y   =   T i m e D a y O f W e e k ( T i m e L o c a l ( ) ) ; }  
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " g m t " )         { d a y   =   T i m e D a y O f W e e k ( T i m e G M T ( ) ) ; }  
 	 	  
 	 	 i f   (  
 	 	 	       ( t r a d e M o n d a y         & &   d a y   = =   1 )  
 	 	 	 | |   ( t r a d e T u e s d a y       & &   d a y   = =   2 )  
 	 	 	 | |   ( t r a d e W e d n e s d a y   & &   d a y   = =   3 )  
 	 	 	 | |   ( t r a d e T h u r s d a y     & &   d a y   = =   4 )  
 	 	 	 | |   ( t r a d e F r i d a y         & &   d a y   = =   5 )  
 	 	 	 | |   ( t r a d e S a t u r d a y     & &   d a y   = =   6 )  
 	 	 	 | |   ( t r a d e S u n d a y         & &   d a y   = =   0 )  
 	 	 	 )  
 	 	 {  
 	 	       _ c a l l b a c k _ ( 1 ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	       _ c a l l b a c k _ ( 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   " H o u r s   f i l t e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 >  
 c l a s s   M D L _ H o u r s F i l t e r :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   S e r v e r O r L o c a l T i m e ;  
 	 T 2   S t a r t H o u r ;  
 	 T 3   E n d H o u r ;  
 	 T 4   S e c o n d H o u r s B l o c k ;  
 	 T 5   S e c o n d S t a r t H o u r ;  
 	 T 6   S e c o n d E n d H o u r ;  
 	 T 7   T h i r d H o u r s B l o c k ;  
 	 T 8   T h i r d S t a r t H o u r ;  
 	 T 9   T h i r d E n d H o u r ;  
 	 T 1 0   F o u r t h H o u r s B l o c k ;  
 	 T 1 1   F o u r t h S t a r t H o u r ;  
 	 T 1 2   F o u r t h E n d H o u r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ H o u r s F i l t e r ( )  
 	 {  
 	 	 S e r v e r O r L o c a l T i m e   =   ( s t r i n g ) " s e r v e r " ;  
 	 	 S t a r t H o u r   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 	 E n d H o u r   =   ( s t r i n g ) " 0 6 : 0 0 " ;  
 	 	 S e c o n d H o u r s B l o c k   =   ( b o o l ) f a l s e ;  
 	 	 S e c o n d S t a r t H o u r   =   ( s t r i n g ) " 0 6 : 0 0 " ;  
 	 	 S e c o n d E n d H o u r   =   ( s t r i n g ) " 1 2 : 0 0 " ;  
 	 	 T h i r d H o u r s B l o c k   =   ( b o o l ) f a l s e ;  
 	 	 T h i r d S t a r t H o u r   =   ( s t r i n g ) " 1 2 : 0 0 " ;  
 	 	 T h i r d E n d H o u r   =   ( s t r i n g ) " 1 8 : 0 0 " ;  
 	 	 F o u r t h H o u r s B l o c k   =   ( b o o l ) f a l s e ;  
 	 	 F o u r t h S t a r t H o u r   =   ( s t r i n g ) " 1 8 : 0 0 " ;  
 	 	 F o u r t h E n d H o u r   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   p a s s           =   f a l s e ;  
 	 	 i n t   m o d e _ t i m e   =   0 ;  
 	 	 d a t e t i m e   s t a r t   =   0 ,   e n d   =   0 ,   n o w   =   0 ;  
 	 	  
 	 	 	     i f   ( S e r v e r O r L o c a l T i m e   = =   " s e r v e r " )   { m o d e _ t i m e   =   0 ;   n o w   =   T i m e C u r r e n t ( ) ; }  
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " l o c a l " )     { m o d e _ t i m e   =   1 ;   n o w   =   T i m e L o c a l ( ) ; }    
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " g m t " ) 	   { m o d e _ t i m e   =   2 ;   n o w   =   T i m e G M T ( ) ; }  
 	 	  
 	 	 s t a r t   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   S t a r t H o u r ) ;  
 	 	 e n d       =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   E n d H o u r ) ;  
 	 	  
 	 	 i f   ( e n d   <   s t a r t )   e n d   =   e n d   +   8 6 4 0 0 ;  
 	 	  
 	 	 i f   ( n o w   > =   s t a r t   & &   n o w   <   e n d )   p a s s = t r u e ;  
 	 	  
 	 	 i f   ( p a s s   = =   f a l s e   & &   S e c o n d H o u r s B l o c k   = =   t r u e )  
 	 	 {  
 	 	 	 s t a r t   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   S e c o n d S t a r t H o u r ) ;  
 	 	 	 e n d       =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   S e c o n d E n d H o u r ) ;  
 	 	  
 	 	 	 i f   ( e n d   <   s t a r t )   e n d   =   e n d   +   8 6 4 0 0 ;  
 	 	  
 	 	 	 i f   ( n o w   > =   s t a r t   & &   n o w   <   e n d )   p a s s   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   ( p a s s   = =   f a l s e   & &   T h i r d H o u r s B l o c k   = =   t r u e )  
 	 	 {  
 	 	 	 s t a r t   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   T h i r d S t a r t H o u r ) ;  
 	 	 	 e n d       =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   T h i r d E n d H o u r ) ;  
 	 	  
 	 	 	 i f   ( e n d   <   s t a r t )   e n d   =   e n d   +   8 6 4 0 0 ;  
 	 	  
 	 	 	 i f   ( n o w   > =   s t a r t   & &   n o w   <   e n d )   p a s s   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   ( p a s s   = =   f a l s e   & &   F o u r t h H o u r s B l o c k   = =   t r u e )  
 	 	 {  
 	 	 	 s t a r t   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   F o u r t h S t a r t H o u r ) ;  
 	 	 	 e n d       =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   F o u r t h E n d H o u r ) ;  
 	 	  
 	 	 	 i f   ( e n d   <   s t a r t )   e n d   =   e n d   +   8 6 4 0 0 ;  
 	 	 	 i f   ( n o w   > =   s t a r t   & &   n o w   <   e n d )   p a s s   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   ( p a s s   = =   t r u e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " M o d i f y   V a r i a b l e s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   _ T 2 _ , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   _ T 4 _ , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   _ T 6 _ , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   _ T 8 _ , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   _ T 1 0 _ >  
 c l a s s   M D L _ M o d i f y V a r i a b l e s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   V a r i a b l e 1 ;  
 	 T 2   V a l u e 1 ;   v i r t u a l   _ T 2 _   _ V a l u e 1 _ ( ) { r e t u r n ( _ T 2 _ ) 0 ; }  
 	 T 3   V a r i a b l e 2 ;  
 	 T 4   V a l u e 2 ;   v i r t u a l   _ T 4 _   _ V a l u e 2 _ ( ) { r e t u r n ( _ T 4 _ ) 0 ; }  
 	 T 5   V a r i a b l e 3 ;  
 	 T 6   V a l u e 3 ;   v i r t u a l   _ T 6 _   _ V a l u e 3 _ ( ) { r e t u r n ( _ T 6 _ ) 0 ; }  
 	 T 7   V a r i a b l e 4 ;  
 	 T 8   V a l u e 4 ;   v i r t u a l   _ T 8 _   _ V a l u e 4 _ ( ) { r e t u r n ( _ T 8 _ ) 0 ; }  
 	 T 9   V a r i a b l e 5 ;  
 	 T 1 0   V a l u e 5 ;   v i r t u a l   _ T 1 0 _   _ V a l u e 5 _ ( ) { r e t u r n ( _ T 1 0 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ M o d i f y V a r i a b l e s ( )  
 	 {  
 	 	 V a r i a b l e 1   =   ( i n t ) 0 ;  
 	 	 V a r i a b l e 2   =   ( i n t ) 0 ;  
 	 	 V a r i a b l e 3   =   ( i n t ) 0 ;  
 	 	 V a r i a b l e 4   =   ( i n t ) 0 ;  
 	 	 V a r i a b l e 5   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / /   n o t h i n g   h e r e ,   b e c a u s e   t h e   a c t u a l   c o d e   i s   g e n e r a t e d   i n   t h e   g e n e r a t o r  
 	 	 / /   _ V a l u e 1 _ ( )  
 	 	 / /   _ V a l u e 2 _ ( )  
 	 	 / /   _ V a l u e 3 _ ( )  
 	 	 / /   _ V a l u e 4 _ ( )  
 	 	 / /   _ V a l u e 5 _ ( )  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " S e t   " C u r r e n t   M a r k e t "   f o r   n e x t   b l o c k s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 >  
 c l a s s   M D L _ S e t C u r r e n t S y m b o l 2 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L i s t O f S y m b o l s ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 s t r i n g   s y m b o l s 0 ;  
 	 s t r i n g   s y m b o l s [ ] ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ S e t C u r r e n t S y m b o l 2 ( )  
 	 {  
 	 	 L i s t O f S y m b o l s   =   ( s t r i n g ) " E U R U S D , G B P U S D , A U D U S D " ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 s y m b o l s 0   =     " " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   i , s , s i z e ;  
 	 	  
 	 	 / / - -   e x p l o d e   a n d   c o r r e c t   s y m b o l s   l i s t ,   t h e n   c h e c k   f o r   e x i s t e n c e  
 	 	 i f   ( L i s t O f S y m b o l s   ! =   s y m b o l s 0 )  
 	 	 {  
 	 	 	 s t r i n g   s y m b o l s _ t m p [ ] ;  
 	 	  
 	 	 	 / / -   e x p l o d e  
 	 	 	 s y m b o l s 0   =   L i s t O f S y m b o l s ;  
 	 	 	 S t r i n g E x p l o d e ( " , " ,   L i s t O f S y m b o l s ,   s y m b o l s _ t m p ) ;  
 	 	  
 	 	 	 / / -   t r i m  
 	 	 	 s i z e   =   A r r a y S i z e ( s y m b o l s _ t m p ) ;  
 	 	  
 	 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + )   {  
 	 	 	 	 s y m b o l s _ t m p [ i ]   =   S t r i n g T r i m ( s y m b o l s _ t m p [ i ] ) ;  
 	 	 	 }  
 	 	  
 	 	 	 / / -   c h e c k   f o r   e x i s t e n c e  
 	 	 	 s t r i n g   s y m b o l s _ a l l [ ] ;  
 	 	 	 S y m b o l s L i s t ( s y m b o l s _ a l l ,   f a l s e ) ;  
 	 	  
 	 	 	 s   =   0 ;  
 	 	 	 A r r a y R e s i z e ( s y m b o l s ,   s i z e ) ;  
 	 	  
 	 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + )  
 	 	 	 {  
 	 	 	 	 / / -   e x c l u d e   n o n - e x i s t i n g   s y m b o l  
 	 	 	 	 i f   ( A r r a y S e a r c h ( s y m b o l s _ a l l ,   s y m b o l s _ t m p [ i ] )   = =   - 1 )  
 	 	 	 	 {  
 	 	 	 	 	 A l e r t ( " S y m b o l   "   +   s y m b o l s _ t m p [ i ]   +   "   d o e s   n o t   e x i s t s   a n d   w i l l   b e   e x c l u d e d   f r o m   t h e   l i s t   i n   b l o c k   # "   +   _ _ b l o c k _ u s e r _ n u m b e r ) ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 s y m b o l s [ s ]   =   s y m b o l s _ t m p [ i ] ;  
 	 	 	 	 s + + ;  
 	 	 	 }  
 	 	  
 	 	 	 A r r a y R e s i z e ( s y m b o l s ,   s ) ;  
 	 	 }  
 	 	  
 	 	 / /   C r e a t e   a   l o o p  
 	 	 s i z e   =   A r r a y S i z e ( s y m b o l s ) ;  
 	 	  
 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + )  
 	 	 {  
 	 	 	 C u r r e n t S y m b o l ( s y m b o l s [ i ] ) ;  
 	 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 	 }  
 	 	  
 	 	 C u r r e n t S y m b o l ( S y m b o l ( ) ) ;   / /   R e s e t   t h e   c u r r e n t   s y m b o l  
 	 	 _ c a l l b a c k _ ( 0 ) ;  
 	 }  
 } ;  
  
 / /   " C o m m e n t "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   _ T 1 6 _ , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   _ T 2 0 _ , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   _ T 2 4 _ , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   _ T 2 8 _ , t y p e n a m e   T 2 9 , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   _ T 3 2 _ , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   T 3 5 , t y p e n a m e   T 3 6 , t y p e n a m e   _ T 3 6 _ , t y p e n a m e   T 3 7 , t y p e n a m e   T 3 8 , t y p e n a m e   T 3 9 , t y p e n a m e   T 4 0 , t y p e n a m e   _ T 4 0 _ , t y p e n a m e   T 4 1 , t y p e n a m e   T 4 2 , t y p e n a m e   T 4 3 , t y p e n a m e   T 4 4 , t y p e n a m e   _ T 4 4 _ , t y p e n a m e   T 4 5 , t y p e n a m e   T 4 6 >  
 c l a s s   M D L _ C o m m e n t E x :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   T i t l e ;  
 	 T 2   O b j C h a r t S u b W i n d o w ;  
 	 T 3   O b j C o r n e r ;  
 	 T 4   O b j X ;  
 	 T 5   O b j Y ;  
 	 T 6   O b j T i t l e F o n t ;  
 	 T 7   O b j T i t l e F o n t C o l o r ;  
 	 T 8   O b j T i t l e F o n t S i z e ;  
 	 T 9   O b j L a b e l s F o n t ;  
 	 T 1 0   O b j L a b e l s F o n t C o l o r ;  
 	 T 1 1   O b j L a b e l s F o n t S i z e ;  
 	 T 1 2   O b j F o n t ;  
 	 T 1 3   O b j F o n t C o l o r ;  
 	 T 1 4   O b j F o n t S i z e ;  
 	 T 1 5   L a b e l 1 ;  
 	 T 1 6   V a l u e 1 ;   v i r t u a l   _ T 1 6 _   _ V a l u e 1 _ ( ) { r e t u r n ( _ T 1 6 _ ) 0 ; }  
 	 T 1 7   F o r m a t N u m b e r 1 ;  
 	 T 1 8   F o r m a t T i m e 1 ;  
 	 T 1 9   L a b e l 2 ;  
 	 T 2 0   V a l u e 2 ;   v i r t u a l   _ T 2 0 _   _ V a l u e 2 _ ( ) { r e t u r n ( _ T 2 0 _ ) 0 ; }  
 	 T 2 1   F o r m a t N u m b e r 2 ;  
 	 T 2 2   F o r m a t T i m e 2 ;  
 	 T 2 3   L a b e l 3 ;  
 	 T 2 4   V a l u e 3 ;   v i r t u a l   _ T 2 4 _   _ V a l u e 3 _ ( ) { r e t u r n ( _ T 2 4 _ ) 0 ; }  
 	 T 2 5   F o r m a t N u m b e r 3 ;  
 	 T 2 6   F o r m a t T i m e 3 ;  
 	 T 2 7   L a b e l 4 ;  
 	 T 2 8   V a l u e 4 ;   v i r t u a l   _ T 2 8 _   _ V a l u e 4 _ ( ) { r e t u r n ( _ T 2 8 _ ) 0 ; }  
 	 T 2 9   F o r m a t N u m b e r 4 ;  
 	 T 3 0   F o r m a t T i m e 4 ;  
 	 T 3 1   L a b e l 5 ;  
 	 T 3 2   V a l u e 5 ;   v i r t u a l   _ T 3 2 _   _ V a l u e 5 _ ( ) { r e t u r n ( _ T 3 2 _ ) 0 ; }  
 	 T 3 3   F o r m a t N u m b e r 5 ;  
 	 T 3 4   F o r m a t T i m e 5 ;  
 	 T 3 5   L a b e l 6 ;  
 	 T 3 6   V a l u e 6 ;   v i r t u a l   _ T 3 6 _   _ V a l u e 6 _ ( ) { r e t u r n ( _ T 3 6 _ ) 0 ; }  
 	 T 3 7   F o r m a t N u m b e r 6 ;  
 	 T 3 8   F o r m a t T i m e 6 ;  
 	 T 3 9   L a b e l 7 ;  
 	 T 4 0   V a l u e 7 ;   v i r t u a l   _ T 4 0 _   _ V a l u e 7 _ ( ) { r e t u r n ( _ T 4 0 _ ) 0 ; }  
 	 T 4 1   F o r m a t N u m b e r 7 ;  
 	 T 4 2   F o r m a t T i m e 7 ;  
 	 T 4 3   L a b e l 8 ;  
 	 T 4 4   V a l u e 8 ;   v i r t u a l   _ T 4 4 _   _ V a l u e 8 _ ( ) { r e t u r n ( _ T 4 4 _ ) 0 ; }  
 	 T 4 5   F o r m a t N u m b e r 8 ;  
 	 T 4 6   F o r m a t T i m e 8 ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 b o o l   i n i t i a l i z e d ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C o m m e n t E x ( )  
 	 {  
 	 	 T i t l e   =   ( s t r i n g ) " C o m m e n t   M e s s a g e " ;  
 	 	 O b j C h a r t S u b W i n d o w   =   ( s t r i n g ) " " ;  
 	 	 O b j C o r n e r   =   ( i n t ) C O R N E R _ L E F T _ U P P E R ;  
 	 	 O b j X   =   ( i n t ) 5 ;  
 	 	 O b j Y   =   ( i n t ) 2 4 ;  
 	 	 O b j T i t l e F o n t   =   ( s t r i n g ) " G e o r g i a " ;  
 	 	 O b j T i t l e F o n t C o l o r   =   ( c o l o r ) c l r G o l d ;  
 	 	 O b j T i t l e F o n t S i z e   =   ( i n t ) 1 3 ;  
 	 	 O b j L a b e l s F o n t   =   ( s t r i n g ) " V e r d a n a " ;  
 	 	 O b j L a b e l s F o n t C o l o r   =   ( c o l o r ) c l r D a r k G r a y ;  
 	 	 O b j L a b e l s F o n t S i z e   =   ( i n t ) 1 0 ;  
 	 	 O b j F o n t   =   ( s t r i n g ) " V e r d a n a " ;  
 	 	 O b j F o n t C o l o r   =   ( c o l o r ) c l r W h i t e ;  
 	 	 O b j F o n t S i z e   =   ( i n t ) 1 0 ;  
 	 	 L a b e l 1   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 2   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 3   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 4   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 5   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 6   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 7   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 L a b e l 8   =   ( s t r i n g ) " " ;  
 	 	 F o r m a t N u m b e r 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 i n i t i a l i z e d   =     f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   | |   M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) )  
 	 	 {  
 	 	 	  
 	 	  
 	 	 	 l o n g   O b j C h a r t I D   =   0 ;  
 	 	 	 i n t   O b j A n c h o r       =   A N C H O R _ L E F T ;  
 	 	  
 	 	 	 i f   ( O b j C o r n e r   = =   C O R N E R _ R I G H T _ U P P E R   | |   O b j C o r n e r   = =   C O R N E R _ R I G H T _ L O W E R )  
 	 	 	 {  
 	 	 	 	 O b j A n c h o r   =   A N C H O R _ R I G H T ;  
 	 	 	 }  
 	 	  
 	 	 	 s t r i n g   n a m e b a s e   =   " f x d _ c m n t _ "   +   _ _ b l o c k _ u s e r _ n u m b e r ;  
 	 	  
 	 	 	 i n t   s u b w i n d o w   =   W i n d o w F i n d V i s i b l e ( O b j C h a r t I D ,   O b j C h a r t S u b W i n d o w ) ;  
 	 	  
 	 	 	 i f   ( s u b w i n d o w   > =   0 )  
 	 	 	 {  
 	 	 	 	 / / - -   d r a w   c o m m e n t   t i t l e  
 	 	 	 	 i f   ( ( s t r i n g ) T i t l e   ! =   " " )  
 	 	 	 	 {  
 	 	 	 	 	 s t r i n g   n a m e t i t l e   =   n a m e b a s e ;  
 	 	  
 	 	 	 	 	 i f ( O b j e c t F i n d ( O b j C h a r t I D ,   n a m e t i t l e )   <   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( ! O b j e c t C r e a t e ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J _ L A B E L ,   s u b w i n d o w ,   0 ,   0 ,   0 ,   0 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 P r i n t ( _ _ F U N C T I O N _ _ ,   " :   f a i l e d   t o   c r e a t e   t e x t   o b j e c t !   E r r o r   c o d e   =   " ,   G e t L a s t E r r o r ( ) ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ F O N T S I Z E ,   ( i n t ) ( O b j T i t l e F o n t S i z e ) ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ C O L O R ,   O b j T i t l e F o n t C o l o r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ B A C K ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ S E L E C T A B L E ,   1 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ S E L E C T E D ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ H I D D E N ,   1 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ C O R N E R ,   O b j C o r n e r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ A N C H O R ,   O b j A n c h o r ) ;  
 	 	  
 	 	 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ F O N T ,   O b j T i t l e F o n t ) ;  
 	 	  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ X D I S T A N C E ,   O b j X ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ Y D I S T A N C E ,   O b j Y ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 O b j X   =   ( i n t ) O b j e c t G e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ X D I S T A N C E ) ;  
 	 	 	 	 	 	 O b j Y   =   ( i n t ) O b j e c t G e t I n t e g e r ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ Y D I S T A N C E ) ;  
 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e t i t l e ,   O B J P R O P _ T E X T ,   ( s t r i n g ) T i t l e ) ;  
 	 	  
 	 	 	 	 	 O b j Y   =   ( i n t ) ( O b j Y   +   O b j T i t l e F o n t S i z e   /   3 ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 / / - -   d r a w   c o m m e n t   r o w s  
 	 	 	 	 f o r   ( i n t   i   =   1 ;   i   < =   8 ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 s t r i n g   t e x t         =   " " ;  
 	 	 	 	 	 s t r i n g   t e x t l b l   =   " " ;  
 	 	  
 	 	 	 	 	 s w i t c h ( i )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a s e   1 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 1   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 1 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 1 _ ( ) ,   F o r m a t N u m b e r 1 ,   F o r m a t T i m e 1 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   2 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 2   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 2 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 2 _ ( ) ,   F o r m a t N u m b e r 2 ,   F o r m a t T i m e 2 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   3 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 3   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 3 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 3 _ ( ) ,   F o r m a t N u m b e r 3 ,   F o r m a t T i m e 3 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   4 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 4   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 4 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 4 _ ( ) ,   F o r m a t N u m b e r 4 ,   F o r m a t T i m e 4 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   5 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 5   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 5 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 5 _ ( ) ,   F o r m a t N u m b e r 5 ,   F o r m a t T i m e 5 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   6 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 6   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 6 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 6 _ ( ) ,   F o r m a t N u m b e r 6 ,   F o r m a t T i m e 6 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   7 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 7   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 7 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 7 _ ( ) ,   F o r m a t N u m b e r 7 ,   F o r m a t T i m e 7 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 c a s e   8 :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( L a b e l 8   ! =   " " )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t e x t l b l   =   L a b e l 8 ;  
 	 	 	 	 	 	 	 	 t e x t         =   F o r m a t V a l u e F o r P r i n t i n g ( _ V a l u e 8 _ ( ) ,   F o r m a t N u m b e r 8 ,   F o r m a t T i m e 8 ) ;  
 	 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	       }  
 	 	  
 	 	 	 	 	 s t r i n g   n a m e         =   n a m e b a s e   +   " _ "   +   ( s t r i n g ) i ;  
 	 	 	 	 	 s t r i n g   n a m e l b l   =   n a m e   +   " _ l " ;  
 	 	  
 	 	 	 	 	 i f   ( t e x t l b l   = =   " " )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( ! i n i t i a l i z e d )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 / / - -   p r e - d e l e t e  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( O b j C h a r t I D ,   n a m e l b l ) ;  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( O b j C h a r t I D ,   n a m e ) ;  
 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 / / - -   d r a w   i n i t i a l   o b j e c t s  
 	 	 	 	 	 i f   ( O b j e c t F i n d ( O b j C h a r t I D ,   n a m e )   <   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( t e x t l b l   = =   " " )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 i f   ( O b j e c t C r e a t e ( O b j C h a r t I D ,   n a m e l b l ,   O B J _ L A B E L ,   s u b w i n d o w ,   0 ,   0 ,   0 ,   0 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ C O R N E R ,   O b j C o r n e r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ A N C H O R ,   O b j A n c h o r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ B A C K ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ S E L E C T A B L E ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ S E L E C T E D ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ H I D D E N ,   1 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ F O N T S I Z E ,   O b j L a b e l s F o n t S i z e ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ C O L O R ,   O b j L a b e l s F o n t C o l o r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ F O N T ,   O b j L a b e l s F o n t ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 P r i n t ( _ _ F U N C T I O N _ _ ,   " :   f a i l e d   t o   c r e a t e   t e x t   o b j e c t !   E r r o r   c o d e   =   " ,   G e t L a s t E r r o r ( ) ) ;  
 	 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 	 i f   ( O b j e c t C r e a t e ( O b j C h a r t I D ,   n a m e ,   O B J _ L A B E L ,   s u b w i n d o w ,   0 ,   0 ,   0 ,   0 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ C O R N E R ,   O b j C o r n e r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ A N C H O R ,   O b j A n c h o r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ B A C K ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ S E L E C T A B L E ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ S E L E C T E D ,   0 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ H I D D E N ,   1 ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   O b j F o n t S i z e ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ C O L O R ,   O b j F o n t C o l o r ) ;  
 	 	 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ F O N T ,   O b j F o n t ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 P r i n t ( _ _ F U N C T I O N _ _ ,   " :   f a i l e d   t o   c r e a t e   t e x t   o b j e c t !   E r r o r   c o d e   =   " ,   G e t L a s t E r r o r ( ) ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( t e x t l b l   = =   " " )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( O b j C h a r t I D ,   n a m e l b l ) ;  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( O b j C h a r t I D ,   n a m e ) ;  
 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 O b j Y     =   ( i n t ) ( O b j Y   +   O b j F o n t S i z e   +   O b j F o n t S i z e / 2 ) ;  
 	 	  
 	 	 	 	 	 / / - -   u p d a t e   l a b e l   o b j e c t s  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ X D I S T A N C E ,   O b j X ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ Y D I S T A N C E ,   O b j Y ) ;  
 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ T E X T ,   ( s t r i n g ) t e x t l b l ) ;  
 	 	  
 	 	 	 	 	 / / - -   u p d a t e   v a l u e   o b j e c t s  
 	 	 	 	 	 i n t   x                 =   0 ;  
 	 	 	 	 	 i n t   x s i z e l b l   =   ( i n t ) O b j e c t G e t I n t e g e r ( O b j C h a r t I D ,   n a m e l b l ,   O B J P R O P _ X S I Z E ) ;  
 	 	  
 	 	 	 	 	 i f   ( x s i z e l b l   = =   0 )   {  
 	 	 	 	 	 	 / / - -   w h e n   t h e   o b j e c t   i s   n e w l y   c r e a t e d ,   i t   r e t u r n s   0   f o r   X S I Z E   a n d   Y S I Z E ,   s o   h e r e   w e   w i l l   t r i c k   i t   s o m e h o w  
 	 	 	 	 	 	 x s i z e l b l   =   ( i n t ) ( S t r i n g L e n ( ( s t r i n g ) t e x t l b l )   *   O b j F o n t S i z e   /   1 . 5   +   O b j F o n t S i z e   /   2 ) ;  
 	 	 	 	 	 }  
 	 	  
 	 	 	 	 	 x   =   O b j X   +   ( x s i z e l b l   +   O b j F o n t S i z e / 2 ) ;  
 	 	  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   O b j Y ) ;  
 	 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D ,   n a m e ,   O B J P R O P _ T E X T ,   ( s t r i n g ) t e x t ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 C h a r t R e d r a w ( ) ;  
 	 	 	 }  
 	 	  
 	 	 	 i n i t i a l i z e d   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " L o g   m e s s a g e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 >  
 c l a s s   M D L _ P r i n t M e s s a g e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   P r i n t T e x t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ P r i n t M e s s a g e ( )  
 	 {  
 	 	 P r i n t T e x t   =   ( s t r i n g ) " E n t e r   y o u r   t e x t   h e r e " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 P r i n t ( P r i n t T e x t ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   " H i g h e s t   P r i c e   ( C a n d l e s   p e r i o d ) "   m o d e l  
 c l a s s   M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   S t a r t B a r ;  
 	 i n t   E n d B a r ;  
 	 i n t   W h a t T o G e t ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s ( )  
 	 {  
 	 	 S t a r t B a r   =   ( i n t ) 0 ;  
 	 	 E n d B a r   =   ( i n t ) 1 0 ;  
 	 	 W h a t T o G e t   =   ( i n t ) 1 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   H i g h e s t F r o m T o ( S y m b o l , P e r i o d , S t a r t B a r , E n d B a r , W h a t T o G e t ) ;  
 	 }  
 } ;  
  
 / /   " L o w e s t   P r i c e   ( C a n d l e s   p e r i o d ) "   m o d e l  
 c l a s s   M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   S t a r t B a r ;  
 	 i n t   E n d B a r ;  
 	 i n t   W h a t T o G e t ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s ( )  
 	 {  
 	 	 S t a r t B a r   =   ( i n t ) 0 ;  
 	 	 E n d B a r   =   ( i n t ) 1 0 ;  
 	 	 W h a t T o G e t   =   ( i n t ) 1 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   L o w e s t F r o m T o ( S y m b o l , P e r i o d , S t a r t B a r , E n d B a r , W h a t T o G e t ) ;  
 	 }  
 } ;  
  
 / /   " C a n d l e "   m o d e l  
 c l a s s   M D L I C _ c a n d l e s _ c a n d l e s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   i O H L C ;  
 	 s t r i n g   M o d e C a n d l e F i n d B y ;  
 	 i n t   C a n d l e I D ;  
 	 s t r i n g   T i m e S t a m p ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ c a n d l e s _ c a n d l e s ( )  
 	 {  
 	 	 i O H L C   =   ( s t r i n g ) " i C l o s e " ;  
 	 	 M o d e C a n d l e F i n d B y   =   ( s t r i n g ) " i d " ;  
 	 	 C a n d l e I D   =   ( i n t ) 0 ;  
 	 	 T i m e S t a m p   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   d i g i t s   =   ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 	  
 	 	 d o u b l e   O [ ] ;  
 	 	 d o u b l e   H [ ] ;  
 	 	 d o u b l e   L [ ] ;  
 	 	 d o u b l e   C [ ] ;    
 	 	 l o n g   c T i c k V o l u m e [ ] ;  
 	 	 l o n g   c R e a l V o l u m e [ ] ;  
 	 	 d a t e t i m e   T [ ] ;  
 	 	  
 	 	 d o u b l e   r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	  
 	 	 / /   c a n d l e ' s   i d   w i l l   c h a n g e ,   s o   w e   d o n ' t   w a n t   t o   m e s s   w i t h   t h e   v a r i a b l e   C a n d l e I D ;  
 	 	 i n t   c I D   =   C a n d l e I D ;  
 	 	  
 	 	 i f   ( M o d e C a n d l e F i n d B y   = =   " t i m e " )  
 	 	 {  
 	 	 	 c I D   =   i C a n d l e I D ( S y m b o l ,   P e r i o d ,   S t r i n g T o T i m e E x ( T i m e S t a m p ,   " s e r v e r " ) ) ;  
 	 	 }  
 	 	  
 	 	 c I D   =   c I D   +   F X D _ M O R E _ S H I F T ;  
 	 	  
 	 	 / / - -   t h e   c o m m o n   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( i O H L C   = =   " i O p e n " )  
 	 	 {  
 	 	 	 i f   ( C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1 )   r e t v a l   =   O [ 0 ] ;  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i H i g h " )  
 	 	 {  
 	 	 	 i f   ( C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1 )   r e t v a l   =   H [ 0 ] ;  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i L o w " )  
 	 	 {  
 	 	 	 i f   ( C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1 )   r e t v a l   =   L [ 0 ] ;  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i C l o s e " )  
 	 	 {  
 	 	 	 i f   ( C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1 )   r e t v a l   =   C [ 0 ] ;  
 	 	 }  
 	 	  
 	 	 / / - -   n o n - p r i c e   v a l u e s     - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 e l s e   i f   ( i O H L C   = =   " i V o l u m e "   | |   i O H L C   = =   " i T i c k V o l u m e " )  
 	 	 {  
 	 	 	 i f   ( C o p y T i c k V o l u m e ( S y m b o l , P e r i o d , c I D , 1 , c T i c k V o l u m e )   >   - 1 )   r e t v a l   =   ( d o u b l e ) c T i c k V o l u m e [ 0 ] ;  
 	 	 	  
 	 	 	 r e t u r n   r e t v a l ;  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i R e a l V o l u m e " )  
 	 	 {  
 	 	 	 i f   ( C o p y R e a l V o l u m e ( S y m b o l , P e r i o d , c I D , 1 , c R e a l V o l u m e )   >   - 1 )   r e t v a l   =   ( d o u b l e ) c R e a l V o l u m e [ 0 ] ;  
 	 	 	  
 	 	 	 r e t u r n   r e t v a l ;  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i T i m e " )  
 	 	 {  
 	 	 	 i f   ( C o p y T i m e ( S y m b o l , P e r i o d , c I D , 1 , T )   >   - 1 )   r e t v a l   =   ( d o u b l e ) T [ 0 ] ;  
 	 	 	  
 	 	 	 r e t u r n   r e t v a l ;  
 	 	 }  
 	 	  
 	 	 / / - -   s i m p l e   c a l c u l a t i o n s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 e l s e   i f   ( i O H L C   = =   " i M e d i a n " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   ( ( L [ 0 ] + H [ 0 ] ) / 2 ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i T y p i c a l " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   ( ( L [ 0 ] + H [ 0 ] + C [ 0 ] ) / 3 ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i A v e r a g e " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   ( ( L [ 0 ] + H [ 0 ] + C [ 0 ] + C [ 0 ] ) / 4 ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 / / - -   m o r e   c o m p l e x   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 e l s e   i f   ( i O H L C = = " i T o t a l " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( M a t h A b s ( H [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B o d y " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( M a t h A b s ( C [ 0 ] - O [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i U p p e r W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   ( C [ 0 ]   >   O [ 0 ] )   ?   t o P i p s ( M a t h A b s ( H [ 0 ] - C [ 0 ] ) , S y m b o l )   :   t o P i p s ( M a t h A b s ( H [ 0 ] - O [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B o t t o m W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   ( C [ 0 ]   >   O [ 0 ] )   ?   t o P i p s ( M a t h A b s ( O [ 0 ] - L [ 0 ] ) , S y m b o l )   :   t o P i p s ( M a t h A b s ( C [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i G a p " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D + 1 , 1 , C )   >   - 1  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( M a t h A b s ( O [ 0 ] - C [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B u l l T o t a l " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   >   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( H [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B u l l B o d y " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   >   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( C [ 0 ] - O [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B u l l U p p e r W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   >   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( H [ 0 ] - C [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B u l l B o t t o m W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   >   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( O [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B e a r T o t a l " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   <   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( H [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B e a r B o d y " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   <   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( O [ 0 ] - C [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B e a r U p p e r W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y H i g h ( S y m b o l , P e r i o d , c I D , 1 , H )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   <   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( H [ 0 ] - O [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( i O H L C   = =   " i B e a r B o t t o m W i c k " )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       C o p y L o w ( S y m b o l , P e r i o d , c I D , 1 , L )   >   - 1  
 	 	 	 	 & &   C o p y O p e n ( S y m b o l , P e r i o d , c I D , 1 , O )   >   - 1  
 	 	 	 	 & &   C o p y C l o s e ( S y m b o l , P e r i o d , c I D , 1 , C )   >   - 1  
 	 	 	 	 & &   C [ 0 ]   <   O [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   t o P i p s ( ( C [ 0 ] - L [ 0 ] ) , S y m b o l ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( r e t v a l ,   d i g i t s ) ;  
 	 }  
 } ;  
  
 / /   " A t t r i b u t e s   s e t   1   ( n u m e r i c ) "   m o d e l  
 c l a s s   M D L I C _ o b j e c t a t t r i b u t e s _ O B J E C T  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   O b j S o u r c e ;  
 	 s t r i n g   N a m e ;  
 	 i n t   P r o p e r t y ;  
 	 i n t   F i b o L e v e l I D ;  
 	 d o u b l e   T L p r i c e L e v e l ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ o b j e c t a t t r i b u t e s _ O B J E C T ( )  
 	 {  
 	 	 O b j S o u r c e   =   ( s t r i n g ) " n a m e " ;  
 	 	 N a m e   =   ( s t r i n g ) " m y _ o b j e c t _ n a m e " ;  
 	 	 P r o p e r t y   =   ( i n t ) O B J P R O P _ P R I C E 1 ;  
 	 	 F i b o L e v e l I D   =   ( i n t ) 0 ;  
 	 	 T L p r i c e L e v e l   =   ( d o u b l e ) 1 . 2 ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 s t r i n g   n a m e   =   N a m e ;  
 	 	  
 	 	 i f   ( O b j S o u r c e   = =   " o b j l o o p " )   { n a m e   =   L o a d e d O b j e c t N a m e ( ) ; }  
 	 	 i f   ( O b j e c t F i n d ( 0 , n a m e ) < 0 )   { r e t u r n   E M P T Y _ V A L U E ; }  
 	 	  
 	 	 d o u b l e   r e t v a l   =   0 ;  
 	 	 i n t   m o d i f i e r     =   0 ;  
 	 	  
 	 	 d o u b l e   F i b o 1 0 0     =   0 ;  
 	 	 d o u b l e   F i b o 0         =   0 ;  
 	 	 d o u b l e   F i b o D i f f   =   0 ;  
 	 	  
 	 	           i f   ( P r o p e r t y   = =   O B J P R O P _ T I M E 1 )       { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 0 ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ T I M E 2 )       { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 1 ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ T I M E 3 )       { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 2 ) ; }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ P R I C E 1 )     { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ P R I C E 2 )     { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 1 ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ P R I C E 3 )     { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 2 ) ; }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ B A R S H I F T 1 )   { r e t v a l   =   i B a r S h i f t ( S y m b o l ( ) ,   P e r i o d ( ) ,   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 0 ) ,   t r u e ) ;   i f   ( r e t v a l = = - 1 )   { S k i p T h e P a s s ( t r u e ) ; } }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ B A R S H I F T 2 )   { r e t v a l   =   i B a r S h i f t ( S y m b o l ( ) ,   P e r i o d ( ) ,   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 1 ) ,   t r u e ) ;   i f   ( r e t v a l = = - 1 )   { S k i p T h e P a s s ( t r u e ) ; } }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ B A R S H I F T 3 )   { r e t v a l   =   i B a r S h i f t ( S y m b o l ( ) ,   P e r i o d ( ) ,   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E , 2 ) ,   t r u e ) ;   i f   ( r e t v a l = = - 1 )   { S k i p T h e P a s s ( t r u e ) ; } }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ C O L O R )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O L O R ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ S T Y L E )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ S T Y L E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ W I D T H )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ W I D T H ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ B A C K )               { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ B A C K ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ R A Y _ L E F T )       { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ R A Y _ L E F T ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ R A Y _ R I G H T )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ R A Y _ R I G H T ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ R A Y )                 { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ R A Y ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ E L L I P S E )         { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ E L L I P S E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ A R R O W C O D E )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ A R R O W C O D E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ F O N T S I Z E )       { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ F O N T S I Z E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ C O R N E R )           { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O R N E R ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ X D I S T A N C E )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ X D I S T A N C E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ Y D I S T A N C E )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ Y D I S T A N C E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ L E V E L C O L O R )   { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ L E V E L C O L O R ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ L E V E L S T Y L E )   { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ L E V E L S T Y L E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ L E V E L W I D T H )   { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ L E V E L W I D T H ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ A N C H O R )           { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ A N C H O R ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ D I R E C T I O N )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ D I R E C T I O N ) ; }  
 	 	 / / e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ D E G R E E )           { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ D E G R E E ) ; }  
 	 	 / / e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ D R A W L I N E S )     { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ D R A W L I N E S ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ S T A T E )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ S T A T E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ X S I Z E )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ X S I Z E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ Y S I Z E )             { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ Y S I Z E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ P E R I O D )           { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ P E R I O D ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ L E V E L S )           { r e t v a l   =   ( i n t ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ L E V E L S ) ; }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ A N G L E )             { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ A N G L E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ S C A L E )             { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ S C A L E ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ D E V I A T I O N )     { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ D E V I A T I O N ) ; }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ F I R S T L E V E L )                 { r e t v a l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ L E V E L V A L U E , F i b o L e v e l I D ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T )   { r e t v a l   =   O b j e c t G e t V a l u e B y S h i f t ( n a m e ,   S h i f t + F X D _ M O R E _ S H I F T ) ; }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ T L _ S H I F T _ B Y _ P R I C E )   { r e t v a l   =   O b j e c t G e t S h i f t B y V a l u e ( n a m e , T L p r i c e L e v e l ) ; }  
 	 	  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ F I B O V A L U E )   {  
 	 	       F i b o 1 0 0     =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ;  
 	 	 	 F i b o 0         =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 1 ) ;  
 	 	 	 F i b o D i f f   =   F i b o 1 0 0   -   F i b o 0 ;  
 	 	 	 r e t v a l = 0 ;  
 	 	 	 i f   ( F i b o D i f f   ! =   0 )   { r e t v a l   =   ( S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ B I D ) - F i b o 0 ) / F i b o D i f f ; }  
 	 	 }  
 	 	 e l s e   i f   ( P r o p e r t y   = =   O B J P R O P _ F I B O P R I C E V A L U E )   {  
 	 	 	 F i b o 1 0 0     =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ;  
 	 	 	 F i b o 0         =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 1 ) ;  
 	 	 	 F i b o D i f f   =   F i b o 1 0 0   -   F i b o 0 ;  
 	 	 	 r e t v a l = ( O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ L E V E L V A L U E , F i b o L e v e l I D ) * ( F i b o D i f f ) ) + F i b o 0 ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e t v a l ;  
 	 }  
 } ;  
  
 / /   " N u m e r i c "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ v a l u e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   V a l u e ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ v a l u e ( )  
 	 {  
 	 	 V a l u e   =   ( d o u b l e ) 1 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   V a l u e ;  
 	 }  
 } ;  
  
 / /   " T i m e "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ t i m e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M o d e T i m e ;  
 	 i n t   T i m e S o u r c e ;  
 	 s t r i n g   T i m e S t a m p ;  
 	 i n t   T i m e C a n d l e I D ;  
 	 s t r i n g   T i m e M a r k e t ;  
 	 E N U M _ T I M E F R A M E S   T i m e C a n d l e T i m e f r a m e ;  
 	 i n t   T i m e C o m p o n e n t Y e a r ;  
 	 i n t   T i m e C o m p o n e n t M o n t h ;  
 	 d o u b l e   T i m e C o m p o n e n t D a y ;  
 	 d o u b l e   T i m e C o m p o n e n t H o u r ;  
 	 d o u b l e   T i m e C o m p o n e n t M i n u t e ;  
 	 i n t   T i m e C o m p o n e n t S e c o n d ;  
 	 d a t e t i m e   T i m e V a l u e ;  
 	 i n t   M o d e T i m e S h i f t ;  
 	 i n t   T i m e S h i f t Y e a r s ;  
 	 i n t   T i m e S h i f t M o n t h s ;  
 	 i n t   T i m e S h i f t W e e k s ;  
 	 d o u b l e   T i m e S h i f t D a y s ;  
 	 d o u b l e   T i m e S h i f t H o u r s ;  
 	 d o u b l e   T i m e S h i f t M i n u t e s ;  
 	 i n t   T i m e S h i f t S e c o n d s ;  
 	 b o o l   T i m e S k i p W e e k d a y s ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 d a t e t i m e   r e t v a l ;  
 	 d a t e t i m e   r e t v a l 0 ;  
 	 d a t e t i m e   T i m e [ ] ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ t i m e ( )  
 	 {  
 	 	 M o d e T i m e   =   ( i n t ) 0 ;  
 	 	 T i m e S o u r c e   =   ( i n t ) 0 ;  
 	 	 T i m e S t a m p   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 	 T i m e C a n d l e I D   =   ( i n t ) 1 ;  
 	 	 T i m e M a r k e t   =   ( s t r i n g ) " " ;  
 	 	 T i m e C a n d l e T i m e f r a m e   =   ( E N U M _ T I M E F R A M E S ) 0 ;  
 	 	 T i m e C o m p o n e n t Y e a r   =   ( i n t ) 0 ;  
 	 	 T i m e C o m p o n e n t M o n t h   =   ( i n t ) 0 ;  
 	 	 T i m e C o m p o n e n t D a y   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e C o m p o n e n t H o u r   =   ( d o u b l e ) 1 2 . 0 ;  
 	 	 T i m e C o m p o n e n t M i n u t e   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e C o m p o n e n t S e c o n d   =   ( i n t ) 0 ;  
 	 	 T i m e V a l u e   =   ( d a t e t i m e ) 0 ;  
 	 	 M o d e T i m e S h i f t   =   ( i n t ) 0 ;  
 	 	 T i m e S h i f t Y e a r s   =   ( i n t ) 0 ;  
 	 	 T i m e S h i f t M o n t h s   =   ( i n t ) 0 ;  
 	 	 T i m e S h i f t W e e k s   =   ( i n t ) 0 ;  
 	 	 T i m e S h i f t D a y s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e S h i f t H o u r s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e S h i f t M i n u t e s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e S h i f t S e c o n d s   =   ( i n t ) 0 ;  
 	 	 T i m e S k i p W e e k d a y s   =   ( b o o l ) f a l s e ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 r e t v a l   =     0 ;  
 	 	 r e t v a l 0   =     0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d a t e t i m e   _ e x e c u t e _ ( )  
 	 {  
 	 	 / /   t h i s   i s   s t a t i c   f o r   s p e e d   r e a s o n s  
 	 	  
 	 	 i f   ( T i m e M a r k e t   = =   " " )   T i m e M a r k e t   =   S y m b o l ( ) ;  
 	 	  
 	 	 i f   ( M o d e T i m e   = =   0 )  
 	 	 {  
 	 	 	           i f   ( T i m e S o u r c e   = =   0 )   { r e t v a l   =   T i m e C u r r e n t ( ) ; }  
 	 	 	 e l s e   i f   ( T i m e S o u r c e   = =   1 )   { r e t v a l   =   T i m e L o c a l ( )   +   ( T i m e C u r r e n t ( )   -   T i m e L o c a l ( ) ) ; }  
 	 	 	 e l s e   i f   ( T i m e S o u r c e   = =   2 )   { r e t v a l   =   T i m e G M T ( )   +   ( T i m e C u r r e n t ( )   -   T i m e G M T ( ) ) ; }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e T i m e   = =   1 )  
 	 	 {  
 	 	 	 r e t v a l     =   S t r i n g T o T i m e ( T i m e S t a m p ) ;  
 	 	 	 r e t v a l 0   =   r e t v a l ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e T i m e = = 2 )  
 	 	 {  
 	 	 	 r e t v a l   =   T i m e F r o m C o m p o n e n t s ( T i m e S o u r c e ,   T i m e C o m p o n e n t Y e a r ,   T i m e C o m p o n e n t M o n t h ,   T i m e C o m p o n e n t D a y ,   T i m e C o m p o n e n t H o u r ,   T i m e C o m p o n e n t M i n u t e ,   T i m e C o m p o n e n t S e c o n d ) ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e T i m e   = =   3 )  
 	 	 {  
 	 	 	 A r r a y S e t A s S e r i e s ( T i m e , t r u e ) ;  
 	 	 	 C o p y T i m e ( T i m e M a r k e t , T i m e C a n d l e T i m e f r a m e , T i m e C a n d l e I D , 1 , T i m e ) ;  
 	 	 	 r e t v a l   =   T i m e [ 0 ] ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e T i m e   = =   4 )  
 	 	 {  
 	 	 	 r e t v a l   =   T i m e V a l u e ;  
 	 	 }  
 	 	  
 	 	 i f   ( M o d e T i m e S h i f t   >   0 )  
 	 	 {  
 	 	 	 i n t   s h   =   1 ;  
 	 	  
 	 	 	 i f   ( M o d e T i m e S h i f t   = =   1 )   { s h   =   - 1 ; }  
 	 	  
 	 	 	 i f   ( T i m e S h i f t Y e a r s   >   0   | |   T i m e S h i f t M o n t h s   >   0 )  
 	 	 	 {  
 	 	 	 	 i n t   y e a r   =   0 ,   m o n t h   =   0 ,   w e e k   =   0 ,   d a y   =   0 ,   h o u r   =   0 ,   m i n u t e   =   0 ,   s e c o n d   =   0 ;  
 	 	  
 	 	 	 	 i f   ( M o d e T i m e   = =   3 )  
 	 	 	 	 {  
 	 	 	 	 	 y e a r       =   T i m e C o m p o n e n t Y e a r ;  
 	 	 	 	 	 m o n t h     =   T i m e C o m p o n e n t Y e a r ;  
 	 	 	 	 	 d a y         =   ( i n t ) M a t h F l o o r ( T i m e C o m p o n e n t D a y ) ;  
 	 	 	 	 	 h o u r       =   ( i n t ) ( M a t h F l o o r ( T i m e C o m p o n e n t H o u r )   +   ( 2 4   *   ( T i m e C o m p o n e n t D a y   -   M a t h F l o o r ( T i m e C o m p o n e n t D a y ) ) ) ) ;  
 	 	 	 	 	 m i n u t e   =   ( i n t ) ( M a t h F l o o r ( T i m e C o m p o n e n t M i n u t e )   +   ( 6 0   *   ( T i m e C o m p o n e n t H o u r   -   M a t h F l o o r ( T i m e C o m p o n e n t H o u r ) ) ) ) ;  
 	 	 	 	 	 s e c o n d   =   ( i n t ) ( T i m e C o m p o n e n t S e c o n d   +   ( 6 0   *   ( T i m e C o m p o n e n t M i n u t e   -   M a t h F l o o r ( T i m e C o m p o n e n t M i n u t e ) ) ) ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   {  
 	 	 	 	 	 y e a r       =   T i m e Y e a r ( r e t v a l ) ;  
 	 	 	 	 	 m o n t h     =   T i m e M o n t h ( r e t v a l ) ;  
 	 	 	 	 	 d a y         =   T i m e D a y ( r e t v a l ) ;  
 	 	 	 	 	 h o u r       =   T i m e H o u r ( r e t v a l ) ;  
 	 	 	 	 	 m i n u t e   =   T i m e M i n u t e ( r e t v a l ) ;  
 	 	 	 	 	 s e c o n d   =   T i m e S e c o n d s ( r e t v a l ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 y e a r     =   y e a r   +   T i m e S h i f t Y e a r s   *   s h ;  
 	 	 	 	 m o n t h   =   m o n t h   +   T i m e S h i f t M o n t h s   *   s h ;  
 	 	  
 	 	 	 	 i f   ( m o n t h   <   0 )   { m o n t h   =   1 2   -   m o n t h ; }  
 	 	 	 	 e l s e   i f   ( m o n t h   >   1 2 )   { m o n t h   =   m o n t h   -   1 2 ; }  
 	 	  
 	 	 	 	 r e t v a l   =   S t r i n g T o T i m e ( I n t e g e r T o S t r i n g ( y e a r ) + " . " + I n t e g e r T o S t r i n g ( m o n t h ) + " . " + I n t e g e r T o S t r i n g ( d a y ) + "   " + I n t e g e r T o S t r i n g ( h o u r ) + " : " + I n t e g e r T o S t r i n g ( m i n u t e ) + " : " + I n t e g e r T o S t r i n g ( s e c o n d ) ) ;  
 	 	 	 }  
 	 	  
 	 	 	 r e t v a l   =   r e t v a l   +   ( s h   *   ( ( 6 0 4 8 0 0   *   T i m e S h i f t W e e k s )   +   S e c o n d s F r o m C o m p o n e n t s ( T i m e S h i f t D a y s ,   T i m e S h i f t H o u r s ,   T i m e S h i f t M i n u t e s ,   T i m e S h i f t S e c o n d s ) ) ) ;  
 	 	  
 	 	 	 i f   ( T i m e S k i p W e e k d a y s   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 i n t   w e e k d a y   =   T i m e D a y O f W e e k ( r e t v a l ) ;  
 	 	  
 	 	 	 	 i f   ( s h   >   0 )   {   / /   f o r w a r d  
 	 	 	 	 	           i f   ( w e e k d a y   = =   0 )   { r e t v a l   =   r e t v a l   +   8 6 4 0 0 ; }  
 	 	 	 	 	 e l s e   i f   ( w e e k d a y   = =   6 )   { r e t v a l   =   r e t v a l   +   1 7 2 8 0 0 ; }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( s h   <   0 )   {   / /   b a c k  
 	 	 	 	 	           i f   ( w e e k d a y   = =   0 )   { r e t v a l   =   r e t v a l   -   1 7 2 8 0 0 ; }  
 	 	 	 	 	 e l s e   i f   ( w e e k d a y   = =   6 )   { r e t v a l   =   r e t v a l   -   8 6 4 0 0 ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 r e t u r n   ( d a t e t i m e ) r e t v a l ;  
 	 }  
 } ;  
  
 / /   " B o o l e a n "   m o d e l  
 c l a s s   M D L I C _ b o o l e a n _ b o o l e a n  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 b o o l   B o o l e a n ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ b o o l e a n _ b o o l e a n ( )  
 	 {  
 	 	 B o o l e a n   =   ( b o o l ) t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 b o o l   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   B o o l e a n ;  
 	 }  
 } ;  
  
 / /   " P a r a b o l i c   S A R "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i S A R  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   S t e p ;  
 	 d o u b l e   M a x i m u m ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i S A R ( )  
 	 {  
 	 	 S t e p   =   ( d o u b l e ) 0 . 0 2 ;  
 	 	 M a x i m u m   =   ( d o u b l e ) 0 . 2 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i S A R ( S y m b o l ,   P e r i o d ,   S t e p ,   M a x i m u m ,   S h i f t   +   F X D _ M O R E _ S H I F T ) ;  
 	 }  
 } ;  
  
 / /   " P i p s "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ p o i n t s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   V a l u e ;  
 	 i n t   M o d e V a l u e ;  
 	 s t r i n g   S y m b o l ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ p o i n t s ( )  
 	 {  
 	 	 V a l u e   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 M o d e V a l u e   =   ( i n t ) 1 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   r e t v a l   =   0 ;  
 	 	  
 	 	           i f   ( M o d e V a l u e   = =   0 )   { r e t v a l   =   V a l u e ; }  
 	 	 e l s e   i f   ( M o d e V a l u e   = =   1 )   { r e t v a l   =   V a l u e * S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ P O I N T ) * P i p V a l u e ( S y m b o l ) ; }  
 	 	  
 	 	 r e t u r n   r e t v a l ;  
 	 }  
 } ;  
  
 / /   " B a l a n c e "   m o d e l  
 c l a s s   M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e ( )  
 	 {  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ B A L A N C E ) ,   2 ) ;  
 	 }  
 } ;  
  
 / /   " E q u i t y "   m o d e l  
 c l a s s   M D L I C _ a c c o u n t _ A c c o u n t E q u i t y  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ a c c o u n t _ A c c o u n t E q u i t y ( )  
 	 {  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ E Q U I T Y ) ,   2 ) ;  
 	 }  
 } ;  
  
 / /   " P r o f i t   ( E q u i t y   -   B a l a n c e ) "   m o d e l  
 c l a s s   M D L I C _ a c c o u n t _ A c c o u n t P r o f i t  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ a c c o u n t _ A c c o u n t P r o f i t ( )  
 	 {  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ P R O F I T ) ,   2 ) ;  
 	 }  
 } ;  
  
 / /   " T e x t "   m o d e l  
 c l a s s   M D L I C _ t e x t _ t e x t  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   T e x t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ t e x t _ t e x t ( )  
 	 {  
 	 	 T e x t   =   ( s t r i n g ) " s a m p l e   t e x t " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 s t r i n g   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   T e x t ;  
 	 }  
 } ;  
  
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   B l o c k   1   ( U P )  
 c l a s s   B l o c k 0 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , s t r i n g , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 ] . r u n ( 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   2   ( D r a w   T r e n d L i n e   ( B u y ) )  
 c l a s s   B l o c k 1 :   p u b l i c   M D L _ C h a r t D r a w L i n e < b o o l , b o o l , s t r i n g , E N U M _ O B J E C T , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , d o u b l e , b o o l , b o o l , b o o l , c o l o r , E N U M _ L I N E _ S T Y L E , i n t , b o o l , b o o l , b o o l , b o o l , i n t , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 O b j T i m e 1 . W h a t T o G e t   =   2 ;  
 	 	 O b j T i m e 2 . W h a t T o G e t   =   2 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O b j e c t P e r B a r   =   f a l s e ;  
 	 	 O b j R a y R i g h t   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ O b j T i m e 1 _ ( )   {  
 	 	 O b j T i m e 1 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 O b j T i m e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j T i m e 1 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j T i m e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j P r i c e 1 _ ( )   {  
 	 	 O b j P r i c e 1 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 O b j P r i c e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j P r i c e 1 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j P r i c e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j T i m e 2 _ ( )   {  
 	 	 O b j T i m e 2 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 O b j T i m e 2 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j T i m e 2 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j T i m e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j P r i c e 2 _ ( )   {  
 	 	 O b j P r i c e 2 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 O b j P r i c e 2 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j P r i c e 2 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j P r i c e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 4 ] . r u n ( 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 O b j N a m e   =   ( s t r i n g ) v : : T r e n d l i n e _ N a m e _ B ;  
 	 	 O b j e c t T y p e   =   ( E N U M _ O B J E C T ) O B J _ T R E N D ;  
 	 	 O b j C o l o r   =   ( c o l o r ) c l r F o r e s t G r e e n ;  
 	 	 O b j S t y l e   =   ( E N U M _ L I N E _ S T Y L E ) S T Y L E _ S O L I D ;  
 	 }  
 } ;  
  
 / /   B l o c k   3   ( D O W N )  
 c l a s s   B l o c k 2 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , s t r i n g , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 ] . r u n ( 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4   ( D r a w   T r e n d L i n e   ( S e l l ) )  
 c l a s s   B l o c k 3 :   p u b l i c   M D L _ C h a r t D r a w L i n e < b o o l , b o o l , s t r i n g , E N U M _ O B J E C T , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , d o u b l e , b o o l , b o o l , b o o l , c o l o r , E N U M _ L I N E _ S T Y L E , i n t , b o o l , b o o l , b o o l , b o o l , i n t , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 O b j T i m e 1 . W h a t T o G e t   =   2 ;  
 	 	 O b j T i m e 2 . W h a t T o G e t   =   2 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O b j e c t P e r B a r   =   f a l s e ;  
 	 	 O b j R a y R i g h t   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ O b j T i m e 1 _ ( )   {  
 	 	 O b j T i m e 1 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 O b j T i m e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j T i m e 1 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j T i m e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j P r i c e 1 _ ( )   {  
 	 	 O b j P r i c e 1 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 1 ;  
 	 	 O b j P r i c e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j P r i c e 1 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j P r i c e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j T i m e 2 _ ( )   {  
 	 	 O b j T i m e 2 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 O b j T i m e 2 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j T i m e 2 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j T i m e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ O b j P r i c e 2 _ ( )   {  
 	 	 O b j P r i c e 2 . E n d B a r   =   c : : E N D _ c a n d l e _ I D _ 2 ;  
 	 	 O b j P r i c e 2 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j P r i c e 2 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j P r i c e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 4 ] . r u n ( 3 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 O b j N a m e   =   ( s t r i n g ) v : : T r e n d l i n e _ N a m e _ S ;  
 	 	 O b j e c t T y p e   =   ( E N U M _ O B J E C T ) O B J _ T R E N D ;  
 	 	 O b j C o l o r   =   ( c o l o r ) c l r R e d ;  
 	 	 O b j S t y l e   =   ( E N U M _ L I N E _ S T Y L E ) S T Y L E _ S O L I D ;  
 	 }  
 } ;  
  
 / /   B l o c k   5   ( N o   p o s i t i o n   B u y )  
 c l a s s   B l o c k 4 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 4 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   6   ( C o n d i t i o n   B u y )  
 c l a s s   B l o c k 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ o b j e c t a t t r i b u t e s _ O B J E C T , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . C a n d l e I D   =   1 ;  
 	 	 R o . S h i f t   =   1 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x > " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . N a m e   =   v : : T r e n d l i n e _ N a m e _ B ;  
 	 	 R o . P r o p e r t y   =   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 6 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 ] . r u n ( 6 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   8   ( B u y   n o w )  
 c l a s s   B l o c k 7 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 7 ] . r u n ( 7 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L o t s ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) c : : S L _ p i p s ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) c : : T P _ p i p s ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N A M E _ U S E R ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   9   ( N o   p o s i t i o n   S e l l )  
 c l a s s   B l o c k 8 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 ] . r u n ( 8 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0   ( C o n d i t i o n   S e l l )  
 c l a s s   B l o c k 9 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ o b j e c t a t t r i b u t e s _ O B J E C T , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . C a n d l e I D   =   1 ;  
 	 	 R o . S h i f t   =   1 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . N a m e   =   v : : T r e n d l i n e _ N a m e _ S ;  
 	 	 R o . P r o p e r t y   =   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 0 ] . r u n ( 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 1 0 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 1 ] . r u n ( 1 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 2   ( S e l l   n o w )  
 c l a s s   B l o c k 1 1 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 8 ] . r u n ( 1 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L o t s ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) c : : S L _ p i p s ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) c : : T P _ p i p s ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N A M E _ U S E R ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3   ( O N - O F F   O p e n   O r d e r )  
 c l a s s   B l o c k 1 2 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 4 , 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : M o d e _ O p e n _ O r d e r ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 ] . r u n ( 1 2 ) ;  
 	 	 	 _ b l o c k s _ [ 8 ] . r u n ( 1 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4   ( T r a i l i n g   s t o p )  
 c l a s s   B l o c k 1 3 :   p u b l i c   M D L _ T r a i l i n g S t o p 2 < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ i n d i c a t o r s _ i S A R , d o u b l e , M D L I C _ v a l u e _ p o i n t s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 5 , 1 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 f t D i g i t s . V a l u e   =   4 0 . 0 ;  
 	 	 f t S t a r t . V a l u e   =   0 . 0 ;  
 	 	 f t S t a r t F r a c t i o n . V a l u e   =   0 . 0 0 1 ;  
 	 	 f t T P . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ f t S t o p _ ( )   {  
 	 	 f t S t o p . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 f t S t o p . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   f t S t o p . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ f t D i g i t s _ ( )   {  
 	 	 f t D i g i t s . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   f t D i g i t s . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ f t S t a r t _ ( )   { r e t u r n   f t S t a r t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ f t S t a r t F r a c t i o n _ ( )   { r e t u r n   f t S t a r t F r a c t i o n . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ f t T P _ ( )   { r e t u r n   f t T P . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 5 ] . r u n ( 1 3 ) ;  
 	 	 	 _ b l o c k s _ [ 1 6 ] . r u n ( 1 3 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 t S t o p P i p s   =   ( d o u b l e ) c : : T r a i l i n g _ S t o p ;  
 	 	 t S t e p P i p s   =   ( d o u b l e ) c : : T r a i l i n g _ S t e p ;  
 	 	 L e v e l C o l o r   =   ( c o l o r ) c l r Y e l l o w ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 2   ( C h e c k   p o s i t i o n s   c o u n t )  
 c l a s s   B l o c k 1 4 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < " ;  
 	 	 C o m p a r e C o u n t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 2 ] . r u n ( 1 4 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 3   ( B E   T P   % )  
 c l a s s   B l o c k 1 5 :   p u b l i c   M D L _ B r e a k E v e n P o i n t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O n P r o f i t M o d e   =   " p e r c e n t T P " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 O n P r o f i t P e r c e n t T P   =   ( d o u b l e ) c : : B r e a k E v e n T P ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 4   ( B E   S L   % )  
 c l a s s   B l o c k 1 6 :   p u b l i c   M D L _ B r e a k E v e n P o i n t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O n P r o f i t M o d e   =   " p e r c e n t S L " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 O n P r o f i t P e r c e n t S L   =   ( d o u b l e ) c : : B r e a k E v e n S L ;  
 	 	 O n P r o f i t P e r c e n t T P   =   ( d o u b l e ) c : : B r e a k E v e n S L ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 5   ( C l o s e   p o s i t i o n s )  
 c l a s s   B l o c k 1 7 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D a r k O r a n g e ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 6   ( C l o s e   p o s i t i o n s )  
 c l a s s   B l o c k 1 8 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D a r k O r a n g e ;  
 	 }  
 } ;  
  
 / /   B l o c k   4 9   ( C h e c k   p r o f i t   ( u n r e a l i z e d ) )  
 c l a s s   B l o c k 1 9 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 0 ] . r u n ( 1 9 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) c : : P a r t i a l M o n e y P r o f i t ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 0   ( c l o s e   ( p a r t i a l l y ) )  
 c l a s s   B l o c k 2 0 :   p u b l i c   M D L _ L o o p C l o s e P a r t < s t r i n g , d o u b l e , d o u b l e , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 1 ] . r u n ( 2 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 P a r t V o l P e r c e n t   =   ( d o u b l e ) c : : P a r t i a l P r e c e n t ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r O r a n g e R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 1   ( P a s s )  
 c l a s s   B l o c k 2 1 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 2 2 , 2 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 2 ] . r u n ( 2 1 ) ;  
 	 	 	 _ b l o c k s _ [ 2 9 ] . r u n ( 2 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   5 2   ( W e e k d a y   f i l t e r )  
 c l a s s   B l o c k 2 2 :   p u b l i c   M D L _ W e e k d a y F i l t e r < s t r i n g , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 3 ]   =   { 2 3 , 2 6 , 2 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 2 7 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 3 ] . r u n ( 2 2 ) ;  
 	 	 	 _ b l o c k s _ [ 2 6 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 t r a d e M o n d a y   =   ( b o o l ) c : : M o n d a y ;  
 	 	 t r a d e T u e s d a y   =   ( b o o l ) c : : T u e s d a y ;  
 	 	 t r a d e W e d n e s d a y   =   ( b o o l ) c : : W e d n e s d a y ;  
 	 	 t r a d e T h u r s d a y   =   ( b o o l ) c : : T h u r s d a y ;  
 	 	 t r a d e F r i d a y   =   ( b o o l ) c : : F r i d a y ;  
 	 	 t r a d e S a t u r d a y   =   ( b o o l ) c : : S a t u r d a y ;  
 	 	 t r a d e S u n d a y   =   ( b o o l ) c : : S u n d a y ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 3   ( H o u r s   f i l t e r )  
 c l a s s   B l o c k 2 3 :   p u b l i c   M D L _ H o u r s F i l t e r < s t r i n g , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 2 4 , 2 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 2 5 ] . r u n ( 2 3 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 4 ] . r u n ( 2 3 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S t a r t H o u r   =   ( s t r i n g ) c : : S t a r t _ H o u r ;  
 	 	 E n d H o u r   =   ( s t r i n g ) c : : E n d _ H o u r ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 4   ( E A   R U N N I N G )  
 c l a s s   B l o c k 2 4 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 0 , 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 0 ] . r u n ( 2 4 ) ;  
 	 	 	 _ b l o c k s _ [ 2 ] . r u n ( 2 4 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : E A _ R u n n i n g   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 5   ( E A   N O T   R U N N I N G )  
 c l a s s   B l o c k 2 5 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 1 . B o o l e a n   =   f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : E A _ R u n n i n g   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 6   ( E A   W E E K   R U N N I N G )  
 c l a s s   B l o c k 2 6 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : E A _ W e e k d a y   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 7   ( E A   W E E K L Y   N O T   R U N N I N G )  
 c l a s s   B l o c k 2 7 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 1 . B o o l e a n   =   f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : E A _ W e e k d a y   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   6 8   ( S e t   \ " C u r r e n t   M a r k e t \ "   f o r   n e x t   b l o c k s )  
 c l a s s   B l o c k 2 8 :   p u b l i c   M D L _ S e t C u r r e n t S y m b o l 2 < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 2 1 ] . r u n ( 2 8 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 1 ] . r u n ( 2 8 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 L i s t O f S y m b o l s   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 0   ( C o m m e n t )  
 c l a s s   B l o c k 2 9 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t E q u i t y , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t P r o f i t , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 5 . T e x t   =   " " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O b j T i t l e F o n t S i z e   =   1 4 ;  
 	 	 L a b e l 1   =   " B A L A N C E " ;  
 	 	 L a b e l 2   =   " E Q U I T Y " ;  
 	 	 L a b e l 3   =   " D R A W D O W N " ;  
 	 	 L a b e l 4   =   " B R O K E R   T I M E " ;  
 	 	 L a b e l 6   =   " S T A R T   H O U R " ;  
 	 	 L a b e l 7   =   " E N D   H O U R " ;  
 	 	 L a b e l 8   =   " E A   R U N N I N G " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 6 _ ( )   {  
 	 	 V a l u e 6 . T e x t   =   c : : S t a r t _ H o u r ;  
  
 	 	 r e t u r n   V a l u e 6 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ V a l u e 7 _ ( )   {  
 	 	 V a l u e 7 . T e x t   =   c : : E n d _ H o u r ;  
  
 	 	 r e t u r n   V a l u e 7 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   b o o l   _ V a l u e 8 _ ( )   {  
 	 	 V a l u e 8 . B o o l e a n   =   v : : E A _ R u n n i n g ;  
  
 	 	 r e t u r n   V a l u e 8 . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 0 ] . r u n ( 2 9 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 / *   I n p u t s ,   m o d i f i e d   i n t o   t h e   c o d e   m u s t   b e   s e t   h e r e   e v e r y   t i m e   * /  
 	 	 O b j Y   =   2 4 ;  
 	 	 T i t l e   =   ( s t r i n g ) v : : E A _ N A M E ;  
 	 	 O b j C o r n e r   =   ( i n t ) C O R N E R _ L E F T _ U P P E R ;  
 	 	 O b j T i t l e F o n t C o l o r   =   ( c o l o r ) c l r G o l d e n r o d ;  
 	 	 O b j L a b e l s F o n t C o l o r   =   ( c o l o r ) c l r D a r k G r a y ;  
 	 	 O b j F o n t C o l o r   =   ( c o l o r ) c l r W h i t e ;  
 	 	 F o r m a t N u m b e r 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 1   ( C o m m e n t )  
 c l a s s   B l o c k 3 0 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 2 . T e x t   =   " " ;  
 	 	 V a l u e 3 . T e x t   =   " " ;  
 	 	 V a l u e 8 . T e x t   =   " " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 T i t l e   =   " " ;  
 	 	 O b j Y   =   1 4 9 ;  
 	 	 O b j T i t l e F o n t S i z e   =   1 4 ;  
 	 	 L a b e l 1   =   " D A Y S   W E E K " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   {  
 	 	 V a l u e 1 . B o o l e a n   =   v : : E A _ W e e k d a y ;  
  
 	 	 r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   b o o l   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   b o o l   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   b o o l   _ V a l u e 6 _ ( )   { r e t u r n   V a l u e 6 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   b o o l   _ V a l u e 7 _ ( )   { r e t u r n   V a l u e 7 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 8 _ ( )   { r e t u r n   V a l u e 8 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 / *   I n p u t s ,   m o d i f i e d   i n t o   t h e   c o d e   m u s t   b e   s e t   h e r e   e v e r y   t i m e   * /  
 	 	 O b j Y   =   1 4 9 ;  
 	 	 O b j C o r n e r   =   ( i n t ) C O R N E R _ L E F T _ U P P E R ;  
 	 	 O b j T i t l e F o n t C o l o r   =   ( c o l o r ) c l r G o l d e n r o d ;  
 	 	 O b j L a b e l s F o n t C o l o r   =   ( c o l o r ) c l r D a r k G r a y ;  
 	 	 O b j F o n t C o l o r   =   ( c o l o r ) c l r W h i t e ;  
 	 	 F o r m a t N u m b e r 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 1   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 2   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 3   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 4   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 5   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 6   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 7   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t N u m b e r 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 	 F o r m a t T i m e 8   =   ( i n t ) E M P T Y _ V A L U E ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 9   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 3 1 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 9 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ T R E N D B E A S T   -   P A R T I A L   T A K E N   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                                                                                       F u n c t i o n s                                                                                                             |   / /  
 / /   |                                                                   S y s t e m   a n d   C u s t o m   f u n c t i o n s   u s e d   i n   t h e   p r o g r a m                                                                     |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
 d o u b l e   A c c o u n t B a l a n c e A t S t a r t ( ) 
 { 
 	 / /   T h i s   f u n c t i o n   M U S T   b e   r u n   o n c e   a t   p o g r a m ' s   s t a r t 
 	 s t a t i c   d o u b l e   m e m o r y   =   0 ; 
 
 	 i f   ( m e m o r y   = =   0 ) 
 	 { 
 	 	 m e m o r y   =   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ B A L A N C E ) ,   2 ) ; 
 	 } 
 
 	 r e t u r n   m e m o r y ; 
 }  
  
 d o u b l e   A l i g n L o t s ( s t r i n g   s y m b o l ,   d o u b l e   l o t s ,   d o u b l e   l o w e r l o t s   =   0 . 0 ,   d o u b l e   u p p e r l o t s   =   0 . 0 ) 
 { 
 	 d o u b l e   L o t S t e p   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ S T E P ) ; 
 	 d o u b l e   L o t S i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ C O N T R A C T _ S I Z E ) ; 
 	 d o u b l e   M i n L o t s   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 	 d o u b l e   M a x L o t s   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ; 
 
 	 i f   ( L o t S t e p   >   M i n L o t s )   M i n L o t s   =   L o t S t e p ; 
 
 	 i f   ( l o t s   = =   E M P T Y _ V A L U E )   { l o t s   =   0 . 0 ; } 
 
 	 l o t s   =   M a t h R o u n d ( l o t s   /   L o t S t e p )   *   L o t S t e p ; 
 
 	 i f   ( l o t s   <   M i n L o t s )   { l o t s   =   M i n L o t s ; } 
 	 i f   ( l o t s   >   M a x L o t s )   { l o t s   =   M a x L o t s ; } 
 
 	 i f   ( l o w e r l o t s   >   0 . 0 ) 
 	 { 
 	 	 l o w e r l o t s   =   M a t h R o u n d ( l o w e r l o t s   /   L o t S t e p )   *   L o t S t e p ; 
 	 	 i f   ( l o t s   <   l o w e r l o t s )   { l o t s   =   l o w e r l o t s ; } 
 	 } 
 
 	 i f   ( u p p e r l o t s   >   0 . 0 ) 
 	 { 
 	 	 u p p e r l o t s   =   M a t h R o u n d ( u p p e r l o t s   /   L o t S t e p )   *   L o t S t e p ; 
 	 	 i f   ( l o t s   >   u p p e r l o t s )   { l o t s   =   u p p e r l o t s ; } 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   A l i g n S t o p L o s s ( 
 	 s t r i n g   s y m b o l , 
 	 i n t   t y p e , 
 	 d o u b l e   p r i c e , 
 	 d o u b l e   s l o   =   0 . 0 ,   / /   o r i g i n a l   s l ,   u s e d   w h e n   m o d i f y i n g 
 	 d o u b l e   s l l   =   0 . 0 , 
 	 d o u b l e   s l p   =   0 . 0 , 
 	 b o o l   c o n s i d e r _ f r e e z e l e v e l   =   f a l s e 
 	 ) 
 { 
 	 d o u b l e   s l   =   0 . 0 ; 
 
 	 i f   ( M a t h A b s ( s l l )   = =   E M P T Y _ V A L U E )   { s l l   =   0 . 0 ; } 
 	 i f   ( M a t h A b s ( s l p )   = =   E M P T Y _ V A L U E )   { s l p   =   0 . 0 ; } 
 
 	 i f   ( s l l   = =   0 . 0   & &   s l p   = =   0 . 0 ) 
 	 { 
 	 	 r e t u r n   0 . 0 ; 
 	 } 
 
 	 i f   ( p r i c e   < =   0 . 0 ) 
 	 { 
 	 	 P r i n t ( _ _ F U N C T I O N _ _   +   "   e r r o r :   N o   p r i c e   e n t e r e d " ) ; 
 
 	 	 r e t u r n   - 1 ; 
 	 } 
 
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 	 s l p                     =   s l p   *   P i p V a l u e ( s y m b o l )   *   p o i n t ; 
 
 	 / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( 
 	 	       t y p e   = =   O P _ S E L L 
 	 	 | |   t y p e   = =   O P _ S E L L S T O P 
 	 	 | |   t y p e   = =   O P _ S E L L L I M I T 
 
 	 	 ) 
 	 { 
 	 	 b s   =   - 1 ; 
 	 } 
 
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 d o u b l e   a s k b i d   =   p r i c e ; 
 	 d o u b l e   b i d a s k   =   p r i c e ; 
 	 
 	 i f   ( t y p e   <   2 ) 
 	 { 
 	 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 
 	 	 a s k b i d   =   a s k ; 
 	 	 b i d a s k   =   b i d ; 
 
 	 	 i f   ( b s   <   0 ) 
 	 	 { 
 	 	     a s k b i d   =   b i d ; 
 	 	     b i d a s k   =   a s k ; 
 	 	 } 
 	 } 
 
 	 / / - -   b u i l d   s l   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
 	 i f   ( s l l   = =   0 . 0   & &   s l p   ! =   0 . 0 )   { s l l   =   p r i c e ; } 
 
 	 i f   ( s l l   >   0 . 0 )   { s l   =   s l l   -   s l p   *   b s ; } 
 
 	 i f   ( s l   <   0 . 0 ) 
 	 { 
 	 	 r e t u r n   - 1 ; 
 	 } 
 
 	 s l     =   N o r m a l i z e D o u b l e ( s l ,   d i g i t s ) ; 
 	 s l o   =   N o r m a l i z e D o u b l e ( s l o ,   d i g i t s ) ; 
 
 	 i f   ( s l   = =   s l o ) 
 	 { 
 	 	 r e t u r n   s l ; 
 	 } 
 
 	 / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 d o u b l e   m i n s t o p s   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ; 
 
 	 i f   ( c o n s i d e r _ f r e e z e l e v e l   = =   t r u e ) 
 	 { 
 	 	 d o u b l e   f r e e z e l e v e l   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ; 
 
 	 	 i f   ( f r e e z e l e v e l   >   m i n s t o p s )   { m i n s t o p s   =   f r e e z e l e v e l ; } 
 	 } 
 
 	 m i n s t o p s   =   N o r m a l i z e D o u b l e ( m i n s t o p s   *   p o i n t , d i g i t s ) ; 
 
 	 d o u b l e   s l l i m i t   =   b i d a s k   -   m i n s t o p s   *   b s ;   / /   S L   m i n   p r i c e   l e v e l 
 
 	 / / - -   c h e c k   a n d   a l i g n   s l ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l 
 	 i f   ( s l   >   0 . 0   & &   s l   ! =   s l o ) 
 	 { 
 	 	 i f   ( ( b s   >   0   & &   s l   >   a s k b i d )   | |   ( b s   <   0   & &   s l   <   a s k b i d ) ) 
 	 	 { 
 	 	 	 s t r i n g   a b s t r   =   " " ; 
 
 	 	 	 i f   ( b s   >   0 )   { a b s t r   =   " B i d " ; }   e l s e   { a b s t r   =   " A s k " ; } 
 
 	 	 	 P r i n t ( 
 	 	 	 	 " E r r o r :   I n v a l i d   S L   r e q u e s t e d   ( " , 
 	 	 	 	 D o u b l e T o S t r ( s l ,   d i g i t s ) , 
 	 	 	 	 "   f o r   " ,   a b s t r ,   "   p r i c e   " , 
 	 	 	 	 b i d a s k , 
 	 	 	 	 " ) " 
 	 	 	 ) ; 
 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 	 	 e l s e   i f   ( ( b s   >   0   & &   s l   >   s l l i m i t )   | |   ( b s   <   0   & &   s l   <   s l l i m i t ) ) 
 	 	 { 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   s l ; 
 	 	 	 } 
 
 	 	 	 P r i n t ( 
 	 	 	 	 " W a r n i n g :   T o o   s h o r t   S L   r e q u e s t e d   ( " , 
 	 	 	 	 D o u b l e T o S t r ( s l ,   d i g i t s ) , 
 	 	 	 	 "   o r   " , 
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( s l   -   a s k b i d )   /   p o i n t ,   0 ) , 
 	 	 	 	 "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " , 
 	 	 	 	 D o u b l e T o S t r ( s l l i m i t ,   d i g i t s ) , 
 	 	 	 	 "   o r   " , 
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( a s k b i d   -   s l l i m i t )   /   p o i n t ,   0 ) , 
 	 	 	 	 "   p o i n t s ) " 
 	 	 	 ) ; 
 
 	 	 	 s l   =   s l l i m i t ; 
 
 	 	 	 r e t u r n   s l ; 
 	 	 } 
 	 } 
 
 	 / /   a l i g n   b y   t h e   t i c k s i z e 
 	 d o u b l e   t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ; 
 	 s l   =   M a t h R o u n d ( s l   /   t i c k s i z e )   *   t i c k s i z e ; 
 
 	 r e t u r n   s l ; 
 }  
  
 d o u b l e   A l i g n T a k e P r o f i t ( 
 	 s t r i n g   s y m b o l , 
 	 i n t   t y p e , 
 	 d o u b l e   p r i c e , 
 	 d o u b l e   t p o   =   0 . 0 ,   / /   o r i g i n a l   t p ,   u s e d   w h e n   m o d i f y i n g 
 	 d o u b l e   t p l   =   0 . 0 , 
 	 d o u b l e   t p p   =   0 . 0 , 
 	 b o o l   c o n s i d e r _ f r e e z e l e v e l   =   f a l s e 
 	 ) 
 { 
 	 d o u b l e   t p   =   0 . 0 ; 
 	 
 	 i f   ( M a t h A b s ( t p l )   = =   E M P T Y _ V A L U E )   { t p l   =   0 . 0 ; } 
 	 i f   ( M a t h A b s ( t p p )   = =   E M P T Y _ V A L U E )   { t p p   =   0 . 0 ; } 
 
 	 i f   ( t p l   = =   0 . 0   & &   t p p   = =   0 . 0 ) 
 	 { 
 	 	 r e t u r n   0 . 0 ; 
 	 } 
 
 	 i f   ( p r i c e   < =   0 . 0 ) 
 	 { 
 	 	 P r i n t ( _ _ F U N C T I O N _ _   +   "   e r r o r :   N o   p r i c e   e n t e r e d " ) ; 
 
 	 	 r e t u r n   - 1 ; 
 	 } 
 
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 	 t p p                     =   t p p   *   P i p V a l u e ( s y m b o l )   *   p o i n t ; 
 	 
 	 / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( 
 	 	       t y p e   = =   O P _ S E L L 
 	 	 | |   t y p e   = =   O P _ S E L L S T O P 
 	 	 | |   t y p e   = =   O P _ S E L L L I M I T 
 
 	 	 ) 
 	 { 
 	 	 b s   =   - 1 ; 
 	 } 
 	 
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 d o u b l e   a s k b i d   =   p r i c e ; 
 	 d o u b l e   b i d a s k   =   p r i c e ; 
 	 
 	 i f   ( t y p e   <   2 ) 
 	 { 
 	 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 
 	 	 a s k b i d   =   a s k ; 
 	 	 b i d a s k   =   b i d ; 
 
 	 	 i f   ( b s   <   0 ) 
 	 	 { 
 	 	     a s k b i d   =   b i d ; 
 	 	     b i d a s k   =   a s k ; 
 	 	 } 
 	 } 
 	 
 	 / / - -   b u i l d   t p   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
 	 i f   ( t p l   = =   0 . 0   & &   t p p   ! =   0 . 0 )   { t p l   =   p r i c e ; } 
 
 	 i f   ( t p l   >   0 . 0 )   { t p   =   t p l   +   t p p   *   b s ; } 
 	 
 	 i f   ( t p   <   0 . 0 ) 
 	 { 
 	 	 r e t u r n   - 1 ; 
 	 } 
 
 	 t p     =   N o r m a l i z e D o u b l e ( t p ,   d i g i t s ) ; 
 	 t p o   =   N o r m a l i z e D o u b l e ( t p o ,   d i g i t s ) ; 
 
 	 i f   ( t p   = =   t p o ) 
 	 { 
 	 	 r e t u r n   t p ; 
 	 } 
 	 
 	 / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 d o u b l e   m i n s t o p s   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ; 
 
 	 i f   ( c o n s i d e r _ f r e e z e l e v e l   = =   t r u e ) 
 	 { 
 	 	 d o u b l e   f r e e z e l e v e l   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ; 
 
 	 	 i f   ( f r e e z e l e v e l   >   m i n s t o p s )   { m i n s t o p s   =   f r e e z e l e v e l ; } 
 	 } 
 
 	 m i n s t o p s   =   N o r m a l i z e D o u b l e ( m i n s t o p s   *   p o i n t , d i g i t s ) ; 
 	 
 	 d o u b l e   t p l i m i t   =   b i d a s k   +   m i n s t o p s   *   b s ;   / /   T P   m i n   p r i c e   l e v e l 
 	 
 	 / / - -   c h e c k   a n d   a l i g n   t p ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l 
 	 i f   ( t p   >   0 . 0   & &   t p   ! =   t p o ) 
 	 { 
 	 	 i f   ( ( b s   >   0   & &   t p   <   b i d a s k )   | |   ( b s   <   0   & &   t p   >   b i d a s k ) ) 
 	 	 { 
 	 	 	 s t r i n g   a b s t r   =   " " ; 
 
 	 	 	 i f   ( b s   >   0 )   { a b s t r   =   " B i d " ; }   e l s e   { a b s t r   =   " A s k " ; } 
 
 	 	 	 P r i n t ( 
 	 	 	 	 " E r r o r :   I n v a l i d   T P   r e q u e s t e d   ( " , 
 	 	 	 	 D o u b l e T o S t r ( t p ,   d i g i t s ) , 
 	 	 	 	 "   f o r   " ,   a b s t r ,   "   p r i c e   " , 
 	 	 	 	 b i d a s k , 
 	 	 	 	 " ) " 
 	 	 	 ) ; 
 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 	 	 e l s e   i f   ( ( b s   >   0   & &   t p   <   t p l i m i t )   | |   ( b s   <   0   & &   t p   >   t p l i m i t ) ) 
 	 	 { 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   t p ; 
 	 	 	 } 
 
 	 	 	 P r i n t ( 
 	 	 	 	 " W a r n i n g :   T o o   s h o r t   T P   r e q u e s t e d   ( " , 
 	 	 	 	 D o u b l e T o S t r ( t p ,   d i g i t s ) , 
 	 	 	 	 "   o r   " , 
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( t p   -   a s k b i d )   /   p o i n t ,   0 ) , 
 	 	 	 	 "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " , 
 	 	 	 	 D o u b l e T o S t r ( t p l i m i t ,   d i g i t s ) , 
 	 	 	 	 "   o r   " , 
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( a s k b i d   -   t p l i m i t )   /   p o i n t ,   0 ) , 
 	 	 	 	 "   p o i n t s ) " 
 	 	 	 ) ; 
 
 	 	 	 t p   =   t p l i m i t ; 
 
 	 	 	 r e t u r n   t p ; 
 	 	 } 
 	 } 
 	 
 	 / /   a l i g n   b y   t h e   t i c k s i z e 
 	 d o u b l e   t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ; 
 	 t p   =   M a t h R o u n d ( t p   /   t i c k s i z e )   *   t i c k s i z e ; 
 	 
 	 r e t u r n   t p ; 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y E n s u r e V a l u e ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   s i z e       =   A r r a y S i z e ( a r r a y ) ; 
 	 
 	 i f   ( s i z e   >   0 ) 
 	 { 
 	 	 i f   ( I n A r r a y ( a r r a y ,   v a l u e ) ) 
 	 	 { 
 	 	 	 / /   v a l u e   f o u n d   - >   e x i t 
 	 	 	 r e t u r n   f a l s e ;   / /   n o   v a l u e   a d d e d 
 	 	 } 
 	 } 
 	 
 	 / /   v a l u e   d o e s   n o t   e x i s t s   - >   a d d   i t 
 	 A r r a y R e s i z e ( a r r a y ,   s i z e + 1 ) ; 
 	 a r r a y [ s i z e ]   =   v a l u e ; 
 	 	 
 	 r e t u r n   t r u e ;   / /   v a l u e   a d d e d 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 i n t   A r r a y S e a r c h ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   i n d e x   =   - 1 ; 
 	 i n t   s i z e     =   A r r a y S i z e ( a r r a y ) ; 
 
 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( a r r a y [ i ]   = =   v a l u e ) 
 	 	 { 
 	 	 	 i n d e x   =   i ; 
 	 	 	 b r e a k ; 
 	 	 }     
 	 } 
 
       r e t u r n   i n d e x ; 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y S t r i p K e y ( T   & a r r a y [ ] ,   i n t   k e y ) 
 { 
 	 i n t   x         =   0 ; 
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( i   ! =   k e y ) 
 	 	 { 
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ; 
 	 	 	 x + + ; 
 	 	 } 
 	 } 
 
 	 i f   ( x   <   s i z e ) 
 	 { 
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ; 
 	 	 
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d 
 	 } 
 
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y S t r i p V a l u e ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   x         =   0 ; 
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( a r r a y [ i ]   ! =   v a l u e ) 
 	 	 { 
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ; 
 	 	 	 x + + ; 
 	 	 } 
 	 } 
 
 	 i f   ( x   <   s i z e ) 
 	 { 
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ; 
 	 	 
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d 
 	 } 
 
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d 
 }  
  
 d o u b l e   B e t 1 3 2 6 ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s , 
 	 b o o l   r e v e r s e   =   f a l s e 
 )   {     
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 
 	 / / - -   1 - 3 - 2 - 6   L o g i c 
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 
 	 i f   ( i n i t i a l L o t s   <   m i n L o t ) 
 	 { 
 	 	 i n i t i a l L o t s   =   m i n L o t ;     
 	 } 
 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	       ( r e v e r s e   = =   f a l s e   & &   p r o f i t O r L o s s   = =   1 ) 
 	 	 	 | |   ( r e v e r s e   = =   t r u e   & &   p r o f i t O r L o s s   = =   - 1 ) 
 	 	 )   { 
 	 	 	 d o u b l e   d i v   =   l o t s   /   i n i t i a l L o t s ; 
 
 	 	 	           i f   ( d i v   <   1 . 5 )   { l o t s   =   i n i t i a l L o t s   *   3 ; } 
 	 	 	 e l s e   i f   ( d i v   <   2 . 5 )   { l o t s   =   i n i t i a l L o t s   *   6 ; } 
 	 	 	 e l s e   i f   ( d i v   <   3 . 5 )   { l o t s   =   i n i t i a l L o t s   *   2 ; } 
 	 	 	 e l s e   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t D a l e m b e r t ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s , 
 	 d o u b l e   r e v e r s e   =   f a l s e 
 )   {     
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 
 	 / / - -   D a l e m b e r t   L o g i c 
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 
 	 i f   ( i n i t i a l L o t s   <   m i n L o t ) 
 	 { 
 	 	 i n i t i a l L o t s   =   m i n L o t ;     
 	 } 
 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	       ( r e v e r s e   = =   0   & &   p r o f i t O r L o s s   = =   1 ) 
 	 	 	 | |   ( r e v e r s e   = =   1   & &   p r o f i t O r L o s s   = =   - 1 ) 
 	 	 )   { 
 	 	 	 l o t s   =   l o t s   -   i n i t i a l L o t s ; 
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 l o t s   =   l o t s   +   i n i t i a l L o t s ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t F i b o n a c c i ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s 
 )   { 
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 
 	 / / - -   F i b o n a c c i   L o g i c 
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 
 	 i f   ( i n i t i a l L o t s   <   m i n L o t ) 
 	 { 
 	 	 i n i t i a l L o t s   =   m i n L o t ;     
 	 } 
 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 } 
 	 e l s e 
 	 {     
 	 	 i n t   f i b o 1   =   1 ; 
 	 	 i n t   f i b o 2   =   0 ; 
 	 	 i n t   f i b o 3   =   0 ; 
 	 	 i n t   f i b o 4   =   0 ; 
 	 	 d o u b l e   d i v   =   l o t s   /   i n i t i a l L o t s ; 
 
 	 	 i f   ( d i v   < =   0 )   { d i v   =   1 ; } 
 
 	 	 w h i l e   ( t r u e ) 
 	 	 { 
 	 	 	 f i b o 1   =   f i b o 1   +   f i b o 2 ; 
 	 	 	 f i b o 3   =   f i b o 2 ; 
 	 	 	 f i b o 2   =   f i b o 1   -   f i b o 2 ; 
 	 	 	 f i b o 4   =   f i b o 2   -   f i b o 3 ; 
 
 	 	 	 i f   ( f i b o 1   >   N o r m a l i z e D o u b l e ( d i v ,   2 ) ) 
 	 	 	 { 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( p r o f i t O r L o s s   = =   1 ) 
 	 	 { 
 	 	 	 i f   ( f i b o 4   < =   0 )   { f i b o 4   =   1 ; } 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   f i b o 4 ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   f i b o 1 ; 
 	 	 } 
 	 } 
 
 	 l o t s   =   N o r m a l i z e D o u b l e ( l o t s ,   2 ) ; 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t L a b o u c h e r e ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s , 
 	 s t r i n g   l i s t O f N u m b e r s , 
 	 d o u b l e   r e v e r s e   =   f a l s e 
 )   { 
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 
 	 / / - -   L a b o u c h e r e   L o g i c 
 	 s t a t i c   s t r i n g   m e m G r o u p [ ] ; 
 	 s t a t i c   s t r i n g   m e m L i s t [ ] ; 
 	 s t a t i c   l o n g   m e m T i c k e t [ ] ; 
 
 	 i n t   s t a r t A g a i n   =   f a l s e ; 
 
 	 / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t 
 	 i n t   i d   =   A r r a y S e a r c h ( m e m G r o u p ,   g r o u p ) ; 
 
 	 i f   ( i d   = =   - 1 ) 
 	 { 
 	 	 s t a r t A g a i n   =   t r u e ; 
 
 	 	 i f   ( l i s t O f N u m b e r s   = =   " " )   { l i s t O f N u m b e r s   =   " 1 " ; } 
 
 	 	 i d   =   A r r a y S i z e ( m e m G r o u p ) ; 
 
 	 	 A r r a y R e s i z e ( m e m G r o u p ,   i d + 1 ,   i d + 1 ) ; 
 	 	 A r r a y R e s i z e ( m e m L i s t ,   i d + 1 ,   i d + 1 ) ; 
 	 	 A r r a y R e s i z e ( m e m T i c k e t ,   i d + 1 ,   i d + 1 ) ; 
 
 	 	 m e m G r o u p [ i d ]   =   g r o u p ; 
 	 	 m e m L i s t [ i d ]     =   l i s t O f N u m b e r s ; 
 	 } 
 
 	 i f   ( m e m T i c k e t [ i d ]   = =   ( l o n g ) O r d e r T i c k e t ( ) ) 
 	 { 
 	 	 / /   t h e   l a s t   k n o w n   t i c k e t   ( m e m T i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( )   n o r m a l l y 
 	 	 / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e   -   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e 
 	 	 / /   s o   w e   n e e d   t o   r e s e t 
 	 	 m e m L i s t [ i d ]   =   l i s t O f N u m b e r s ; 
 	 } 
 
 	 m e m T i c k e t [ i d ]   =   ( l o n g ) O r d e r T i c k e t ( ) ; 
 
 	 / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y 
 	 i n t   l i s t [ ] ; 
 	 s t r i n g   l i s t S [ ] ; 
 
 	 S t r i n g E x p l o d e ( " , " ,   m e m L i s t [ i d ] ,   l i s t S ) ; 
 	 A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t S ) ) ; 
 
 	 f o r   ( i n t   s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + ) 
 	 { 
 	 	 l i s t [ s ]   =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
 	 } 
 
 	 / / - -   
 	 i n t   s i z e   =   A r r a y S i z e ( l i s t ) ; 
 
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 
 	 i f   ( i n i t i a l L o t s   <   m i n L o t ) 
 	 { 
 	 	 i n i t i a l L o t s   =   m i n L o t ;     
 	 } 
 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 s t a r t A g a i n   =   t r u e ; 
 	 } 
 
 	 i f   ( s t a r t A g a i n   = =   t r u e ) 
 	 { 
 	 	 i f   ( s i z e   = =   1 ) 
 	 	 { 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ; 
 	 	 } 
 	 	 e l s e   { 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ) ; 
 	 	 } 
 	 } 
 	 e l s e   
 	 { 
 	 	 i f   ( 
 	 	 	       ( r e v e r s e   = =   0   & &   p r o f i t O r L o s s   = =   1 ) 
 	 	 	 | |   ( r e v e r s e   = =   1   & &   p r o f i t O r L o s s   = =   - 1 ) 
 	 	 )   { 
 	 	 	 s i z e   =   s i z e   -   2 ; 
 	 	 	 
 	 	 	 i f   ( s i z e   <   0 )   { 
 	 	 	 	 s i z e   =   0 ; 
 	 	 	 } 
 	 	 	 
 	 	 	 i f   ( s i z e   = =   0 )   { 
 	 	 	 	 / /   S e t   t h e   i n i t i a l   l i s t   o f   n u m b e r s 
 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   l i s t O f N u m b e r s ,   l i s t S ) ; 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t S ) ) ; 
 	 	 	 
 	 	 	 	 f o r   ( i n t   s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + ) 
 	 	 	 	 { 
 	 	 	 	 	 l i s t [ s ]   =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
 	 	 	 	 } 
 	 	 	 	 
 	 	 	 	 s i z e   =   A r r a y S i z e ( l i s t ) ; 
 	 	 	 } 
 	 	 	 e l s e   { 
 	 	 	 	 / /   C a n c e l   t h e   f i r s t   a n d   t h e   l a s t   n u m b e r   i n   t h e   l i s t 
 	 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t 
 	 	 	 	 f o r   ( i n t   p o s   =   0 ;   p o s   <   A r r a y S i z e ( l i s t )   -   1 ;   p o s + + )   { 
 	 	 	 	 	 l i s t [ p o s ]   =   l i s t [ p o s + 1 ] ; 
 	 	 	 	 } 
 	 	 	 	 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   s i z e ) ; 
 	 	 	 } 
 	 	 	 
 	 	 	 i n t   r i g h t N u m   =   ( s i z e   >   1 )   ?   l i s t [ s i z e   -   1 ]   :   0 ; 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   r i g h t N u m ) ; 
 
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s i z e   =   s i z e   +   1 ; 
 	 	 	 A r r a y R e s i z e ( l i s t ,   s i z e ) ; 
 	 	 	 
 	 	 	 i n t   r i g h t N u m   =   ( s i z e   >   2 )   ?   l i s t [ s i z e   -   2 ]   :   0 ; 
 
 	 	 	 l i s t [ s i z e   -   1 ]   =   l i s t [ 0 ]   +   r i g h t N u m ; 
 	 	 	 l o t s               =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e   -   1 ] ) ; 
 
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 } 
 
 	 P r i n t ( " L a b o u c h e r e   ( f o r   g r o u p   " 
 	 	 +   ( s t r i n g ) i d 
 	 	 +   " )   c u r r e n t   l i s t   o f   n u m b e r s :   " 
 	 	 +   S t r i n g I m p l o d e ( " , " ,   l i s t ) 
 	 ) ; 
 
 	 s i z e = A r r a y S i z e ( l i s t ) ; 
 
 	 i f   ( s i z e   = =   0 ) 
 	 { 
 	 	 A r r a y S t r i p K e y ( m e m G r o u p ,   i d ) ; 
 	 	 A r r a y S t r i p K e y ( m e m L i s t ,   i d ) ; 
 	 	 A r r a y S t r i p K e y ( m e m T i c k e t ,   i d ) ; 
 	 } 
 	 e l s e   { 
 	 	 m e m L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t ) ; 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t M a r t i n g a l e ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s , 
 	 d o u b l e   m u l t i p l y O n L o s s , 
 	 d o u b l e   m u l t i p l y O n P r o f i t , 
 	 d o u b l e   a d d O n L o s s , 
 	 d o u b l e   a d d O n P r o f i t , 
 	 i n t   r e s e t O n L o s s , 
 	 i n t   r e s e t O n P r o f i t 
 )   { 
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   t r u e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 	 d o u b l e   c o n s e c u t i v e     =   i n f o [ 2 ] ; 
 
 	 / / - -   M a r t i n g a l e   L o g i c 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( p r o f i t O r L o s s   = =   1 ) 
 	 	 { 
 	 	 	 i f   ( r e s e t O n P r o f i t   >   0   & &   c o n s e c u t i v e   > =   r e s e t O n P r o f i t ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 i f   ( m u l t i p l y O n P r o f i t   < =   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 m u l t i p l y O n P r o f i t   =   1 ; 
 	 	 	 	 } 
 
 	 	 	 	 l o t s   =   ( l o t s   *   m u l t i p l y O n P r o f i t )   +   a d d O n P r o f i t ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( r e s e t O n L o s s   >   0   & &   c o n s e c u t i v e   > =   r e s e t O n L o s s ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s ;     
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 i f   ( m u l t i p l y O n L o s s   < =   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 m u l t i p l y O n L o s s   =   1 ; 
 	 	 	 	 } 
 
 	 	 	 	 l o t s   =   ( l o t s   *   m u l t i p l y O n L o s s )   +   a d d O n L o s s ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t S e q u e n c e ( 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l , 
 	 d o u b l e   i n i t i a l L o t s , 
 	 s t r i n g   s e q u e n c e O n L o s s , 
 	 s t r i n g   s e q u e n c e O n P r o f i t , 
 	 b o o l   r e v e r s e   =   f a l s e 
 )   {     
 	 d o u b l e   i n f o [ ] ; 
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ; 
 
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ; 
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
 
 	 / / - -   S e q u e n c e   s t u f f 
 	 s t a t i c   s t r i n g   m e m G r o u p [ ] ; 
 	 s t a t i c   s t r i n g   m e m L o s s L i s t [ ] ; 
 	 s t a t i c   s t r i n g   m e m P r o f i t L i s t [ ] ; 
 	 s t a t i c   l o n g   m e m T i c k e t [ ] ; 
 
 	 / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t 
 	 i n t   i d   =   A r r a y S e a r c h ( m e m G r o u p ,   g r o u p ) ; 
 
 	 i f   ( i d   = =   - 1 ) 
 	 { 
 	 	 i f   ( s e q u e n c e O n L o s s   = =   " " )   { s e q u e n c e O n L o s s   =   " 1 " ; } 
 
 	 	 i f   ( s e q u e n c e O n P r o f i t   = =   " " )   { s e q u e n c e O n P r o f i t   =   " 1 " ; } 
 
 	 	 i d   =   A r r a y S i z e ( m e m G r o u p ) ; 
 
 	 	 A r r a y R e s i z e ( m e m G r o u p ,   i d + 1 ,   i d + 1 ) ; 
 	 	 A r r a y R e s i z e ( m e m L o s s L i s t ,   i d + 1 ,   i d + 1 ) ; 
 	 	 A r r a y R e s i z e ( m e m P r o f i t L i s t ,   i d + 1 ,   i d + 1 ) ; 
 	 	 A r r a y R e s i z e ( m e m T i c k e t ,   i d + 1 ,   i d + 1 ) ; 
 
 	 	 m e m G r o u p [ i d ]             =   g r o u p ; 
 	 	 m e m L o s s L i s t [ i d ]       =   s e q u e n c e O n L o s s ; 
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ; 
 	 } 
 
 	 b o o l   l o s s R e s e t       =   f a l s e ; 
 	 b o o l   p r o f i t R e s e t   =   f a l s e ; 
 
 	 i f   ( p r o f i t O r L o s s   = =   - 1   & &   m e m L o s s L i s t [ i d ]   = =   " " ) 
 	 { 
 	 	 l o s s R e s e t                   =   t r u e ; 
 	 	 m e m P r o f i t L i s t [ i d ]   =   " " ; 
 	 } 
 
 	 i f   ( p r o f i t O r L o s s   = =   1   & &   m e m P r o f i t L i s t [ i d ]   = =   " " ) 
 	 { 
 	 	 p r o f i t R e s e t           =   t r u e ; 
 	 	 m e m L o s s L i s t [ i d ]   =   " " ; 
 	 } 
 
 	 i f   ( p r o f i t O r L o s s   = =   1   | |   m e m L o s s L i s t [ i d ]   = =   " " ) 
 	 { 
 	 	 m e m L o s s L i s t [ i d ]   =   s e q u e n c e O n L o s s ; 
 
 	 	 i f   ( l o s s R e s e t )   { 
 	 	 	 m e m L o s s L i s t [ i d ]   =   " 1 , "   +   m e m L o s s L i s t [ i d ] ; 
 	 	 } 
 	 } 
 
 	 i f   ( p r o f i t O r L o s s   = =   - 1   | |   m e m P r o f i t L i s t [ i d ]   = =   " " ) 
 	 { 
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ; 
 
 	 	 i f   ( p r o f i t R e s e t )   { 
 	 	 	 m e m P r o f i t L i s t [ i d ]   =   " 1 , "   +   m e m P r o f i t L i s t [ i d ] ; 
 	 	 } 
 	 } 
 
 	 i f   ( m e m T i c k e t [ i d ]   = =   ( l o n g ) O r d e r T i c k e t ( ) ) 
 	 { 
 	 	 / /   N o r m a l l y   t h e   l a s t   k n o w n   t i c k e t   ( m e m T i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( ) 
 	 	 / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e ,   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e 
 	 	 / /   s o   w e   n e e d   t o   r e s e t 
 	 	 m e m L o s s L i s t [ i d ]       =   s e q u e n c e O n L o s s ; 
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ; 
 	 } 
 
 	 m e m T i c k e t [ i d ]   =   ( l o n g ) O r d e r T i c k e t ( ) ; 
 
 	 / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y 
 	 i n t   s   =   0 ; 
 	 d o u b l e   l i s t L o s s [ ] ; 
 	 d o u b l e   l i s t P r o f i t [ ] ; 
 	 s t r i n g   l i s t S [ ] ; 
 
 	 S t r i n g E x p l o d e ( " , " ,   m e m L o s s L i s t [ i d ] ,   l i s t S ) ; 
 	 A r r a y R e s i z e ( l i s t L o s s ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ; 
 
 	 f o r   ( s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + ) 
 	 { 
 	 	 l i s t L o s s [ s ]   =   ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
 	 } 
 
 	 S t r i n g E x p l o d e ( " , " ,   m e m P r o f i t L i s t [ i d ] ,   l i s t S ) ; 
 	 A r r a y R e s i z e ( l i s t P r o f i t ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ; 
 
 	 f o r   ( s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + ) 
 	 { 
 	 	 l i s t P r o f i t [ s ]   =   ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
 	 } 
 
 	 / / - - 
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
 
 	 i f   ( i n i t i a l L o t s   <   m i n L o t ) 
 	 { 
 	 	 i n i t i a l L o t s   =   m i n L o t ;     
 	 } 
 
 	 i f   ( l o t s   = =   0 ) 
 	 { 
 	 	 l o t s   =   i n i t i a l L o t s ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	       ( r e v e r s e   = =   f a l s e   & &   p r o f i t O r L o s s   = = 1 ) 
 	 	 	 | |   ( r e v e r s e   = =   t r u e   & &   p r o f i t O r L o s s   = =   - 1 ) 
 	 	 )   { 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t P r o f i t [ 0 ] ; 
 
 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t 
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( l i s t P r o f i t ) ; 
 
 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + ) 
 	 	 	 { 
 	 	 	 	 l i s t P r o f i t [ p o s ]   =   l i s t P r o f i t [ p o s + 1 ] ; 
 	 	 	 } 
 
 	 	 	 i f   ( s i z e   >   0 ) 
 	 	 	 { 
 	 	 	 	 A r r a y R e s i z e ( l i s t P r o f i t ,   s i z e - 1 ,   s i z e - 1 ) ; 
 	 	 	 	 m e m P r o f i t L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t P r o f i t ) ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t L o s s [ 0 ] ; 
 
 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t 
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( l i s t L o s s ) ; 
 
 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + ) 
 	 	 	 { 
 	 	 	 	 l i s t L o s s [ p o s ]   =   l i s t L o s s [ p o s + 1 ] ; 
 	 	 	 } 
 
 	 	 	 i f   ( s i z e   >   0 ) 
 	 	 	 { 
 	 	 	 	 A r r a y R e s i z e ( l i s t L o s s ,   s i z e - 1 ,   s i z e - 1 ) ; 
 	 	 	 	 m e m L o s s L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t L o s s ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   l o t s ; 
 }  
  
 i n t   B u y N o w ( 
 	 s t r i n g   s y m b o l , 
 	 d o u b l e   l o t s , 
 	 d o u b l e   s l l , 
 	 d o u b l e   t p l , 
 	 d o u b l e   s l p , 
 	 d o u b l e   t p p , 
 	 d o u b l e   s l i p p a g e   =   0 , 
 	 i n t   m a g i c   =   0 , 
 	 s t r i n g   c o m m e n t   =   " " , 
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 
 	 ) 
 { 
 	 r e t u r n   O r d e r C r e a t e ( 
 	 	 s y m b o l , 
 	 	 O P _ B U Y , 
 	 	 l o t s , 
 	 	 0 , 
 	 	 s l l , 
 	 	 t p l , 
 	 	 s l p , 
 	 	 t p p , 
 	 	 s l i p p a g e , 
 	 	 m a g i c , 
 	 	 c o m m e n t , 
 	 	 a r r o w c o l o r , 
 	 	 e x p i r a t i o n 
 	 ) ; 
 }  
  
 i n t   C h e c k F o r T r a d i n g E r r o r ( i n t   e r r o r _ c o d e = - 1 ,   s t r i n g   m s g _ p r e f i x = " " ) 
 { 
       / /   r e t u r n   0   - >   n o   e r r o r 
       / /   r e t u r n   1   - >   o v e r c o m a b l e   e r r o r 
       / /   r e t u r n   2   - >   f a t a l   e r r o r 
       
       i f   ( e r r o r _ c o d e < 0 )   { 
             e r r o r _ c o d e = G e t L a s t E r r o r ( ) ;     
       } 
       
       i n t   r e t v a l = 0 ; 
       s t a t i c   i n t   t r y o u t s = 0 ; 
       
       / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       s w i t c h ( e r r o r _ c o d e ) 
       { 
             / / - -   n o   e r r o r 
             c a s e   0 : 
                   r e t v a l = 0 ; 
                   b r e a k ; 
             / / - -   o v e r c o m a b l e   e r r o r s 
             c a s e   1 :   / /   N o   e r r o r   r e t u r n e d 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   4 :   / / E R R _ S E R V E R _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   S l e e p ( 1 0 0 0 ) ; 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   6 :   / / E R R _ N O _ C O N N E C T I O N 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   w h i l e ( ! I s C o n n e c t e d ( ) )   { S l e e p ( 1 0 0 ) ; } 
                   w h i l e ( I s T r a d e C o n t e x t B u s y ( ) )   { S l e e p ( 5 0 ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 2 8 :   / / E R R _ T R A D E _ T I M E O U T 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 2 9 :   / / E R R _ I N V A L I D _ P R I C E 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 0 :   / / E R R _ I N V A L I D _ S T O P S 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 5 :   / / E R R _ P R I C E _ C H A N G E D 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 6 :   / / E R R _ O F F _ Q U O T E S 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 7 :   / / E R R _ B R O K E R _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   S l e e p ( 1 0 0 0 ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 8 :   / / E R R _ R E Q U O T E 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 4 2 :   / / T h i s   c o d e   s h o u l d   b e   p r o c e s s e d   i n   t h e   s a m e   w a y   a s   e r r o r   1 2 8 . 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 4 3 :   / / T h i s   c o d e   s h o u l d   b e   p r o c e s s e d   i n   t h e   s a m e   w a y   a s   e r r o r   1 2 8 . 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             / * c a s e   1 4 5 :   / / E R R _ T R A D E _ M O D I F Y _ D E N I E D 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } 
                   r e t u r n ( 1 ) ; 
             * / 
             c a s e   1 4 6 :   / / E R R _ T R A D E _ C O N T E X T _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   w h i l e ( I s T r a d e C o n t e x t B u s y ( ) )   { S l e e p ( 5 0 ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             / / - -   c r i t i c a l   e r r o r s 
             d e f a u l t : 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) ) ) ; } 
                   r e t v a l = 2 ; 
                   b r e a k ; 
       } 
 
       i f   ( r e t v a l = = 0 )   { t r y o u t s = 0 ; } 
       e l s e   i f   ( r e t v a l = = 1 )   { 
             t r y o u t s + + ; 
             i f   ( t r y o u t s > = 1 0 )   { 
                   t r y o u t s = 0 ; 
                   r e t v a l = 2 ; 
             }   e l s e   { 
                   P r i n t ( " r e t r y   # " + ( s t r i n g ) t r y o u t s + "   o f   1 0 " ) ; 
             } 
       } 
       
       r e t u r n ( r e t v a l ) ; 
 }  
  
 b o o l   C l o s e T r a d e ( u l o n g   t i c k e t ,   u l o n g   s l i p p a g e   =   0 ,   c o l o r   a r r o w c o l o r   =   C L R _ N O N E ) 
 { 
 	 b o o l   s u c c e s s   =   f a l s e ; 
 	 b o o l   e x i s t s     =   f a l s e ; 
 	 
 	 f o r   ( i n t   i   =   0 ;   i   <   O r d e r s T o t a l ( ) ;   i + + ) 
 	 { 
 	 	 i f   ( ! O r d e r S e l e c t ( i ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   c o n t i n u e ; 
 
 	 	 i f   ( O r d e r T i c k e t ( )   = =   t i c k e t ) 
 	 	 { 
 	 	 	 e x i s t s   =   t r u e ; 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 
 	 i f   ( e x i s t s   = =   f a l s e ) 
 	 { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 w h i l e   ( t r u e ) 
 	 { 
 	 	 / / - -   w a i t   i f   n e e d e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
 
 	 	 / / - -   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 s u c c e s s   =   O r d e r C l o s e ( ( i n t ) t i c k e t ,   O r d e r L o t s ( ) ,   O r d e r C l o s e P r i c e ( ) ,   ( i n t ) ( s l i p p a g e   *   P i p V a l u e ( O r d e r S y m b o l ( ) ) ) ,   a r r o w c o l o r ) ; 
 
 	 	 i f   ( s u c c e s s   = =   t r u e ) 
 	 	 { 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )   { 
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " c l e a r " ,   t i c k e t ) ; 
 	 	 	 } 
 
 	 	 	 e x p i r a t i o n W o r k e r . R e m o v e E x p i r a t i o n ( t i c k e t ) ; 
 
 	 	 	 O n T r a d e ( ) ; 
 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 
 	 	 / / - -   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " C l o s i n g   t r a d e   # "   +   ( s t r i n g ) t i c k e t   +   "   e r r o r " ) ; 
 
 	 	 s w i t c h ( e r r a c t i o n ) 
 	 	 { 
 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 } 
 
 	 	 b r e a k ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   C l o s e T r a d e P a r t i a l ( 
 	 i n t   t i c k e t , 
 	 d o u b l e   l o t s , 
 	 d o u b l e   s l i p p a g e , 
 	 c o l o r   a r r o w c o l o r 
 ) 
 { 
 	 i f   ( t i c k e t   ! =   O r d e r T i c k e t ( ) ) 
 	 { 
 	 	 i f   ( ! O r d e r S e l e c t ( t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) ) 
 	 	 { 
 	 	 	 P r i n t ( " C a n n o t   c l o s e   a   t r a d e :   T r a d e   # " ,   ( s t r i n g ) t i c k e t ,   "   i s   a l r e a d y   c l o s e d   o r   i t   d o e s   n o t   e x i s t " ) ;   
 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 	 } 
 
 	 s t r i n g   s y m b o l       =   O r d e r S y m b o l ( ) ; 
 	 d o u b l e   o l d _ s l       =   a t t r S t o p L o s s ( ) ; 
 	 d o u b l e   o l d _ t p       =   a t t r T a k e P r o f i t ( ) ; 
 	 d o u b l e   o l d _ l o t s   =   O r d e r L o t s ( ) ; 
 
 	 W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
 
 	 i f   ( l o t s   >   o l d _ l o t s )   { l o t s   =   o l d _ l o t s ; } 
 
 	 d o u b l e   l o t s t e p   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ S T E P ) ; 
 	 l o t s   =   M a t h R o u n d ( l o t s   /   l o t s t e p )   *   l o t s t e p ; 
 
 	 l o t s   =   A l i g n L o t s ( s y m b o l ,   l o t s ) ; 
 
 	 i f   ( O r d e r C l o s e ( t i c k e t ,   l o t s ,   O r d e r C l o s e P r i c e ( ) ,   ( i n t ) ( s l i p p a g e   *   P i p V a l u e ( s y m b o l ) ) ,   a r r o w c o l o r ) ) 
 	 { 
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 { 
 	 	 	 V i r t u a l S t o p s D r i v e r ( " c l e a r " ,   t i c k e t ) ; 
 	 	 } 
 
 	 	 i f   ( l o t s   ! =   o l d _ l o t s ) 
 	 	 { 
 	 	 	 i n t   t i c k e t _ c h i l d   =   a t t r T i c k e t C h i l d ( t i c k e t ) ; 
 	 	 	 a t t r T i c k e t I n L o o p ( t i c k e t _ c h i l d ) ; 
 	 	 	 a t t r L o t s C l o s e d ( l o t s ) ; 
 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " p a r t i a l " ,   t i c k e t _ c h i l d ,   o l d _ s l ,   o l d _ t p ) ; 
 	 	 	 } 
 
 	 	 	 d a t e t i m e   e x p i r a t i o n   =   e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( t i c k e t ) ; 
 	 	 	 
 	 	 	 i f   ( e x p i r a t i o n   >   0 ) 
 	 	 	 { 
 	 	 	 	 e x p i r a t i o n W o r k e r . S e t E x p i r a t i o n ( t i c k e t _ c h i l d ,   e x p i r a t i o n ) ; 
 	 	 	 } 
 	 	 } 
 	 	 
 	 	 e x p i r a t i o n W o r k e r . R e m o v e E x p i r a t i o n ( t i c k e t ) ; 
 
 	 	 O n T r a d e ( ) ; 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 P r i n t ( E r r o r M e s s a g e ( G e t L a s t E r r o r ( ) ) ) ;     
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 > 
 b o o l   C o m p a r e V a l u e s ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 ) 
 { 
 	           i f   ( s i g n   = =   " > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < " )   r e t u r n ( v 1   <   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " > = " )   r e t u r n ( v 1   > =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < = " )   r e t u r n ( v 1   < =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " = = " )   r e t u r n ( v 1   = =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " ! = " )   r e t u r n ( v 1   ! =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x < " )   r e t u r n ( v 1   <   v 2 ) ; 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 s t r i n g   C u r r e n t S y m b o l ( s t r i n g   s y m b o l   =   " " ) 
 { 
       s t a t i c   s t r i n g   m e m o r y   =   " " ; 
 
 	 / /   S e t 
       i f   ( s y m b o l   ! =   " " ) 
 	 { 
 	 	 m e m o r y   =   s y m b o l ; 
 	 } 
 	 / /   G e t 
 	 e l s e   i f   ( m e m o r y   = =   " " ) 
 	 { 
 	 	 m e m o r y   =   S y m b o l ( ) ; 
 	 } 
 
       r e t u r n   m e m o r y ; 
 }  
  
 E N U M _ T I M E F R A M E S   C u r r e n t T i m e f r a m e ( E N U M _ T I M E F R A M E S   t i m e f r a m e   =   - 1 ) 
 { 
 	 s t a t i c   E N U M _ T I M E F R A M E S   m e m o r y   =   0 ; 
 
       i f   ( t i m e f r a m e   > =   0 )   { m e m o r y   =   t i m e f r a m e ; } 
 
       r e t u r n   m e m o r y ; 
 }  
  
 d o u b l e   C u s t o m P o i n t ( s t r i n g   s y m b o l ) 
 { 
 	 s t a t i c   s t r i n g   s y m b o l s [ ] ; 
 	 s t a t i c   d o u b l e   p o i n t s [ ] ; 
 	 s t a t i c   s t r i n g   l a s t _ s y m b o l   =   " - " ; 
 	 s t a t i c   d o u b l e   l a s t _ p o i n t     =   0 ; 
 	 s t a t i c   i n t   l a s t _ i                   =   0 ; 
 	 s t a t i c   i n t   s i z e                       =   0 ; 
 
 	 / / - -   v a r i a n t   A )   u s e   t h e   c a c h e   f o r   t h e   l a s t   u s e d   s y m b o l 
 	 i f   ( s y m b o l   = =   l a s t _ s y m b o l ) 
 	 { 
 	 	 r e t u r n   l a s t _ p o i n t ; 
 	 } 
 
 	 / / - -   v a r i a n t   B )   s e a r c h   i n   t h e   a r r a y   c a c h e 
 	 i n t   i 	 	 	 =   l a s t _ i ; 
 	 i n t   s t a r t _ i 	 =   i ; 
 	 b o o l   f o u n d 	 =   f a l s e ; 
 
 	 i f   ( s i z e   >   0 ) 
 	 { 
 	 	 w h i l e   ( t r u e ) 
 	 	 { 
 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l ) 
 	 	 	 { 
 	 	 	 	 l a s t _ s y m b o l 	 =   s y m b o l ; 
 	 	 	 	 l a s t _ p o i n t 	 =   p o i n t s [ i ] ; 
 	 	 	 	 l a s t _ i 	 	 =   i ; 
 
 	 	 	 	 r e t u r n   l a s t _ p o i n t ; 
 	 	 	 } 
 
 	 	 	 i + + ; 
 
 	 	 	 i f   ( i   > =   s i z e ) 
 	 	 	 { 
 	 	 	 	 i   =   0 ; 
 	 	 	 } 
 	 	 	 i f   ( i   = =   s t a r t _ i )   { b r e a k ; } 
 	 	 } 
 	 } 
 
 	 / / - -   v a r i a n t   C )   a d d   t h i s   s y m b o l   t o   t h e   c a c h e 
 	 i 	 	 =   s i z e ; 
 	 s i z e 	 =   s i z e   +   1 ; 
 
 	 A r r a y R e s i z e ( s y m b o l s ,   s i z e ) ; 
 	 A r r a y R e s i z e ( p o i n t s ,   s i z e ) ; 
 
 	 s y m b o l s [ i ] 	 =   s y m b o l ; 
 	 p o i n t s [ i ] 	 =   0 ; 
 	 l a s t _ s y m b o l 	 =   s y m b o l ; 
 	 l a s t _ i 	 	 =   i ; 
 
 	 / / - -   u n s e r i a l i z e   r u l e s   f r o m   F X D _ P O I N T _ F O R M A T _ R U L E S 
 	 s t r i n g   r u l e s [ ] ; 
 	 S t r i n g E x p l o d e ( " , " ,   P O I N T _ F O R M A T _ R U L E S ,   r u l e s ) ; 
 
 	 i n t   r u l e s _ c o u n t   =   A r r a y S i z e ( r u l e s ) ; 
 
 	 i f   ( r u l e s _ c o u n t   >   0 ) 
 	 { 
 	 	 s t r i n g   r u l e [ ] ; 
 
 	 	 f o r   ( i n t   r   =   0 ;   r   <   r u l e s _ c o u n t ;   r + + ) 
 	 	 { 
 	 	 	 S t r i n g E x p l o d e ( " = " ,   r u l e s [ r ] ,   r u l e ) ; 
 
 	 	 	 / / - -   a   s i n g l e   r u l e   m u s t   c o n t a i n   2   p a r t s ,   [ 0 ]   f r o m   a n d   [ 1 ]   t o 
 	 	 	 i f   ( A r r a y S i z e ( r u l e )   ! =   2 )   { c o n t i n u e ; } 
 
 	 	 	 d o u b l e   f r o m   =   S t r i n g T o D o u b l e ( r u l e [ 0 ] ) ; 
 	 	 	 d o u b l e   t o 	 =   S t r i n g T o D o u b l e ( r u l e [ 1 ] ) ; 
 
 	 	 	 / / - -   " t o "   m u s t   b e   a   p o s i t i v e   n u m b e r ,   d i f f e r e n t   t h a n   0 
 	 	 	 i f   ( t o   < =   0 )   { c o n t i n u e ; } 
 
 	 	 	 / / - -   " f r o m "   c a n   b e   a   n u m b e r   o r   a   s t r i n g 
 	 	 	 / /   a )   s t r i n g 
 	 	 	 i f   ( f r o m   = =   0   & &   S t r i n g L e n ( r u l e [ 0 ] )   >   0 ) 
 	 	 	 { 
 	 	 	 	 s t r i n g   s _ f r o m   =   r u l e [ 0 ] ; 
 	 	 	 	 i n t   p o s               =   S t r i n g F i n d ( s _ f r o m ,   " ? " ) ; 
 
 	 	 	 	 i f   ( p o s   <   0 )   / /   ?   n o t   f o u n d 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   s _ f r o m )   = =   0 )   { p o i n t s [ i ]   =   t o ; } 
 	 	 	 	 } 
 	 	 	 	 e l s e   i f   ( p o s   = =   0 )   / /   ?   i s   t h e   f i r s t   s y m b o l   = >   m a t c h   t h e   s e c o n d   s y m b o l 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   1 ) ,   3 )   = =   3 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 p o i n t s [ i ]   =   t o ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 	 e l s e   i f   ( p o s   >   0 )   / /   ?   i s   t h e   s e c o n d   s y m b o l   = >   m a t c h   t h e   f i r s t   s y m b o l 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   0 ,   p o s ) )   = =   0 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 p o i n t s [ i ]   =   t o ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 / /   b )   n u m b e r 
 	 	 	 i f   ( f r o m   = =   0 )   { c o n t i n u e ; } 
 
 	 	 	 i f   ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T )   = =   f r o m ) 
 	 	 	 { 
 	 	 	 	 p o i n t s [ i ]   =   t o ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 i f   ( p o i n t s [ i ]   = =   0 ) 
 	 { 
 	 	 p o i n t s [ i ]   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 } 
 
 	 l a s t _ p o i n t   =   p o i n t s [ i ] ; 
 
 	 r e t u r n   l a s t _ p o i n t ; 
 }  
  
 b o o l   D e l e t e O r d e r ( u l o n g   t i c k e t ,   c o l o r   a r r o w c o l o r = c l r N O N E ) 
 { 
       b o o l   s u c c e s s = f a l s e ; 
       i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t , S E L E C T _ B Y _ T I C K E T , M O D E _ T R A D E S ) )   { r e t u r n ( f a l s e ) ; } 
       
       w h i l e ( t r u e ) 
       { 
             / / - -   w a i t   i f   n e e d e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
             / / - -   d e l e t e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             s u c c e s s = O r d e r D e l e t e ( ( i n t ) t i c k e t , a r r o w c o l o r ) ; 
             i f   ( s u c c e s s = = t r u e )   { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         V i r t u a l S t o p s D r i v e r ( " c l e a r " , t i c k e t ) ; 
                   } 
                   O n T r a d e ( ) ; 
                   r e t u r n ( t r u e ) ; 
             } 
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " D e l e t i n g   o r d e r   # " + ( s t r i n g ) t i c k e t + "   e r r o r " ) ; 
             s w i t c h ( e r r a c t i o n ) 
             { 
                   c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                   c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                   c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
             } 
             b r e a k ; 
       } 
       r e t u r n ( f a l s e ) ; 
 }  
  
 v o i d   D r a w S p r e a d I n f o ( ) 
 { 
       s t a t i c   b o o l   a l l o w _ d r a w   =   t r u e ; 
       i f   ( a l l o w _ d r a w = = f a l s e )   { r e t u r n ; } 
       i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) )   { a l l o w _ d r a w = f a l s e ; }   / /   A l l o w e d   t o   d r a w   o n l y   o n c e   i n   t e s t i n g   m o d e 
 
       s t a t i c   b o o l   p a s s e d                   =   f a l s e ; 
       s t a t i c   d o u b l e   m a x _ s p r e a d       =   0 ; 
       s t a t i c   d o u b l e   m i n _ s p r e a d       =   E M P T Y _ V A L U E ; 
       s t a t i c   d o u b l e   a v g _ s p r e a d       =   0 ; 
       s t a t i c   d o u b l e   a v g _ a d d             =   0 ; 
       s t a t i c   d o u b l e   a v g _ c n t             =   0 ; 
 
       d o u b l e   c u s t o m _ p o i n t   =   C u s t o m P o i n t ( S y m b o l ( ) ) ; 
       d o u b l e   c u r r e n t _ s p r e a d   =   0 ; 
       i f   ( c u s t o m _ p o i n t   >   0 )   { 
             c u r r e n t _ s p r e a d   =   ( S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ A S K ) - S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ B I D ) ) / c u s t o m _ p o i n t ; 
       } 
       i f   ( c u r r e n t _ s p r e a d   >   m a x _ s p r e a d )   { m a x _ s p r e a d   =   c u r r e n t _ s p r e a d ; } 
       i f   ( c u r r e n t _ s p r e a d   <   m i n _ s p r e a d )   { m i n _ s p r e a d   =   c u r r e n t _ s p r e a d ; } 
       
       a v g _ c n t + + ; 
       a v g _ a d d           =   a v g _ a d d   +   c u r r e n t _ s p r e a d ; 
       a v g _ s p r e a d     =   a v g _ a d d   /   a v g _ c n t ; 
 
       i n t   x = 0 ;   i n t   y = 0 ; 
       s t r i n g   n a m e ; 
 
       / /   c r e a t e   o b j e c t s 
       i f   ( p a s s e d   = =   f a l s e ) 
       { 
             p a s s e d = t r u e ; 
             
             n a m e = " f x d _ s p r e a d _ c u r r e n t _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " S p r e a d : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m a x _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m a x : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ a v g _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " a v g : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m i n _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m i n : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ c u r r e n t " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 9 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m a x " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ a v g " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m i n " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
       } 
       
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ c u r r e n t " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( c u r r e n t _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m a x " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m a x _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ a v g " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( a v g _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m i n " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m i n _ s p r e a d , 2 ) ) ; 
 }  
  
 s t r i n g   D r a w S t a t u s ( s t r i n g   t e x t = " " )  
 {  
       s t a t i c   s t r i n g   m e m o r y ;  
       i f   ( t e x t = = " " )   {  
             r e t u r n ( m e m o r y ) ;  
       }  
        
       s t a t i c   b o o l   p a s s e d   =   f a l s e ;  
       i n t   x = 2 1 0 ;   i n t   y = 0 ;  
       s t r i n g   n a m e ;  
  
       / / - -   d r a w   t h e   o b j e c t s   o n c e  
       i f   ( p a s s e d   = =   f a l s e )  
       {  
             p a s s e d   =   t r u e ;  
             n a m e = " f x d _ s t a t u s _ t i t l e " ;  
             O b j e c t C r e a t e ( 0 , n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ B A C K ,   f a l s e ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ X D I S T A N C E ,   x ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ T E X T ,   " S t a t u s " ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ C O L O R ,   c l r G r a y ) ;  
              
             n a m e = " f x d _ s t a t u s _ t e x t " ;  
             O b j e c t C r e a t e ( 0 , n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ B A C K ,   f a l s e ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 2 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 2 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ C O L O R ,   c l r A q u a ) ;  
       }  
  
       / / - -   u p d a t e   t h e   t e x t   w h e n   n e e d e d  
       i f   ( t e x t   ! =   m e m o r y )   {  
             m e m o r y = t e x t ;  
             O b j e c t S e t S t r i n g ( 0 , " f x d _ s t a t u s _ t e x t " ,   O B J P R O P _ T E X T ,   t e x t ) ;  
       }  
        
       r e t u r n ( t e x t ) ;  
 }  
  
 d o u b l e   D y n a m i c L o t s ( s t r i n g   s y m b o l ,   s t r i n g   m o d e = " b a l a n c e " ,   d o u b l e   v a l u e = 0 ,   d o u b l e   s l = 0 ,   s t r i n g   a l i g n = " a l i g n " ,   d o u b l e   R J F R _ i n i t i a l _ l o t s = 0 ) 
 { 
       d o u b l e   s i z e = 0 ; 
       d o u b l e   L o t S t e p = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S T E P ) ; 
       d o u b l e   L o t S i z e = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S I Z E ) ; 
       d o u b l e   M i n L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ; 
       d o u b l e   M a x L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M A X L O T ) ; 
       d o u b l e   T i c k V a l u e = M a r k e t I n f o ( s y m b o l , M O D E _ T I C K V A L U E ) ; 
       d o u b l e   p o i n t = M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ; 
       d o u b l e   t i c k s i z e = M a r k e t I n f o ( s y m b o l , M O D E _ T I C K S I Z E ) ; 
       d o u b l e   m a r g i n _ r e q u i r e d = M a r k e t I n f o ( s y m b o l , M O D E _ M A R G I N R E Q U I R E D ) ; 
       
       i f   ( m o d e = = " f i x e d "   | |   m o d e = = " l o t s " )           { s i z e = v a l u e ; } 
       e l s e   i f   ( m o d e = = " b l o c k - e q u i t y " )             { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - b a l a n c e " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - f r e e m a r g i n " )     { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " e q u i t y " )             { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n " )     { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " e q u i t y R i s k " )           { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e R i s k " )         { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R i s k " )       { s i z e = ( v a l u e ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R a t i o "   | |   m o d e = = " R J F R " )   { 
             
             / / / / / 
             / /   R y a n   J o n e s   F i x e d   R a t i o   M M   s t a t i c   d a t a 
             s t a t i c   d o u b l e   R J F R _ s t a r t _ l o t s = 0 ; 
             s t a t i c   d o u b l e   R J F R _ d e l t a = 0 ; 
             s t a t i c   d o u b l e   R J F R _ u n i t s = 1 ; 
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ l o w e r = 0 ; 
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ u p p e r = 0 ; 
             / / / / / 
             
             i f   ( R J F R _ s t a r t _ l o t s < = 0 )   { R J F R _ s t a r t _ l o t s = v a l u e ; } 
             i f   ( R J F R _ s t a r t _ l o t s < M i n L o t s )   { R J F R _ s t a r t _ l o t s = M i n L o t s ; } 
             i f   ( R J F R _ d e l t a < = 0 )   { R J F R _ d e l t a = s l ; } 
             i f   ( R J F R _ t a r g e t _ u p p e r < = 0 )   { 
                   R J F R _ t a r g e t _ u p p e r = A c c o u n t E q u i t y ( ) + ( R J F R _ u n i t s * R J F R _ d e l t a ) ; 
                   P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
             } 
             i f   ( A c c o u n t E q u i t y ( ) > = R J F R _ t a r g e t _ u p p e r ) 
             { 
                   w h i l e ( t r u e )   { 
                         P r i n t ( " F i x e d   R a t i o   M M   g o i n g   u p   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s + 1 ) ) , "   l o t s :   E q u i t y   i s   a b o v e   U p p e r   T a r g e t   E q u i t y   ( " , A c c o u n t E q u i t y ( ) , " > = " , R J F R _ t a r g e t _ u p p e r , " ) " ) ; 
                         R J F R _ u n i t s + + ; 
                         R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ u p p e r ; 
                         R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ u p p e r + ( R J F R _ u n i t s * R J F R _ d e l t a ) ; 
                         P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
                         i f   ( A c c o u n t E q u i t y ( ) < R J F R _ t a r g e t _ u p p e r )   { b r e a k ; } 
                   } 
             } 
             e l s e   i f   ( A c c o u n t E q u i t y ( ) < = R J F R _ t a r g e t _ l o w e r ) 
             { 
                   w h i l e ( t r u e )   { 
                   i f   ( A c c o u n t E q u i t y ( ) > R J F R _ t a r g e t _ l o w e r )   { b r e a k ; } 
                         i f   ( R J F R _ u n i t s > 1 )   {                   
                               P r i n t ( " F i x e d   R a t i o   M M   g o i n g   d o w n   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s - 1 ) ) , "   l o t s :   E q u i t y   i s   b e l o w   L o w e r   T a r g e t   E q u i t y   |   " ,   A c c o u n t E q u i t y ( ) , "   < =   " , R J F R _ t a r g e t _ l o w e r , " ) " ) ; 
                               R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ l o w e r ; 
                               R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ l o w e r - ( ( R J F R _ u n i t s - 1 ) * R J F R _ d e l t a ) ; 
                               R J F R _ u n i t s - - ; 
                               P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
                         }   e l s e   { b r e a k ; } 
                   } 
             } 
             s i z e = R J F R _ s t a r t _ l o t s * R J F R _ u n i t s ; 
       } 
       
 	 i f   ( s i z e = = E M P T Y _ V A L U E )   { s i z e = 0 ; } 
 	 
       s i z e = M a t h R o u n d ( s i z e / L o t S t e p ) * L o t S t e p ; 
       
       s t a t i c   b o o l   a l e r t _ m i n _ l o t s = f a l s e ; 
       i f   ( s i z e < M i n L o t s   & &   a l e r t _ m i n _ l o t s = = f a l s e )   { 
             a l e r t _ m i n _ l o t s = t r u e ; 
             A l e r t ( " Y o u   w a n t   t o   t r a d e   " , s i z e , "   l o t ,   b u t   y o u r   b r o k e r ' s   m i n i m u m   i s   " , M i n L o t s , "   l o t .   T h e   t r a d e / o r d e r   w i l l   c o n t i n u e   w i t h   " , M i n L o t s , "   l o t   i n s t e a d   o f   " , s i z e , "   l o t .   T h e   s a m e   r u l e   w i l l   b e   a p p l i e d   f o r   n e x t   t r a d e s / o r d e r s   w i t h   d e s i r e d   l o t   s i z e   l o w e r   t h a n   t h e   m i n i m u m .   Y o u   w i l l   n o t   s e e   t h i s   m e s s a g e   a g a i n   u n t i l   y o u   r e s t a r t   t h e   p r o g r a m . " ) ; 
       } 
       
       i f   ( a l i g n = = " a l i g n " )   { 
             i f   ( s i z e < M i n L o t s )   { s i z e = M i n L o t s ; } 
             i f   ( s i z e > M a x L o t s )   { s i z e = M a x L o t s ; } 
       } 
       
       r e t u r n   ( s i z e ) ; 
 }  
  
 s t r i n g   E r r o r M e s s a g e ( i n t   e r r o r _ c o d e = - 1 ) 
 { 
 	 s t r i n g   e   =   " " ; 
 	 
 	 i f   ( e r r o r _ c o d e   <   0 )   { e r r o r _ c o d e   =   G e t L a s t E r r o r ( ) ; } 
 	 
 	 s w i t c h ( e r r o r _ c o d e ) 
 	 { 
 	 	 / / - -   c o d e s   r e t u r n e d   f r o m   t r a d e   s e r v e r 
 	 	 c a s e   0 : 	 r e t u r n ( " " ) ; 
 	 	 c a s e   1 : 	 e   =   " N o   e r r o r   r e t u r n e d " ;   b r e a k ; 
 	 	 c a s e   2 : 	 e   =   " C o m m o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   3 : 	 e   =   " I n v a l i d   t r a d e   p a r a m e t e r s " ;   b r e a k ; 
 	 	 c a s e   4 : 	 e   =   " T r a d e   s e r v e r   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   5 : 	 e   =   " O l d   v e r s i o n   o f   t h e   c l i e n t   t e r m i n a l " ;   b r e a k ; 
 	 	 c a s e   6 : 	 e   =   " N o   c o n n e c t i o n   w i t h   t r a d e   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   7 : 	 e   =   " N o t   e n o u g h   r i g h t s " ;   b r e a k ; 
 	 	 c a s e   8 : 	 e   =   " T o o   f r e q u e n t   r e q u e s t s " ;   b r e a k ; 
 	 	 c a s e   9 : 	 e   =   " M a l f u n c t i o n a l   t r a d e   o p e r a t i o n   ( n e v e r   r e t u r n e d   e r r o r ) " ;   b r e a k ; 
 	 	 c a s e   6 4 :     e   =   " A c c o u n t   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   6 5 :     e   =   " I n v a l i d   a c c o u n t " ;   b r e a k ; 
 	 	 c a s e   1 2 8 :   e   =   " T r a d e   t i m e o u t " ;   b r e a k ; 
 	 	 c a s e   1 2 9 :   e   =   " I n v a l i d   p r i c e " ;   b r e a k ; 
 	 	 c a s e   1 3 0 :   e   =   " I n v a l i d   S l   o r   T P " ;   b r e a k ; 
 	 	 c a s e   1 3 1 :   e   =   " I n v a l i d   t r a d e   v o l u m e " ;   b r e a k ; 
 	 	 c a s e   1 3 2 :   e   =   " M a r k e t   i s   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   1 3 3 :   e   =   " T r a d e   i s   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   1 3 4 :   e   =   " N o t   e n o u g h   m o n e y " ;   b r e a k ; 
 	 	 c a s e   1 3 5 :   e   =   " P r i c e   c h a n g e d " ;   b r e a k ; 
 	 	 c a s e   1 3 6 :   e   =   " O f f   q u o t e s " ;   b r e a k ; 
 	 	 c a s e   1 3 7 :   e   =   " B r o k e r   i s   b u s y   ( n e v e r   r e t u r n e d   e r r o r ) " ;   b r e a k ; 
 	 	 c a s e   1 3 8 :   e   =   " R e q u o t e " ;   b r e a k ; 
 	 	 c a s e   1 3 9 :   e   =   " O r d e r   i s   l o c k e d " ;   b r e a k ; 
 	 	 c a s e   1 4 0 :   e   =   " O n l y   l o n g   t r a d e s   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   1 4 1 :   e   =   " T o o   m a n y   r e q u e s t s " ;   b r e a k ; 
 	 	 c a s e   1 4 5 :   e   =   " M o d i f i c a t i o n   d e n i e d   b e c a u s e   o r d e r   t o o   c l o s e   t o   m a r k e t " ;   b r e a k ; 
 	 	 c a s e   1 4 6 :   e   =   " T r a d e   c o n t e x t   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   1 4 7 :   e   =   " E x p i r a t i o n s   a r e   d e n i e d   b y   b r o k e r " ;   b r e a k ; 
 	 	 c a s e   1 4 8 :   e   =   " A m o u n t   o f   o p e n   a n d   p e n d i n g   o r d e r s   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ; 
 	 	 c a s e   1 4 9 :   e   =   " H e d g i n g   i s   p r o h i b i t e d " ;   b r e a k ; 
 	 	 c a s e   1 5 0 :   e   =   " P r o h i b i t e d   b y   F I F O   r u l e s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   m q l 4   e r r o r s 
 	 	 c a s e   4 0 0 0 :   e   =   " N o   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 1 :   e   =   " W r o n g   f u n c t i o n   p o i n t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 2 :   e   =   " A r r a y   i n d e x   i s   o u t   o f   r a n g e " ;   b r e a k ; 
 	 	 c a s e   4 0 0 3 :   e   =   " N o   m e m o r y   f o r   f u n c t i o n   c a l l   s t a c k " ;   b r e a k ; 
 	 	 c a s e   4 0 0 4 :   e   =   " R e c u r s i v e   s t a c k   o v e r f l o w " ;   b r e a k ; 
 	 	 c a s e   4 0 0 5 :   e   =   " N o t   e n o u g h   s t a c k   f o r   p a r a m e t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 6 :   e   =   " N o   m e m o r y   f o r   p a r a m e t e r   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 7 :   e   =   " N o   m e m o r y   f o r   t e m p   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 8 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 9 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g   i n   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 0 :   e   =   " N o   m e m o r y   f o r   a r r a y   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 1 1 :   e   =   " T o o   l o n g   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 1 2 :   e   =   " R e m a i n d e r   f r o m   z e r o   d i v i d e " ;   b r e a k ; 
 	 	 c a s e   4 0 1 3 :   e   =   " Z e r o   d i v i d e " ;   b r e a k ; 
 	 	 c a s e   4 0 1 4 :   e   =   " U n k n o w n   c o m m a n d " ;   b r e a k ; 
 	 	 c a s e   4 0 1 5 :   e   =   " W r o n g   j u m p " ;   b r e a k ; 
 	 	 c a s e   4 0 1 6 :   e   =   " N o t   i n i t i a l i z e d   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 7 :   e   =   " d l l   c a l l s   a r e   n o t   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   4 0 1 8 :   e   =   " C a n n o t   l o a d   l i b r a r y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 9 :   e   =   " C a n n o t   c a l l   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 2 0 :   e   =   " E x p e r t   f u n c t i o n   c a l l s   a r e   n o t   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   4 0 2 1 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t e m p   s t r i n g   r e t u r n e d   f r o m   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 2 2 :   e   =   " S y s t e m   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   4 0 5 0 :   e   =   " I n v a l i d   f u n c t i o n   p a r a m e t e r s   c o u n t " ;   b r e a k ; 
 	 	 c a s e   4 0 5 1 :   e   =   " I n v a l i d   f u n c t i o n   p a r a m e t e r   v a l u e " ;   b r e a k ; 
 	 	 c a s e   4 0 5 2 :   e   =   " S t r i n g   f u n c t i o n   i n t e r n a l   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 3 :   e   =   " S o m e   a r r a y   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 4 :   e   =   " I n c o r r e c t   s e r i e s   a r r a y   u s i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 5 5 :   e   =   " C u s t o m   i n d i c a t o r   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 6 :   e   =   " A r r a y s   a r e   i n c o m p a t i b l e " ;   b r e a k ; 
 	 	 c a s e   4 0 5 7 :   e   =   " G l o b a l   v a r i a b l e s   p r o c e s s i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 8 :   e   =   " G l o b a l   v a r i a b l e   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 0 5 9 :   e   =   " F u n c t i o n   i s   n o t   a l l o w e d   i n   t e s t i n g   m o d e " ;   b r e a k ; 
 	 	 c a s e   4 0 6 0 :   e   =   " F u n c t i o n   i s   n o t   c o n f i r m e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 1 :   e   =   " S e n d   m a i l   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 6 2 :   e   =   " S t r i n g   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 3 :   e   =   " I n t e g e r   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 4 :   e   =   " D o u b l e   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 5 :   e   =   " A r r a y   a s   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 6 :   e   =   " R e q u e s t e d   h i s t o r y   d a t a   i n   u p d a t e   s t a t e " ;   b r e a k ; 
 	 	 c a s e   4 0 9 9 :   e   =   " E n d   o f   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 0 :   e   =   " S o m e   f i l e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 1 0 1 :   e   =   " W r o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 2 :   e   =   " T o o   m a n y   o p e n e d   f i l e s " ;   b r e a k ; 
 	 	 c a s e   4 1 0 3 :   e   =   " C a n n o t   o p e n   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 4 :   e   =   " I n c o m p a t i b l e   a c c e s s   t o   a   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 5 :   e   =   " N o   o r d e r   s e l e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 1 0 6 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ; 
 	 	 c a s e   4 1 0 7 :   e   =   " I n v a l i d   p r i c e   p a r a m e t e r   f o r   t r a d e   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 1 0 8 :   e   =   " I n v a l i d   t i c k e t " ;   b r e a k ; 
 	 	 c a s e   4 1 0 9 :   e   =   " T r a d e   i s   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 c a s e   4 1 1 0 :   e   =   " L o n g s   a r e   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 c a s e   4 1 1 1 :   e   =   " S h o r t s   a r e   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   o b j e c t s   e r r o r s 
 	 	 c a s e   4 2 0 0 :   e   =   " O b j e c t   i s   a l r e a d y   e x i s t " ;   b r e a k ; 
 	 	 c a s e   4 2 0 1 :   e   =   " U n k n o w n   o b j e c t   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 2 0 2 :   e   =   " O b j e c t   i s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   4 2 0 3 :   e   =   " U n k n o w n   o b j e c t   t y p e " ;   b r e a k ; 
 	 	 c a s e   4 2 0 4 :   e   =   " N o   o b j e c t   n a m e " ;   b r e a k ; 
 	 	 c a s e   4 2 0 5 :   e   =   " O b j e c t   c o o r d i n a t e s   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 0 6 :   e   =   " N o   s p e c i f i e d   s u b w i n d o w " ;   b r e a k ; 
 	 	 c a s e   4 2 0 7 :   e   =   " G r a p h i c a l   o b j e c t   e r r o r " ;   b r e a k ;     
 	 	 c a s e   4 2 1 0 :   e   =   " U n k n o w n   c h a r t   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 2 1 1 :   e   =   " C h a r t   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 1 2 :   e   =   " C h a r t   s u b w i n d o w   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 1 3 :   e   =   " C h a r t   i n d i c a t o r   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 2 0 :   e   =   " S y m b o l   s e l e c t   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 0 :   e   =   " N o t i f i c a t i o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 1 :   e   =   " N o t i f i c a t i o n   p a r a m e t e r   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 2 :   e   =   " N o t i f i c a t i o n s   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   4 2 5 3 :   e   =   " N o t i f i c a t i o n   s e n d   t o o   f r e q u e n t " ;   b r e a k ; 
 	 	 
 	 	 / / - -   f t p   e r r o r s 
 	 	 c a s e   4 2 6 0 :   e   =   " F T P   s e r v e r   i s   n o t   s p e c i f i e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 1 :   e   =   " F T P   l o g i n   i s   n o t   s p e c i f i e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 2 :   e   =   " F T P   c o n n e c t i o n   f a i l e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 3 :   e   =   " F T P   c o n n e c t i o n   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 4 :   e   =   " F T P   p a t h   n o t   f o u n d   o n   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   4 2 6 5 :   e   =   " F i l e   n o t   f o u n d   i n   t h e   M Q L 4 \ \ F i l e s   d i r e c t o r y   t o   s e n d   o n   F T P   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   4 2 6 6 :   e   =   " C o m m o n   e r r o r   d u r i n g   F T P   d a t a   t r a n s m i s s i o n " ;   b r e a k ; 
 	 	 
 	 	 / / - -   f i l e s y s t e m   e r r o r s 
 	 	 c a s e   5 0 0 1 :   e   =   " T o o   m a n y   o p e n e d   f i l e s " ;   b r e a k ; 
 	 	 c a s e   5 0 0 2 :   e   =   " W r o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 3 :   e   =   " T o o   l o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 4 :   e   =   " C a n n o t   o p e n   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 5 :   e   =   " T e x t   f i l e   b u f f e r   a l l o c a t i o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 0 6 :   e   =   " C a n n o t   d e l e t e   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 7 :   e   =   " I n v a l i d   f i l e   h a n d l e   ( f i l e   c l o s e d   o r   w a s   n o t   o p e n e d ) " ;   b r e a k ; 
 	 	 c a s e   5 0 0 8 :   e   =   " W r o n g   f i l e   h a n d l e   ( h a n d l e   i n d e x   i s   o u t   o f   h a n d l e   t a b l e ) " ;   b r e a k ; 
 	 	 c a s e   5 0 0 9 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ W R I T E   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 0 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ R E A D   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 1 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ B I N   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 2 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ T X T   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 3 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ T X T   o r   F I L E _ C S V   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 4 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ C S V   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 5 :   e   =   " F i l e   r e a d   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 1 6 :   e   =   " F i l e   w r i t e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 1 7 :   e   =   " S t r i n g   s i z e   m u s t   b e   s p e c i f i e d   f o r   b i n a r y   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 1 8 :   e   =   " I n c o m p a t i b l e   f i l e   ( f o r   s t r i n g   a r r a y s - T X T ,   f o r   o t h e r s - B I N ) " ;   b r e a k ; 
 	 	 c a s e   5 0 1 9 :   e   =   " F i l e   i s   d i r e c t o r y ,   n o t   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 2 0 :   e   =   " F i l e   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 1 :   e   =   " F i l e   c a n n o t   b e   r e w r i t t e n " ;   b r e a k ; 
 	 	 c a s e   5 0 2 2 :   e   =   " W r o n g   d i r e c t o r y   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 2 3 :   e   =   " D i r e c t o r y   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 4 :   e   =   " S p e c i f i e d   f i l e   i s   n o t   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 2 5 :   e   =   " C a n n o t   d e l e t e   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 2 6 :   e   =   " C a n n o t   c l e a n   d i r e c t o r y " ;   b r e a k ; 
 	 	 
 	 	 / / - -   o t h e r   e r r o r s 
 	 	 c a s e   5 0 2 7 :   e   =   " A r r a y   r e s i z e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 2 8 :   e   =   " S t r i n g   r e s i z e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 2 9 :   e   =   " S t r u c t u r e   c o n t a i n s   s t r i n g s   o r   d y n a m i c   a r r a y s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   h t t p   r e q u e s t 
 	 	 c a s e   5 2 0 0 :   e   =   " I n v a l i d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 1 :   e   =   " F a i l e d   t o   c o n n e c t   t o   s p e c i f i e d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 2 :   e   =   " T i m e o u t   e x c e e d e d " ;   b r e a k ; 
 	 	 c a s e   5 2 0 3 :   e   =   " H T T P   r e q u e s t   f a i l e d " ;   b r e a k ; 
 
 	 	 d e f a u l t : 	 e   =   " U n k n o w n   e r r o r " ; 
 	 } 
 
 	 e   =   S t r i n g C o n c a t e n a t e ( e ,   "   ( " ,   e r r o r _ c o d e ,   " ) " ) ; 
 	 
 	 r e t u r n   e ; 
 }  
  
 d a t e t i m e   E x p i r a t i o n T i m e ( s t r i n g   m o d e = " G T C " , i n t   d a y s = 0 ,   i n t   h o u r s = 0 ,   i n t   m i n u t e s = 0 ,   d a t e t i m e   c u s t o m = 0 ) 
 { 
 	 d a t e t i m e   n o w                 =   T i m e C u r r e n t ( ) ; 
       d a t e t i m e   e x p i r a t i o n   =   n o w ; 
 
 	           i f   ( m o d e   = =   " G T C "   | |   m o d e   = =   " " )   { e x p i r a t i o n   =   0 ; } 
 	 e l s e   i f   ( m o d e   = =   " t o d a y " )                           { e x p i r a t i o n   =   ( d a t e t i m e ) ( M a t h F l o o r ( ( n o w   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) ; } 
 	 e l s e   i f   ( m o d e   = =   " s p e c i f i e d " ) 
 	 { 
 	 	 e x p i r a t i o n   =   0 ; 
 
 	 	 i f   ( ( d a y s   +   h o u r s   +   m i n u t e s )   >   0 ) 
 	 	 { 
 	 	 	 e x p i r a t i o n   =   n o w   +   ( 8 6 4 0 0   *   d a y s )   +   ( 3 6 0 0   *   h o u r s )   +   ( 6 0   *   m i n u t e s ) ; 
 	 	 } 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( c u s t o m   < =   n o w ) 
 	 	 { 
 	 	 	 i f   ( c u s t o m   <   3 1 5 5 7 6 0 0 ) 
 	 	 	 { 
 	 	 	 	 c u s t o m   =   n o w   +   c u s t o m ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 c u s t o m   =   0 ; 
 	 	 	 } 
 	 	 } 
 
 	 	 e x p i r a t i o n   =   c u s t o m ; 
 	 } 
 
 	 r e t u r n   e x p i r a t i o n ; 
 }  
  
 c l a s s   E x p i r a t i o n W o r k e r 
 { 
 p r i v a t e : 
 	 s t r u c t   C a c h e d I t e m s 
 	 { 
 	 	 i n t   o r d e r T y p e ; 
 	 	 l o n g   t i c k e t ; 
 	 	 d a t e t i m e   e x p i r a t i o n ; 
 	 } ; 
 
 	 C a c h e d I t e m s   c a c h e d I t e m s [ ] ; 
 	 l o n g   c h a r t I D ; 
 	 s t r i n g   c h a r t O b j e c t P r e f i x ; 
 	 s t r i n g   c h a r t O b j e c t S u f f i x ; 
 
 	 t e m p l a t e < t y p e n a m e   T > 
 	 v o i d   A r r a y C l o n e ( T   & d e s t [ ] ,   T   & s r c [ ] ) 
 	 { 
 	 	 i n t   s i z e   =   A r r a y S i z e ( s r c ) ; 
 	 	 A r r a y R e s i z e ( d e s t ,   s i z e ) ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 d e s t [ i ]   =   s r c [ i ] ; 
 	 	 } 
 	 } 
 
 	 v o i d   I n i t i a l D i s c o v e r y ( ) 
 	 { 
 	 	 A r r a y R e s i z e ( c a c h e d I t e m s ,   0 ) ; 
 
 	 	 i n t   t o t a l   =   O r d e r s T o t a l ( ) ; 
 
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   < =   t o t a l ;   i n d e x + + ) 
 	 	 { 
 	 	 	 l o n g   t i c k e t   =   G e t T i c k e t B y I n d e x ( i n d e x ) ; 
 
 	 	 	 i f   ( t i c k e t   = =   0 )   c o n t i n u e ; 
 
 	 	 	 d a t e t i m e   e x p i r a t i o n   =   G e t E x p i r a t i o n F r o m O b j e c t ( t i c k e t ) ; 
 
 	 	 	 i f   ( e x p i r a t i o n   >   0 ) 
 	 	 	 { 
 	 	 	 	 i f   ( O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   { 
 	 	 	 	 	 S e t E x p i r a t i o n I n C a c h e ( O r d e r T y p e ( ) ,   t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 l o n g   G e t T i c k e t B y I n d e x ( i n t   i n d e x ) 
 	 { 
 	 	 l o n g   t i c k e t   =   0 ; 
 
 	 	 i f   ( O r d e r S e l e c t ( i n d e x ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) ) 
 	 	 { 
 	 	 	 i f   ( O r d e r T y p e ( )   < =   O P _ S E L L )   t i c k e t   =   ( l o n g ) O r d e r T i c k e t ( ) ; 
 	 	 } 
 
 	 	 r e t u r n   t i c k e t ; 
 	 } 
 
 	 d a t e t i m e   G e t E x p i r a t i o n F r o m O b j e c t ( l o n g   t i c k e t ) 
 	 { 
 	 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 	 	 
 	 	 s t r i n g   o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ; 
 
 	 	 i f   ( O b j e c t F i n d ( c h a r t I D ,   o b j e c t N a m e )   = =   c h a r t I D ) 
 	 	 { 
 	 	 	 e x p i r a t i o n   =   ( d a t e t i m e ) O b j e c t G e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E ) ; 
 	 	 } 
 
 	 	 r e t u r n   e x p i r a t i o n ; 
 	 } 
 
 	 b o o l   R e m o v e E x p i r a t i o n O b j e c t ( l o n g   t i c k e t ) 
 	 { 
 	 	 b o o l   s u c c e s s             =   f a l s e ; 
 	 	 s t r i n g   o b j e c t N a m e   =   " " ; 
 
 	 	 o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ; 
 	 	 s u c c e s s         =   O b j e c t D e l e t e ( c h a r t I D ,   o b j e c t N a m e ) ; 
 
 	 	 r e t u r n   s u c c e s s ; 
 	 } 
 
 	 v o i d   R e m o v e E x p i r a t i o n F r o m C a c h e ( l o n g   t i c k e t ) 
 	 { 
 	 	 i n t   s i z e   =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 	 	 C a c h e d I t e m s   n e w I t e m s [ ] ; 
 	 	 i n t   n e w S i z e   =   0 ; 
 	 	 b o o l   i t e m R e m o v e d   =   f a l s e ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 i t e m R e m o v e d   =   t r u e ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 n e w S i z e + + ; 
 	 	 	 	 A r r a y R e s i z e ( n e w I t e m s ,   n e w S i z e ) ; 
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . o r d e r T y p e     =   c a c h e d I t e m s [ i ] . o r d e r T y p e ; 
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . t i c k e t           =   c a c h e d I t e m s [ i ] . t i c k e t ; 
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . e x p i r a t i o n   =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( i t e m R e m o v e d )   A r r a y C l o n e ( c a c h e d I t e m s ,   n e w I t e m s ) ; 
 	 } 
 
 	 v o i d   S e t E x p i r a t i o n I n C a c h e ( i n t   o r d e r T y p e ,   l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n ) 
 	 { 
 	 	 b o o l   a l r e a d y E x i s t s   =   f a l s e ; 
 	 	 i n t   s i z e                       =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 c a c h e d I t e m s [ i ] . o r d e r T y p e     =   o r d e r T y p e ; 
 	 	 	 	 c a c h e d I t e m s [ i ] . e x p i r a t i o n   =   e x p i r a t i o n ; 
 	 	 	 	 a l r e a d y E x i s t s   =   t r u e ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( a l r e a d y E x i s t s   = =   f a l s e ) 
 	 	 { 
 	 	 	 A r r a y R e s i z e ( c a c h e d I t e m s ,   s i z e   +   1 ) ; 
 	 	 	 c a c h e d I t e m s [ s i z e ] . o r d e r T y p e     =   o r d e r T y p e ; 
 	 	 	 c a c h e d I t e m s [ s i z e ] . t i c k e t           =   t i c k e t ; 
 	 	 	 c a c h e d I t e m s [ s i z e ] . e x p i r a t i o n   =   e x p i r a t i o n ; 
 	 	 } 
 	 } 
 
 	 b o o l   S e t E x p i r a t i o n I n O b j e c t ( i n t   o r d e r T y p e ,   l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n ) 
 	 { 
 	 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) )   r e t u r n   f a l s e ; 
 
 	 	 s t r i n g   o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ; 
 	 	 d o u b l e   p r i c e             =   O r d e r O p e n P r i c e ( ) ; 
 
 	 	 i f   ( O b j e c t F i n d ( c h a r t I D ,   o b j e c t N a m e )   = =   c h a r t I D ) 
 	 	 { 
 	 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E ,   e x p i r a t i o n ) ; 
 	 	 	 O b j e c t S e t D o u b l e ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ P R I C E ,   p r i c e ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 O b j e c t C r e a t e ( c h a r t I D ,   o b j e c t N a m e ,   O B J _ A R R O W ,   0 ,   e x p i r a t i o n ,   p r i c e ) ; 
 	 	 } 
 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ A R R O W C O D E ,   7 7 ) ; 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ T O P ) ; 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ C O L O R ,   c l r R e d ) ; 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ S E L E C T A B L E ,   f a l s e ) ; 
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E F R A M E S ,   O B J _ N O _ P E R I O D S ) ; 
 	 	 O b j e c t S e t S t r i n g ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T E X T ,   T i m e T o S t r i n g ( e x p i r a t i o n ) ) ; 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 	 
 	 b o o l   T r a d e E x i s t s ( l o n g   t i c k e t ) 
 	 { 
 	 	 b o o l   e x i s t s     =   f a l s e ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   O r d e r s T o t a l ( ) ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( ! O r d e r S e l e c t ( i ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   c o n t i n u e ; 
 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   c o n t i n u e ; 
 
 	 	 	 i f   ( O r d e r T i c k e t ( )   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 e x i s t s   =   t r u e ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   e x i s t s ; 
 	 } 
 
 	 b o o l   P e n d i n g O r d e r E x i s t s ( l o n g   t i c k e t ) 
 	 { 
 	 	 b o o l   e x i s t s     =   f a l s e ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   O r d e r s T o t a l ( ) ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( ! O r d e r S e l e c t ( i ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   c o n t i n u e ; 
 	 	 	 
 	 	 	 i f   ( O r d e r T y p e ( )   < =   O P _ S E L L   | |   O r d e r T y p e ( )   >   O P _ S E L L S T O P )   c o n t i n u e ;   
 
 	 	 	 i f   ( O r d e r T i c k e t ( )   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 e x i s t s   =   t r u e ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   e x i s t s ; 
 	 } 
 
 p u b l i c : 
 	 / /   D e f a u l t   c o n s t r u c t o r 
 	 E x p i r a t i o n W o r k e r ( ) 
 	 { 
 	 	 c h a r t I D                       =   0 ; 
 	 	 c h a r t O b j e c t P r e f i x   =   " # " ; 
 	 	 c h a r t O b j e c t S u f f i x   =   "   E x p i r a t i o n   M a r k e r " ; 
 
 	 	 I n i t i a l D i s c o v e r y ( ) ; 
 	 } 
 
 	 v o i d   S e t E x p i r a t i o n ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n ) 
 	 { 
 	 	 i f   ( e x p i r a t i o n   < =   0 ) 
 	 	 { 
 	 	 	 R e m o v e E x p i r a t i o n ( t i c k e t ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i n t   o r d e r T y p e   =   O r d e r T y p e ( ) ; 
 
 	 	 	 S e t E x p i r a t i o n I n O b j e c t ( o r d e r T y p e ,   t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 	 S e t E x p i r a t i o n I n C a c h e ( o r d e r T y p e ,   t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 } 
 	 } 
 
 	 d a t e t i m e   G e t E x p i r a t i o n ( l o n g   t i c k e t ) 
 	 { 
 	 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 	 	 i n t   s i z e                         =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 e x p i r a t i o n   =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   e x p i r a t i o n ; 
 	 } 
 
 	 v o i d   R e m o v e E x p i r a t i o n ( l o n g   t i c k e t ) 
 	 { 
 	 	 R e m o v e E x p i r a t i o n O b j e c t ( t i c k e t ) ; 
 	 	 R e m o v e E x p i r a t i o n F r o m C a c h e ( t i c k e t ) ; 
 	 } 
 
 	 v o i d   R u n ( ) 
 	 { 
 	 	 i n t   c o u n t   =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 
 	 	 i f   ( c o u n t   >   0 ) 
 	 	 { 
 	 	 	 d a t e t i m e   t i m e N o w   =   T i m e C u r r e n t ( ) ; 
 
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   c o u n t ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( t i m e N o w   > =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ) 
 	 	 	 	 { 
 	 	 	 	 	 i n t   o r d e r T y p e                   =   c a c h e d I t e m s [ i ] . o r d e r T y p e ; 
 	 	 	 	 	 l o n g   t i c k e t                       =   c a c h e d I t e m s [ i ] . t i c k e t ; 
 	 	 	 	 	 b o o l   r e m o v e E x p i r a t i o n   =   f a l s e ; 
 
 	 	 	 	 	 i f   ( o r d e r T y p e   <   2   & &   T r a d e E x i s t s ( t i c k e t ) ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( t i c k e t ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 P r i n t ( " c l o s e   # " ,   t i c k e t ,   "   b y   e x p i r a t i o n " ) ; 
 	 	 	 	 	 	 	 r e m o v e E x p i r a t i o n   =   t r u e ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e   i f   ( o r d e r T y p e   > =   2   & &   P e n d i n g O r d e r E x i s t s ( t i c k e t ) ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( D e l e t e O r d e r ( t i c k e t ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 P r i n t ( " d e l e t e   # " ,   t i c k e t ,   "   b y   e x p i r a t i o n " ) ; 
 	 	 	 	 	 	 	 r e m o v e E x p i r a t i o n   =   t r u e ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e 
 	 	 	 	 	 { 
 	 	 	 	 	 	 r e m o v e E x p i r a t i o n   =   t r u e ; 
 	 	 	 	 	 } 
 
 	 	 	 	 	 i f   ( r e m o v e E x p i r a t i o n ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 R e m o v e E x p i r a t i o n ( t i c k e t ) ; 
 
 	 	 	 	 	 	 / /   R e m o v i n g   e x p i r a t i o n   c a u s e s   c h a n g e   i n   t h e   s i z e   o f   t h e   c a c h e , 
 	 	 	 	 	 	 / /   s o   r e s e t   o f   t h e   s i z e   a n d   o n e   s t e p   b a c k   o f   t h e   i n d e x   i s   n e e d e d 
 	 	 	 	 	 	 c o u n t   =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 	 	 	 	 	 	 i - - ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 } ; 
 
 E x p i r a t i o n W o r k e r   e x p i r a t i o n W o r k e r ;  
  
 b o o l   F i l t e r O r d e r B y ( 
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " , 
 	 s t r i n g   g r o u p                   =   " 0 " , 
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " , 
 	 s t r i n g   m a r k e t                 =   " " , 
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " , 
 	 s t r i n g   L i m i t s O r S t o p s   =   " b o t h " , 
 	 i n t   T r a d e s O r d e r s           =   0 , 
 	 b o o l   o n T r a d e                   =   f a l s e 
 )   { 
 	 / /   T r a d e s O r d e r s   =   0   -   t r a d e s   o n l y 
 	 / /   T r a d e s O r d e r s   =   1   -   o r d e r s   o n l y 
 	 / /   T r a d e s O r d e r s   =   2   -   t r a d e s   a n d   o r d e r s   -   I N C O M P L E T E ,   D O   N O T   U S E ! 
 
 	 / / - -   d b 
 	 s t a t i c   s t r i n g   m a r k e t s [ ] ; 
 	 s t a t i c   s t r i n g   m a r k e t 0       =   " - " ; 
 	 s t a t i c   i n t   m a r k e t s _ s i z e   =   0 ; 
 	 
 	 s t a t i c   s t r i n g   g r o u p s [ ] ; 
 	 s t a t i c   s t r i n g   g r o u p 0       =   " - " ; 
 	 s t a t i c   i n t   g r o u p s _ s i z e   =   0 ; 
 	 
 	 / / - -   l o c a l   v a r i a b l e s 
 	 b o o l   t y p e _ p a s s       =   f a l s e ; 
 	 b o o l   m a r k e t _ p a s s   =   f a l s e ; 
 	 b o o l   g r o u p _ p a s s     =   f a l s e ; 
 	 
 	 i n t   i ,   t y p e ,   m a g i c _ n u m b e r ; 
 	 s t r i n g   s y m b o l ; 
 
 	 / /   T r a d e s 
 	 i f   ( o n T r a d e   = =   f a l s e ) 
 	 { 
 	 	 t y p e                   =   O r d e r T y p e ( ) ; 
 	 	 m a g i c _ n u m b e r   =   O r d e r M a g i c N u m b e r ( ) ; 
 	 	 s y m b o l               =   O r d e r S y m b o l ( ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 t y p e                   =   e _ a t t r T y p e ( ) ; 
 	 	 m a g i c _ n u m b e r   =   e _ a t t r M a g i c N u m b e r ( ) ; 
 	 	 s y m b o l               =   e _ a t t r S y m b o l ( ) ; 
 	 } 
 
 	 i f   ( T r a d e s O r d e r s   = =   0 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "     & &   ( t y p e   = =   O P _ B U Y   | |   t y p e   = =   O P _ S E L L ) ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " b u y s "     & &   t y p e   = =   O P _ B U Y ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   t y p e   = =   O P _ S E L L ) 
 	 	 	 
 	 	 	 ) 
 	 	 { 
 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 } 
 	 } 
 	 / /   P e n d i n g   o r d e r s 
 	 e l s e   i f   ( T r a d e s O r d e r s   = =   1 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "   & &   ( t y p e   = =   O P _ B U Y L I M I T   | |   t y p e   = =   O P _ B U Y S T O P   | |   t y p e   = =   O P _ S E L L L I M I T   | |   t y p e   = =   O P _ S E L L S T O P ) ) 
 	 	 	 | | 	 ( B u y s O r S e l l s   = =   " b u y s "   & &   ( t y p e   = =   O P _ B U Y L I M I T   | |   t y p e   = =   O P _ B U Y S T O P ) ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   ( t y p e   = =   O P _ S E L L L I M I T   | |   t y p e   = =   O P _ S E L L S T O P ) ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	 	 ( L i m i t s O r S t o p s   = =   " b o t h "   & &   ( t y p e   = =   O P _ B U Y S T O P   | |   t y p e   = =   O P _ S E L L S T O P   | |   t y p e   = =   O P _ B U Y L I M I T   | |   t y p e   = =   O P _ S E L L L I M I T ) ) 
 	 	 	 	 | | 	 ( L i m i t s O r S t o p s   = =   " s t o p s "   & &   ( t y p e   = =   O P _ B U Y S T O P   | |   t y p e   = =   O P _ S E L L S T O P ) ) 
 	 	 	 	 | |   ( L i m i t s O r S t o p s   = =   " l i m i t s "   & &   ( t y p e   = =   O P _ B U Y L I M I T   | |   t y p e   = =   O P _ S E L L L I M I T ) ) 	 	 	 	 	 
 	 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 / / - -   T r a d e s   a n d   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h " ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " b u y s "     & &   ( t y p e   = =   O P _ B U Y   | |   t y p e   = =   O P _ B U Y L I M I T   | |   t y p e   = =   O P _ B U Y S T O P ) ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   ( t y p e   = =   O P _ S E L L   | |   t y p e   = =   O P _ S E L L L I M I T   | |   t y p e   = =   O P _ S E L L S T O P ) ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 } 
 	 } 
 
 	 i f   ( t y p e _ p a s s   = =   f a l s e ) 
 	 { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 / / - -   c h e c k   g r o u p 
 	 i f   ( g r o u p _ m o d e   = =   " g r o u p " ) 
 	 { 
 	 	 i f   ( g r o u p   = =   " " ) 
 	 	 { 
 	 	 	 i f   ( m a g i c _ n u m b e r   = =   M a g i c S t a r t ) 
       	 	 { 
       	 	 	 g r o u p _ p a s s   =   t r u e ; 
       	 	 } 
 	       } 
 	       e l s e 
 	       { 
 	 	 	 i f   ( g r o u p 0   ! =   g r o u p ) 
 	 	 	 { 
 	 	 	 	 g r o u p 0   =   g r o u p ; 
 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   g r o u p , g r o u p s ) ; 
 	 	 	 	 g r o u p s _ s i z e   =   A r r a y S i z e ( g r o u p s ) ; 
 
 	 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + ) 
 	 	 	 	 { 
 	 	 	 	 	 g r o u p s [ i ]   =   S t r i n g T r i m R i g h t ( g r o u p s [ i ] ) ; 
 	 	 	 	 	 g r o u p s [ i ]   =   S t r i n g T r i m L e f t ( g r o u p s [ i ] ) ; 
 
 	 	 	 	 	 i f   ( g r o u p s [ i ]   = =   " " )   { g r o u p s [ i ]   =   " 0 " ; } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 
 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( m a g i c _ n u m b e r   = =   ( M a g i c S t a r t + ( i n t ) g r o u p s [ i ] ) ) 
 	 	 	 	 { 
 	 	 	 	 	 g r o u p _ p a s s   =   t r u e ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 	 e l s e   i f   ( g r o u p _ m o d e   = =   " a l l "   | |   ( g r o u p _ m o d e   = =   " m a n u a l "   & &   m a g i c _ n u m b e r   = =   0 ) ) 
 	 { 
 	 	 g r o u p _ p a s s   =   t r u e ;     
 	 } 
 
 	 i f   ( g r o u p _ p a s s   = =   f a l s e ) 
 	 { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 / /   c h e c k   m a r k e t 
 	 i f   ( m a r k e t _ m o d e   = =   " a l l " ) 
 	 { 
 	 	 m a r k e t _ p a s s   =   t r u e ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( s y m b o l   = =   m a r k e t ) 
 	       { 
 	             m a r k e t _ p a s s   =   t r u e ; 
 	       } 
             e l s e 
             { 
 	 	 	 i f   ( m a r k e t 0   ! =   m a r k e t ) 
 	 	 	 { 
 	 	 	 	 m a r k e t 0   =   m a r k e t ; 
 
 	 	 	 	 i f   ( m a r k e t   = =   " " ) 
 	 	 	 	 { 
 	 	 	 	 	 m a r k e t s _ s i z e   =   1 ; 
 	 	 	 	 	 A r r a y R e s i z e ( m a r k e t s ,   1 ) ; 
 	 	 	 	 	 m a r k e t s [ 0 ]   =   S y m b o l ( ) ; 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   m a r k e t ,   m a r k e t s ) ; 
 	 	 	 	 	 m a r k e t s _ s i z e   =   A r r a y S i z e ( m a r k e t s ) ; 
 
 	 	 	 	 	 f o r ( i   =   0 ;   i   <   m a r k e t s _ s i z e ;   i + + ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 m a r k e t s [ i ]   =   S t r i n g T r i m R i g h t ( m a r k e t s [ i ] ) ; 
 	 	 	 	 	 	 m a r k e t s [ i ]   =   S t r i n g T r i m L e f t ( m a r k e t s [ i ] ) ; 
 
 	 	 	 	 	 	 i f   ( m a r k e t s [ i ]   = =   " " )   { m a r k e t s [ i ]   =   S y m b o l ( ) ; } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 f o r ( i   =   0 ;   i   <   m a r k e t s _ s i z e ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( s y m b o l   = =   m a r k e t s [ i ] ) 
 	 	 	 	 { 
 	 	 	 	 	 m a r k e t _ p a s s   =   t r u e ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 i f   ( m a r k e t _ p a s s   = =   f a l s e ) 
 	 { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 r e t u r n   t r u e ; 
 }  
  
 / * * 
 *   T h i s   o v e r l o a d   w o r k s   f o r   n u m e r i c   v a l u e s   a n d   f o r   b o o l e a n   v a l u e s 
 * / 
 t e m p l a t e < t y p e n a m e   T > 
 s t r i n g   F o r m a t V a l u e F o r P r i n t i n g ( 
 	 T   v a l u e , 
 	 i n t   d i g i t s , 
 	 i n t   t i m e F o r m a t 
 )   { 
 	 s t r i n g   o u t p u t V a l u e   =   " " ; 
 	 s t r i n g   t y p e N a m e         =   t y p e n a m e ( v a l u e ) ; 
 
 	 i f   ( t y p e N a m e   = =   " d o u b l e "   | |   t y p e N a m e   = =   " f l o a t " ) 
 	 { 
 	 	 i f   ( d i g i t s   > =   - 1 6   & &   d i g i t s   < =   8 ) 
 	 	 { 
 	 	 	 i f   ( v a l u e   >   - 1 . 0   & &   v a l u e   <   1 . 0 ) 
 	 	 	 { 
 	 	 	 	 / * * 
 	 	 	 	 *   F i n d   h o w   m a n y   z e r o e s   a r e   a f t e r   t h e   p o i n t ,   b u t   b e f o r e   t h e   f i r s t   n o n - z e r o   d i g i t . 
 	 	 	 	 *   F o r   e x a m p l e   0 . 0 0 0 1 9 5   h a s   3   z e r o e s 
 	 	 	 	 *   T h e   f u n c t i o n   w o u l d   r e t u r n   n e g a t i v e   v a l u e   f o r   v a l u e s   b i g g e r   t h a n   0 
 	 	 	 	 * 
 	 	 	 	 *   @ s e e   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 1 0 0 1 9 0 1 / h o w - c a n - i - c o u n t - t h e - n u m b e r - o f - z e r o - d e c i m a l s - i n - j a v a s c r i p t / 3 1 0 0 2 1 4 8 # 3 1 0 0 2 1 4 8 
 	 	 	 	 * / 
 	 	 	 	 i n t   z e r o e s A f t e r P o i n t   =   ( i n t ) - M a t h F l o o r ( M a t h L o g 1 0 ( M a t h A b s ( v a l u e ) )   +   1 ) ; 
 
 	 	 	 	 d i g i t s   =   z e r o e s A f t e r P o i n t   +   d i g i t s ; 
 	 	 	 } 
 	 	 	 
 	 	 	 T   n o r m a l i z e d V a l u e     =   N o r m a l i z e D o u b l e ( v a l u e ,   d i g i t s ) ; 
 	 	 	 o u t p u t V a l u e   =   D o u b l e T o S t r i n g ( n o r m a l i z e d V a l u e ,   d i g i t s ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 o u t p u t V a l u e   =   ( s t r i n g ) N o r m a l i z e D o u b l e ( v a l u e ,   8 ) ; 
 	 	 } 
 	 } 
 	 e l s e   { 
 	 	 o u t p u t V a l u e   =   I n t e g e r T o S t r i n g ( ( l o n g ) v a l u e ) ; 
 	 } 
 
 	 r e t u r n   o u t p u t V a l u e ; 
 } 
 
 / * * 
 *   B o o l   o v e r l o a d 
 * / 
 s t r i n g   F o r m a t V a l u e F o r P r i n t i n g ( 
 	 b o o l   v a l u e , 
 	 i n t   d i g i t s , 
 	 i n t   t i m e F o r m a t 
 )   { 
 	 r e t u r n   ( v a l u e )   ?   " t r u e "   :   " f a l s e " ; 
 } 
 
 / * * 
 *   D a t e t i m e   o v e r l o a d 
 * / 
 s t r i n g   F o r m a t V a l u e F o r P r i n t i n g ( 
 	 d a t e t i m e   v a l u e , 
 	 i n t   d i g i t s , 
 	 i n t   t i m e F o r m a t 
 )   { 
 	 i f   ( 
 	 	 t i m e F o r m a t   = =   ( i n t ) E M P T Y _ V A L U E 
 	 	 | |   t i m e F o r m a t   = =   E M P T Y _ V A L U E 
 	 )   t i m e F o r m a t   =   T I M E _ D A T E | T I M E _ M I N U T E S ; 
 	 r e t u r n   T i m e T o S t r i n g ( v a l u e ,   t i m e F o r m a t ) ; 
 } 
 
 / * * 
 *   S t r i n g   o v e r l o a d 
 * / 
 s t r i n g   F o r m a t V a l u e F o r P r i n t i n g ( 
 	 s t r i n g   v a l u e , 
 	 i n t   d i g i t s , 
 	 i n t   t i m e F o r m a t 
 )   { 
 	 r e t u r n   v a l u e ; 
 }  
  
 v o i d   G e t B e t T r a d e s I n f o ( 
 	 d o u b l e   & o u t p u t [ ] , 
 	 s t r i n g   g r o u p , 
 	 s t r i n g   s y m b o l , 
 	 i n t   p o o l ,   / /   0 :   t r y   r u n n i n g   t r a d e s   f i r s t   a n d   t h e n   h i s t o r y   t r a d e s ,   1 :   t r y   r u n n i n g   o n l y ,   2 :   t r y   h i s t o r y   o n l y 
 	 b o o l   f i n d C o n s e c u t i v e   =   f a l s e 
 )   { 
 	 i f   ( A r r a y S i z e ( o u t p u t )   <   4 ) 
 	 { 
 	 	 A r r a y R e s i z e ( o u t p u t ,   4 ) ; 
 	 	 A r r a y I n i t i a l i z e ( o u t p u t ,   0 . 0 ) ; 
 	 } 
 
 	 d o u b l e   l o t s                   =   o u t p u t [ 0 ] ;   / /   w i l l   b e   t h e   l o t   s i z e   o f   t h e   f i r s t   l o a d e d   t r a d e 
 	 d o u b l e   p r o f i t O r L o s s   =   o u t p u t [ 1 ] ;   / /   0   i s   i n i t i a l   v a l u e ,   1   i s   p r o f i t ,   - 1   i s   l o s s 
 	 d o u b l e   c o n s e c u t i v e     =   o u t p u t [ 2 ] ;   / /   t h e   n u m b e r   o f   c o n s e c u t i v e   p r o f i t a b l e   o r   l o s a b l e   t r a d e s 
 	 d o u b l e   p r o f i t               =   o u t p u t [ 3 ] ;   / /   w i l l   b e   t h e   p r o f i t   o f   t h e   f i r s t   l o a d e d   t r a d e 
 	 b o o l   h i s t o r y T r a d e s     =   ( p o o l   = =   2 )   ?   t r u e   :   f a l s e ; 
 	 
 	 i n t   t o t a l   =   ( h i s t o r y T r a d e s )   ?   H i s t o r y T r a d e s T o t a l ( )   :   T r a d e s T o t a l ( ) ; 
 
 	 f o r   ( i n t   p o s   =   t o t a l   -   1 ;   p o s   > =   0 ;   p o s - - ) 
 	 { 
 	 	 i f   ( 
 	 	 	       ( ! h i s t o r y T r a d e s   & &   T r a d e S e l e c t B y I n d e x ( p o s ,   " g r o u p " ,   g r o u p ,   " s y m b o l " ,   s y m b o l ) ) 
 	 	 	 | |   ( h i s t o r y T r a d e s   & &   H i s t o r y T r a d e S e l e c t B y I n d e x ( p o s ,   " g r o u p " ,   g r o u p ,   " s y m b o l " ,   s y m b o l ) ) 
 	 	 )   { 
 	 	 	 i f   ( 
 	 	 	 	 ( ( p o o l   = =   0   | |   p o o l   = =   1 )   & &   T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   / /   s k i p   f o r   b r a n d   n e w   t r a d e s 
 	 	 	 	 | | 
 	 	 	 	 ( 
 	 	 	 	 	 / /   e x c l u d e   e x p i r e d   p e n d i n g   o r d e r s 
 	 	 	 	 	 ! h i s t o r y T r a d e s 
 	 	 	 	 	 & &   O r d e r E x p i r a t i o n ( )   >   0 
 	 	 	 	 	 & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) 
 	 	 	 	 ) 
 	 	 	 )   { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 i f   ( l o t s   = =   0 . 0 ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   O r d e r L o t s ( ) ; 
 	 	 	 } 
 
 	 	 	 p r o f i t   =   O r d e r C l o s e P r i c e ( )   -   O r d e r O p e n P r i c e ( ) ; 
 	 	 	 p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
 	 	 	 
 	 	 	 i f   ( p r o f i t   = =   0 . 0 ) 
 	 	 	 { 
 	 	 	 	 / /   C o n s i d e r   a   t r a d e   w i t h   z e r o   p r o f i t   a s   n o n   e x i s t e n t 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 i f   ( I s O r d e r T y p e S e l l ( ) ) 
 	 	 	 { 
 	 	 	 	 p r o f i t   =   - 1   *   p r o f i t ; 
 	 	 	 } 
 
 	 	 	 i f   ( p r o f i t O r L o s s   = =   0 ) 
 	 	 	 { 
 	 	 	 	 / /   W e   e n t e r   h e r e   o n l y   f o r   t h e   f i r s t   t r a d e 
 	 	 	 	 p r o f i t O r L o s s   =   ( p r o f i t   <   0 . 0 )   ?   - 1   :   1 ; 
 
 	 	 	 	 c o n s e c u t i v e + + ; 
 
 	 	 	 	 i f   ( f i n d C o n s e c u t i v e   = =   f a l s e )   b r e a k ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 / /   F o r   t h e   t r a d e s   a f t e r   t h e   f i r s t   o n e ,   i f   i t s   p r o f i t   i s   t h e   o p p o s i t e   o f   p r o f i t O r L o s s ,   w e   n e e d   t o   b r e a k 
 	 	 	 	 i f   ( 
 	 	 	 	 	       ( p r o f i t O r L o s s   >   0 . 0   & &   p r o f i t   <   0 . 0 ) 
 	 	 	 	 	 | |   ( p r o f i t O r L o s s   <   0 . 0   & &   p r o f i t   >   0 . 0 ) 
 	 	 	 	 )   { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 c o n s e c u t i v e + + ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 o u t p u t [ 0 ]   =   l o t s ; 
 	 o u t p u t [ 1 ]   =   p r o f i t O r L o s s ; 
 	 o u t p u t [ 2 ]   =   c o n s e c u t i v e ; 
 	 o u t p u t [ 3 ]   =   p r o f i t ; 
 	 
 	 i f   ( p o o l   = =   0   & &   ( f i n d C o n s e c u t i v e   | |   p r o f i t O r L o s s   = =   0 ) ) 
 	 { 
 	 	 / /   r u n n i n g   t r a d e s   t r i e d ,   c o n t i n u e   w i t h   t h e   h i s t o r y   t r a d e s 
 	 	 p o o l   =   2 ; 
 	 	 G e t B e t T r a d e s I n f o ( o u t p u t ,   g r o u p ,   s y m b o l ,   p o o l ,   f i n d C o n s e c u t i v e ) ; 
 	 } 
 }  
  
 d o u b l e   H i g h e s t F r o m T o ( s t r i n g   s y m b o l ,   E N U M _ T I M E F R A M E S   t i m e f r a m e ,   d a t e t i m e   t i m e 1 ,   d a t e t i m e   t i m e 2 ,   i n t   w h a t _ t o _ g e t = 0 ) 
 { 
 	 s t a t i c   d a t e t i m e   H i g h e s t T i m e   =   0 ; 
 	 s t a t i c   d o u b l e   H i g h e s t I D           =   0 . 0 ; 
 
 	 d o u b l e   r e t v a l           =   0 . 0 ; 
 	 d o u b l e   H i g h e s t V a l   =   0 ; 
 
 	 i f   ( H i g h e s t T i m e   = =   0 )   { H i g h e s t T i m e   =   T i m e C u r r e n t ( ) ; } 
 
 	 / / - -   T i m e   m o d e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 i f   ( t i m e 1   >   1 0 0 0 0 0 0 ) 
 	 { 
 	 	 d o u b l e   C a n d l e H i g h   =   0 . 0 ; 
 	 	 i n t   x 1                         =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 1 ,   f a l s e ) ; 
 	 	 i n t   x 2                         =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 2 ,   f a l s e ) ; 
 
 	 	 i f   ( x 1   <   x 2 ) 
 	 	 { 
 	 	 	 x 1   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   ( t i m e 1   -   8 6 4 0 0 ) ,   f a l s e ) ; 
 	 	 } 
 
 	 	 i f   ( x 1   <   0   | |   x 2   <   0 ) 
 	 	 { 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 
 	 	 f o r   ( i n t   i   =   x 2 ;   i   < =   x 1 ;   i + + ) 
 	 	 { 
 	 	 	 C a n d l e H i g h   =   i H i g h ( s y m b o l ,   t i m e f r a m e ,   i ) ; 
 
 	 	 	 i f   ( C a n d l e H i g h   >   H i g h e s t V a l ) 
 	 	 	 { 
 	 	 	 	 H i g h e s t V a l     =   C a n d l e H i g h ; 
 	 	 	 	 H i g h e s t T i m e   =   i T i m e ( s y m b o l ,   t i m e f r a m e ,   i ) ; 
 	 	 	 	 H i g h e s t I D       =   i ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 / / - -   B a r s   m o d e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 e l s e 
 	 { 
 	 	 i n t   s h i f t   =   0 ; 
 
 	 	 i f   ( t i m e 1   = =   t i m e 2 ) 
 	 	 { 
 	 	 	 s h i f t   =   ( i n t ) t i m e 1 ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i n t   t o t a l b a r s   =   i B a r s ( s y m b o l ,   t i m e f r a m e )   -   1 ; 
 
 	 	 	 i f   ( t i m e 2   >   t o t a l b a r s   | |   t i m e 2   = =   0 ) 
 	 	 	 { 
 	 	 	 	 t i m e 2   =   t o t a l b a r s ; 
 	 	 	 } 
 
 	 	 	 s h i f t   =   i H i g h e s t ( s y m b o l ,   t i m e f r a m e ,   M O D E _ H I G H ,   ( i n t ) ( t i m e 2 - t i m e 1 ) + 1 ,   ( i n t ) t i m e 1 ) ; 
 	 	 } 
 
 	 	 H i g h e s t V a l     =   i H i g h ( s y m b o l ,   t i m e f r a m e ,   s h i f t ) ; 
 	 	 H i g h e s t T i m e   =   i T i m e ( s y m b o l ,   t i m e f r a m e ,   s h i f t ) ; 
 	 	 H i g h e s t I D       =   s h i f t ; 
 	 } 
 
 	 r e t v a l   =   H i g h e s t V a l ; 
 
 	 i f   ( w h a t _ t o _ g e t   = =   2 ) 
 	 { 
 	 	 r e t v a l   =   ( d o u b l e ) H i g h e s t T i m e ; 
 	 } 
 	 e l s e   i f   ( w h a t _ t o _ g e t   = =   0 ) 
 	 { 
 	 	 r e t v a l   =   H i g h e s t I D ; 
 	 } 
 
 	 r e t v a l   =   N o r m a l i z e D o u b l e ( r e t v a l ,   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ) ; 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 b o o l   H i s t o r y T r a d e S e l e c t B y I n d e x ( 
 	 i n t   i n d e x , 
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " , 
 	 s t r i n g   g r o u p                   =   " 0 " , 
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " , 
 	 s t r i n g   m a r k e t                 =   " " , 
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " 
 )   { 
 	 i f   ( O r d e r S e l e c t ( ( i n t ) i n d e x ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y )   & &   O r d e r T y p e ( )   <   2 ) 
 	 { 
 	 	 i f   ( F i l t e r O r d e r B y ( 
 	 	 	 g r o u p _ m o d e , 
 	 	 	 g r o u p , 
 	 	 	 m a r k e t _ m o d e , 
 	 	 	 m a r k e t , 
 	 	 	 B u y s O r S e l l s ) 
 	 	 )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 i n t   H i s t o r y T r a d e s T o t a l ( d a t e t i m e   f r o m _ d a t e = 0 ,   d a t e t i m e   t o _ d a t e = 0 ) 
 { 
 	 / /   b o t h   i n p u t   p a r a m e t e r s   a r e   d u m m y 
 	 / /   t h e y   e x i s t   o n l y   t o   m a k e   t h e   f u n c t i o n   c o m p a t i b l e   w i t h   M Q L 5 - l i k e   c o d e 
 
 	 r e t u r n   O r d e r s H i s t o r y T o t a l ( ) ; 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   I n A r r a y ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 
 	 i f   ( s i z e   >   0 ) 
 	 { 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( a r r a y [ i ]   = =   v a l u e ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   I s O r d e r T y p e B u y ( ) 
 { 
 	 i n t   t y p e   =   O r d e r T y p e ( ) ; 
 
 	 r e t u r n   ( t y p e   = =   O P _ B U Y   | |   t y p e   = =   O P _ B U Y S T O P   | |   t y p e   = =   O P _ B U Y L I M I T ) ; 
 }  
  
 b o o l   I s O r d e r T y p e S e l l ( ) 
 { 
 	 i n t   t y p e   =   O r d e r T y p e ( ) ; 
 
 	 r e t u r n   ( t y p e   = =   O P _ S E L L   | |   t y p e   = =   O P _ S E L L S T O P   | |   t y p e   = =   O P _ S E L L L I M I T ) ; 
 }  
  
 s t r i n g   L o a d e d O b j e c t N a m e ( s t r i n g   n a m e = " " )   { s t a t i c   s t r i n g   m e m o r y = " " ;   i f   ( n a m e ! = " " )   { m e m o r y = n a m e ; }   r e t u r n ( m e m o r y ) ; }  
  
 b o o l   L o o p e d R e s u m e ( ) 
 { 
 	 u l o n g   t i c k e t     =   a t t r T i c k e t I n L o o p ( ) ; 
 	 i n t   t y p e             =   a t t r T y p e I n L o o p ( ) ; 
 
 	 i f   ( t i c k e t   >   0   & &   t i c k e t   ! =   O r d e r T i c k e t ( ) )   { 
 	 	           i f   ( t y p e   = =   1 )   r e t u r n   O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) ; 
 	 	 e l s e   i f   ( t y p e   = =   2 )   r e t u r n   O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) ; 
 	 	 e l s e   i f   ( t y p e   = =   3 )   r e t u r n   O r d e r S e l e c t ( ( i n t ) t i c k e t ,   M O D E _ H I S T O R Y ) ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 d o u b l e   L o w e s t F r o m T o ( s t r i n g   s y m b o l ,   E N U M _ T I M E F R A M E S   t i m e f r a m e ,   d a t e t i m e   t i m e 1 ,   d a t e t i m e   t i m e 2 ,   i n t   w h a t _ t o _ g e t = 0 ) 
 { 
 	 s t a t i c   d a t e t i m e   L o w e s t T i m e   =   0 ; 
 	 s t a t i c   d o u b l e   L o w e s t I D           =   0 . 0 ; 
 
 	 d o u b l e   r e t v a l         =   0 . 0 ; 
 	 d o u b l e   L o w e s t V a l   =   0 . 0 ; 
 
 	 i f   ( L o w e s t T i m e   = =   0 )   { L o w e s t T i m e   =   T i m e C u r r e n t ( ) ; } 
 
 	 / / - -   T i m e   m o d e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 i f   ( t i m e 1   >   1 0 0 0 0 0 0 ) 
 	 { 
 	 	 d o u b l e   C a n d l e L o w   =   0 . 0 ; 
 	 	 i n t   x 1                       =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 1 ,   f a l s e ) ; 
 	 	 i n t   x 2                       =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 2 ,   f a l s e ) ; 
 
 	 	 i f   ( x 1   <   x 2 ) 
 	 	 { 
 	 	 	 x 1   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   ( t i m e 1   -   8 6 4 0 0 ) ,   f a l s e ) ; 
 	 	 } 
 
 	 	 i f   ( x 1   <   0   | |   x 2   <   0 ) 
 	 	 { 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 
 	 	 f o r   ( i n t   i   =   x 2 ;   i   < =   x 1 ;   i + + ) 
 	 	 { 
 	 	 	 C a n d l e L o w   =   i L o w ( s y m b o l ,   t i m e f r a m e ,   i ) ; 
 
 	 	 	 i f   ( C a n d l e L o w   <   L o w e s t V a l   | |   L o w e s t V a l   = =   0 ) 
 	 	 	 { 
 	 	 	 	 L o w e s t V a l     =   C a n d l e L o w ; 
 	 	 	 	 L o w e s t T i m e   =   i T i m e ( s y m b o l ,   t i m e f r a m e ,   i ) ; 
 	 	 	 	 L o w e s t I D       =   i ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 / / - -   B a r s   m o d e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 e l s e 
 	 { 
 	 	 i n t   s h i f t   =   0 ; 
 
 	 	 i f   ( t i m e 1   = =   t i m e 2 ) 
 	 	 { 
 	 	 	 s h i f t   =   ( i n t ) t i m e 1 ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i n t   t o t a l b a r s   =   i B a r s ( s y m b o l ,   t i m e f r a m e )   -   1 ; 
 
 	 	 	 i f   ( t i m e 2   >   t o t a l b a r s   | |   t i m e 2   = =   0 ) 
 	 	 	 { 
 	 	 	 	 t i m e 2   =   t o t a l b a r s ; 
 	 	 	 } 
 
 	 	 	 s h i f t   =   i L o w e s t ( s y m b o l ,   t i m e f r a m e ,   M O D E _ L O W ,   ( i n t ) ( ( t i m e 2 - t i m e 1 ) + 1 ) ,   ( i n t ) t i m e 1 ) ; 
 	 	 } 
 
 	 	 L o w e s t V a l     =   i L o w ( s y m b o l ,   t i m e f r a m e ,   s h i f t ) ; 
 	 	 L o w e s t T i m e   =   i T i m e ( s y m b o l ,   t i m e f r a m e ,   s h i f t ) ; 
 	 	 L o w e s t I D       =   s h i f t ; 
 	 } 
 
 	 r e t v a l   =   L o w e s t V a l ; 
 
 	 i f   ( w h a t _ t o _ g e t   = =   2 ) 
 	 { 
 	 	 r e t v a l   =   ( d o u b l e ) L o w e s t T i m e ; 
 	 } 
 	 e l s e   i f   ( w h a t _ t o _ g e t   = =   0 ) 
 	 { 
 	 	 r e t v a l   =   L o w e s t I D ; 
 	 } 
 	 
 	 r e t v a l   =   N o r m a l i z e D o u b l e ( r e t v a l ,   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ) ; 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 b o o l   M o d i f y O r d e r ( 
 	 l o n g   t i c k e t , 
 	 d o u b l e   o p , 
 	 d o u b l e   s l l   =   0 , 
 	 d o u b l e   t p l   =   0 , 
 	 d o u b l e   s l p   =   0 , 
 	 d o u b l e   t p p   =   0 , 
 	 d a t e t i m e   e x p   =   0 , 
 	 c o l o r   c l r   =   c l r N O N E , 
 	 b o o l   o n t r a d e _ e v e n t   =   t r u e 
 )   { 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( 
 	 	       O r d e r T y p e ( )   = =   O P _ S E L L 
 	 	 | |   O r d e r T y p e ( )   = =   O P _ S E L L S T O P 
 	 	 | |   O r d e r T y p e ( )   = =   O P _ S E L L L I M I T 
 	 ) 
 	 { b s   =   - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l 
 
 	 w h i l e   ( t r u e ) 
 	 { 
 	 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ; 
 
 	 	 W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
 
 	 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) ) 
 	 	 { 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 s t r i n g   s y m b o l             =   O r d e r S y m b o l ( ) ; 
 	 	 i n t   t y p e                       =   O r d e r T y p e ( ) ; 
 	 	 d o u b l e   a s k                   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 d o u b l e   b i d                   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 i n t   d i g i t s                   =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 	 	 d o u b l e   p o i n t               =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 	 d o u b l e   s t o p l e v e l       =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ; 
 	 	 d o u b l e   f r e e z e l e v e l   =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ; 
 
 	 	 i f   ( O r d e r T y p e ( )   <   2 )   { o p   =   O r d e r O p e n P r i c e ( ) ; }   e l s e   { o p   =   N o r m a l i z e D o u b l e ( o p , d i g i t s ) ; } 
 
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l ,   d i g i t s ) ; 
 	 	 t p l   =   N o r m a l i z e D o u b l e ( t p l ,   d i g i t s ) ; 
 
 	 	 i f   ( o p   <   0   | |   o p   > =   E M P T Y _ V A L U E   | |   s l l   <   0   | |   s l p   <   0   | |   t p l   <   0   | |   t p p   <   0 ) 
 	 	 { 
 	 	 	 b r e a k ; 
 	 	 } 
 	 	 
 	 	 / / - -   O P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 / /   h t t p s : / / b o o k . m q l 4 . c o m / a p p e n d i x / l i m i t s 
 	 	 i f   ( t y p e   = =   O P _ B U Y L I M I T ) 
 	 	 { 
 	 	 	 i f   ( a s k   -   o p   <   s t o p l e v e l )   { o p   =   a s k   -   s t o p l e v e l ; } 
 	 	 	 i f   ( a s k   -   o p   < =   f r e e z e l e v e l )   { o p   =   a s k   -   f r e e z e l e v e l   -   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ B U Y S T O P ) 
 	 	 { 
 	 	 	 i f   ( o p   -   a s k   <   s t o p l e v e l )   { o p   =   a s k   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   a s k   < =   f r e e z e l e v e l )   { o p   =   a s k   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ S E L L L I M I T ) 
 	 	 { 
 	 	 	 i f   ( o p   -   b i d   <   s t o p l e v e l )   { o p   =   b i d   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   b i d   < =   f r e e z e l e v e l )   { o p   =   b i d   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ S E L L S T O P ) 
 	 	 { 
 	 	 	 i f   ( b i d   -   o p   <   s t o p l e v e l )   { o p   =   b i d   -   s t o p l e v e l ; } 
 	 	 	 i f   ( b i d   -   o p   <   f r e e z e l e v e l )   { o p   =   b i d   -   f r e e z e l e v e l   -   p o i n t ; } 
 	 	 } 
 
 	 	 o p   =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
 
 	 	 / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 d o u b l e   s l   =   0 ,   t p   =   0 ,   v s l   =   0 ,   v t p   =   0 ; 
 
 	 	 s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   a t t r S t o p L o s s ( ) ,   s l l ,   s l p ) ; 
 
 	 	 i f   ( s l   <   0 )   { b r e a k ; } 
 
 	 	 t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   a t t r T a k e P r o f i t ( ) ,   t p l ,   t p p ) ; 
 
 	 	 i f   ( t p   <   0 )   { b r e a k ; } 
 
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 { 
 	 	 	 / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 	 v s l   =   s l ; 
 	 	 	 v t p   =   t p ; 
 	 	 	 s l   =   0 ; 
 	 	 	 t p   =   0 ; 
 
 	 	 	 d o u b l e   a s k b i d   =   a s k ; 
 	 	 	 i f   ( b s   <   0 )   { a s k b i d   =   b i d ; } 
 
 	 	 	 i f   ( v s l   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 s l   =   v s l   -   E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( a s k b i d - v s l ) * b s ; 
 
 	 	 	 	 	 i f   ( s l   < =   0 )   { s l   =   a s k b i d ; } 
 
 	 	 	 	 	 s l   =   s l   -   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( v t p   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 t p   =   v t p   +   E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( v t p - a s k b i d ) * b s ; 
 
 	 	 	 	 	 i f   ( t p   < =   0 )   { t p   =   a s k b i d ; } 
 
 	 	 	 	 	 t p   =   t p   +   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 v s l   =   N o r m a l i z e D o u b l e ( v s l , d i g i t s ) ; 
 	 	 	 v t p   =   N o r m a l i z e D o u b l e ( v t p , d i g i t s ) ; 
 	 	 } 
 
 	 	 s l   =   N o r m a l i z e D o u b l e ( s l , d i g i t s ) ; 
 	 	 t p   =   N o r m a l i z e D o u b l e ( t p , d i g i t s ) ; 
 
 	 	 / / - -   m o d i f y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 R e s e t L a s t E r r o r ( ) ; 
 	 	 
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 { 
 	 	 	 i f   ( v s l   ! =   a t t r S t o p L o s s ( )   | |   v t p   ! =   a t t r T a k e P r o f i t ( ) ) 
 	 	 	 { 
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 b o o l   s u c c e s s   =   f a l s e ; 
 
 	 	 i f   ( 
 	 	 	       ( O r d e r T y p e ( )   >   1   & &   o p   ! =   N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) , d i g i t s ) ) 
 	 	 	 | |   s l   ! =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) , d i g i t s ) 
 	 	 	 | |   t p   ! =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) , d i g i t s ) 
 	 	 	 | |   e x p   ! =   O r d e r E x p i r a t i o n T i m e ( ) 
 	 	 )   { 
 	 	 	 s u c c e s s   =   O r d e r M o d i f y ( ( i n t ) t i c k e t ,   o p ,   s l ,   t p ,   e x p ,   c l r ) ; 
 	 	 } 
 
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " M o d i f y   e r r o r " ) ; 
 
 	 	 s w i t c h ( e r r a c t i o n ) 
 	 	 { 
 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 } 
 
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( s u c c e s s   = =   t r u e ) 
 	 	 { 
 	 	 	 i f   ( ! I s T e s t i n g ( )   & &   ! I s V i s u a l M o d e ( ) ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " O p e r a t i o n   d e t a i l s :   S p e e d   "   +   ( s t r i n g ) ( G e t T i c k C o u n t ( ) - t i m e 0 )   +   "   m s " ) ; 
 	 	 	 } 
 
 	 	 	 i f   ( o n t r a d e _ e v e n t   = =   t r u e ) 
 	 	 	 { 
 	 	 	 	 O r d e r M o d i f i e d ( t i c k e t ) ; 
 	 	 	 	 O n T r a d e ( ) ; 
 	 	 	 } 
 
 	 	 	 i f   ( O r d e r S e l e c t ( ( i n t ) t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { } 
 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 
 	 	 b r e a k ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   M o d i f y S t o p s ( i n t   t i c k e t ,   d o u b l e   s l = - 1 ,   d o u b l e   t p = - 1 ,   c o l o r   c l r = c l r N O N E ) 
 { 
       r e t u r n   M o d i f y O r d e r ( 
 	 	 t i c k e t , 
 	 	 O r d e r O p e n P r i c e ( ) , 
 	 	 s l , 
 	 	 t p , 
 	 	 0 , 
 	 	 0 , 
 	 	 O r d e r E x p i r a t i o n T i m e ( ) , 
 	 	 c l r 
 	 ) ; 
 }  
  
 i n t   O C O D r i v e r ( ) 
 { 
 	 s t a t i c   i n t   l a s t _ k n o w n _ t i c k e t   =   0 ; 
       s t a t i c   i n t   o r d e r s 1 [ ] ; 
       s t a t i c   i n t   o r d e r s 2 [ ] ; 
       i n t   i ,   s i z e ; 
       
       i n t   t o t a l   =   O r d e r s T o t a l ( ) ; 
       
       f o r   ( i n t   p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) ) 
             { 
                   i n t   t i c k e t   =   O r d e r T i c k e t ( ) ; 
                   
                   / / - -   e n d   h e r e   i f   w e   r e a c h   t h e   l a s t   k n o w n   t i c k e t 
                   i f   ( t i c k e t   = =   l a s t _ k n o w n _ t i c k e t )   { b r e a k ; } 
                   
                   / / - -   s e t   t h e   l a s t   k n o w n   t i c k e t ,   o n l y   i f   t h i s   i s   t h e   f i r s t   i t e r a t i o n 
                   i f   ( p o s   = =   t o t a l - 1 )   { 
                         l a s t _ k n o w n _ t i c k e t   =   t i c k e t ; 
                   } 
                   
                   / / - -   w e   a r e   s e a r c h i n g   f o r   p e n d i n g   o r d e r s ,   s k i p   t r a d e s 
                   i f   ( O r d e r T y p e ( )   < =   O P _ S E L L )   { c o n t i n u e ; } 
                   
                   / / - - 
                   i f   ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   0 ,   5 )   = =   " [ o c o : " ) 
                   { 
                         i n t   t i c k e t _ o c o   =   S t r T o I n t e g e r ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   5 ,   S t r i n g L e n ( O r d e r C o m m e n t ( ) ) - 1 ) ) ;   
                         
                         b o o l   f o u n d   =   f a l s e ; 
                         s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ; 
                         f o r   ( i = 0 ;   i < s i z e ;   i + + ) 
                         { 
                               i f   ( o r d e r s 2 [ i ]   = =   t i c k e t _ o c o )   { 
                                     f o u n d   =   t r u e ; 
                                     b r e a k ; 
                               } 
                         } 
                         
                         i f   ( f o u n d   = =   f a l s e )   { 
                               A r r a y R e s i z e ( o r d e r s 1 ,   s i z e + 1 ) ; 
                               A r r a y R e s i z e ( o r d e r s 2 ,   s i z e + 1 ) ; 
                               o r d e r s 1 [ s i z e ]   =   t i c k e t _ o c o ; 
                               o r d e r s 2 [ s i z e ]   =   t i c k e t ; 
                         } 
                   } 
             } 
       } 
       
       s i z e   =   A r r a y S i z e ( o r d e r s 1 ) ; 
       i n t   d b r e m o v e   =   f a l s e ; 
       f o r   ( i = s i z e - 1 ;   i > = 0 ;   i - - ) 
       { 
             i f   ( O r d e r S e l e c t ( o r d e r s 1 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O P _ S E L L ) 
             { 
                   i f   ( O r d e r S e l e c t ( o r d e r s 2 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   { 
                         i f   ( D e l e t e O r d e r ( o r d e r s 2 [ i ] , c l r W h i t e ) ) 
                         { 
                               d b r e m o v e   =   t r u e ; 
                         } 
                   } 
                   e l s e   { 
                         d b r e m o v e   =   t r u e ; 
                   } 
                   
                   i f   ( d b r e m o v e   = =   t r u e ) 
                   { 
                         A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ; 
                         A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ; 
                   } 
             } 
       } 
       
       s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ; 
       d b r e m o v e   =   f a l s e ; 
       f o r   ( i = s i z e - 1 ;   i > = 0 ;   i - - ) 
       { 
             i f   ( O r d e r S e l e c t ( o r d e r s 2 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O P _ S E L L ) 
             { 
                   i f   ( O r d e r S e l e c t ( o r d e r s 1 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   { 
                         i f   ( D e l e t e O r d e r ( o r d e r s 1 [ i ] , c l r W h i t e ) ) 
                         { 
                               d b r e m o v e   =   t r u e ; 
                         } 
                   } 
                   e l s e   { 
                         d b r e m o v e   =   t r u e ; 
                   } 
                   
                   i f   ( d b r e m o v e   = =   t r u e ) 
                   { 
                         A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ; 
                         A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ; 
                   } 
             } 
       } 
       
       r e t u r n   t r u e ; 
 }  
  
 d o u b l e   O b j e c t G e t V a l u e B y S h i f t ( l o n g   c t a r t _ i d ,   s t r i n g   n a m e ,   i n t   s h i f t ) 
 { 
 	 M q l R a t e s   r a t e s [ ] ; 
 	 C o p y R a t e s ( N U L L ,   P E R I O D _ C U R R E N T ,   s h i f t ,   1 ,   r a t e s ) ; 
 
 	 r e t u r n   O b j e c t G e t V a l u e B y T i m e ( c t a r t _ i d ,   n a m e ,   r a t e s [ 0 ] . t i m e ,   0 ) ; 
 }  
  
 b o o l   O n T i m e r S e t ( d o u b l e   s e c o n d s )  
 {  
       i f   ( F X D _ O N T I M E R _ T A K E N )  
       {  
             i f   ( s e c o n d s < = 0 )   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   0 ;  
             }  
             e l s e   i f   ( s e c o n d s   <   1 )   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   t r u e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   s e c o n d s * 1 0 0 0 ;    
             }  
             e l s e   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   s e c o n d s ;  
             }  
              
             r e t u r n   t r u e ;  
       }  
  
       i f   ( s e c o n d s < = 0 )   {  
             E v e n t K i l l T i m e r ( ) ;  
       }  
       e l s e   i f   ( s e c o n d s   <   1 )   {  
             r e t u r n   ( E v e n t S e t M i l l i s e c o n d T i m e r ( ( i n t ) ( s e c o n d s * 1 0 0 0 ) ) ) ;      
       }  
       e l s e   {  
             r e t u r n   ( E v e n t S e t T i m e r ( ( i n t ) s e c o n d s ) ) ;  
       }  
        
       r e t u r n   t r u e ;  
 }  
  
 c l a s s   O n T r a d e E v e n t D e t e c t o r 
 { 
 p r i v a t e : 
 	 / / - - -   s t r u c t u r e s 
 	 s t r u c t   E v e n t V a l u e s 
 	 { 
 	 	 / /   s p e c i a l   f i e l d s 
 	 	 s t r i n g       r e a s o n , 
 	 	                   d e t a i l ; 
 
 	 	 / /   o r d e r   r e l a t e d   f i e l d s 
 	 	 l o n g           m a g i c , 
 	 	                   t i c k e t ; 
 	 	 i n t             t y p e ; 
 	 	 d a t e t i m e   t i m e C l o s e , 
 	 	                   t i m e O p e n , 
 	 	                   t i m e E x p i r a t i o n ; 
 	 	 d o u b l e       c o m m i s s i o n , 
 	 	                   p r i c e O p e n , 
 	 	                   p r i c e C l o s e , 
 	 	                   p r o f i t , 
 	 	                   s t o p L o s s , 
 	 	                   s w a p , 
 	 	                   t a k e P r o f i t , 
 	 	                   v o l u m e ; 
 	 	 s t r i n g       c o m m e n t , 
 	 	                   s y m b o l ; 
 	 } ; 
 	 
 	 s t r u c t   P o s i t i o n 
 	 { 
 	 	 i n t   t y p e ; 
 	 	 l o n g           m a g i c , 
 	 	                   t i c k e t ; 
 	 	 d a t e t i m e   t i m e C l o s e , 
 	 	                   t i m e E x p i r a t i o n , 
 	 	                   t i m e O p e n ; 
 	 	 d o u b l e       c o m m i s s i o n , 
 	 	                   p r i c e C u r r e n t , 
 	 	                   p r i c e O p e n , 
 	 	                   p r o f i t , 
 	 	                   s t o p L o s s , 
 	 	                   s w a p , 
 	 	                   t a k e P r o f i t , 
 	 	                   v o l u m e ; 
 	 	 s t r i n g       c o m m e n t , 
 	 	                   s y m b o l ; 
 	 } ; 
 
 	 s t r u c t   P e n d i n g O r d e r 
 	 { 
 	 	 i n t   t y p e ; 
 	 	 l o n g           m a g i c , 
 	 	                   t i c k e t ; 
 	 	 d a t e t i m e   t i m e C l o s e , 
 	 	                   t i m e E x p i r a t i o n , 
 	 	                   t i m e O p e n ; 
 	 	 d o u b l e       p r i c e C u r r e n t , 
 	 	                   p r i c e O p e n , 
 	 	                   s t o p L o s s , 
 	 	                   t a k e P r o f i t , 
 	 	                   v o l u m e ; 
 	 	 s t r i n g       c o m m e n t , 
 	 	                   s y m b o l ; 
 	 } ; 
 	 
 	 s t r u c t   P o s i t i o n E x p i r a t i o n T i m e s 
 	 { 
 	 	 l o n g   t i c k e t ; 
 	 	 d a t e t i m e   t i m e E x p i r a t i o n ; 
 	 } ; 
 	 
 	 / / - - -   v a r i a b l e s   a n d   a r r a y s 
 	 b o o l   d e b u g ; 
 	 
 	 / /   B e c a u s e   w e   c a n   h a v e   m u l t i p l e   n e w   e v e n t s   a t   o n c e ,   t h e   i d e a   i s 
 	 / /   t o   r u n   t h e   d e t e c t o r   r e p e a t e d l y   u n t i l   n o   n e w   e v e n t   i s   d e t e c t e d . 
 	 / /   W h e n   t h i s   v a r i a b l e   i s   t r u e ,   i t   m e a n s   t h a t   t h e   e v e n t   d e t e c t i o n 
 	 / /   i s   r e p e a t e d .   I t   s h o u l d   s t o p   r e p e a t i n g   w h e n   n o   n e w   e v e n t   i s   d e t e c t e d . 
 	 b o o l   i s R e p e a t ; 
 
 	 i n t   e v e n t V a l u e s Q u e u e I n d e x ; 
 	 E v e n t V a l u e s   e v e n t V a l u e s [ ] ; 
 
 	 P e n d i n g O r d e r   p r e v i o u s P e n d i n g O r d e r s [ ] ; 
 	 P e n d i n g O r d e r   p e n d i n g O r d e r s [ ] ; 
 
 	 P o s i t i o n   p r e v i o u s P o s i t i o n s [ ] ; 
 	 P o s i t i o n   p o s i t i o n s [ ] ; 
 
 	 P o s i t i o n E x p i r a t i o n T i m e s   p o s i t i o n E x p i r a t i o n T i m e s [ ] ; 
 
 	 / / - - -   m e t h o d s 
 	 
 	 / * * 
 	 *   L i k e   A r r a y C o p y ( ) ,   b u t   f o r   a n y   t y p e . 
 	 * / 
 	 t e m p l a t e < t y p e n a m e   T > 
 	 v o i d   C o p y L i s t ( T   & d e s t [ ] ,   T   & s r c [ ] ) 
 	 { 
 	 	 i n t   s i z e   =   A r r a y S i z e ( s r c ) ; 
 	 	 A r r a y R e s i z e ( d e s t ,   s i z e ) ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 d e s t [ i ]   =   s r c [ i ] ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	 *   O v e r l o a d e d   m e t h o d   1   o f   2 
 	 * / 
 	 i n t   M a k e L i s t O f ( P e n d i n g O r d e r   & l i s t [ ] ) 
 	 { 
 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ; 
 
 	 	 i n t   c o u n t                 =   O r d e r s T o t a l ( ) ; 
 	 	 i n t   h o w M a n y A d d e d   =   0 ; 
 
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + ) 
 	 	 { 
 	 	 	 i f   ( O r d e r S e l e c t ( i n d e x ,   S E L E C T _ B Y _ P O S )   = =   f a l s e )   c o n t i n u e ; 
 	 	 	 i f   ( O r d e r T y p e ( )   <   O P _ B U Y L I M I T )   c o n t i n u e ; 
 
 	 	 	 h o w M a n y A d d e d + + ; 
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ; 
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ; 
 
 	 	 	 / /   i n t 
 	 	 	 l i s t [ i ] . t y p e       =   O r d e r T y p e ( ) ; 
 	 	 	 l i s t [ i ] . m a g i c     =   O r d e r M a g i c N u m b e r ( ) ; 
 	 	 	 l i s t [ i ] . t i c k e t   =   O r d e r T i c k e t ( ) ; 
 
 	 	 	 / /   d a t e t i m e 
 	 	 	 l i s t [ i ] . t i m e C l o s e             =   O r d e r C l o s e T i m e ( ) ; 
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   O r d e r E x p i r a t i o n ( ) ; 
 	 	 	 l i s t [ i ] . t i m e O p e n               =   O r d e r O p e n T i m e ( ) ; 
 
 	 	 	 / /   d o u b l e 
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t   =   O r d e r C l o s e P r i c e ( ) ; 
 	 	 	 l i s t [ i ] . p r i c e O p e n         =   O r d e r O p e n P r i c e ( ) ; 
 	 	 	 l i s t [ i ] . s t o p L o s s           =   O r d e r S t o p L o s s ( ) ; 
 	 	 	 l i s t [ i ] . t a k e P r o f i t       =   O r d e r T a k e P r o f i t ( ) ; 
 	 	 	 l i s t [ i ] . v o l u m e               =   O r d e r L o t s ( ) ; 
 
 	 	 	 / /   s t r i n g 
 	 	 	 l i s t [ i ] . c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
 	 	 	 l i s t [ i ] . s y m b o l     =   O r d e r S y m b o l ( ) ; 
 	 	 } 
 
 	 	 r e t u r n   h o w M a n y A d d e d ; 
 	 } 
 
 	 / * * 
 	 *   O v e r l o a d e d   m e t h o d   2   o f   2 
 	 * / 
 	 i n t   M a k e L i s t O f ( P o s i t i o n   & l i s t [ ] ) 
 	 { 
 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ; 
 
 	 	 i n t   c o u n t                 =   O r d e r s T o t a l ( ) ; 
 	 	 i n t   h o w M a n y A d d e d   =   0 ; 
 
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + ) 
 	 	 { 
 	 	 	 i f   ( O r d e r S e l e c t ( i n d e x ,   S E L E C T _ B Y _ P O S )   = =   f a l s e )   c o n t i n u e ; 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   c o n t i n u e ; 
 
 	 	 	 h o w M a n y A d d e d + + ; 
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ; 
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ; 
 
 	 	 	 / /   i n t 
 	 	 	 l i s t [ i ] . t y p e       =   O r d e r T y p e ( ) ; 
 	 	 	 l i s t [ i ] . m a g i c     =   O r d e r M a g i c N u m b e r ( ) ; 
 	 	 	 l i s t [ i ] . t i c k e t   =   O r d e r T i c k e t ( ) ; 
 
 	 	 	 / /   d a t e t i m e 
 	 	 	 l i s t [ i ] . t i m e C l o s e             =   O r d e r C l o s e T i m e ( ) ; 
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 	 	 	 l i s t [ i ] . t i m e O p e n               =   O r d e r O p e n T i m e ( ) ; 
 
 	 	 	 / /   d o u b l e 
 	 	 	 l i s t [ i ] . c o m m i s s i o n       =   O r d e r C o m m i s s i o n ( ) ; 
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t   =   O r d e r C l o s e P r i c e ( ) ; 
 	 	 	 l i s t [ i ] . p r i c e O p e n         =   O r d e r O p e n P r i c e ( ) ; 
 	 	 	 l i s t [ i ] . p r o f i t               =   O r d e r P r o f i t ( ) ; 
 	 	 	 l i s t [ i ] . s t o p L o s s           =   O r d e r S t o p L o s s ( ) ; 
 	 	 	 l i s t [ i ] . s w a p                   =   O r d e r S w a p ( ) ; 
 	 	 	 l i s t [ i ] . t a k e P r o f i t       =   O r d e r T a k e P r o f i t ( ) ; 
 	 	 	 l i s t [ i ] . v o l u m e               =   O r d e r L o t s ( ) ; 
 
 	 	 	 / /   s t r i n g 
 	 	 	 l i s t [ i ] . c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
 	 	 	 l i s t [ i ] . s y m b o l     =   O r d e r S y m b o l ( ) ; 
 	 	 	 
 	 	 	 / /   e x t r a c t   e x p i r a t i o n 
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( l i s t [ i ] . t i c k e t ) ; 
 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 l i s t [ i ] . s t o p L o s s       =   V i r t u a l S t o p s D r i v e r ( " g e t   s l " ,   l i s t [ i ] . t i c k e t ) ; 
 	 	 	 	 l i s t [ i ] . t a k e P r o f i t   =   V i r t u a l S t o p s D r i v e r ( " g e t   t p " ,   l i s t [ i ] . t i c k e t ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   h o w M a n y A d d e d ; 
 	 } 
 
 	 / * * 
 	 *   T h i s   m e t h o d   l o o p s   t h r o u g h   2   l i s t s   o f   i t e m s   a n d   f i n d s   a   d i f f e r e n c e .   T h i s   d i f f e r e n c e   i s   t h e   e v e n t . 
 	 *   " I t e m s "   a r e   e i t h e r   p e n d i n g   o r d e r s   o r   p o s i t i o n s . 
 	 * 
 	 *   R e t u r n s   t r u e   i f   a n   e v e n t   i s   d e t e c t e d   o r   f a l s e   i f   n o t . 
 	 * / 
 	 t e m p l a t e < t y p e n a m e   I T E M S _ T Y P E >   
 	 b o o l   D e t e c t E v e n t ( I T E M S _ T Y P E   & p r e v i o u s I t e m s [ ] ,   I T E M S _ T Y P E   & c u r r e n t I t e m s [ ] ) 
 	 { 
 	 	 I T E M S _ T Y P E   i t e m ; 
 	 	 s t r i n g   r e a s o n       =   " " ; 
 	 	 s t r i n g   d e t a i l       =   " " ; 
 	 	 i n t   c o u n t B e f o r e   =   A r r a y S i z e ( p r e v i o u s I t e m s ) ; 
 	 	 i n t   c o u n t N o w         =   A r r a y S i z e ( c u r r e n t I t e m s ) ; 
 
 	 	 / /   c l o s e d 
 	 	 i f   ( r e a s o n   = =   " " )   { 
 	 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t B e f o r e ;   i n d e x + + )   { 
 	 	 	 	 i t e m   =   F i n d M i s s i n g I t e m ( p r e v i o u s I t e m s ,   c u r r e n t I t e m s ) ; 
 
 	 	 	 	 i f   ( i t e m . t i c k e t   >   0 )   { 
 	 	 	 	 	 D e l e t e I t e m ( p r e v i o u s I t e m s ,   i t e m ) ; 
 	 	 	 	 	 r e a s o n   =   " c l o s e " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   n e w 
 	 	 i f   ( r e a s o n   = =   " " )   { 
 	 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t N o w ;   i n d e x + + )   { 
 	 	 	 	 i t e m   =   F i n d M i s s i n g I t e m ( c u r r e n t I t e m s ,   p r e v i o u s I t e m s ) ; 
 
 	 	 	 	 i f   ( i t e m . t i c k e t   >   0 )   { 
 	 	 	 	 	 i f   ( 
 	 	 	 	 	 	 i t e m . t y p e   <   2   / /   i t ' s   a   r u n n i n g   t r a d e 
 	 	 	 	 	 	 & &   i t e m . t i c k e t   ! =   a t t r T i c k e t P a r e n t ( i t e m . t i c k e t ) 
 	 	 	 	 	 )   { 
 	 	 	 	 	 	 / /   I n   M Q L 4 :   W h e n   a   t r a d e   i s   c l o s e d   p a r t i a l l y ,   t h e   t i c k e t   c h a n g e s . 
 	 	 	 	 	 	 / /   T h e   o r i g i n a l   ( p a r e n t )   t r a d e   i s   c l o s e d   a n d   a   n e w   o n e   i s   c r e a t e d , 
 	 	 	 	 	 	 / /   w i t h   a   d i f f e r e n t   t i c k e t . 
 	 	 	 	 	 	 r e a s o n   =   " d e c r e m e n t " ; 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e   { 
 	 	 	 	 	 	 r e a s o n   =   " n e w " ; 
 	 	 	 	 	 } 
 
 	 	 	 	 	 P u s h I t e m ( p r e v i o u s I t e m s ,   i t e m ) ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   m o d i f i e d 
 	 	 i f   ( r e a s o n   = =   " " )   { 
 	 	 	 i f   ( c o u n t B e f o r e   ! =   c o u n t N o w )   { 
 	 	 	 	 P r i n t ( " O n T r a d e   e v e n t   d e t e c t o r :   U n c o v e r e d   s i t u a t i o n   r e a c h e d " ) ; 
 	 	 	 } 
 
 	 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t N o w ;   i n d e x + + )   { 
 	 	 	 	 i n t   p r e v i o u s I n d e x   =   - 1 ; 
 
 	 	 	 	 I T E M S _ T Y P E   c u r r e n t   =   c u r r e n t I t e m s [ i n d e x ] ; 
 	 	 	 	 I T E M S _ T Y P E   p r e v i o u s ; 
 	 	 	 	 p r e v i o u s . t i c k e t   =   0 ; 
 
 	 	 	 	 f o r   ( i n t   j   =   0 ;   j   <   c o u n t B e f o r e ;   j + + )   { 
 	 	 	 	 	 i f   ( c u r r e n t . t i c k e t   = =   p r e v i o u s I t e m s [ j ] . t i c k e t )   { 
 	 	 	 	 	 	 p r e v i o u s I n d e x   =   j ; 
 	 	 	 	 	 	 p r e v i o u s   =   p r e v i o u s I t e m s [ j ] ; 
 
 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( c u r r e n t . t i c k e t   ! =   p r e v i o u s . t i c k e t )   { 
 	 	 	 	 	 P r i n t ( " O n T r a d e   e v e n t   d e t e c t o r :   U n c o v e r e d   s i t u a t i o n   r e a c h e d   ( 2 ) " ) ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( p r e v i o u s . v o l u m e   <   c u r r e n t . v o l u m e )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . v o l u m e   =   c u r r e n t . v o l u m e ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " i n c r e m e n t " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( p r e v i o u s . v o l u m e   >   c u r r e n t . v o l u m e )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . v o l u m e   =   c u r r e n t . v o l u m e ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " d e c r e m e n t " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( 
 	 	 	 	 	 p r e v i o u s . s t o p L o s s   ! =   c u r r e n t . s t o p L o s s 
 	 	 	 	 	 & &   p r e v i o u s . t a k e P r o f i t   ! =   c u r r e n t . t a k e P r o f i t 
 	 	 	 	 )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . s t o p L o s s   =   c u r r e n t . s t o p L o s s ; 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . t a k e P r o f i t   =   c u r r e n t . t a k e P r o f i t ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ; 
 	 	 	 	 	 d e t a i l   =   " s l t p " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 	 / /   S L   m o d i f i e d 
 	 	 	 	 e l s e   i f   ( p r e v i o u s . s t o p L o s s   ! =   c u r r e n t . s t o p L o s s )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . s t o p L o s s   =   c u r r e n t . s t o p L o s s ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ; 
 	 	 	 	 	 d e t a i l   =   " s l " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 	 / /   T P   m o d i f i e d 
 	 	 	 	 e l s e   i f   ( p r e v i o u s . t a k e P r o f i t   ! =   c u r r e n t . t a k e P r o f i t )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . t a k e P r o f i t   =   c u r r e n t . t a k e P r o f i t ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ; 
 	 	 	 	 	 d e t a i l   =   " t p " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( p r e v i o u s . t i m e E x p i r a t i o n   ! =   c u r r e n t . t i m e E x p i r a t i o n )   { 
 	 	 	 	 	 p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] . t i m e E x p i r a t i o n   =   c u r r e n t . t i m e E x p i r a t i o n ; 
 	 	 	 	 	 i t e m   =   p r e v i o u s I t e m s [ p r e v i o u s I n d e x ] ; 
 
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ; 
 	 	 	 	 	 d e t a i l   =   " e x p i r a t i o n " ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( r e a s o n   = =   " " ) 
 	 	 { 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 U p d a t e V a l u e s ( i t e m ,   r e a s o n ,   d e t a i l ) ; 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 	 
 	 / * * 
 	 *   F r o m   t h e   s o u r c e   l i s t   o f   o r d e r s   o r   p o s i t i o n s ,   f i n d   t h e   i t e m   t h a t   i s   m i s s i n g 
 	 *   i n   t h e   t a r g e t   l i s t   o f   o r d e r s   o r   p o s i t i o n s .   T h e   s e a r c h i n g   i s   b y   t h e   i t e m ' s   t i c k e t . 
 	 * 
 	 *   I f   a l l   i t e m s   f r o m   t h e   s o u r c e   l i s t   e x i s t   i n   t h e   t a r g e t   l i s t ,   r e t u r n   a n   e m p t y   i t e m   w i t h   t i c k e t   0 . 
 	 *   I f   f o r   s o m e   i t e m   i n   s o u r c e   l i s t   t h e r e   i s   n o   i t e m   i n   t h e   t a r g e t   l i s t ,   r e t u r n   t h a t   s o u r c e   i t e m . 
 	 * / 
 	 t e m p l a t e < t y p e n a m e   T >   
 	 T   F i n d M i s s i n g I t e m ( T   & s o u r c e [ ] ,   T   & t a r g e t [ ] ) 
 	 { 
 	 	 i n t   s o u r c e C o u n t   =   A r r a y S i z e ( s o u r c e ) ; 
 	 	 i n t   t a r g e t C o u n t     =   A r r a y S i z e ( t a r g e t ) ; 
 	 	 T   i t e m ; 
 	 	 i t e m . t i c k e t   =   0 ; 
 
 	 	 l o n g   t i c k e t   =   0 ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s o u r c e C o u n t ;   i + + ) 
 	 	 { 
 	 	 	 b o o l   f o u n d   =   f a l s e ; 
 
 	 	 	 f o r   ( i n t   j   =   0 ;   j   <   t a r g e t C o u n t ;   j + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( s o u r c e [ i ] . t i c k e t   = =   t a r g e t [ j ] . t i c k e t ) 
 	 	 	 	 { 
 	 	 	 	 	 f o u n d   =   t r u e ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( f o u n d   = =   f a l s e ) 
 	 	 	 { 
 	 	 	 	 i t e m   =   s o u r c e [ i ] ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   i t e m ; 
 	 } 
 
 	 / * * 
 	 *   F r o m   t h e   l i s t   o f   p r e v i o u s   o r d e r s   o r   p o s i t i o n s ,   f i n d   a n d   r e m o v e   t h e 
 	 *   p r o v i d e d   i t e m . 
 	 * / 
 	 t e m p l a t e < t y p e n a m e   T >   
 	 b o o l   D e l e t e I t e m ( T   & l i s t [ ] ,   T   & i t e m ) 
 	 { 
 	 	 i n t   l i s t C o u n t   =   A r r a y S i z e ( l i s t ) ; 
 	 	 b o o l   r e m o v e d   =   f a l s e ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   l i s t C o u n t ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( l i s t [ i ] . t i c k e t   = =   i t e m . t i c k e t )   { 
 	 	 	 	 A r r a y S t r i p K e y ( l i s t ,   i ) ; 
 	 	 	 	 r e m o v e d   =   t r u e ; 
 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   r e m o v e d ; 
 	 } 
 
 	 / * * 
 	 *   P u s h   a   n e w   i t e m   i n   t h e   l i s t 
 	 * / 
 	 t e m p l a t e < t y p e n a m e   T >   
 	 v o i d   P u s h I t e m ( T   & l i s t [ ] ,   T   & i t e m ) 
 	 { 
 	 	 i n t   l i s t C o u n t   =   A r r a y S i z e ( l i s t ) ; 
 
 	 	 A r r a y R e s i z e ( l i s t ,   l i s t C o u n t   +   1 ) ; 
 
 	 	 l i s t [ l i s t C o u n t ]   =   i t e m ; 
 	 } 
 
 	 / * * 
 	 *   O v e r l o a d e d   m e t h o d   1   o f   2 
 	 * / 
 	 v o i d   U p d a t e V a l u e s ( P o s i t i o n   & i t e m ,   s t r i n g   r e a s o n ,   s t r i n g   d e t a i l ) 
 	 { 
 	 	 l o n g   t i c k e t                 =   i t e m . t i c k e t ; 
 	 	 d a t e t i m e   t i m e O p e n     =   i t e m . t i m e O p e n ; 
 	 	 d a t e t i m e   t i m e C l o s e   =   i t e m . t i m e C l o s e ; 
 	 	 d o u b l e   p r i c e O p e n       =   i t e m . p r i c e O p e n ; 
 	 	 d o u b l e   p r i c e C l o s e     =   i t e m . p r i c e C u r r e n t ; 
 	 	 d o u b l e   p r o f i t             =   i t e m . p r o f i t ; 
 	 	 d o u b l e   s w a p                 =   i t e m . s w a p ; 
 	 	 d o u b l e   c o m m i s s i o n     =   i t e m . c o m m i s s i o n ; 
 	 	 d o u b l e   v o l u m e             =   i t e m . v o l u m e ; 
 
 	 	 i f   ( r e a s o n   = =   " c l o s e "   | |   r e a s o n   = =   " d e c r e m e n t " ) 
 	 	 { 
 	 	 	 i f   ( O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ H I S T O R Y ) ) 
 	 	 	 { 
 	 	 	 	 t i m e O p e n       =   O r d e r O p e n T i m e ( ) ; 
 	 	 	 	 t i m e C l o s e     =   O r d e r C l o s e T i m e ( ) ; 
 	 	 	 	 p r i c e O p e n     =   O r d e r O p e n P r i c e ( ) ; 
 	 	 	 	 p r i c e C l o s e   =   O r d e r C l o s e P r i c e ( ) ; 
 	 	 	 	 p r o f i t           =   O r d e r P r o f i t ( ) ; 
 	 	 	 	 s w a p               =   O r d e r S w a p ( ) ; 
 	 	 	 	 c o m m i s s i o n   =   O r d e r C o m m i s s i o n ( ) ; 
 	 	 	 	 v o l u m e           =   O r d e r L o t s ( ) ; 
 
 	 	 	 	 i f   ( d e t a i l   = =   " " ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( 
 	 	 	 	 	 	 i t e m . t i m e E x p i r a t i o n   >   0 
 	 	 	 	 	 	 & &   i t e m . t i m e E x p i r a t i o n   < =   t i m e C l o s e 
 	 	 	 	 	 )   { 
 	 	 	 	 	 	 d e t a i l   =   " e x p i r a t i o n " ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( d e t a i l   = =   " " ) 
 	 	 	 	 { 
 	 	 	 	 	 s t r i n g   c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
 
 	 	 	 	 	 / /   T r y   w i t h   c o m m e n t s ,   w h i c h   w o r k s   i n   t h e   T e s t e r ,   b u t   i t   c o u l d   n o t   w o r k   i n   r e a l 
 	 	 	 	 	           i f   ( c o m m e n t   = =   " [ t p ] " )   d e t a i l   =   " t p " ; 
 	 	 	 	 	 e l s e   i f   ( c o m m e n t   = =   " [ s l ] " )   d e t a i l   =   " s l " ; 
 
 	 	 	 	 	 / /   T r y   t o   d e t e c t   c l o s e   b y   S L   o r   T P   b y   t h e   c l o s e   p r i c e 
 	 	 	 	 	 i f   ( d e t a i l   = =   " " ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i n t   t y p e   =   i t e m . t y p e ; 
 
 	 	 	 	 	 	 d o u b l e   s l   =   O r d e r S t o p L o s s ( ) ; 
 	 	 	 	 	 	 d o u b l e   t p   =   O r d e r T a k e P r o f i t ( ) ; 
 
 	 	 	 	 	 	 i f   ( t y p e   = =   0 )   / /   B U Y 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	           i f   ( s l   >   0   & &   p r i c e C l o s e   < =   s l )   d e t a i l   =   " s l " ; 
 	 	 	 	 	 	 	 e l s e   i f   ( t p   >   0   & &   p r i c e C l o s e   > =   t p )   d e t a i l   =   " t p " ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 	 e l s e   i f   ( t y p e   = =   1 )   / /   S E L L 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	           i f   ( s l   >   0   & &   p r i c e C l o s e   > =   s l )   d e t a i l   =   " s l " ; 
 	 	 	 	 	 	 	 e l s e   i f   ( t p   >   0   & &   p r i c e C l o s e   < =   t p )   d e t a i l   =   " t p " ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 i n t   i   =   e v e n t V a l u e s Q u e u e I n d e x ; 
 
 	 	 e v e n t V a l u e s [ i ] . r e a s o n   =   r e a s o n ; 
 	 	 e v e n t V a l u e s [ i ] . d e t a i l   =   d e t a i l ; 
   
 	 	 e v e n t V a l u e s [ i ] . p r i c e C l o s e           =   p r i c e C l o s e ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e C l o s e             =   t i m e C l o s e ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m e n t                 =   i t e m . c o m m e n t ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m i s s i o n           =   c o m m i s s i o n ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e E x p i r a t i o n   =   i t e m . t i m e E x p i r a t i o n ; 
 	 	 e v e n t V a l u e s [ i ] . v o l u m e                   =   v o l u m e ; 
 	 	 e v e n t V a l u e s [ i ] . m a g i c                     =   i t e m . m a g i c ; 
 	 	 e v e n t V a l u e s [ i ] . p r i c e O p e n             =   p r i c e O p e n ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e O p e n               =   t i m e O p e n ; 
 	 	 e v e n t V a l u e s [ i ] . p r o f i t                   =   p r o f i t ; 
 	 	 e v e n t V a l u e s [ i ] . s t o p L o s s               =   i t e m . s t o p L o s s ; 
 	 	 e v e n t V a l u e s [ i ] . s w a p                       =   s w a p ; 
 	 	 e v e n t V a l u e s [ i ] . s y m b o l                   =   i t e m . s y m b o l ; 
 	 	 e v e n t V a l u e s [ i ] . t a k e P r o f i t           =   i t e m . t a k e P r o f i t ; 
 	 	 e v e n t V a l u e s [ i ] . t i c k e t                   =   t i c k e t ; 
 	 	 e v e n t V a l u e s [ i ] . t y p e                       =   i t e m . t y p e ; 
 
 	 	 i f   ( d e b u g ) 
 	 	 { 
 	 	 	 P r i n t U p d a t e d V a l u e s ( ) ; 
 	 	 } 
 	 } 
 	 
 	 / * * 
 	 *   O v e r l o a d e d   m e t h o d   2   o f   2 
 	 * / 
 	 v o i d   U p d a t e V a l u e s ( P e n d i n g O r d e r   & i t e m ,   s t r i n g   r e a s o n ,   s t r i n g   d e t a i l ) 
 	 { 
 	 	 i n t   i   =   e v e n t V a l u e s Q u e u e I n d e x ; 
 
 	 	 e v e n t V a l u e s [ i ] . r e a s o n   =   r e a s o n ; 
 	 	 e v e n t V a l u e s [ i ] . d e t a i l   =   d e t a i l ; 
 
 	 	 e v e n t V a l u e s [ i ] . p r i c e C l o s e           =   i t e m . p r i c e C u r r e n t ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e C l o s e             =   i t e m . t i m e C l o s e ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m e n t                 =   i t e m . c o m m e n t ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m i s s i o n           =   0 . 0 ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e E x p i r a t i o n   =   i t e m . t i m e E x p i r a t i o n ; 
 	 	 e v e n t V a l u e s [ i ] . v o l u m e                   =   i t e m . v o l u m e ; 
 	 	 e v e n t V a l u e s [ i ] . m a g i c                     =   i t e m . m a g i c ; 
 	 	 e v e n t V a l u e s [ i ] . p r i c e O p e n             =   i t e m . p r i c e O p e n ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e O p e n               =   i t e m . t i m e O p e n ; 
 	 	 e v e n t V a l u e s [ i ] . p r o f i t                   =   0 . 0 ; 
 	 	 e v e n t V a l u e s [ i ] . s t o p L o s s               =   i t e m . s t o p L o s s ; 
 	 	 e v e n t V a l u e s [ i ] . s w a p                       =   0 . 0 ; 
 	 	 e v e n t V a l u e s [ i ] . s y m b o l                   =   i t e m . s y m b o l ; 
 	 	 e v e n t V a l u e s [ i ] . t a k e P r o f i t           =   i t e m . t a k e P r o f i t ; 
 	 	 e v e n t V a l u e s [ i ] . t i c k e t                   =   i t e m . t i c k e t ; 
 	 	 e v e n t V a l u e s [ i ] . t y p e                       =   i t e m . t y p e ; 
 
 	 	 i f   ( d e b u g ) 
 	 	 { 
 	 	 	 P r i n t U p d a t e d V a l u e s ( ) ; 
 	 	 } 
 	 } 
 
 	 v o i d   P r i n t U p d a t e d V a l u e s ( ) 
 	 { 
 	 	 P r i n t ( 
 	 	 	 "   < < < " 
 	 	 ) ; 
 	 	 
 	 	 P r i n t ( 
 	 	 	 "   |   r e a s o n :   " ,   e _ R e a s o n ( ) , 
 	 	 	 "   |   d e t a i l :   " ,   e _ R e a s o n D e t a i l ( ) , 
 	 	 	 "   |   t i c k e t :   " ,   e _ a t t r T i c k e t ( ) , 
 	 	 	 "   |   t y p e :   " ,   E n u m T o S t r i n g ( ( E N U M _ O R D E R _ T Y P E ) e _ a t t r T y p e ( ) ) 
 	 	 ) ; 
 	 	 
 	 	 P r i n t ( 
 	 	 	 "   |   o p e n T i m e   :   " ,   e _ a t t r O p e n T i m e ( ) , 
 	 	 	 "   |   o p e n P r i c e   :   " ,   e _ a t t r O p e n P r i c e ( ) 
 	 	 ) ; 
 	 	 
 	 	 P r i n t ( 
 	 	 	 "   |   c l o s e T i m e :   " ,   e _ a t t r C l o s e T i m e ( ) , 
 	 	 	 "   |   c l o s e P r i c e :   " ,   e _ a t t r C l o s e P r i c e ( ) 
 	 	 ) ; 
 	 	 
 	 	 P r i n t ( 
 	 	 	 "   |   v o l u m e :   " ,   e _ a t t r L o t s ( ) , 
 	 	 	 "   |   s l :   " ,   e _ a t t r S t o p L o s s ( ) , 
 	 	 	 "   |   t p :   " ,   e _ a t t r T a k e P r o f i t ( ) , 
 	 	 	 "   |   p r o f i t :   " ,   e _ a t t r P r o f i t ( ) , 
 	 	 	 "   |   s w a p :   " ,   e _ a t t r S w a p ( ) , 
 	 	 	 "   |   e x p :   " ,   e _ a t t r E x p i r a t i o n ( ) , 
 	 	 	 "   |   c o m m e n t :   " ,   e _ a t t r C o m m e n t ( ) 
 	 	 ) ; 
 	 	 
 	 	 P r i n t ( 
 	 	 	 " > > > " 
 	 	 ) ; 
 	 } 
 
 	 i n t   A d d E v e n t V a l u e s ( ) 
 	 { 
 	 	 e v e n t V a l u e s Q u e u e I n d e x + + ; 
 	 	 A r r a y R e s i z e ( e v e n t V a l u e s ,   e v e n t V a l u e s Q u e u e I n d e x   +   1 ) ; 
 
 	 	 r e t u r n   e v e n t V a l u e s Q u e u e I n d e x ; 
 	 } 
 
 	 i n t   R e m o v e E v e n t V a l u e s ( ) 
 	 { 
 	 	 i f   ( e v e n t V a l u e s Q u e u e I n d e x   = =   - 1 ) 
 	 	 { 
 	 	 	 P r i n t ( " C a n n o t   r e m o v e   e v e n t   v a l u e s ,   a d d   t h e m   f i r s t .   ( i n   f u n c t i o n   " ,   _ _ F U N C T I O N _ _ ,   " ) " ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 e v e n t V a l u e s Q u e u e I n d e x - - ; 
 	 	 	 A r r a y R e s i z e ( e v e n t V a l u e s ,   e v e n t V a l u e s Q u e u e I n d e x   +   1 ) ; 
 	 	 } 
 
 	 	 r e t u r n   e v e n t V a l u e s Q u e u e I n d e x ; 
 	 } 
 
 p u b l i c : 
 	 / * * 
 	 *   D e f a u l t   c o n s t r u c t o r 
 	 * / 
 	 O n T r a d e E v e n t D e t e c t o r ( v o i d ) 
 	 { 
 	 	 d e b u g   =   f a l s e ; 
 	 	 i s R e p e a t   =   f a l s e ; 
 	 	 e v e n t V a l u e s Q u e u e I n d e x   =   - 1 ; 
 	 } ; 
 
 	 b o o l   S t a r t ( ) 
 	 { 
 	 	 A d d E v e n t V a l u e s ( ) ; 
 
 	 	 i f   ( i s R e p e a t   = =   f a l s e )   { 
 	 	 	 M a k e L i s t O f ( p e n d i n g O r d e r s ) ; 
 	 	 	 M a k e L i s t O f ( p o s i t i o n s ) ; 
 	 	 } 
 
 	 	 b o o l   s u c c e s s   =   f a l s e ; 
 
 	 	 i f   ( ! s u c c e s s )   s u c c e s s   =   D e t e c t E v e n t ( p r e v i o u s P e n d i n g O r d e r s ,   p e n d i n g O r d e r s ) ; 
 
 	 	 i f   ( ! s u c c e s s )   s u c c e s s   =   D e t e c t E v e n t ( p r e v i o u s P o s i t i o n s ,   p o s i t i o n s ) ; 
 
 	 	 / / C o p y L i s t ( p r e v i o u s P e n d i n g O r d e r s ,   p e n d i n g O r d e r s ) ; 
 	 	 / / C o p y L i s t ( p r e v i o u s P o s i t i o n s ,   p o s i t i o n s ) ; 
 
 	 	 i s R e p e a t   =   s u c c e s s ;   / /   R e p e a t   u n t i l   n o   s u c c e s s 
 
 	 	 r e t u r n   s u c c e s s ; 
 	 } 
 
 	 v o i d   E n d ( ) 
 	 { 
 	 	 R e m o v e E v e n t V a l u e s ( ) ; 
 	 } 
 
 	 s t r i n g   E v e n t V a l u e R e a s o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . r e a s o n ; } 
 	 s t r i n g   E v e n t V a l u e D e t a i l ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . d e t a i l ; } 
 
 	 i n t   E v e n t V a l u e T y p e ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t y p e ; } 
 
 	 d a t e t i m e   E v e n t V a l u e T i m e C l o s e ( )             { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e C l o s e ; } 
 	 d a t e t i m e   E v e n t V a l u e T i m e O p e n ( )               { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e O p e n ; } 
 	 d a t e t i m e   E v e n t V a l u e T i m e E x p i r a t i o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e E x p i r a t i o n ; } 
 
 	 l o n g   E v e n t V a l u e M a g i c ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . m a g i c ; } 
 	 l o n g   E v e n t V a l u e T i c k e t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i c k e t ; } 
 
 	 d o u b l e   E v e n t V a l u e C o m m i s s i o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . c o m m i s s i o n ; } 
 	 d o u b l e   E v e n t V a l u e P r i c e O p e n ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r i c e O p e n ; } 
 	 d o u b l e   E v e n t V a l u e P r i c e C l o s e ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r i c e C l o s e ; } 
 	 d o u b l e   E v e n t V a l u e P r o f i t ( )           { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r o f i t ; } 
 	 d o u b l e   E v e n t V a l u e S t o p L o s s ( )       { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s t o p L o s s ; } 
 	 d o u b l e   E v e n t V a l u e S w a p ( )               { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s w a p ; } 
 	 d o u b l e   E v e n t V a l u e T a k e P r o f i t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t a k e P r o f i t ; } 
 	 d o u b l e   E v e n t V a l u e V o l u m e ( )           { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . v o l u m e ; } 
 
 	 s t r i n g   E v e n t V a l u e C o m m e n t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . c o m m e n t ; } 
 	 s t r i n g   E v e n t V a l u e S y m b o l ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s y m b o l ; } 
 } ; 
 
 O n T r a d e E v e n t D e t e c t o r   o n T r a d e E v e n t D e t e c t o r ;  
  
 / * * 
 *   W h e n   a   t r a d e   i s   a   c h i l d ,   i t s   O p e n   P r i c e   i s   t h e   s a m e   a s   t h e   O p e n   P r i c e   o f   t h e   m o s t   p a r e n t   t r a d e . 
 *   T h i s   f u n c t i o n   w i l l   r e t u r n   t h e   a c t u a l   O p e n   P r i c e   o f   t h i s   p a r e n t   t r a d e ,   w h i c h   w o u l d   b e   t h e   C l o s e 
 *   P r i c e   o f   t h e   p r e v i o u s   c h i l d   t r a d e ,   o r   t h e   p a r e n t   t r a d e   i f   t h i s   i s   t h e   o n l y   c h i l d ,   o r   i t s e l f   i f 
 *   i t ' s   t h e   t r a d e   i s   n o t   a   c h i l d . 
 * / 
 d o u b l e   O r d e r C h i l d O p e n P r i c e ( )   { 
 	 i n t   t i c k e t           =   O r d e r T i c k e t ( ) ; 
 	 i n t   p r e v T i c k e t   =   a t t r T i c k e t P r e v i o u s S i b l i n g ( t i c k e t ) ; 
 
 	 d o u b l e   o p e n P r i c e   =   0 ; 
 
 	 i f   ( t i c k e t   = =   p r e v T i c k e t )   { 
 	 	 o p e n P r i c e   =   O r d e r O p e n P r i c e ( ) ; 
 	 } 
 	 e l s e   { 
 	 	 d o u b l e   p r e v C l o s e P r i c e   =   0 ; 
 	 	 d a t e t i m e   p r e v C l o s e T i m e   =   0 ; 
 	 	 
 	 	 i f   ( O r d e r S e l e c t ( p r e v T i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ H I S T O R Y ) )   { 
 	 	 	 p r e v C l o s e P r i c e   =   O r d e r C l o s e P r i c e ( ) ; 
 	 	 	 p r e v C l o s e T i m e   =   O r d e r C l o s e T i m e ( ) ; 
 	 	 } 
 	 	 
 	 	 b o o l   s u c c e s s   =   O r d e r S e l e c t ( t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) ; 
 	 	 
 	 	 o p e n P r i c e   =   ( p r e v C l o s e T i m e   >   0 ) 
 	 	 	 ?   p r e v C l o s e P r i c e         / /   p a r t i a l   c l o s e 
 	 	 	 :   O r d e r O p e n P r i c e ( ) ;   / /   a d d e d   t o   v o l u m e 
 	 } 
 	 
 	 r e t u r n   o p e n P r i c e ; 
 }  
  
 i n t   O r d e r C r e a t e ( 
 	 s t r i n g       s y m b o l           =   " " , 
 	 i n t             t y p e               =   O P _ B U Y , 
 	 d o u b l e       l o t s               =   0 , 
 	 d o u b l e       o p                   =   0 , 
 	 d o u b l e       s l l                 =   0 ,   / /   S L   l e v e l 
 	 d o u b l e       t p l                 =   0 ,   / /   T O   l e v e l 
 	 d o u b l e       s l p                 =   0 ,   / /   S L   a d j u s t   i n   p o i n t s 
 	 d o u b l e       t p p                 =   0 ,   / /   T P   a d j u s t   i n   p o i n t s 
 	 d o u b l e       s l i p p a g e       =   0 , 
 	 i n t             m a g i c             =   0 , 
 	 s t r i n g       c o m m e n t         =   " " , 
 	 c o l o r         a r r o w c o l o r   =   C L R _ N O N E , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 , 
 	 b o o l           o c o                 =   f a l s e 
 	 ) 
 { 
 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ;   / /   u s e d   t o   m e a s u r e   s p e e d   o f   e x e c u t i o n   o f   t h e   o r d e r 
 
 	 i n t   t i c k e t   =   - 1 ; 
 	 b o o l   p l a c e E x p i r a t i o n O b j e c t   =   f a l s e ;   / /   w h e t h e r   o r   n o t   t o   c r e a t e   a n   o b j e c t   f o r   e x p i r a t i o n   f o r   t r a d e s 
 
 	 / /   c a l c u l a t e   b u y / s e l l   f l a g   ( 1   w h e n   B u y   o r   - 1   w h e n   S e l l ) 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( 
 	 	       t y p e   = =   O P _ S E L L 
 	 	 | |   t y p e   = =   O P _ S E L L S T O P 
 	 	 | |   t y p e   = =   O P _ S E L L L I M I T 
 	 	 ) 
 	 { 
 	 	 b s   =   - 1 ; 
 	 } 
 
 	 i f   ( s y m b o l   = =   " " )   { s y m b o l   =   S y m b o l ( ) ; } 
 
 	 l o t s   =   A l i g n L o t s ( s y m b o l ,   l o t s ) ; 
 
 	 i n t   d i g i t s   =   0 ; 
 	 d o u b l e   a s k   =   0 ,   b i d   =   0 ,   p o i n t   =   0 ,   t i c k s i z e   =   0 ; 
 	 d o u b l e   s l   =   0 ,   t p   =   0 ; 
 	 d o u b l e   v s l   =   0 ,   v t p   =   0 ; 
 
 	 / / - -   a t t e m p t   t o   s e n d   t r a d e / o r d e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 w h i l e   ( ! I s S t o p p e d ( ) ) 
 	 { 
 	 	 W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
 
 	 	 s t a t i c   b o o l   n o t _ a l l o w e d _ m e s s a g e   =   f a l s e ; 
 
 	 	 i f   ( 
 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) 
 	 	 	 & &   ! M a r k e t I n f o ( s y m b o l ,   M O D E _ T R A D E A L L O W E D ) 
 	 	 )   { 
 	 	 	 i f   ( n o t _ a l l o w e d _ m e s s a g e   = =   f a l s e ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " M a r k e t   ( " + s y m b o l + " )   i s   c l o s e d " ) ; 
 	 	 	 } 
 
 	 	 	 n o t _ a l l o w e d _ m e s s a g e   =   t r u e ; 
 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 n o t _ a l l o w e d _ m e s s a g e   =   f a l s e ; 
 
 	 	 d i g i t s       =   ( i n t ) M a r k e t I n f o ( s y m b o l ,   M O D E _ D I G I T S ) ; 
 	 	 a s k             =   M a r k e t I n f o ( s y m b o l ,   M O D E _ A S K ) ; 
 	 	 b i d             =   M a r k e t I n f o ( s y m b o l ,   M O D E _ B I D ) ; 
 	 	 p o i n t         =   M a r k e t I n f o ( s y m b o l ,   M O D E _ P O I N T ) ; 
 	 	 t i c k s i z e   =   M a r k e t I n f o ( s y m b o l ,   M O D E _ T I C K S I Z E ) ; 
 
 	 	 / / -   n o t   e n o u g h   m o n e y   c h e c k :   f i x   m a x i m u m   p o s s i b l e   l o t   b y   m a r g i n   r e q u i r e d ,   o r   q u i t 
 	 	 i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
 	 	 { 
 	 	 	 d o u b l e   L o t S t e p                     =   M a r k e t I n f o ( s y m b o l , M O D E _ L O T S T E P ) ; 
 	 	 	 d o u b l e   M i n L o t s                     =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ; 
 	 	 	 d o u b l e   m a r g i n _ r e q u i r e d     =   M a r k e t I n f o ( s y m b o l , M O D E _ M A R G I N R E Q U I R E D ) ; 
 	 	 	 s t a t i c   b o o l   n o t _ e n o u g h _ m e s s a g e   =   f a l s e ; 
 
 	 	 	 i f   ( m a r g i n _ r e q u i r e d   ! =   0 ) 
 	 	 	 { 
 	 	 	 	 d o u b l e   m a x _ s i z e _ b y _ m a r g i n   =   A c c o u n t F r e e M a r g i n ( )   /   m a r g i n _ r e q u i r e d ; 
 
 	 	 	 	 i f   ( l o t s   >   m a x _ s i z e _ b y _ m a r g i n ) 
 	 	 	 	 { 
 	 	 	 	 	 d o u b l e   s i z e _ o l d   =   l o t s ; 
 	 	 	 	 	 l o t s   =   m a x _ s i z e _ b y _ m a r g i n ; 
 
 	 	 	 	 	 i f   ( l o t s   <   M i n L o t s ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( n o t _ e n o u g h _ m e s s a g e   = =   f a l s e ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   : (   T h e   r o b o t   i s   s t i l l   w o r k i n g ,   w a i t i n g   f o r   s o m e   f u n d s   t o   a p p e a r . . . " ) ; 
 	 	 	 	 	 	 } 
 
 	 	 	 	 	 	 n o t _ e n o u g h _ m e s s a g e   =   t r u e ; 
 	 	 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e 
 	 	 	 	 	 { 
 	 	 	 	 	 	 l o t s   =   M a t h F l o o r ( l o t s   /   L o t S t e p )   *   L o t S t e p ; 
 
 	 	 	 	 	 	 P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   "   +   D o u b l e T o S t r i n g ( s i z e _ o l d ,   2 ) + " ,   t h e   v o l u m e   t o   t r a d e   w i l l   b e   t h e   m a x i m u m   p o s s i b l e   o f   "   +   D o u b l e T o S t r i n g ( l o t s ,   2 ) ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 n o t _ e n o u g h _ m e s s a g e   =   f a l s e ; 
 	 	 } 
 
 	 	 / /   f i x   t h e   c o m m e n t ,   b e c a u s e   i t   s e e m s   t h a t   t h e   c o m m e n t   i s   d e l e t e d   i f   i t s   l e n g h t   i s   >   3 1   s y m b o l s 
 	 	 i f   ( S t r i n g L e n ( c o m m e n t )   >   3 1 ) 
 	 	 { 
 	 	 	 c o m m e n t   =   S t r i n g S u b s t r ( c o m m e n t , 0 , 3 1 ) ; 
 	 	 } 
 
 	 	 / / -   e x p i r a t i o n   f o r   t r a d e s 
 	 	 i f   ( t y p e   = =   O P _ B U Y   | |   t y p e   = =   O P _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( e x p i r a t i o n   >   0 ) 
 	 	 	 { 
 	 	 	 	 / / -   b o   b r o k e r ? 
 	 	 	 	 i f   ( 
 	 	 	 	 	       S t r i n g L e n ( s y m b o l )   >   6 
 	 	 	 	 	 & &   S t r i n g S u b s t r ( s y m b o l ,   S t r i n g L e n ( s y m b o l )   -   2 )   = =   " b o " 
 	 	 	 	 )   { 
 	 	 	 	 	 / / -   c o n v e r t   U N I X   t o   s e c o n d s 
 	 	 	 	 	 i f   ( e x p i r a t i o n   >   T i m e C u r r e n t ( ) - 1 0 0 )   { 
 	 	 	 	 	 	 e x p i r a t i o n   =   e x p i r a t i o n   -   T i m e C u r r e n t ( ) ; 
 	 	 	 	 	 } 
 
 	 	 	 	 	 c o m m e n t   =   " B O   e x p : "   +   ( s t r i n g ) e x p i r a t i o n ; 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 / /   T h e   e x p i r a t i o n   i n   t h i s   c a s e   i s   a   v e r t i c a l   l i n e 
 	 	 	 	 	 / /   C o m m e n t   d o e s n ' t   a l w a y s   w o r k , 
 	 	 	 	 	 / /   b e c a u s e   i t   c h a n g e s   w h e n   t h e   t r a d e   i s   p a r t i a l l y   c l o s e d 
 	 	 	 	 	 p l a c e E x p i r a t i o n O b j e c t   =   t r u e ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( t y p e   = =   O P _ B U Y   | |   t y p e   = =   O P _ S E L L ) 
 	 	 { 
 	 	 	 o p   =   ( b s   >   0 )   ?   a s k   :   b i d ; 
 	 	 } 
 
 	 	 o p     =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l ,   d i g i t s ) ; 
 	 	 t p l   =   N o r m a l i z e D o u b l e ( t p l ,   d i g i t s ) ; 
 
 	 	 i f   ( o p   <   0   | |   o p   > =   E M P T Y _ V A L U E   | |   s l l   <   0   | |   s l p   <   0   | |   t p l   <   0   | |   t p p   <   0 ) 
 	 	 { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 v s l   =   0 ;   v t p   =   0 ; 
 
 	 	 s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( s l l ,   d i g i t s ) ,   s l p ) ; 
 
 	 	 i f   ( s l   <   0 )   { b r e a k ; } 
 
 	 	 t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( t p l ,   d i g i t s ) ,   t p p ) ; 
 
 	 	 i f   ( t p   <   0 )   { b r e a k ; } 
 
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 { 
 	 	 	 / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 	 v s l   =   s l ; 
 	 	 	 v t p   =   t p ; 
 	 	 	 s l   =   0 ; 
 	 	 	 t p   =   0 ; 
 
 	 	 	 d o u b l e   a s k b i d   =   ( b s   >   0 )   ?   a s k   :   b i d ; 
 
 	 	 	 i f   ( v s l   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 s l   =   v s l   -   E M E R G E N C Y _ S T O P S _ R E L   *   M a t h A b s ( a s k b i d   -   v s l )   *   b s ; 
 
 	 	 	 	 	 i f   ( s l   < =   0 )   { s l   =   a s k b i d ; } 
 
 	 	 	 	 	 s l   =   s l   -   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D ,   s y m b o l )   *   b s ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( v t p   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 t p   =   v t p   +   E M E R G E N C Y _ S T O P S _ R E L   *   M a t h A b s ( v t p   -   a s k b i d )   *   b s ; 
 
 	 	 	 	 	 i f   ( t p   < =   0 )   { t p   =   a s k b i d ; } 
 
 	 	 	 	 	 t p   =   t p   +   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D ,   s y m b o l )   *   b s ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 v s l   =   N o r m a l i z e D o u b l e ( v s l ,   d i g i t s ) ; 
 	 	 	 v t p   =   N o r m a l i z e D o u b l e ( v t p ,   d i g i t s ) ; 
 	 	 } 
 
 	 	 s l   =   N o r m a l i z e D o u b l e ( s l ,   d i g i t s ) ; 
 	 	 t p   =   N o r m a l i z e D o u b l e ( t p ,   d i g i t s ) ; 
 
 	 	 / / - -   f i x   e x p i r a t i o n   f o r   p e n d i n g   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 d a t e t i m e   e x p i r a t i o n T m p   =   0 ; 
 
 	 	 i f   ( e x p i r a t i o n   >   0   & &   t y p e   >   O P _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( ( e x p i r a t i o n   -   T i m e C u r r e n t ( ) )   <   ( 1 1   *   6 0 ) ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " E x p i r a t i o n   t i m e   c a n n o t   b e   l e s s   t h a n   1 1   m i n u t e s ,   s o   i t   w a s   a u t o m a t i c a l l y   m o d i f i e d   t o   1 1   m i n u t e s .   T h e   p e n d i n g   o r d e r   w i l l   b e   d e l e t e d   s o o n e r   b y   a   v i r t u a l   e x p i r a t i o n . " ) ; 
 	 	 	 	 p l a c e E x p i r a t i o n O b j e c t   =   t r u e ; 
 	 	 	 	 e x p i r a t i o n T m p   =   e x p i r a t i o n ; 
 	 	 	 	 e x p i r a t i o n   =   T i m e C u r r e n t ( )   +   ( 1 1   *   6 0 ) ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e   i f   ( e x p i r a t i o n   >   0   & &   t y p e   < =   O P _ S E L L ) 
 	 	 { 
 	 	 	 e x p i r a t i o n T m p   =   e x p i r a t i o n ; 
 	 	 } 
 
 	 	 / / - -   f i x   p r i c e s   b y   t i c k s i z e 
 	 	 o p   =   M a t h R o u n d ( o p   /   t i c k s i z e )   *   t i c k s i z e ; 
 	 	 s l   =   M a t h R o u n d ( s l   /   t i c k s i z e )   *   t i c k s i z e ; 
 	 	 t p   =   M a t h R o u n d ( t p   /   t i c k s i z e )   *   t i c k s i z e ; 
 
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 R e s e t L a s t E r r o r ( ) ; 
 
 	 	 t i c k e t   =   O r d e r S e n d ( 
 	 	 	 s y m b o l , 
 	 	 	 t y p e , 
 	 	 	 l o t s , 
 	 	 	 o p , 
 	 	 	 ( i n t ) ( s l i p p a g e   *   P i p V a l u e ( s y m b o l ) ) , 
 	 	 	 s l , 
 	 	 	 t p , 
 	 	 	 c o m m e n t , 
 	 	 	 m a g i c , 
 	 	 	 e x p i r a t i o n , 
 	 	 	 a r r o w c o l o r 
 	 	 ) ; 
 	 	 
 	 	 i f   ( p l a c e E x p i r a t i o n O b j e c t )   { 
 	 	 	 e x p i r a t i o n   =   e x p i r a t i o n T m p ; 
 	 	 } 
 
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 s t r i n g   m s g _ p r e f i x   =   ( t y p e   >   O P _ S E L L )   ?   " N e w   o r d e r   e r r o r "   :   " N e w   t r a d e   e r r o r " ; 
 
 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   m s g _ p r e f i x ) ; 
 
 	 	 s w i t c h ( e r r a c t i o n ) 
 	 	 { 
 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 } 
 
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( t i c k e t   >   0 ) 
 	 	 { 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ; 
 	 	 	 } 
 
 	 	 	 / / - -   s h o w   s o m e   i n f o 
 	 	 	 d o u b l e   s l i p   =   0 ; 
 
 	 	 	 i f   ( O r d e r S e l e c t ( t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) ) 
 	 	 	 { 
 	 	 	 	 i f   ( p l a c e E x p i r a t i o n O b j e c t ) 
 	 	 	 	 { 
 	 	 	 	 	 e x p i r a t i o n W o r k e r . S e t E x p i r a t i o n ( t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( 
 	 	 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) 
 	 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) 
 	 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) 
 	 	 	 	 )   { 
 	 	 	 	 	 s l i p   =   O r d e r O p e n P r i c e ( )   -   o p ; 
 
 	 	 	 	 	 P r i n t ( 
 	 	 	 	 	 	 " O p e r a t i o n   d e t a i l s :   S p e e d   " , 
 	 	 	 	 	 	 ( G e t T i c k C o u n t ( )   -   t i m e 0 ) , 
 	 	 	 	 	 	 "   m s   |   S l i p p a g e   " , 
 	 	 	 	 	 	 D o u b l e T o S t r ( t o P i p s ( s l i p ,   s y m b o l ) ,   1 ) , 
 	 	 	 	 	 	 "   p i p s " 
 	 	 	 	 	 ) ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 / / - -   f i x   s t o p s   i n   c a s e   o f   s l i p p a g e 
 	 	 	 i f   ( 
 	 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) 
 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) 
 	 	 	 	 & & ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) 
 	 	 	 )   { 
 	 	 	 	 s l i p   =   N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) ,   d i g i t s )   -   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
 
 	 	 	 	 i f   ( s l i p   ! =   0   & &   ( O r d e r S t o p L o s s ( )   ! =   0   | |   O r d e r T a k e P r o f i t ( )   ! =   0 ) ) 
 	 	 	 	 { 
 	 	 	 	 	 P r i n t ( " C o r r e c t i n g   s t o p s   b e c a u s e   o f   s l i p p a g e . . . " ) ; 
 
 	 	 	 	 	 s l   =   O r d e r S t o p L o s s ( ) ; 
 	 	 	 	 	 t p   =   O r d e r T a k e P r o f i t ( ) ; 
 
 	 	 	 	 	 i f   ( s l   ! =   0   | |   t p   ! =   0 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( s l   ! =   0 )   { s l   =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( )   +   s l i p ,   d i g i t s ) ; } 
 	 	 	 	 	 	 i f   ( t p   ! =   0 )   { t p   =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( )   +   s l i p ,   d i g i t s ) ; } 
 
 	 	 	 	 	 	 M o d i f y O r d e r ( t i c k e t ,   O r d e r O p e n P r i c e ( ) ,   s l ,   t p ,   0 ,   0 ,   0 ,   C L R _ N O N E ,   f a l s e ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 O n T r a d e ( ) ; 
 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 b r e a k ; 
 	 } 
 
 	 i f   ( o c o   = =   t r u e   & &   t i c k e t   >   0 ) 
 	 { 
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 { 
 	 	 	 s l   =   v s l ; 
 	 	 	 t p   =   v t p ; 
 	 	 } 
 
 	 	 s l   =   ( s l   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - s l ) ,   d i g i t s )   :   0 ; 
 	 	 t p   =   ( t p   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - t p ) ,   d i g i t s )   :   0 ; 
 
 	 	 i n t   t y p e o c o   =   t y p e ; 
 
 	 	 i f   ( t y p e o c o   = =   O P _ B U Y S T O P ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O P _ S E L L S T O P ; 
 	 	 	 o p   =   b i d   -   M a t h A b s ( o p   -   a s k ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O P _ B U Y L I M I T ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O P _ S E L L L I M I T ; 
 	 	 	 o p   =   b i d   +   M a t h A b s ( o p   -   a s k ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O P _ S E L L S T O P ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O P _ B U Y S T O P ; 
 	 	 	 o p   =   a s k   +   M a t h A b s ( o p   -   b i d ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O P _ S E L L L I M I T ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O P _ B U Y L I M I T ; 
 	 	 	 o p   =   a s k   -   M a t h A b s ( o p   -   b i d ) ; 
 	 	 } 
 
 	 	 i f   ( t y p e o c o   = =   O P _ B U Y S T O P   | |   t y p e o c o   = =   O P _ B U Y L I M I T ) 
 	 	 { 
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   -   s l   :   0 ; 
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   +   t p   :   0 ; 
 	 	 	 a r r o w c o l o r   =   c l r B l u e ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   +   s l   :   0 ; 
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   -   t p   :   0 ; 
 	 	 	 a r r o w c o l o r   =   c l r R e d ; 
 	 	 } 
 
 	 	 c o m m e n t   =   " [ o c o : "   +   ( s t r i n g ) t i c k e t   +   " ] " ; 
 
 	 	 O r d e r C r e a t e ( s y m b o l ,   t y p e o c o ,   l o t s ,   o p ,   s l ,   t p ,   0 ,   0 ,   s l i p p a g e ,   m a g i c ,   c o m m e n t ,   a r r o w c o l o r ,   e x p i r a t i o n ,   f a l s e ) ; 
 	 } 
 
 	 r e t u r n   t i c k e t ; 
 }  
  
 / * * 
 *   T h i s   i s   a   r e p l a c e m e n t   f o r   t h e   s y s t e m   f u n c t i o n . 
 *   T h e   d i f f e r e n c e   i s   t h a t   t h i s   c a n   a l s o   g e t   t h e   e x p i r a t i o n   f o r   t r a d e s . 
 * / 
 d a t e t i m e   O r d e r E x p i r a t i o n ( b o o l   c h e c k _ t r a d e ) 
 { 
 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 
 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L ) 
 	 { 
 	 	 e x p i r a t i o n   =   O r d e r E x p i r a t i o n ( ) ; 
 	 } 
 	 e l s e   i f   ( c h e c k _ t r a d e ) 
 	 { 
 	 	 e x p i r a t i o n   =   ( d a t e t i m e ) e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( O r d e r T i c k e t ( ) ) ; 
 	 } 
 
 	 r e t u r n   e x p i r a t i o n ; 
 }  
  
 / * * 
 *   T h i s   i s   a   r e p l a c e m e n t   f o r   t h e   s y s t e m   f u n c t i o n . 
 *   T h e   d i f f e r e n c e   i s   t h a t   t h i s   c a n   a l s o   g e t   t h e   e x p i r a t i o n   f o r   t r a d e s . 
 * / 
 d a t e t i m e   O r d e r E x p i r a t i o n T i m e ( ) 
 { 
 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 
 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L ) 
 	 { 
 	 	 e x p i r a t i o n   =   O r d e r E x p i r a t i o n ( ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 e x p i r a t i o n   =   ( d a t e t i m e ) e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( O r d e r T i c k e t ( ) ) ; 
 	 } 
 
 	 r e t u r n   e x p i r a t i o n ; 
 }  
  
 b o o l   O r d e r M o d i f i e d ( u l o n g   t i c k e t   =   0 ,   s t r i n g   a c t i o n   =   " s e t " ) 
 { 
 	 s t a t i c   u l o n g   m e m o r y [ ] ; 
 
 	 i f   ( t i c k e t   = =   0 ) 
 	 { 
 	 	 t i c k e t   =   O r d e r T i c k e t ( ) ; 
 	 	 a c t i o n   =   " g e t " ; 
 	 } 
 	 e l s e   i f   ( t i c k e t   >   0   & &   a c t i o n   ! =   " c l e a r " ) 
 	 { 
 	 	 a c t i o n   =   " s e t " ; 
 	 } 
 
 	 b o o l   m o d i f i e d _ s t a t u s   =   I n A r r a y ( m e m o r y ,   t i c k e t ) ; 
 	 
 	 i f   ( a c t i o n   = =   " g e t " ) 
 	 { 
 	 	 r e t u r n   m o d i f i e d _ s t a t u s ; 
 	 } 
 	 e l s e   i f   ( a c t i o n   = =   " s e t " ) 
 	 { 
 	 	 A r r a y E n s u r e V a l u e ( m e m o r y ,   t i c k e t ) ; 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 	 e l s e   i f   ( a c t i o n   = =   " c l e a r " ) 
 	 { 
 	 	 A r r a y S t r i p V a l u e ( m e m o r y ,   t i c k e t ) ; 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   P e n d i n g O r d e r S e l e c t B y T i c k e t ( u l o n g   t i c k e t ) 
 { 
 	 i f   ( O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   & &   O r d e r T y p e ( )   >   1 ) 
 	 { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 d o u b l e   P i p V a l u e ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   C u s t o m P o i n t ( s y m b o l )   /   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 }  
  
 i n t   S e c o n d s F r o m C o m p o n e n t s ( d o u b l e   d a y s ,   d o u b l e   h o u r s ,   d o u b l e   m i n u t e s ,   i n t   s e c o n d s ) 
 { 
 	 i n t   r e t v a l   = 
 	 	 8 6 4 0 0   *   ( i n t ) M a t h F l o o r ( d a y s ) 
 	 	 +   3 6 0 0   *   ( i n t ) ( M a t h F l o o r ( h o u r s )   +   ( 2 4   *   ( d a y s   -   M a t h F l o o r ( d a y s ) ) ) ) 
 	 	 +   6 0   *   ( i n t ) ( M a t h F l o o r ( m i n u t e s )   +   ( 6 0   *   ( h o u r s   -   M a t h F l o o r ( h o u r s ) ) ) ) 
 	 	 +   ( i n t ) ( ( d o u b l e ) s e c o n d s   +   ( 6 0   *   ( m i n u t e s   -   M a t h F l o o r ( m i n u t e s ) ) ) ) ; 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 i n t   S e l l N o w ( 
 	 s t r i n g   s y m b o l , 
 	 d o u b l e   l o t s , 
 	 d o u b l e   s l l , 
 	 d o u b l e   t p l , 
 	 d o u b l e   s l p , 
 	 d o u b l e   t p p , 
 	 d o u b l e   s l i p p a g e   =   0 , 
 	 i n t   m a g i c   =   0 , 
 	 s t r i n g   c o m m e n t   =   " " , 
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 
 	 ) 
 { 
 	 r e t u r n   O r d e r C r e a t e ( 
 	 	 s y m b o l , 
 	 	 O P _ S E L L , 
 	 	 l o t s , 
 	 	 0 , 
 	 	 s l l , 
 	 	 t p l , 
 	 	 s l p , 
 	 	 t p p , 
 	 	 s l i p p a g e , 
 	 	 m a g i c , 
 	 	 c o m m e n t , 
 	 	 a r r o w c o l o r , 
 	 	 e x p i r a t i o n 
 	 ) ; 
 }  
  
 b o o l   S k i p T h e P a s s ( b o o l   s e t = f a l s e )  
 {  
       s t a t i c   i n t   m e m _ f i d = 0 ;  
       s t a t i c   b o o l   m e m = f a l s e ;  
       i f   ( s e t = = t r u e )   {  
             m e m = t r u e ;  
             m e m _ f i d = F X D _ C U R R E N T _ F U N C T I O N _ I D ;  
       }  
       e l s e   {  
             i f   ( m e m _ f i d ! = F X D _ C U R R E N T _ F U N C T I O N _ I D )   {  
                   m e m = f a l s e ;   / /   r e s e t  
                   r e t u r n ( f a l s e ) ;  
             }  
             i f   ( m e m = = t r u e )   {  
                   m e m = f a l s e ;   / /   r e s e t  
                   r e t u r n ( t r u e ) ;  
             }  
       }  
       r e t u r n ( m e m ) ;  
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 v o i d   S t r i n g E x p l o d e ( s t r i n g   d e l i m i t e r ,   s t r i n g   i n p u t S t r i n g ,   T   & o u t p u t [ ] ) 
 { 
 	 i n t   b e g i n       =   0 ; 
 	 i n t   e n d           =   0 ; 
 	 i n t   e l e m e n t   =   0 ; 
 	 i n t   l e n g t h     =   S t r i n g L e n ( i n p u t S t r i n g ) ; 
 	 i n t   l e n g t h _ d e l i m i t e r   =   S t r i n g L e n ( d e l i m i t e r ) ; 
 	 T   e m p t y _ v a l     =   ( t y p e n a m e ( T )   = =   " s t r i n g " )   ?   ( T ) " "   :   ( T ) 0 ; 
 
 	 i f   ( l e n g t h   >   0 ) 
 	 { 
 	 	 w h i l e   ( t r u e ) 
 	 	 { 
 	 	 	 e n d   =   S t r i n g F i n d ( i n p u t S t r i n g ,   d e l i m i t e r ,   b e g i n ) ; 
 
 	 	 	 A r r a y R e s i z e ( o u t p u t ,   e l e m e n t   +   1 ) ; 
 	 	 	 o u t p u t [ e l e m e n t ]   =   e m p t y _ v a l ; 
 	 
 	 	 	 i f   ( e n d   ! =   - 1 ) 
 	 	 	 { 
 	 	 	 	 i f   ( e n d   >   b e g i n ) 
 	 	 	 	 { 
 	 	 	 	 	 o u t p u t [ e l e m e n t ]   =   ( T ) S t r i n g S u b s t r ( i n p u t S t r i n g ,   b e g i n ,   e n d   -   b e g i n ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 o u t p u t [ e l e m e n t ]   =   ( T ) S t r i n g S u b s t r ( i n p u t S t r i n g ,   b e g i n ,   l e n g t h   -   b e g i n ) ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 	 
 	 	 	 b e g i n   =   e n d   +   1   +   ( l e n g t h _ d e l i m i t e r   -   1 ) ; 
 	 	 	 e l e m e n t + + ; 
 	 	 } 
 	 } 
 	 e l s e 
 	 { 
 	 	 A r r a y R e s i z e ( o u t p u t ,   1 ) ; 
 	 	 o u t p u t [ e l e m e n t ]   =   e m p t y _ v a l ; 
 	 } 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 s t r i n g   S t r i n g I m p l o d e ( s t r i n g   d e l i m e t e r ,   T   & a r r a y [ ] ) 
 { 
       s t r i n g   r e t v a l   =   " " ; 
       i n t   s i z e             =   A r r a y S i z e ( a r r a y ) ; 
 
       f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 { 
             r e t v a l   =   S t r i n g C o n c a t e n a t e ( r e t v a l ,   ( s t r i n g ) a r r a y [ i ] ,   d e l i m e t e r ) ; 
       } 
 	 
       r e t u r n   S t r i n g S u b s t r ( r e t v a l ,   0 ,   ( S t r i n g L e n ( r e t v a l )   -   S t r i n g L e n ( d e l i m e t e r ) ) ) ; 
 }  
  
 d a t e t i m e   S t r i n g T o T i m e E x ( s t r i n g   s t r ,   s t r i n g   m o d e = " s e r v e r " ) 
 { 
 	 / /   m o d e :   s e r v e r ,   l o c a l ,   g m t 
 	 i n t   o f f s e t   =   0 ; 
 
 	 i f   ( m o d e   = =   " s e r v e r " )   { o f f s e t   =   0 ; } 
 	 e l s e   i f   ( m o d e   = =   " l o c a l " )   { o f f s e t   =   ( i n t ) ( T i m e L o c a l ( )   -   T i m e C u r r e n t ( ) ) ; } 
 	 e l s e   i f   ( m o d e   = =   " g m t " )   { o f f s e t   =   ( i n t ) ( T i m e G M T ( )   -   T i m e C u r r e n t ( ) ) ; } 
 
 	 d a t e t i m e   t i m e   =   S t r i n g T o T i m e ( s t r )   -   o f f s e t ; 
 
 	 r e t u r n   t i m e ; 
 }  
  
 s t r i n g   S t r i n g T r i m ( s t r i n g   t e x t ) 
 { 
       t e x t   =   S t r i n g T r i m R i g h t ( t e x t ) ; 
       t e x t   =   S t r i n g T r i m L e f t ( t e x t ) ; 
 	 
 	 r e t u r n   t e x t ; 
 }  
  
 d o u b l e   S y m b o l A s k ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 }  
  
 d o u b l e   S y m b o l B i d ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 }  
  
 i n t   S y m b o l D i g i t s ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 }  
  
 i n t   S y m b o l s L i s t ( s t r i n g   & s y m b o l s [ ] ,   b o o l   s e l e c t e d ) 
 { 
 	 s t a t i c   s t r i n g   m e m o r y [ ] ; 
 	 s t a t i c   i n t   s y m b o l s _ c o u n t ; 
 	 s t a t i c   b o o l   d o _ r e a d   =   t r u e ; 
 
 	 / / - -   r e a d   a l l   s y m b o l s   o n c e ,   o r   r e a d   t h e m   e v e r y   t i m e   i f   s e l e c t e d = = t r u e 
 	 i f   ( d o _ r e a d   = =   t r u e   | |   s e l e c t e d   = =   t r u e ) 
 	 { 
 	 	 d o _ r e a d   =   f a l s e ; 
 
 	 	 s y m b o l s _ c o u n t   =   S y m b o l s T o t a l ( s e l e c t e d ) ; 
 
 	 	 i n t   s   =   0 ; 
 
 	 	 f o r ( i n t   i   =   0 ;   i   <   s y m b o l s _ c o u n t ;   i + + ) 
 	 	 { 
 	 	 	 s t r i n g   s y m b o l   =   S y m b o l N a m e ( i ,   s e l e c t e d ) ; 
 
 	 	 	 i f   ( S t r i n g L e n ( s y m b o l )   >   0   / *   a d d   a n o t h e r   c o n d i t i o n   h e r e   i f   n e e d e d   * / ) 
 	 	 	 { 
 	 	 	 	 A r r a y R e s i z e ( m e m o r y ,   s + 1 ) ; 
 	 	 	 	 m e m o r y [ s ]   =   s y m b o l ; 
 	 	 	 	 s + + ; 
 	 	 	 } 
 	 	 } 
 
 	 	 s y m b o l s _ c o u n t   =   s ; 
 	 } 
 
 	 A r r a y C o p y ( s y m b o l s , m e m o r y ) ; 
 
 	 r e t u r n   s y m b o l s _ c o u n t ; 
 }  
  
 d o u b l e   T i c k s D a t a ( s t r i n g   s y m b o l   =   " " ,   i n t   t y p e   =   0 ,   i n t   s h i f t   =   0 ) 
 { 
 	 s t a t i c   b o o l   c o l l e c t i n g _ t i c k s   =   f a l s e ; 
 	 s t a t i c   s t r i n g   s y m b o l s [ ] ; 
 	 s t a t i c   i n t   z e r o _ s i d [ ] ; 
 	 s t a t i c   d o u b l e   m e m o r y A S K [ ] [ 1 0 0 ] ; 
 	 s t a t i c   d o u b l e   m e m o r y B I D [ ] [ 1 0 0 ] ; 
 
 	 i n t   s i d   =   0 ,   s i z e   =   0 ,   i   =   0 ,   i d   =   0 ; 
 	 d o u b l e   a s k   =   0 ,   b i d   =   0 ,   r e t v a l   =   0 ; 
 	 b o o l   e x i s t s   =   f a l s e ; 
 
 	 i f   ( A r r a y S i z e ( s y m b o l s )   = =   0 ) 
 	 { 
 	 	 A r r a y R e s i z e ( s y m b o l s ,   1 ) ; 
 	 	 A r r a y R e s i z e ( z e r o _ s i d ,   1 ) ; 
 	 	 A r r a y R e s i z e ( m e m o r y A S K ,   1 ) ; 
 	 	 A r r a y R e s i z e ( m e m o r y B I D ,   1 ) ; 
 
 	 	 s y m b o l s [ 0 ]   =   _ S y m b o l ; 
 	 } 
 
 	 i f   ( t y p e   >   0   & &   s h i f t   >   0 ) 
 	 { 
 	 	 c o l l e c t i n g _ t i c k s   =   t r u e ; 
 	 } 
 
 	 i f   ( c o l l e c t i n g _ t i c k s   = =   f a l s e ) 
 	 { 
 	 	 i f   ( t y p e   >   0   & &   s h i f t   = =   0 ) 
 	 	 { 
 	 	 	 / /   g o i n g   t o   g e t   t i c k s 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 r e t u r n   0 ; 
 	 	 } 
 	 } 
 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   _ S y m b o l ; 
 
 	 i f   ( t y p e   = =   0 ) 
 	 { 
 	 	 e x i s t s   =   f a l s e ; 
 	 	 s i z e       =   A r r a y S i z e ( s y m b o l s ) ; 
 
 	 	 i f   ( s i z e   = =   0 )   { A r r a y R e s i z e ( s y m b o l s ,   1 ) ; } 
 
 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l ) 
 	 	 	 { 
 	 	 	 	 e x i s t s   =   t r u e ; 
 	 	 	 	 s i d         =   i ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( e x i s t s   = =   f a l s e ) 
 	 	 { 
 	 	 	 i n t   n e w s i z e   =   A r r a y S i z e ( s y m b o l s )   +   1 ; 
 
 	 	 	 A r r a y R e s i z e ( s y m b o l s ,   n e w s i z e ) ; 
 	 	 	 s y m b o l s [ n e w s i z e - 1 ]   =   s y m b o l ; 
 
 	 	 	 A r r a y R e s i z e ( z e r o _ s i d ,   n e w s i z e ) ; 
 	 	 	 A r r a y R e s i z e ( m e m o r y A S K ,   n e w s i z e ) ; 
 	 	 	 A r r a y R e s i z e ( m e m o r y B I D ,   n e w s i z e ) ; 
 
 	 	 	 s i d = n e w s i z e ; 
 	 	 } 
 
 	 	 i f   ( s i d   > =   0 ) 
 	 	 { 
 	 	 	 a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 	 b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 
 	 	 	 i f   ( b i d   = =   0   & &   M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " T i c k s   d a t a   c o l l e c t o r   e r r o r :   "   +   s y m b o l   +   "   c a n n o t   b e   b a c k t e s t e d .   O n l y   t h e   c u r r e n t   s y m b o l   c a n   b e   b a c k t e s t e d .   T h e   E A   w i l l   b e   t e r m i n a t e d . " ) ; 
 	 	 	 	 E x p e r t R e m o v e ( ) ; 
 	 	 	 } 
 
 	 	 	 i f   ( 
 	 	 	 	       s y m b o l   = =   _ S y m b o l 
 	 	 	 	 | |   a s k   ! =   m e m o r y A S K [ s i d ] [ 0 ] 
 	 	 	 	 | |   b i d   ! =   m e m o r y B I D [ s i d ] [ 0 ] 
 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 m e m o r y A S K [ s i d ] [ z e r o _ s i d [ s i d ] ]   =   a s k ; 
 	 	 	 	 m e m o r y B I D [ s i d ] [ z e r o _ s i d [ s i d ] ]   =   b i d ; 
 	 	 	 	 z e r o _ s i d [ s i d ]                                   =   z e r o _ s i d [ s i d ]   +   1 ; 
 
 	 	 	 	 i f   ( z e r o _ s i d [ s i d ]   = =   1 0 0 ) 
 	 	 	 	 { 
 	 	 	 	 	 z e r o _ s i d [ s i d ]   =   0 ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( s h i f t   < =   0 ) 
 	 	 { 
 	 	 	 i f   ( t y p e   = =   S Y M B O L _ A S K ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 	 } 
 	 	 	 e l s e   i f   ( t y p e   = =   S Y M B O L _ B I D ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;   
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 d o u b l e   m i d   =   ( ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K )   +   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) )   /   2 ) ; 
 
 	 	 	 	 r e t u r n   m i d ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s i z e   =   A r r a y S i z e ( s y m b o l s ) ; 
 
 	 	 	 f o r   ( i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l ) 
 	 	 	 	 { 
 	 	 	 	 	 s i d   =   i ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( s h i f t   <   1 0 0 ) 
 	 	 	 { 
 	 	 	 	 i d   =   z e r o _ s i d [ s i d ]   -   s h i f t   -   1 ; 
 
 	 	 	 	 i f ( i d   <   0 )   { i d   =   i d   +   1 0 0 ; } 
 
 	 	 	 	 i f   ( t y p e   = =   S Y M B O L _ A S K ) 
 	 	 	 	 { 
 	 	 	 	 	 r e t v a l   =   m e m o r y A S K [ s i d ] [ i d ] ; 
 
 	 	 	 	 	 i f   ( r e t v a l   = =   0 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 r e t v a l   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 	 e l s e   i f   ( t y p e   = =   S Y M B O L _ B I D ) 
 	 	 	 	 { 
 	 	 	 	 	 r e t v a l   =   m e m o r y B I D [ s i d ] [ i d ] ; 
 
 	 	 	 	 	 i f   ( r e t v a l   = =   0 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 r e t v a l   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 i n t   T i c k s P e r S e c o n d ( b o o l   g e t _ m a x   =   f a l s e ,   b o o l   s e t   =   f a l s e ) 
 { 
 	 s t a t i c   d a t e t i m e   t i m e 0   =   0 ; 
 	 s t a t i c   i n t   t i c k s             =   0 ; 
 	 s t a t i c   i n t   t p s                 =   0 ; 
 	 s t a t i c   i n t   t p s m a x           =   0 ; 
 
 	 d a t e t i m e   t i m e 1   =   T i m e L o c a l ( ) ; 
 
 	 i f   ( s e t   = =   t r u e ) 
 	 { 
 	 	 i f   ( t i m e 1   >   t i m e 0 ) 
 	 	 { 
 	 	 	 i f   ( t i m e 1   -   t i m e 0   >   1 ) 
 	 	 	 { 
 	 	 	 	 t p s   =   0 ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 t p s   =   t i c k s ; 
 	 	 	 } 
 
 	 	 	 t i m e 0   =   t i m e 1 ; 
 	 	 	 t i c k s   =   0 ; 
 	 	 } 
 
 	 	 t i c k s + + ; 
 
 	 	 i f   ( t p s   >   t p s m a x )   { t p s m a x   =   t p s ; } 
 	 } 
 
 	 i f   ( g e t _ m a x ) 
 	 { 
 	 	 r e t u r n   t p s m a x ; 
 	 } 
 
 	 r e t u r n   t p s ; 
 }  
  
 d a t e t i m e   T i m e A t S t a r t ( s t r i n g   c m d   =   " s e r v e r " ) 
 { 
 	 s t a t i c   d a t e t i m e   l o c a l     =   0 ; 
 	 s t a t i c   d a t e t i m e   s e r v e r   =   0 ; 
 
 	 i f   ( c m d   = =   " l o c a l " ) 
 	 { 
 	 	 r e t u r n   l o c a l ; 
 	 } 
 	 e l s e   i f   ( c m d   = =   " s e r v e r " ) 
 	 { 
 	 	 r e t u r n   s e r v e r ; 
 	 } 
 	 e l s e   i f   ( c m d   = =   " s e t " ) 
 	 { 
 	 	 l o c a l     =   T i m e L o c a l ( ) ; 
 	 	 s e r v e r   =   T i m e C u r r e n t ( ) ; 
 	 } 
 
 	 r e t u r n   0 ; 
 }  
  
 d a t e t i m e   T i m e F r o m C o m p o n e n t s ( 
 	 i n t   t i m e _ s r c   =   0 , 
 	 i n t         y   =   0 , 
 	 i n t         m   =   0 , 
 	 d o u b l e   d   =   0 , 
 	 d o u b l e   h   =   0 , 
 	 d o u b l e   i   =   0 , 
 	 i n t         s   =   0 
 )   { 
 	 M q l D a t e T i m e   t m ; 
 	 i n t   o f f s e t   =   0 ; 
 
 	 i f   ( t i m e _ s r c   = =   0 )   { 
 	 	 T i m e C u r r e n t ( t m ) ; 
 	 } 
 	 e l s e   i f   ( t i m e _ s r c   = =   1 )   { 
 	 	 T i m e L o c a l ( t m ) ;   
 	 	 o f f s e t   =   ( i n t ) ( T i m e L o c a l ( )   -   T i m e C u r r e n t ( ) ) ; 
 	 } 
 	 e l s e   i f   ( t i m e _ s r c   = =   2 )   { 
 	 	 T i m e G M T ( t m ) ; 
 	 	 o f f s e t   =   ( i n t ) ( T i m e G M T ( )   -   T i m e C u r r e n t ( ) ) ; 
 	 } 
 
 	 i f   ( y   >   0 ) 
 	 { 
 	 	 i f   ( y   <   1 0 0 )   { y   =   2 0 0 0   +   y ; } 
 	 	 t m . y e a r   =   y ; 
 	 } 
 	 i f   ( m   >   0 )   { t m . m o n   =   m ; } 
 	 i f   ( d   >   0 )   { t m . d a y   =   ( i n t ) M a t h F l o o r ( d ) ; } 
 
 	 t m . h o u r   =   ( i n t ) ( M a t h F l o o r ( h )   +   ( 2 4   *   ( d   -   M a t h F l o o r ( d ) ) ) ) ; 
 	 t m . m i n     =   ( i n t ) ( M a t h F l o o r ( i )   +   ( 6 0   *   ( h   -   M a t h F l o o r ( h ) ) ) ) ; 
 	 t m . s e c     =   ( i n t ) ( ( d o u b l e ) s   +   ( 6 0   *   ( i   -   M a t h F l o o r ( i ) ) ) ) ; 
 	 
 	 d a t e t i m e   t i m e   =   S t r u c t T o T i m e ( t m )   -   o f f s e t ; 
 
 	 r e t u r n   t i m e ; 
 }  
  
 d a t e t i m e   T i m e F r o m S t r i n g ( i n t   m o d e _ t i m e ,   s t r i n g   s t a m p ) 
 { 
 	 d a t e t i m e   t   =   0 ; 
 
 	           i f   ( m o d e _ t i m e   = =   0 )   t   =   T i m e C u r r e n t ( ) ; 
 	 e l s e   i f   ( m o d e _ t i m e   = =   1 )   t   =   T i m e L o c a l ( ) ; 
 	 e l s e   i f   ( m o d e _ t i m e   = =   2 )   t   =   T i m e G M T ( ) ; 
 
 	 i n t   s t a m p l e n   =   S t r i n g L e n ( s t a m p ) ; 
 
 	 i f   ( s t a m p l e n   <   9 ) 
 	 { 
 	 	 i n t   t h o u r         =   T i m e H o u r ( t ) ; 
 	 	 i n t   t m i n u t e     =   T i m e M i n u t e ( t ) ; 
 	 	 i n t   t s e c o n d s   =   T i m e S e c o n d s ( t ) ; 
 
 	 	 i n t   h o u r       =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   0 ,   2 ) ; 
 	 	 i n t   m i n u t e   =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   3 ,   2 ) ; 
 	 	 i n t   s e c o n d   =   0 ; 
 
 	 	 i f   ( s t a m p l e n   >   5 ) 
 	 	 { 
 	 	 	 s e c o n d   =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   6 ,   2 ) ; 
 	 	 } 
 
 	 	 d a t e t i m e   t 1   =   ( d a t e t i m e ) ( t   -   ( t h o u r - h o u r ) * 3 6 0 0   -   ( t m i n u t e   -   m i n u t e ) * 6 0   -   ( t s e c o n d s - s e c o n d ) ) ; 
 
 	 	 r e t u r n   t 1 ; 
 	 } 
 
 	 r e t u r n   S t r i n g T o T i m e ( s t a m p ) ; 
 }  
  
 b o o l   T r a d e S e l e c t B y I n d e x ( 
 	 i n t   i n d e x , 
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " , 
 	 s t r i n g   g r o u p                   =   " 0 " , 
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " , 
 	 s t r i n g   m a r k e t                 =   " " , 
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " 
 )   { 
 	 i f   ( O r d e r S e l e c t ( ( i n t ) i n d e x ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S )   & &   O r d e r T y p e ( )   <   2 ) 
 	 { 
 	 	 i f   ( F i l t e r O r d e r B y ( 
 	 	 	 g r o u p _ m o d e , 
 	 	 	 g r o u p , 
 	 	 	 m a r k e t _ m o d e , 
 	 	 	 m a r k e t , 
 	 	 	 B u y s O r S e l l s , 
 	 	 	 " b o t h " , 
 	 	 	 0 ) 
 	 	 )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   T r a d e S e l e c t B y T i c k e t ( u l o n g   t i c k e t ) 
 { 
 	 i f   ( O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   & &   O r d e r T y p e ( )   <   2 ) 
 	 { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 i n t   T r a d e s T o t a l ( ) 
 { 
 	 r e t u r n   O r d e r s T o t a l ( ) ; 
 }  
  
 d o u b l e   V i r t u a l S t o p s D r i v e r ( 
 	 s t r i n g   c o m m a n d   =   " " , 
 	 u l o n g   t i               =   0 , 
 	 d o u b l e   s l             =   0 , 
 	 d o u b l e   t p             =   0 , 
 	 d o u b l e   s l p           =   0 , 
 	 d o u b l e   t p p           =   0 
 ) 
 { 
 	 s t a t i c   b o o l   i n i t i a l i z e d           =   f a l s e ; 
 	 s t a t i c   s t r i n g   n a m e                     =   " " ; 
 	 s t a t i c   s t r i n g   l o o p _ n a m e [ 2 ]     =   { " s l " ,   " t p " } ; 
 	 s t a t i c   c o l o r     l o o p _ c o l o r [ 2 ]   =   { D e e p P i n k ,   D o d g e r B l u e } ; 
 	 s t a t i c   d o u b l e   l o o p _ p r i c e [ 2 ]   =   { 0 ,   0 } ; 
 	 s t a t i c   u l o n g   m e m _ t o _ t i [ ] ;   / /   t i c k e t s 
 	 s t a t i c   i n t   m e m _ t o [ ] ;             / /   t i m e o u t s 
 	 s t a t i c   b o o l   t r a d e _ p a s s   =   f a l s e ; 
 	 i n t   i   =   0 ; 
 
 	 / /   A r e   V i r t u a l   S t o p s   e v e n   e n a b l e d ? 
 	 i f   ( ! U S E _ V I R T U A L _ S T O P S ) 
 	 { 
 	 	 r e t u r n   0 ; 
 	 } 
 	 
 	 i f   ( i n i t i a l i z e d   = =   f a l s e   | |   c o m m a n d   = =   " i n i t i a l i z e " ) 
 	 { 
 	 	 i n i t i a l i z e d   =   t r u e ; 
 	 } 
 
 	 / /   L i s t e n 
 	 i f   ( c o m m a n d   = =   " "   | |   c o m m a n d   = =   " l i s t e n " ) 
 	 { 
 	 	 i n t   t o t a l           =   O b j e c t s T o t a l ( 0 ,   - 1 ,   O B J _ H L I N E ) ; 
 	 	 i n t   l e n g t h         =   0 ; 
 	 	 c o l o r   c l r           =   c l r N O N E ; 
 	 	 i n t   s l t p             =   0 ; 
 	 	 u l o n g   t i c k e t     =   0 ; 
 	 	 d o u b l e   l e v e l     =   0 ; 
 	 	 d o u b l e   a s k b i d   =   0 ; 
 	 	 i n t   p o l a r i t y     =   0 ; 
 	 	 s t r i n g   s y m b o l   =   " " ; 
 
 	 	 f o r   ( i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - ) 
 	 	 { 
 	 	 	 n a m e   =   O b j e c t N a m e ( 0 ,   i ,   - 1 ,   O B J _ H L I N E ) ;   / /   f o r   e x a m p l e :   # 1   s l 
 
 	 	 	 i f   ( S t r i n g S u b s t r ( n a m e ,   0 ,   1 )   ! =   " # " ) 
 	 	 	 { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 l e n g t h   =   S t r i n g L e n ( n a m e ) ; 
 
 	 	 	 i f   ( l e n g t h   <   5 ) 
 	 	 	 { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 c l r   =   ( c o l o r ) O b j e c t G e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ) ; 
 
 	 	 	 i f   ( c l r   ! =   l o o p _ c o l o r [ 0 ]   & &   c l r   ! =   l o o p _ c o l o r [ 1 ] ) 
 	 	 	 { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 s t r i n g   l a s t _ s y m b o l s   =   S t r i n g S u b s t r ( n a m e ,   l e n g t h - 2 ,   2 ) ; 
 
 	 	 	 i f   ( l a s t _ s y m b o l s   = =   " s l " ) 
 	 	 	 { 
 	 	 	 	 s l t p   =   - 1 ; 
 	 	 	 } 
 	 	 	 e l s e   i f   ( l a s t _ s y m b o l s   = =   " t p " ) 
 	 	 	 { 
 	 	 	 	 s l t p   =   1 ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 c o n t i n u e ; 	 
 	 	 	 } 
 
 	 	 	 u l o n g   t i c k e t 0   =   S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( n a m e ,   1 ,   l e n g t h   -   4 ) ) ; 
 
 	 	 	 / /   p r e v e n t   l o a d i n g   t h e   s a m e   t i c k e t   n u m b e r   t w i c e   i n   a   r o w 
 	 	 	 i f   ( t i c k e t 0   ! =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 t i c k e t   =   t i c k e t 0 ; 
 
 	 	 	 	 i f   ( T r a d e S e l e c t B y T i c k e t ( t i c k e t ) ) 
 	 	 	 	 { 
 	 	 	 	 	 s y m b o l           =   O r d e r S y m b o l ( ) ; 
 	 	 	 	 	 p o l a r i t y       =   ( O r d e r T y p e ( )   = =   0 )   ?   1   :   - 1 ; 
 	 	 	 	 	 a s k b i d       =   ( O r d e r T y p e ( )   = =   0 )   ?   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D )   :   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 	 	 	 
 	 	 	 	 	 t r a d e _ p a s s   =   t r u e ; 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 t r a d e _ p a s s   =   f a l s e ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( t r a d e _ p a s s ) 
 	 	 	 { 
 	 	 	 	 l e v e l         =   O b j e c t G e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ) ; 
 
 	 	 	 	 i f   ( l e v e l   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 / /   p o l a r i z e   l e v e l s 
 	 	 	 	 	 d o u b l e   l e v e l _ p     =   p o l a r i t y   *   l e v e l ; 
 	 	 	 	 	 d o u b l e   a s k b i d _ p   =   p o l a r i t y   *   a s k b i d ; 
 
 	 	 	 	 	 i f   ( 
 	 	 	 	 	 	       ( s l t p   = =   - 1   & &   ( l e v e l _ p   -   a s k b i d _ p )   > =   0 )   / /   s l 
 	 	 	 	 	 	 | |   ( s l t p   = =   1   & &   ( a s k b i d _ p   -   l e v e l _ p )   > =   0 )     / /   t p 
 	 	 	 	 	 ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 / / - -   V i r t u a l   S t o p s   S L   T i m e o u t 
 	 	 	 	 	 	 i f   ( 
 	 	 	 	 	 	 	       ( V I R T U A L _ S T O P S _ T I M E O U T   >   0 ) 
 	 	 	 	 	 	 	 & &   ( s l t p   = =   - 1   & &   ( l e v e l _ p   -   a s k b i d _ p )   > =   0 )   / /   s l 
 	 	 	 	 	 	 ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 / /   s t a r t   t i m e o u t ? 
 	 	 	 	 	 	 	 i n t   i n d e x   =   A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ; 
 
 	 	 	 	 	 	 	 i f   ( i n d e x   <   0 ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 i n t   s i z e   =   A r r a y S i z e ( m e m _ t o _ t i ) ; 
 	 	 	 	 	 	 	 	 A r r a y R e s i z e ( m e m _ t o _ t i ,   s i z e + 1 ) ; 
 	 	 	 	 	 	 	 	 A r r a y R e s i z e ( m e m _ t o ,   s i z e + 1 ) ; 
 	 	 	 	 	 	 	 	 m e m _ t o _ t i [ s i z e ]   =   t i c k e t ; 
 	 	 	 	 	 	 	 	 m e m _ t o [ s i z e ]         =   ( i n t ) T i m e L o c a l ( ) ; 
 
 	 	 	 	 	 	 	 	 P r i n t ( 
 	 	 	 	 	 	 	 	 	 " # " , 
 	 	 	 	 	 	 	 	 	 t i c k e t , 
 	 	 	 	 	 	 	 	 	 "   t i m e o u t   o f   " , 
 	 	 	 	 	 	 	 	 	 V I R T U A L _ S T O P S _ T I M E O U T , 
 	 	 	 	 	 	 	 	 	 "   s e c o n d s   s t a r t e d " 
 	 	 	 	 	 	 	 	 ) ; 
 
 	 	 	 	 	 	 	 	 r e t u r n   0 ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 e l s e 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 i f   ( T i m e L o c a l ( )   -   m e m _ t o [ i n d e x ]   < =   V I R T U A L _ S T O P S _ T I M E O U T ) 
 	 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 	 r e t u r n   0 ; 
 	 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 } 
 
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( t i c k e t ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 / /   c h e c k   t h i s   b e f o r e   d e l e t i n g   t h e   l i n e s 
 	 	 	 	 	 	 	 / / O n T r a d e L i s t e n e r ( ) ; 
 
 	 	 	 	 	 	 	 / /   d e l e t e   o b j e c t s 
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( 0 ,   " # "   +   ( s t r i n g ) t i c k e t   +   "   s l " ) ; 
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( 0 ,   " # "   +   ( s t r i n g ) t i c k e t   +   "   t p " ) ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( V I R T U A L _ S T O P S _ T I M E O U T   >   0 ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 i   =   A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ; 
 
 	 	 	 	 	 	 	 i f   ( i   > =   0 ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 A r r a y S t r i p K e y ( m e m _ t o _ t i ,   i ) ; 
 	 	 	 	 	 	 	 	 A r r a y S t r i p K e y ( m e m _ t o ,   i ) ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 e l s e   i f   ( 
 	 	 	 	 	 ! P e n d i n g O r d e r S e l e c t B y T i c k e t ( t i c k e t ) 
 	 	 	 	 | |   O r d e r C l o s e T i m e ( )   >   0   / /   i n   c a s e   t h e   o r d e r   h a s   b e e n   c l o s e d 
 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 P e n d i n g O r d e r S e l e c t B y T i c k e t ( t i c k e t ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 / /   G e t   S L   o r   T P 
 	 e l s e   i f   ( 
 	 	 t i   >   0 
 	 	 & &   ( 
 	 	 	       c o m m a n d   = =   " g e t   s l " 
 	 	 	 | |   c o m m a n d   = =   " g e t   t p " 
 	 	 ) 
 	 ) 
 	 { 
 	 	 d o u b l e   v a l u e   =   0 ; 
 
 	 	 n a m e   =   " # "   +   I n t e g e r T o S t r i n g ( t i )   +   "   "   +   S t r i n g S u b s t r ( c o m m a n d ,   4 ,   2 ) ; 
 
 	 	 i f   ( O b j e c t F i n d ( 0 ,   n a m e )   >   - 1 ) 
 	 	 { 
 	 	 	 v a l u e   =   O b j e c t G e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ) ; 
 	 	 } 
 
 	 	 r e t u r n   v a l u e ; 
 	 } 
 	 / /   S e t   S L   a n d   T P 
 	 e l s e   i f   ( 
 	 	 t i   >   0 
 	 	 & &   ( 
 	 	 	       c o m m a n d   = =   " s e t " 
 	 	 	 | |   c o m m a n d   = =   " m o d i f y " 
 	 	 	 | |   c o m m a n d   = =   " c l e a r " 
 	 	 	 | |   c o m m a n d   = =   " p a r t i a l " 
 	 	 ) 
 	 ) 
 	 { 
 	 	 l o o p _ p r i c e [ 0 ]   =   s l ; 
 	 	 l o o p _ p r i c e [ 1 ]   =   t p ; 
 
 	 	 f o r   ( i   =   0 ;   i   <   2 ;   i + + ) 
 	 	 { 
 	 	 	 n a m e   =   " # "   +   I n t e g e r T o S t r i n g ( t i )   +   "   "   +   l o o p _ n a m e [ i ] ; 
 	 	 	 
 	 	 	 i f   ( l o o p _ p r i c e [ i ]   >   0 ) 
 	 	 	 { 
 	 	 	 	 / /   1 )   c r e a t e   a   n e w   l i n e 
 	 	 	 	 i f   ( O b j e c t F i n d ( 0 ,   n a m e )   = =   - 1 ) 
 	 	 	 	 { 
 	 	 	 	 	 	   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ H L I N E ,   0 ,   0 ,   l o o p _ p r i c e [ i ] ) ; 
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ W I D T H ,   1 ) ; 
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   l o o p _ c o l o r [ i ] ) ; 
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ S T Y L E ,   S T Y L E _ D O T ) ; 
 	 	 	 	 	 O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   n a m e   +   "   ( v i r t u a l ) " ) ; 
 	 	 	 	 } 
 	 	 	 	 / /   2 )   m o d i f y   e x i s t i n g   l i n e 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 O b j e c t S e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ,   l o o p _ p r i c e [ i ] ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 / /   3 )   d e l e t e   e x i s t i n g   l i n e 
 	 	 	 	 O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   p r i n t   m e s s a g e 
 	 	 i f   ( c o m m a n d   = =   " s e t "   | |   c o m m a n d   = =   " m o d i f y " ) 
 	 	 { 
 	 	 	 P r i n t ( 
 	 	 	 	 c o m m a n d , 
 	 	 	 	 "   # " , 
 	 	 	 	 I n t e g e r T o S t r i n g ( t i ) , 
 	 	 	 	 " :   v i r t u a l   s l   " , 
 	 	 	 	 D o u b l e T o S t r ( s l ,   ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) ) , 
 	 	 	 	 "   t p   " , 
 	 	 	 	 D o u b l e T o S t r ( t p , ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) ) 
 	 	 	 ) ; 
 	 	 } 
 
 	 	 r e t u r n   1 ; 
 	 } 
 
 	 r e t u r n   1 ; 
 }  
  
 v o i d   W a i t T r a d e C o n t e x t I f B u s y ( )  
 {  
 	 i f ( I s T r a d e C o n t e x t B u s y ( ) )   {  
             w h i l e ( t r u e )  
             {  
                   S l e e p ( 1 ) ;  
                   i f ( ! I s T r a d e C o n t e x t B u s y ( ) )   {  
                         R e f r e s h R a t e s ( ) ;  
                         b r e a k ;  
                   }  
             }  
       }  
       r e t u r n ;  
 }  
  
 i n t   W i n d o w F i n d V i s i b l e ( l o n g   c h a r t _ i d ,   s t r i n g   t e r m )  
 {  
       / / - -   t h e   s e a r c h   t e r m   c a n   b e   c h a r t   n a m e ,   s u c h   a s   F o r c e ( 1 3 ) ,   o r   s u b w i n d o w   i n d e x  
       i f   ( t e r m   = =   " "   | |   t e r m   = =   " 0 " )   { r e t u r n   0 ; }  
        
       i n t   s u b w i n d o w   =   ( i n t ) S t r i n g T o I n t e g e r ( t e r m ) ;  
      
       i f   ( s u b w i n d o w   = =   0   & &   S t r i n g L e n ( t e r m )   >   1 )  
       {  
             s u b w i n d o w   =   C h a r t W i n d o w F i n d ( c h a r t _ i d ,   t e r m ) ;  
       }  
        
       i f   ( s u b w i n d o w   >   0   & &   ! C h a r t G e t I n t e g e r ( c h a r t _ i d ,   C H A R T _ W I N D O W _ I S _ V I S I B L E ,   s u b w i n d o w ) )  
       {  
             r e t u r n   - 1 ;      
       }  
        
       r e t u r n   s u b w i n d o w ;  
 }  
  
 / /   T h e   l o t s   c l o s e d   w h e n   p a r t i a l l y   c l o s i n g   a   t r a d e  
 d o u b l e   a t t r L o t s C l o s e d ( d o u b l e   l o t s = - 1 )  
 {  
 	 s t a t i c   d o u b l e   m e m = 0 ;  
       i f   ( l o t s > = 0 )   { m e m = l o t s ; }  
       r e t u r n ( m e m ) ;  
 }  
  
 d o u b l e   a t t r L o t s I n i t i a l ( ) 
 { 
 	 / /   O n l y   r u n n i n g   t r a d e s   a l l o w e d 
 	 i f   ( O r d e r T y p e ( )   ! =   O P _ B U Y   & &   O r d e r T y p e ( )   ! =   O P _ S E L L )   { 
 	 	 r e t u r n   0 . 0 ; 
 	 } 
 
 	 i n t   t i c k e t   =   O r d e r T i c k e t ( ) ; 
 	 d o u b l e   r e t v a l   =   0 . 0 ; 
 
 	 / / - -   r e t u r n   c a c h e d   v a l u e   i f   p o s s i b l e 
 	 s t a t i c   l o n g   c a c h e T i c k e t s [ ] ; 
 	 s t a t i c   d o u b l e   c a c h e V a l u e s [ ] ; 
 
 	 i n t   s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 i n t   i d x     =   - 1 ; 
 
 	 f o r   ( i n t   i   =   s i z e - 1 ;   i   > =   0 ;   i - - )   { 
 	 	 i f   ( c a c h e T i c k e t s [ i ]   = =   t i c k e t )   { 
 	 	 	 r e t u r n   c a c h e V a l u e s [ i ] ; 
 	 	 }     
 	 } 
 
 	 / * * 
 	 *   W h e n   a d d e d   t o   v o l u m e ,   w e   r e l y   o n   t h e   [ p = X ]   t a g s   i n   t h e 
 	 *   c o m m e n t s . 
 	 * / 
 
 	 s t r i n g   c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
 	 i n t   t a g P o s           =   S t r i n g F i n d ( c o m m e n t ,   " [ p = " ) ; 
 
 	 i f   ( t a g P o s   > =   0 )   { 
 	 	 s t r i n g   t a g   =   S t r i n g S u b s t r ( c o m m e n t ,   t a g P o s ) ; 
 	 	 t a g                 =   S t r i n g S u b s t r ( t a g ,   0 ,   S t r i n g F i n d ( t a g ,   " ] " )   +   1 ) ; 
 	 	 i n t   i n i t i a l T i c k e t   =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( t a g ,   3 ,   - 1 ) ) ; 
 
 	 	 i f   ( i n i t i a l T i c k e t   = =   t i c k e t )   { 
 	 	 	 r e t v a l   =   O r d e r L o t s ( ) ; 
 	 	 } 
 	 	 e l s e   { 
 	 	 	 f o r   ( i n t   p o s   =   O r d e r s T o t a l ( )   -   1 ;   p o s   > =   0 ;   p o s - - )   { 
 	 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( O r d e r T i c k e t ( )   = =   i n i t i a l T i c k e t )   { 
 	 	 	 	 	 r e t v a l   =   O r d e r L o t s ( ) ; 
 	 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( r e t v a l   = =   0 . 0 )   { 
 	 	 	 	 f o r   ( i n t   p o s   =   O r d e r s H i s t o r y T o t a l ( )   -   1 ;   p o s   > =   0 ;   p o s - - )   { 
 	 	 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { 
 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 } 
 	 
 	 	 	 	 	 i f   ( O r d e r T i c k e t ( )   = =   i n i t i a l T i c k e t )   { 
 	 	 	 	 	 	 r e t v a l   =   O r d e r L o t s ( ) ; 
 	 
 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 / * * 
 	 *   I n   M Q L 4   a f t e r   p a r t i a l l y   c l o s i n g   a   t r a d e ,   i t s   O r d e r L o t s ( ) 
 	 *   s t r a r t s   r e t u r n i n g   t h e   r e m a i n i n g   l o t s ,   n o t   t h e   i n i t i a l . 
 	 *   T h a t ' s   w h y   w e   n e e d   t o   c a l c u l a t e   t h e   i n i t i a l   l o t s   a s 
 	 *   t h e   s u m   o f   a l l   l o t s . 
 	 * / 
 
 	 i f   ( r e t v a l   = =   0 . 0 )   { 
 	       i n t   T   =   O r d e r T y p e ( ) ; 
 	       i n t   M   =   O r d e r M a g i c N u m b e r ( ) ; 
 	       s t r i n g   S   =   O r d e r S y m b o l ( ) ; 
 	       d o u b l e   O P   =   O r d e r O p e n P r i c e ( ) ; 
 	       d a t e t i m e   O T   =   O r d e r O p e n T i m e ( ) ; 
 	       i n t   d i g i t s   =   ( i n t ) M a r k e t I n f o ( S , M O D E _ D I G I T S ) ;         
 
 	 	 r e t v a l   =   O r d e r L o t s ( ) ; 
 
 	       f o r   ( i n t   i   =   O r d e r s H i s t o r y T o t a l ( ) - 1 ;   i > = 0 ;   i - - )   { 
 	             i f   ( ! O r d e r S e l e c t ( i ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { 
 	             	 b r e a k ; 
 	             } 
 
 	             i f   ( O r d e r O p e n T i m e ( )   <   O T )   { 
                         b r e a k ; 
                   } 
 
                   i f   ( 
                   	 ( O r d e r M a g i c N u m b e r ( )   = =   M ) 
                   	 & &   ( O r d e r T i c k e t ( )   <   t i c k e t ) 
                   	 & &   ( O r d e r T y p e ( )   = =   T ) 
                   	 & &   ( O r d e r O p e n T i m e ( )   = =   O T ) 
                   	 & &   ( N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) ,   d i g i t s )   = =   N o r m a l i z e D o u b l e ( O P ,   d i g i t s ) ) 
                         & &   ( O r d e r S y m b o l ( )   = =   S ) 
                         ) 
                   { 
                         r e t v a l   + =   O r d e r L o t s ( ) ; 
                   } 
 	       } 
 	 } 
 
 	 i f   ( r e t v a l   >   0 )   { 
 	 	 s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 	 A r r a y R e s i z e ( c a c h e T i c k e t s ,   s i z e   +   1 ) ; 
 	 	 A r r a y R e s i z e ( c a c h e V a l u e s ,   s i z e   +   1 ) ; 
 	 	 c a c h e T i c k e t s [ s i z e ]   =   t i c k e t ; 
 	 	 c a c h e V a l u e s [ s i z e ]     =   r e t v a l ; 
 	 } 
 
       / /   L o a d   t h e   o r i g i n a l   t r a d e   a g a i n 
       i n t   s u c c e s s   =   O r d e r S e l e c t ( t i c k e t ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) ; 
 
       r e t u r n   r e t v a l ; 
 }  
  
 d o u b l e   a t t r S t o p L o s s ( ) 
 { 
 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 { 
 	 	 r e t u r n   V i r t u a l S t o p s D r i v e r ( " g e t   s l " ,   O r d e r T i c k e t ( ) ) ; 
 	 } 
 
 	 r e t u r n   O r d e r S t o p L o s s ( ) ; 
 }  
  
 d o u b l e   a t t r T a k e P r o f i t ( ) 
 { 
 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 { 
 	 	 r e t u r n   V i r t u a l S t o p s D r i v e r ( " g e t   t p " ,   O r d e r T i c k e t ( ) ) ; 
 	 } 
 
       r e t u r n   O r d e r T a k e P r o f i t ( ) ; 
 }  
  
 i n t   a t t r T i c k e t C h i l d ( i n t   t i c k e t ) 
 { 
       i n t   p o s ,   t o t a l ,   r e t v a l = 0 ; 
 
       i f   ( ! O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { r e t v a l = t i c k e t ; } 
       
       / * 
       / / - -   c h e c k   i f   t r a d e   i s   a d d e d   t o   v o l u m e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       i f   ( r e t v a l = = 0 )   { 
             i n t   p _ p o s = S t r i n g F i n d ( O r d e r C o m m e n t ( ) ,   " [ p = " ) ; 
             i f   ( p _ p o s   > =   0 )   { 
                   s t r i n g   p t a g = S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) , p _ p o s ) ; 
                   p t a g = S t r i n g S u b s t r ( p t a g , 0 , S t r i n g F i n d ( p t a g , " ] " ) + 1 ) ; 
                   r e t v a l = S t r T o I n t e g e r ( S t r i n g S u b s t r ( p t a g , 3 , - 1 ) ) ; 
             } 
       } 
       * / 
 	 d o u b l e   O P       =   0 ; 
       d a t e t i m e   O T   =   0 ; 
       s t r i n g   S         =   " " ; 
       i n t   M               =   0 ; 
       i n t   T               =   0 ;   
       d o u b l e   L         =   0 ; 
       i n t   D               =   0 ; 
 	 
       / / - -   c h e c k   i f   t r a d e   i s   p a r t i a l l y   c l o s e d   ( i n   t r a d e s )   - - - - - - - - - - - - - - - 
       i f   ( r e t v a l = = 0 )   { 
             O P   =   O r d e r O p e n P r i c e ( ) ; 
             O T   =   O r d e r O p e n T i m e ( ) ; 
             S     =   O r d e r S y m b o l ( ) ; 
             M     =   O r d e r M a g i c N u m b e r ( ) ; 
             T     =   O r d e r T y p e ( ) ;   
             L     =   O r d e r L o t s ( ) ; 
             D     =   ( i n t ) M a r k e t I n f o ( S , M O D E _ D I G I T S ) ; 
             
             t o t a l = O r d e r s T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - )   { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) ) 
                   { 
                         i f   ( O r d e r O p e n T i m e ( ) < O T )   { 
                               b r e a k ; 
                         } 
                         i f   ( 
                               O r d e r T i c k e t ( ) ! = t i c k e t 
                               & &   ( O r d e r S y m b o l ( ) = = S ) 
                               & &   ( O r d e r M a g i c N u m b e r ( ) = = M ) 
                               & &   ( O r d e r T y p e ( ) = = T ) 
                               & &   ( N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) , D ) = = N o r m a l i z e D o u b l e ( O P , D ) ) 
                               & &   ( O r d e r O p e n T i m e ( ) = = O T ) 
                               ) 
                         { 
                               r e t v a l = O r d e r T i c k e t ( ) ; 
                               b r e a k ; 
                         } 
                   } 
             } 
       } 
       / / - -   s t i l l   n o t h i n g   f o u n d   -   s e a r c h   i n   h i s t o r y   t r a d e s   n o w   - - - - - - - - - - - 
       i f   ( r e t v a l = = 0 )   { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - )   { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ H I S T O R Y ) ) 
                   { 
                         i f   ( O r d e r O p e n T i m e ( ) < O T )   { 
                               b r e a k ; 
                         } 
                         i f   ( 
                               O r d e r T i c k e t ( ) ! = t i c k e t 
                               & &   ( O r d e r S y m b o l ( ) = = S ) 
                               & &   ( O r d e r M a g i c N u m b e r ( ) = = M ) 
                               & &   ( O r d e r T y p e ( ) = = T ) 
                               & &   ( N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) , D ) = = N o r m a l i z e D o u b l e ( O P , D ) ) 
                               & &   ( O r d e r O p e n T i m e ( ) = = O T ) 
                               ) 
                         { 
                               r e t v a l = O r d e r T i c k e t ( ) ; 
                               b r e a k ; 
                         } 
                   } 
             } 
       } 
       
       i f   ( r e t v a l < t i c k e t )   { r e t v a l = 0 ; } 
 
     i f   ( ! O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { r e t u r n   t i c k e t ; } 
       i f   ( r e t v a l > 0 )   { 
             r e t u r n ( r e t v a l ) ; 
       } 
       e l s e   { 
             r e t u r n ( t i c k e t ) ; 
       } 
 }  
  
 u l o n g   a t t r T i c k e t I n L o o p ( u l o n g   t i c k e t = 0 ) 
 { 
 	 s t a t i c   u l o n g   t ; 
 
 	 i f   ( t i c k e t   >   0 )   { t   =   t i c k e t ; } 
 
 	 r e t u r n   t ; 
 }  
  
 l o n g   a t t r T i c k e t P a r e n t ( l o n g   t i c k e t ) 
 { 
 	 i n t   p o s   =   0 ; 
 	 i n t   t o t a l   =   0 ; 
 	 l o n g   r e t v a l   =   0 ; 
 	 s t a t i c   l o n g   c a c h e T i c k e t s [ ] ; 
 	 s t a t i c   l o n g   c a c h e V a l u e s [ ] ; 
 
 	 / / - -   r e t u r n   c a c h e d   v a l u e   i f   p o s s i b l e 
 	 i n t   s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 i n t   i d x     =   - 1 ; 
 
 	 f o r   ( i n t   i   =   s i z e - 1 ;   i   > =   0 ;   i - - )   { 
 	 	 i f   ( c a c h e T i c k e t s [ i ]   = =   t i c k e t )   { 
 	 	 	 r e t u r n   c a c h e V a l u e s [ i ] ; 
 	 	 }     
 	 } 
 
 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) )   { 
 	 	 r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 / / - -   c h e c k   i f   t r a d e   i s   a d d e d   t o   v o l u m e 
 	 i f   ( r e t v a l   = =   0 )   { 
 	 	 s t r i n g   c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
 	 	 i n t   t a g P o s           =   S t r i n g F i n d ( c o m m e n t ,   " [ p = " ) ; 
 
 	 	 i f   ( t a g P o s   > =   0 )   { 
 	 	 	 s t r i n g   t a g   =   S t r i n g S u b s t r ( c o m m e n t ,   t a g P o s ) ; 
 	 	 	 t a g                 =   S t r i n g S u b s t r ( t a g ,   0 ,   S t r i n g F i n d ( t a g ,   " ] " )   +   1 ) ; 
 	 	 	 r e t v a l           =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( t a g ,   3 ,   - 1 ) ) ; 
 	 	 } 
 	 } 
 
 	 d o u b l e   O P       =   O r d e r O p e n P r i c e ( ) ; 
 	 d a t e t i m e   O T   =   O r d e r O p e n T i m e ( ) ; 
 	 s t r i n g   S         =   O r d e r S y m b o l ( ) ; 
 	 i n t   M               =   O r d e r M a g i c N u m b e r ( ) ; 
 	 i n t   T               =   O r d e r T y p e ( ) ;   
 	 d o u b l e   L         =   O r d e r L o t s ( ) ; 
 	 i n t   D               =   ( i n t ) M a r k e t I n f o ( S ,   M O D E _ D I G I T S ) ; 
 
 	 / / - -   c h e c k   i f   t r a d e   i s   p a r t i a l l y   c l o s e d 
 	 i f   ( r e t v a l   = =   0 )   { 
 	 	 t o t a l   =   O r d e r s H i s t o r y T o t a l ( ) ; 
 
 	 	 f o r   ( p o s   =   t o t a l - 1 ;   p o s   > =   0 ;   p o s - - )   { 
 	 	 	 i f   ( O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { 
 	 	 	 	 i f   ( O r d e r O p e n T i m e ( )   <   O T )   { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( 
 	 	 	 	 	 ( O r d e r M a g i c N u m b e r ( )   = =   M ) 
 	 	 	 	 	 & &   ( O r d e r T i c k e t ( )   <   t i c k e t ) 
 	 	 	 	 	 & &   ( O r d e r T y p e ( )   = =   T ) 
 	 	 	 	 	 & &   ( O r d e r O p e n T i m e ( )   = =   O T ) 
 	 	 	 	 	 & &   ( N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) ,   D )   = =   N o r m a l i z e D o u b l e ( O P ,   D ) ) 
 	 	 	 	 	 & &   ( O r d e r S y m b o l ( )   = =   S ) 
 	 	 	 	 )   { 
 	 	 	 	 	 r e t v a l   =   O r d e r T i c k e t ( ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 i f   ( r e t v a l   >   0 )   { 
 	 	 s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 	 A r r a y R e s i z e ( c a c h e T i c k e t s ,   s i z e   +   1 ) ; 
 	 	 A r r a y R e s i z e ( c a c h e V a l u e s , s i z e   +   1 ) ; 
 	 	 c a c h e T i c k e t s [ s i z e ]   =   t i c k e t ; 
 	 	 c a c h e V a l u e s [ s i z e ]     =   r e t v a l ; 
 	 } 
 
 	 / /   L o a d   t h e   o r i g i n a l   t r a d e   a g a i n 
 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { 
 	 	 r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 i f   ( r e t v a l   < =   0 )   { 
 	 	 r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 u l o n g   a t t r T i c k e t P r e v i o u s S i b l i n g ( u l o n g   t i c k e t ) 
 { 
 	 u l o n g   r e t v a l   =   0 ; 
 	 s t a t i c   u l o n g   c a c h e T i c k e t s [ ] ; 
 	 s t a t i c   u l o n g   c a c h e V a l u e s [ ] ; 
 
 	 / / - -   r e t u r n   c a c h e d   v a l u e   i f   p o s s i b l e 
 	 i n t   s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 i n t   i d x     =   - 1 ; 
 
 	 f o r   ( i n t   i   =   s i z e - 1 ;   i   > =   0 ;   i - - )   { 
 	 	 i f   ( c a c h e T i c k e t s [ i ]   = =   t i c k e t )   { 
 	 	 	 r e t u r n   c a c h e V a l u e s [ i ] ; 
 	 	 }     
 	 } 
 
 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t ,   S E L E C T _ B Y _ T I C K E T ) )   { 
 	 	 r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 i f   ( r e t v a l   = =   0 )   { 
 	 	 / /   1 .   G e t   t h e   p a r e n t   t r a d e 
 	 	 l o n g   p a r e n t T i c k e t   =   a t t r T i c k e t P a r e n t ( t i c k e t ) ; 
 
 	 	 f o r   ( i n t   p o s   =   O r d e r s T o t a l ( )   -   1 ;   p o s   > =   0 ;   p o s - - )   { 
 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 
 	 	 	 i f   ( ( u l o n g ) O r d e r T i c k e t ( )   > =   t i c k e t )   { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 i f   ( a t t r T i c k e t P a r e n t ( O r d e r T i c k e t ( ) )   = =   p a r e n t T i c k e t )   { 
 	 	 	 	 r e t v a l   =   O r d e r T i c k e t ( ) ; 
 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   w h e n   p a r t i a l l y   c l o s e d ,   l o o k   i n   t h e   h i s t o r y   t r a d e s   a l s o 
 	 	 i f   ( r e t v a l   = =   0 )   { 
 	 	 	 f o r   ( i n t   p o s   =   O r d e r s H i s t o r y T o t a l ( )   -   1 ;   p o s   > =   0 ;   p o s - - )   { 
 	 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( ( u l o n g ) O r d e r T i c k e t ( )   > =   t i c k e t )   { 
 	 	 	 	 	 c o n t i n u e ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( a t t r T i c k e t P a r e n t ( O r d e r T i c k e t ( ) )   = =   p a r e n t T i c k e t )   { 
 	 	 	 	 	 r e t v a l   =   O r d e r T i c k e t ( ) ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   N o   s i b l i n g   t i c k e t   f o u n d ,   t h e n   t h e   s i b l i n g   t i c k e t 
 	 	 / /   i s   t h e   o r i g i n a l   t i c k e t 
 	 	 i f   ( r e t v a l   = =   0 . 0 )   r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 i f   ( r e t v a l   >   0 )   { 
 	 	 s i z e   =   A r r a y S i z e ( c a c h e T i c k e t s ) ; 
 	 	 A r r a y R e s i z e ( c a c h e T i c k e t s ,   s i z e   +   1 ) ; 
 	 	 A r r a y R e s i z e ( c a c h e V a l u e s , s i z e   +   1 ) ; 
 	 	 c a c h e T i c k e t s [ s i z e ]   =   t i c k e t ; 
 	 	 c a c h e V a l u e s [ s i z e ]     =   r e t v a l ; 
 	 } 
 
 	 / /   L o a d   t h e   o r i g i n a l   t r a d e   a g a i n 
 	 i f   ( ! O r d e r S e l e c t ( ( i n t ) t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { 
 	 	 r e t v a l   =   t i c k e t ; 
 	 } 
 
 	 r e t u r n   r e t v a l ; 
 }  
  
 i n t   a t t r T y p e I n L o o p ( i n t   t y p e = 0 ) 
 { 
 	 s t a t i c   i n t   t ; 
 
 	 i f   ( t y p e   >   0 )   { t   =   t y p e ; } 
 
 	 r e t u r n   t ; 
 }  
  
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 > 
 b o o l   c o m p a r e ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 ) 
 { 
 	           i f   ( s i g n   = =   " > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < " )   r e t u r n ( v 1   <   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " > = " )   r e t u r n ( v 1   > =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < = " )   r e t u r n ( v 1   < =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " = = " )   r e t u r n ( v 1   = =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " ! = " )   r e t u r n ( v 1   ! =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x < " )   r e t u r n ( v 1   <   v 2 ) ; 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 s t r i n g   e _ R e a s o n ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e R e a s o n ( ) ; }  
  
 s t r i n g   e _ R e a s o n D e t a i l ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e D e t a i l ( ) ; }  
  
 d o u b l e   e _ a t t r C l o s e P r i c e ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e P r i c e C l o s e ( ) ; }  
  
 d a t e t i m e   e _ a t t r C l o s e T i m e ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T i m e C l o s e ( ) ; }  
  
 s t r i n g   e _ a t t r C o m m e n t ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e C o m m e n t ( ) ; }  
  
 d a t e t i m e   e _ a t t r E x p i r a t i o n ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T i m e E x p i r a t i o n ( ) ; }  
  
 d o u b l e   e _ a t t r L o t s ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e V o l u m e ( ) ; }  
  
 i n t   e _ a t t r M a g i c N u m b e r ( )   { r e t u r n   ( i n t ) o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e M a g i c ( ) ; }  
  
 d o u b l e   e _ a t t r O p e n P r i c e ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e P r i c e O p e n ( ) ; }  
  
 d a t e t i m e   e _ a t t r O p e n T i m e ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T i m e O p e n ( ) ; }  
  
 d o u b l e   e _ a t t r P r o f i t ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e P r o f i t ( ) ; }  
  
 d o u b l e   e _ a t t r S t o p L o s s ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e S t o p L o s s ( ) ; }  
  
 d o u b l e   e _ a t t r S w a p ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e S w a p ( ) ; }  
  
 s t r i n g   e _ a t t r S y m b o l ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e S y m b o l ( ) ; }  
  
 d o u b l e   e _ a t t r T a k e P r o f i t ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T a k e P r o f i t ( ) ; }  
  
 i n t   e _ a t t r T i c k e t ( )   { r e t u r n   ( i n t ) o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T i c k e t ( ) ; }  
  
 i n t   e _ a t t r T y p e ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T y p e ( ) ; }  
  
 i n t   i C a n d l e I D ( s t r i n g   S Y M B O L ,   E N U M _ T I M E F R A M E S   T I M E F R A M E ,   d a t e t i m e   t i m e _ s t a m p ) 
 { 
 	 b o o l   T i m e S t a m p P r e v D a y S h i f t   =   t r u e ; 
 	 i n t   C a n d l e I D                               =   0 ; 
 
 	 / /   g e t   t h e   t i m e   r e s o l u t i o n   o f   t h e   d e s i r e d   p e r i o d ,   i n   m i n u t e s 
 	 i n t   m i n s _ t f     =   T I M E F R A M E ; 
 	 i n t   m i n s _ t f 0   =   0 ; 
 
 	 i f   ( T I M E F R A M E   = =   P E R I O D _ C U R R E N T ) 
 	 { 
 	 	 m i n s _ t f   =   ( i n t ) P e r i o d S e c o n d s ( P E R I O D _ C U R R E N T )   /   6 0 ; 
 	 } 
 
 	 / /   g e t   t h e   d i f f e r e n c e   b e t w e e n   n o w   a n d   t h e   t i m e   w e   w a n t ,   i n   m i n u t e s 
 	 i n t   d a y s _ a d j u s t   =   0 ; 
 
 	 i f   ( T i m e S t a m p P r e v D a y S h i f t ) 
 	 { 
 	 	 / /   a u t o m a t i c a l l y   s h i f t   t o   t h e   p r e v i o u s   d a y 
 	 	 i f   ( t i m e _ s t a m p   >   T i m e C u r r e n t ( ) ) 
 	 	 { 
 	 	 	 t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ; 
 	 	 } 
 
 	 	 / /   a l s o   s h i f t   w e e k d a y s 
 	 	 w h i l e   ( t r u e ) 
 	 	 { 
 	 	 	 i n t   d o w   =   T i m e D a y O f W e e k ( t i m e _ s t a m p ) ; 
 
 	 	 	 i f   ( d o w   >   0   & &   d o w   <   6 )   { b r e a k ; } 
 
 	 	 	 t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ; 
 	 	 	 d a y s _ a d j u s t + + ; 
 	 	 } 
 	 } 
 
 	 i n t   m i n s _ d i f f   =   ( i n t ) ( T i m e C u r r e n t ( )   -   t i m e _ s t a m p ) ; 
 	 m i n s _ d i f f   =   m i n s _ d i f f   -   d a y s _ a d j u s t * 8 6 4 0 0 ; 
 	 m i n s _ d i f f   =   m i n s _ d i f f   /   6 0 ; 
 
 	 / /   t h e   d i f f e r e n c e   i s   n e g a t i v e   = >   q u i t   h e r e 
 	 i f   ( m i n s _ d i f f   <   0 ) 
 	 { 
 	 	 r e t u r n   ( i n t ) E M P T Y _ V A L U E ; 
 	 } 
 
 	 / /   n o w   c a l c u l a t e   t h e   c a n d l e   I D ,   i t   i s   r e l a t i v e   t o   t h e   c u r r e n t   t i m e 
 	 i f   ( m i n s _ d i f f   >   0 ) 
 	 { 
 	 	 C a n d l e I D   =   ( i n t ) M a t h C e i l ( ( d o u b l e ) m i n s _ d i f f / ( d o u b l e ) m i n s _ t f ) ; 
 	 } 
 
 	 / /   n o w ,   a f t e r   a l l   t h e   s h i f t i n g   a n d   i n   c a s e   o f   m i s s i n g   c a n d l e s ,   t h e   c a l c u l a t e d   c a n d l e   i d   c a n   b e   f e w   c a n d l e s   e a r l y 
 	 / /   s o   w e   w i l l   s e a r c h   f o r   t h e   r i g h t   c a n d l e 
 	 w h i l e ( t r u e ) 
 	 { 
 	 	 i f   ( i T i m e ( S Y M B O L ,   T I M E F R A M E ,   C a n d l e I D )   > =   t i m e _ s t a m p )   { b r e a k ; } 
 
 	 	 C a n d l e I D - - ; 
 
 	 	 i f   ( C a n d l e I D   < =   0 )   { C a n d l e I D   =   0 ;   b r e a k ; } 
 	 } 
 
 	 r e t u r n   C a n d l e I D ; 
 }  
  
 d o u b l e   t o D i g i t s ( d o u b l e   p i p s ,   s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 
 	 r e t u r n   N o r m a l i z e D o u b l e ( p i p s   *   P i p V a l u e ( s y m b o l )   *   p o i n t ,   d i g i t s ) ; 
 }  
  
 d o u b l e   t o P i p s ( d o u b l e   d i g i t s ,   s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
       r e t u r n   d i g i t s   /   ( P i p V a l u e ( s y m b o l )   *   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ) ; 
 }  
  
  
  
  
  
  
 c l a s s   F x d W a i t i n g  
 {  
 	 p r i v a t e :  
 	 	 i n t   b e g i n n i n g _ i d ;  
 	 	 u s h o r t   b a n k     [ ] [ 2 ] [ 2 0 ] ;   / /   2   b a n k s ,   2 0   p o s s i b l e   p a r a l l e l   w a i t i n g   b l o c k s   p e r   c h a i n   o f   b l o c k s  
 	 	 u s h o r t   s t a t e   [ ] [ 2 ] ;           / /   s e c o n d   d i m e n t i o n   v a l u e s :   0   -   c o u n t   o f   t h e   b l o c k s   p u t   o n   h o l d ,   1   -   c u r r e n t   b a n k   i d  
  
 	 p u b l i c :  
 	 	 v o i d   I n i t i a l i z e ( i n t   c o u n t )  
 	 	 {  
 	 	 	 A r r a y R e s i z e ( b a n k ,   c o u n t ) ;  
 	 	 	 A r r a y R e s i z e ( s t a t e ,   c o u n t ) ;  
 	 	 }  
  
 	 	 b o o l   R u n ( i n t   i d   =   0 )  
 	 	 {  
 	 	 	 b e g i n n i n g _ i d   =   i d ;  
  
 	 	 	 i n t   r a n g e   =   A r r a y R a n g e ( s t a t e ,   0 ) ;  
 	 	 	 i f   ( r a n g e   <   i d + 1 )   {  
 	 	 	 	 A r r a y R e s i z e ( b a n k ,   i d + 1 ) ;  
 	 	 	 	 A r r a y R e s i z e ( s t a t e ,   i d + 1 ) ;  
  
 	 	 	 	 / /   s e t   v a l u e s   t o   0 ,   o t h e r w i s e   t h e y   h a v e   r a n d o m   v a l u e s  
 	 	 	 	 f o r   ( i n t   i i   =   r a n g e ;   i i   <   i d + 1 ;   i i + + )  
 	 	 	 	 {  
 	 	 	 	       s t a t e [ i i ] [ 0 ]   =   0 ;  
 	 	 	 	       s t a t e [ i i ] [ 1 ]   =   0 ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / /   a r e   t h e r e   b l o c k s   p u t   o n   h o l d ?  
 	 	 	 i n t   c o u n t   =   s t a t e [ i d ] [ 0 ] ;  
 	 	 	 i n t   b a n k _ i d   =   s t a t e [ i d ] [ 1 ] ;  
  
 	 	 	 / /   i f   n o   b l o c k   a r e   p u t   o n   h o l d   - >   e s c a p e  
 	 	 	 i f   ( c o u n t   = =   0 )   { r e t u r n   f a l s e ; }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s t a t e [ i d ] [ 0 ]   =   0 ;   / /   n u l l   t h e   c o u n t  
 	 	 	 	 s t a t e [ i d ] [ 1 ]   =   ( b a n k _ i d )   ?   0   :   1 ;   / /   s w i t c h   t o   t h e   o t h e r   b a n k  
 	 	 	 }  
  
 	 	 	 / / = =   n o w   w e   w i l l   r u n   t h e   b l o c k s   p u t   o n   h o l d  
  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   c o u n t ;   i + + )  
 	 	 	 {  
 	 	 	 	 i n t   b l o c k _ t o _ r u n   =   b a n k [ i d ] [ b a n k _ i d ] [ i ] ;  
 	 	 	 	 _ b l o c k s _ [ b l o c k _ t o _ r u n ] . r u n ( ) ;  
 	 	 	 }  
  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
  
 	 	 v o i d   A c c u m u l a t e ( i n t   b l o c k _ i d   =   0 )  
 	 	 {  
 	 	 	 i n t   c o u n t       =   + + s t a t e [ b e g i n n i n g _ i d ] [ 0 ] ;  
 	 	 	 i n t   b a n k _ i d   =   s t a t e [ b e g i n n i n g _ i d ] [ 1 ] ;  
  
 	 	 	 b a n k [ b e g i n n i n g _ i d ] [ b a n k _ i d ] [ c o u n t - 1 ]   =   ( u s h o r t ) b l o c k _ i d ;  
 	 	 }  
 } ;  
 F x d W a i t i n g   f x d W a i t ;  
  
  
  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
 / / |   E N D                                                                                                                             |  
 / / |   C r e a t e d   w i t h   f x D r e e m a   E A   B u i l d e r                       h t t p s : / / f x d r e e m a . c o m /   |  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
  
 / * < f x d r e e m a : e N r t P e 1 y 4 j q y r + L K 1 t 4 6 W z U z x 9 9 A z j l b R R K S y R 4 C L J C Z m / v H Z U A k P g M 2 a 5 v J Z L f m X e 6 z 3 C e 7 a n 1 Z N j Z g 4 i T M g f y Y S S y p 1 S 1 1 t 7 r V U s s 9 r Z 3 + J z r V t N O T c e D 7 a B x 7 g R + d / O K e G t r p f 7 x T F X 6 D G t b p y d R D s 8 n J L x F u c n L R u m z e t o f w l 3 1 6 E g X L c I z g D w x H Y x 9 j N 7 x H M f u o n / z y 3 T v V y k M z 8 q C Z B J p e H p q V B 8 0 m 0 I z y 0 O w 8 a D U C z S w P r Z Y H r U 6 g W e W h N V a g 6 X h q V A L O L g m O t c y B p x F 4 t R 3 g a b n w K J v U d 4 C X y y c W A d e o C l y D M r F a H p 6 p 5 5 J r U I D a D g i a e Q B N B l C v D C C V N M 3 Y g e R c D r Q o B 2 q 5 8 o F / b / X 7 3 X 4 u f r k j a F L Z 1 a x S 4 K h c 5 U C j / K L l y g e u f N 3 5 1 O r n E m s Z u c Q y e D v I h 5 V L r s X m t 1 4 Z Q D Z + j f I U 5 8 O j 2 k / f Q U R q u R q m R j W M v o O I W L k q p k Y Z U N e r A m h R n a X v I C I F X M N W N 3 M H g K t j a I C u p Y p L t 3 a A a O Y p Q j Y p d l X w K F v r t f L L X L 7 W Y l N S L w 9 P X w d v h 4 X E z l U 0 F h 1 A Q y 0 t d m v g f S f f R 7 N g / I U a c D o Y c C A 4 u g Z 9 1 I m J F 4 f B j B S b 8 A 2 3 b Q f w l 8 7 + 8 g g K O i Z q E X p j F D k f v f s H F M W X Y T A f B u e u P 5 m h C K p k o N m s h w H G K z 5 z Q z a c n B 9 b / o R / h I a n p 6 3 O h T M m 0 J z r C 4 c I V u P 0 5 P O D G w + D K 5 n P S P P B 0 3 w U z O A P 9 f S E f e u h 0 A s I t p q J / 2 r 1 r 7 s X z v l t v 9 / q k J H T c N X z L v 7 z f H j d 7 Y i 2 M E w 1 w H 2 + c E M + 6 3 9 n 4 9 j f g 7 H Q X 3 c s o G g c B l H 0 6 E 3 i B 0 m + K S x O l 4 O + x a E L 1 K m n / / l O E I Q i 1 / M R I Q V X H X r j L 2 w 0 J l 7 k j m Y I Y z T C H g Q Z c N w e h d S z o B D E A H P a M E g v c s b L K A 7 m v G G d M z Q d B p C G p y h G c 9 b P P J i g m U P B 4 O b n g T / x w I E h Y G H e 3 N C d I 9 w x h h s E 4 S R K D 9 v C w x 6 P Q B L L Y D R 2 Z 4 g V + k E 4 d 2 d 8 9 C I E s O I g l C g A b G I 3 X k a C a T C I w A + m 0 5 N f P A I S j 8 r E j d 1 k w E m V 2 I t n X J 5 v e 6 w 7 3 I o Q y S D h l j M 0 j Q G Q b a t U j 8 f B A v 4 2 a i o A w j U e X S / m 2 G P y v 7 q h B 8 M u o Y j H I F j G i 2 U c y Z A 9 / A 3 a a R R F x P 4 k Y H E / 4 4 j q D + I Y g k p x x 1 / u w 2 D p T 9 6 P g 1 k Q M q 3 3 l 8 v L i / N m g 1 l a o g R P 5 1 / I / / i X K W a R 9 4 8 I i 0 0 s j 4 G G C R / h 6 U D h + y h + o m O B Z z P G 6 P v 3 8 C d z 7 n L 1 F v 0 I I L q j P 7 C / i n m f i R M o U X c W U a E W 5 b c L P A W I 8 W g c L h F D H 5 d 2 M H O Q y j B 4 p 6 f D E G E h x B z t Q I F z x u e e w h k + L R D j s + 7 Z P 5 w h l q 0 L h j i u M P T m S N t f R a q / j P J o E N p 7 Q K B 2 c K t I M v H 6 / q 4 a L z / x + s E t m X T i m 1 R V C c e R Q M X f + + 5 T R t k w H Y I L 2 k S l Z z S V x k v 7 X E 9 K b W l f 5 0 K 5 w p I 8 C y + D E A / q V Y i Q n 1 Q a c F U K E A f D u 3 b L G X T b 1 5 K S + p x e 4 r k a P H P p w p 3 C y q A w 0 Q y r P l h U s j R p U j m a Z J t T / v j o T S Y U w 9 W y / y H 6 X 5 5 n j W J z / o B Z Y L A c f f b 8 S f A o L x v V 2 h x 6 B T Y H j B L B 9 y J 0 H 9 s Y r 5 c 2 P E x q 0 v M Z h G U y + d 2 Q f j d l Q + 7 5 h g r + C C Q q Z I k E Q p W f z p Z P f 9 t s u + h p 2 8 U 0 q 7 J d 1 O f Z L t N p b U q 9 5 b K 2 y x q j O M + u o e 3 o 9 n J 5 P 8 w W i r Q d P P 7 p 3 b B f 1 7 l h r z s U h + i F G Y f p h W E K L r q f O 7 + O w r 9 v 1 G d 1 w z p A X 8 x 8 c 1 9 s U I U v t h / K 9 G 1 c s T / 1 Q r L e E 9 u P h e N t H L E / 9 a L 5 h n 6 Y T d y w P n V 8 j u 7 X D s a G e X S / t n e / t F X 3 C 0 / 9 b L P / V W t Y R / 9 L H K H J t W E s + I Z H 4 A p j u b j B 3 M W Q A q w X 7 P c r / j v j I e A M q s x 4 A 8 K m X L v l q T o g C b v M U T e E m Y u Y A I 3 w l x c Q L q s K 4 c I o d I L u A m F R 6 c K Y R i 8 t X c Z 2 0 l W F R G k W E K c s g o h 4 K g q e m c 1 7 G V p a l i A u s x e 2 f 7 N x 3 r i 8 f E V Z s n f Z y 4 A h p 6 Z C  
 x E y G P A O k x i b T 6 3 5 s n 7 M p 8 c 5 n A V s W 8 V 8 g c d S A u c R L 1 N k T W / o 9 v h T T M r r u S q F F s A 6 x V T P n I q 2 q p 6 r 6 G v s a G L d v a + P L e K Y D 4 t W 4 M f a 6 R s s Y D x D 2 a j D g o v G h S / h A n A v A C P r M f Q K h 3 R z V w k B 7 Y b B A Y U y H z y J + V K / f 7 T n D t t P r X 5 + 3 n L M 7 Z / D x + n L I e e j S G w V t 9 B X N x N C q 3 L k b t o m R S U r 5 m Z M P O h v o w Y M 3 T R m C V W 6 D a O L w K r R y V p t V q 1 f t w 9 w h I X Y W x 3 k 7 X Z n Z 9 6 0 Z h 7 B P U i v S i w S t X R U N 7 r j n R t G N + w 1 0 W P S C 7 F 2 r w m w A J 8 s f o 2 Q r 6 E d g c J 0 i r W C V q I z c c A v + T t s C Y G f v B X + P V K T X j V e 0 B e q F d r X J J i J r P O d a x / j / T 8 F s O U e S B T 7 1 v q F J u n T g / Z v v G Y 5 P T 9 t B H H H B S c r 7 X v Q l d R 4 y a c 6 L 8 I D q H y y u 2 m g Z Z t g x 8 s W Z S W o c w D Y H L T 4 D / p f q 8 P 1 y G N K J j N y K 3 a M B F 8 y W y C H / 5 q z p n G M / 8 X L c v / p h 4 1 p Z h z U Z j 1 D f x W r 5 1 v d i P j g m N F c 1 b n Q l l S 7 Q j M o A R k 4 X q / d 8 P g z d C Y p 6 A Z 0 S s b J b U H Z z f 4 1 B e + 6 M D 7 a E X J 1 W u F n O Y m 8 x e + r 6 7 S C K 5 P 0 u i B u m a 2 C z Y + q l z Y E a r d O c T K C L F B C V 2 z G p C i k Y K V T 7 C M t r D o R a q r g I B 8 3 Q 7 W J i D V 6 l j 8 2 c M E I r W z Y E B l h J h T B 0 M t o X W L X N R 9 j 2 2 j C w o l 5 B h z r B q O 2 O g u X 4 A Y W o G J y d r t j 2 o p h z p v Z O f 2 e 8 M 9 9 Z 7 + x k r J O q R b S S r g f o X 2 d u h H I 6 1 F h x M h W 4 t Y G 7 s l O t c 6 d C Z 4 V F X d t c I m 8 X W F u 3 v b k X y 4 p E h 8 3 L Y A H 9 5 q o S q b z n L S L + T V e x P h m 0 n Q X 7 B p w r 6 l G p J 5 u s Q r 4 s i 0 9 6 p t q w l 1 E h G N J k x i t V o h + 2 t K Q n i 0 p 7 T Z O 0 r t 9 J p f 3 K 6 m x N x 2 D 6 u F 8 Q 5 a j c q U / V k C f f h M k f 9 p L J 1 1 M 1 1 0 x / I 6 f i o J 0 Z L R 0 Y I K n 2 a i w A / S 4 q 7 n c 7 J o C e J x X 3 v B 0 b Y H l s f R P b e B j b q + E 5 M x j w 9 w v 3 S b Y 8 6 + T j R + x H R 9 k x B S C e D 7 6 4 V B + s S F y Q Q 4 7 K y Y m 9 e S 4 1 O r O Q A L M h q y O W J 5 V t T 8 g X E d R N + x b E 8 c a F e f s d H O K N G 3 5 B K f X Y k B v B b 9 P Q z W B T Y 1 W C + S L w M T / f I W o Q c x D 1 T P k N p v N B r m B n K l z Q S A w v z s K H 8 U 9 d 8 h J I i h 7 I T G R t g l S V A c L D P c k Z O 8 E / v H s j m Q R 5 a 0 I X K o I X A N 3 y 7 I O R I Q o J 0 a l S u e l n h L 5 E m U 5 F I W d C M V l y S 8 G M m c G k n a 5 w Z K q Y j k F u 8 R d v A T h N W N c i k s T C a I O Z t 1 i 4 9 y g T m 7 l 5 w u M 7 5 w a v R S N + T a f T v G k 5 t 4 N W n 5 P W D M P g k c T G 2 N 5 A j Y T H z s j I V + 6 l 1 i v w U m 2 y G d + h A a 6 X d F A t a U 9 b 3 S J i R O p Y l e 5 1 1 w i t i k + J X e / W m u l t m 7 r 9 Q u E i r a R b q 6 p 1 V V 0 J F 9 F A E v w U O L c Q Y Q n g V t U O D i 6 m M o R N W b G 7 0 9 i / C B I w I v 2 9 c i l r H E N I m 8 / E y i E k m J S t z p D V G u o x j p T c p D 8 G k k o E k n 7 d n 0 D S 4 B h I 2 l G 7 i n Q a B x h J q s u R p B I q 0 z r A c J K m / c j x J J H k 5 R h Q 2 i K g t M L h D f V A A 0 q a f o w o H S N K x 4 j S M a J 0 j C g d I 0 r H i N I x o n S M K B 0 j S s e I 0 u F E l E w 5 o g R 7 B J k b V 9 X 7 q V X k g o B 1 G + N 6 G D G l O i V 2 q 6 B S X d v T o N J 0 q r 5 5 U E k z d t 0 C H 2 H n C r m + w / 4 v W v A g + p f U A A u f G L 5 Y 7 k B n O R C c c b r i L m C J v e j f f l u z F / 1 y J u j b Z k k Q q Y E P c O s W 7 o d 2 3 n c v L x V g G k U w z f q I c j b Y p R 7 E z m 1 h x g R D r S R Y j A l 1 Z 2 X v G g Z U Z s C M C V 1 v B r e 0 Z c E j P g o U e P 5 9 H 0 2 x r w 6 7 r t x H E X a S n d Q C p y z P L 8 I 9 x F A m P C K b L P S 8 m T M g z E D p i i k Q H z 2 l Q i N g 3 9 A i u t E j b j 3 r 6 s / W O 8 V Q f 2 b 1 T N 5 X g a 9 c T 5 c n 2 w N y u t x p T F H K 0 7 M e F t M x E S b H G z T 7 R Z f m T X D b 0 S L x K 3 T G a T f u N 2 + + n I v 9 j O c k A p C j Y B J v F N + P x 7 a h d + / F  
 e W 6 z z j X 0 I v D 8 O C + E a m Z V N H F s u S W H 5 3 1 F d x d t x B b p 8 x Q v o T W 8 h N b w E h 1 0 x g h I M M I g z U 8 1 u S s 3 F P 4 8 h D w D H 0 n s i A t 5 Z 0 l z S x T J 4 C U + y 1 a g P v s a A L 1 U e Y 0 y I S 6 v Z D H d Y u w t 0 e N l 6 I 7 p Q l R B z x Z h / u 0 2 V 9 h 8 D H v z 1 c n A A 4 L H a J F M R L K 9 D N 8 z s 6 D T W T C B J h j Z 1 x l C / B s J V Y u 0 E A 3 i p N x h p Q t 2 c f W m R 1 V J E 2 Q F r r + 0 / W G X d F c 0 y V 0 h 9 e 1 q r 3 5 L 9 C s R W 4 n W 2 j C a 1 s h m f b L 2 I 4 u C a d f 1 k V n a g 5 E m 7 B m B O r M w U F d j j s f 5 a n Y 3 A M g + n 2 N 6 4 s z h m r d J w k A M o 8 q l 1 a w k w 6 Q N K U 7 Q + A u N q C V j 9 k q H 6 G S B V S W B V a v L b E L I E + f o I m X M a V z v W N T T M m l Z 1 o G d o l v J 0 l a 4 l a B p b 5 r j h P k d 9 E x E O p q C c V r I 9 p B c R z b C R G h M F G a s L E s t q M H g m s R q P A u R + 6 X 1 F f l J b 2 c t y m N 5 9 q A B x T 1 a L u x P z v s V K w u j o v O 2 g s Q e m P W v m R C p a G 1 X q 0 + I B J t a L W X Y U / 6 6 x e J t Z F M g H R d v G I U f W V l Q s d 9 N W W R V A f u 6 r e Z I u t 4 X z W E e N U d Z z T F o b 6 M 5 9 M Z R c + R o j s J M a v U 9 u A f D t A K g v h r b L I h L A g 5 J w J H L L 3 b k L 9 z w S z f E F h Z 6 C b m t J E k b 2 M 9 w q Y F e s n m r y K O 6 h S t f Y e Y 2 Q n H i M Z S + 1 t Y w 1 K M g n 5 r 2 / g m y S I n 4 A 8 m x / e e X Y 3 U / 5 D h 7 k u A o x 0 S O C y + m a s Z e m P L 4 9 5 Y 7 f k g b 8 1 J T K D x f f Y 8 P B j x p 1 5 z z b S H W E s 7 T Z o t X 4 z Y q u a C W P r 8 5 5 9 H G 9 B Y l b v T 3 3 8 Q N m U y n s F G F 3 Y C e G 8 K J a B K v l E 4 a 2 + k G G T S q V z m V X M 7 V 2 d b b r U T I G + 8 q V n U 1 1 x K 7 i o Q 0 5 a e l j 5 2 b m f d v N P n b N j s G a T V j 1 Q / 1 g q 6 l r r 3 z D j 2 C R H x K d E V N + O g c J V a B n + m n w X F L x L h p q X w N p i Z L W i 9 E v G D 7 V V 8 n q z 5 d 8 V / m x K C l V h S J a w f B g i y D P R L 6 f V k R 1 N K 3 4 6 s 6 F T Q m y / h P C z p j s 6 d t R M z K 5 F I 2 9 + Z M Y H 1 M 1 + v X E r H C S 5 4 v c X j N q u J G p k k v k P 4 g 5 9 Y k b N f z Z G a f u L E n m z 1 j 8 p N n W x r k 5 6 X 4 U l / r H Z J r S i j 8 i r C a b Q d 4 R v k V B J g v 8 p 3 j F U P g E h t M E 3 p m n x z s C p f 0 A K r 4 q L N 6 w y W K + D d T V F z 5 i m t + R h M / + W q L u u n v B o f 7 s A z F R y s B L H / m u F 6 G 3 i q u 2 Y + 4 3 g B z Z S g h w M / V p r 5 z o I O l L 1 E g q r K v 1 c t 5 V a 8 b s j P + l 9 4 s R j / M 5 W t T 4 K 1 M B e J r h d / I 5 P P V 1 E P N 5 2 s V R 5 H 1 7 Q W / w Z 4 Q 4 j d x 4 B g m u W c E T A 8 F D i + p k V e F R D 0 M R b V p P f z Z k b / T y y j k O g u 5 O r 1 y j 9 P i d V J d W w w i 5 2 h a R e r T g g s g p 8 k x v u G D F 6 7 r x m R V s r 0 k Q H R W I 9 N J n Z d j Y i 7 x 9 / h h P T G 0 z k o 3 d Y k Y W i X d D 7 v P V b 1 O M S r a 6 C J U v 4 5 G e c 0 n R X R G 2 b Y 6 R z c z O q d 2 a C k f s i d Y r O K g N D 8 2 / 4 m N h b h B / 5 V c I O s v f d / z 7 9 m Y k z O c W o X X Z j K P i B W / x c b R 0 9 P 8 S x D S X + u a j I S H k Y O H 8 Q Z 4 m D l 4 m G + A h 5 W D h / U 6 e F S v j y s J / F v k K L 8 3 f f q U a J n X C z 5 o x c c L c 4 M P F R 0 7 J P e x m 0 r / t t O 5 7 l x t T s 6 T e c 1 E t / f E N 7 T w j 2 3 n + Y Y j 8 v N S N q K 1 p 3 o 6 Z U E d F f V R U e + H o r a O i v o Z r j x W 1 J 3 u c H t l n T m 1 p W s H r q z t X Z U 1 2 0 M 5 G t V H X X 0 4 u t o + 6 u p n n O j B u v p z q / X 7 1 s q 6 v r I H c u D K u r a n y v p o W R + 1 9 R 5 q 6 9 p R W z / j 5 i X T 1 u 2 7 U g Z 2 P Z P S R d M P W 2 f b h U 9 g 0 q T y c M r H i + L u l J 6 b j D h L Q C j s 7 u a s 2 x 6 8 Q L D G r u K V H B r r i 8 + X Y Q j X p w j 6 + g 8 S B D Z I x D B W T h j 2 C s t c q E y D U P H x 2 C l 0 F D Z f H s j s / e 1 J Y H g 6 R a P J K M v s 0 q n a i r m 8 V v x W h 8 2 m Z 5 g 6 f 0 n z / C k 3 K I r c e / R V 5 P k T t + 1 G f 5 w / u G E 8 W I 4 + e / 6 E J p J j + N N 3 K c 6 D 0 E 9 C h H h F 6 b T 6 T r t 1  
 O X R u e z 2 a K 9 A k F f + b r T 5 W 8 u m O Z w 0 x x V 2 C 0 R 8 E w c u A H i f E I K 9 Q E N 5 7 r o S R q J E 9 T H g V z C b I D w N x K V + u z N N k i x Q d I P O 4 Q t s d o V k k d f g J h R P X d 3 l E P F U l 6 V E T l x a u Q n Z m p J a p L P f I 8 8 f g C g V d 6 a J Q d F I n f X x + 8 G K R W Y l V W Q G N i S U d a 6 z d W b P d 7 J y 3 l A 2 m J q S T c s f k M r / T p P + f u T P X H + f Z E l R T r k m 1 Q m L d W G n E n S V k s B Z J o V s 3 v e G d 8 6 n Z v m 2 J 9 0 V I P T i W U F S L U 8 R T N L X + e X s 9 v F M 2 W K q w Y m Y I a v 1 r 6 d G X T 5 5 J j 7 4 V P f o G e n i A / q L f / H z R / d x R N t i 8 O R Q l Z 8 G f S Z G x F U X G B o q E 9 J 7 1 u 7 + 3 + s r w + i b N e O Y x d e 6 P m D p X N C 3 I n a u + e u 7 c v I a v k z o 3 c a 3 z 5 M j c S o 7 M D X K 0 p d M H y d a w T e D A P 0 U e H w w Q K 9 4 i R V a G G m s r a q w N 1 N j i n t K w 2 R 8 q H 7 u 3 f Z k w + 9 m E k X u D 2 Z N q J c i 0 t y L T 3 k B m j W c U 7 1 y s 0 F h 7 P o 3 0 R l P q l N 3 2 F N a 2 o r C 2 g c J 6 Y T C e E F m v c A M L N B 2 E G 1 b i 0 C W I r m 9 F d H 6 t y j 2 8 W m V P i B F D v f X t x W + f 1 J 9 3 6 1 Q k g i P f a 9 L 3 u v S 9 I X 0 n 1 0 V 5 g S b v t 2 h y 1 5 r c t y Z 3 r s m 9 a 3 L 3 m t y / V q 9 0 a 6 Y m J m X z p Y X M z f b q z h C q z 3 V P p 1 P L f s V z y z V t e / 9 U M n 5 e w Q u F J K H 0 x u b R D a 3 K D Q X t c t G 8 G 9 B o 0 0 s F P d J r h h R h e R t P d X M w 5 c X t t w r 9 1 M 0 h m R e n p k I f d Y v A z s u e k 3 h T v + G V a a v Q i 8 j Q Z r 8 5 b R W 6 D h n a a m 9 O W 4 V O Q 4 a 2 + h t o j / 3 y B r R D 8 g b U A m 9 A L f A G 1 E J v Q C 3 0 B t R C b 0 A t 9 A b U / f I G d P 1 Q v Q F N a 6 w N y j Y g Y Y v n x 1 z 6 b d z w v f h R m u 2 r b v 9 6 + P H m + t w Z 9 l u d i 7 N W c z B U 3 i u 9 Z n 9 4 3 W w r w + b v r Y 6 S t K h a o s F n 0 K r K 8 k I o Z X G 4 H + U K r w a p M e 6 V e Y L 1 h o Q S m T B t T b U O k v X p s x 9 4 l G L P v 6 f 0 2 B x F e O X h K 3 K K e B S A L s L g D z S O H Z / F I Q x 4 i y 0 R B i w B i T j 8 3 / / i P 7 + q H 2 q N b O v 4 a c G n D H 1 b o D D Z U 4 U n p 2 a u f 7 9 k k 4 r B 3 / y z L a x Q z B I Y v x C 5 M Z K I 5 Q V z c k g n X T B 3 7 7 2 x E 8 U s e w q G p 7 O c C B D c + u p F H p 5 r Z + a N Q j d 8 c k T e q 5 T I Q P y C 1 y R y V V Q P 2 A s v 6 a E T J Z v 7 c N Z C 5 f i T p 1 S c c M n Y i 9 w + V S W e m o Y g x J N T 8 k I G b R w H 7 I N G 9 F Z B 5 d X q K m 2 g F z b I b / G d i v 8 y Q s 5 X L 4 y X 7 s y B N x A 4 K X 6 Q D J 1 U S i J p R A C o 9 M K I A Q i E B + M e + e O n H C B Q J 1 P u h G i W D R x l q 7 i T V O A I R h V 9 x Y t f 5 E i P h M S c Z R u i d P w 0 x t O 3 Y A / o M M s C i n 2 Q d i d a Y K 6 a O E T l Z Q N Q v A r T W E k h h L B j h K c f z / h D 8 O g k T w G l Q N Q T z s f s 7 o U u f 9 U r 2 U c a B 4 u n k E u 4 A c c j u r 2 7 / v X V x + E 7 R V d 1 Q 0 m t O e + U q 5 u z j 0 I o U D Q O v Q U H q q 8 R S T Y 8 M 8 + n 7 5 X j m X 6 I 4 0 V 0 + v P P j 4 + P H 9 z Z f R B 6 8 c P c G 3 9 I n l m B R 5 E Z b J K c C e T 5 e 7 q E G m R 0 f c P D 5 F N N a d C E A P T 4 X P o p u e T 5 u t Q Z u + x 7 c 3 W 6 C n B 9 Y V J v p I B w k 5 5 Y 6 / q Y 5 O 5 0 i v / 9 C f 6 7 Y O s q / v s R a z a F p N v 4 G 1 O 4 X 6 W 3 X t n 7 l P S p p r u b s 1 U s R c E K Z m R B C 3 n E I A c 3 E x 7 E o z / K d W c w 7 N / e t D r D g X L e 7 V x e X 9 3 2 m + B O K K L K C n q l 2 9 M Z E g f I s q T I Z e W p w W B S W A y 7 y u 2 g p Q x a v R b G p H W h n N 1 h z G 5 u m s r J u 5 M s L X w B g 5 D 4 + S p m 7 H N 5 p G r S E A 3 7 z Y s W Q a H U K O 8 C g i 2 3 6 V d K V / h 7 p U Z p + k j k O Y V T F n 1 Q R / m W K R 1 v r M o c 8 t P u D g c O J Y h + y J m F d Z V L 4 w 7 Q 6 H g B N D a W d B B X i F h X l Q o n T R W X I 5 w 8 h 9 w q d p N g O U o s x y x 2 u H + a m F E J p g o A U f A 6 o Q y J p s j i h 9 G z P l D X D e s 3 N k b 4 Z 9 j D / w z a T o p P 8 k Z 2 u 1 b l 2 V + V e b e n / B c k M d + W 7 0 u 1 Z Z q F v 1 y f  
 p 1 m S V + 0 z V B j w X l 6 8 h s P h x S k F H n J X e J L M F H N g 8 8 3 i G I j n 0 3 M w k J 5 W L 4 W B T V 9 X V + g x p 1 w c S L i G M o D e k K c S p C 0 l K L l y t b l J 6 a k 3 U t M n w R S z t k L D F i 3 Y G 3 B Q N i Y H k J z r C 0 f L X 7 p X K p U b d m Y H Z W a 6 r h U g o W + D h F 4 N E m y m g T H w d D W v 2 9 e d K z Z W O V j k 1 i o / n 0 Z 6 G Z L B F U / p d o 2 + p x 8 4 c / i 7 l h l C V q u U 1 q r 5 4 2 m p e T i g z T i g i n C Q 9 D e Y v 0 I W z / q t 5 u + t T 6 2 O k M c c 4 d 3 U o P x U y 3 Z d F m L x X G / Z i v n A q V e N V o Y 5 W 6 H 0 I I M X J S A o b q y 4 4 u W d j I V t q G z k U 5 3 C i y l r s a J P q j w f K / 6 q R 9 F y r k m z y z b y 0 p Z P 3 m q + T a P n a Y A M 1 O 0 0 Q H G j 7 9 Q j z c t U v T I L B f V K T 4 Z F M p 4 h J b G y C D y l j / 6 1 9 E L s m 8 G l C 9 a T E g f K C C k x X o b 9 L I k 2 e c l T c J E p 0 B N p g F d I y K l T G n 2 Y Z E C f Y / h X J f A V 9 M 2 D P T T l U z B b z l E O t 1 s C T 3 b 4 1 z m n 2 3 X 5 7 k G 6 R n m W S f k u c A x 6 S + O v R E P 2 p q l 8 7 H G F k k x 5 e T d n 5 d i m j G w q f V 2 d p A Y s Q C R V W B q L z K n K D A r Y R 7 E a P H r D s 5 R m E Z C K S m 5 k w D J z 0 + 1 c N O + U 9 0 q r 0 z x r Y 4 8 a + 9 q t n y + x R L f W b V 2 A 6 c u T o e a Z x U m i 1 H I Y w T H y 2 9 Z g F 5 Q a k G x T 5 F z N I p U u L Y k W m L G f W x e d 3 R A D m k R + 1 x z 2 k Z O / l h s t O M 3 + 8 b a / E 1 a Q + 5 H l k s 3 h q C T N b G m O u u x f 7 z h K S c L a n F G S s 9 m W H q V B c 3 j b 3 x Y r 6 R w 8 f W Z i W S h 4 S T b d 0 s M 0 u O 3 s g N D 3 1 d i R x U 5 F i G t t O f I o X X k r q a D y r O u 1 G 7 / f + U H q 5 G x z n u 5 O n 3 0 u N X o 5 K K W m j I E X x + Q K u p e O 0 V X b P X l M H m H / 0 P O R 0 3 H x a n u W 7 8 K t 1 q p i e s A S u X k S s M + W T 0 V o D b Z C a 1 A R W l Y K L X i g h f I z / u 5 i + 1 l + j I / l 9 k 6 w S h 5 m L g o a S o 9 i k x T K q Z i s a l F k H r 0 J X E r C d c g X T M U D C 3 f C 0 Y n 6 L y s H H p o Y M e U v W p E J g T 9 d y J 9 Y H G w F e X 1 r 5 C 1 D X U F e z S C v G 4 0 s 8 r p h F C G v l 0 D e y E P e 2 B 5 5 N T P y l q l n c D f r Z h Z 3 s 1 6 I u 1 E C d z M P d 7 M E 1 6 h Z 3 K 0 V 3 P U S T G N u j f v 3 7 / 8 P G X v e J Q = =  
 : f x d r e e m a > * /  
 