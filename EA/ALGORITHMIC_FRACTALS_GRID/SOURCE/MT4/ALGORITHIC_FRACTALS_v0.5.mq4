/ / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 / / )       _ _ _ _     _     _     _ _ _ _     _ _ _ _     _ _ _ _     _ _ _ _     _ _     _ _         _ _             _ _ _     _ _ _ _ _     _ _     _ _       ( / /  
 / / )     (   _ _ _ ) (   \ /   ) (     _   \ (     _   \ (   _ _ _ ) (   _ _ _ ) (     \ /     )     / _ _ \         /   _ _ ) (     _     ) (     \ /     )     ( / /  
 / / )       ) _ _ )     )     (     ) ( _ )   ) )       /   ) _ _ )     ) _ _ )     )         (     / ( _ _ ) \     (   ( _ _     ) ( _ ) (     )         (       ( / /  
 / / )     ( _ _ )     ( _ / \ _ ) ( _ _ _ _ / ( _ ) \ _ ) ( _ _ _ _ ) ( _ _ _ _ ) ( _ / \ / \ _ ) ( _ _ ) ( _ _ ) ( ) \ _ _ _ ) ( _ _ _ _ _ ) ( _ / \ / \ _ )     ( / /  
 / / )       h t t p s : / / f x d r e e m a . c o m                                                           C o p y r i g h t   2 0 2 3 ,   f x D r e e m a     ( / /  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 # p r o p e r t y   c o p y r i g h t       " C O P Y R I G H T ,   2 0 2 3   -   A L G O R I T H M I C ,   G M B H "  
 # p r o p e r t y   l i n k                 " h t t p s : / / w w w . a l g o r i t h m i c . o n e "  
 # p r o p e r t y   d e s c r i p t i o n   " A L G O R I T H M I C   F R A C T A L S "  
 # p r o p e r t y   v e r s i o n           " 0 . 5 "  
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
 # d e f i n e   P R O J E C T _ I D   " m t 4 - 8 1 1 6 "  
 / / - -  
 / /   P o i n t   F o r m a t   R u l e s  
 # d e f i n e   P O I N T _ F O R M A T _ R U L E S   " 0 . 0 0 1 = 0 . 0 1 , 0 . 0 0 0 0 1 = 0 . 0 0 0 1 , 0 . 0 0 0 0 0 1 = 0 . 0 0 0 1 , U S 5 0 0 = 0 . 0 1 , E U R U S D = 0 . 0 0 0 1 "   / /   t h i s   i s   d e s e r i a l i z e d   i n   a   s p e c i a l   f u n c t i o n   l a t e r  
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
 # d e f i n e   U S E _ E M E R G E N C Y _ S T O P S   " y e s "   / /   " y e s "   t o   u s e   e m e r g e n c y   ( h a r d   s t o p s )   w h e n   v i r t u a l   s t o p s   a r e   i n   u s e .   " a l w a y s "   t o   u s e   E M E R G E N C Y _ S T O P S _ A D D   a s   e m e r g e n c y   s t o p s   w h e n   t h e r e   i s   n o   v i r t u a l   s t o p .  
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
 i n p u t   s t r i n g   S Y M B   =   " = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   S Y M B O L S   =   " " ;   / /     I N S T R U M E N T S   T O   U S E   S E P E R A T E D   B Y   C O M M A   " , "  
 i n p u t   s t r i n g   T P _ S L _ C O N F I G   =   " = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   b o o l   R M _ P E R C E N T _ A C T   =   t r u e ;   / /   M O N E Y   M A N A G E M T N   B A S E D   O N   %   F R E E   E Q U I T Y   N O T   L O T S  
 i n p u t   d o u b l e   R M _ P E R C T   =   0 . 1 ;   / /   S L   =   %   R I S K   O F   B A L A N C E   W H E N   H I T S   S L  
 i n p u t   d o u b l e   T P _ p e r c   =   3 0 0 . 0 ;   / /   T P   =   %   O F   S L   -   1 : 2 R R   =   2 0 0   -   1 : 3 R R   =   3 0 0   -   1 : 5 R R   =   5 0 0  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _   =   " = = = = = = = =   B R E A K E V E N _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   B R E A K E V E N _ C O N F I G   = = = = = = = =  
 i n p u t   b o o l   B E _ E N A B L E D   =   t r u e ;   / /   B E _ E N A B L E D  
 i n p u t   d o u b l e   B r e a k E v e n T P   =   3 0 . 0 ;   / /   B R E A K E V E N   A T   T P   %  
 i n p u t   s t r i n g   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _   =   " = = = = = = = =   P A R T I A L S _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   P A R T I A L S _ C O N F I G   = = = = = = = =  
 i n p u t   b o o l   P A R T I A L S _ E N A B L E D   =   t r u e ;   / /   P A R T I A L S _ E N A B L E D   -    
 i n p u t   d o u b l e   P A R T I A L S _ T R I G G E R _ A M O U N T   =   1 0 0 0 . 0 ;   / /   A M O U N T   O F   M O N E Y   T O   T R I G G E R   T H E   P A R T I A L  
 i n p u t   d o u b l e   P a r t i a l P r e c e n t   =   5 0 . 0 ;   / /   T H E   P A R T I A L S   %   O F   T H E   E X I S T I N G   V O L U M E   W H E N   B E   I S   H I T  
 i n p u t   s t r i n g   _ T R A I L I N G _ C O N F I G   =   " = = = = = = = =   T R A I L I N G _ C O N F I G   = = = = = = = = " ;   / /   = = = = = = = =   T R A I L I N G _ C O N F I G   = = = = = = = =  
 i n p u t   b o o l   T R A I L I N G _ E N A B L E D   =   t r u e ;   / /   T R A I L I N G _ E N A B L E D  
 i n p u t   d o u b l e   T r a i l i n g _ S t o p   =   5 0 . 0 ;   / /   S T A R T S   T R A I L I N G   A T   %   O F   T O T A L   P R O F I T   S I Z E  
 i n p u t   d o u b l e   T r a i l i n g _ S t e p   =   2 5 . 0 ;   / /   S T E P S   A R E   A   %   T R A I L I N G   S T O P  
 i n p u t   s t r i n g   M A X _ D D   =   " = = = = =   M A X   D R A W D O W N   K I L L   S W I T C H   C O N F I G   = = = = = " ;   / /   = = = = =   M A X   D R A W D O W N   K I L L   S W I T C H   C O N F I G   = = = = =  
 i n p u t   b o o l   C u t _ L o s s   =   t r u e ;   / /   M A X   D R A W D O W N   S T O P   ( e n a b l e d   i f   =   t r u e )  
 i n p u t   d o u b l e   C u t _ L o s s _ p e r c e n t   =   1 . 5 ;   / /   M A X   D R A W D O W N   T O   S T O P   A L L   T R A D E S   A T   %   ( %   o f   t o t a l   b a l a n c e )  
 i n p u t   s t r i n g   P R O F I T _ C O N F I G   =   " = = = = =   P R O F I T   C O N F I G   = = = = = " ;   / /   = = = = =   P R O F I T   C O N F I G   = = = = =  
 i n p u t   d o u b l e   D A I L Y _ P R O F I T _ G O A L   =   5 0 0 0 . 0 ;   / /   D E F I N E S   M A X   D A I L Y   P R O F I T    
 i n p u t   d o u b l e   D A I L Y _ L O S S _ G O A L   =   - 5 0 0 . 0 ;   / /   D E F I N E S   M A X   D A I L Y   L O S S    
 i n p u t   s t r i n g   T i m e _ C o n t r o l   =   " = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   b o o l   M o n d a y   =   t r u e ;   / /   M O N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T u e s d a y   =   t r u e ;   / /   T U E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   W e d n e s d a y   =   t r u e ;   / /   W E D N E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T h u r s d a y   =   t r u e ;   / /   T H U R S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   F r i d a y   =   t r u e ;   / /   F R I D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S a t u r d a y   =   f a l s e ;   / /   S A T U R D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S u n d a y   =   f a l s e ;   / /   S U N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   s t r i n g   S t a r t _ H o u r   =   " 0 : 0 1 " ;   / /   S T A R T   H O U R  
 i n p u t   s t r i n g   E n d _ H o u r   =   " 2 3 : 5 9 " ;   / /   E N D   H O U R  
 i n p u t   s t r i n g   M A X _ P T   =   " = = = = = = = =   M A X _ P A R A L E L L _ T R A D E S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   M A X _ P A R A L E L L _ T R A D E S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   i n t   H O W _ M A N Y _ T R A D E S   =   1 ;   / /   H O W   M A N Y   T R A D E S   O P E N  
 i n p u t   i n t   D I S T A N C E _ T R E N D _ P I P S   =   5 0 ;   / /   D I S T A N C E _ T R E N D _ P I P S   D E B U G   T O   O P T I M I Z E  
 i n p u t   i n t   E M A _ T R E N D   =   2 0 0 ;   / /   E M A _ T R E N D   D E B U G   T O   O P T I M I Z E  
 i n p u t   i n t   D I S T A N C E _ G R I D _ P I P S   =   1 0 ;   / /   D I S T A N C E _ G R I D _ P I P S   D E B U G   T O   O P T I M I Z E  
 i n p u t   i n t   M a g i c S t a r t   =   1 2 3 1 2 5 5 ;   / /   M a g i c   N u m b e r ,   k i n d   o f . . .  
 c l a s s   c  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   S Y M B ;  
 	 s t a t i c   s t r i n g   S Y M B O L S ;  
 	 s t a t i c   s t r i n g   T P _ S L _ C O N F I G ;  
 	 s t a t i c   b o o l   R M _ P E R C E N T _ A C T ;  
 	 s t a t i c   d o u b l e   R M _ P E R C T ;  
 	 s t a t i c   d o u b l e   T P _ p e r c ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 	 s t a t i c   b o o l   B E _ E N A B L E D ;  
 	 s t a t i c   d o u b l e   B r e a k E v e n T P ;  
 	 s t a t i c   s t r i n g   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 	 s t a t i c   b o o l   P A R T I A L S _ E N A B L E D ;  
 	 s t a t i c   d o u b l e   P A R T I A L S _ T R I G G E R _ A M O U N T ;  
 	 s t a t i c   d o u b l e   P a r t i a l P r e c e n t ;  
 	 s t a t i c   s t r i n g   _ T R A I L I N G _ C O N F I G ;  
 	 s t a t i c   b o o l   T R A I L I N G _ E N A B L E D ;  
 	 s t a t i c   d o u b l e   T r a i l i n g _ S t o p ;  
 	 s t a t i c   d o u b l e   T r a i l i n g _ S t e p ;  
 	 s t a t i c   s t r i n g   M A X _ D D ;  
 	 s t a t i c   b o o l   C u t _ L o s s ;  
 	 s t a t i c   d o u b l e   C u t _ L o s s _ p e r c e n t ;  
 	 s t a t i c   s t r i n g   P R O F I T _ C O N F I G ;  
 	 s t a t i c   d o u b l e   D A I L Y _ P R O F I T _ G O A L ;  
 	 s t a t i c   d o u b l e   D A I L Y _ L O S S _ G O A L ;  
 	 s t a t i c   s t r i n g   T i m e _ C o n t r o l ;  
 	 s t a t i c   b o o l   M o n d a y ;  
 	 s t a t i c   b o o l   T u e s d a y ;  
 	 s t a t i c   b o o l   W e d n e s d a y ;  
 	 s t a t i c   b o o l   T h u r s d a y ;  
 	 s t a t i c   b o o l   F r i d a y ;  
 	 s t a t i c   b o o l   S a t u r d a y ;  
 	 s t a t i c   b o o l   S u n d a y ;  
 	 s t a t i c   s t r i n g   S t a r t _ H o u r ;  
 	 s t a t i c   s t r i n g   E n d _ H o u r ;  
 	 s t a t i c   s t r i n g   M A X _ P T ;  
 	 s t a t i c   i n t   H O W _ M A N Y _ T R A D E S ;  
 	 s t a t i c   i n t   D I S T A N C E _ T R E N D _ P I P S ;  
 	 s t a t i c   i n t   E M A _ T R E N D ;  
 	 s t a t i c   i n t   D I S T A N C E _ G R I D _ P I P S ;  
 	 s t a t i c   i n t   M a g i c S t a r t ;  
 } ;  
 s t r i n g   c : : S Y M B ;  
 s t r i n g   c : : S Y M B O L S ;  
 s t r i n g   c : : T P _ S L _ C O N F I G ;  
 b o o l   c : : R M _ P E R C E N T _ A C T ;  
 d o u b l e   c : : R M _ P E R C T ;  
 d o u b l e   c : : T P _ p e r c ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 b o o l   c : : B E _ E N A B L E D ;  
 d o u b l e   c : : B r e a k E v e n T P ;  
 s t r i n g   c : : _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 b o o l   c : : P A R T I A L S _ E N A B L E D ;  
 d o u b l e   c : : P A R T I A L S _ T R I G G E R _ A M O U N T ;  
 d o u b l e   c : : P a r t i a l P r e c e n t ;  
 s t r i n g   c : : _ T R A I L I N G _ C O N F I G ;  
 b o o l   c : : T R A I L I N G _ E N A B L E D ;  
 d o u b l e   c : : T r a i l i n g _ S t o p ;  
 d o u b l e   c : : T r a i l i n g _ S t e p ;  
 s t r i n g   c : : M A X _ D D ;  
 b o o l   c : : C u t _ L o s s ;  
 d o u b l e   c : : C u t _ L o s s _ p e r c e n t ;  
 s t r i n g   c : : P R O F I T _ C O N F I G ;  
 d o u b l e   c : : D A I L Y _ P R O F I T _ G O A L ;  
 d o u b l e   c : : D A I L Y _ L O S S _ G O A L ;  
 s t r i n g   c : : T i m e _ C o n t r o l ;  
 b o o l   c : : M o n d a y ;  
 b o o l   c : : T u e s d a y ;  
 b o o l   c : : W e d n e s d a y ;  
 b o o l   c : : T h u r s d a y ;  
 b o o l   c : : F r i d a y ;  
 b o o l   c : : S a t u r d a y ;  
 b o o l   c : : S u n d a y ;  
 s t r i n g   c : : S t a r t _ H o u r ;  
 s t r i n g   c : : E n d _ H o u r ;  
 s t r i n g   c : : M A X _ P T ;  
 i n t   c : : H O W _ M A N Y _ T R A D E S ;  
 i n t   c : : D I S T A N C E _ T R E N D _ P I P S ;  
 i n t   c : : E M A _ T R E N D ;  
 i n t   c : : D I S T A N C E _ G R I D _ P I P S ;  
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
  
  
  
  
  
  
  
  
  
  
  
  
 c l a s s   v  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   E A _ N A M E ;  
 	 s t a t i c   s t r i n g   L _ N a m e ;  
 	 s t a t i c   s t r i n g   L _ E m a i l ;  
 	 s t a t i c   s t r i n g   L _ A c t i v a t i o n ;  
 	 s t a t i c   s t r i n g   L _ V a l i d i t y ;  
 	 s t a t i c   s t r i n g   L _ V a l i d i t y _ T ;  
 	 s t a t i c   d o u b l e   C u t _ L o s s _ p e r c e n t ;  
 	 s t a t i c   b o o l   m a x _ d d _ h i t ;  
 	 s t a t i c   b o o l   E A _ R u n n i n g ;  
 	 s t a t i c   b o o l   E A _ W e e k d a y ;  
 	 s t a t i c   d o u b l e   S L ;  
 	 s t a t i c   d o u b l e   T P ;  
 	 s t a t i c   b o o l   m a x _ d _ p r o f i t _ h i t ;  
 	 s t a t i c   b o o l   m a x _ d a i l y _ l o s s _ h i t ;  
 	 s t a t i c   d o u b l e   t o t a l _ p r o f i t _ r e m a i n i n g ;  
 	 s t a t i c   i n t   E M A _ T R E N D ;  
 	 s t a t i c   d o u b l e   D I S T A N C E _ G R I D _ B S ;  
 } ;  
 s t r i n g   v : : E A _ N A M E ;  
 s t r i n g   v : : L _ N a m e ;  
 s t r i n g   v : : L _ E m a i l ;  
 s t r i n g   v : : L _ A c t i v a t i o n ;  
 s t r i n g   v : : L _ V a l i d i t y ;  
 s t r i n g   v : : L _ V a l i d i t y _ T ;  
 d o u b l e   v : : C u t _ L o s s _ p e r c e n t ;  
 b o o l   v : : m a x _ d d _ h i t ;  
 b o o l   v : : E A _ R u n n i n g ;  
 b o o l   v : : E A _ W e e k d a y ;  
 d o u b l e   v : : S L ;  
 d o u b l e   v : : T P ;  
 b o o l   v : : m a x _ d _ p r o f i t _ h i t ;  
 b o o l   v : : m a x _ d a i l y _ l o s s _ h i t ;  
 d o u b l e   v : : t o t a l _ p r o f i t _ r e m a i n i n g ;  
 i n t   v : : E M A _ T R E N D ;  
 d o u b l e   v : : D I S T A N C E _ G R I D _ B S ;  
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
 i n t   F X D _ B L O C K S _ C O U N T                 =   8 9 ;  
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
 	 c : : S Y M B   =   S Y M B ;  
 	 c : : S Y M B O L S   =   S Y M B O L S ;  
 	 c : : T P _ S L _ C O N F I G   =   T P _ S L _ C O N F I G ;  
 	 c : : R M _ P E R C E N T _ A C T   =   R M _ P E R C E N T _ A C T ;  
 	 c : : R M _ P E R C T   =   R M _ P E R C T ;  
 	 c : : T P _ p e r c   =   T P _ p e r c ;  
 	 c : : _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _   =   _ _ _ _ _ _ _ _ _ B R E A K E V E N _ C O N F I G _ _ ;  
 	 c : : B E _ E N A B L E D   =   B E _ E N A B L E D ;  
 	 c : : B r e a k E v e n T P   =   B r e a k E v e n T P ;  
 	 c : : _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _   =   _ _ _ _ _ _ _ _ _ P A R T I A L S _ C O N F I G _ _ _ _ _ _ _ ;  
 	 c : : P A R T I A L S _ E N A B L E D   =   P A R T I A L S _ E N A B L E D ;  
 	 c : : P A R T I A L S _ T R I G G E R _ A M O U N T   =   P A R T I A L S _ T R I G G E R _ A M O U N T ;  
 	 c : : P a r t i a l P r e c e n t   =   P a r t i a l P r e c e n t ;  
 	 c : : _ T R A I L I N G _ C O N F I G   =   _ T R A I L I N G _ C O N F I G ;  
 	 c : : T R A I L I N G _ E N A B L E D   =   T R A I L I N G _ E N A B L E D ;  
 	 c : : T r a i l i n g _ S t o p   =   T r a i l i n g _ S t o p ;  
 	 c : : T r a i l i n g _ S t e p   =   T r a i l i n g _ S t e p ;  
 	 c : : M A X _ D D   =   M A X _ D D ;  
 	 c : : C u t _ L o s s   =   C u t _ L o s s ;  
 	 c : : C u t _ L o s s _ p e r c e n t   =   C u t _ L o s s _ p e r c e n t ;  
 	 c : : P R O F I T _ C O N F I G   =   P R O F I T _ C O N F I G ;  
 	 c : : D A I L Y _ P R O F I T _ G O A L   =   D A I L Y _ P R O F I T _ G O A L ;  
 	 c : : D A I L Y _ L O S S _ G O A L   =   D A I L Y _ L O S S _ G O A L ;  
 	 c : : T i m e _ C o n t r o l   =   T i m e _ C o n t r o l ;  
 	 c : : M o n d a y   =   M o n d a y ;  
 	 c : : T u e s d a y   =   T u e s d a y ;  
 	 c : : W e d n e s d a y   =   W e d n e s d a y ;  
 	 c : : T h u r s d a y   =   T h u r s d a y ;  
 	 c : : F r i d a y   =   F r i d a y ;  
 	 c : : S a t u r d a y   =   S a t u r d a y ;  
 	 c : : S u n d a y   =   S u n d a y ;  
 	 c : : S t a r t _ H o u r   =   S t a r t _ H o u r ;  
 	 c : : E n d _ H o u r   =   E n d _ H o u r ;  
 	 c : : M A X _ P T   =   M A X _ P T ;  
 	 c : : H O W _ M A N Y _ T R A D E S   =   H O W _ M A N Y _ T R A D E S ;  
 	 c : : D I S T A N C E _ T R E N D _ P I P S   =   D I S T A N C E _ T R E N D _ P I P S ;  
 	 c : : E M A _ T R E N D   =   E M A _ T R E N D ;  
 	 c : : D I S T A N C E _ G R I D _ P I P S   =   D I S T A N C E _ G R I D _ P I P S ;  
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
 	 v : : E A _ N A M E   =   " A L G O R I T H M I C _ F R A C T A L S " ;  
 	 v : : L _ N a m e   =   " A L G O R I T H M I C ,   G M B H " ;  
 	 v : : L _ E m a i l   =   " i n f o @ a l g o r i t h m i c . o n e " ;  
 	 v : : L _ A c t i v a t i o n   =   " 2 0 2 2 . 0 3 . 1 9 " ;  
 	 v : : L _ V a l i d i t y   =   " U N L I M I T E D " ;  
 	 v : : L _ V a l i d i t y _ T   =   " B A C K T E S T I N G " ;  
 	 v : : C u t _ L o s s _ p e r c e n t   =   0 . 0 ;  
 	 v : : m a x _ d d _ h i t   =   f a l s e ;  
 	 v : : E A _ R u n n i n g   =   f a l s e ;  
 	 v : : E A _ W e e k d a y   =   f a l s e ;  
 	 v : : S L   =   0 . 0 ;  
 	 v : : T P   =   0 . 0 ;  
 	 v : : m a x _ d _ p r o f i t _ h i t   =   f a l s e ;  
 	 v : : m a x _ d a i l y _ l o s s _ h i t   =   f a l s e ;  
 	 v : : t o t a l _ p r o f i t _ r e m a i n i n g   =   0 . 0 ;  
 	 v : : E M A _ T R E N D   =   2 0 0 ;  
 	 v : : D I S T A N C E _ G R I D _ B S   =   0 . 0 ;  
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
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   8 9 ) ;  
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
 	 _ b l o c k s _ [ 3 2 ]   =   n e w   B l o c k 3 2 ( ) ;  
 	 _ b l o c k s _ [ 3 3 ]   =   n e w   B l o c k 3 3 ( ) ;  
 	 _ b l o c k s _ [ 3 4 ]   =   n e w   B l o c k 3 4 ( ) ;  
 	 _ b l o c k s _ [ 3 5 ]   =   n e w   B l o c k 3 5 ( ) ;  
 	 _ b l o c k s _ [ 3 6 ]   =   n e w   B l o c k 3 6 ( ) ;  
 	 _ b l o c k s _ [ 3 7 ]   =   n e w   B l o c k 3 7 ( ) ;  
 	 _ b l o c k s _ [ 3 8 ]   =   n e w   B l o c k 3 8 ( ) ;  
 	 _ b l o c k s _ [ 3 9 ]   =   n e w   B l o c k 3 9 ( ) ;  
 	 _ b l o c k s _ [ 4 0 ]   =   n e w   B l o c k 4 0 ( ) ;  
 	 _ b l o c k s _ [ 4 1 ]   =   n e w   B l o c k 4 1 ( ) ;  
 	 _ b l o c k s _ [ 4 2 ]   =   n e w   B l o c k 4 2 ( ) ;  
 	 _ b l o c k s _ [ 4 3 ]   =   n e w   B l o c k 4 3 ( ) ;  
 	 _ b l o c k s _ [ 4 4 ]   =   n e w   B l o c k 4 4 ( ) ;  
 	 _ b l o c k s _ [ 4 5 ]   =   n e w   B l o c k 4 5 ( ) ;  
 	 _ b l o c k s _ [ 4 6 ]   =   n e w   B l o c k 4 6 ( ) ;  
 	 _ b l o c k s _ [ 4 7 ]   =   n e w   B l o c k 4 7 ( ) ;  
 	 _ b l o c k s _ [ 4 8 ]   =   n e w   B l o c k 4 8 ( ) ;  
 	 _ b l o c k s _ [ 4 9 ]   =   n e w   B l o c k 4 9 ( ) ;  
 	 _ b l o c k s _ [ 5 0 ]   =   n e w   B l o c k 5 0 ( ) ;  
 	 _ b l o c k s _ [ 5 1 ]   =   n e w   B l o c k 5 1 ( ) ;  
 	 _ b l o c k s _ [ 5 2 ]   =   n e w   B l o c k 5 2 ( ) ;  
 	 _ b l o c k s _ [ 5 3 ]   =   n e w   B l o c k 5 3 ( ) ;  
 	 _ b l o c k s _ [ 5 4 ]   =   n e w   B l o c k 5 4 ( ) ;  
 	 _ b l o c k s _ [ 5 5 ]   =   n e w   B l o c k 5 5 ( ) ;  
 	 _ b l o c k s _ [ 5 6 ]   =   n e w   B l o c k 5 6 ( ) ;  
 	 _ b l o c k s _ [ 5 7 ]   =   n e w   B l o c k 5 7 ( ) ;  
 	 _ b l o c k s _ [ 5 8 ]   =   n e w   B l o c k 5 8 ( ) ;  
 	 _ b l o c k s _ [ 5 9 ]   =   n e w   B l o c k 5 9 ( ) ;  
 	 _ b l o c k s _ [ 6 0 ]   =   n e w   B l o c k 6 0 ( ) ;  
 	 _ b l o c k s _ [ 6 1 ]   =   n e w   B l o c k 6 1 ( ) ;  
 	 _ b l o c k s _ [ 6 2 ]   =   n e w   B l o c k 6 2 ( ) ;  
 	 _ b l o c k s _ [ 6 3 ]   =   n e w   B l o c k 6 3 ( ) ;  
 	 _ b l o c k s _ [ 6 4 ]   =   n e w   B l o c k 6 4 ( ) ;  
 	 _ b l o c k s _ [ 6 5 ]   =   n e w   B l o c k 6 5 ( ) ;  
 	 _ b l o c k s _ [ 6 6 ]   =   n e w   B l o c k 6 6 ( ) ;  
 	 _ b l o c k s _ [ 6 7 ]   =   n e w   B l o c k 6 7 ( ) ;  
 	 _ b l o c k s _ [ 6 8 ]   =   n e w   B l o c k 6 8 ( ) ;  
 	 _ b l o c k s _ [ 6 9 ]   =   n e w   B l o c k 6 9 ( ) ;  
 	 _ b l o c k s _ [ 7 0 ]   =   n e w   B l o c k 7 0 ( ) ;  
 	 _ b l o c k s _ [ 7 1 ]   =   n e w   B l o c k 7 1 ( ) ;  
 	 _ b l o c k s _ [ 7 2 ]   =   n e w   B l o c k 7 2 ( ) ;  
 	 _ b l o c k s _ [ 7 3 ]   =   n e w   B l o c k 7 3 ( ) ;  
 	 _ b l o c k s _ [ 7 4 ]   =   n e w   B l o c k 7 4 ( ) ;  
 	 _ b l o c k s _ [ 7 5 ]   =   n e w   B l o c k 7 5 ( ) ;  
 	 _ b l o c k s _ [ 7 6 ]   =   n e w   B l o c k 7 6 ( ) ;  
 	 _ b l o c k s _ [ 7 7 ]   =   n e w   B l o c k 7 7 ( ) ;  
 	 _ b l o c k s _ [ 7 8 ]   =   n e w   B l o c k 7 8 ( ) ;  
 	 _ b l o c k s _ [ 7 9 ]   =   n e w   B l o c k 7 9 ( ) ;  
 	 _ b l o c k s _ [ 8 0 ]   =   n e w   B l o c k 8 0 ( ) ;  
 	 _ b l o c k s _ [ 8 1 ]   =   n e w   B l o c k 8 1 ( ) ;  
 	 _ b l o c k s _ [ 8 2 ]   =   n e w   B l o c k 8 2 ( ) ;  
 	 _ b l o c k s _ [ 8 3 ]   =   n e w   B l o c k 8 3 ( ) ;  
 	 _ b l o c k s _ [ 8 4 ]   =   n e w   B l o c k 8 4 ( ) ;  
 	 _ b l o c k s _ [ 8 5 ]   =   n e w   B l o c k 8 5 ( ) ;  
 	 _ b l o c k s _ [ 8 6 ]   =   n e w   B l o c k 8 6 ( ) ;  
 	 _ b l o c k s _ [ 8 7 ]   =   n e w   B l o c k 8 7 ( ) ;  
 	 _ b l o c k s _ [ 8 8 ]   =   n e w   B l o c k 8 8 ( ) ;  
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
 	 i n t   d i s a b l e d _ b l o c k s _ l i s t [ ]   =   { 6 0 , 6 1 , 6 2 , 6 3 , 6 4 , 6 5 , 6 6 , 6 7 , 6 8 , 6 9 , 7 0 , 7 1 } ;  
 	 f o r   ( i n t   l   =   0 ;   l   <   A r r a y S i z e ( d i s a b l e d _ b l o c k s _ l i s t ) ;   l + + )   {  
 	 	 _ b l o c k s _ [ d i s a b l e d _ b l o c k s _ l i s t [ l ] ] . _ _ d i s a b l e d   =   t r u e ;  
 	 }  
  
 	 / / - -   r u n   b l o c k s  
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 1 } ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( b l o c k s _ t o _ r u n ) ;   i + + )   {  
 	 	 _ b l o c k s _ [ b l o c k s _ t o _ r u n [ i ] ] . r u n ( ) ;  
 	 }  
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
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 3 , 2 1 , 4 4 , 4 5 , 4 6 , 6 0 , 6 4 } ;  
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
 / /   " M o d i f y   c h a r t   p r o p e r t i e s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 >  
 c l a s s   M D L _ C h a r t S e t P r o p e r t i e s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   C h a r t M o d e ;  
 	 T 2   C h a r t O n F o r e g r o u n d ;  
 	 T 3   C h a r t S h i f t ;  
 	 T 4   C h a r t A u t o S c r o l l ;  
 	 T 5   C h a r t S c a l e ;  
 	 T 6   C h a r t S h o w O H L C ;  
 	 T 7   C h a r t S h o w B i d L i n e ;  
 	 T 8   C h a r t S h o w A s k L i n e ;  
 	 T 9   C h a r t S h o w L a s t L i n e ;  
 	 T 1 0   C h a r t S h o w P e r i o d S e p a r a t o r s ;  
 	 T 1 1   C h a r t S h o w G r i d ;  
 	 T 1 2   C h a r t S h o w V o l u m e s ;  
 	 T 1 3   C h a r t S h o w D e s c r i p t i o n s ;  
 	 T 1 4   C h a r t S h o w T r a d e L e v e l s ;  
 	 T 1 5   C h a r t S h o w D a t e S c a l e ;  
 	 T 1 6   C h a r t S h o w P r i c e S c a l e ;  
 	 T 1 7   C h a r t S c a l e F i x 1 1 ;  
 	 T 1 8   C h a r t S c a l e F i x ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h a r t S e t P r o p e r t i e s ( )  
 	 {  
 	 	 C h a r t M o d e   =   ( i n t ) - 1 ;  
 	 	 C h a r t O n F o r e g r o u n d   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h i f t   =   ( i n t ) - 1 ;  
 	 	 C h a r t A u t o S c r o l l   =   ( i n t ) - 1 ;  
 	 	 C h a r t S c a l e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w O H L C   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w B i d L i n e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w A s k L i n e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w L a s t L i n e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w P e r i o d S e p a r a t o r s   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w G r i d   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w V o l u m e s   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w D e s c r i p t i o n s   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w T r a d e L e v e l s   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w D a t e S c a l e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S h o w P r i c e S c a l e   =   ( i n t ) - 1 ;  
 	 	 C h a r t S c a l e F i x 1 1   =   ( i n t ) - 1 ;  
 	 	 C h a r t S c a l e F i x   =   ( i n t ) - 1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 R e s e t L a s t E r r o r ( ) ;  
 	 	  
 	 	 i f   ( C h a r t M o d e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ M O D E , C h a r t M o d e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	  
 	 	 / / - -   c h a r t   p o s i t i o n i n g  
 	 	 i f   ( C h a r t O n F o r e g r o u n d ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ F O R E G R O U N D , C h a r t O n F o r e g r o u n d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   f o r e g r o u n d   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h i f t ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H I F T , C h a r t S h i f t ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   s h i f t   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t A u t o S c r o l l ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ A U T O S C R O L L , C h a r t A u t o S c r o l l ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   a u t o s c r o l l   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	  
 	 	 / / - -   c h a r t   s c a l e  
 	 	 i f   ( C h a r t S c a l e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S C A L E , C h a r t S c a l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   s c a l e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	  
 	 	 / / - -   c h a r t   e l e m e n t s  
 	 	 i f   ( C h a r t S h o w O H L C ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ O H L C , C h a r t S h o w O H L C ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   O H L C   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w B i d L i n e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ B I D _ L I N E , C h a r t S h o w B i d L i n e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   B i d   p r i c e   l i n e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w A s k L i n e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ A S K _ L I N E , C h a r t S h o w A s k L i n e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   A s k   p r i c e   l i n e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w L a s t L i n e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ L A S T _ L I N E , C h a r t S h o w L a s t L i n e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   l a s t   p r i c e   l i n e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w P e r i o d S e p a r a t o r s ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ P E R I O D _ S E P , C h a r t S h o w P e r i o d S e p a r a t o r s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   p e r i o d   s e p a r a t o r s   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w G r i d ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ G R I D , C h a r t S h o w G r i d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   g r i d   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w V o l u m e s ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ V O L U M E S , C h a r t S h o w V o l u m e s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   v o l u m e s   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w D e s c r i p t i o n s ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ O B J E C T _ D E S C R , C h a r t S h o w D e s c r i p t i o n s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   o b j e c t   d e s c r i p t i o n s   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w T r a d e L e v e l s ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ T R A D E _ L E V E L S , C h a r t S h o w T r a d e L e v e l s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   t r a d e   l e v e l s   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w D a t e S c a l e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ D A T E _ S C A L E , C h a r t S h o w D a t e S c a l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   d a t e   s c a l e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t S h o w P r i c e S c a l e ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S H O W _ P R I C E _ S C A L E , C h a r t S h o w P r i c e S c a l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   p r i c e   s c a l e   m o d e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	  
 	 	 / /   s c a l e   f i x  
 	 	 i f   ( C h a r t S c a l e F i x ! = - 1 )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S C A L E F I X , C h a r t S c a l e F i x ) )   { P r i n t ( " U n a b l e   t o   s e t   s c a l e   f i x   O n e   t o   O n e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 e l s e   {  
 	 	 	 i f   ( C h a r t S c a l e F i x 1 1 ! = - 1 )   {  
 	 	       	 i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ S C A L E F I X _ 1 1 , C h a r t S c a l e F i x 1 1 ) )   { P r i n t ( " U n a b l e   t o   s e t   s c a l e   f i x   O n e   t o   O n e .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 C h a r t R e d r a w ( ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
 / /   " M o d i f y   c h a r t   c o l o r s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 >  
 c l a s s   M D L _ C h a r t S e t C o l o r s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   C h a r t C o l o r B a c k g r o u n d ;  
 	 T 2   C h a r t C o l o r F o r e g r o u n d ;  
 	 T 3   C h a r t C o l o r G r i d ;  
 	 T 4   C h a r t C o l o r B a r U p ;  
 	 T 5   C h a r t C o l o r B a r D o w n ;  
 	 T 6   C h a r t C o l o r B u l l C a n d l e ;  
 	 T 7   C h a r t C o l o r B e a r C a n d l e ;  
 	 T 8   C h a r t C o l o r D o j i C a n d l e ;  
 	 T 9   C h a r t C o l o r V o l u m e s ;  
 	 T 1 0   C h a r t C o l o r B i d ;  
 	 T 1 1   C h a r t C o l o r A s k ;  
 	 T 1 2   C h a r t C o l o r L a s t ;  
 	 T 1 3   C h a r t C o l o r S t o p L e v e l s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h a r t S e t C o l o r s ( )  
 	 {  
 	 	 C h a r t C o l o r B a c k g r o u n d   =   ( c o l o r ) c l r B l a c k ;  
 	 	 C h a r t C o l o r F o r e g r o u n d   =   ( c o l o r ) c l r W h i t e ;  
 	 	 C h a r t C o l o r G r i d   =   ( c o l o r ) c l r L i g h t S l a t e G r a y ;  
 	 	 C h a r t C o l o r B a r U p   =   ( c o l o r ) c l r L i m e ;  
 	 	 C h a r t C o l o r B a r D o w n   =   ( c o l o r ) c l r L i m e ;  
 	 	 C h a r t C o l o r B u l l C a n d l e   =   ( c o l o r ) c l r B l a c k ;  
 	 	 C h a r t C o l o r B e a r C a n d l e   =   ( c o l o r ) c l r W h i t e ;  
 	 	 C h a r t C o l o r D o j i C a n d l e   =   ( c o l o r ) c l r L i m e ;  
 	 	 C h a r t C o l o r V o l u m e s   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r B i d   =   ( c o l o r ) c l r L i g h t S l a t e G r a y ;  
 	 	 C h a r t C o l o r A s k   =   ( c o l o r ) c l r R e d ;  
 	 	 C h a r t C o l o r L a s t   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r S t o p L e v e l s   =   ( c o l o r ) c l r R e d ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 R e s e t L a s t E r r o r ( ) ;  
 	 	  
 	 	 i f   ( C h a r t C o l o r B a c k g r o u n d ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ B A C K G R O U N D , C h a r t C o l o r B a c k g r o u n d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   b a c k g r o u n d   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r F o r e g r o u n d ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ F O R E G R O U N D , C h a r t C o l o r F o r e g r o u n d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   f o r e g r o u n d   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r G r i d ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ G R I D , C h a r t C o l o r G r i d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   g r i d   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r B a r U p ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ C H A R T _ U P , C h a r t C o l o r B a r U p ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   b a r   u p   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r B a r D o w n ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ C H A R T _ D O W N , C h a r t C o l o r B a r D o w n ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   b a r   d o w n   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r B u l l C a n d l e ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ C A N D L E _ B U L L , C h a r t C o l o r B u l l C a n d l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   b u l l   c a n d l e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r B e a r C a n d l e ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ C A N D L E _ B E A R , C h a r t C o l o r B e a r C a n d l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   b e a r   c a n d l e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r D o j i C a n d l e ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ C H A R T _ L I N E , C h a r t C o l o r D o j i C a n d l e ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   d o j i   c a n d l e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r V o l u m e s ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ V O L U M E , C h a r t C o l o r V o l u m e s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   v o l u m e s   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r B i d ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ B I D , C h a r t C o l o r B i d ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   B i d   l i n e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r A s k ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ A S K , C h a r t C o l o r A s k ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   A s k   l i n e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r L a s t ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ L A S T , C h a r t C o l o r L a s t ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   l a s t   p r i c e   l i n e   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	 i f   ( C h a r t C o l o r S t o p L e v e l s ! = c l r N O N E )   {  
 	 	       i f ( ! C h a r t S e t I n t e g e r ( 0 , C H A R T _ C O L O R _ S T O P _ L E V E L , C h a r t C o l o r S t o p L e v e l s ) )   { P r i n t ( " U n a b l e   t o   s e t   c h a r t   s t o p   l e v e l s   c o l o r .   E r r o r   c o d e :   " , G e t L a s t E r r o r ( ) ) ; }  
 	 	 }  
 	 	  
 	 	 C h a r t R e d r a w ( ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
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
 / /   " I f   t r a d e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 >  
 c l a s s   M D L _ I f O p e n e d O r d e r s :   p u b l i c   B l o c k C a l l s  
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
 	 M D L _ I f O p e n e d O r d e r s ( )  
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
 	 	 i f   ( e x i s t   = =   t r u e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 1 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 1 ( )  
 	 {  
 	 	 c o m p a r e   =   ( s t r i n g ) " + " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 _ T 1 _   l o   =   _ L o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 1 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( l o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 _ T 3 _   r o   =   _ R o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 3 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( r o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 v : : C u t _ L o s s _ p e r c e n t   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) / 1 0 0 ;  
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
 / /   " D e l e t e   p e n d i n g   o r d e r s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 >  
 c l a s s   M D L _ D e l e t e P e n d i n g O r d e r s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   L i m i t s O r S t o p s ;  
 	 T 7   A r r o w C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ D e l e t e P e n d i n g O r d e r s ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 L i m i t s O r S t o p s   =   ( s t r i n g ) " b o t h " ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 f o r   ( i n t   i n d e x   =   O r d e r s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( P e n d i n g O r d e r S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ,   L i m i t s O r S t o p s ) )  
 	 	 	 {  
 	 	 	 	 D e l e t e O r d e r ( O r d e r T i c k e t ( ) ,   A r r o w C o l o r ) ;  
 	 	 	 }  
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
 / /   " T i m e   f i l t e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 >  
 c l a s s   M D L _ T i m e F i l t e r :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   S e r v e r O r L o c a l T i m e ;  
 	 T 2   T i m e S t a r t M o d e ;  
 	 T 3   T i m e S t a r t ;  
 	 T 4   T i m e S t a r t Y e a r ;  
 	 T 5   T i m e S t a r t M o n t h ;  
 	 T 6   T i m e S t a r t D a y ;  
 	 T 7   T i m e S t a r t H o u r ;  
 	 T 8   T i m e S t a r t M i n u t e ;  
 	 T 9   T i m e S t a r t S e c o n d ;  
 	 T 1 0   T i m e E n d M o d e ;  
 	 T 1 1   T i m e E n d ;  
 	 T 1 2   T i m e E n d Y e a r ;  
 	 T 1 3   T i m e E n d M o n t h ;  
 	 T 1 4   T i m e E n d D a y ;  
 	 T 1 5   T i m e E n d H o u r ;  
 	 T 1 6   T i m e E n d M i n u t e ;  
 	 T 1 7   T i m e E n d S e c o n d ;  
 	 T 1 8   T i m e E n d R e l Y e a r s ;  
 	 T 1 9   T i m e E n d R e l M o n t h s ;  
 	 T 2 0   T i m e E n d R e l D a y s ;  
 	 T 2 1   T i m e E n d R e l H o u r s ;  
 	 T 2 2   T i m e E n d R e l M i n u t e s ;  
 	 T 2 3   T i m e E n d R e l S e c o n d s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ T i m e F i l t e r ( )  
 	 {  
 	 	 S e r v e r O r L o c a l T i m e   =   ( s t r i n g ) " s e r v e r " ;  
 	 	 T i m e S t a r t M o d e   =   ( s t r i n g ) " t e x t " ;  
 	 	 T i m e S t a r t   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 	 T i m e S t a r t Y e a r   =   ( i n t ) 0 ;  
 	 	 T i m e S t a r t M o n t h   =   ( i n t ) 0 ;  
 	 	 T i m e S t a r t D a y   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e S t a r t H o u r   =   ( d o u b l e ) 1 . 0 ;  
 	 	 T i m e S t a r t M i n u t e   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e S t a r t S e c o n d   =   ( i n t ) 0 ;  
 	 	 T i m e E n d M o d e   =   ( s t r i n g ) " t e x t " ;  
 	 	 T i m e E n d   =   ( s t r i n g ) " 0 0 : 0 1 " ;  
 	 	 T i m e E n d Y e a r   =   ( i n t ) 0 ;  
 	 	 T i m e E n d M o n t h   =   ( i n t ) 0 ;  
 	 	 T i m e E n d D a y   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e E n d H o u r   =   ( d o u b l e ) 1 . 0 ;  
 	 	 T i m e E n d M i n u t e   =   ( d o u b l e ) 1 . 0 ;  
 	 	 T i m e E n d S e c o n d   =   ( i n t ) 0 ;  
 	 	 T i m e E n d R e l Y e a r s   =   ( i n t ) 0 ;  
 	 	 T i m e E n d R e l M o n t h s   =   ( i n t ) 0 ;  
 	 	 T i m e E n d R e l D a y s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e E n d R e l H o u r s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e E n d R e l M i n u t e s   =   ( d o u b l e ) 1 . 0 ;  
 	 	 T i m e E n d R e l S e c o n d s   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 d a t e t i m e   t 0   =   0 ,   t 1   =   0 ,   t x   =   0 ,   n o w   =   0 ;  
 	 	 i n t   m o d e _ t i m e   =   0 ;  
 	 	  
 	 	           i f   ( S e r v e r O r L o c a l T i m e   = =   " s e r v e r " )   { m o d e _ t i m e   =   0 ;   n o w   =   T i m e C u r r e n t ( ) ; }  
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " l o c a l " )     { m o d e _ t i m e   =   1 ;   n o w   =   T i m e L o c a l ( ) ; }  
 	 	 e l s e   i f   ( S e r v e r O r L o c a l T i m e   = =   " g m t " )         { m o d e _ t i m e   =   2 ;   n o w   =   T i m e G M T ( ) ; }  
 	 	  
 	 	 / / - -   s t a r t   t i m e  
 	 	 i f   ( T i m e S t a r t M o d e   = =   " t e x t " )  
 	 	 {  
 	 	 	 t 0   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   T i m e S t a r t ) ;  
 	 	 }  
 	 	 e l s e   i f   ( T i m e S t a r t M o d e   = =   " c o m p o n e n t " )  
 	 	 {  
 	 	 	 t 0   =   T i m e F r o m C o m p o n e n t s ( m o d e _ t i m e ,   T i m e S t a r t Y e a r ,   T i m e S t a r t M o n t h ,   T i m e S t a r t D a y ,   T i m e S t a r t H o u r ,   T i m e S t a r t M i n u t e ,   T i m e S t a r t S e c o n d ) ;  
 	 	 }  
 	 	  
 	 	 / / - -   e n d   t i m e  
 	 	 i f   ( T i m e E n d M o d e   = =   " t e x t " )  
 	 	 {  
 	 	 	 t 1   =   T i m e F r o m S t r i n g ( m o d e _ t i m e ,   T i m e E n d ) ;  
 	 	 }  
 	 	 e l s e   i f   ( T i m e E n d M o d e   = =   " c o m p o n e n t " )  
 	 	 {  
 	 	 	 t 1   =   T i m e F r o m C o m p o n e n t s ( m o d e _ t i m e ,   T i m e E n d Y e a r ,   T i m e E n d M o n t h ,   T i m e E n d D a y ,   T i m e E n d H o u r ,   T i m e E n d M i n u t e ,   T i m e E n d S e c o n d ) ;  
 	 	 }  
 	 	 e l s e   i f   ( T i m e E n d M o d e   = =   " r e l a t i v e " )  
 	 	 {  
 	 	 	 M q l D a t e T i m e   t m ;  
 	 	 	 T i m e T o S t r u c t ( t 0 ,   t m ) ;  
 	 	  
 	 	 	 t m . y e a r   + =   T i m e E n d R e l Y e a r s ;  
 	 	 	 t m . m o n     + =   T i m e E n d R e l M o n t h s ;  
 	 	 	 t m . d a y     + =   ( i n t ) M a t h F l o o r ( T i m e E n d R e l D a y s ) ;  
 	 	 	 t m . h o u r   + =   ( i n t ) ( M a t h F l o o r ( T i m e E n d R e l H o u r s )   +   ( 2 4   *   ( T i m e E n d R e l D a y s   -   M a t h F l o o r ( T i m e E n d R e l D a y s ) ) ) ) ;  
 	 	 	 t m . m i n     + =   ( i n t ) ( M a t h F l o o r ( T i m e E n d R e l M i n u t e s )   +   ( 6 0   *   ( T i m e E n d R e l H o u r s   -   M a t h F l o o r ( T i m e E n d R e l H o u r s ) ) ) ) ;  
 	 	 	 t m . s e c     + =   ( i n t ) ( ( d o u b l e ) T i m e E n d R e l S e c o n d s   +   ( 6 0   *   ( T i m e E n d R e l M i n u t e s   -   M a t h F l o o r ( T i m e E n d R e l M i n u t e s ) ) ) ) ;  
 	 	  
 	 	 	 t 1   =   S t r u c t T o T i m e ( t m ) ;  
 	 	  
 	 	 	 i f   ( t 1   <   t 0 )   { t 1   =   t 1   +   8 6 4 0 0 ; }  
 	 	 }  
 	 	  
 	 	 i f   ( ( n o w   > =   t 0   & &   n o w   <   t 1 )   | |   ( t 0   >   t 1   & &   ( n o w   > =   t 0   | |   n o w   <   t 1 ) ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " C h e c k   p r o f i t   ( p e r i o d   o f   t i m e ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 >  
 c l a s s   M D L _ C h e c k P r o f i t I n P e r i o d :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   T i m e 1 ;  
 	 T 7   D a y S h i f t 1 ;  
 	 T 8   T i m e 2 ;  
 	 T 9   D a y S h i f t 2 ;  
 	 T 1 0   T i m e 1 R e l a t i v e ;  
 	 T 1 1   R e t u r n M o d e ;  
 	 T 1 2   C o m p a r e ;  
 	 T 1 3   P r o f i t M o n e y ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h e c k P r o f i t I n P e r i o d ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 T i m e 1   =   ( s t r i n g ) " 0 0 : 0 0 " ;  
 	 	 D a y S h i f t 1   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e 2   =   ( s t r i n g ) " " ;  
 	 	 D a y S h i f t 2   =   ( d o u b l e ) 0 . 0 ;  
 	 	 T i m e 1 R e l a t i v e   =   ( b o o l ) f a l s e ;  
 	 	 R e t u r n M o d e   =   ( i n t ) 0 ;  
 	 	 C o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) 1 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   c o u n t           =   0 ;  
 	 	 i n t   t o t a l           =   0 ;  
 	 	 i n t   i n d e x           =   0 ;  
 	 	 d o u b l e   p r o f i t           =   0 ;  
 	 	 d o u b l e   p r o f i t _ t o t   =   0 ;  
 	 	 d o u b l e   p r o f i t _ m i n   =   E M P T Y _ V A L U E ;  
 	 	 d o u b l e   p r o f i t _ m a x   =   - E M P T Y _ V A L U E ;  
 	 	 d a t e t i m e   o r d e r t i m e ;  
 	 	 d a t e t i m e   t 1 ,   t 2 ;  
 	 	  
 	 	 / / - -   p a r s e   t i m e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 / / - -   t i m e   2  
 	 	 i f   ( T i m e 2   = =   " " )   {  
 	 	 	 t 2   =   T i m e C u r r e n t ( ) ;  
 	 	 }  
 	 	 e l s e   {  
 	 	 	 i f   ( S t r i n g F i n d ( T i m e 2 ,   " : " )   = =   - 1 )   { t 2   =   ( d a t e t i m e ) S t r i n g T o I n t e g e r ( T i m e 2 ) ; }   e l s e   { t 2   =   S t r i n g T o T i m e E x ( T i m e 2 ,   " s e r v e r " ) ; }  
 	 	 }  
 	 	  
 	 	 / /   i f   t i m e   1   i s   e x p e c t e d   t o   b e   a b s o l u t e  
 	 	 i f   ( T i m e 1 R e l a t i v e   = =   f a l s e )  
 	 	 {  
 	 	 	 i f   ( T i m e 1   = =   " " )   {  
 	 	 	 	 t 1   =   T i m e C u r r e n t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 i f   ( S t r i n g F i n d ( T i m e 1 ,   " : " )   = =   - 1 )   { t 1   =   ( d a t e t i m e ) S t r i n g T o I n t e g e r ( T i m e 1 ) ; }  
 	 	 	 	 e l s e   { t 1   =   S t r i n g T o T i m e E x ( T i m e 1 ,   " s e r v e r " ) ; }  
 	 	 	 }  
 	 	 }  
 	 	 / /   i f   t i m e   1   i s   e x p e c t e d   t o   b e   r e l a t i v e   t o   t i m e   2  
 	 	 e l s e   {  
 	 	 	  
 	 	 	 i f   ( T i m e 1   = =   " " )   {  
 	 	 	 	 t 1   =   t 2 ;  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 / / -   1 )   t i m e   1   i s   i n   n u m e r i c   f o r m a t   = >   t r e a t   t h e   n u m b e r   a s   h o u r s  
 	 	 	 	 i f   ( S t r i n g F i n d ( T i m e 1 ,   " : " )   = =   - 1 )   {  
 	 	 	 	 	 t 1   =   t 2   -   ( d a t e t i m e ) S t r i n g T o I n t e g e r ( T i m e 1 ) * 3 6 0 0 ;  
 	 	 	 	 }  
 	 	 	 	 / / -   2 )   t i m e   1   i s   i s   H H : M M : S S   f o r m a t   = >   t r e a t   t h a t   a s   h o u r s   d i f f e r e n c e  
 	 	 	 	 e l s e   {  
 	 	 	 	 	 t 1   =   t 2   -   ( S t r i n g T o T i m e E x ( T i m e 1 ,   " s e r v e r " )   -   S t r i n g T o T i m e E x ( " 0 0 : 0 0 " ,   " s e r v e r " ) ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 t 1   =   ( d a t e t i m e ) ( ( t 1   -   ( D a y S h i f t 1   *   8 6 4 0 0 )   -   ( M a t h F l o o r ( D a y S h i f t 1 / 5 )   *   1 7 2 8 0 0 ) ) ) ;  
 	 	 t 2   =   ( d a t e t i m e ) ( ( t 2   -   ( D a y S h i f t 2   *   8 6 4 0 0 )   -   ( M a t h F l o o r ( D a y S h i f t 2 / 5 )   *   1 7 2 8 0 0 ) ) ) ;  
 	 	  
 	 	 i n t   w e e k d a y   =   0 ;  
 	 	  
 	 	 i f   ( D a y S h i f t 1   ! =   0 )  
 	 	 {  
 	 	 	 w e e k d a y   =   T i m e D a y O f W e e k ( t 1 ) ;  
 	 	  
 	 	 	           i f   ( w e e k d a y   = =   0 )   { t 1   =   t 1 - 1 7 2 8 0 0 ; }  
 	 	 	 e l s e   i f   ( w e e k d a y   = =   6 )   { t 1   =   t 1 - 8 6 4 0 0 ; }  
 	 	 }  
 	 	  
 	 	 i f   ( D a y S h i f t 2   ! =   0 )  
 	 	 {  
 	 	 	 w e e k d a y   =   T i m e D a y O f W e e k ( t 2 ) ;  
 	 	  
 	 	 	           i f   ( w e e k d a y   = =   0 )   { t 2   =   t 2 - 1 7 2 8 0 0 ; }  
 	 	 	 e l s e   i f   ( w e e k d a y   = =   6 )   { t 2   =   t 2 - 8 6 4 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / /   r e v e r s e   t i m e s   i f   n e e d e d  
 	 	 i f   ( t 1   >   t 2 )  
 	 	 {  
 	 	 	 d a t e t i m e   t t m p   =   t 1 ;  
 	 	 	 t 1   =   t 2 ;  
 	 	 	 t 2   =   t t m p ;  
 	 	 }  
 	 	  
 	 	 / / - -   g e t   p r o f i t   o f   t h e   r u n n i n g   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 / / - -   1 )   c h e c k i n g   c u r r e n t l y   r u n n i n g   t r a d e s .   O n l y   n e e d e d   i f   t h e   c u r r e n t   d a y   i s   c h o s e n  
 	 	 i f   ( t 2   > =   T i m e C u r r e n t ( ) )  
 	 	 {  
 	 	 	 t o t a l   =   T r a d e s T o t a l ( ) ;  
 	 	 	  
 	 	 	 f o r   ( i n d e x   =   t o t a l - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 	 {  
 	 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 	 {  
 	 	 	 	 	 p r o f i t           =   N o r m a l i z e D o u b l e ( O r d e r P r o f i t ( )   +   O r d e r C o m m i s s i o n ( )   +   O r d e r S w a p ( ) ,   2 ) ;  
 	 	 	 	 	 p r o f i t _ t o t   + =   p r o f i t ;  
 	 	  
 	 	 	 	 	 i f   ( p r o f i t   <   p r o f i t _ m i n )   { p r o f i t _ m i n   =   p r o f i t ; }  
 	 	 	 	 	 i f   ( p r o f i t   >   p r o f i t _ m a x )   { p r o f i t _ m a x   =   p r o f i t ; }  
 	 	  
 	 	 	 	 	 c o u n t + + ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 / / - -   g e t   p r o f i t   o f   t h e   h i s t o r y   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 t o t a l   =   H i s t o r y T r a d e s T o t a l ( t 1 ,   t 2 ) ;  
 	 	  
 	 	 f o r   ( i n d e x   =   t o t a l - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( H i s t o r y T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 {  
 	 	 	 	 o r d e r t i m e   =   O r d e r C l o s e T i m e ( ) ;  
 	 	  
 	 	 	 	 i f   ( o r d e r t i m e   >   t 2 )   { c o n t i n u e ; }  
 	 	 	 	 i f   ( o r d e r t i m e   <   t 1 )   { b r e a k ; }  
 	 	  
 	 	 	 	 p r o f i t           =   N o r m a l i z e D o u b l e ( O r d e r P r o f i t ( )   +   O r d e r C o m m i s s i o n ( )   +   O r d e r S w a p ( ) ,   2 ) ;  
 	 	 	 	 p r o f i t _ t o t   + =   p r o f i t ;  
 	 	  
 	 	 	 	 i f   ( p r o f i t   <   p r o f i t _ m i n )   { p r o f i t _ m i n   =   p r o f i t ; }  
 	 	 	 	 i f   ( p r o f i t   >   p r o f i t _ m a x )   { p r o f i t _ m a x   =   p r o f i t ; }  
 	 	  
 	 	 	 	 c o u n t + + ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 / / - -   o u t p u t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 s w i t c h ( R e t u r n M o d e )  
 	 	 {  
 	 	 	 c a s e   0 :   { p r o f i t   =   p r o f i t _ t o t ;   b r e a k ; }  
 	 	 	 c a s e   1 :   { p r o f i t   =   p r o f i t _ t o t   /   c o u n t ;   b r e a k ; }  
 	 	 	 c a s e   2 :   { p r o f i t   =   p r o f i t _ m a x ;   b r e a k ; }  
 	 	 	 c a s e   3 :   { p r o f i t   =   p r o f i t _ m i n ;   b r e a k ; }  
 	 	 }  
 	 	  
 	 	 i f   ( C o m p a r e V a l u e s ( C o m p a r e ,   p r o f i t ,   P r o f i t M o n e y ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " C o u n t e r :   P a s s   o n c e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 >  
 c l a s s   M D L _ P a s s O n c e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   C o u n t e r I D ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ P a s s O n c e ( )  
 	 {  
 	 	 C o u n t e r I D   =   ( i n t ) 1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   p a s s e s   =   C o u n t e r ( C o u n t e r I D ,   " i n c r e m e n t " ) ;  
 	 	  
 	 	 i f   ( p a s s e s   = =   0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " N o   p e n d i n g   o r d e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 >  
 c l a s s   M D L _ N o P e n d i n g O r d e r s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   L i m i t s O r S t o p s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ N o P e n d i n g O r d e r s ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 L i m i t s O r S t o p s   =   ( s t r i n g ) " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   e x i s t   =   f a l s e ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   O r d e r s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( P e n d i n g O r d e r S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ,   L i m i t s O r S t o p s ) )  
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
 / /   " C h e c k   p e n d i n g   o r d e r s   c o u n t "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 >  
 c l a s s   M D L _ C h e c k O r d e r s C o u n t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   C o m p a r e ;  
 	 T 2   C o m p a r e C o u n t ;  
 	 T 3   G r o u p M o d e ;  
 	 T 4   G r o u p ;  
 	 T 5   S y m b o l M o d e ;  
 	 T 6   S y m b o l ;  
 	 T 7   B u y s O r S e l l s ;  
 	 T 8   L i m i t s O r S t o p s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h e c k O r d e r s C o u n t ( )  
 	 {  
 	 	 C o m p a r e   =   ( s t r i n g ) " > " ;  
 	 	 C o m p a r e C o u n t   =   ( i n t ) 3 ;  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 L i m i t s O r S t o p s   =   ( s t r i n g ) " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   c o u n t   =   0 ;  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   O r d e r s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( P e n d i n g O r d e r S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ,   L i m i t s O r S t o p s ) )  
 	 	 	 {  
 	 	 	 	 c o u n t + + ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( c o m p a r e ( C o m p a r e ,   c o u n t ,   C o m p a r e C o u n t ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " S e l l   p e n d i n g   o r d e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   _ T 4 _ , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   _ T 1 2 _ , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   _ T 2 7 _ , t y p e n a m e   T 2 8 , t y p e n a m e   _ T 2 8 _ , t y p e n a m e   T 2 9 , t y p e n a m e   _ T 2 9 _ , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   _ T 3 4 _ , t y p e n a m e   T 3 5 , t y p e n a m e   _ T 3 5 _ , t y p e n a m e   T 3 6 , t y p e n a m e   _ T 3 6 _ , t y p e n a m e   T 3 7 , t y p e n a m e   T 3 8 , t y p e n a m e   T 3 9 , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   _ T 4 1 _ , t y p e n a m e   T 4 2 , t y p e n a m e   T 4 3 , t y p e n a m e   T 4 4 , t y p e n a m e   T 4 5 >  
 c l a s s   M D L _ S e l l P e n d i n g :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p ;  
 	 T 2   S y m b o l ;  
 	 T 3   P r i c e ;  
 	 T 4   d P r i c e ;   v i r t u a l   _ T 4 _   _ d P r i c e _ ( ) { r e t u r n ( _ T 4 _ ) 0 ; }  
 	 T 5   P r i c e O f f s e t ;  
 	 T 6   V o l u m e M o d e ;  
 	 T 7   V o l u m e S i z e ;  
 	 T 8   V o l u m e S i z e R i s k ;  
 	 T 9   V o l u m e R i s k ;  
 	 T 1 0   V o l u m e P e r c e n t ;  
 	 T 1 1   V o l u m e B l o c k P e r c e n t ;  
 	 T 1 2   d V o l u m e S i z e ;   v i r t u a l   _ T 1 2 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 1 2 _ ) 0 ; }  
 	 T 1 3   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 4   F i x e d R a t i o D e l t a ;  
 	 T 1 5   m m M g I n i t i a l L o t s ;  
 	 T 1 6   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 7   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 8   m m M g A d d L o t s O n L o s s ;  
 	 T 1 9   m m M g A d d L o t s O n P r o f i t ;  
 	 T 2 0   m m M g R e s e t O n L o s s ;  
 	 T 2 1   m m M g R e s e t O n P r o f i t ;  
 	 T 2 2   V o l u m e U p p e r L i m i t ;  
 	 T 2 3   S t o p L o s s M o d e ;  
 	 T 2 4   S t o p L o s s P i p s ;  
 	 T 2 5   S t o p L o s s P e r c e n t P r i c e ;  
 	 T 2 6   S t o p L o s s P e r c e n t T P ;  
 	 T 2 7   d l S t o p L o s s ;   v i r t u a l   _ T 2 7 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 2 7 _ ) 0 ; }  
 	 T 2 8   d p S t o p L o s s ;   v i r t u a l   _ T 2 8 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 2 8 _ ) 0 ; }  
 	 T 2 9   d d S t o p L o s s ;   v i r t u a l   _ T 2 9 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 2 9 _ ) 0 ; }  
 	 T 3 0   T a k e P r o f i t M o d e ;  
 	 T 3 1   T a k e P r o f i t P i p s ;  
 	 T 3 2   T a k e P r o f i t P e r c e n t P r i c e ;  
 	 T 3 3   T a k e P r o f i t P e r c e n t S L ;  
 	 T 3 4   d l T a k e P r o f i t ;   v i r t u a l   _ T 3 4 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 4 _ ) 0 ; }  
 	 T 3 5   d d T a k e P r o f i t ;   v i r t u a l   _ T 3 5 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 5 _ ) 0 ; }  
 	 T 3 6   d p T a k e P r o f i t ;   v i r t u a l   _ T 3 6 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 6 _ ) 0 ; }  
 	 T 3 7   E x p M o d e ;  
 	 T 3 8   E x p D a y s ;  
 	 T 3 9   E x p H o u r s ;  
 	 T 4 0   E x p M i n u t e s ;  
 	 T 4 1   d E x p ;   v i r t u a l   _ T 4 1 _   _ d E x p _ ( ) { r e t u r n ( _ T 4 1 _ ) 0 ; }  
 	 T 4 2   C r e a t e O C O ;  
 	 T 4 3   S l i p p a g e ;  
 	 T 4 4   M y C o m m e n t ;  
 	 T 4 5   A r r o w C o l o r S e l l ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ S e l l P e n d i n g ( )  
 	 {  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r i c e   =   ( s t r i n g ) " b i d " ;  
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 V o l u m e M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) 0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) 2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   ( d o u b l e ) 3 . 0 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   ( d o u b l e ) 0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   ( d o u b l e ) 2 . 0 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   ( d o u b l e ) 1 . 0 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g R e s e t O n L o s s   =   ( i n t ) 0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   ( i n t ) 1 ;  
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
 	 	 C r e a t e O C O   =   ( i n t ) 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) " " ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / - -   o p e n   p r i c e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   o p   =   0 ;  
 	 	  
 	 	           i f   ( P r i c e   = =   " a s k " )           { o p   =   S y m b o l A s k ( S y m b o l ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " b i d " )           { o p   =   S y m b o l B i d ( S y m b o l ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " m i d " )           { o p   =   ( S y m b o l A s k ( S y m b o l ) + S y m b o l B i d ( S y m b o l ) ) / 2 ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " d y n a m i c " )   { o p   =   _ d P r i c e _ ( ) ; }  
 	 	  
 	 	 o p   =   o p   -   t o D i g i t s ( P r i c e O f f s e t ,   S y m b o l ) ;  
 	 	  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l   =   0 ,   s l p   =   0 ,   t p l   =   0 ,   t p p   =   0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e   = =   " f i x e d " )                   { s l p   =   S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c P i p s " )       { s l p   =   _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c D i g i t s " )   { s l p   =   t o P i p s ( _ d d S t o p L o s s _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c L e v e l " )     { s l l   =   _ d l S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " p e r c e n t P r i c e " )     { s l l   =   o p   +   ( o p   *   S t o p L o s s P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e   = =   " f i x e d " )                   { t p p   =   T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c P i p s " )       { t p p   =   _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c D i g i t s " )   { t p p   =   t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c L e v e l " )     { t p l   =   _ d l T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t P r i c e " )     { t p l   =   o p   -   ( o p   *   T a k e P r o f i t P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )  
 	 	 {  
 	 	 	 i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 	 i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( o p   -   t p l ) ,   S y m b o l ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )  
 	 	 {  
 	 	 	 i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 	 i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( o p   -   s l l ) ,   S y m b o l ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s         =   0 ;  
 	 	 d o u b l e   p r e _ s l l   =   s l l ;  
 	 	  
 	 	 i f   ( p r e _ s l l   = =   0 )   { p r e _ s l l   =   o p ; }  
 	 	  
 	 	 d o u b l e   p r e _ s l _ p i p s   =   t o P i p s ( ( p r e _ s l l + t o D i g i t s ( s l p , S y m b o l ) ) - o p ,   S y m b o l ) ;  
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
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " m a r t i n g a l e " )               { l o t s   =   B e t M a r t i n g a l e ( G r o u p ,   S y m b o l ,   0 ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d y n a m i c " )                     { l o t s   =   _ d V o l u m e S i z e _ ( ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( S y m b o l ,   l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 / / - -   e x p i r a t i o n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 l o n g   t i c k e t   =   S e l l L a t e r ( S y m b o l , l o t s , o p , s l l , t p l , s l p , t p p , S l i p p a g e , e x p , ( M a g i c S t a r t + ( i n t ) G r o u p ) , M y C o m m e n t , A r r o w C o l o r S e l l , C r e a t e O C O ) ;  
 	 	  
 	 	 i f   ( t i c k e t   >   0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " B u y   p e n d i n g   o r d e r "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   _ T 4 _ , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   _ T 1 2 _ , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   _ T 2 7 _ , t y p e n a m e   T 2 8 , t y p e n a m e   _ T 2 8 _ , t y p e n a m e   T 2 9 , t y p e n a m e   _ T 2 9 _ , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   _ T 3 4 _ , t y p e n a m e   T 3 5 , t y p e n a m e   _ T 3 5 _ , t y p e n a m e   T 3 6 , t y p e n a m e   _ T 3 6 _ , t y p e n a m e   T 3 7 , t y p e n a m e   T 3 8 , t y p e n a m e   T 3 9 , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   _ T 4 1 _ , t y p e n a m e   T 4 2 , t y p e n a m e   T 4 3 , t y p e n a m e   T 4 4 , t y p e n a m e   T 4 5 >  
 c l a s s   M D L _ B u y P e n d i n g :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p ;  
 	 T 2   S y m b o l ;  
 	 T 3   P r i c e ;  
 	 T 4   d P r i c e ;   v i r t u a l   _ T 4 _   _ d P r i c e _ ( ) { r e t u r n ( _ T 4 _ ) 0 ; }  
 	 T 5   P r i c e O f f s e t ;  
 	 T 6   V o l u m e M o d e ;  
 	 T 7   V o l u m e S i z e ;  
 	 T 8   V o l u m e S i z e R i s k ;  
 	 T 9   V o l u m e R i s k ;  
 	 T 1 0   V o l u m e P e r c e n t ;  
 	 T 1 1   V o l u m e B l o c k P e r c e n t ;  
 	 T 1 2   d V o l u m e S i z e ;   v i r t u a l   _ T 1 2 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 1 2 _ ) 0 ; }  
 	 T 1 3   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 4   F i x e d R a t i o D e l t a ;  
 	 T 1 5   m m M g I n i t i a l L o t s ;  
 	 T 1 6   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 7   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 8   m m M g A d d L o t s O n L o s s ;  
 	 T 1 9   m m M g A d d L o t s O n P r o f i t ;  
 	 T 2 0   m m M g R e s e t O n L o s s ;  
 	 T 2 1   m m M g R e s e t O n P r o f i t ;  
 	 T 2 2   V o l u m e U p p e r L i m i t ;  
 	 T 2 3   S t o p L o s s M o d e ;  
 	 T 2 4   S t o p L o s s P i p s ;  
 	 T 2 5   S t o p L o s s P e r c e n t P r i c e ;  
 	 T 2 6   S t o p L o s s P e r c e n t T P ;  
 	 T 2 7   d l S t o p L o s s ;   v i r t u a l   _ T 2 7 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 2 7 _ ) 0 ; }  
 	 T 2 8   d p S t o p L o s s ;   v i r t u a l   _ T 2 8 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 2 8 _ ) 0 ; }  
 	 T 2 9   d d S t o p L o s s ;   v i r t u a l   _ T 2 9 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 2 9 _ ) 0 ; }  
 	 T 3 0   T a k e P r o f i t M o d e ;  
 	 T 3 1   T a k e P r o f i t P i p s ;  
 	 T 3 2   T a k e P r o f i t P e r c e n t P r i c e ;  
 	 T 3 3   T a k e P r o f i t P e r c e n t S L ;  
 	 T 3 4   d l T a k e P r o f i t ;   v i r t u a l   _ T 3 4 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 4 _ ) 0 ; }  
 	 T 3 5   d d T a k e P r o f i t ;   v i r t u a l   _ T 3 5 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 5 _ ) 0 ; }  
 	 T 3 6   d p T a k e P r o f i t ;   v i r t u a l   _ T 3 6 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 3 6 _ ) 0 ; }  
 	 T 3 7   E x p M o d e ;  
 	 T 3 8   E x p D a y s ;  
 	 T 3 9   E x p H o u r s ;  
 	 T 4 0   E x p M i n u t e s ;  
 	 T 4 1   d E x p ;   v i r t u a l   _ T 4 1 _   _ d E x p _ ( ) { r e t u r n ( _ T 4 1 _ ) 0 ; }  
 	 T 4 2   C r e a t e O C O ;  
 	 T 4 3   S l i p p a g e ;  
 	 T 4 4   M y C o m m e n t ;  
 	 T 4 5   A r r o w C o l o r B u y ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ B u y P e n d i n g ( )  
 	 {  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r i c e   =   ( s t r i n g ) " a s k " ;  
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 V o l u m e M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) 0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   ( d o u b l e ) 5 0 . 0 ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) 2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) 1 0 0 . 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   ( d o u b l e ) 3 . 0 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   ( d o u b l e ) 0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   ( d o u b l e ) 2 0 . 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   ( d o u b l e ) 0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   ( d o u b l e ) 2 . 0 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   ( d o u b l e ) 1 . 0 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   ( d o u b l e ) 0 . 0 ;  
 	 	 m m M g R e s e t O n L o s s   =   ( i n t ) 0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   ( i n t ) 1 ;  
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
 	 	 C r e a t e O C O   =   ( i n t ) 0 ;  
 	 	 S l i p p a g e   =   ( u l o n g ) 4 ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) " " ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / - -   o p e n   p r i c e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   o p   =   0 ;  
 	 	  
 	 	           i f   ( P r i c e   = =   " a s k " )           { o p   =   S y m b o l A s k ( S y m b o l ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " b i d " )           { o p   =   S y m b o l B i d ( S y m b o l ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " m i d " )           { o p   =   ( S y m b o l A s k ( S y m b o l ) + S y m b o l B i d ( S y m b o l ) ) / 2 ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " d y n a m i c " )   { o p   =   _ d P r i c e _ ( ) ; }  
 	 	  
 	 	 o p   =   o p   +   t o D i g i t s ( P r i c e O f f s e t ,   S y m b o l ) ;  
 	 	  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l   =   0 ,   s l p   =   0 ,   t p l   =   0 ,   t p p   =   0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e   = =   " f i x e d " )                   { s l p   =   S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c P i p s " )       { s l p   =   _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c D i g i t s " )   { s l p   =   t o P i p s ( _ d d S t o p L o s s _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " d y n a m i c L e v e l " )     { s l l   =   _ d l S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e   = =   " p e r c e n t P r i c e " )     { s l l   =   o p   -   ( o p   *   S t o p L o s s P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e   = =   " f i x e d " )                   { t p p   =   T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c P i p s " )       { t p p   =   _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c D i g i t s " )   { t p p   =   t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S y m b o l ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " d y n a m i c L e v e l " )     { t p l   =   _ d l T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t P r i c e " )     { t p l   =   o p   +   ( o p   *   T a k e P r o f i t P e r c e n t P r i c e   /   1 0 0 ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )  
 	 	 {  
 	 	 	 i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 	 i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( o p   -   t p l ) ,   S y m b o l ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )  
 	 	 {  
 	 	 	 i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 	 i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( o p   -   s l l ) ,   S y m b o l ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s         =   0 ;  
 	 	 d o u b l e   p r e _ s l l   =   s l l ;  
 	 	  
 	 	 i f   ( p r e _ s l l   = =   0 )   { p r e _ s l l   =   o p ; }  
 	 	  
 	 	 d o u b l e   p r e _ s l _ p i p s   =   t o P i p s ( o p - ( p r e _ s l l - t o D i g i t s ( s l p , S y m b o l ) ) ,   S y m b o l ) ;  
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
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " m a r t i n g a l e " )               { l o t s   =   B e t M a r t i n g a l e ( G r o u p ,   S y m b o l ,   0 ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e   = =   " d y n a m i c " )                     { l o t s   =   _ d V o l u m e S i z e _ ( ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( S y m b o l ,   l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 / / - -   e x p i r a t i o n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 l o n g   t i c k e t   =   B u y L a t e r ( S y m b o l , l o t s , o p , s l l , t p l , s l p , t p p , S l i p p a g e , e x p , ( M a g i c S t a r t + ( i n t ) G r o u p ) , M y C o m m e n t , A r r o w C o l o r B u y , C r e a t e O C O ) ;  
 	 	  
 	 	 i f   ( t i c k e t   >   0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " I n d i c a t o r   i s   v i s i b l e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 >  
 c l a s s   M D L _ I n d i c a t o r I s V i s i b l e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   I n d i c a t o r ;   v i r t u a l   _ T 1 _   _ I n d i c a t o r _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   A d d i t i o n a l C a n d l e s ;  
 	 T 3   E x c e p t i o n C a n d l e s ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 i n t   i t f ;  
 	 s t r i n g   i s y m b o l ;  
 	 d a t e t i m e   b a r t i m e ;  
 	 b o o l   l a s t p a s s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ I n d i c a t o r I s V i s i b l e ( )  
 	 {  
 	 	 A d d i t i o n a l C a n d l e s   =   ( i n t ) 0 ;  
 	 	 E x c e p t i o n C a n d l e s   =   ( i n t ) 0 ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 i t f   =     0 ;  
 	 	 i s y m b o l   =     " " ;  
 	 	 b a r t i m e   =     0 ;  
 	 	 l a s t p a s s   =     f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   n e x t             =   t r u e ;  
 	 	 i n t   e x c e p t i o n s   =   0 ;  
 	 	  
 	 	 f o r   ( i n t   i = 0 ;   i   < =   A d d i t i o n a l C a n d l e s ;   i + + )  
 	 	 {  
 	 	 	 F X D _ M O R E _ S H I F T   =   i ;  
 	 	 	 _ T 1 _   i v a l u e = _ I n d i c a t o r _ ( ) ;  
 	 	 	 F X D _ M O R E _ S H I F T   =   0 ;   / /   r e s e t  
 	 	 	  
 	 	 	 i f   ( i v a l u e   = =   0   | |   i v a l u e   = =   E M P T Y _ V A L U E   | |   i v a l u e   = =   - E M P T Y _ V A L U E )  
 	 	 	 {  
 	 	 	 	 i f   ( A d d i t i o n a l C a n d l e s   >   0   & &   E x c e p t i o n C a n d l e s   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 e x c e p t i o n s + + ;  
 	 	  
 	 	 	 	 	 i f   ( e x c e p t i o n s   < =   E x c e p t i o n C a n d l e s )   { c o n t i n u e ; }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 n e x t   =   f a l s e ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 l a s t p a s s   =   n e x t ;  
 	 	  
 	 	 i f   ( n e x t   = =   t r u e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " C h e c k   d i s t a n c e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   _ T 2 _ , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   _ T 5 _ >  
 c l a s s   M D L _ C h e c k D i s t a n c e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   U p p e r L e v e l ;   v i r t u a l   _ T 1 _   _ U p p e r L e v e l _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   L o w e r L e v e l ;   v i r t u a l   _ T 2 _   _ L o w e r L e v e l _ ( ) { r e t u r n ( _ T 2 _ ) 0 ; }  
 	 T 3   D i s t a n c e I s A b s o l u t e ;  
 	 T 4   C o m p a r e D i s t a n c e ;  
 	 T 5   d D i s t a n c e ;   v i r t u a l   _ T 5 _   _ d D i s t a n c e _ ( ) { r e t u r n ( _ T 5 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C h e c k D i s t a n c e ( )  
 	 {  
 	 	 D i s t a n c e I s A b s o l u t e   =   ( b o o l ) f a l s e ;  
 	 	 C o m p a r e D i s t a n c e   =   ( s t r i n g ) " > " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   u p p e r _ l e v e l   =   _ U p p e r L e v e l _ ( ) ;  
 	 	 d o u b l e   l o w e r _ l e v e l   =   _ L o w e r L e v e l _ ( ) ;  
 	 	 d o u b l e   d i s t a n c e         =   _ d D i s t a n c e _ ( ) ;  
 	 	  
 	 	 d o u b l e   d i f f   =   u p p e r _ l e v e l   -   l o w e r _ l e v e l ;  
 	 	  
 	 	 i f   ( D i s t a n c e I s A b s o l u t e   = =   t r u e   & &   d i f f   <   0 )  
 	 	 {  
 	 	 	 d i f f   =   - 1   *   d i f f ;  
 	 	 }  
 	 	  
 	 	 i f   ( C o m p a r e V a l u e s ( C o m p a r e D i s t a n c e ,   d i f f ,   d i s t a n c e ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " F o r   e a c h   T r a d e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 >  
 c l a s s   M D L _ L o o p S t a r t T r a d e s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   L o o p D i r e c t i o n ;  
 	 T 7   L o o p S k i p ;  
 	 T 8   L o o p E v e r y ;  
 	 T 9   L o o p L i m i t ;  
 	 T 1 0   P a s s E n d ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 d o u b l e   t r a d e s [ ] [ 2 ] ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ L o o p S t a r t T r a d e s ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 L o o p D i r e c t i o n   =   ( s t r i n g ) " n e w e s t - t o - o l d e s t " ;  
 	 	 L o o p S k i p   =   ( i n t ) 0 ;  
 	 	 L o o p E v e r y   =   ( i n t ) 0 ;  
 	 	 L o o p L i m i t   =   ( i n t ) 0 ;  
 	 	 P a s s E n d   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 / /   u s e d   w h e n   s o r t i n g   b y   p r o f i t  
 	 	  
 	 	 i n t   s a v e d _ t y p e           =   a t t r T y p e I n L o o p ( ) ;  
 	 	 u l o n g   s a v e d _ t i c k e t   =   a t t r T i c k e t I n L o o p ( ) ;   / /   T h i s   t i c k e t   n u m b e r   w i l l   b e   r e l o a d e d   a t   t h e   e n d   o f   t h i s   l o o p ,   s o   i f   w e   a r e   i n   a n o t h e r   o v e r l a p p i n g   l o o p   -   i t   w i l l   c o n t i n u e   u s i n g   i t ' s   l a s t   u s e d   t i c k e t   n u m b e r  
 	 	  
 	 	 i n t   t o t a l   =   T r a d e s T o t a l ( ) ;  
 	 	 i n t   c o u n t   =   0 ;  
 	 	 i n t   s k i p     =   - 1 ;  
 	 	 i n t   e v e r y   =   0 ;  
 	 	  
 	 	 b o o l   g e t _ f r o m _ a r r a y   =   f a l s e ;  
 	 	  
 	 	 i n t   i _ s t a r t   =   0 ,   i _ s t o p   =   0 ,   i _ i n c   =   0 ,   i   =   0 ;  
 	 	  
 	 	 i f   ( L o o p D i r e c t i o n   = =   " n e w e s t - t o - o l d e s t " )  
 	 	 {  
 	 	 	 i _ s t a r t   =   t o t a l - 1 ;  
 	 	 	 i _ s t o p     =   0 ;  
 	 	 	 i _ i n c       =   - 1 ;  
 	 	 }  
 	 	 e l s e   i f   ( L o o p D i r e c t i o n   = =   " o l d e s t - t o - n e w e s t " )  
 	 	 {  
 	 	     	 i _ s t a r t   =   0 ;  
 	 	 	 i _ s t o p     =   t o t a l - 1 ;  
 	 	 	 i _ i n c       =   1 ;  
 	 	 }  
 	 	 e l s e   i f   ( L o o p D i r e c t i o n   = =   " p r o f i t a b l e - f i r s t "   | |   L o o p D i r e c t i o n   = =   " p r o f i t a b l e - l a s t " )  
 	 	 {  
 	 	 	 i n t   l a s t _ i n d e x   =   - 1 ;  
 	 	 	 g e t _ f r o m _ a r r a y   =   t r u e ;  
 	 	 	  
 	 	 	 / /   C o l l e c t   d a t a  
 	 	 	 A r r a y R e s i z e ( t r a d e s , 0 ) ;  
 	 	 	 i n t   s i z e   =   0 ;  
 	 	  
 	 	 	 f o r   ( i n t   p o s = 0 ;   p o s   <   t o t a l ;   p o s + + )  
 	 	 	 {  
 	 	 	 	 i f   ( ! T r a d e S e l e c t B y I n d e x ( p o s ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )   c o n t i n u e ;  
 	 	  
 	 	 	 	 s i z e + + ;  
 	 	 	 	 A r r a y R e s i z e ( t r a d e s , s i z e ) ;  
 	 	  
 	 	 	 	 t r a d e s [ s i z e - 1 ] [ 0 ]   =   O r d e r P r o f i t ( ) ;  
 	 	 	 	 t r a d e s [ s i z e - 1 ] [ 1 ]   =   ( d o u b l e ) O r d e r T i c k e t ( ) ;  
 	 	 	 }  
 	 	  
 	 	 	 / /   S o r t  
 	 	 	 i f   ( s i z e   >   0 )  
 	 	 	 {  
 	 	 	 	 A r r a y S o r t ( t r a d e s ) ;  
 	 	 	 	 l a s t _ i n d e x   =   s i z e   -   1 ;  
 	 	 	 }  
 	 	  
 	 	 	 / /   A t   t h i s   m o m e n t   t h e   a r r a y   i s   s o r t e d   s t a r t i n g   f r o m   t h e   l e a s t   p r o f i t a b l e   t r a d e  
 	 	  
 	 	 	 i _ s t a r t   =   l a s t _ i n d e x ;  
 	 	 	 i _ s t o p     =   0 ;  
 	 	 	 i _ i n c       =   - 1 ;  
 	 	 	  
 	 	 	 i f   ( L o o p D i r e c t i o n   = =   " p r o f i t a b l e - l a s t " )  
 	 	 	 {  
 	 	 	 	 i _ s t a r t   =   0 ;  
 	 	 	 	 i _ s t o p     =   l a s t _ i n d e x ;  
 	 	 	 	 i _ i n c       =   1 ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i   =   i _ s t a r t   -   i _ i n c ;  
 	 	  
 	 	 w h i l e   ( t r u e )  
 	 	 {  
 	 	     	 i f   ( i   = =   i _ s t o p )   b r e a k ;  
 	 	     	 i   =   i   +   i _ i n c ;  
 	 	 	  
 	 	 	 / /   s i m u l a t e   b r e a k   a n d   c o n t i n u e   f u n c t i o n a l i t y   i n   l o o p   b l o c k s  
 	 	 	 i f   ( F X D _ C O N T I N U E   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 F X D _ B R E A K         =   f a l s e ;  
 	 	 	 	 F X D _ C O N T I N U E   =   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( F X D _ B R E A K   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 F X D _ B R E A K         =   f a l s e ;  
 	 	 	 	 F X D _ C O N T I N U E   =   f a l s e ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( g e t _ f r o m _ a r r a y )  
 	 	 	 {  
 	 	 	 	 i f   ( ! T r a d e S e l e c t B y T i c k e t ( ( u l o n g ) t r a d e s [ i ] [ 1 ] ) )   c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( ! T r a d e S e l e c t B y I n d e x ( i ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )   c o n t i n u e ;  
 	 	 	 }  
 	 	  
 	 	 	 s k i p + + ;  
 	 	  
 	 	 	 i f   ( L o o p S k i p   < =   s k i p   & &   ( c o u n t   <   L o o p L i m i t   | |   L o o p L i m i t   = =   0 ) )  
 	 	 	 {  
 	 	 	 	 i f   ( L o o p E v e r y   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 e v e r y + + ;  
 	 	  
 	 	 	 	 	 i f   ( e v e r y   <   L o o p E v e r y )   { c o n t i n u e ; }   e l s e   { e v e r y   =   0 ; }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 c o u n t + + ;  
 	 	 	 	 a t t r T y p e I n L o o p ( 1 ) ;  
 	 	 	 	 a t t r T i c k e t I n L o o p ( O r d e r T i c k e t ( ) ) ;  
 	 	  
 	 	 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( c o u n t   = =   L o o p L i m i t )   b r e a k ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( L o o p D i r e c t i o n   = =   " o l d e s t - t o - n e w e s t " )  
 	 	 	 {  
 	 	 	 	 / /   i f   t r a d e   w a s   c l o s e d   m e a n w h i l e  
 	 	 	 	 i f   ( i _ s t o p   >   T r a d e s T o t a l ( ) - 1 )  
 	 	 	 	 {  
 	 	 	 	 	 i _ s t o p   =   T r a d e s T o t a l ( ) - 1 ;  
 	 	 	 	 	 i - - ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 a t t r T y p e I n L o o p ( s a v e d _ t y p e ) ;  
 	 	 a t t r T i c k e t I n L o o p ( s a v e d _ t i c k e t ) ;   / /   R e l o a d i n g   T i c k e t   n u m b e r   f r o m   t h e   o v e r l a p p i n g   l o o p   ( i f   a n y )  
 	 	  
 	 	 F X D _ B R E A K         =   f a l s e ;  
 	 	 F X D _ C O N T I N U E   =   f a l s e ;  
 	 	  
 	 	 i f   (  
 	 	 	       ( P a s s E n d   = =   0 )  
 	 	 	 | |   ( P a s s E n d   = =   1   & &   c o u n t   >   0 )  
 	 	 	 | |   ( P a s s E n d   = =   2   & &   c o u n t   = =   0 )  
 	 	 )   {  
 	 	 	 _ c a l l b a c k _ ( 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 2 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 2 ( )  
 	 {  
 	 	 c o m p a r e   =   ( s t r i n g ) " + " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 _ T 1 _   l o   =   _ L o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 1 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( l o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 _ T 3 _   r o   =   _ R o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 3 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( r o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 v : : D I S T A N C E _ G R I D _ B S   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " N o   t r a d e   n e a r b y "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   _ T 6 _ , t y p e n a m e   T 7 , t y p e n a m e   _ T 7 _ , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 >  
 c l a s s   M D L _ N o N e a r b y R u n n i n g :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   T i m e 1 ;   v i r t u a l   _ T 6 _   _ T i m e 1 _ ( ) { r e t u r n ( _ T 6 _ ) 0 ; }  
 	 T 7   T i m e 2 ;   v i r t u a l   _ T 7 _   _ T i m e 2 _ ( ) { r e t u r n ( _ T 7 _ ) 0 ; }  
 	 T 8   M o d e B a s e P r i c e ;  
 	 T 9   B a s e P r i c e ;   v i r t u a l   _ T 9 _   _ B a s e P r i c e _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   M o d e R a n g e ;  
 	 T 1 1   R a n g e P i p s ;  
 	 T 1 2   R a n g e F r a c t i o n ;  
 	 T 1 3   R a n g e P o s i t i o n ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ N o N e a r b y R u n n i n g ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 M o d e B a s e P r i c e   =   ( s t r i n g ) " c u r r e n t " ;  
 	 	 M o d e R a n g e   =   ( s t r i n g ) " p i p s " ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) 1 0 . 0 ;  
 	 	 R a n g e F r a c t i o n   =   ( d o u b l e ) 0 . 0 0 1 0 ;  
 	 	 R a n g e P o s i t i o n   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   n e x t                               =   t r u e ;  
 	 	 d o u b l e   p r i c e                       =   0 ;  
 	 	 b o o l   u s e _ c u r r e n t _ p r i c e   =   ( M o d e B a s e P r i c e   = =   " c u r r e n t " ) ;  
 	 	  
 	 	 / /   p r e p a r e   t h e   t i m e   f i l t e r s  
 	 	 d a t e t i m e   t 1   =   _ T i m e 1 _ ( ) ;  
 	 	 d a t e t i m e   t 2   =   _ T i m e 2 _ ( ) ;  
 	 	  
 	 	 i f   ( t 1   > =   T i m e C u r r e n t ( ) )   t 1   =   0 ;  
 	 	  
 	 	 i f   ( ! u s e _ c u r r e n t _ p r i c e )  
 	 	 {  
 	 	 	 p r i c e   =   _ B a s e P r i c e _ ( ) ;  
 	 	 }  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   T r a d e s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( T r a d e S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ) )  
 	 	 	 {  
 	 	 	 	 / /   f i l t e r   b y   t i m e  
 	 	 	 	 i f   ( ( t 1   <   t 2   & &   O r d e r O p e n T i m e ( )   <   t 1 )   | |   O r d e r O p e n T i m e ( )   >   t 2 )  
 	 	 	 	 {  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 / /   w h a t   i s   t h e   d i s t a n c e ?  
 	 	 	 	 d o u b l e   d i s t a n c e   =   R a n g e F r a c t i o n ;  
 	 	  
 	 	 	 	 i f   ( M o d e R a n g e   = =   " p i p s " )   { d i s t a n c e   =   t o D i g i t s ( R a n g e P i p s ,   S y m b o l ) ; }  
 	 	  
 	 	 	 	 / /   c h e c k i n g   t h e   p o s i t i o n  
 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   0 )   / /   b u y ?  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( u s e _ c u r r e n t _ p r i c e )   { p r i c e   =   S y m b o l I n f o D o u b l e ( S y m b o l ,   S Y M B O L _ A S K ) ; }  
 	 	  
 	 	 	 	 	 s w i t c h   ( R a n g e P o s i t i o n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a s e   0 :   i f   ( p r i c e   < =   ( O r d e r O p e n P r i c e ( )   +   d i s t a n c e / 2 )   & &   p r i c e   > =   ( O r d e r O p e n P r i c e ( )   -   d i s t a n c e / 2 ) )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 	 c a s e   1 :   i f   ( p r i c e   < =   O r d e r O p e n P r i c e ( )   +   d i s t a n c e   & &   p r i c e   > =   O r d e r O p e n P r i c e ( ) )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 	 c a s e   2 :   i f   ( p r i c e   < =   O r d e r O p e n P r i c e ( )   & &   p r i c e   > =   O r d e r O p e n P r i c e ( )   -   d i s t a n c e )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( u s e _ c u r r e n t _ p r i c e )   { p r i c e   =   S y m b o l I n f o D o u b l e ( S y m b o l ,   S Y M B O L _ B I D ) ; }  
 	 	  
 	 	 	 	 	 s w i t c h   ( R a n g e P o s i t i o n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a s e   0 :   i f   ( p r i c e   < =   ( O r d e r O p e n P r i c e ( )   +   d i s t a n c e / 2 )   & &   p r i c e   > =   ( O r d e r O p e n P r i c e ( )   -   d i s t a n c e / 2 ) )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 	 c a s e   1 :   i f   ( p r i c e   < =   O r d e r O p e n P r i c e ( )   & &   p r i c e   > =   O r d e r O p e n P r i c e ( )   -   d i s t a n c e )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 	 c a s e   2 :   i f   ( p r i c e   < =   O r d e r O p e n P r i c e ( )   +   d i s t a n c e   & &   p r i c e   > =   O r d e r O p e n P r i c e ( ) )   { n e x t   =   f a l s e ; }   b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 i f   ( n e x t   = =   f a l s e )   { b r e a k ; }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( n e x t   = =   t r u e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 3 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 3 ( )  
 	 {  
 	 	 c o m p a r e   =   ( s t r i n g ) " + " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 _ T 1 _   l o   =   _ L o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 1 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( l o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 _ T 3 _   r o   =   _ R o _ ( ) ;  
 	 	 i f   ( t y p e n a m e ( _ T 3 _ )   ! =   " s t r i n g "   & &   M a t h A b s ( r o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	  
 	 	 v : : D I S T A N C E _ G R I D _ B S   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
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
 / /   " S t o p - L o s s "   m o d e l  
 c l a s s   M D L I C _ e v e n t T r a d e _ e _ a t t r S t o p L o s s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   M o d e ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ e v e n t T r a d e _ e _ a t t r S t o p L o s s ( )  
 	 {  
 	 	 M o d e   =   ( s t r i n g ) " l e v e l " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   r e t v a l   =   0 ;  
 	 	 s t r i n g   s y m b o l   =   e _ a t t r S y m b o l ( ) ;  
 	 	 i n t   d i g i t s         =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 	  
 	 	 i f   ( M o d e   = =   " l e v e l " )  
 	 	 {  
 	 	 	 r e t v a l   =   e _ a t t r S t o p L o s s ( ) ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e   = =   " f r a c t i o n " )  
 	 	 {  
 	 	 	 i f   ( e _ a t t r S t o p L o s s ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   M a t h A b s ( e _ a t t r O p e n P r i c e ( )   -   e _ a t t r S t o p L o s s ( ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e   = =   " p i p s " )  
 	 	 {  
 	 	 	 i f   ( e _ a t t r S t o p L o s s ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 	  
 	 	 	 	 r e t v a l   =   M a t h A b s ( e _ a t t r O p e n P r i c e ( )   -   e _ a t t r S t o p L o s s ( ) )   /   ( P i p V a l u e ( s y m b o l )   *   p o i n t ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( r e t v a l ,   d i g i t s ) ;  
 	 }  
 } ;  
  
 / /   " F r a c t a l s "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i F r a c t a l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M o d e ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i F r a c t a l s ( )  
 	 {  
 	 	 M o d e   =   ( i n t ) 1 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i F r a c t a l s ( S y m b o l ,   P e r i o d ,   M o d e ,   S h i f t   +   F X D _ M O R E _ S H I F T ) ;  
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
 / /   " M o v i n g   A v e r a g e "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i M A  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M A p e r i o d ;  
 	 i n t   M A s h i f t ;  
 	 E N U M _ M A _ M E T H O D   M A m e t h o d ;  
 	 E N U M _ A P P L I E D _ P R I C E   A p p l i e d P r i c e ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i M A ( )  
 	 {  
 	 	 M A p e r i o d   =   ( i n t ) 1 4 ;  
 	 	 M A s h i f t   =   ( i n t ) 0 ;  
 	 	 M A m e t h o d   =   ( E N U M _ M A _ M E T H O D ) M O D E _ S M A ;  
 	 	 A p p l i e d P r i c e   =   ( E N U M _ A P P L I E D _ P R I C E ) P R I C E _ C L O S E ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i M A ( S y m b o l ,   P e r i o d ,   M A p e r i o d ,   M A s h i f t ,   M A m e t h o d ,   A p p l i e d P r i c e ,   S h i f t   +   F X D _ M O R E _ S H I F T ) ;  
 	 }  
 } ;  
  
 / /   " M a r g i n   L e v e l   ( i n   % ) "   m o d e l  
 c l a s s   M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   W h e n N o T r a d e s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l ( )  
 	 {  
 	 	 W h e n N o T r a d e s   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   A c c o u n t M a r g i n L e v e l ( W h e n N o T r a d e s ) ;  
 	 }  
 } ;  
  
 / /   " O p e n   P r i c e "   m o d e l  
 c l a s s   M D L I C _ i n l o o p _ O r d e r O p e n P r i c e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n l o o p _ O r d e r O p e n P r i c e ( )  
 	 {  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   O r d e r O p e n P r i c e ( ) ;  
 	 }  
 } ;  
  
 / /   " A s k ,   B i d ,   M i d "   m o d e l  
 c l a s s   M D L I C _ p r i c e s _ p r i c e s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   P r i c e ;  
 	 i n t   T i c k I D ;  
 	 s t r i n g   S y m b o l ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ p r i c e s _ p r i c e s ( )  
 	 {  
 	 	 P r i c e   =   ( s t r i n g ) " A S K " ;  
 	 	 T i c k I D   =   ( i n t ) 0 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   d i g i t s   =   ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 	  
 	 	 d o u b l e   r e t v a l   =   0 ;  
 	 	 i n t   t I D               =   T i c k I D   +   F X D _ M O R E _ S H I F T ;  
 	 	  
 	 	           i f   ( P r i c e   = =   " A S K " )             { r e t v a l   =   T i c k s D a t a ( S y m b o l , S Y M B O L _ A S K , t I D ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " B I D " )             { r e t v a l   =   T i c k s D a t a ( S y m b o l , S Y M B O L _ B I D , t I D ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " M I D " )             { r e t v a l   =   ( ( T i c k s D a t a ( S y m b o l , S Y M B O L _ A S K , t I D ) + T i c k s D a t a ( S y m b o l , S Y M B O L _ B I D , t I D ) ) / 2 ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " B I D H I G H " )     { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ B I D H I G H ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " B I D L O W " )       { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ B I D L O W ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " A S K H I G H " )     { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ A S K H I G H ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " A S K L O W " )       { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ A S K L O W ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " L A S T " )           { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ L A S T ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " L A S T H I G H " )   { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ L A S T H I G H ) ; }  
 	 	 e l s e   i f   ( P r i c e   = =   " L A S T L O W " )     { r e t v a l   =   S y m b o l I n f o D o u b l e ( S y m b o l , S Y M B O L _ L A S T L O W ) ; }  
 	 	  
 	 	 r e t u r n   N o r m a l i z e D o u b l e ( r e t v a l ,   d i g i t s ) ;  
 	 }  
 } ;  
  
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   B l o c k   1   ( C H A R T   G R I D   O F F )  
 c l a s s   B l o c k 0 :   p u b l i c   M D L _ C h a r t S e t P r o p e r t i e s < i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C h a r t S h o w G r i d   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 ] . r u n ( 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C h a r t M o d e   =   ( i n t ) C H A R T _ C A N D L E S ;  
 	 }  
 } ;  
  
 / /   B l o c k   2   ( P a s s )  
 c l a s s   B l o c k 1 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 0 ] . r u n ( 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   3   ( M o d i f y   c h a r t   c o l o r s )  
 c l a s s   B l o c k 2 :   p u b l i c   M D L _ C h a r t S e t C o l o r s < c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C h a r t C o l o r B a c k g r o u n d   =   ( c o l o r ) c l r B l a c k ;  
 	 	 C h a r t C o l o r F o r e g r o u n d   =   ( c o l o r ) c l r N O N E ;  
 	 	 C h a r t C o l o r G r i d   =   ( c o l o r ) c l r N O N E ;  
 	 	 C h a r t C o l o r B a r U p   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r B a r D o w n   =   ( c o l o r ) c l r C r i m s o n ;  
 	 	 C h a r t C o l o r B u l l C a n d l e   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r B e a r C a n d l e   =   ( c o l o r ) c l r C r i m s o n ;  
 	 	 C h a r t C o l o r D o j i C a n d l e   =   ( c o l o r ) c l r O r a n g e R e d ;  
 	 	 C h a r t C o l o r V o l u m e s   =   ( c o l o r ) c l r D a r k O r a n g e ;  
 	 	 C h a r t C o l o r B i d   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r A s k   =   ( c o l o r ) c l r R e d ;  
 	 	 C h a r t C o l o r L a s t   =   ( c o l o r ) c l r L i m e G r e e n ;  
 	 	 C h a r t C o l o r S t o p L e v e l s   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1   ( O N - O F F   ( C u t   L o s s ) )  
 c l a s s   B l o c k 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : C u t _ L o s s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 ] . r u n ( 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2   ( I f   t r a d e ( B u y / S e l l ) )  
 c l a s s   B l o c k 4 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 / /   B l o c k   1 3   ( F o r m u l a ( C u t   L o s s   P e r c e n t ) )  
 c l a s s   B l o c k 5 :   p u b l i c   M D L _ F o r m u l a _ 1 < M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   { r e t u r n   L o . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : C u t _ L o s s _ p e r c e n t ;  
  
 	 	 d o u b l e   v a l u e   =   ( d o u b l e ) R o . _ e x e c u t e _ ( ) ;  
 	 	 v a l u e   =   v a l u e * ( - 1 ) ;   / /   A d j u s t   t h e   v a l u e  
 	 	 r e t u r n   v a l u e ;  
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
 / /   B l o c k   1 4   ( C h e c k   p r o f i t   ( P e r c e n t ) ( B u y / S e l l ) )  
 c l a s s   B l o c k 6 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 C o m p a r e   =   " < " ;  
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
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) v : : C u t _ L o s s _ p e r c e n t ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 5   ( C l o s e   t r a d e s ( B u y / S e l l ) )  
 c l a s s   B l o c k 7 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 ] . r u n ( 7 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 6   ( D e l e t e   p e n d i n g   o r d e r s ( H E D G E ) )  
 c l a s s   B l o c k 8 :   p u b l i c   M D L _ D e l e t e P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 7   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 9 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   M A X   D D   K I L L   S W I T C H E D   T R I G G E R E D   - - - - - - - - - - - - - - - " ;  
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
 / /   B l o c k   1 8   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 1 0 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   S T O P P I N G   T O D A Y   T O   R E S E T   M A X   D D   D A I L Y   - - - - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 1 ] . r u n ( 1 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 9   ( S E T   M A X   D D   =   T R U E )  
 c l a s s   B l o c k 1 1 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 1 3 ] . r u n ( 1 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : m a x _ d d _ h i t   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   2 0   ( S E T   M A X   D D   =   F A L S E )  
 c l a s s   B l o c k 1 2 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 0 " ;  
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
 	 	 v : : m a x _ d d _ h i t   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   6 0   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 1 3 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 2 ] . r u n ( 1 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 1   ( P a s s )  
 c l a s s   B l o c k 1 4 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 5 , 2 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 5 ] . r u n ( 1 4 ) ;  
 	 	 	 _ b l o c k s _ [ 2 3 ] . r u n ( 1 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 2   ( W e e k d a y   f i l t e r )  
 c l a s s   B l o c k 1 5 :   p u b l i c   M D L _ W e e k d a y F i l t e r < s t r i n g , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 3 ]   =   { 1 6 , 1 9 , 2 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 2 0 ] . r u n ( 1 5 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 6 ] . r u n ( 1 5 ) ;  
 	 	 	 _ b l o c k s _ [ 1 9 ] . r u n ( 1 5 ) ;  
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
 / /   B l o c k   6 3   ( H o u r s   f i l t e r )  
 c l a s s   B l o c k 1 6 :   p u b l i c   M D L _ H o u r s F i l t e r < s t r i n g , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 7 , 1 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 8 ] . r u n ( 1 6 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 7 ] . r u n ( 1 6 ) ;  
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
 / /   B l o c k   6 4   ( E A   R U N N I N G )  
 c l a s s   B l o c k 1 7 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 3 3 ] . r u n ( 1 7 ) ;  
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
 / /   B l o c k   6 5   ( E A   N O T   R U N N I N G )  
 c l a s s   B l o c k 1 8 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 5 " ;  
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
 / /   B l o c k   6 6   ( E A   W E E K   R U N N I N G )  
 c l a s s   B l o c k 1 9 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 6 " ;  
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
 / /   B l o c k   6 7   ( E A   W E E K L Y   N O T   R U N N I N G )  
 c l a s s   B l o c k 2 0 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 7 " ;  
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
 / /   B l o c k   7 8   ( S e t   \ " C u r r e n t   M a r k e t \ "   f o r   n e x t   b l o c k s )  
 c l a s s   B l o c k 2 1 :   p u b l i c   M D L _ S e t C u r r e n t S y m b o l 2 < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 2 2 ] . r u n ( 2 1 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 2 ] . r u n ( 2 1 ) ;  
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
 / /   B l o c k   7 9   ( C H E C K   I F   M A X   P R O F I T   W A S   H I T   T O D A Y )  
 c l a s s   B l o c k 2 2 :   p u b l i c   M D L _ C h e c k P r o f i t I n P e r i o d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , s t r i n g , d o u b l e , b o o l , i n t , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 2 8 , 4 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 G r o u p   =   " D A I L Y   P R O F I T   C H E C K E R " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 T i m e 1   =   " 0 0 : 0 0 : 0 0 " ;  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 4 1 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 8 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) c : : D A I L Y _ P R O F I T _ G O A L ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 0   ( C o m m e n t )  
 c l a s s   B l o c k 2 3 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t E q u i t y , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t P r o f i t , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 4 } ;  
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
 	 	 	 _ b l o c k s _ [ 2 4 ] . r u n ( 2 3 ) ;  
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
 / /   B l o c k   8 1   ( C o m m e n t )  
 c l a s s   B l o c k 2 4 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 5 . T e x t   =   " t r u e " ;  
 	 	 V a l u e 8 . T e x t   =   " " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 T i t l e   =   " " ;  
 	 	 O b j Y   =   1 4 9 ;  
 	 	 O b j T i t l e F o n t S i z e   =   1 4 ;  
 	 	 L a b e l 1   =   " D A Y S   W E E K " ;  
 	 	 L a b e l 2   =   " M A X   D D   K I L L   S W I T C H " ;  
 	 	 L a b e l 3   =   " M A X   D D   V A L U E " ;  
 	 	 L a b e l 4   =   " M A X   D D   H I T " ;  
 	 	 L a b e l 5   =   " A U T O   T P - S L " ;  
 	 	 L a b e l 6   =   " D A I L Y   P R O F I T   H I T " ;  
 	 	 L a b e l 7   =   " D A I L Y   L O S S   H I T " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ V a l u e 1 _ ( )   {  
 	 	 V a l u e 1 . B o o l e a n   =   v : : E A _ W e e k d a y ;  
  
 	 	 r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ V a l u e 2 _ ( )   {  
 	 	 V a l u e 2 . T e x t   =   c : : C u t _ L o s s ;  
  
 	 	 r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ V a l u e 3 _ ( )   {  
 	 	 V a l u e 3 . T e x t   =   v : : C u t _ L o s s _ p e r c e n t ;  
  
 	 	 r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   b o o l   _ V a l u e 4 _ ( )   {  
 	 	 V a l u e 4 . B o o l e a n   =   v : : m a x _ d d _ h i t ;  
  
 	 	 r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   b o o l   _ V a l u e 6 _ ( )   {  
 	 	 V a l u e 6 . B o o l e a n   =   v : : m a x _ d _ p r o f i t _ h i t ;  
  
 	 	 r e t u r n   V a l u e 6 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   b o o l   _ V a l u e 7 _ ( )   {  
 	 	 V a l u e 7 . B o o l e a n   =   v : : m a x _ d a i l y _ l o s s _ h i t ;  
  
 	 	 r e t u r n   V a l u e 7 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 / /   B l o c k   8 2   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 5 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   D A I L Y   L O S S   W A S   R E A C H E D   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 6 ] . r u n ( 2 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 3   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 6 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 3 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 1   H O U R S   B R O K E R   T I M E   T O   R E S T A R T   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   8 4   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 7 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   D A I L Y   P R O F I T   G O A L   W A S   R E A C H E D   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 9 ] . r u n ( 2 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 5   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 2 8 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 3 0 ] . r u n ( 2 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 6   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 9 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 6 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 1   H O U R S   B R O K E R   T I M E   T O   R E S T A R T   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   8 7   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 3 0 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 7 ] . r u n ( 3 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 8   ( N o   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 3 1 :   p u b l i c   M D L _ N o P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 3 6 , 7 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 3 6 ] . r u n ( 3 1 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 2 ] . r u n ( 3 1 ) ;  
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
 / /   B l o c k   8 9   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 3 2 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 9 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   A L R E A D Y   A   P E N D I N G   O R D E R     - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   9 0   ( C h e c k   p e n d i n g   o r d e r s   c o u n t )  
 c l a s s   B l o c k 3 3 :   p u b l i c   M D L _ C h e c k O r d e r s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 3 1 , 3 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < = " ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 3 5 ] . r u n ( 3 3 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 1 ] . r u n ( 3 3 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C o m p a r e C o u n t   =   ( i n t ) c : : H O W _ M A N Y _ T R A D E S ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 1   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 3 4 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 1 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   M A X   P E N D I N G   O R D E R S   R E A C H E D     - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   9 2   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 3 5 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 4 ] . r u n ( 3 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 3   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 3 6 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 2 ] . r u n ( 3 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 4   ( S L   T R A I L I N G   S T O P )  
 c l a s s   B l o c k 3 7 :   p u b l i c   M D L _ T r a i l i n g S t o p 2 < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ i n d i c a t o r s _ i S A R , d o u b l e , M D L I C _ v a l u e _ p o i n t s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 f t D i g i t s . V a l u e   =   4 0 . 0 ;  
 	 	 f t S t a r t . V a l u e   =   0 . 0 ;  
 	 	 f t S t a r t F r a c t i o n . V a l u e   =   0 . 0 0 1 ;  
 	 	 f t T P . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 T r a i l i n g S t o p M o d e   =   " p e r c e n t T P " ;  
 	 	 t S t o p P e r c e n t P r o f i t   =   0 . 0 ;  
 	 	 T r a i l i n g S t e p M o d e   =   " p e r c e n t T S " ;  
 	 	 t S t a r t P e r c e n t T S   =   0 . 0 ;  
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
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 t S t o p P i p s   =   ( d o u b l e ) c : : T r a i l i n g _ S t o p ;  
 	 	 t S t o p P e r c e n t T P   =   ( d o u b l e ) c : : T r a i l i n g _ S t o p ;  
 	 	 t S t e p P i p s   =   ( d o u b l e ) c : : T r a i l i n g _ S t e p ;  
 	 	 t S t e p P e r c e n t T S   =   ( d o u b l e ) c : : T r a i l i n g _ S t e p ;  
 	 	 L e v e l C o l o r   =   ( c o l o r ) c l r Y e l l o w ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 5   ( B E   T P   % )  
 c l a s s   B l o c k 3 8 :   p u b l i c   M D L _ B r e a k E v e n P o i n t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 O n P r o f i t M o d e   =   " p e r c e n t T P " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 9 ] . r u n ( 3 8 ) ;  
 	 	 }  
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
 / /   B l o c k   9 6   ( c l o s e   ( p a r t i a l l y ) )  
 c l a s s   B l o c k 3 9 :   p u b l i c   M D L _ L o o p C l o s e P a r t < s t r i n g , d o u b l e , d o u b l e , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 3 ] . r u n ( 3 9 ) ;  
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
 / /   B l o c k   9 7   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 0 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 7 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   P A R T I A L   T A K E N   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   9 8   ( C H E C K   I F   M A X   D D   I S   T R I G G E R E D )  
 c l a s s   B l o c k 4 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 4 , 4 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   v : : m a x _ d d _ h i t ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   b o o l   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 4 ] . r u n ( 4 1 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 2 ] . r u n ( 4 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 0   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 4 2 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 5 ] . r u n ( 4 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 1   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 4 3 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 0 ] . r u n ( 4 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 2   ( T R A I L I N G   E N A B L E D )  
 c l a s s   B l o c k 4 4 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : T R A I L I N G _ E N A B L E D ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 7 ] . r u n ( 4 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 3   ( P A R T I A L S   E N A B L E D )  
 c l a s s   B l o c k 4 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : P A R T I A L S _ E N A B L E D ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 8 ] . r u n ( 4 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 4   ( B E   E N A B L E D )  
 c l a s s   B l o c k 4 6 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : B E _ E N A B L E D ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 8 ] . r u n ( 4 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 5   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 7 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 5 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   B R E A K   E V E N   T R I G G E R E D   A T   S P E C I F I E D   %   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 6   ( C h e c k   p r o f i t   ( u n r e a l i z e d ) )  
 c l a s s   B l o c k 4 8 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 9 ] . r u n ( 4 8 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) c : : P A R T I A L S _ T R I G G E R _ A M O U N T ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 7   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 4 9 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 7 ] . r u n ( 4 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 8   ( S e l l   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 5 0 :   p u b l i c   M D L _ S e l l P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ p r i c e s _ L o w e s t F r o m T o C a n d l e s , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ e v e n t T r a d e _ e _ a t t r S t o p L o s s , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d P r i c e . S t a r t B a r   =   1 ;  
 	 	 d P r i c e . E n d B a r   =   5 ;  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d l S t o p L o s s . S t a r t B a r   =   1 ;  
 	 	 d l S t o p L o s s . E n d B a r   =   3 ;  
 	 	 d p S t o p L o s s . M o d e   =   " p i p s " ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t H o u r s   =   6 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i c e   =   " a s k " ;  
 	 	 P r i c e O f f s e t   =   0 . 0 ;  
 	 	 V o l u m e M o d e   =   " b a l a n c e R i s k " ;  
 	 	 V o l u m e S i z e   =   0 . 0 ;  
 	 	 V o l u m e U p p e r L i m i t   =   5 . 0 ;  
 	 	 S t o p L o s s P e r c e n t P r i c e   =   0 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " p e r c e n t S L " ;  
 	 	 T a k e P r o f i t P i p s   =   0 . 0 ;  
 	 	 E x p M o d e   =   " c u s t o m " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   {  
 	 	 d P r i c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 d P r i c e . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   {  
 	 	 d l S t o p L o s s . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 d l S t o p L o s s . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) c : : T P _ p e r c ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 9   ( B u y   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 5 1 :   p u b l i c   M D L _ B u y P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ p r i c e s _ H i g h e s t F r o m T o C a n d l e s , d o u b l e , M D L I C _ e v e n t T r a d e _ e _ a t t r S t o p L o s s , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d P r i c e . S t a r t B a r   =   1 ;  
 	 	 d P r i c e . E n d B a r   =   5 ;  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d l S t o p L o s s . S t a r t B a r   =   1 ;  
 	 	 d l S t o p L o s s . E n d B a r   =   3 ;  
 	 	 d p S t o p L o s s . M o d e   =   " p i p s " ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t H o u r s   =   6 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i c e   =   " b i d " ;  
 	 	 P r i c e O f f s e t   =   0 . 0 ;  
 	 	 V o l u m e M o d e   =   " b a l a n c e R i s k " ;  
 	 	 V o l u m e S i z e   =   0 . 0 ;  
 	 	 V o l u m e U p p e r L i m i t   =   5 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " p e r c e n t S L " ;  
 	 	 T a k e P r o f i t P i p s   =   0 . 0 ;  
 	 	 E x p M o d e   =   " c u s t o m " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   {  
 	 	 d P r i c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 d P r i c e . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   {  
 	 	 d l S t o p L o s s . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 d l S t o p L o s s . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 V o l u m e P e r c e n t   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 S t o p L o s s P e r c e n t P r i c e   =   ( d o u b l e ) c : : R M _ P E R C E N T _ A C T ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) c : : T P _ p e r c ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 0   ( I n d i c a t o r   i s   v i s i b l e F A C T A L S   B U Y )  
 c l a s s   B l o c k 5 2 :   p u b l i c   M D L _ I n d i c a t o r I s V i s i b l e < M D L I C _ i n d i c a t o r s _ i F r a c t a l s , d o u b l e , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 I n d i c a t o r . M o d e   =   2 ;  
 	 	 I n d i c a t o r . S h i f t   =   6 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 3 ] . r u n ( 5 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 1   ( E M A B U Y )  
 c l a s s   B l o c k 5 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
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
 	 	 R o . M A p e r i o d   =   c : : E M A _ T R E N D ;  
 	 	 R o . M A m e t h o d   =   M O D E _ E M A ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 4 ] . r u n ( 5 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 2   ( C h e c k   d i s t a n c e E M A )  
 c l a s s   B l o c k 5 4 :   p u b l i c   M D L _ C h e c k D i s t a n c e < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , b o o l , s t r i n g , M D L I C _ v a l u e _ p o i n t s , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 D i s t a n c e I s A b s o l u t e   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ U p p e r L e v e l _ ( )   {  
 	 	 U p p e r L e v e l . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 U p p e r L e v e l . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   U p p e r L e v e l . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ L o w e r L e v e l _ ( )   {  
 	 	 L o w e r L e v e l . M A p e r i o d   =   c : : E M A _ T R E N D ;  
 	 	 L o w e r L e v e l . M A m e t h o d   =   M O D E _ E M A ;  
 	 	 L o w e r L e v e l . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o w e r L e v e l . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o w e r L e v e l . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o w e r L e v e l . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d D i s t a n c e _ ( )   {  
 	 	 d D i s t a n c e . V a l u e   =   c : : D I S T A N C E _ T R E N D _ P I P S ;  
 	 	 d D i s t a n c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   d D i s t a n c e . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 5 ] . r u n ( 5 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 3   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 5 5 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 0 ] . r u n ( 5 5 ) ;  
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
 / /   B l o c k   1 1 4   ( I n d i c a t o r   i s   v i s i b l e F A C T A L S   S E L L )  
 c l a s s   B l o c k 5 6 :   p u b l i c   M D L _ I n d i c a t o r I s V i s i b l e < M D L I C _ i n d i c a t o r s _ i F r a c t a l s , d o u b l e , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 I n d i c a t o r . S h i f t   =   5 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 7 ] . r u n ( 5 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 5   ( E M A S E L L )  
 c l a s s   B l o c k 5 7 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
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
 	 	 R o . M A p e r i o d   =   c : : E M A _ T R E N D ;  
 	 	 R o . M A m e t h o d   =   M O D E _ E M A ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 8 ] . r u n ( 5 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 6   ( C h e c k   d i s t a n c e E M A )  
 c l a s s   B l o c k 5 8 :   p u b l i c   M D L _ C h e c k D i s t a n c e < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , b o o l , s t r i n g , M D L I C _ v a l u e _ p o i n t s , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 D i s t a n c e I s A b s o l u t e   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ U p p e r L e v e l _ ( )   {  
 	 	 U p p e r L e v e l . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 U p p e r L e v e l . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   U p p e r L e v e l . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ L o w e r L e v e l _ ( )   {  
 	 	 L o w e r L e v e l . M A p e r i o d   =   c : : E M A _ T R E N D ;  
 	 	 L o w e r L e v e l . M A m e t h o d   =   M O D E _ E M A ;  
 	 	 L o w e r L e v e l . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o w e r L e v e l . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o w e r L e v e l . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o w e r L e v e l . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d D i s t a n c e _ ( )   {  
 	 	 d D i s t a n c e . V a l u e   =   c : : D I S T A N C E _ T R E N D _ P I P S ;  
 	 	 d D i s t a n c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   d D i s t a n c e . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 9 ] . r u n ( 5 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 7   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 5 9 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 1 ] . r u n ( 5 9 ) ;  
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
 / /   B l o c k   1 1 8   ( I F   N O   T R A D E S   T H E N   P A S S )  
 c l a s s   B l o c k 6 0 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . W h e n N o T r a d e s   =   - 1 ;  
 	 	 R o . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   { r e t u r n   L o . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 6 1 ] . r u n ( 6 0 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 1 ] . r u n ( 6 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 9   ( F R E E   M A R G I N   A B O V E   5 0 0 % )  
 c l a s s   B l o c k 6 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 6 3 , 7 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 R o . V a l u e   =   1 0 0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   { r e t u r n   L o . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 6 3 ] . r u n ( 6 1 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 1 ] . r u n ( 6 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 0   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 6 2 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 0 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   C H E C K   -   P A S S   -   M A R G I N   I S   A B O V E   O R   E Q U A L   T O   1 0 0 %   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 1   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 6 3 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 2 ] . r u n ( 6 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 2   ( I F   N O   T R A D E S   T H E N   P A S S )  
 c l a s s   B l o c k 6 4 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . W h e n N o T r a d e s   =   - 1 ;  
 	 	 R o . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   { r e t u r n   L o . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 6 5 ] . r u n ( 6 4 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 5 ] . r u n ( 6 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 3   ( F R E E   M A R G I N   A B O V E   5 0 0 % )  
 c l a s s   B l o c k 6 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ a c c o u n t _ A c c o u n t M a r g i n L e v e l , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 6 7 , 6 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 R o . V a l u e   =   1 0 0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   { r e t u r n   L o . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 6 7 ] . r u n ( 6 5 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 9 ] . r u n ( 6 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 4   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 6 6 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 4 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   C H E C K   -   P A S S   -   M A R G I N   I S   A B O V E   O R   E Q U A L   T O   1 0 0 %   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 5   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 6 7 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 6 ] . r u n ( 6 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 6   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 6 8 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 6 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   C H E C K   -   F A I L   -   M A R G I N   I S   L E S S   O R   E Q U A L   T O   1 0 0 %   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 7   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 6 9 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 8 ] . r u n ( 6 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 8   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 7 0 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 8 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   A L G O R I T H M I C _ S M C _ O B   -   C H E C K   -   F A I L   -   M A R G I N   I S   L E S S   O R   E Q U A L   T O   1 0 0 %   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 2 9   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 7 1 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 0 ] . r u n ( 7 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 0   ( C h e c k   p o s i t i o n s   c o u n t )  
 c l a s s   B l o c k 7 2 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 4 ]   =   { 5 2 , 5 6 , 7 3 , 8 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " > = " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 5 2 ] . r u n ( 7 2 ) ;  
 	 	 	 _ b l o c k s _ [ 5 6 ] . r u n ( 7 2 ) ;  
 	 	 	 _ b l o c k s _ [ 7 3 ] . r u n ( 7 2 ) ;  
 	 	 	 _ b l o c k s _ [ 8 1 ] . r u n ( 7 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C o m p a r e C o u n t   =   ( i n t ) c : : H O W _ M A N Y _ T R A D E S ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 1   ( I f   t r a d e B U Y )  
 c l a s s   B l o c k 7 3 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 4 ] . r u n ( 7 3 ) ;  
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
 / /   B l o c k   1 3 2   ( F o r   e a c h   T r a d e L O O P   B U Y )  
 c l a s s   B l o c k 7 4 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 5 ] . r u n ( 7 4 ) ;  
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
 / /   B l o c k   1 3 3   ( C U R R E N T   P R I C E B U Y )  
 c l a s s   B l o c k 7 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 6 ] . r u n ( 7 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 4   ( F o r m u l a D I S T A N C E   P I P S )  
 c l a s s   B l o c k 7 6 :   p u b l i c   M D L _ F o r m u l a _ 2 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 R o . V a l u e   =   2 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   c : : D I S T A N C E _ G R I D _ P I P S ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 7 ] . r u n ( 7 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 5   ( N o   t r a d e   n e a r b y B U Y )  
 c l a s s   B l o c k 7 7 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d a t e t i m e   _ T i m e 1 _ ( )   { r e t u r n   T i m e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ T i m e 2 _ ( )   { r e t u r n   T i m e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ B a s e P r i c e _ ( )   {  
 	 	 B a s e P r i c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   B a s e P r i c e . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 8 ] . r u n ( 7 7 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D I S T A N C E _ G R I D _ B S ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 6   ( I n d i c a t o r   i s   v i s i b l e F A C T A L S   B U Y )  
 c l a s s   B l o c k 7 8 :   p u b l i c   M D L _ I n d i c a t o r I s V i s i b l e < M D L I C _ i n d i c a t o r s _ i F r a c t a l s , d o u b l e , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 I n d i c a t o r . M o d e   =   2 ;  
 	 	 I n d i c a t o r . S h i f t   =   2 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 9 ] . r u n ( 7 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 7   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 7 9 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 0 ] . r u n ( 7 9 ) ;  
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
 / /   B l o c k   1 3 8   ( B u y   n o w )  
 c l a s s   B l o c k 8 0 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
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
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 V o l u m e M o d e   =   " b a l a n c e R i s k " ;  
 	 	 V o l u m e U p p e r L i m i t   =   5 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " p e r c e n t S L " ;  
 	 	 T a k e P r o f i t P i p s   =   1 0 . 0 ;  
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
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) c : : T P _ p e r c ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 9   ( I f   t r a d e S E L L )  
 c l a s s   B l o c k 8 1 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 2 ] . r u n ( 8 1 ) ;  
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
 / /   B l o c k   1 4 0   ( F o r   e a c h   T r a d e L O O P   S E L L )  
 c l a s s   B l o c k 8 2 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 3 ] . r u n ( 8 2 ) ;  
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
 / /   B l o c k   1 4 1   ( C U R R E N T   P R I C E S E L L )  
 c l a s s   B l o c k 8 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 4 ] . r u n ( 8 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 2   ( F o r m u l a D I S T A N C E   P I P S )  
 c l a s s   B l o c k 8 4 :   p u b l i c   M D L _ F o r m u l a _ 3 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 R o . V a l u e   =   2 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   c : : D I S T A N C E _ G R I D _ P I P S ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 5 ] . r u n ( 8 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 3   ( N o   t r a d e   n e a r b y S E L L )  
 c l a s s   B l o c k 8 5 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d a t e t i m e   _ T i m e 1 _ ( )   { r e t u r n   T i m e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ T i m e 2 _ ( )   { r e t u r n   T i m e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ B a s e P r i c e _ ( )   {  
 	 	 B a s e P r i c e . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   B a s e P r i c e . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 6 ] . r u n ( 8 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D I S T A N C E _ G R I D _ B S ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 4   ( I n d i c a t o r   i s   v i s i b l e F A C T A L S   S E L L )  
 c l a s s   B l o c k 8 6 :   p u b l i c   M D L _ I n d i c a t o r I s V i s i b l e < M D L I C _ i n d i c a t o r s _ i F r a c t a l s , d o u b l e , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 I n d i c a t o r . S h i f t   =   2 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 7 ] . r u n ( 8 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 5   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 8 7 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 8 ] . r u n ( 8 7 ) ;  
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
 / /   B l o c k   1 4 6   ( S e l l   n o w )  
 c l a s s   B l o c k 8 8 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
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
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 V o l u m e M o d e   =   " b a l a n c e R i s k " ;  
 	 	 V o l u m e U p p e r L i m i t   =   5 . 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " p e r c e n t S L " ;  
 	 	 T a k e P r o f i t P i p s   =   1 0 . 0 ;  
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
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e R i s k   =   ( d o u b l e ) c : : R M _ P E R C T ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   ( d o u b l e ) c : : T P _ p e r c ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
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
 d o u b l e   A c c o u n t M a r g i n L e v e l ( d o u b l e   r e t u r n V a l u e   =   0 ) 
 { 
 	 i f   ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ M A R G I N )   >   0 ) 
 	 { 
 	 	 r e t u r n V a l u e   =   A c c o u n t I n f o D o u b l e ( A C C O U N T _ M A R G I N _ L E V E L ) ; 
 	 } 
 
 	 r e t u r n   r e t u r n V a l u e ; 
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
 i n t   B u y L a t e r ( 
 	 s t r i n g   s y m b o l , 
 	 d o u b l e   l o t s , 
 	 d o u b l e   p r i c e , 
 	 d o u b l e   s l l   =   0 ,   / /   S L   l e v e l 
 	 d o u b l e   t p l   =   0 ,   / /   T P   l e v e l 
 	 d o u b l e   s l p   =   0 ,   / /   S L   a d j u s t   i n   p o i n t s 
 	 d o u b l e   t p p   =   0 ,   / /   T P   a d j u s t   i n   p o i n t s 
 	 d o u b l e   s l i p p a g e   =   0 , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 , 
 	 i n t   m a g i c   =   0 , 
 	 s t r i n g   c o m m e n t   =   " " , 
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E , 
 	 b o o l   o c o   =   f a l s e 
 	 ) 
 { 
 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ A S K ) ; 
 	 i n t   t y p e   =   0 ; 
 
 	           i f   ( p r i c e   = =   a s k )   { t y p e   =   O P _ B U Y ; } 
 	 e l s e   i f   ( p r i c e   <   a s k )     { t y p e   =   O P _ B U Y L I M I T ; } 
 	 e l s e   i f   ( p r i c e   >   a s k )     { t y p e   =   O P _ B U Y S T O P ; } 
 	 
 	 r e t u r n   O r d e r C r e a t e ( 
 	 	 s y m b o l , 
 	 	 t y p e , 
 	 	 l o t s , 
 	 	 p r i c e , 
 	 	 s l l , 
 	 	 t p l , 
 	 	 s l p , 
 	 	 t p p , 
 	 	 s l i p p a g e , 
 	 	 m a g i c , 
 	 	 c o m m e n t , 
 	 	 a r r o w c o l o r , 
 	 	 e x p i r a t i o n , 
 	 	 o c o 
 	 ) ; 
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
 i n t   C o u n t e r ( i n t   i d ,   s t r i n g   c m d   =   " " ,   i n t   s e t _ p a s s e s   =   0 ) 
 { 
 	 s t a t i c   i n t   i d x [ ] ;   / /   i n d e x   l i s t 
 	 s t a t i c   i n t   p l [ ] ;     / /   p a s s e s   l i s t 
 	 i n t   s i z e         =   0 ; 
 	 i n t   p a s s e s     =   0 ; 
 	 i n t   c n t _ i d x   =   A r r a y S e a r c h ( i d x ,   i d ) ; 
 
 	 i f   ( c n t _ i d x   = =   - 1 ) 
 	 { 
 	 	 / /   C o u n t e r   n o t   f o u n d 
 	 	 s i z e   =   A r r a y S i z e ( i d x ) ; 
 
 	 	 A r r a y R e s i z e ( i d x ,   s i z e   +   1 ) ; 
 	 	 A r r a y R e s i z e ( p l ,   s i z e   +   1 ) ; 
 
 	 	 i d x [ s i z e ]   =   i d ; 
 	 	 p l [ s i z e ]     =   0 ; 
 	 	 c n t _ i d x       =   s i z e ; 
 	 } 
 
 	 p a s s e s   =   p l [ c n t _ i d x ] ; 
 
 	 i f   ( c m d   ! =   " " ) 
 	 { 
 	 	 i f   ( c m d   = =   " i n c r e m e n t " ) 
 	 	 { 
 	 	 	 p l [ c n t _ i d x ]   =   p l [ c n t _ i d x ]   +   1 ; 
 	 	 } 
 	 	 e l s e   i f   ( c m d   = =   " r e s e t " ) 
 	 	 { 
 	 	 	 p l [ c n t _ i d x ]   =   0 ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   p a s s e s ; 
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
 b o o l   P e n d i n g O r d e r S e l e c t B y I n d e x ( 
 	 i n t   i n d e x , 
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " , 
 	 s t r i n g   g r o u p                   =   " 0 " , 
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " , 
 	 s t r i n g   m a r k e t                 =   " " , 
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " , 
 	 s t r i n g   L i m i t s O r S t o p s   =   " b o t h " 
 ) 
 { 
 	 i f   ( O r d e r S e l e c t ( i n d e x ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) ) 
 	 { 
 	 	 i f   ( F i l t e r O r d e r B y ( 
 	 	 	 g r o u p _ m o d e , 
 	 	 	 g r o u p , 
 	 	 	 m a r k e t _ m o d e , 
 	 	 	 m a r k e t , 
 	 	 	 B u y s O r S e l l s , 
 	 	 	 L i m i t s O r S t o p s , 
 	 	 	 1 ) 
 	 	 )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
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
 i n t   S e l l L a t e r ( 
 	 s t r i n g   s y m b o l , 
 	 d o u b l e   l o t s , 
 	 d o u b l e   p r i c e , 
 	 d o u b l e   s l l   =   0 ,   / /   S L   l e v e l 
 	 d o u b l e   t p l   =   0 ,   / /   T P   l e v e l 
 	 d o u b l e   s l p   =   0 ,   / /   S L   a d j u s t   i n   p o i n t s 
 	 d o u b l e   t p p   =   0 ,   / /   T P   a d j u s t   i n   p o i n t s 
 	 d o u b l e   s l i p p a g e   =   0 , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 , 
 	 i n t   m a g i c   =   0 , 
 	 s t r i n g   c o m m e n t   =   " " , 
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E , 
 	 b o o l   o c o   =   f a l s e 
 	 ) 
 { 
 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ B I D ) ; 
 	 i n t   t y p e   =   0 ; 
 
 	 	     i f   ( p r i c e   = =   b i d )   { t y p e   =   O P _ S E L L ; } 
 	 e l s e   i f   ( p r i c e   <   b i d )     { t y p e   =   O P _ S E L L S T O P ; } 
 	 e l s e   i f   ( p r i c e   >   b i d )     { t y p e   =   O P _ S E L L L I M I T ; } 
 	 
 	 r e t u r n   O r d e r C r e a t e ( 
 	 	 s y m b o l , 
 	 	 t y p e , 
 	 	 l o t s , 
 	 	 p r i c e , 
 	 	 s l l , 
 	 	 t p l , 
 	 	 s l p , 
 	 	 t p p , 
 	 	 s l i p p a g e , 
 	 	 m a g i c , 
 	 	 c o m m e n t , 
 	 	 a r r o w c o l o r , 
 	 	 e x p i r a t i o n , 
 	 	 o c o 
 	 ) ; 
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
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 > 
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 ) 
 { 
 	           i f   ( s i g n   = =   " + " )   r e t u r n ( v 1   +   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n ( v 1   -   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n ( v 1   *   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n ( v 1   /   v 2 ) ; 
 
 	 r e t u r n   f a l s e ; 
 } 
 
 s t r i n g   f o r m u l a ( s t r i n g   s i g n ,   s t r i n g   v 1 ,   s t r i n g   v 2 ) 
 { 
 	 i f   ( s i g n   = =   " + " )   r e t u r n ( v 1   +   v 2 ) ; 
 	 e l s e   { 
 	 	 d o u b l e   _ v 1   =   S t r i n g T o D o u b l e ( v 1 ) ; 
 	 	 d o u b l e   _ v 2   =   S t r i n g T o D o u b l e ( v 2 ) ; 
 	 	 
 	 	           i f   ( s i g n   = =   " - " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   -   _ v 2 ) ; 
 	 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   *   _ v 2 ) ; 
 	 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   /   _ v 2 ) ; 
 	 } 
 
 	 r e t u r n   v 1   +   v 2 ; 
 } 
 
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   s t r i n g   v 1 ,   d o u b l e   v 2 ) 
 { 
 	           i f   ( s i g n   = =   " + " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   +   v 2 ; 
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   -   v 2 ; 
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   *   v 2 ; 
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   /   v 2 ; 
 
 	 r e t u r n   S t r i n g T o D o u b l e ( v 1 )   +   v 2 ; 
 } 
 
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   d o u b l e   v 1 ,   s t r i n g   v 2 ) 
 { 
 	 i f   ( s i g n   = =   " + " )   r e t u r n   ( v 1   +   S t r i n g T o D o u b l e ( v 2 ) ) ; 
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n   v 1   -   S t r i n g T o D o u b l e ( v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   v 1   *   S t r i n g T o D o u b l e ( v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   v 1   /   S t r i n g T o D o u b l e ( v 2 ) ; 
 
 	 r e t u r n   v 1   +   S t r i n g T o D o u b l e ( v 2 ) ; 
 }  
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
 / * < f x d r e e m a : e N r t f W 1 z m 8 j S 6 F + h c m p v 7 Z 7 a 7 P I O 8 j m 7 d b G E b V V k S U e S k / X 9 Q m E J x 2 x k o Q e h J H 5 O 5 b / f e Y U B B g k I s u U I f 0 h s Z h h 6 Z r p 7 u n v 6 x T 3 r n P 1 3 c y Z J Z 2 / m w W r l z S M / W G 3 e / M s 9 M 9 W z / / p n I v h N g T 2 0 s z f 3 v r d c v P n X 5 s w 4 e 9 O z L 6 y b w Q z + p Z + 9 2 Q T b c O 7 B P 8 A 4 M n k Y u e F H L y I P p T f / + u a f S d V H k 3 i j K W g 0 u e J o M h g t P x x 8 K q P x l B r j y d z x M H x q j f E U 7 n g q G k + r M Z 7 K H U 9 D 4 + k 1 x t O 4 4 + l o P K P G e A Z 3 P B O N Z 9 Y Y z + S O 1 0 H j d W q M 1 + G N p 4 s Y m 8 X q A 8 J X 8 w P K Z E C p B o Q 6 d 8 Y G H p B L I q B z f / j e n v A B 5 G K g j j F G q k E i O p d E d E w i k t r Y g B g H J a 3 6 j P n j k R W s Q S Q G F w k N j I S S U R n A 3 e P V o B K T i 4 Q m 4 d E 1 y E T n s l U T Y 7 V c g 0 x M 7 p 6 Y h O / X I B O T y w h N j D R y d T I x u Y z Q x E g j 1 y A T k 8 s J T c z 5 5 R p k Y n B Z l 4 k J W d a a 2 m Q d n 5 1 y D T r R u X v S I V h T 4 z T p 8 P E a n y a y W X 2 T u Y T X I V h Y g 0 4 6 X O Z q Y k p W x M o A 8 i f c I e J M D T L p c O m u g z m D U k P g K j h O M F o r S n V e y M X q D t 5 i R a 2 + g t w t 1 s m E a 1 A J Z 0 A F n M c i x m q l K p n Q d z l Y Q 3 a 5 D p 3 o f B j J r M 0 6 M H K Z Q w f z Q 6 V T Z 0 Q + K m L M U c U 6 I / L 5 D e a I q l R n R I W / k P h Y U e U 6 Q 3 L l u Q 4 Z s c b B 0 t H 4 M O K t U d U 6 M B r 8 I c l K a j W G l E T u k B J G S b U O 2 X B 0 P f Q Y 0 4 1 q 1 B l S 5 g 9 J 9 L 0 6 h M P R 0 N B j s p Z 1 K E f i 7 z j R 0 r Q 6 p C P x O Q Z R M 7 Q 6 t C P z t 4 e o Q l o d 2 p H 5 E 5 e J + q z U G Z K P 6 j J Z y z r U I 3 f 4 Q + I z T K u o w K B t 4 J 8 5 R O 3 V 9 O o j y n x E l z G i a 3 V o Z 8 + Q t W h n 9 7 w 7 N e b N Z + g y M Z j U I Z 2 i I T H p 6 F K N 7 S 5 A I M w r 9 T q U U z Q k X k m 9 D u V I B Y c E G b I O 5 U g F x y 2 m H L 2 G t G b y M U j B T E i v Q T l K w U F G R j S a G x F z N b 0 O 4 S h 8 3 q v g o 1 G v c + g o f P J W M H k b d S h H 4 W + 3 g i d u 1 D l 0 F P 5 p q 2 D 6 N u q Q j s I / d B R i E 6 1 D O g q f d B S M 5 0 Y d 0 l H 4 B 7 i C u Z B R R 2 R T + D x D x Z h u 1 B H Z V D 6 q q 5 i z G X W O H Z W P 6 i p G d a M O 9 a h 8 V F c J q t e h H p W P 6 i p G d b M O 9 a h 8 v F Q x X p p 1 q E f l U 4 + K q c e U G + N t C t 5 w U 2 l u R H j s f E M N d 8 t g / g l f c X X g F R d c C V m C X z H R J V g U B k v U L J n w Y e f s T f f B D a P r Y I H v p M B w 3 S t r M n O 6 1 r A 3 s K f o o U F 6 j V Y X Q e h 9 D I P t a k H O m L c I A y W R 9 J g + + P d R u k k j T d Y 2 C q Z z 8 P l l w a t z d + m l m 5 R 4 1 O D L 6 G r Q T b f q T O u 5 v x j 4 K 6 + 4 g 7 X 5 l O 9 g M B 0 G 7 i b K 9 Z A 1 p s f Y C / 1 g M f X W b u h G Q b g p h v U y 9 B f k M k / M Q f I + W G 4 f v f T b Y I e S D j 1 v M w / 9 N b m r Z H u J T K 9 Z 6 C 6 8 g f f Z W 2 Y A M d m h 3 M j j r G u H n V X o z 3 l 9 N H Z b L v y v W O H k z J e 0 M 6 3 f E F 5 B Z H P B g o a w R Q V o v f I R Z g D 4 F v 7 G v V t 6 Y I 3 u z k R M m d 7 X y A v x 3 a x 4 9 t 9 v a K x 4 E d E X w Z D + x p l v N 1 H w S F 8 0 K c J j W o D 0 8 r S J v E f y n U e A 1 U u H D B O v i x e N w 2 D t h Z G P d w G i A d z T R w + A A L 4 Q B O E C N Y D l J q O u / d U q A R c s z Y Y u G G h c B e G j u 6 S 4 v G H w w w V d E Q 3 S W c B r 3 e R 3 h f l d Z X 7 X k l t l P K f I j b Z o O J m w i 2 A V 3 N / D r i J e 2 4 U b u T H E 3 1 C X y I 8 w h J J K S F q 4 n P R 7 w u j i g s A N h k D r R o Y F 3 Z Y e J F 5 o 2 x E x Z 4 m C N Q I a 8 O h v q M c X F 2 4 i X g a w I Z / d 0 I c 7 y e w b W M x g G 6 2 3 0 Y Y d 2 Q f P 6 H v g T y / + 8 x v 6 z n y D e i N u C I n l z p 1 / w m z m 7 T x Y B i F h 3 / + 4 v z f u N U R S G k Q w 0 g L W 6 h / o f / D L P c C 6 t 1 8 8 / + N D x C 4 I X A T K / R y A a 6 G b Q C w B V L s D e + 6 F b z f R E 1 4 0 / B 6 + h e e y T / x q s 2 g u N 4 D m A I K x u z k 4 X m P g v x s 3  
 G W h 3 I 6 S q p R F S 1 o 4 D I e f o J 4 u Q s E V B P w d C S 6 X w V E c Q x w d F F 0 J 0 H s N O 8 G W + D M + X 4 G H q T E F d 0 8 e 7 g b o O R 0 M 7 5 i N x T 3 r E Z f p o 6 Q + H N 2 v 0 W E a 9 B v 6 j d x l 6 3 i p 1 + N K u v e D L i i I b 6 N w N / c d N s M r D e L 5 d L r v u a k G 4 G 2 f o T H / P D Z n + e 0 b v B X / 7 u d F H o b v 6 6 E 2 8 R R 5 w 5 j S H R y L o 3 H P D T / i F 1 D m J Y S G 0 z l u P V E c g r h C i A P 3 o h 1 M b A O W V c g s w B U S T C A r M k I 0 z M K W J c 1 p N z m k E / m v h Z V C q A m K 0 f / 8 k z C H 8 w j y G f s 9 h m + Z t i n a q h 6 1 U q K y o i K u d v R k E 8 T w T v N P g i M H S c 1 c O + Z / y O W Y E 9 A 6 Y 1 X n S A 7 4 Y h V t v f n b W 3 U b O I C D H J i S e 0 W R i d 2 f 9 0 T C B D y / 3 P H g E u E N l 5 T / + I L 9 M e I B J c M + W W 8 9 B / x Y B B a B 4 T 9 u p r L s D B s T A Q g D r F 3 8 R P b x h R c V d 6 8 4 h 9 J m P j 4 C q h B 5 7 G n 4 n p U M t J F g t f K j o v B Y a B y C O h m + B D C 3 8 D H B G g D j z y 1 4 K l 8 x O W p 6 W l K b E F + n 7 S P z i o t e 1 O n V I n E P G J i Q n H x x 8 8 E / q n 8 c l Z 4 2 Y H i 4 B S G t q e g B g u 9 g 2 o J E W Z u / h j k 6 f H u + C Z b 6 7 T p v Y / g D 0 8 + 3 T Z h R O v S U + + F Q I M a S Y 5 q l B b u j c 6 9 + P 1 h 5 A 8 B F c 2 I O f e 0 o 5 3 b Q J u p F l O D k h g j a L f 9 + F f / 4 M 9 u Z 3 u D M l i K c j Z Y i n M W X 0 O 4 n H 6 n Q 7 W J l + r v O x U O x X d p y P c O 3 d + R z A H z k W / v / c X b q r O e 9 E Q o O X P g H B F P / Z 7 A E I D W G K y J z I z t o L 5 9 4 q 4 p + K 4 N V / / v x W + g U C V 7 i w 6 C N g H 9 3 F 3 1 s s M 4 N u v y e O R 6 G 3 2 S 4 j K s J 9 5 n 2 7 e Z b R h K g M P g I U t s f t 0 n 0 l x 6 f c i S F G X I A e o c I Y L 3 S Z o 9 T M W A J U 7 V i k Z d M U x Y a O 0 p j i 1 d 2 K / o u d o Z j W b H f + M A 6 D e z + + P 2 B e h Y 3 d F K / 4 k 9 r C k / e s R 8 i P m D e h 6 p p t H v t r a u P G n l R w J u n v a p A y V t 4 T 2 Y 3 0 d / 9 N 9 e T s N 2 W w A G 8 V U f x c w G / 0 9 C s Z O J p n C m o T c o Q M 9 W d v / u k G g / 5 S U o T Y v B S h 6 G R q w h p N T f i Z 8 o 2 q M o V p Z H R u 6 W R l C q 2 I w 5 g v z W A A 1 E g Q v v Z X 2 8 h j 8 R V A O l 3 6 6 7 X 7 k Z K 4 S r 9 v h W H w p R s v n I R N c p 6 3 H v u r T 4 e g W a 0 J m o X X f 8 t g 4 2 H x / w Q u p W S d z B j r B J v K S o G Y V g q U Y 7 m h U n V T v l N 5 F w L 3 6 K e A j J k d + x 5 i 1 o u I 2 X h p Y g Y v D / x H P 4 L t Y M 9 y 7 S 9 B u n o T p A v e 7 3 l L Q K V j b 7 X w V x + f R 3 d X q 5 N w I y e w T G c r r P F 0 B Y S K m H 6 v 7 N 6 l X e r 0 T R O v e i w y / M s S r 1 E o 6 x P i H Y f + K p q B I R E e Q t k 1 / S N Y g 8 v R p D + 7 u u 5 3 n e l 1 1 x m d C 2 + F a + s v o d c T 3 v U H A 2 H 6 o T / r g m 0 S Z p P + 5 a U 9 A b 9 l x j g E n R k N i b V o / t f e Z k P P / V d g M J a g U e a j 8 J h A v c 9 U n J Z M N e V o b o P u 7 z X 9 O S V T s x I 9 d K S S 9 D C d j c b j / v B S m I 1 6 1 i 3 4 V 5 j Y U 3 t G 6 a R n 9 Q e 3 W a o Q h E P Q h d n S R Q W 6 S J 8 Z m q m d K l 1 0 C u l C J I T x n q x B 7 K n 3 + e z s 0 f 3 q L B b O g 0 9 R C t l c p Q b v U 1 V 8 n b r n / p I B T 0 7 j J A J I f q 5 7 V A Y O h Q O H 8 g J w q B w 4 1 B e A Q + P A o T 0 P H M 0 z 2 U 4 T T F a j r h 3 v E + 7 y M j o 6 a 1 Y T G Q F f Z H R 0 s S H H U T A 9 5 m D 8 A w i N N 3 Z 1 2 5 q u H Q m n 1 s C P r v O k + z v 0 c y g X U v F I + T U M O 3 C X m 5 Z h t w z 7 i B i 2 L L Y M u y 7 D N j M M + 8 I a T O 3 q 9 h j D O G 2 O r R d y b B m D D A 9 G L / z s h a N w E A D 8 m P m P F E U 2 6 D n l 4 7 B h G j H x V V B G p g o r 0 0 y m K I p n + A o 5 9 e 6 t 5 4 a s o V V N j b v C B l T a K D O N P f e J b W L H v A q 2 Y Y q + N X Z Q d O G S C m B i m 6 c e W J J 0 f J O E m + 3 V g j N R I 2 5 k p i l l 3 s t O U m Z G z E x R j J s y E 0 x G y 0 1 P S Y Z j J 5 d t 5 E x N i x s n 3 h J C u c l G d i X N C N R 0 u 8 q 2 A 3 g 3 x Y N D o N P N R m r w 5 B o s h j z V A Q P P j N A 4 b 9 Y b 4 c 1 k / y 7 8  
 Z U Q o 5 Y B s W S 4 2 l D c l I 3 + w + j P h Y j Q R h v Z f M 6 F n 3 d b g u M d y / 3 w n e r K p P K M 1 Q 5 c q R 1 h 9 D w J L b Y h V A U 4 a G b V N M k 8 7 x E q X d z p G l J Q B J G g T c x c e O B k W + L C C p w 2 J O m A e y q T f b O t t 6 D M 1 7 p h 7 C n p + 8 B a r 5 K k e 9 0 0 / V + i 4 D + B s o Q + T u I f U Y w r r R e j n Y c 0 + B P 2 m A C 1 D B g C k T I K u q e d 0 0 O l 2 x c w g 7 k q e N k / o j b h k g 5 l + 8 L x P A M T n O a y a M q 6 r M d z C f Q z 4 T u r v K J m I 3 9 M 9 k I p j K + X y h A 9 W K i 1 n m 0 S 6 h 0 g P G x z a A o Z j B V Y w i q j j f u C x w z 7 H 8 h 2 S E s 8 h B u d s O B r t k / q 0 R k a k G I 2 7 M N / U Y A Q D 7 Q A l 0 g c / 3 P U Z l X T J f i U Z R C Y 9 M h 8 x a b s O 3 Y C 3 Y f S w e z K 4 T + 4 z J j M Z 3 C X 9 H a J F N c 9 T l I Z c v d C s n 4 e j P G O M B 9 x 1 N L P S P C c T 2 C F r p 8 Z z s h F T u l r L V G x b z m S 7 W v m r j + 3 V X m s p P h l L s a 6 2 l u K 6 v B p G W V j C 5 G Y 4 7 A 8 v 9 3 P q r L e t c u I G Y u 1 I + X R 7 p d c y 6 i N k 1 F r L q L 9 D l Q e M e j i a l W f W 2 d g m 8 c S Z t V 6 X W R M b S i t U t 7 z 6 d H i 1 3 v L q u r x a Q 7 z 6 g 2 2 / K 8 2 s J T l r B N F P n F s b R 8 q t W 9 G 6 Z d d H y K 6 N l l 3 X D U G W Y n Y 9 u K 0 k Y U s w B V H q r t w Q T 5 p p G 7 t D t X D w 7 y Y a 3 e O o 4 T j N H r w M u 7 0 + H w 2 m B 7 i u M R o J r 0 K 3 f V F 3 G 4 b e K s L g y 6 / k G l h B d 4 a R 8 I Z A L 1 y 7 4 S c w Z e E + C I U V W D u B J o u v m A 5 a P Z J 7 m v t 7 7 2 5 x l 8 V 2 x h u w a T T v N J G N B 2 a 4 w U G G 4 8 n o o j 8 T u l d 2 9 5 0 9 a T 7 o n n g X S g S v 0 b 0 o u T u F U e v u E 8 r W L z H j k T d Y y Y X p K X O 8 S a W J t 3 Q j / 7 P H k 5 E m X r Q N V 3 F t A e L W m M 7 P A 9 b 7 z z / o X G h S H 5 L J R 1 a h P z i 6 D E c r 5 u A V c y 5 H 1 u A Q H K P T U E I A l K Q G z 6 W / w m U D f q C L X g X V i A A 4 K / Q v k K 8 5 w e M P 1 l S 4 A v + j u N r 9 T E V J m 6 k 6 2 j F n 4 C l m K s 0 E / 5 u F L u e q T r Z o F g s u G i K g R 8 T S c f w s 1 o C G 1 r U d Z y m 9 + x t n U d 7 e f f B X i + B L m q R h c x C u E g c E I K 4 O 7 Y k z s C 9 m z s 1 4 j N m R i j r + R Y h X S x 7 d 0 m A N N c 7 U c / c 3 A v A i W F G n 7 0 s v C D / 6 L g N R 3 C P J 8 o G z V 1 8 G y 4 W 3 C g m Z 6 O n O U / 9 / 0 x X f I e 8 B H Q b u n b f c M B 9 8 7 4 U L d + V S f 5 t U l 1 x e E X A W X o b E I 8 3 I d G a / S F k W 6 F D w K T l u j D + C k 6 x / e P C j O N q Z d M k N D S a L P k y 5 9 L k 1 s I Z d W 9 i j x z a a 1 R F 7 0 g A k j o b b x z s v j J 3 z 7 e v x 7 N Z 5 b w 1 w 4 B 9 8 h P v F 5 w q n F 5 2 R T N 2 b / n P T n 9 0 K e 9 R g K I 5 n J m T / z 9 a P n h q Y j 1 x q P v K e + V D 3 n 9 7 E + t A b f R g K e x R q z o y S l G z f O S O l 1 I y U P T O K q f d 8 M g I S i D D r X 6 c R j 6 e e i 1 Q t j o j j W 1 Y r l g k X g + c + d Y 6 L Q x q I 8 / 8 0 L m t E W 5 J w m M d 1 L h y G R I P g x P z 9 X l b X h m 1 E u G V 4 d Y d 9 C f 5 2 D 4 9 e X o A F F E e A z L H K h d q Y m f Z c L I q e 6 Z C J S M m O T 7 3 U 4 q T B M Z D x F / K x N 9 k u + S A V 0 o O 1 Q 8 Q e c n Q X 4 s p M 2 d A U 1 B A H t l D I N a Y x C W v J h i D B V m h 3 2 / D i j G A j j X j h v R j H u 2 Q W E 3 8 z l / Q t 1 c z E u m S b P / l r Y g r c p G V S H h 2 p p e h I 3 U N H J S 1 K H R w T 5 d D A K J 4 5 C S 4 Q a W b i n U p y B a 3 U b L Q 9 s 9 F j T W Q G q w Z d j W 4 m 7 M T 0 7 5 4 Y K p S R 9 Y O t M E 2 9 1 D T 1 P d M 0 C K T 2 s J e b o / H 9 c 5 T Q H F M + v O V n a J S a o b F n h m a h q w + a p N l k L Q U D X 2 b m v F w q T N o s N W l + r 8 Z 1 Q V N s q s I B E t T t r 4 d W A G E 9 v 0 o p 4 c R 0 V k f / T G e e G 8 x z k 3 n e Y Z 6 j m y v a I L F f l l h r r s R + W 2 I / L r F f l 9 j P S + z 3 J b N R u 6 8 R b 8 r + m C h d P N Z k 0 8 + c d M i U y u u n j P D z D F o o q t H Z a d X Q J t V Q C Z k o b 6 f 4 L v t Q N 6 r p M 4 O 5 v n 0 Z T R X V b 8 r l S t y n t t Y T C 0 r W G z q g H o t U A z x b 1 G G f M l t 1  
 n k W V F F 5 M y 5 X i + U I b 5 T 4 l t w G c T i f w q T D r B n U S 2 G 7 d z E b C b P x 2 O h C a 1 U / K + a 8 d U k c x M j c p 2 Z 3 V G 9 x Z W U n v r I N z 0 N f Y 3 w b V F z g b v A K D 0 X S a m 7 / R 5 P y 1 9 P x d f / n k L C F t V 1 + B B t W b j N Z t v o D W f V x 6 i / S j 6 y 1 S C b 1 F L K O 3 S K e j t 3 R O V m + R K y U R 1 j U 2 i T A / f z D D b + G N 5 8 S 2 U E b t g 6 b Q N u U 2 V X D Z V M F 6 5 m J Z N k 4 W + Z V K y C + J 0 n 7 s h 8 m O Y P J s N t + R Y M 0 E l N M L 2 V G n A n u b h N N r I 0 P y Y S l E a S m k L o U o J 5 t j 3 l Q r U Y g h l z 0 e i E I C H Z W e 8 Z R Q W x o o S w O K r r W m X U w D W p v t s s 1 2 2 W a 7 z L N T r c 1 2 2 U S 2 S 1 X M Z B b U T j W 3 m K m f k E C u t 8 J I b W G k c 7 I C + d 4 i a F 3 o R + m F r B N g 8 7 j b R F S d i R O v j o h L 7 m t A W z N e 3 j M B w i 4 E B P j d / F 3 L R M M d i y u / e X H e N Z + z m K 5 Z G A e n H 3 X 9 z e Y J y G w o L H U Y P G t Z z e d M l 6 j D 2 a X L a O 4 l t W x t H V X X T r R u t d m p Z t g 3 9 k t S 1 m B i W z 0 g P A l j e 9 i D M t V o 0 g N i 0 4 H l p E 4 r J 5 W u A i i a W l s F E O F / R 9 y Z n j w X Y / n v P y i e k O f o o K e n / v z s 7 G r 0 w b m 2 h r f O b G L 1 7 C l B y h M 5 r z q N F L b Q S e Q n P q u S B f 4 x D i y Z T i 9 T + l m Y 0 4 n u P r q 0 z K W D e W p H V z b b b 0 e q d v k g 7 j / C U D Q u e 3 g l N w + H P c U 6 U n u K V T j F M v k U T v a G u i M f g 7 r f k V t 1 v 7 y 6 L 4 k Z a 5 U q n 6 q + 3 1 G O A n 2 V F n 2 r o G + m 9 p Z 2 L N c R z 4 + + h d 4 P i v j C 9 i p 4 X R y 6 / v L D g x u x d 4 A w 7 Q F q A P L n x L v 3 Q g / s O Z A Z 0 r H k 6 J 6 S 9 I L a A 4 U I j E o C E W Z j 6 h o M 2 8 c + V j D g e 7 A q E n n V m S I U w X O L 8 E A 0 M w 2 N m 0 H V k F D T d h n 5 6 0 Q i k M X f t V 8 F R f x d i q 9 G 8 b d Y A A o / a K Z 7 J 3 k D E v q 7 j 3 B v n o e 3 D w T 0 O S I 4 x 5 9 a E 4 7 b s 0 5 w d x p 5 a 7 L 2 4 m 8 i T d l w 7 X 7 1 H 7 e P Z B f F 3 + S i X Q T P m P w 2 s N a Y P e m P e k 7 3 Z j K x h z O C K 3 H s + X 7 n a h N O r O d / 9 B k S S 6 Y m 0 9 w D 6 w C I i R v O v N R s T j 7 w i k q 1 O 4 g H u W R 9 X O T c 4 f 2 d w i 2 P h 1 v T B L e 8 H b i F F 5 4 g h h c j x n R n b 4 P 9 e t r V Y g W Q k 8 F W 0 E i / n W C r F j e x X 2 O C / l O t 0 8 G e t 8 f Z 8 L T 7 i H h 4 N J B N s c R e a P E X L 0 J 3 H v n B q p E v a 4 g Y x H 0 5 J Z G 7 A 9 m M 2 f g x v x M w G G g 2 X i e 7 I M f p L O B z d g s U l O m K v H + P V v Z 5 l h D 8 N v A + e 8 s 4 a L C D g g Z v A V O G 4 Z r N S y u N O K k p a Q Z / 8 J R 8 e k N B C g 1 e H k w H w m x i 9 Q d Q 1 5 / O R u P 9 k o + W K e M h H U u u Y V U 3 5 T u V l 7 b y H v 0 c N P V W p 7 i Y h 8 S T g g C I H 6 n s c 3 g 7 K I z q X d G 0 e H w p h u 3 D c n w t D i q m j R m u r o k F P c i 4 K j q D z k P P / W R / 9 l b J 1 8 5 t j G W 8 w 0 e B z W P c H p 9 9 h 3 H Q 6 j T i o A V g i K c 4 h m L F o X m J y v A S s Y C X i G l e 0 l D 8 0 L k t z M b C T y U 4 R d Z D X G s 5 B e A U h e 5 b G o I b J r A E o s j 7 h P S N m F T j D J e 4 w y C I N o n Y r c X S M 2 4 d M + 8 Y i A h h g + 8 u x 6 F H G w A E 0 6 W / X l M 7 K R B z K b p Z Y R h 8 y e Y 2 G I X u 6 q M 3 g R j b P C H q D Z 3 p g y B Y d 5 f B x h s T N + G D R h 6 m z / S m H C T n E H 7 h 5 z X e s e X T L y X I L Z N g 1 z g U u U m V D c L m H B P V c 5 k k j E p 3 I p q + / 0 5 k b E 1 m f Q s I S 9 Y 7 e 3 j g W x C j v Q U p f Q u i y e k z x j R P 1 e m x U + g 2 p h I F c B C 8 c I 4 K y N d S / g R / / E F + m Q T P X h I J p Y 4 P g 8 3 m i 7 8 g Y j L l 4 L u 2 o G F a N 5 s K t F 8 t f G y 5 e B V 0 L p u Z 7 M + 9 n t C f A l W 0 f 3 l p T + z e X s L X s s U T 1 C O 5 P r q 4 6 H W t T h 2 6 L 3 H Z L 4 n i i 9 8 V w V R Z o t h e F p W / L N K l j G O + d K p 3 R Z I o H Q f + S i 3 + V r j s 1 D L l x U x J O 1 k E l p 9 V y q L 5 o u A t D j H T O v b Q O h / g I 7 I 5 W e s g 5 b J e X s R C x C 6 f p o y F 7 h i p b Z 9 B m t 2 0 r n Y y c Z b H c l g d W L B S  
 X o q u i W V h 2 t J 1 V b p W T p e u K d K U p + v s G a 5 L p 6 E w q S 9 i F Y E 3 X n Z L 0 V U p W j 1 R i h b R r V p 5 W p b F A 0 V 6 H z c t a 9 V C H c z 9 Z v 3 z i W 2 9 E + z 3 9 j C x P c G 8 B 9 O x 3 e 1 f 9 M E f P x 3 Q 2 I 9 w X m u t / R W s / Z m Y h 5 N N c S C J e r U y k p U d T h C + U T e T G j 4 n 4 H f b n T + k v U 6 Y V 2 E j E 1 0 I n v x J p Z v k P e u R h o W R N 2 H d y 2 x z 3 k F R T I p A x r N / p F 6 3 R Z U j Z f p S 8 l E Z O 1 D G I j r h E Y 5 1 P b r B f q l I G C u G 5 Q D 8 o q m M K C g K 7 y b x C X 6 u A E P x w A G G W h x g i K Y m / L x d h Z 6 7 9 P / X W / x S X f 3 V j V O N j Z d E 4 z h s t W 0 a l U q 2 W j E b V 3 W 6 l w 3 F N + I a 2 Z H s M c g 7 5 z Q k W 8 1 j L 8 z N J 9 J z Q R 7 n S j Z C 9 I F N G 2 c Q f P E 2 0 U U Y P M 4 C X E J w U x R G A V 2 x o A / 6 u R t m A g v s 1 S J 5 S M V F G N M y C y 6 9 a F 8 U Q o n g i l 2 K o U R m P y I o l 6 7 C + D 5 Y b h + 9 u D a z B L c f 1 Q + d + H i Z k k 6 0 W A y T k j F p o N 0 T f 9 L 4 v X g k X P R k c u 2 A C X R n 1 N k L d x q n / e O y / U z a 7 x z y C 7 b z 2 Z u 4 8 M e C h b M B t R v F v O x V v M E o F / 5 X b z F x g c J 6 s / L j o j r Y q S / O N J l 0 6 n l L z D a S U A A o 3 j x e f + y D 1 3 0 3 d g t k A D B x B x J e 9 D R a x X V j w B h U r k r 3 Y C Q D J n U i 7 G M t F v A T q U H i I p O p D q k x U q B O P I B N n B G M V D M H B p 1 u 5 c 1 6 7 Y U o u w O Z q / Z b H B c B v f n h 0 I z 4 d w / X L 9 v O S G s Y 7 e A y x I 0 0 a o r Q P l O R K t M F + z Q n F + N w v x d L 2 o n D I I y Y Q V w B b t c w h 1 C e m U P A y a 5 3 T B Y s v v c Z r l L o L j z H c 9 w o C p P u h a U 0 G L d w G v u y D 4 p F M R Q 1 6 J c l w D 3 h O + 4 n r 8 i 7 H v v J p 3 t R t K M 6 j Z x q z K A d A k P T 4 i K u 2 Y 7 k A y I O 9 R q j I k k U z x f L p P u z m R L h d x c N f 7 f k X s B P r x v + d J q s i 2 2 4 9 t c 1 o z p T S Z U 2 Z U r Y m u g h m 7 0 2 n h s c J 1 e 2 F g q L o K E t p P w a C y k z y a R 5 d Z T l 4 6 q j D C D S D 1 d I O f b N / I Y 1 x S 7 Q z S N v 1 B 2 x C 1 g Q l Q B j b 5 + Y 6 j U I 9 1 H Z v 6 F 1 b d M Z J X E L 0 C x F y X E Z H i B o A b G G R p I U S j A 7 + n J J 0 h Q e W k U 1 y p l j y s Q h s k V e m 1 J 7 4 U p U T G m Y N Q x 3 d P F Y Y h 9 E E X P N S q F G y J C 6 X N T S f 8 E s Q 2 8 e s R c n n U M o w n c Y d 3 c p w g e V c 1 t N u N W E W 0 3 4 J T R h E k 5 I E A u Q j m M R 9 G p 1 4 1 Y 3 b n X j V j d u d e N W N 2 5 1 4 + P S j R V W N z 7 f U l 8 I o B q f o 8 0 4 g G 7 c S F Z y E b m Z v I B q L B 2 Z a m y g h a i o G S u Z 4 L O j 0 Y x F 0 X x 5 z V g q j K e k T l R 9 m g S P I 7 2 J 6 R x 5 K H u Y u + Q J b l p G c K O s r Y F s e D F P 2 n H 2 g 1 U F m g h y i X W X j C T N p j q 0 v 8 6 9 N e y R a 2 + e M U i N Z E o 3 m d 3 p b 9 7 7 G / 9 u + V r c O x S N A V 7 w N 8 J n D P 6 / 7 8 I / L 4 A 2 B X 3 7 z 2 / 2 l 0 V T M v k P D P F 4 3 P p V X X 5 O d w 9 J q u v q P 8 c Y 7 8 w L d U y D b L E / u h p 0 y a b 4 K M c M J R 9 I 2 Z h y L g B P O K f 5 P W P 3 o 4 x A u F e Q b F 4 Z T c c Z A B j + v S v M Q E 3 z t m u L s y o m F Z + t d Q K W h n I Q A n 3 L v r a c G Y C r R 9 O B W h u G Z 1 F h 5 t o C V P o Q 0 G W 6 H v V s x 8 Z f g 7 t t r d d L 3 1 s k p g d o h Z v 0 u 7 b T H Y y m 9 r N l F D 2 O A A l J O t 0 A C Y A U k D m W Y o q Z K h G G f h K x T p K 8 O 7 M Y G A y b C m G m z l P m h C h d a f C l e C V a 5 p c z z f d 8 Q M K r u d f f W H e b Y E k 0 f z b V j h b 7 1 d O + r F 8 / 2 O F F 8 r y R n M w q t F W D t e 7 1 p z N r C F Y F L b g z 7 o + n j a V q P g A P l x t K c 4 e 8 3 F N L / Y O U C J K o B / + C T A 7 y f U I W u / m + k s l T I Z + s 8 7 6 k 7 F R s 6 / J U G f v R X 7 t f I b v e H N L v X 1 I a M h 5 B p 3 8 w M X o J 9 A q k H R k D L Y C D R b h z S 9 h 4 l E M l w X t t t b E l S X 0 x g 4 7 U n E F H e 3 U G H f X k D T r 6 f o P O 1 B 4 M K r s y n b J F R 2 s t O p U s O n + 2 F p 3 X Z t H R T t S i I 8 U W n X J c M V M e / l R M O n p r 0 m l N O q 1 J  
 5 8 h N O n p r 0 j m Q S U f L m X T E k z X p G K / e p G O 0 J p 2 S J p 0 c 3 p + w S a d W Y Q O Y h M G d o 6 r y j o X / v 3 b D j / 6 K C A h 8 5 1 Y I y I c H b z U M k E c 2 d Y l / K z V 6 t 1 7 L t 1 h 8 a X 1 G K k X i p 1 r Q A K x C / 0 I Y j m A 5 v Z 4 9 F W Z X 9 l A Y W 9 P p / p Q t e q a i X s c 8 i X R + U u d l 6 b o E T e V S c / 7 Z c G r O U g 7 0 R 0 L Z n d O l 7 I u J b Q v X 1 u S y P x S s 8 9 F 7 W 9 B E 8 a f q l C 2 J p 1 G m R B Y r Z e r s i P s z d e J q M W 8 R S w X / k c 3 o T 8 l + j C a C / Z 8 b W K B r J A C K + o 6 s n a W I Q R b b r J 2 l s 3 Y a G d u d J B 1 L I c j n T 9 s p H 7 w A S j n 8 b Q u g V E m q Z y i 5 o g g n W w F F l l t 1 7 N W o Y 7 L c q m N V 1 T H F O E l 1 T F Z a d e w V q W O y 0 q p j V d U x x c g c 4 6 J y G u q Y + q O r Y 2 q r j p V W x 9 S c O q a f b B U F W T s O d U x r 1 b E K 6 p j a q m M J B u u V e L v Z K c / b L 6 z + I M X b B z Z g 9 s / N 2 v W W t Z d m 7 Y q Y s 7 S d L m s 3 j o O 1 t + U r q r B 2 O V v X / Z R Z u / m D s 3 a z Z e 2 l W b s u t Z c o M W F 0 j o O 1 d 1 r W X q U y k d l K 7 R S D l c I L c o M U l S 0 q U U e e d 2 m J O p h z T 5 q f n V 2 N P j j X 1 v D W w Q Z v g p n f V w I Q V j t a 1 q r / 1 7 z v q N L I j b t O / J C x 2 T l Z x B + k 9 l 3 s Z r 0 O N s i o u x H m d I 6 V w m u 0 k 3 O z z h l N F W l n 6 M 3 L E N c W Z o o 8 A H E 1 4 Q 4 A V 7 x / P 1 p 7 g E 5 G c H E 3 P 1 A E A w y F 6 d 8 L E e Q b Z d M Q m W I 2 N 9 v J x i 4 o h U 4 D Y F d f l p p w 5 M 0 g C N Y 9 H 2 a H p F d h E P c 8 W L 3 v b R S 8 D Z b g u I g I 0 s O + M H c r 8 4 E O f m p / 9 s K n / O M 4 N z u N V z K w 0 G e z u X E P Q N W N Z J r R y I R h d n X m t v a A Z K 1 9 R 3 k S s a G T F I x w E Y S C 5 8 4 f h B k l + s F o N C 6 V l d H I W D E M 4 0 g o v 2 u L Y t f m J V 2 9 Q D 8 H S L q a 8 A C l j e Z v z G k J i n r + a g k I 0 0 F n L T x 2 4 6 B S n l J 8 9 J H w y q k 6 N M C N w Q g i o E j g s u K F k f F m M J W T 8 F N S d m f 4 K W I j 1 Z 2 B Z F w + J w 5 F v p z 0 k 0 j k K n T 8 z 8 a d D + V 9 A c 5 8 u p V J n K i 7 + H u 7 i d J k E H q b 7 T K 2 K H z O z v t 8 e h A J p Q m / D Q M d 1 Y / b p f t a K F 6 N I Y a 0 T h d a o L h V S b T o S E d z w 2 e a + X z u N a k + E R q K H T S U R h Q H h F n 0 H K + u O 5 D q E 1 J b f e Q H r D 4 i H l f 1 E V 5 1 k c a K j 8 D C Y O 5 y Q 6 q P k G n J L V q 3 a P 0 D o T V d k X N 3 4 8 X a E p T X t m F I C u e A t W R a c 9 i v x N X p 8 H 8 7 s t q w t T K t 6 T t y v k B x C W P w j k q b O 6 R L k g J n A i T i b A k 4 0 I Q e x 7 X 8 I I 2 I X F E O z w T 1 R k k u i b q k o 1 J i I i 7 P E f c Y k 8 u E g 9 q q t I Z s V c N g C J D 5 7 m m y X a 2 e o V 6 Q W m C C F o t t V U 1 5 w Q 8 D b I 4 W V m j C d d V G S T x u s z Q j h m U E S G Z r v s s u p f 8 I N Y D k 1 5 Y y V t H b G k D N 1 A A y j G y W g S O K W H v m l L H K q 0 + S p b R J s s o m y T J y H k X H k h X 0 + b N k K Y X O o p p a o c Z 7 z V L m T I H t y t X M w Q v y b 1 q Z g u Z M e O a P X s d c h t W / 8 X X r O M A 7 l C 0 c f g o 1 z l E H S Z H 1 4 s k q t M v E + w w 4 m 5 f W + u g Y F / 5 d U D i G j F a 7 B 5 j d 4 5 0 X R n s W N u 5 X 8 E E Z Q T R w 7 4 L t / M E L v e L h 9 H T H g Y + N 8 h A z p V / l X 5 V f 1 V + 1 X / V k r Z O u R X N F n 5 5 6 / w N V W M 4 H J d K c b A V 4 W w G f 0 l N v c 7 d C J o 1 F n 3 6 5 c v R s F f D v L 0 B / o M r f e y r B H z J Y / d X V f o f m M b G x 6 u 9 4 n Y 6 o A P y L V G F / w d L z 6 Q L w A N r L W b e t / t 4 a q o + w + n u 8 W c 9 v q U 5 V f 3 9 N V d 6 V J s K 4 d H T J O g y + H L N z Y U P G W 1 L H f Y U n u 8 e F O G P a k Z W 2 f D v j C 9 Q 5 M h 9 9 i I j 4 9 w P Q W a d 1 0 t 9 j Q N L T T v q l K s t I o t S 6 6 R M j k i o e m 5 t + Q l A / r p + + K r Z + + n X v Q Y 1 C P / 1 S x N / p t I 7 6 e S 4 g t Y 7 6 j Z X d + / E c 9 V X p R B 3 1 J Y 6 j f i 0 u c y K e + q r c e u r / K J 7 6 q t x 6 6 l f 0 1 M 9 S / Q / u q a 8 q R + i p z 6 o P r a t + 6 9 P c u u q 3 a N 2 i d e u q  
 3 7 r q f 4 c o q L S u + l V k S I X r q l 9 L c T x 5 X 3 1 V f T F f f e m E f f V V 9 e R 9 9 f X 9 v v o 1 S f p 0 n f V V 7 b U 7 6 6 t a 6 6 x f 0 l k f n V 0 H y m D 7 6 r z 1 V b 3 1 1 m + 9 9 V t v / d Z b v / X W b 7 3 1 W 2 / 9 1 l u / 9 d Z v b d W t t / 6 p e e u r r L c + v L U k k v 5 8 G U 6 8 x U E 0 V r 2 Z i 3 w I 7 G m 4 6 5 t 4 s q X 8 9 S V R O l a H / f t 7 8 Y U d 9 j G l g J W L / N V H P E W d Q g 0 v N j 5 7 T h G m w 9 H X Y f A 3 G M 1 Z E X Y L n T N o k a N + 1 7 m Y Y D O c 8 x m I G d l 3 o q c 1 x T b v K x A r I s p T 5 g C r H a A u f 9 y 6 8 S X N 9 X 8 G a q y U u h G A K v R c y D 1 h G Z 6 O r n Z E x T B l X W W 7 A O r w 7 5 + K u j y 6 H / 2 5 s 4 G u u W T R A V 5 I M p a G 4 N 0 P s S Y 6 S / 8 u d M M n J / a M S F E h 8 v c h P R G p F v W D + A e Y V u h s E o Y G V k M X 6 b T W g b + K n H B L 0 A 9 R m c j g 3 H 0 I + c L i D F 0 x 4 Z e j g D y Q k A W j o H O + u 4 h f k A t f K H p D y b 2 B U P d m q m E 0 z s G k c l 6 A h v K b y c 2 0 9 4 b 3 E W J r 3 2 6 A F O W H 0 d Z d g k 0 K Y r F 2 F S T 7 w 7 Q i E Q V R I e Y f c F v g E B 5 Y 8 Y / e a v 6 U D A I 2 4 o l Y I E G n T A c n 9 J b Z I z n b x V 2 k j m S 4 d 0 C j W 0 U b i H E U Y S N K J Z 2 4 d f 4 0 B 0 i y J q Z S w k J h 8 w r y H G e z B i i 9 c B D H T o 2 v J F 0 I 0 0 w a o X w P D s 8 I 4 t V D 8 M V J 7 l J S Q 5 g J 2 Q F a 8 0 O X X k g m z v b z Y P 0 U U g 4 D 0 + B 0 R + P b S f / y a v a r I I u y I q T K l / 0 q X F 6 f X 8 U U 6 W 3 m o b + m g 0 J V k + k r U D Z A l m b p r z 5 R R / G H K F p v z n 7 / / c u X L 7 + 5 y 4 9 B 6 E c P j / 7 8 N y D + E K q E u j I Z F + n h G m J 7 b A M + d P C Z D F Z o h V m 1 Y h K 0 m 9 5 e n 7 O O 0 v i 4 j B v w k Q 3 O G o Y f b a K Q X n 7 m Z 6 e C V / 8 g P 0 J / O J 1 N b q 7 t 4 W w q d E f D i / 7 l z c S C 8 r s Q d y E 0 E q s E 1 d / H 8 4 X g j u A i Z q f C t l W f D R g m B c V s J N x M b W F q j 2 0 A i d 0 T z m 8 B Z N f X l v D m 1 z f Z u b B e a E A 5 n A 4 c P I k 8 k P k e 1 U E V m Y W b j Y X / I 0 w H p R e 9 0 r v k X C X m V L A s j g W N q r k 5 c f r k Z o U O a 2 J / 5 M w J b N 7 1 a G j f C t f W 0 L q 0 r 2 d D 4 d y a g m U H E P 0 k o K r q 9 n 9 u + r N b Y T i a C Y P R b J q b W i z 2 o m 8 n N u A s u K l G 3 u o v g u 1 d U g o v A y l k C W D N / g B Q T f r T d 8 L o A g A 6 Q K 6 X H 6 7 s o X D V B 8 i D D Q Y s d N R 2 h n E 4 N i B w c J g x L l Q E T Y N S y R i B B q C a w i q K 0 p k 8 m Y A n s i i i v x T 0 l 0 L + 0 t B f W i x 6 s d A q I r 6 u h d z J o T / n E 9 t 6 Z 7 + 3 h w R 7 H S c / h b 0 v V E Z 4 h e U U 2 R F j f M 3 N o e R b x L Z 1 b j v 2 0 D o f 2 D 0 O g m f a K y J 3 / v U i v E V u o u D 4 + 2 S D o x L a G 3 O Q Z D t U R h I o V M S r I V g z y A V + 4 s C k i L 9 h B F A k Z j / H 1 m T W h 5 I s 3 U 7 0 k 4 e z 1 E v V E U F h t j Q z a j E e l H v p G x b 2 4 w 7 F y M D t V R U l O v l B A E n u w g 1 4 G x C / M g M S y a U 9 c a z r 0 c 2 Q w + N 2 d q 7 O 8 0 B / / D J k L J h P g / O R j C v M r m y 6 s N k J 6 M i i S F E J X Y o D R c N 3 l 2 O g f S H b A + 8 w y f a p z g n h K Z t A N c U c E T 6 x / + p P Z / 3 h p f B + N A A n P e b Z 5 z a s M w s 4 N 2 f 9 t R h 4 8 F F Y w b A / A K 8 X n + / c X t + H 6 Z n h y m F 6 8 U t k L n G H n Z i e 7 1 U V 0 w s G K W S B 0 J o W u j 6 Q j j 8 6 U 2 S q y M G V 7 1 I Z Q 1 T w a D o D 6 D G N V w o y Q 4 w n I y C l C + P J 6 K I / E 6 b 9 / 2 f v R I s 0 M N 5 + e L 0 6 8 M J T d T q z x 1 P B m t i C B Q C N w Z 7 O R m M O h L L 2 W x z J e m 3 9 5 f Q 4 O 8 w 0 V R d D K b Y B k e 0 v o T e x P v R G H 4 b C u / 5 g I E w / 9 G f d K 4 F F v R y E V V / H Y l 1 3 G z n 0 A i o n 1 i W N F Z F U M d B C J G D A N R V + x u r m Q v D v g Z g E M f S X n Z i r J x A 4 a + p I w C O q f K / q H C 4 L M e D H C G g L r B + u s 4 r x + e e f h O B e i I L I X Q r E + + I X j r g n E Y U S 4 i r G / G I W l + 9 S G X l k j e 4 + I b N d q L K n M 7 G U 9 A A 5 3 D o E s M s R P I t y k P O 7 V S d G A F D P v u g P  
 w S K j T Y B j U u A 4 R 6 D G H I E a B W E w m k 6 L 4 O R 1 q g 6 l w o M S j s i D 8 a 2 W w E g u n 5 w u N q g W a L G p H t V P O I M 9 r P r g K C 6 p w l Z 4 k T C / Y L W A l 1 Q 8 5 k e a K r I L G W u r P e s W y G x U e p t N b u z f L 4 C w Y e 9 i E l D B 2 3 o b L k B s W 1 W I 4 L 3 d j T 2 t A x I Q R T 9 4 i 1 U B U O n W q n w V a D 4 f 7 N 6 w H m B w T g / b k A 9 X q r H q a s H r w 6 u b S S 2 o Y P n F 0 C / C K N p U A 6 M u J v 2 a q z R 1 o 2 1 Y t E p J Y 4 1 V m l q z m 0 l Z q J g o G e w T u C 0 k P N p U Y 5 m m N 8 N a A K G o T X j N 4 e A 7 a Z 6 S z 7 Z X 5 m h o A C h S C l e j m w l n y 8 Q z U a J b Z q 8 W B X C k G i s D A d 8 e 9 r g Q g N / B k a B 1 W K F w P C s U C s e z G p + H i l f M g N E o 1 s Q a 2 I M B q f 1 e l s n X H 4 e c s b m a 8 7 w z l l O Y P j N f B Y Z l R D v s + 2 A I a L K 8 p T L X a G w P s 5 N J M m E A i o q j q G Y T s F E k F U A O u K K O 1 Q C E R y V n G K F n n 9 9 c Q o l x N A Y H K E f B I d 5 y + H C w r y 3 8 M v d w Y F o r r p 7 B v L w f J A V 6 t B L 5 x G S m x S R U y K 1 i Q b + K i 6 j z R i m 1 h t D 3 j E T b p a 7 U J Z R q B s 6 f + l t w R A H G F 6 M i E Z L L r B Q w 6 a s o J 7 m K w r x g 4 A z R 1 T W H F 9 C m J s C A O 5 K 7 P Y t v d g a O / Q i 0 Z O 5 q x G 2 N r A Z K f H M f / N / M V Z s Q i 7 8 D x 4 K 3 / u R + k C f + p n s 0 s j j Q U U m U 5 d 9 E 5 T e p I 8 S H 1 s B 5 7 y 7 9 h R 8 9 8 Q 8 t t r 0 J O A C 2 3 g w H A K d n 0 F I T L w j 9 i D M r W h C 2 R 1 M L c m 5 1 3 8 1 s Z L J 7 f i W b B x M N Y 4 M r / + h + d R Y L 5 8 G P + D v D t l e U d D i f z k k z g E P E 8 a m 8 z 7 P t h / k 8 c T s r / H z c 3 v D n o Y M 3 R 2 8 m j x v d Z 3 R f y / 1 U r e u X n S i l E 5 R x 1 s i z t g C x u L 2 a 3 l + T f A T w 3 C d n C c m I D 0 x B v 6 b 3 G 7 n H R O 6 S z j n 0 w G n A x / x d f Z v Y L n S T e 2 j h i P / d W A D K i S T n U z 6 i 8 G L 2 G 8 N Y 7 I z o h p 5 L 8 + d h 5 y s z D Q b x h O U 4 i 8 K A l j d p n 0 R U A Y 7 x W l Q 6 x C u T 5 J X z w e G t Y a g f i C M g e K Q o / 8 r l M b Y A X M I / p C J l D T z q s Y + I H 1 g O d r k A d u r + x 6 R O y 4 A u m Z K R h V 2 T s r C b s l w E u 1 w B d o U H u 1 I a d l 3 M w K 7 q W m 7 d j S z s k l 6 4 7 k o F 2 F U e 7 G p p 2 G U 1 B 7 y h 7 U c a R T S L g F c r A K / x g N d K A 6 / p 2 v 6 V V / P A G 4 U r r 1 U A X u c B r 5 f H G i 0 D v G x m Y V c l P Q d 7 M d b o F W A 3 e L A b F W D P Y I 2 h Z j m N K p t Z 2 H W l E G m M 0 r B / K + d X X M q j 9 t v / B 5 / A J s 4 =  
 : f x d r e e m a > * /  
 