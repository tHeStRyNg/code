/ / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 / / )       _ _ _ _     _     _     _ _ _ _     _ _ _ _     _ _ _ _     _ _ _ _     _ _     _ _         _ _             _ _ _     _ _ _ _ _     _ _     _ _       ( / /  
 / / )     (   _ _ _ ) (   \ /   ) (     _   \ (     _   \ (   _ _ _ ) (   _ _ _ ) (     \ /     )     / _ _ \         /   _ _ ) (     _     ) (     \ /     )     ( / /  
 / / )       ) _ _ )     )     (     ) ( _ )   ) )       /   ) _ _ )     ) _ _ )     )         (     / ( _ _ ) \     (   ( _ _     ) ( _ ) (     )         (       ( / /  
 / / )     ( _ _ )     ( _ / \ _ ) ( _ _ _ _ / ( _ ) \ _ ) ( _ _ _ _ ) ( _ _ _ _ ) ( _ / \ / \ _ ) ( _ _ ) ( _ _ ) ( ) \ _ _ _ ) ( _ _ _ _ _ ) ( _ / \ / \ _ )     ( / /  
 / / )       h t t p s : / / f x d r e e m a . c o m                                                           C o p y r i g h t   2 0 2 3 ,   f x D r e e m a     ( / /  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 # p r o p e r t y   c o p y r i g h t       " C O P Y R I G H T ,   2 0 2 3   -   A L G O R I T H M I C ,   G M B H "  
 # p r o p e r t y   l i n k                 " h t t p s : / / w w w . a l g o r i t h m i c . o n e "  
 # p r o p e r t y   d e s c r i p t i o n   " A L G O R I T H M I C   R S I   S T O R M   "  
 # p r o p e r t y   v e r s i o n           " 1 . 0 "  
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
 # d e f i n e   P R O J E C T _ I D   " m t 5 - 2 9 7 3 "  
 / / - -  
 / /   P o i n t   F o r m a t   R u l e s  
 # d e f i n e   P O I N T _ F O R M A T _ R U L E S   " 0 . 0 0 1 = 0 . 0 1 , 0 . 0 0 0 0 1 = 0 . 0 0 0 1 , 0 . 0 0 0 0 0 1 = 0 . 0 0 0 1 "   / /   t h i s   i s   d e s e r i a l i z e d   i n   a   s p e c i a l   f u n c t i o n   l a t e r  
 # d e f i n e   E N A B L E _ S P R E A D _ M E T E R   f a l s e  
 # d e f i n e   E N A B L E _ S T A T U S   t r u e  
 # d e f i n e   E N A B L E _ T E S T _ I N D I C A T O R S   t r u e  
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
 # d e f i n e   O N _ T I M E R _ P E R I O D   6 0   / /   T i m e r   e v e n t   p e r i o d   ( i n   s e c o n d s )  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   c o n s t a n t s   ( p r e d e f i n e d   c o n s t a n t s )   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 # d e f i n e   T L O B J P R O P _ T I M E 1   8 0 1  
 # d e f i n e   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T   8 0 2  
 # d e f i n e   O B J P R O P _ T L _ S H I F T _ B Y _ P R I C E   8 0 3  
 # d e f i n e   O B J P R O P _ F I B O V A L U E   8 0 4  
 # d e f i n e   O B J P R O P _ F I B O P R I C E V A L U E   8 0 5  
 # d e f i n e   O B J P R O P _ F I R S T L E V E L   8 0 6  
 # d e f i n e   O B J P R O P _ T I M E 1   8 0 7  
 # d e f i n e   O B J P R O P _ T I M E 2   8 0 8  
 # d e f i n e   O B J P R O P _ T I M E 3   8 0 9  
 # d e f i n e   O B J P R O P _ P R I C E 1   8 1 0  
 # d e f i n e   O B J P R O P _ P R I C E 2   8 1 1  
 # d e f i n e   O B J P R O P _ P R I C E 3   8 1 2  
 # d e f i n e   O B J P R O P _ B A R S H I F T 1   8 1 3  
 # d e f i n e   O B J P R O P _ B A R S H I F T 2   8 1 4  
 # d e f i n e   O B J P R O P _ B A R S H I F T 3   8 1 5  
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
 i n p u t   s t r i n g   L I C _ N R   =   " = = = = = = = =   L I C E N S E   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   L I C E N S E   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   L _ N u m b e r   =   " " ;   / /   L I C E N S E   N U M B E R   ( S o f t w a r e   A c t i v a t i o n )  
 i n p u t   s t r i n g   S Y M B   =   " = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   I N S T R U M E N T S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   S Y M B O L S   =   " E U R U S D , E U R C H F , E U R N Z D " ;   / /     I N S T R U M E N T S   T O   U S E   S E P E R A T E D   B Y   C O M M A   " , "  
 i n p u t   s t r i n g   T P _ S L _ C O N F I G   =   " = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T P   &   S L   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   b o o l   T P _ S L _ E N A B L E D   =   t r u e ;   / /   E N A B L E D   T P   &   S L   A U T O   S E T U P  
 i n p u t   s t r i n g   L O T S _ C O N F I G   =   " = = = = =   L O T S   C O N F I G   = = = = = " ;   / /   = = = = =   L O T S   C O N F I G   = = = = =  
 i n p u t   d o u b l e   L O T S   =   2 0 . 0 ;   / /   L O T S  
 i n p u t   s t r i n g   H E D G E _ C O N F I G   =   " = = = = =   H E D G E   C O N F I G   = = = = = " ;   / /   = = = = =   H E D G E   C O N F I G   = = = = =  
 i n p u t   d o u b l e   H E D G E _ M U L T I P L I E R   =   2 . 0 ;   / /   H E D G E   M U L T I P L I E R    
 i n p u t   i n t   H E D G E _ D I S T A N C E   =   2 5 ;   / /   H E D G E   D I S T A N C E   I N   P I P     F R O M   O R D E R   S T A R T  
 i n p u t   s t r i n g   M A X _ D D   =   " = = = = =   M A X   D R A W D O W N   K I L L   S W I T C H   C O N F I G   = = = = = " ;   / /   = = = = =   M A X   D R A W D O W N   K I L L   S W I T C H   C O N F I G   = = = = =  
 i n p u t   b o o l   C u t _ L o s s   =   f a l s e ;   / /   M A X   D R A W D O W N   S T O P   ( e n a b l e d   i f   =   t r u e )  
 i n p u t   d o u b l e   C u t _ L o s s _ p e r c e n t   =   4 . 0 ;   / /   M A X   D R A W D O W N   T O   S T O P   A L L   T R A D E S   A T   %   ( %   o f   t o t a l   b a l a n c e )  
 i n p u t   s t r i n g   P R O F I T _ C O N F I G   =   " = = = = =   P R O F I T   C O N F I G   = = = = = " ;   / /   = = = = =   P R O F I T   C O N F I G   = = = = =  
 i n p u t   d o u b l e   E X P E C T E D _ P R O F I T   =   1 0 6 0 . 0 ;   / /   A M O U N T   M O N E Y   Y O U   W A N T   T O   C L O S E   A   T R A D E  
 i n p u t   d o u b l e   D A I L Y _ P R O F I T _ G O A L   =   2 0 0 0 . 0 ;   / /   D E F I N E S   M A X   D A I L Y   P R O F I T   -   I F   R E A C H E D   R E S U M E S   N E X T   D A Y  
 i n p u t   d o u b l e   T O T A L _ P R O F I T _ G O A L   =   2 0 0 0 0 . 0 ;   / /   D E F I N E S   M A X   T O T A L   P R O F I T   G O A L   T H E N   S T O P S   I F   R E A C H E D  
 i n p u t   d o u b l e   D A I L Y _ L O S S _ G O A L   =   - 8 0 0 0 . 0 ;   / /   D E F I N E S   M A X   D A I L Y   L O S S   -   I F   R E A C H E D   I T   S T O P S   A N D   R E S U M E S   N E X T   D A Y  
 i n p u t   s t r i n g   R S I _ C O N F I G   =   " = = = = =   R S I   I N D .   C O N F I G   = = = = = " ;   / /   = = = = =   R S I   I N D .   C O N F I G   = = = = =  
 i n p u t   i n t   R S I _ P E R I O D   =   1 4 ;   / /   P E R I O D   O F   R S I   I N D I C A T O R  
 i n p u t   i n t   H o w _ M a n y _ C a n d l e s _ 1   =   4 ;  
 i n p u t   i n t   H o w _ M a n y _ C a n d l e s _ 2   =   6 ;  
 i n p u t   i n t   U p p e r _ L e v e l _ B u y   =   4 0 ;  
 i n p u t   i n t   L o w e r _ L e v e l _ B u y   =   1 ;  
 i n p u t   i n t   U p p e r _ L e v e l _ S e l l   =   1 0 0 ;  
 i n p u t   i n t   L o w e r _ L e v e l _ S e l l   =   6 0 ;  
 i n p u t   s t r i n g   T i m e _ C o n t r o l   =   " = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   T I M E   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   s t r i n g   S t a r t _ H o u r   =   " 0 2 : 0 0 " ;   / /   S T A R T   H O U R  
 i n p u t   s t r i n g   E n d _ H o u r   =   " 0 5 : 0 0 " ;   / /   E N D   H O U R  
 i n p u t   b o o l   M o n d a y   =   t r u e ;   / /   M O N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T u e s d a y   =   t r u e ;   / /   T U E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   W e d n e s d a y   =   t r u e ;   / /   W E D N E S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   T h u r s d a y   =   t r u e ;   / /   T H U R S D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   F r i d a y   =   t r u e ;   / /   F R I D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S a t u r d a y   =   f a l s e ;   / /   S A T U R D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   b o o l   S u n d a y   =   f a l s e ;   / /   S U N D A Y   -   E N A B L E D   T R U E / F A L S E  
 i n p u t   s t r i n g   M A C D _ C O N F I G   =   " = = = = = = = =   M A C D   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   M A C D   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   i n t   M A C D _ C _ S _ 1   =   1 ;   / /   M A C D _ C _ S _ 1   -   M A C D _ C A N D L E     D I S T A N C E   S E L L   1  
 i n p u t   i n t   M A C D _ C _ S _ 2   =   0 ;   / /   M A C D _ C _ S _ 2   -   M A C D _ C A N D L E     D I S T A N C E   S E L L   2  
 i n p u t   i n t   M A C D _ C _ B _ 1   =   1 ;   / /   M A C D _ C _ B _ 1   -   M A C D _ C A N D L E     D I S T A N C E   B U Y   1  
 i n p u t   i n t   M A C D _ C _ B _ 2   =   0 ;   / /   M A C D _ C _ B _ 2   -   M A C D _ C A N D L E     D I S T A N C E   B U Y   2  
 i n p u t   i n t   M A C D _ F _ E _ S _ 1   =   2 ;   / /   M A C D _ F _ E _ S _ 1   -   M A C D _ F A S T   E M A   S E L L   1  
 i n p u t   i n t   M A C D _ S _ E _ S _ 1   =   3 ;   / /   M A C D _ S _ E _ S _ 1   -   M A C D _ S L O W   E M A   S E L L   1  
 i n p u t   i n t   M A C D _ S I G _ S _ 1   =   3 ;   / /   M A C D _ S I G _ S _ 1   -   M A C D   S I G N A L   S E L L   1  
 i n p u t   i n t   M A C D _ F _ E _ B _ 1   =   2 ;   / /   M A C D _ F _ E _ B _ 1   -   M A C D _ F A S T   E M A   B U Y   1  
 i n p u t   i n t   M A C D _ S _ E _ B _ 1   =   3 ;   / /   M A C D _ S _ E _ B _ 1   -   M A C D _ S L O W   E M A   B U Y   1  
 i n p u t   i n t   M A C D _ S I G _ B _ 1   =   3 ;   / /   M A C D _ S I G _ B _ 1   -   M A C D   S I G N A L   B U Y   1  
 i n p u t   s t r i n g   M A X _ P T   =   " = = = = = = = =   M A X _ P A R A L E L L _ T R A D E S   C O N F I G U R A T I O N   = = = = = = = = " ;   / /   = = = = = = = =   M A X _ P A R A L E L L _ T R A D E S   C O N F I G U R A T I O N   = = = = = = = =    
 i n p u t   i n t   M A X _ P A R A L E L L _ T R A D E S _ B U Y   =   5 ;   / /   M A X _ P A R A L E L L _ T R A D E S _ B U Y  
 i n p u t   i n t   M A X _ P A R A L E L L _ T R A D E S _ S E L L   =   5 ;   / /   M A X _ P A R A L E L L _ T R A D E S _ S E L L  
 i n p u t   i n t   T O T A L _ M A X _ P A R A L L E L _ T R A D E S   =   1 0 ;   / /   T O T A L _ M A X _ P A R A L L E L _ T R A D E S  
 i n p u t   i n t   M a g i c S t a r t   =   5 2 3 5 ;   / /   M a g i c   N u m b e r ,   k i n d   o f . . .  
 c l a s s   c  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   L I C _ N R ;  
 	 s t a t i c   s t r i n g   L _ N u m b e r ;  
 	 s t a t i c   s t r i n g   S Y M B ;  
 	 s t a t i c   s t r i n g   S Y M B O L S ;  
 	 s t a t i c   s t r i n g   T P _ S L _ C O N F I G ;  
 	 s t a t i c   b o o l   T P _ S L _ E N A B L E D ;  
 	 s t a t i c   s t r i n g   L O T S _ C O N F I G ;  
 	 s t a t i c   d o u b l e   L O T S ;  
 	 s t a t i c   s t r i n g   H E D G E _ C O N F I G ;  
 	 s t a t i c   d o u b l e   H E D G E _ M U L T I P L I E R ;  
 	 s t a t i c   i n t   H E D G E _ D I S T A N C E ;  
 	 s t a t i c   s t r i n g   M A X _ D D ;  
 	 s t a t i c   b o o l   C u t _ L o s s ;  
 	 s t a t i c   d o u b l e   C u t _ L o s s _ p e r c e n t ;  
 	 s t a t i c   s t r i n g   P R O F I T _ C O N F I G ;  
 	 s t a t i c   d o u b l e   E X P E C T E D _ P R O F I T ;  
 	 s t a t i c   d o u b l e   D A I L Y _ P R O F I T _ G O A L ;  
 	 s t a t i c   d o u b l e   T O T A L _ P R O F I T _ G O A L ;  
 	 s t a t i c   d o u b l e   D A I L Y _ L O S S _ G O A L ;  
 	 s t a t i c   s t r i n g   R S I _ C O N F I G ;  
 	 s t a t i c   i n t   R S I _ P E R I O D ;  
 	 s t a t i c   i n t   H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 s t a t i c   i n t   H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 s t a t i c   i n t   U p p e r _ L e v e l _ B u y ;  
 	 s t a t i c   i n t   L o w e r _ L e v e l _ B u y ;  
 	 s t a t i c   i n t   U p p e r _ L e v e l _ S e l l ;  
 	 s t a t i c   i n t   L o w e r _ L e v e l _ S e l l ;  
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
 	 s t a t i c   s t r i n g   M A C D _ C O N F I G ;  
 	 s t a t i c   i n t   M A C D _ C _ S _ 1 ;  
 	 s t a t i c   i n t   M A C D _ C _ S _ 2 ;  
 	 s t a t i c   i n t   M A C D _ C _ B _ 1 ;  
 	 s t a t i c   i n t   M A C D _ C _ B _ 2 ;  
 	 s t a t i c   i n t   M A C D _ F _ E _ S _ 1 ;  
 	 s t a t i c   i n t   M A C D _ S _ E _ S _ 1 ;  
 	 s t a t i c   i n t   M A C D _ S I G _ S _ 1 ;  
 	 s t a t i c   i n t   M A C D _ F _ E _ B _ 1 ;  
 	 s t a t i c   i n t   M A C D _ S _ E _ B _ 1 ;  
 	 s t a t i c   i n t   M A C D _ S I G _ B _ 1 ;  
 	 s t a t i c   s t r i n g   M A X _ P T ;  
 	 s t a t i c   i n t   M A X _ P A R A L E L L _ T R A D E S _ B U Y ;  
 	 s t a t i c   i n t   M A X _ P A R A L E L L _ T R A D E S _ S E L L ;  
 	 s t a t i c   i n t   T O T A L _ M A X _ P A R A L L E L _ T R A D E S ;  
 	 s t a t i c   i n t   M a g i c S t a r t ;  
 } ;  
 s t r i n g   c : : L I C _ N R ;  
 s t r i n g   c : : L _ N u m b e r ;  
 s t r i n g   c : : S Y M B ;  
 s t r i n g   c : : S Y M B O L S ;  
 s t r i n g   c : : T P _ S L _ C O N F I G ;  
 b o o l   c : : T P _ S L _ E N A B L E D ;  
 s t r i n g   c : : L O T S _ C O N F I G ;  
 d o u b l e   c : : L O T S ;  
 s t r i n g   c : : H E D G E _ C O N F I G ;  
 d o u b l e   c : : H E D G E _ M U L T I P L I E R ;  
 i n t   c : : H E D G E _ D I S T A N C E ;  
 s t r i n g   c : : M A X _ D D ;  
 b o o l   c : : C u t _ L o s s ;  
 d o u b l e   c : : C u t _ L o s s _ p e r c e n t ;  
 s t r i n g   c : : P R O F I T _ C O N F I G ;  
 d o u b l e   c : : E X P E C T E D _ P R O F I T ;  
 d o u b l e   c : : D A I L Y _ P R O F I T _ G O A L ;  
 d o u b l e   c : : T O T A L _ P R O F I T _ G O A L ;  
 d o u b l e   c : : D A I L Y _ L O S S _ G O A L ;  
 s t r i n g   c : : R S I _ C O N F I G ;  
 i n t   c : : R S I _ P E R I O D ;  
 i n t   c : : H o w _ M a n y _ C a n d l e s _ 1 ;  
 i n t   c : : H o w _ M a n y _ C a n d l e s _ 2 ;  
 i n t   c : : U p p e r _ L e v e l _ B u y ;  
 i n t   c : : L o w e r _ L e v e l _ B u y ;  
 i n t   c : : U p p e r _ L e v e l _ S e l l ;  
 i n t   c : : L o w e r _ L e v e l _ S e l l ;  
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
 s t r i n g   c : : M A C D _ C O N F I G ;  
 i n t   c : : M A C D _ C _ S _ 1 ;  
 i n t   c : : M A C D _ C _ S _ 2 ;  
 i n t   c : : M A C D _ C _ B _ 1 ;  
 i n t   c : : M A C D _ C _ B _ 2 ;  
 i n t   c : : M A C D _ F _ E _ S _ 1 ;  
 i n t   c : : M A C D _ S _ E _ S _ 1 ;  
 i n t   c : : M A C D _ S I G _ S _ 1 ;  
 i n t   c : : M A C D _ F _ E _ B _ 1 ;  
 i n t   c : : M A C D _ S _ E _ B _ 1 ;  
 i n t   c : : M A C D _ S I G _ B _ 1 ;  
 s t r i n g   c : : M A X _ P T ;  
 i n t   c : : M A X _ P A R A L E L L _ T R A D E S _ B U Y ;  
 i n t   c : : M A X _ P A R A L E L L _ T R A D E S _ S E L L ;  
 i n t   c : : T O T A L _ M A X _ P A R A L L E L _ T R A D E S ;  
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
 	 s t a t i c   d o u b l e   D i s t a n c e _ B u y _ S e l l ;  
 	 s t a t i c   d o u b l e   L o t _ H e d g e ;  
 	 s t a t i c   s t r i n g   E A _ N A M E ;  
 	 s t a t i c   s t r i n g   E A _ N A M E _ L ;  
 	 s t a t i c   s t r i n g   E A _ N A M E _ H ;  
 	 s t a t i c   s t r i n g   L _ C h e c k ;  
 	 s t a t i c   s t r i n g   L _ N u m b e r ;  
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
 	 s t a t i c   d o u b l e   H M _ 2 ;  
 	 s t a t i c   d o u b l e   H M _ 3 ;  
 	 s t a t i c   d o u b l e   H M _ 4 ;  
 	 s t a t i c   d o u b l e   H M _ 5 ;  
 	 s t a t i c   d o u b l e   H M _ 6 ;  
 	 s t a t i c   d o u b l e   H M _ 7 ;  
 } ;  
 d o u b l e   v : : D i s t a n c e _ B u y _ S e l l ;  
 d o u b l e   v : : L o t _ H e d g e ;  
 s t r i n g   v : : E A _ N A M E ;  
 s t r i n g   v : : E A _ N A M E _ L ;  
 s t r i n g   v : : E A _ N A M E _ H ;  
 s t r i n g   v : : L _ C h e c k ;  
 s t r i n g   v : : L _ N u m b e r ;  
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
 d o u b l e   v : : H M _ 2 ;  
 d o u b l e   v : : H M _ 3 ;  
 d o u b l e   v : : H M _ 4 ;  
 d o u b l e   v : : H M _ 5 ;  
 d o u b l e   v : : H M _ 6 ;  
 d o u b l e   v : : H M _ 7 ;  
  
  
  
 / / - -  
 / /   E x t e r n s   ( G l o b a l   V a r i a b l e s )  
 i n p u t   s t r i n g   i n p 3 5 _ G r o u p   =   " D A I L Y   P R O F I T   C H E C K E R " ;  
 i n p u t   s t r i n g   i n p 3 6 _ G r o u p   =   " D A I L Y   P R O F I T   C H E C K E R " ;  
 i n p u t   d o u b l e   i n p 1 0 3 _ V a l u e 1 _ V a l u e   =   1 0 0 0 0 0 . 0 ;  
 i n p u t   d o u b l e   i n p 1 0 3 _ V a l u e 2 _ V a l u e   =   1 0 0 0 0 0 . 0 ;  
 c l a s s   _ e x t e r n s  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   i n p 3 5 _ G r o u p ;  
 	 s t a t i c   s t r i n g   i n p 3 6 _ G r o u p ;  
 	 s t a t i c   d o u b l e   i n p 1 0 3 _ V a l u e 1 _ V a l u e ;  
 	 s t a t i c   d o u b l e   i n p 1 0 3 _ V a l u e 2 _ V a l u e ;  
 } ;  
 s t r i n g   _ e x t e r n s : : i n p 3 5 _ G r o u p ;  
 s t r i n g   _ e x t e r n s : : i n p 3 6 _ G r o u p ;  
 d o u b l e   _ e x t e r n s : : i n p 1 0 3 _ V a l u e 1 _ V a l u e ;  
 d o u b l e   _ e x t e r n s : : i n p 1 0 3 _ V a l u e 2 _ V a l u e ;  
  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   g l o b a l   v a r i a b l e s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 / /   B l o c k s   L o o k u p   F u n c t i o n s  
 s t r i n g   f x d B l o c k s L o o k u p T a b l e [ ] ;  
  
 i n t   F X D _ C U R R E N T _ F U N C T I O N _ I D   =   0 ;  
 d o u b l e   F X D _ M I L S _ I N I T _ E N D         =   0 ;  
 i n t   F X D _ T I C K S _ F R O M _ S T A R T         =   0 ;  
 i n t   F X D _ M O R E _ S H I F T                     =   0 ;  
 b o o l   F X D _ D R A W _ S P R E A D _ I N F O       =   f a l s e ;  
 b o o l   F X D _ F I R S T _ T I C K _ P A S S E D     =   f a l s e ;  
 b o o l   F X D _ B R E A K                             =   f a l s e ;  
 b o o l   F X D _ C O N T I N U E                       =   f a l s e ;  
 b o o l   U S E _ V I R T U A L _ S T O P S   =   V I R T U A L _ S T O P S _ E N A B L E D ;  
 s t r i n g   F X D _ C U R R E N T _ S Y M B O L       =   " " ;  
 i n t   F X D _ B L O C K S _ C O U N T                 =   1 0 4 ;  
 d a t e t i m e   F X D _ T I C K S K I P _ U N T I L   =   0 ;  
  
 i n t   F X D _ I C U S T O M _ H A N D L E S _ I D S [ ] ;   / /   o n l y   u s e d   i n   M Q L 5  
 s t r i n g   F X D _ I C U S T O M _ H A N D L E S _ K E Y S [ ] ;   / /   o n l y   u s e d   i n   M Q L 5  
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
 	 c : : L I C _ N R   =   L I C _ N R ;  
 	 c : : L _ N u m b e r   =   L _ N u m b e r ;  
 	 c : : S Y M B   =   S Y M B ;  
 	 c : : S Y M B O L S   =   S Y M B O L S ;  
 	 c : : T P _ S L _ C O N F I G   =   T P _ S L _ C O N F I G ;  
 	 c : : T P _ S L _ E N A B L E D   =   T P _ S L _ E N A B L E D ;  
 	 c : : L O T S _ C O N F I G   =   L O T S _ C O N F I G ;  
 	 c : : L O T S   =   L O T S ;  
 	 c : : H E D G E _ C O N F I G   =   H E D G E _ C O N F I G ;  
 	 c : : H E D G E _ M U L T I P L I E R   =   H E D G E _ M U L T I P L I E R ;  
 	 c : : H E D G E _ D I S T A N C E   =   H E D G E _ D I S T A N C E ;  
 	 c : : M A X _ D D   =   M A X _ D D ;  
 	 c : : C u t _ L o s s   =   C u t _ L o s s ;  
 	 c : : C u t _ L o s s _ p e r c e n t   =   C u t _ L o s s _ p e r c e n t ;  
 	 c : : P R O F I T _ C O N F I G   =   P R O F I T _ C O N F I G ;  
 	 c : : E X P E C T E D _ P R O F I T   =   E X P E C T E D _ P R O F I T ;  
 	 c : : D A I L Y _ P R O F I T _ G O A L   =   D A I L Y _ P R O F I T _ G O A L ;  
 	 c : : T O T A L _ P R O F I T _ G O A L   =   T O T A L _ P R O F I T _ G O A L ;  
 	 c : : D A I L Y _ L O S S _ G O A L   =   D A I L Y _ L O S S _ G O A L ;  
 	 c : : R S I _ C O N F I G   =   R S I _ C O N F I G ;  
 	 c : : R S I _ P E R I O D   =   R S I _ P E R I O D ;  
 	 c : : H o w _ M a n y _ C a n d l e s _ 1   =   H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 c : : H o w _ M a n y _ C a n d l e s _ 2   =   H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 c : : U p p e r _ L e v e l _ B u y   =   U p p e r _ L e v e l _ B u y ;  
 	 c : : L o w e r _ L e v e l _ B u y   =   L o w e r _ L e v e l _ B u y ;  
 	 c : : U p p e r _ L e v e l _ S e l l   =   U p p e r _ L e v e l _ S e l l ;  
 	 c : : L o w e r _ L e v e l _ S e l l   =   L o w e r _ L e v e l _ S e l l ;  
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
 	 c : : M A C D _ C O N F I G   =   M A C D _ C O N F I G ;  
 	 c : : M A C D _ C _ S _ 1   =   M A C D _ C _ S _ 1 ;  
 	 c : : M A C D _ C _ S _ 2   =   M A C D _ C _ S _ 2 ;  
 	 c : : M A C D _ C _ B _ 1   =   M A C D _ C _ B _ 1 ;  
 	 c : : M A C D _ C _ B _ 2   =   M A C D _ C _ B _ 2 ;  
 	 c : : M A C D _ F _ E _ S _ 1   =   M A C D _ F _ E _ S _ 1 ;  
 	 c : : M A C D _ S _ E _ S _ 1   =   M A C D _ S _ E _ S _ 1 ;  
 	 c : : M A C D _ S I G _ S _ 1   =   M A C D _ S I G _ S _ 1 ;  
 	 c : : M A C D _ F _ E _ B _ 1   =   M A C D _ F _ E _ B _ 1 ;  
 	 c : : M A C D _ S _ E _ B _ 1   =   M A C D _ S _ E _ B _ 1 ;  
 	 c : : M A C D _ S I G _ B _ 1   =   M A C D _ S I G _ B _ 1 ;  
 	 c : : M A X _ P T   =   M A X _ P T ;  
 	 c : : M A X _ P A R A L E L L _ T R A D E S _ B U Y   =   M A X _ P A R A L E L L _ T R A D E S _ B U Y ;  
 	 c : : M A X _ P A R A L E L L _ T R A D E S _ S E L L   =   M A X _ P A R A L E L L _ T R A D E S _ S E L L ;  
 	 c : : T O T A L _ M A X _ P A R A L L E L _ T R A D E S   =   T O T A L _ M A X _ P A R A L L E L _ T R A D E S ;  
 	 c : : M a g i c S t a r t   =   M a g i c S t a r t ;  
  
  
  
  
 	 / /   I n i t i a t e   E x t e r n s  
 	 _ e x t e r n s : : i n p 3 5 _ G r o u p   =   i n p 3 5 _ G r o u p ;  
 	 _ e x t e r n s : : i n p 3 6 _ G r o u p   =   i n p 3 6 _ G r o u p ;  
 	 _ e x t e r n s : : i n p 1 0 3 _ V a l u e 1 _ V a l u e   =   i n p 1 0 3 _ V a l u e 1 _ V a l u e ;  
 	 _ e x t e r n s : : i n p 1 0 3 _ V a l u e 2 _ V a l u e   =   i n p 1 0 3 _ V a l u e 2 _ V a l u e ;  
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
 	 v : : D i s t a n c e _ B u y _ S e l l   =   0 . 0 ;  
 	 v : : L o t _ H e d g e   =   0 . 0 ;  
 	 v : : E A _ N A M E   =   " A L G O R I T H M I C   R S I   S T O R M " ;  
 	 v : : E A _ N A M E _ L   =   " R S I _ S T O R M _ L O T " ;  
 	 v : : E A _ N A M E _ H   =   " R S I _ S T O R M _ H E D G E " ;  
 	 v : : L _ C h e c k   =   " f a l s e " ;  
 	 v : : L _ N u m b e r   =   " 2 6 7 8 2 3 6 4 7 4 - 9 3 5 5 7 2 5 7 7 9 - 1 4 7 8 5 5 7 8 2 0 - 0 0 8 " ;  
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
 	 v : : H M _ 2   =   1 . 0 ;  
 	 v : : H M _ 3   =   1 . 3 3 ;  
 	 v : : H M _ 4   =   1 . 2 5 ;  
 	 v : : H M _ 5   =   1 . 2 ;  
 	 v : : H M _ 6   =   1 . 1 7 ;  
 	 v : : H M _ 7   =   1 . 1 4 5 ;  
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
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) )   {  
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
 	 i f   ( E N A B L E _ E V E N T _ T I M E R )   {  
 	 	 O n T i m e r S e t ( O N _ T I M E R _ P E R I O D ) ;  
 	 }  
  
  
 	 / / - -   I n i t i a l i z e   b l o c k s   c l a s s e s  
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   1 0 4 ) ;  
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
 	 _ b l o c k s _ [ 8 9 ]   =   n e w   B l o c k 8 9 ( ) ;  
 	 _ b l o c k s _ [ 9 0 ]   =   n e w   B l o c k 9 0 ( ) ;  
 	 _ b l o c k s _ [ 9 1 ]   =   n e w   B l o c k 9 1 ( ) ;  
 	 _ b l o c k s _ [ 9 2 ]   =   n e w   B l o c k 9 2 ( ) ;  
 	 _ b l o c k s _ [ 9 3 ]   =   n e w   B l o c k 9 3 ( ) ;  
 	 _ b l o c k s _ [ 9 4 ]   =   n e w   B l o c k 9 4 ( ) ;  
 	 _ b l o c k s _ [ 9 5 ]   =   n e w   B l o c k 9 5 ( ) ;  
 	 _ b l o c k s _ [ 9 6 ]   =   n e w   B l o c k 9 6 ( ) ;  
 	 _ b l o c k s _ [ 9 7 ]   =   n e w   B l o c k 9 7 ( ) ;  
 	 _ b l o c k s _ [ 9 8 ]   =   n e w   B l o c k 9 8 ( ) ;  
 	 _ b l o c k s _ [ 9 9 ]   =   n e w   B l o c k 9 9 ( ) ;  
 	 _ b l o c k s _ [ 1 0 0 ]   =   n e w   B l o c k 1 0 0 ( ) ;  
 	 _ b l o c k s _ [ 1 0 1 ]   =   n e w   B l o c k 1 0 1 ( ) ;  
 	 _ b l o c k s _ [ 1 0 2 ]   =   n e w   B l o c k 1 0 2 ( ) ;  
 	 _ b l o c k s _ [ 1 0 3 ]   =   n e w   B l o c k 1 0 3 ( ) ;  
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
 	 / / - -   r u n   b l o c k s  
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 4 , 1 1 , 1 2 , 1 3 , 3 9 } ;  
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
 	 O C O D r i v e r ( ) ;   / /   C h e c k   a n d   c l o s e   O C O   o r d e r s  
  
 	 / /   s k i p   t i c k s  
 	 i f   ( T i m e L o c a l ( )   <   F X D _ T I C K S K I P _ U N T I L )   { r e t u r n ; }  
  
 	 / / - -   r u n   b l o c k s  
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 0 , 2 1 , 3 3 , 5 6 , 8 8 } ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( b l o c k s _ t o _ r u n ) ;   i + + )   {  
 	 	 _ b l o c k s _ [ b l o c k s _ t o _ r u n [ i ] ] . r u n ( ) ;  
 	 }  
  
  
 	 r e t u r n ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   t r a d e   e v e n t s   -   o p e n ,   c l o s e ,   m o d i f y   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T r a d e ( )  
 {  
 	 / /   T h i s   i s   n e e d e d   s o   t h a t   t h e   O n T r a d e E v e n t D e t e c t o r   c l a s s   i s   a d d e d   i n t o   t h e   c o d e  
 	 i f   ( f a l s e )   O n T r a d e E v e n t D e t e c t o r   *   d u m m y   =   n e w   O n T r a d e E v e n t D e t e c t o r ( ) ;  
  
 }  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   a   p e r i o d   b a s i s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T i m e r ( )  
 {  
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
 	 i f   ( r e s o n   = =   R E A S O N _ C H A R T C H A N G E   | |   r e s o n   = =   R E A S O N _ P A R A M E T E R S   | |   r e a s o n   = =   R E A S O N _ T E M P L A T E   | |   r e a s o n   = =   R E A S O N _ A C C O U N T )   { r e t u r n ; }  
  
 	 / / - -   i f   T i m e r   w a s   s e t ,   k i l l   i t   h e r e  
 	 E v e n t K i l l T i m e r ( ) ;  
  
 	 i f   ( E N A B L E _ S T A T U S )   D r a w S t a t u s ( " s t o p p e d " ) ;  
 	 i f   ( E N A B L E _ S P R E A D _ M E T E R )   D r a w S p r e a d I n f o ( ) ;  
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
 	 	 	 c a s e   R E A S O N _ P R O G R A M 	 	 :   P r i n t ( " E x p e r t   A d v i s o r   s e l f   t e r m i n a t e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E M O V E 	 	 :   P r i n t ( " E x p e r t   A d v i s o r   r e m o v e d   f r o m   t h e   c h a r t " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E C O M P I L E 	 :   P r i n t ( " E x p e r t   A d v i s o r   h a s   b e e n   r e c o m p i l e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C H A N G E 	 :   P r i n t ( " S y m b o l   o r   c h a r t   p e r i o d   h a s   b e e n   c h a n g e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C L O S E 	 :   P r i n t ( " C h a r t   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ P A R A M E T E R S 	 :   P r i n t ( " I n p u t   p a r a m e t e r s   h a v e   b e e n   c h a n g e d   b y   a   u s e r " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ A C C O U N T 	 	 :   P r i n t ( " A n o t h e r   a c c o u n t   h a s   b e e n   a c t i v a t e d   o r   r e c o n n e c t i o n   t o   t h e   t r a d e   s e r v e r   h a s   o c c u r r e d   d u e   t o   c h a n g e s   i n   t h e   a c c o u n t   s e t t i n g s " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ T E M P L A T E 	 	 :   P r i n t ( " A   n e w   t e m p l a t e   h a s   b e e n   a p p l i e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ I N I T F A I L E D 	 :   P r i n t ( " O n I n i t ( )   h a n d l e r   h a s   r e t u r n e d   a   n o n z e r o   v a l u e " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C L O S E 	 	 	 :   P r i n t ( " T e r m i n a l   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
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
 / /   |                                                                                           C l a s s e s   o f   b l o c k s                                                                                                         |   / /  
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
 / /   " I f   p o s i t i o n "   m o d e l  
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
 / /   " C l o s e   p o s i t i o n s "   m o d e l  
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
 / /   " I f   D e m o   a c c o u n t "   m o d e l  
 c l a s s   M D L _ I f D e m o :   p u b l i c   B l o c k C a l l s  
 {  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ T R A D E _ M O D E )   = =   A C C O U N T _ T R A D E _ M O D E _ D E M O )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " T e r m i n a t e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 >  
 c l a s s   M D L _ T e r m i n a t e :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   M e s s a g e ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ T e r m i n a t e ( )  
 	 {  
 	 	 M e s s a g e   =   ( s t r i n g ) " P r o g r a m   T e r m i n a t e d   I t s e l f " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( M e s s a g e   ! =   " " )  
 	 	 {  
 	 	       M e s s a g e B o x ( M e s s a g e ,   " S e l f - T e r m i n a t e " ,   M B _ O K ) ;  
 	 	 }  
 	 	  
 	 	 E x p e r t R e m o v e ( ) ;  
 	 	 C h a r t R e d r a w ( ) ;   / /   t o   r e m o v e   t h e   s m i l e   f a c e  
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
 / /   " A l e r t   m e s s a g e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   _ T 5 _ , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   _ T 7 _ , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   _ T 1 1 _ , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   _ T 1 3 _ , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   _ T 1 5 _ , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   _ T 1 7 _ , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   _ T 1 9 _ , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   _ T 2 1 _ , t y p e n a m e   T 2 2 >  
 c l a s s   M D L _ A l e r t M e s s a g e A d v a n c e d :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   A l e r t T i t l e ;  
 	 T 2   A l e r t L a b e l 1 ;  
 	 T 3   A l e r t V a l u e 1 ;   v i r t u a l   _ T 3 _   _ A l e r t V a l u e 1 _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 T 4   A l e r t L a b e l 2 ;  
 	 T 5   A l e r t V a l u e 2 ;   v i r t u a l   _ T 5 _   _ A l e r t V a l u e 2 _ ( ) { r e t u r n ( _ T 5 _ ) 0 ; }  
 	 T 6   A l e r t L a b e l 3 ;  
 	 T 7   A l e r t V a l u e 3 ;   v i r t u a l   _ T 7 _   _ A l e r t V a l u e 3 _ ( ) { r e t u r n ( _ T 7 _ ) 0 ; }  
 	 T 8   A l e r t L a b e l 4 ;  
 	 T 9   A l e r t V a l u e 4 ;   v i r t u a l   _ T 9 _   _ A l e r t V a l u e 4 _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   A l e r t L a b e l 5 ;  
 	 T 1 1   A l e r t V a l u e 5 ;   v i r t u a l   _ T 1 1 _   _ A l e r t V a l u e 5 _ ( ) { r e t u r n ( _ T 1 1 _ ) 0 ; }  
 	 T 1 2   A l e r t L a b e l 6 ;  
 	 T 1 3   A l e r t V a l u e 6 ;   v i r t u a l   _ T 1 3 _   _ A l e r t V a l u e 6 _ ( ) { r e t u r n ( _ T 1 3 _ ) 0 ; }  
 	 T 1 4   A l e r t L a b e l 7 ;  
 	 T 1 5   A l e r t V a l u e 7 ;   v i r t u a l   _ T 1 5 _   _ A l e r t V a l u e 7 _ ( ) { r e t u r n ( _ T 1 5 _ ) 0 ; }  
 	 T 1 6   A l e r t L a b e l 8 ;  
 	 T 1 7   A l e r t V a l u e 8 ;   v i r t u a l   _ T 1 7 _   _ A l e r t V a l u e 8 _ ( ) { r e t u r n ( _ T 1 7 _ ) 0 ; }  
 	 T 1 8   A l e r t L a b e l 9 ;  
 	 T 1 9   A l e r t V a l u e 9 ;   v i r t u a l   _ T 1 9 _   _ A l e r t V a l u e 9 _ ( ) { r e t u r n ( _ T 1 9 _ ) 0 ; }  
 	 T 2 0   A l e r t L a b e l 1 0 ;  
 	 T 2 1   A l e r t V a l u e 1 0 ;   v i r t u a l   _ T 2 1 _   _ A l e r t V a l u e 1 0 _ ( ) { r e t u r n ( _ T 2 1 _ ) 0 ; }  
 	 T 2 2   A l s o S e n d N o t i f i c a t i o n ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ A l e r t M e s s a g e A d v a n c e d ( )  
 	 {  
 	 	 A l e r t T i t l e   =   ( s t r i n g ) " A l e r t   M e s s a g e " ;  
 	 	 A l e r t L a b e l 1   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 2   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 3   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 4   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 5   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 6   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 7   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 8   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 9   =   ( s t r i n g ) " " ;  
 	 	 A l e r t L a b e l 1 0   =   ( s t r i n g ) " " ;  
 	 	 A l s o S e n d N o t i f i c a t i o n   =   ( b o o l ) f a l s e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 s t r i n g   t e x t   =   " " ;  
 	 	  
 	 	 i f   ( A l e r t L a b e l 1   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 1   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 1 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 2   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 2   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 2 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 3   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 3   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 3 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 4   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 4   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 4 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 5   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 5   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 5 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 6   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 6   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 6 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 7   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 7   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 7 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 8   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 8   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 8 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 9   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 9   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 9 _ ( ) ) ; }  
 	 	 i f   ( A l e r t L a b e l 1 0   ! =   " " )   { t e x t   + =   " \ n "   +   A l e r t L a b e l 1 0   +   " :   "   +   ( s t r i n g ) ( _ A l e r t V a l u e 1 0 _ ( ) ) ; }  
 	 	  
 	 	 t e x t   =   A l e r t T i t l e   +   " \ n "   +   t e x t ;  
 	 	  
 	 	 A l e r t ( t e x t ) ;  
 	 	  
 	 	 i f   ( A l s o S e n d N o t i f i c a t i o n = = t r u e )   S e n d N o t i f i c a t i o n ( t e x t ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " I f   C o n t e s t   a c c o u n t "   m o d e l  
 c l a s s   M D L _ I f C o n t e s t :   p u b l i c   B l o c k C a l l s  
 {  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ T R A D E _ M O D E )   = =   A C C O U N T _ T R A D E _ M O D E _ C O N T E S T )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " I f   R e a l   a c c o u n t "   m o d e l  
 c l a s s   M D L _ I f R e a l :   p u b l i c   B l o c k C a l l s  
 {  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ T R A D E _ M O D E )   = =   A C C O U N T _ T R A D E _ M O D E _ R E A L )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " I f   T e s t i n g "   m o d e l  
 c l a s s   M D L _ I f T e s t i n g :   p u b l i c   B l o c k C a l l s  
 {  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
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
 / /   " F o r   e a c h   P o s i t i o n "   m o d e l  
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
 	 d a t e t i m e   t i m e [ ] ;  
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
 	 	 / /   t h i s   i s   s t a t i c   f o r   s p e e d   r e a s o n s  
 	 	  
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
 	 	 	 C o p y T i m e ( S y m b o l ,   P e r i o d ,   1 ,   1 ,   t i m e ) ;  
 	 	 	 d a t e t i m e   n e w _ v a l u e   =   t i m e [ 0 ] ;  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
 	 	 v : : L o t _ H e d g e   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 4 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 4 ( )  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " I n d i c a t o r   m o v e s   w i t h i n   l i m i t s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   _ T 7 _ , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   _ T 1 0 _ >  
 c l a s s   M D L _ I n d i c a t o r W i t h i n L i m i t s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   I n d i c a t o r ;   v i r t u a l   _ T 1 _   _ I n d i c a t o r _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   C a n d l e s S h i f t ;  
 	 T 3   C a n d l e s P e r i o d ;  
 	 T 4   E x c e p t i o n C a n d l e s ;  
 	 T 5   U p p e r L e v e l M o d e ;  
 	 T 6   U p p e r L e v e l ;  
 	 T 7   d U p p e r L e v e l ;   v i r t u a l   _ T 7 _   _ d U p p e r L e v e l _ ( ) { r e t u r n ( _ T 7 _ ) 0 ; }  
 	 T 8   L o w e r L e v e l M o d e ;  
 	 T 9   L o w e r L e v e l ;  
 	 T 1 0   d L o w e r L e v e l ;   v i r t u a l   _ T 1 0 _   _ d L o w e r L e v e l _ ( ) { r e t u r n ( _ T 1 0 _ ) 0 ; }  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 d a t e t i m e   l a s t _ b a r _ t i m e ;  
 	 b o o l   f a i l e d ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ I n d i c a t o r W i t h i n L i m i t s ( )  
 	 {  
 	 	 C a n d l e s S h i f t   =   ( i n t ) 1 ;  
 	 	 C a n d l e s P e r i o d   =   ( i n t ) 1 0 ;  
 	 	 E x c e p t i o n C a n d l e s   =   ( i n t ) 0 ;  
 	 	 U p p e r L e v e l M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 U p p e r L e v e l   =   ( d o u b l e ) 7 0 . 0 ;  
 	 	 L o w e r L e v e l M o d e   =   ( s t r i n g ) " f i x e d " ;  
 	 	 L o w e r L e v e l   =   ( d o u b l e ) 3 0 . 0 ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 l a s t _ b a r _ t i m e   =     0 ;  
 	 	 f a i l e d   =     0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   l a s t _ c a n d l e     =   C a n d l e s S h i f t   +   C a n d l e s P e r i o d   -   1 ;  
 	 	 i n t   c o u n t _ t r u e       =   0 ;   / /   t h e   c o u n t   o f   c a n d l e s   w h e r e   t h e   v a l u e   i s   w i t h i n   t h e   l i m i t s  
 	 	 i n t   c o u n t _ f a i l e d   =   0 ;   / /   t h e   c o u n t   o f   c a n d l e s   w h e r e   t h e   v a l u e   i s   o u t s i d e   l i m i t s  
 	 	  
 	 	 / / i n t   c o u n t _ n e e d e d   =   C a n d l e s P e r i o d ;  
 	 	 / / i f   ( E x c e p t i o n C a n d l e s   >   0 )   {  
 	 	 / / 	 c o u n t _ n e e d e d   =   C a n d l e s P e r i o d   -   E x c e p t i o n C a n d l e s ;  
 	 	 / / }  
 	 	  
 	 	 f o r   ( i n t   i = C a n d l e s S h i f t ;   i < = l a s t _ c a n d l e ;   i + + )  
 	 	 {  
 	 	 	  
 	 	 	 / /   T O   D O :   i f   C a n d l e S h i f t = = 0   ( f i r s t   c a n d l e )   t o   c h e c k   o n l y   t h i s   c a n d l e   i f   o l d e r   c a n d l e s   a r e   c h e c k e d .  
 	 	 	 / /   d o n ' t   f o r g e t   t o   c h e c k   c a n d l e   0   t i m e  
 	 	 	 / /   d o n ' t   f o r g e t   t o   c h e c k   e x c e p t i o n s  
 	 	 	  
 	 	 	 / *  
 	 	 	 / /   t h i s   i s   t h e   c a c h e ,   b u t   I   r e m o v e d   i t   b e c a u s e   o f   s p e c i f i c   s i t u a t i o n  
 	 	 	 i f   ( i = = C a n d l e s S h i f t   & &   C a n d l e s S h i f t > 0 )   {  
 	 	 	 	 d a t e t i m e   c u r r e n t _ b a r _ t i m e = i T i m e ( C u r r e n t S y m b o l ( ) , C u r r e n t T i m e f r a m e ( ) , 0 ) ;  
 	 	 	 	 i f   ( l a s t _ b a r _ t i m e = = c u r r e n t _ b a r _ t i m e )   { b r e a k ; }   e l s e   { f a i l e d = f a l s e ; }  
 	 	 	 	 l a s t _ b a r _ t i m e = c u r r e n t _ b a r _ t i m e ;  
 	 	 	 }  
 	 	 	 * /  
 	 	  
 	 	 	 f a i l e d   =   f a l s e ;  
 	 	  
 	 	 	 F X D _ M O R E _ S H I F T   =   i ;  
 	 	 	 _ T 1 _   i v a l u e   =   _ I n d i c a t o r _ ( ) ;  
 	 	 	 F X D _ M O R E _ S H I F T   =   0 ;  
 	 	 	  
 	 	 	 d o u b l e   u p l e v e l   =   E M P T Y _ V A L U E ;  
 	 	 	 d o u b l e   d n l e v e l   =   - E M P T Y _ V A L U E ;  
 	 	 	  
 	 	 	 i f   ( U p p e r L e v e l M o d e   ! =   " " )  
 	 	 	 {  
 	 	 	 	 i f   ( U p p e r L e v e l M o d e   = =   " f i x e d " )  
 	 	 	 	 {  
 	 	 	 	 	 u p l e v e l   =   U p p e r L e v e l ;  
 	 	 	 	 }  
 	 	 	 	 e l s e    
 	 	 	 	 / / i f   ( U p p e r L e v e l M o d e   = =   " d y n a m i c " )  
 	 	 	 	 {  
 	 	 	 	 	 F X D _ M O R E _ S H I F T   =   i ;  
 	 	 	 	 	 u p l e v e l                 =   _ d U p p e r L e v e l _ ( ) ;  
 	 	 	 	 	 F X D _ M O R E _ S H I F T   =   0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( L o w e r L e v e l M o d e   ! =   " " )  
 	 	 	 {  
 	 	 	 	 i f   ( L o w e r L e v e l M o d e   = =   " f i x e d " )  
 	 	 	 	 {  
 	 	 	 	 	 d n l e v e l   =   L o w e r L e v e l ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 / / i f   ( L o w e r L e v e l M o d e = = " d y n a m i c " )  
 	 	 	 	 {  
 	 	 	 	 	 F X D _ M O R E _ S H I F T   =   i ;  
 	 	 	 	 	 d n l e v e l                 =   _ d L o w e r L e v e l _ ( ) ;  
 	 	 	 	 	 F X D _ M O R E _ S H I F T   =   0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 / / - -   l e v e l s   a r e   i n v e r t e d ,   n o r m a l i z e   t h e m  
 	 	 	 i f   ( u p l e v e l   <   d n l e v e l )  
 	 	 	 {  
 	 	 	 	 d o u b l e   t m p l e v e l   =   u p l e v e l ;  
 	 	 	 	 u p l e v e l   =   d n l e v e l ;  
 	 	 	 	 d n l e v e l   =   t m p l e v e l ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( i v a l u e   >   u p l e v e l   | |   i v a l u e   <   d n l e v e l )  
 	 	 	 {  
 	 	 	 	 f a i l e d   =   t r u e ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( f a i l e d   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 i f   ( E x c e p t i o n C a n d l e s   < =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c o u n t _ f a i l e d + + ;  
 	 	  
 	 	 	 	 	 i f   ( c o u n t _ f a i l e d   >   E x c e p t i o n C a n d l e s )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	  
 	 	     	 / / i f   ( f a i l e d = = f a l s e )   {  
 	 	 	 / / 	 c o u n t _ t r u e + + ;  
 	 	 	 / / 	 i f   ( c o u n t _ t r u e   > =   c o u n t _ n e e d e d )   { b r e a k ; }  
 	 	 	 / / }  
 	 	 }  
 	 	  
 	 	 F X D _ M O R E _ S H I F T   =   0 ;  
 	 	  
 	 	 i f   ( f a i l e d   = =   f a l s e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 5 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 5 ( )  
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
 	 	 v : : L o t _ H e d g e   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 6 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 6 ( )  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 7 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 7 ( )  
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
 	 	 v : : L o t _ H e d g e   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 8 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 8 ( )  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " F o r m u l a "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ >  
 c l a s s   M D L _ F o r m u l a _ 9 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ F o r m u l a _ 9 ( )  
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
 	 	 v : : L o t _ H e d g e   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
 / /   " C h e c k   p o s i t i o n s   c o u n t "   m o d e l  
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
 / /   " N o   p e n d i n g   o r d e r   n e a r b y "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   _ T 7 _ , t y p e n a m e   T 8 , t y p e n a m e   _ T 8 _ , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   _ T 1 0 _ , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 >  
 c l a s s   M D L _ N o N e a r b y O r d e r :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   G r o u p M o d e ;  
 	 T 2   G r o u p ;  
 	 T 3   S y m b o l M o d e ;  
 	 T 4   S y m b o l ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   L i m i t s O r S t o p s ;  
 	 T 7   T i m e 1 ;   v i r t u a l   _ T 7 _   _ T i m e 1 _ ( ) { r e t u r n ( _ T 7 _ ) 0 ; }  
 	 T 8   T i m e 2 ;   v i r t u a l   _ T 8 _   _ T i m e 2 _ ( ) { r e t u r n ( _ T 8 _ ) 0 ; }  
 	 T 9   M o d e B a s e P r i c e ;  
 	 T 1 0   B a s e P r i c e ;   v i r t u a l   _ T 1 0 _   _ B a s e P r i c e _ ( ) { r e t u r n ( _ T 1 0 _ ) 0 ; }  
 	 T 1 1   M o d e R a n g e ;  
 	 T 1 2   R a n g e P i p s ;  
 	 T 1 3   R a n g e F r a c t i o n ;  
 	 T 1 4   R a n g e P o s i t i o n ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ N o N e a r b y O r d e r ( )  
 	 {  
 	 	 G r o u p M o d e   =   ( s t r i n g ) " g r o u p " ;  
 	 	 G r o u p   =   ( s t r i n g ) " " ;  
 	 	 S y m b o l M o d e   =   ( s t r i n g ) " s y m b o l " ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   ( s t r i n g ) " b o t h " ;  
 	 	 L i m i t s O r S t o p s   =   ( s t r i n g ) " b o t h " ;  
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
 	 	 i f   ( ! u s e _ c u r r e n t _ p r i c e )  
 	 	 {  
 	 	 	 p r i c e   =   _ B a s e P r i c e _ ( ) ;  
 	 	 }  
 	 	  
 	 	 f o r   ( i n t   i n d e x   =   O r d e r s T o t a l ( ) - 1 ;   i n d e x   > =   0 ;   i n d e x - - )  
 	 	 {  
 	 	 	 i f   ( P e n d i n g O r d e r S e l e c t B y I n d e x ( i n d e x ,   G r o u p M o d e ,   G r o u p ,   S y m b o l M o d e ,   S y m b o l ,   B u y s O r S e l l s ,   L i m i t s O r S t o p s ) )  
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
 	 	 	 	 i f   ( O r d e r T y p e ( )   = =   2   | |   O r d e r T y p e ( )   = =   4 )   / /   b u y   l i m i t   | |   b u y   s t o p  
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
 / /   " V o l u m e   s i z e   ( l o t s ) "   m o d e l  
 c l a s s   M D L I C _ i n l o o p _ O r d e r V o l u m e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M o d e V o l u m e ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n l o o p _ O r d e r V o l u m e ( )  
 	 {  
 	 	 M o d e V o l u m e   =   ( i n t ) S E L _ C U R R E N T ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f   ( M o d e V o l u m e   = =   S E L _ C U R R E N T )   { r e t u r n   O r d e r L o t s ( ) ; }  
 	 	 i f   ( M o d e V o l u m e   = =   S E L _ I N I T I A L )   { r e t u r n   a t t r L o t s I n i t i a l ( ) ; }  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 } ;  
  
 / /   " R e l a t i v e   S t r e n g t h   I n d e x "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i R S I  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   R S I p e r i o d ;  
 	 E N U M _ A P P L I E D _ P R I C E   A p p l i e d P r i c e ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i R S I ( )  
 	 {  
 	 	 R S I p e r i o d   =   ( i n t ) 1 4 ;  
 	 	 A p p l i e d P r i c e   =   ( E N U M _ A P P L I E D _ P R I C E ) P R I C E _ C L O S E ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i R S I ( S y m b o l ,   P e r i o d ,   R S I p e r i o d ,   A p p l i e d P r i c e ,   S h i f t   +   F X D _ M O R E _ S H I F T ) ;  
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
 / /   " M A C D "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i M A C D  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   F a s t E M A p e r i o d ;  
 	 i n t   S l o w E M A p e r i o d ;  
 	 i n t   S i g n a l P e r i o d ;  
 	 E N U M _ A P P L I E D _ P R I C E   A p p l i e d P r i c e ;  
 	 i n t   M o d e ;  
 	 s t r i n g   S y m b o l ;  
 	 E N U M _ T I M E F R A M E S   P e r i o d ;  
 	 i n t   S h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i M A C D ( )  
 	 {  
 	 	 F a s t E M A p e r i o d   =   ( i n t ) 1 2 ;  
 	 	 S l o w E M A p e r i o d   =   ( i n t ) 2 6 ;  
 	 	 S i g n a l P e r i o d   =   ( i n t ) 9 ;  
 	 	 A p p l i e d P r i c e   =   ( E N U M _ A P P L I E D _ P R I C E ) P R I C E _ C L O S E ;  
 	 	 M o d e   =   ( i n t ) 0 ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S h i f t   =   ( i n t ) 0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i M A C D ( S y m b o l ,   P e r i o d ,   F a s t E M A p e r i o d ,   S l o w E M A p e r i o d ,   S i g n a l P e r i o d ,   A p p l i e d P r i c e ,   M o d e ,   S h i f t   +   F X D _ M O R E _ S H I F T ) ;  
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
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   B l o c k   1   ( I f   T r a d e   ( B u y / S e l l ) )  
 c l a s s   B l o c k 0 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 ] . r u n ( 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   2   ( C h e c k   p r o f i t   ( M o n e y ) )  
 c l a s s   B l o c k 1 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 ] . r u n ( 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) c : : E X P E C T E D _ P R O F I T ;  
 	 }  
 } ;  
  
 / /   B l o c k   3   ( C l o s e   p o s i t i o n s ( H E D G E ) )  
 c l a s s   B l o c k 2 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 ] . r u n ( 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   4   ( D e l e t e   p e n d i n g   o r d e r s ( H E D G E ) )  
 c l a s s   B l o c k 3 :   p u b l i c   M D L _ D e l e t e P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   5   ( D E M O   A C C O U N T )  
 c l a s s   B l o c k 4 :   p u b l i c   M D L _ I f D e m o  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6   ( L I C E N S E   I S   V A L I D )  
 c l a s s   B l o c k 5 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 0 } ;  
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
 	 	 	 _ b l o c k s _ [ 1 0 ] . r u n ( 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 v : : L _ C h e c k   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   7   ( I F   L I C   I S   V A L I D )  
 c l a s s   B l o c k 6 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 3 ]   =   { 5 , 8 , 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ L o _ ( )   {  
 	 	 L o . T e x t   =   v : : L _ N u m b e r ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ R o _ ( )   {  
 	 	 R o . T e x t   =   c : : L _ N u m b e r ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 8 ] . r u n ( 6 ) ;  
 	 	 	 _ b l o c k s _ [ 9 ] . r u n ( 6 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8   ( T e r m i n a t e )  
 c l a s s   B l o c k 7 :   p u b l i c   M D L _ T e r m i n a t e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M e s s a g e   =   " - - - - - - - - -   L I C E N S E   I S   I N V A L I D   -   T E R M I N A T I N G   - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   9   ( L I C E N S E   I S   I N V A L I D C O M M E N T )  
 c l a s s   B l o c k 8 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 1 . T e x t   =   " " ;  
 	 	 V a l u e 2 . T e x t   =   " " ;  
 	 	 V a l u e 3 . T e x t   =   " " ;  
 	 	 V a l u e 4 . T e x t   =   " " ;  
 	 	 V a l u e 5 . T e x t   =   " " ;  
 	 	 V a l u e 6 . T e x t   =   " " ;  
 	 	 V a l u e 7 . T e x t   =   " " ;  
 	 	 V a l u e 8 . T e x t   =   " " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 T i t l e   =   " - - - - - - - - -   L I C E N S E   I S   I N V A L I D   -   T E R M I N A T I N G   - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 6 _ ( )   { r e t u r n   V a l u e 6 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 7 _ ( )   { r e t u r n   V a l u e 7 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   s t r i n g   _ V a l u e 8 _ ( )   { r e t u r n   V a l u e 8 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 ] . r u n ( 8 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 / *   I n p u t s ,   m o d i f i e d   i n t o   t h e   c o d e   m u s t   b e   s e t   h e r e   e v e r y   t i m e   * /  
 	 	 O b j Y   =   2 4 ;  
 	 	 O b j C o r n e r   =   ( i n t ) C O R N E R _ R I G H T _ U P P E R ;  
 	 	 O b j T i t l e F o n t C o l o r   =   ( c o l o r ) c l r G o l d ;  
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
 / /   B l o c k   1 0   ( L I C E N S E   I S   I N V A L I D A L E R T )  
 c l a s s   B l o c k 9 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 " ;  
  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 1 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 2 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 3 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 4 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 A l e r t T i t l e   =   " - - - - - - - - -   L I C E N S E   I S   I N V A L I D   -   T E R M I N A T I N G   - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 1 _ ( )   { r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 2 _ ( )   { r e t u r n   A l e r t V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 3 _ ( )   { r e t u r n   A l e r t V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 4 _ ( )   { r e t u r n   A l e r t V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 5 _ ( )   { r e t u r n   A l e r t V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 6 _ ( )   { r e t u r n   A l e r t V a l u e 6 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 7 _ ( )   { r e t u r n   A l e r t V a l u e 7 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 8 _ ( )   { r e t u r n   A l e r t V a l u e 8 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 9 _ ( )   { r e t u r n   A l e r t V a l u e 9 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 1 0 _ ( )   { r e t u r n   A l e r t V a l u e 1 0 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 1   ( L I C E N S E   I S   V A L I D A L E R T )  
 c l a s s   B l o c k 1 0 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 " ;  
  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 A l e r t T i t l e   =   " - - - - - - - - -   L I C E N S E   I S   V A L I D   - - - - - - - - - - - - - " ;  
 	 	 A l e r t L a b e l 1   =   " L I C E N S E D   T O " ;  
 	 	 A l e r t L a b e l 2   =   " L I C E N S E   E M A I L " ;  
 	 	 A l e r t L a b e l 3   =   " L I C E N S E   A C T I V A T I O N " ;  
 	 	 A l e r t L a b e l 4   =   " L I C E N S E   V A L I D I T Y " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 1 _ ( )   {  
 	 	 A l e r t V a l u e 1 . T e x t   =   v : : L _ N a m e ;  
  
 	 	 r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 2 _ ( )   {  
 	 	 A l e r t V a l u e 2 . T e x t   =   v : : L _ E m a i l ;  
  
 	 	 r e t u r n   A l e r t V a l u e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 3 _ ( )   {  
 	 	 A l e r t V a l u e 3 . T e x t   =   v : : L _ A c t i v a t i o n ;  
  
 	 	 r e t u r n   A l e r t V a l u e 3 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 4 _ ( )   {  
 	 	 A l e r t V a l u e 4 . T e x t   =   v : : L _ V a l i d i t y ;  
  
 	 	 r e t u r n   A l e r t V a l u e 4 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 5 _ ( )   { r e t u r n   A l e r t V a l u e 5 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 6 _ ( )   { r e t u r n   A l e r t V a l u e 6 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 7 _ ( )   { r e t u r n   A l e r t V a l u e 7 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 8 _ ( )   { r e t u r n   A l e r t V a l u e 8 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 9 _ ( )   { r e t u r n   A l e r t V a l u e 9 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ A l e r t V a l u e 1 0 _ ( )   { r e t u r n   A l e r t V a l u e 1 0 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 2   ( C O N T E S T   A C C O U N T )  
 c l a s s   B l o c k 1 1 :   p u b l i c   M D L _ I f C o n t e s t  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 1 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 3   ( R E A L   A C C O U N T )  
 c l a s s   B l o c k 1 2 :   p u b l i c   M D L _ I f R e a l  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 1 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4   ( T E S T I N G )  
 c l a s s   B l o c k 1 3 :   p u b l i c   M D L _ I f T e s t i n g  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 1 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 5   ( P a s s )  
 c l a s s   B l o c k 1 4 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 5 , 3 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 5 ] . r u n ( 1 4 ) ;  
 	 	 	 _ b l o c k s _ [ 3 6 ] . r u n ( 1 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 6   ( W e e k d a y   f i l t e r )  
 c l a s s   B l o c k 1 5 :   p u b l i c   M D L _ W e e k d a y F i l t e r < s t r i n g , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 6 " ;  
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
 / /   B l o c k   1 7   ( H o u r s   f i l t e r )  
 c l a s s   B l o c k 1 6 :   p u b l i c   M D L _ H o u r s F i l t e r < s t r i n g , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g , b o o l , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 8 , 3 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 8 ] . r u n ( 1 6 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 1 ] . r u n ( 1 6 ) ;  
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
 / /   B l o c k   1 8   ( E A   R U N N I N G )  
 c l a s s   B l o c k 1 7 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 5 } ;  
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
 	 	 	 _ b l o c k s _ [ 8 5 ] . r u n ( 1 7 ) ;  
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
 / /   B l o c k   1 9   ( E A   N O T   R U N N I N G )  
 c l a s s   B l o c k 1 8 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 9 " ;  
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
 / /   B l o c k   2 0   ( E A   W E E K   R U N N I N G )  
 c l a s s   B l o c k 1 9 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 0 " ;  
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
 / /   B l o c k   2 1   ( E A   W E E K L Y   N O T   R U N N I N G )  
 c l a s s   B l o c k 2 0 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 1 " ;  
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
 / /   B l o c k   2 2   ( O N - O F F   ( C u t   L o s s ) )  
 c l a s s   B l o c k 2 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 2 } ;  
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
 	 	 	 _ b l o c k s _ [ 2 2 ] . r u n ( 2 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   2 3   ( I f   t r a d e ( B u y / S e l l ) )  
 c l a s s   B l o c k 2 2 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 3 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   2 4   ( F o r m u l a ( C u t   L o s s   P e r c e n t ) )  
 c l a s s   B l o c k 2 3 :   p u b l i c   M D L _ F o r m u l a _ 1 < M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 4 } ;  
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
 	 	 	 _ b l o c k s _ [ 2 4 ] . r u n ( 2 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   2 5   ( C h e c k   p r o f i t   ( P e r c e n t ) ( B u y / S e l l ) )  
 c l a s s   B l o c k 2 4 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 C o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 5 ] . r u n ( 2 4 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) v : : C u t _ L o s s _ p e r c e n t ;  
 	 }  
 } ;  
  
 / /   B l o c k   2 6   ( C l o s e   t r a d e s ( B u y / S e l l ) )  
 c l a s s   B l o c k 2 5 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 6 ] . r u n ( 2 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   2 7   ( D e l e t e   p e n d i n g   o r d e r s ( H E D G E ) )  
 c l a s s   B l o c k 2 6 :   p u b l i c   M D L _ D e l e t e P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 8 ] . r u n ( 2 6 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   2 8   ( T i m e   f i l t e r )  
 c l a s s   B l o c k 2 7 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 8 " ;  
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
 	 	 	 _ b l o c k s _ [ 3 0 ] . r u n ( 2 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   2 9   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 8 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - - - - - - -   R S I   S T O R M   -   M A X   D D   K I L L   S W I T C H E D   T R I G G E R E D   - - - - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 9 ] . r u n ( 2 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   3 0   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 2 9 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - - - - - - -   R S I   S T O R M   -   S T O P P I N G   T O D A Y   T O   R E S E T   M A X   D D   D A I L Y   - - - - - - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 2 ] . r u n ( 2 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   3 1   ( S E T   M A X   D D   =   T R U E )  
 c l a s s   B l o c k 3 0 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
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
 / /   B l o c k   3 2   ( S E T   M A X   D D   =   F A L S E )  
 c l a s s   B l o c k 3 1 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 0 3 , 1 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 V a l u e 1 . V a l u e   =   0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   { r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   { r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 3 _ ( )   { r e t u r n   V a l u e 3 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 4 _ ( )   { r e t u r n   V a l u e 4 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ V a l u e 5 _ ( )   { r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 7 ] . r u n ( 3 1 ) ;  
 	 	 	 _ b l o c k s _ [ 1 0 3 ] . r u n ( 3 1 ) ;  
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
 / /   B l o c k   3 3   ( P a s s )  
 c l a s s   B l o c k 3 2 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 3 " ;  
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
 	 	 	 _ b l o c k s _ [ 2 7 ] . r u n ( 3 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   3 4   ( S e t   \ " C u r r e n t   M a r k e t \ "   f o r   n e x t   b l o c k s )  
 c l a s s   B l o c k 3 3 :   p u b l i c   M D L _ S e t C u r r e n t S y m b o l 2 < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 3 4 ] . r u n ( 3 3 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 4 ] . r u n ( 3 3 ) ;  
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
 / /   B l o c k   3 5   ( C H E C K   I F   M A X   P R O F I T   W A S   H I T   T O D A Y )  
 c l a s s   B l o c k 3 4 :   p u b l i c   M D L _ C h e c k P r o f i t I n P e r i o d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , s t r i n g , d o u b l e , b o o l , i n t , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 3 5 , 4 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 T i m e 1   =   " 0 0 : 0 0 : 0 0 " ;  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 3 5 ] . r u n ( 3 4 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 6 ] . r u n ( 3 4 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 G r o u p   =   ( s t r i n g ) _ e x t e r n s : : i n p 3 5 _ G r o u p ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) c : : D A I L Y _ P R O F I T _ G O A L ;  
 	 }  
 } ;  
  
 / /   B l o c k   3 6   ( C H E C K   I F   M A X   D A I L Y   L O S S   W A S   H I T   T O D A Y )  
 c l a s s   B l o c k 3 5 :   p u b l i c   M D L _ C h e c k P r o f i t I n P e r i o d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , s t r i n g , d o u b l e , b o o l , i n t , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 4 , 4 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 T i m e 1   =   " 0 0 : 0 0 : 0 0 " ;  
 	 	 C o m p a r e   =   " < = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 4 ] . r u n ( 3 5 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 2 ] . r u n ( 3 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 G r o u p   =   ( s t r i n g ) _ e x t e r n s : : i n p 3 6 _ G r o u p ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) c : : D A I L Y _ L O S S _ G O A L ;  
 	 }  
 } ;  
  
 / /   B l o c k   3 7   ( C o m m e n t )  
 c l a s s   B l o c k 3 6 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t B a l a n c e , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t E q u i t y , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ a c c o u n t _ A c c o u n t P r o f i t , d o u b l e , i n t , i n t , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O b j T i t l e F o n t S i z e   =   1 4 ;  
 	 	 L a b e l 1   =   " B A L A N C E " ;  
 	 	 L a b e l 2   =   " E Q U I T Y " ;  
 	 	 L a b e l 3   =   " D R A W D O W N " ;  
 	 	 L a b e l 4   =   " B R O K E R   T I M E " ;  
 	 	 L a b e l 5   =   " V A L I D   L I C E N S E " ;  
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
 	 v i r t u a l   s t r i n g   _ V a l u e 5 _ ( )   {  
 	 	 V a l u e 5 . T e x t   =   v : : L _ C h e c k ;  
  
 	 	 r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 	 	 	 _ b l o c k s _ [ 3 7 ] . r u n ( 3 6 ) ;  
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
 / /   B l o c k   3 8   ( C o m m e n t )  
 c l a s s   B l o c k 3 7 :   p u b l i c   M D L _ C o m m e n t E x < s t r i n g , s t r i n g , i n t , i n t , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , c o l o r , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ b o o l e a n _ b o o l e a n , b o o l , i n t , i n t , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
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
 	 v i r t u a l   b o o l   _ V a l u e 5 _ ( )   {  
 	 	 V a l u e 5 . B o o l e a n   =   c : : T P _ S L _ E N A B L E D ;  
  
 	 	 r e t u r n   V a l u e 5 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 / /   B l o c k   3 9   ( C H A R T   G R I D   O F F )  
 c l a s s   B l o c k 3 8 :   p u b l i c   M D L _ C h a r t S e t P r o p e r t i e s < i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C h a r t S h o w G r i d   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 0 ] . r u n ( 3 8 ) ;  
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
 / /   B l o c k   4 0   ( P a s s )  
 c l a s s   B l o c k 3 9 :   p u b l i c   M D L _ P a s s  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 8 ] . r u n ( 3 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 1   ( M o d i f y   c h a r t   c o l o r s )  
 c l a s s   B l o c k 4 0 :   p u b l i c   M D L _ C h a r t S e t C o l o r s < c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 1 " ;  
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
 / /   B l o c k   4 2   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 1 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   R S I   S T O R M   -   D A I L Y   L O S S   W A S   R E A C H E D   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 3 ] . r u n ( 4 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 3   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 4 2 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 4 4 ] . r u n ( 4 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 4   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 3 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 4 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   R S I   S T O R M   -   W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 1   H O U R S   B R O K E R   T I M E   T O   R E S T A R T   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   4 5   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 4 4 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 1 ] . r u n ( 4 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 6   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 5 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   R S I   S T O R M   -   D A I L Y   P R O F I T   G O A L   W A S   R E A C H E D   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 7 ] . r u n ( 4 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 7   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 4 6 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 4 8 ] . r u n ( 4 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   4 8   ( L o g   m e s s a g e )  
 c l a s s   B l o c k 4 7 :   p u b l i c   M D L _ P r i n t M e s s a g e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 8 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 P r i n t T e x t   =   " - - - - - - - - - -   R S I   S T O R M   -   W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 1   H O U R S   B R O K E R   T I M E   T O   R E S T A R T   - - - - - - - - - - " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   4 9   ( C o u n t e r :   P a s s   o n c e )  
 c l a s s   B l o c k 4 8 :   p u b l i c   M D L _ P a s s O n c e < i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 5 ] . r u n ( 4 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   5 0   ( F o r   e a c h   T r a d e   ( L o t s   B u y ) )  
 c l a s s   B l o c k 4 9 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 L o o p D i r e c t i o n   =   " o l d e s t - t o - n e w e s t " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 0 ] . r u n ( 4 9 ) ;  
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
 / /   B l o c k   5 1   ( M o d i f y   V a r i a b l e s   ( L o t s   B u y ) )  
 c l a s s   B l o c k 5 0 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ i n l o o p _ O r d e r V o l u m e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   {  
 	 	 V a l u e 1 . M o d e V o l u m e   =   S E L _ C U R R E N T ;  
  
 	 	 r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 	 	 v : : L o t _ H e d g e   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 2   ( R S I   S e l l )  
 c l a s s   B l o c k 5 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : L o w e r _ L e v e l _ S e l l ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 7 ] . r u n ( 5 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   5 3   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 5 2 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 5 ] . r u n ( 5 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) P E R I O D _ H 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 4   ( F o r   e a c h   T r a d e   ( L o t s   S e l l ) )  
 c l a s s   B l o c k 5 3 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 	 L o o p D i r e c t i o n   =   " o l d e s t - t o - n e w e s t " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 4 ] . r u n ( 5 3 ) ;  
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
 / /   B l o c k   5 5   ( M o d i f y   V a r i a b l e s   ( L o t s   S e l l ) )  
 c l a s s   B l o c k 5 4 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ i n l o o p _ O r d e r V o l u m e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   {  
 	 	 V a l u e 1 . M o d e V o l u m e   =   S E L _ C U R R E N T ;  
  
 	 	 r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 	 	 v : : L o t _ H e d g e   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 6   ( S e l l   n o w )  
 c l a s s   B l o c k 5 5 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 3 } ;  
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
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 3 ] . r u n ( 5 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L O T S ;  
 	 	 S t o p L o s s M o d e   =   ( s t r i n g ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E _ L ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 7   ( I f   t r a d e   ( B u y ) )  
 c l a s s   B l o c k 5 6 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 2 ] . r u n ( 5 6 ) ;  
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
 / /   B l o c k   5 8   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 5 7 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 8 ] . r u n ( 5 7 ) ;  
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
 / /   B l o c k   5 9   ( C u r r e n t   P r i c e   B u y )  
 c l a s s   B l o c k 5 8 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 9 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 9 ] . r u n ( 5 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 0   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 5 9 :   p u b l i c   M D L _ F o r m u l a _ 2 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 9 } ;  
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
 	 	 L o . V a l u e   =   c : : H E D G E _ D I S T A N C E ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 9 ] . r u n ( 5 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 1   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 6 0 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 1 ] . r u n ( 6 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) P E R I O D _ H 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   6 2   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 6 1 :   p u b l i c   M D L _ F o r m u l a _ 3 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t _ H e d g e ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : H E D G E _ M U L T I P L I E R ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 3 ] . r u n ( 6 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 3   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 6 2 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 3 ] . r u n ( 6 2 ) ;  
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
 / /   B l o c k   6 4   ( C u r r e n t   P r i c e   B u y )  
 c l a s s   B l o c k 6 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 4 } ;  
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
 	 	 	 _ b l o c k s _ [ 6 4 ] . r u n ( 6 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 5   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 6 4 :   p u b l i c   M D L _ F o r m u l a _ 4 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 0 } ;  
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
 	 	 L o . V a l u e   =   c : : H E D G E _ D I S T A N C E ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 0 ] . r u n ( 6 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 6   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   B u y 2 ) )  
 c l a s s   B l o c k 6 5 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ P E R I O D ;  
 	 	 I n d i c a t o r . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d U p p e r L e v e l _ ( )   { r e t u r n   d U p p e r L e v e l . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d L o w e r L e v e l _ ( )   { r e t u r n   d L o w e r L e v e l . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 6 ] . r u n ( 6 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C a n d l e s P e r i o d   =   ( i n t ) c : : H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 	 U p p e r L e v e l   =   ( d o u b l e ) c : : U p p e r _ L e v e l _ B u y ;  
 	 	 L o w e r L e v e l   =   ( d o u b l e ) c : : L o w e r _ L e v e l _ B u y ;  
 	 }  
 } ;  
  
 / /   B l o c k   6 7   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 6 6 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 7 ] . r u n ( 6 6 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) P E R I O D _ H 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   6 8   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 6 7 :   p u b l i c   M D L _ F o r m u l a _ 5 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t _ H e d g e ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   v : : H M _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 6 ] . r u n ( 6 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   6 9   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 6 8 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 	 L o o p L i m i t   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 9 ] . r u n ( 6 8 ) ;  
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
 / /   B l o c k   7 0   ( C u r r e n t   P r i c e   S e l l )  
 c l a s s   B l o c k 6 9 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 0 } ;  
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
 	 	 	 _ b l o c k s _ [ 7 0 ] . r u n ( 6 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 1   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 7 0 :   p u b l i c   M D L _ F o r m u l a _ 6 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 3 } ;  
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
 	 	 L o . V a l u e   =   c : : H E D G E _ D I S T A N C E ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 3 ] . r u n ( 7 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 2   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   S e l l 1 ) )  
 c l a s s   B l o c k 7 1 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ P E R I O D ;  
 	 	 I n d i c a t o r . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d U p p e r L e v e l _ ( )   { r e t u r n   d U p p e r L e v e l . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d L o w e r L e v e l _ ( )   { r e t u r n   d L o w e r L e v e l . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 2 ] . r u n ( 7 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C a n d l e s P e r i o d   =   ( i n t ) c : : H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 	 U p p e r L e v e l   =   ( d o u b l e ) c : : U p p e r _ L e v e l _ S e l l ;  
 	 	 L o w e r L e v e l   =   ( d o u b l e ) c : : L o w e r _ L e v e l _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 3   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 7 2 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 3 ] . r u n ( 7 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) P E R I O D _ H 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 4   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 7 3 :   p u b l i c   M D L _ F o r m u l a _ 7 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t _ H e d g e ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : H E D G E _ M U L T I P L I E R ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 2 ] . r u n ( 7 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 5   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 7 4 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
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
 / /   B l o c k   7 6   ( C u r r e n t   P r i c e   S e l l )  
 c l a s s   B l o c k 7 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 6 } ;  
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
 	 	 	 _ b l o c k s _ [ 7 6 ] . r u n ( 7 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 7   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 7 6 :   p u b l i c   M D L _ F o r m u l a _ 8 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 7 } ;  
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
 	 	 L o . V a l u e   =   c : : H E D G E _ D I S T A N C E ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 7 ] . r u n ( 7 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 8   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   S e l l 2 ) )  
 c l a s s   B l o c k 7 7 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ P E R I O D ;  
 	 	 I n d i c a t o r . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d U p p e r L e v e l _ ( )   { r e t u r n   d U p p e r L e v e l . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d L o w e r L e v e l _ ( )   { r e t u r n   d L o w e r L e v e l . _ e x e c u t e _ ( ) ; }  
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
 	 	 C a n d l e s P e r i o d   =   ( i n t ) c : : H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 	 U p p e r L e v e l   =   ( d o u b l e ) c : : U p p e r _ L e v e l _ S e l l ;  
 	 	 L o w e r L e v e l   =   ( d o u b l e ) c : : L o w e r _ L e v e l _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 9   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 7 8 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 9 ] . r u n ( 7 8 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) P E R I O D _ H 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 0   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 7 9 :   p u b l i c   M D L _ F o r m u l a _ 9 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t _ H e d g e ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   v : : H M _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 4 ] . r u n ( 7 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 1   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   S e l l 1 ) )  
 c l a s s   B l o c k 8 0 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ P E R I O D ;  
 	 	 I n d i c a t o r . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 I n d i c a t o r . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 I n d i c a t o r . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   I n d i c a t o r . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ d U p p e r L e v e l _ ( )   { r e t u r n   d U p p e r L e v e l . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d L o w e r L e v e l _ ( )   { r e t u r n   d L o w e r L e v e l . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 0 ] . r u n ( 8 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C a n d l e s P e r i o d   =   ( i n t ) c : : H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 	 U p p e r L e v e l   =   ( d o u b l e ) c : : U p p e r _ L e v e l _ B u y ;  
 	 	 L o w e r L e v e l   =   ( d o u b l e ) c : : L o w e r _ L e v e l _ B u y ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 2   ( R S I   S e l l )  
 c l a s s   B l o c k 8 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : U p p e r _ L e v e l _ B u y ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 6 ] . r u n ( 8 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 3   ( B u y   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 8 2 :   p u b l i c   M D L _ B u y P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M y C o m m e n t   =   " H S 1 " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   { r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
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
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t _ H e d g e ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 4   ( S e l l   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 8 3 :   p u b l i c   M D L _ S e l l P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M y C o m m e n t   =   " H B 1 " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   { r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
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
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t _ H e d g e ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 5   ( S e l l   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 8 4 :   p u b l i c   M D L _ S e l l P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M y C o m m e n t   =   " H S 2 " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   { r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
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
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t _ H e d g e ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 6   ( C h e c k   t r a d e s   c o u n t   ( O r d e r   2 - 4 ) )  
 c l a s s   B l o c k 8 5 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 0 0 , 1 0 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < = " ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 0 0 ] . r u n ( 8 5 ) ;  
 	 	 	 _ b l o c k s _ [ 1 0 1 ] . r u n ( 8 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C o m p a r e C o u n t   =   ( i n t ) c : : T O T A L _ M A X _ P A R A L L E L _ T R A D E S ;  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 7   ( B u y   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 8 6 :   p u b l i c   M D L _ B u y P e n d i n g < s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , i n t , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M y C o m m e n t   =   " H B 2 " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d P r i c e _ ( )   { r e t u r n   d P r i c e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
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
 	 	 P r i c e O f f s e t   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t _ H e d g e ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 8   ( N o   p e n d i n g   o r d e r   n e a r b y )  
 c l a s s   B l o c k 8 7 :   p u b l i c   M D L _ N o N e a r b y O r d e r < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 	 R a n g e P o s i t i o n   =   2 ;  
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
 	 	 	 _ b l o c k s _ [ 7 7 ] . r u n ( 8 7 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 9   ( I f   t r a d e   ( S e l l ) )  
 c l a s s   B l o c k 8 8 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 1 ] . r u n ( 8 8 ) ;  
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
 / /   B l o c k   9 0   ( N o   p e n d i n g   o r d e r   n e a r b y )  
 c l a s s   B l o c k 8 9 :   p u b l i c   M D L _ N o N e a r b y O r d e r < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 	 M o d e R a n g e   =   " f r a c t i o n " ;  
 	 	 R a n g e P o s i t i o n   =   2 ;  
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
 	 	 	 _ b l o c k s _ [ 8 0 ] . r u n ( 8 9 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 R a n g e F r a c t i o n   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 1   ( N o   p e n d i n g   o r d e r   n e a r b y )  
 c l a s s   B l o c k 9 0 :   p u b l i c   M D L _ N o N e a r b y O r d e r < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 M o d e R a n g e   =   " f r a c t i o n " ;  
 	 	 R a n g e P o s i t i o n   =   2 ;  
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
 	 	 	 _ b l o c k s _ [ 6 5 ] . r u n ( 9 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 	 R a n g e F r a c t i o n   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 2   ( N o   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 9 1 :   p u b l i c   M D L _ N o P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 6 8 , 7 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 8 ] . r u n ( 9 1 ) ;  
 	 	 	 _ b l o c k s _ [ 7 4 ] . r u n ( 9 1 ) ;  
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
 / /   B l o c k   9 3   ( N o   p e n d i n g   o r d e r )  
 c l a s s   B l o c k 9 2 :   p u b l i c   M D L _ N o P e n d i n g O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 5 7 , 6 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 7 ] . r u n ( 9 2 ) ;  
 	 	 	 _ b l o c k s _ [ 6 2 ] . r u n ( 9 2 ) ;  
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
 / /   B l o c k   9 4   ( N o   p e n d i n g   o r d e r   n e a r b y )  
 c l a s s   B l o c k 9 3 :   p u b l i c   M D L _ N o N e a r b y O r d e r < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 	 R a n g e P o s i t i o n   =   2 ;  
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
 	 	 	 _ b l o c k s _ [ 7 1 ] . r u n ( 9 3 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 R a n g e P i p s   =   ( d o u b l e ) v : : D i s t a n c e _ B u y _ S e l l ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 5   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 9 4 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 5 ] . r u n ( 9 4 ) ;  
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
 / /   B l o c k   9 6   ( B u y   n o w )  
 c l a s s   B l o c k 9 5 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 9 } ;  
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
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 9 ] . r u n ( 9 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L O T S ;  
 	 	 S t o p L o s s P i p s   =   ( d o u b l e ) v : : S L ;  
 	 	 T a k e P r o f i t P i p s   =   ( d o u b l e ) v : : T P ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) v : : E A _ N A M E _ L ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 7   ( M A C D )  
 c l a s s   B l o c k 9 6 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ S _ 1 ;  
 	 	 L o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ S _ 1 ;  
 	 	 L o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ S _ 1 ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 L o . S h i f t   =   c : : M A C D _ C _ S _ 1 ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ S _ 1 ;  
 	 	 R o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ S _ 1 ;  
 	 	 R o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ S _ 1 ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 R o . S h i f t   =   c : : M A C D _ C _ S _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 8 ] . r u n ( 9 6 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 8   ( M A C D )  
 c l a s s   B l o c k 9 7 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ B _ 1 ;  
 	 	 L o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ B _ 1 ;  
 	 	 L o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ B _ 1 ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 L o . S h i f t   =   c : : M A C D _ C _ B _ 1 ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ B _ 1 ;  
 	 	 R o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ B _ 1 ;  
 	 	 R o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ B _ 1 ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 R o . S h i f t   =   c : : M A C D _ C _ B _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 9 ] . r u n ( 9 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 9   ( M A C D )  
 c l a s s   B l o c k 9 8 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 9 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ S _ 1 ;  
 	 	 L o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ S _ 1 ;  
 	 	 L o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ S _ 1 ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 L o . S h i f t   =   c : : M A C D _ C _ S _ 1 ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ S _ 1 ;  
 	 	 R o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ S _ 1 ;  
 	 	 R o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ S _ 1 ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 R o . S h i f t   =   c : : M A C D _ C _ S _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 4 ] . r u n ( 9 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 0   ( M A C D )  
 c l a s s   B l o c k 9 9 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , s t r i n g , M D L I C _ i n d i c a t o r s _ i M A C D , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x > " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ B _ 1 ;  
 	 	 L o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ B _ 1 ;  
 	 	 L o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ B _ 1 ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 L o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 L o . S h i f t   =   c : : M A C D _ C _ B _ 1 ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . F a s t E M A p e r i o d   =   c : : M A C D _ F _ E _ B _ 1 ;  
 	 	 R o . S l o w E M A p e r i o d   =   c : : M A C D _ S _ E _ B _ 1 ;  
 	 	 R o . S i g n a l P e r i o d   =   c : : M A C D _ S I G _ B _ 1 ;  
 	 	 R o . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 R o . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . P e r i o d   =   P E R I O D _ H 1 ;  
 	 	 R o . S h i f t   =   c : : M A C D _ C _ B _ 2 ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 2 ] . r u n ( 9 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 1   ( B U Y   P O S I T I O N   C O U N T & l t ; =   T H E N   X )  
 c l a s s   B l o c k 1 0 0 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < = " ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 8 1 ] . r u n ( 1 0 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C o m p a r e C o u n t   =   ( i n t ) c : : M A X _ P A R A L E L L _ T R A D E S _ B U Y ;  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 2   ( B U Y   P O S I T I O N   C O U N T & l t ; =   T H E N   X )  
 c l a s s   B l o c k 1 0 1 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < = " ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 1 ] . r u n ( 1 0 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 C o m p a r e C o u n t   =   ( i n t ) c : : M A X _ P A R A L E L L _ T R A D E S _ S E L L ;  
 	 	 S y m b o l   =   ( s t r i n g ) c : : S Y M B O L S ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 3   ( S E T _ T P - S L )  
 c l a s s   B l o c k 1 0 2 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ v a l u e _ p o i n t s , d o u b l e , i n t , M D L I C _ v a l u e _ p o i n t s , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ V a l u e 1 _ ( )   {  
 	 	 V a l u e 1 . V a l u e   =   _ e x t e r n s : : i n p 1 0 3 _ V a l u e 1 _ V a l u e ;  
 	 	 V a l u e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   V a l u e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ V a l u e 2 _ ( )   {  
 	 	 V a l u e 2 . V a l u e   =   _ e x t e r n s : : i n p 1 0 3 _ V a l u e 2 _ V a l u e ;  
 	 	 V a l u e 2 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   V a l u e 2 . _ e x e c u t e _ ( ) ;  
 	 }  
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
 	 	 v : : S L   =   _ V a l u e 1 _ ( ) ;  
 	 	 v : : T P   =   _ V a l u e 2 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 4   ( C o n d i t i o n )  
 c l a s s   B l o c k 1 0 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ b o o l e a n _ b o o l e a n , b o o l , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 0 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   b o o l   _ L o _ ( )   {  
 	 	 L o . B o o l e a n   =   c : : T P _ S L _ E N A B L E D ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 0 2 ] . r u n ( 1 0 3 ) ;  
 	 	 }  
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
 d o u b l e   A c c o u n t B a l a n c e ( ) 
 { 
 	 r e t u r n   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ B A L A N C E ) ,   2 ) ; 
 }  
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
 d o u b l e   A c c o u n t E q u i t y ( ) 
 { 
 	 r e t u r n   A c c o u n t I n f o D o u b l e ( A C C O U N T _ E Q U I T Y ) ; 
 }  
  
 d o u b l e   A c c o u n t F r e e M a r g i n ( ) 
 { 
 	 r e t u r n   A c c o u n t I n f o D o u b l e ( A C C O U N T _ F R E E M A R G I N ) ; 
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
 	 
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
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P _ L I M I T 
 	 	 ) 
 	 { 
 	 	 b s   =   - 1 ; 
 	 } 
 
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 d o u b l e   a s k b i d   =   p r i c e ; 
 	 d o u b l e   b i d a s k   =   p r i c e ; 
 
 	 i f   ( t y p e   <   2 ) 
 	 { 
 	 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 
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
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P _ L I M I T 
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
 
 	 i f   ( s i z e   >   0 ) 
 	 { 
 	 	 i f   ( I n A r r a y ( a r r a y ,   v a l u e ) ) 
 	 	 { 
 	 	 	 / /   v a l u e   f o u n d   - >   e x i t 
 	 	 	 r e t u r n   f a l s e ;   / /   n o   v a l u e   a d d e d 
 	 	 } 
 	 } 
 
 	 / /   v a l u e   d o e s   n o t   e x i s t s   - >   a d d   i t 
 	 A r r a y R e s i z e ( a r r a y ,   s i z e + 1 ) ; 
 	 a r r a y [ s i z e ]   =   v a l u e ; 
 
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
 	 	 	 i f   ( s i z e   = =   1 ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ; 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ; 
 	 	 	 } 
 	 	 	 e l s e   i f   ( s i z e   = =   2 ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ 1 ] ) ; 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ; 
 	 	 	 } 
 	 	 	 e l s e   i f   ( s i z e   >   2 ) 
 	 	 	 { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ) ; 
 
 	 	 	 	 / /   C a n c e l   t h e   f i r s t   a n d   t h e   l a s t   n u m b e r   i n   t h e   l i s t 
 	 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t 
 	 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + ) 
 	 	 	 	 { 
 	 	 	 	 	 l i s t [ p o s ]   =   l i s t [ p o s + 1 ] ; 
 	 	 	 	 } 
 
 	 	 	 	 / /   r e m o v e   l a s t   2   e l e m e n t s 	 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t )   -   2 ) ; 	 
 	 	 	 } 
 
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( s i z e   >   1 ) 
 	 	 	 { 
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   s i z e + 1 ) ; 
 
 	 	 	 	 l i s t [ s i z e ]   =   l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ; 
 	 	 	 	 l o t s               =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e ] ) ; 
 	 	 	 } 
 	 	 	 e l s e   { 
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ; 
 	 	 	 } 
 
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; } 
 	 	 } 
 	 } 
 
 	 P r i n t ( " L a b o u c h e r e   ( f o r   g r o u p   " 
 	 	 +   ( s t r i n g ) i d 
 	 	 +   " )   c u r r e n t   l i s t   o f   n u m b e r s : " 
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
 l o n g   B u y L a t e r ( 
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
 	 E N U M _ O R D E R _ T Y P E   t y p e   =   0 ; 
 
 	           i f   ( p r i c e   = =   a s k )   { t y p e   =   O R D E R _ T Y P E _ B U Y ; } 
 	 e l s e   i f   ( p r i c e   <   a s k )     { t y p e   =   O R D E R _ T Y P E _ B U Y _ L I M I T ; } 
 	 e l s e   i f   ( p r i c e   >   a s k )     { t y p e   =   O R D E R _ T Y P E _ B U Y _ S T O P ; } 
 
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
 l o n g   B u y N o w ( 
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
 	 	 P O S I T I O N _ T Y P E _ B U Y , 
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
 i n t   C h e c k F o r T r a d i n g E r r o r ( i n t   e r r o r _ c o d e = - 1 ,   s t r i n g   m s g _ p r e f i x = " " )  
 {  
       / /   r e t u r n   0   - >   n o   e r r o r  
       / /   r e t u r n   1   - >   o v e r c o m a b l e   e r r o r  
       / /   r e t u r n   2   - >   f a t a l   e r r o r  
        
       i n t   r e t v a l = 0 ;  
       s t a t i c   i n t   t r y o u t s = 0 ;  
        
       / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
       s w i t c h ( e r r o r _ c o d e )  
       {  
             / / - -   n o   e r r o r  
             c a s e   0 :  
                   r e t v a l = 0 ;  
                   b r e a k ;  
             / / - -   o v e r c o m a b l e   e r r o r s  
             c a s e   T R A D E _ R E T C O D E _ R E Q U O T E :  
             c a s e   T R A D E _ R E T C O D E _ R E J E C T :  
             c a s e   T R A D E _ R E T C O D E _ E R R O R :  
             c a s e   T R A D E _ R E T C O D E _ T I M E O U T :  
             c a s e   T R A D E _ R E T C O D E _ I N V A L I D _ V O L U M E :  
             c a s e   T R A D E _ R E T C O D E _ I N V A L I D _ P R I C E :  
             c a s e   T R A D E _ R E T C O D E _ I N V A L I D _ S T O P S :  
             c a s e   T R A D E _ R E T C O D E _ I N V A L I D _ E X P I R A T I O N :  
             c a s e   T R A D E _ R E T C O D E _ P R I C E _ C H A N G E D :  
             c a s e   T R A D E _ R E T C O D E _ P R I C E _ O F F :  
             c a s e   T R A D E _ R E T C O D E _ T O O _ M A N Y _ R E Q U E S T S :  
             c a s e   T R A D E _ R E T C O D E _ N O _ C H A N G E S :  
             c a s e   T R A D E _ R E T C O D E _ C O N N E C T I O N :  
                   r e t v a l = 1 ;  
                   b r e a k ;  
             / / - -   c r i t i c a l   e r r o r s  
             d e f a u l t :  
                   r e t v a l = 2 ;  
                   b r e a k ;  
       }  
        
       i f   ( e r r o r _ c o d e   >   0 )  
       {  
             s t r i n g   m s g   =   " " ;  
             i f   ( r e t v a l   = =   1 )  
             {  
                   S t r i n g C o n c a t e n a t e ( m s g ,   m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g   i n   5   s e c o n d s . . " ) ;  
                   S l e e p ( 5 0 0 ) ;    
             }  
             e l s e   i f   ( r e t v a l   = =   2 )  
             {  
                   S t r i n g C o n c a t e n a t e ( m s g ,   m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) ) ;  
             }  
             P r i n t ( m s g ) ;  
       }  
        
       i f   ( r e t v a l = = 0 )  
       {  
             t r y o u t s = 0 ;  
       }  
       e l s e   i f   ( r e t v a l = = 1 )  
       {  
             t r y o u t s + + ;  
             i f   ( t r y o u t s > = 1 0 )  
             {  
                   t r y o u t s = 0 ;  
                   r e t v a l = 2 ;  
             }  
             e l s e  
             {  
                   P r i n t ( " r e t r y   # " + ( s t r i n g ) t r y o u t s + "   o f   1 0 " ) ;  
             }  
       }  
        
       r e t u r n ( r e t v a l ) ;  
 }  
  
 b o o l   C l o s e T r a d e ( u l o n g   t i c k e t ,   u l o n g   d e v i a t i o n   =   0 ,   c o l o r   c l r   =   c l r N O N E ) 
 { 
 	 w h i l e ( t r u e ) 
 	 { 
 	 	 b o o l   s u c c e s s   =   f a l s e ; 
 
 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ) 
 	 	 { 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 s t r i n g   s y m b o l   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ; 
 	 	 l o n g   m a g i c         =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ; 
 	 	 d o u b l e   v o l u m e   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ; 
 
 	 	 / /   W i t h   s o m e   C F D   w e   c a n   o p e n   p o s i t i o n   w i t h   t h e   m a x   v o l u m e   m o r e   t h a n   o n c e , 
 	 	 / /   s o   w e   g e t   a   p o s i t i o n   t h a t   h a s   v o l u m e   b i g g e r   t h a n   t h e   m a x i m u m . 
 	 	 / /   T h e n   w e   c a n n o t   c l o s e   t h a t   p o s i t i o n ,   b e c a u s e   t h e   v o l u m e   i s   t o o   h i g h . 
 	 	 / /   F o r   t h a t   r e a s o n   h e r e   w e   w i l l   c l o s e   i t   i n   p a r t s . 
 	 	 d o u b l e   m a x _ v o l u m e     =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ; 
 	 	 d o u b l e   p a r t _ v o l u m e   =   ( v o l u m e   >   m a x _ v o l u m e )   ?   m a x _ v o l u m e   :   v o l u m e ; 
 
 	 	 / / - -   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ; 
 	 	 M q l T r a d e R e s u l t   r e s u l t ; 
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ; 
 	 	 Z e r o M e m o r y ( r e q u e s t ) ; 
 	 	 Z e r o M e m o r y ( r e s u l t ) ; 
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ; 
 
 	 	 i f ( ( E N U M _ P O S I T I O N _ T Y P E ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y ) 
 	 	 { 
 	 	 	 / / - - -   p r e p a r e   r e q u e s t   f o r   c l o s e   B U Y   p o s i t i o n 
 	 	 	 r e q u e s t . t y p e     =   O R D E R _ T Y P E _ S E L L ; 
 	 	 	 r e q u e s t . p r i c e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 / / - - -   p r e p a r e   r e q u e s t   f o r   c l o s e   S E L L   p o s i t i o n 
 	 	 	 r e q u e s t . t y p e     =   O R D E R _ T Y P E _ B U Y ; 
 	 	 	 r e q u e s t . p r i c e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 } 
 
 	 	 r e q u e s t . a c t i o n         =   T R A D E _ A C T I O N _ D E A L ; 
 	 	 r e q u e s t . s y m b o l         =   s y m b o l ; 
 	 	 r e q u e s t . v o l u m e         =   p a r t _ v o l u m e ; 
 	 	 r e q u e s t . m a g i c           =   m a g i c ; 
 	 	 r e q u e s t . d e v i a t i o n   =   ( i n t ) ( d e v i a t i o n   *   P i p V a l u e ( s y m b o l ) ) ; 
 
 	 	 / /   f o r   h e d g i n g   m o d e 
 	 	 r e q u e s t . p o s i t i o n     =   t i c k e t ; 
 
 	 	 / /   f i l l i n g   t y p e 
 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ F O K ) ) 
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ; 
 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ I O C ) ) 
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ; 
 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) )   / /   j u s t   i n   c a s e 
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ; 
 	 	 e l s e 
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ; 
 
 	 	 s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ; 
 
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( ! s u c c e s s   | |   ( r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E   & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ P L A C E D   & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L ) ) 
 	 	 { 
 	 	 	 s t r i n g   e r r m s g p f x   =   " C l o s i n g   p o s i t i o n / t r a d e   e r r o r " ; 
 
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ; 
 
 	 	 	 s w i t c h ( e r r a c t i o n ) 
 	 	 	 { 
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 	 } 
 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 	 	 
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E   | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ P L A C E D ) 
 	 	 { 
 	 	 	 / /   w e   a r e   c l o s i n g   t h e   p o s i t i o n   i n   p a r t s ? 
 	 	 	 i f   ( v o l u m e   ! =   p a r t _ v o l u m e ) 
 	 	 	 { 
 	 	 	 	 c o n t i n u e ;   / /   c o n t i n u e   t h e   " w h i l e "   l o o p ,   s o   t h a t   t h e   w h o l e   v o l u m e   c o u l d   b e   c l o s e d 
 	 	 	 } 
 
 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 { 
 	 	 	     	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   | |   ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ) 
 	 	 	 	 { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( s u c c e s s   = =   t r u e ) 
 	 	 { 
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S ) 
 	 	 	 { 
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " c l e a r " ,   t i c k e t ) ; 
 	 	 	 } 
 
 	 	 	 e x p i r a t i o n W o r k e r . R e m o v e E x p i r a t i o n ( t i c k e t ) ; 
 	 	 } 
 	 	 
 	 	 b r e a k ; 
 	 } 
 	 
 	 O n T r a d e ( ) ; 
 
 	 r e t u r n   t r u e ; 
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
 E N U M _ T I M E F R A M E S   C u r r e n t T i m e f r a m e ( E N U M _ T I M E F R A M E S   t f = - 1 )  
 {  
       s t a t i c   E N U M _ T I M E F R A M E S   m e m o r y = 0 ;  
       i f   ( t f > = 0 )   { m e m o r y = t f ; }  
       r e t u r n ( m e m o r y ) ;  
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
       w h i l e ( t r u e ) 
       { 
             M q l T r a d e R e q u e s t   r e q u e s t ; 
             M q l T r a d e R e s u l t   r e s u l t ; 
             M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ; 
             Z e r o M e m o r y ( r e q u e s t ) ; 
             Z e r o M e m o r y ( r e s u l t ) ; 
             Z e r o M e m o r y ( c h e c k _ r e s u l t ) ; 
       
             r e q u e s t . o r d e r = t i c k e t ; 
             r e q u e s t . a c t i o n = T R A D E _ A C T I O N _ R E M O V E ; 
             r e q u e s t . c o m m e n t = " P e n d i n g   o r d e r   c a n c e l e d " ; 
       
             i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) )     { 
                   P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   " + ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t + "   ( " + ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e + " ) " ) ; 
                   r e t u r n   f a l s e ; 
             } 
             
             b o o l   s u c c e s s   =   O r d e r S e n d ( r e q u e s t , r e s u l t ) ; 
             
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i f   ( ! s u c c e s s   | |   r e s u l t . r e t c o d e ! = T R A D E _ R E T C O D E _ D O N E ) 
             { 
                   s t r i n g   e r r m s g p f x = " D e l e t e   o r d e r   e r r o r " ; 
                   i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ; 
                   s w i t c h ( e r r a c t i o n ) 
                   { 
                         c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                         c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                         c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
                   } 
                   r e t u r n ( f a l s e ) ; 
             } 
             
             / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i f   ( r e s u l t . r e t c o d e = = T R A D E _ R E T C O D E _ D O N E ) 
             { 
                   / / = =   W a i t   u n t i l   M T 5   u p d a t e s   i t ' s   c a c h e 
                   i n t   w ; 
                   f o r   ( w = 0 ;   w < 5 0 0 0 ;   w + + ) 
                   { 
                         i f   ( ! O r d e r S e l e c t ( t i c k e t ) )   { b r e a k ; } 
                         S l e e p ( 1 ) ; 
                   } 
                   i f   ( w = = 5 0 0 0 )   { 
                         P r i n t ( " C h e c k   e r r o r :   D e l e t e   o r d e r " ) ;     
                   } 
                   i f   ( O r d e r S e l e c t ( t i c k e t ) )   { 
                         P r i n t ( " S o m e t h i n g   w e n t   w r o n g   w i t h   t h e   o r d e r " ) ; 
                         r e t u r n   f a l s e ; 
                   } 
             } 
 	 	 
 	 	 i f   ( s u c c e s s = = t r u e )   { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         V i r t u a l S t o p s D r i v e r ( " c l e a r " , t i c k e t ) ; 
                   } 
                   / / R e g i s t e r E v e n t ( " t r a d e " ) ; 
                   / / r e t u r n ( t r u e ) ; 
             } 
 	 	 
             b r e a k ; 
       } 
       O n T r a d e ( ) ; 
       r e t u r n ( t r u e ) ; 
 }  
  
 s t r i n g   D o u b l e T o S t r ( d o u b l e   d ,   i n t   d i g ) { r e t u r n ( D o u b l e T o S t r i n g ( d , d i g ) ) ; }  
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
 d o u b l e   D y n a m i c L o t s ( s t r i n g   s y m b o l ,   s t r i n g   m o d e = " b a l a n c e " ,   d o u b l e   v a l u e = 0 ,   d o u b l e   s l = 0 ,   s t r i n g   a l i g n = " a l i g n " ) 
 { 
       d o u b l e   s i z e = 0 ; 
       d o u b l e   L o t S t e p = S y m b o l L o t S t e p ( s y m b o l ) ; 
       d o u b l e   L o t S i z e = S y m b o l L o t S i z e ( s y m b o l ) ; 
       d o u b l e   M i n L o t s = S y m b o l M i n L o t ( s y m b o l ) ; 
       d o u b l e   M a x L o t s = S y m b o l M a x L o t ( s y m b o l ) ; 
       d o u b l e   T i c k V a l u e = S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ T R A D E _ T I C K _ V A L U E ) ; 
       d o u b l e   m a r g i n _ r e q u i r e d = 0 ; 
       b o o l   o c m   =   O r d e r C a l c M a r g i n ( O R D E R _ T Y P E _ B U Y , s y m b o l , 1 , a s k ( s y m b o l ) , m a r g i n _ r e q u i r e d ) ;   / /   T h i s   i s   t h e   M O D E _ M A R G I N R E Q U I R E D   a n a l o g   i n   M Q L 5 
       / / i f   ( v a l u e > M a x L o t s )   { v a l u e = v a l u e / L o t S i z e ; }   / /   M o n e y - t o - L o t   c o n v e r s i o n 
       
                 i f   ( m o d e = = " f i x e d "   | |   m o d e = = " l o t s " )   { s i z e = v a l u e ; } 
       e l s e   i f   ( m o d e = = " b l o c k - e q u i t y " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - b a l a n c e " )         { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - f r e e m a r g i n " )   { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " e q u i t y " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e " )         { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n " )   { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " e q u i t y R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e R i s k " ) { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R i s k " )       { s i z e = ( v a l u e ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R a t i o "   | |   m o d e = = " R J F R " )   {   
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
 	 	 
 	 i f   ( s i z e = = E M P T Y _ V A L U E )   { s i z e = 0 ; } 
       
       s t a t i c   b o o l   a l e r t _ m i n _ l o t s = f a l s e ; 
       i f   ( s i z e < M i n L o t s   & &   a l e r t _ m i n _ l o t s = = f a l s e )   { a l e r t _ m i n _ l o t s = t r u e ; 
             A l e r t ( " Y o u   w a n t   t o   t r a d e   " , s i z e , "   l o t ,   b u t   y o u r   b r o k e r ' s   m i n i m u m   i s   " , M i n L o t s , "   l o t .   T h e   t r a d e / o r d e r   w i l l   c o n t i n u e   w i t h   " , M i n L o t s , "   l o t   i n s t e a d   o f   " , s i z e , "   l o t .   T h e   s a m e   r u l e   w i l l   b e   a p p l i e d   f o r   n e x t   t r a d e s / o r d e r s   w i t h   d e s i r e d   l o t   s i z e   l o w e r   t h a n   t h e   m i n i m u m .   Y o u   w i l l   n o t   s e e   t h i s   m e s s a g e   a g a i n   u n t i l   y o u   r e s t a r t   t h e   p r o g r a m . " ) ; 
       } 
 
       s i z e = M a t h R o u n d ( s i z e / L o t S t e p ) * L o t S t e p ; 
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
 	 i f   ( e r r o r _ c o d e < 0 )   { e r r o r _ c o d e = G e t L a s t E r r o r ( ) ; } 
 	 
 
 	 s w i t c h ( e r r o r _ c o d e ) 
 	 { 
 	 	 / / - - -   s u c c e s s 
 	 	 c a s e   0 :   r e t u r n ( " T h e   o p e r a t i o n   c o m p l e t e d   s u c c e s s f u l l y " ) ; 
 	 	 
 	 	 / / - - -   R u n t i m e 
 	 	 c a s e   4 0 0 1 :   e   =   " U n e x p e c t e d   i n t e r n a l   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 2 :   e   =   " W r o n g   p a r a m e t e r   i n   t h e   i n n e r   c a l l   o f   t h e   c l i e n t   t e r m i n a l   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 0 3 :   e   =   " W r o n g   p a r a m e t e r   w h e n   c a l l i n g   t h e   s y s t e m   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 0 4 :   e   =   " N o t   e n o u g h   m e m o r y   t o   p e r f o r m   t h e   s y s t e m   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 0 5 :   e   =   " T h e   s t r u c t u r e   c o n t a i n s   o b j e c t s   o f   s t r i n g s   a n d / o r   d y n a m i c   a r r a y s   a n d / o r   s t r u c t u r e   o f   s u c h   o b j e c t s   a n d / o r   c l a s s e s " ;   b r e a k ; 
 	 	 c a s e   4 0 0 6 :   e   =   " A r r a y   o f   a   w r o n g   t y p e ,   w r o n g   s i z e ,   o r   a   d a m a g e d   o b j e c t   o f   a   d y n a m i c   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 0 7 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   r e l o c a t i o n   o f   a n   a r r a y ,   o r   a n   a t t e m p t   t o   c h a n g e   t h e   s i z e   o f   a   s t a t i c   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 0 8 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   r e l o c a t i o n   o f   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 9 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 1 0 :   e   =   " I n v a l i d   d a t e   a n d / o r   t i m e " ;   b r e a k ; 
 	 	 c a s e   4 0 1 1 :   e   =   " R e q u e s t e d   a r r a y   s i z e   e x c e e d s   2   G B " ;   b r e a k ; 
 	 	 c a s e   4 0 1 2 :   e   =   " W r o n g   p o i n t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 1 3 :   e   =   " W r o n g   t y p e   o f   p o i n t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 1 4 :   e   =   " S y s t e m   f u n c t i o n   i s   n o t   a l l o w e d   t o   c a l l " ;   b r e a k ; 
 	 	 c a s e   4 0 1 5 :   e   =   " T h e   n a m e s   o f   t h e   d y n a m i c   a n d   t h e   s t a t i c   r e s o u r c e   m a t c h " ;   b r e a k ; 
 	 	 c a s e   4 0 1 6 :   e   =   " R e s o u r c e   w i t h   t h i s   n a m e   h a s   n o t   b e e n   f o u n d   i n   E X 5 " ;   b r e a k ; 
 	 	 c a s e   4 0 1 7 :   e   =   " U n s u p p o r t e d   r e s o u r c e   t y p e   o r   i t s   s i z e   e x c e e d s   1 6   M b " ;   b r e a k ; 
 	 	 c a s e   4 0 1 8 :   e   =   " T h e   r e s o u r c e   n a m e   e x c e e d s   6 3   c h a r a c t e r s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   C h a r t s 
 	 	 c a s e   4 1 0 1 :   e   =   " W r o n g   c h a r t   I D " ;   b r e a k ; 
 	 	 c a s e   4 1 0 2 :   e   =   " C h a r t   d o e s   n o t   r e s p o n d " ;   b r e a k ; 
 	 	 c a s e   4 1 0 3 :   e   =   " C h a r t   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 1 0 4 :   e   =   " N o   E x p e r t   A d v i s o r   i n   t h e   c h a r t   t h a t   c o u l d   h a n d l e   t h e   e v e n t " ;   b r e a k ; 
 	 	 c a s e   4 1 0 5 :   e   =   " C h a r t   o p e n i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 1 0 6 :   e   =   " F a i l e d   t o   c h a n g e   c h a r t   s y m b o l   a n d   p e r i o d " ;   b r e a k ; 
 	 	 c a s e   4 1 0 7 :   e   =   " W r o n g   p a r a m e t e r   f o r   t i m e r " ;   b r e a k ; 
 	 	 c a s e   4 1 0 8 :   e   =   " F a i l e d   t o   c r e a t e   t i m e r " ;   b r e a k ; 
 	 	 c a s e   4 1 0 9 :   e   =   " W r o n g   c h a r t   p r o p e r t y   I D " ;   b r e a k ; 
 	 	 c a s e   4 1 1 0 :   e   =   " E r r o r   c r e a t i n g   s c r e e n s h o t s " ;   b r e a k ; 
 	 	 c a s e   4 1 1 1 :   e   =   " E r r o r   n a v i g a t i n g   t h r o u g h   c h a r t " ;   b r e a k ; 
 	 	 c a s e   4 1 1 2 :   e   =   " E r r o r   a p p l y i n g   t e m p l a t e " ;   b r e a k ; 
 	 	 c a s e   4 1 1 3 :   e   =   " S u b w i n d o w   c o n t a i n i n g   t h e   i n d i c a t o r   w a s   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 1 1 4 :   e   =   " E r r o r   a d d i n g   a n   i n d i c a t o r   t o   c h a r t " ;   b r e a k ; 
 	 	 c a s e   4 1 1 5 :   e   =   " E r r o r   d e l e t i n g   a n   i n d i c a t o r   f r o m   t h e   c h a r t " ;   b r e a k ; 
 	 	 c a s e   4 1 1 6 :   e   =   " I n d i c a t o r   n o t   f o u n d   o n   t h e   s p e c i f i e d   c h a r t " ;   b r e a k ; 
 
 	 	 / / - -   G r a p h i c a l   O b j e c t s 
 	 	 c a s e   4 2 0 1 :   e   =   " E r r o r   w o r k i n g   w i t h   a   g r a p h i c a l   o b j e c t " ;   b r e a k ; 
 	 	 c a s e   4 2 0 2 :   e   =   " G r a p h i c a l   o b j e c t   w a s   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 0 3 :   e   =   " W r o n g   I D   o f   a   g r a p h i c a l   o b j e c t   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 2 0 4 :   e   =   " U n a b l e   t o   g e t   d a t e   c o r r e s p o n d i n g   t o   t h e   v a l u e " ;   b r e a k ; 
 	 	 c a s e   4 2 0 5 :   e   =   " U n a b l e   t o   g e t   v a l u e   c o r r e s p o n d i n g   t o   t h e   d a t e " ;   b r e a k ; 
 
 	 	 / / - -   M a r k e t   I n f o 
 	 	 c a s e   4 3 0 1 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ; 
 	 	 c a s e   4 3 0 2 :   e   =   " S y m b o l   i s   n o t   s e l e c t e d   i n   M a r k e t W a t c h " ;   b r e a k ; 
 	 	 c a s e   4 3 0 3 :   e   =   " W r o n g   i d e n t i f i e r   o f   a   s y m b o l   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 3 0 4 :   e   =   " T i m e   o f   t h e   l a s t   t i c k   i s   n o t   k n o w n   ( n o   t i c k s ) " ;   b r e a k ; 
 	 	 c a s e   4 3 0 5 :   e   =   " E r r o r   a d d i n g   o r   d e l e t i n g   a   s y m b o l   i n   M a r k e t W a t c h " ;   b r e a k ; 
 
 	 	 / / - -   H i s t o r y   A c c e s s 
 	 	 c a s e   4 4 0 1 :   e   =   " R e q u e s t e d   h i s t o r y   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 4 0 2 :   e   =   " W r o n g   I D   o f   t h e   h i s t o r y   p r o p e r t y " ;   b r e a k ; 
 
 	 	 / / - -   G l o b a l   V a r i a b l e s 
 	 	 c a s e   4 5 0 1 :   e   =   " G l o b a l   v a r i a b l e   o f   t h e   c l i e n t   t e r m i n a l   i s   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 5 0 2 :   e   =   " G l o b a l   v a r i a b l e   o f   t h e   c l i e n t   t e r m i n a l   w i t h   t h e   s a m e   n a m e   a l r e a d y   e x i s t s " ;   b r e a k ; 
 	 	 c a s e   4 5 1 0 :   e   =   " E m a i l   s e n d i n g   f a i l e d " ;   b r e a k ; 
 	 	 c a s e   4 5 1 1 :   e   =   " S o u n d   p l a y i n g   f a i l e d " ;   b r e a k ; 
 	 	 c a s e   4 5 1 2 :   e   =   " W r o n g   i d e n t i f i e r   o f   t h e   p r o g r a m   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 5 1 3 :   e   =   " W r o n g   i d e n t i f i e r   o f   t h e   t e r m i n a l   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 5 1 4 :   e   =   " F i l e   s e n d i n g   v i a   f t p   f a i l e d " ;   b r e a k ; 
 	 	 c a s e   4 5 1 5 :   e   =   " F a i l e d   t o   s e n d   a   n o t i f i c a t i o n " ;   b r e a k ; 
 	 	 c a s e   4 5 1 6 :   e   =   " I n v a l i d   p a r a m e t e r   f o r   s e n d i n g   a   n o t i f i c a t i o n   -   a n   e m p t y   s t r i n g   o r   N U L L   h a s   b e e n   p a s s e d   t o   t h e   S e n d N o t i f i c a t i o n ( )   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 5 1 7 :   e   =   " W r o n g   s e t t i n g s   o f   n o t i f i c a t i o n s   i n   t h e   t e r m i n a l   ( I D   i s   n o t   s p e c i f i e d   o r   p e r m i s s i o n   i s   n o t   s e t ) " ;   b r e a k ; 
 	 	 c a s e   4 5 1 8 :   e   =   " T o o   f r e q u e n t   s e n d i n g   o f   n o t i f i c a t i o n s " ;   b r e a k ; 
 
 	 	 / / - -   C u s t o m   I n d i c a t o r   B u f f e r s 
 	 	 c a s e   4 6 0 1 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   d i s t r i b u t i o n   o f   i n d i c a t o r   b u f f e r s " ;   b r e a k ; 
 	 	 c a s e   4 6 0 2 :   e   =   " W r o n g   i n d i c a t o r   b u f f e r   i n d e x " ;   b r e a k ; 
 
 	 	 / / - -   C u s t o m   I n d i c a t o r   P r o p e r t i e s 
 	 	 c a s e   4 6 0 3 :   e   =   " W r o n g   I D   o f   t h e   c u s t o m   i n d i c a t o r   p r o p e r t y " ;   b r e a k ; 
 
 	 	 / / - -   A c c o u n t 
 	 	 c a s e   4 7 0 1 :   e   =   " W r o n g   a c c o u n t   p r o p e r t y   I D " ;   b r e a k ; 
 	 	 c a s e   4 7 5 1 :   e   =   " W r o n g   t r a d e   p r o p e r t y   I D " ;   b r e a k ; 
 	 	 c a s e   4 7 5 2 :   e   =   " T r a d i n g   b y   E x p e r t   A d v i s o r s   p r o h i b i t e d " ;   b r e a k ; 
 	 	 c a s e   4 7 5 3 :   e   =   " P o s i t i o n   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 7 5 4 :   e   =   " O r d e r   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 7 5 5 :   e   =   " D e a l   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 7 5 6 :   e   =   " T r a d e   r e q u e s t   s e n d i n g   f a i l e d " ;   b r e a k ; 
 
 	 	 / / - -   I n d i c a t o r s 
 	 	 c a s e   4 8 0 1 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ; 
 	 	 c a s e   4 8 0 2 :   e   =   " I n d i c a t o r   c a n n o t   b e   c r e a t e d " ;   b r e a k ; 
 	 	 c a s e   4 8 0 3 :   e   =   " N o t   e n o u g h   m e m o r y   t o   a d d   t h e   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 0 4 :   e   =   " T h e   i n d i c a t o r   c a n n o t   b e   a p p l i e d   t o   a n o t h e r   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 0 5 :   e   =   " E r r o r   a p p l y i n g   a n   i n d i c a t o r   t o   c h a r t " ;   b r e a k ; 
 	 	 c a s e   4 8 0 6 :   e   =   " R e q u e s t e d   d a t a   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 8 0 7 :   e   =   " W r o n g   i n d i c a t o r   h a n d l e " ;   b r e a k ; 
 	 	 c a s e   4 8 0 8 :   e   =   " W r o n g   n u m b e r   o f   p a r a m e t e r s   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 0 9 :   e   =   " N o   p a r a m e t e r s   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 1 0 :   e   =   " T h e   f i r s t   p a r a m e t e r   i n   t h e   a r r a y   m u s t   b e   t h e   n a m e   o f   t h e   c u s t o m   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 1 1 :   e   =   " I n v a l i d   p a r a m e t e r   t y p e   i n   t h e   a r r a y   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ; 
 	 	 c a s e   4 8 1 2 :   e   =   " W r o n g   i n d e x   o f   t h e   r e q u e s t e d   i n d i c a t o r   b u f f e r " ;   b r e a k ; 
 
 	 	 / / - -   D e p t h   o f   M a r k e t 
 	 	 c a s e   4 9 0 1 :   e   =   " D e p t h   O f   M a r k e t   c a n   n o t   b e   a d d e d " ;   b r e a k ; 
 	 	 c a s e   4 9 0 2 :   e   =   " D e p t h   O f   M a r k e t   c a n   n o t   b e   r e m o v e d " ;   b r e a k ; 
 	 	 c a s e   4 9 0 3 :   e   =   " T h e   d a t a   f r o m   D e p t h   O f   M a r k e t   c a n   n o t   b e   o b t a i n e d " ;   b r e a k ; 
 	 	 c a s e   4 9 0 4 :   e   =   " E r r o r   i n   s u b s c r i b i n g   t o   r e c e i v e   n e w   d a t a   f r o m   D e p t h   O f   M a r k e t " ;   b r e a k ; 
 
 	 	 / / - -   F i l e   O p e r a t i o n s 
 	 	 c a s e   5 0 0 1 :   e   =   " M o r e   t h a n   6 4   f i l e s   c a n n o t   b e   o p e n e d   a t   t h e   s a m e   t i m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 2 :   e   =   " I n v a l i d   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 3 :   e   =   " T o o   l o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 4 :   e   =   " F i l e   o p e n i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 0 5 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   c a c h e   t o   r e a d " ;   b r e a k ; 
 	 	 c a s e   5 0 0 6 :   e   =   " F i l e   d e l e t i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 0 7 :   e   =   " A   f i l e   w i t h   t h i s   h a n d l e   w a s   c l o s e d ,   o r   w a s   n o t   o p e n i n g   a t   a l l " ;   b r e a k ; 
 	 	 c a s e   5 0 0 8 :   e   =   " W r o n g   f i l e   h a n d l e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 9 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   f o r   w r i t i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 0 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   f o r   r e a d i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 1 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   b i n a r y   o n e " ;   b r e a k ; 
 	 	 c a s e   5 0 1 2 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   t e x t " ;   b r e a k ; 
 	 	 c a s e   5 0 1 3 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   t e x t   o r   C S V " ;   b r e a k ; 
 	 	 c a s e   5 0 1 4 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   C S V " ;   b r e a k ; 
 	 	 c a s e   5 0 1 5 :   e   =   " F i l e   r e a d i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 1 6 :   e   =   " S t r i n g   s i z e   m u s t   b e   s p e c i f i e d ,   b e c a u s e   t h e   f i l e   i s   o p e n e d   a s   b i n a r y " ;   b r e a k ; 
 	 	 c a s e   5 0 1 7 :   e   =   " A   t e x t   f i l e   m u s t   b e   f o r   s t r i n g   a r r a y s ,   f o r   o t h e r   a r r a y s   -   b i n a r y " ;   b r e a k ; 
 	 	 c a s e   5 0 1 8 :   e   =   " T h i s   i s   n o t   a   f i l e ,   t h i s   i s   a   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 1 9 :   e   =   " F i l e   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 0 :   e   =   " F i l e   c a n   n o t   b e   r e w r i t t e n " ;   b r e a k ; 
 	 	 c a s e   5 0 2 1 :   e   =   " W r o n g   d i r e c t o r y   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 2 2 :   e   =   " D i r e c t o r y   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 3 :   e   =   " T h i s   i s   a   f i l e ,   n o t   a   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 2 4 :   e   =   " T h e   d i r e c t o r y   c a n n o t   b e   r e m o v e d " ;   b r e a k ; 
 	 	 c a s e   5 0 2 5 :   e   =   " F a i l e d   t o   c l e a r   t h e   d i r e c t o r y   ( p r o b a b l y   o n e   o r   m o r e   f i l e s   a r e   b l o c k e d   a n d   r e m o v a l   o p e r a t i o n   f a i l e d ) " ;   b r e a k ; 
 	 	 c a s e   5 0 2 6 :   e   =   " F a i l e d   t o   w r i t e   a   r e s o u r c e   t o   a   f i l e " ;   b r e a k ; 
 
 	 	 / / - -   S t r i n g   C a s t i n g 
 	 	 c a s e   5 0 3 0 :   e   =   " N o   d a t e   i n   t h e   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 3 1 :   e   =   " W r o n g   d a t e   i n   t h e   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 3 2 :   e   =   " W r o n g   t i m e   i n   t h e   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 3 3 :   e   =   " E r r o r   c o n v e r t i n g   s t r i n g   t o   d a t e " ;   b r e a k ; 
 	 	 c a s e   5 0 3 4 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 3 5 :   e   =   " T h e   s t r i n g   l e n g t h   i s   l e s s   t h a n   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   5 0 3 6 :   e   =   " T o o   l a r g e   n u m b e r ,   m o r e   t h a n   U L O N G _ M A X " ;   b r e a k ; 
 	 	 c a s e   5 0 3 7 :   e   =   " I n v a l i d   f o r m a t   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 3 8 :   e   =   " A m o u n t   o f   f o r m a t   s p e c i f i e r s   m o r e   t h a n   t h e   p a r a m e t e r s " ;   b r e a k ; 
 	 	 c a s e   5 0 3 9 :   e   =   " A m o u n t   o f   p a r a m e t e r s   m o r e   t h a n   t h e   f o r m a t   s p e c i f i e r s " ;   b r e a k ; 
 	 	 c a s e   5 0 4 0 :   e   =   " D a m a g e d   p a r a m e t e r   o f   s t r i n g   t y p e " ;   b r e a k ; 
 	 	 c a s e   5 0 4 1 :   e   =   " P o s i t i o n   o u t s i d e   t h e   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 4 2 :   e   =   " 0   a d d e d   t o   t h e   s t r i n g   e n d ,   a   u s e l e s s   o p e r a t i o n " ;   b r e a k ; 
 	 	 c a s e   5 0 4 3 :   e   =   " U n k n o w n   d a t a   t y p e   w h e n   c o n v e r t i n g   t o   a   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   5 0 4 4 :   e   =   " D a m a g e d   s t r i n g   o b j e c t " ;   b r e a k ; 
 
 	 	 / / - -   O p e r a t i o n s   w i t h   A r r a y s 
 	 	 c a s e   5 0 5 0 :   e   =   " C o p y i n g   i n c o m p a t i b l e   a r r a y s .   S t r i n g   a r r a y   c a n   b e   c o p i e d   o n l y   t o   a   s t r i n g   a r r a y ,   a n d   a   n u m e r i c   a r r a y   -   i n   n u m e r i c   a r r a y   o n l y " ;   b r e a k ; 
 	 	 c a s e   5 0 5 1 :   e   =   " T h e   r e c e i v i n g   a r r a y   i s   d e c l a r e d   a s   A S _ S E R I E S ,   a n d   i t   i s   o f   i n s u f f i c i e n t   s i z e " ;   b r e a k ; 
 	 	 c a s e   5 0 5 2 :   e   =   " T o o   s m a l l   a r r a y ,   t h e   s t a r t i n g   p o s i t i o n   i s   o u t s i d e   t h e   a r r a y " ;   b r e a k ; 
 	 	 c a s e   5 0 5 3 :   e   =   " A n   a r r a y   o f   z e r o   l e n g t h " ;   b r e a k ; 
 	 	 c a s e   5 0 5 4 :   e   =   " M u s t   b e   a   n u m e r i c   a r r a y " ;   b r e a k ; 
 	 	 c a s e   5 0 5 5 :   e   =   " M u s t   b e   a   o n e - d i m e n s i o n a l   a r r a y " ;   b r e a k ; 
 	 	 c a s e   5 0 5 6 :   e   =   " T i m e s e r i e s   c a n n o t   b e   u s e d " ;   b r e a k ; 
 	 	 c a s e   5 0 5 7 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   d o u b l e " ;   b r e a k ; 
 	 	 c a s e   5 0 5 8 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   f l o a t " ;   b r e a k ; 
 	 	 c a s e   5 0 5 9 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   l o n g " ;   b r e a k ; 
 	 	 c a s e   5 0 6 0 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   i n t " ;   b r e a k ; 
 	 	 c a s e   5 0 6 1 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   s h o r t " ;   b r e a k ; 
 	 	 c a s e   5 0 6 2 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   c h a r " ;   b r e a k ; 
 	 	 
 	 	 / / - -   O p e r a t i o n s   w i t h   O p e n C L 
 	 	 c a s e   5 1 0 0 :   e   =   " O p e n C L   f u n c t i o n s   a r e   n o t   s u p p o r t e d   o n   t h i s   c o m p u t e r " ;   b r e a k ; 
 	 	 c a s e   5 1 0 1 :   e   =   " I n t e r n a l   e r r o r   o c c u r r e d   w h e n   r u n n i n g   O p e n C L " ;   b r e a k ; 
 	 	 c a s e   5 1 0 2 :   e   =   " I n v a l i d   O p e n C L   h a n d l e " ;   b r e a k ; 
 	 	 c a s e   5 1 0 3 :   e   =   " E r r o r   c r e a t i n g   t h e   O p e n C L   c o n t e x t " ;   b r e a k ; 
 	 	 c a s e   5 1 0 4 :   e   =   " F a i l e d   t o   c r e a t e   a   r u n   q u e u e   i n   O p e n C L " ;   b r e a k ; 
 	 	 c a s e   5 1 0 5 :   e   =   " E r r o r   o c c u r r e d   w h e n   c o m p i l i n g   a n   O p e n C L   p r o g r a m " ;   b r e a k ; 
 	 	 c a s e   5 1 0 6 :   e   =   " T o o   l o n g   k e r n e l   n a m e   ( O p e n C L   k e r n e l ) " ;   b r e a k ; 
 	 	 c a s e   5 1 0 7 :   e   =   " E r r o r   c r e a t i n g   a n   O p e n C L   k e r n e l " ;   b r e a k ; 
 	 	 c a s e   5 1 0 8 :   e   =   " E r r o r   o c c u r r e d   w h e n   s e t t i n g   p a r a m e t e r s   f o r   t h e   O p e n C L   k e r n e l " ;   b r e a k ; 
 	 	 c a s e   5 1 0 9 :   e   =   " O p e n C L   p r o g r a m   r u n t i m e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 1 1 0 :   e   =   " I n v a l i d   s i z e   o f   t h e   O p e n C L   b u f f e r " ;   b r e a k ; 
 	 	 c a s e   5 1 1 1 :   e   =   " I n v a l i d   o f f s e t   i n   t h e   O p e n C L   b u f f e r " ;   b r e a k ; 
 	 	 c a s e   5 1 1 2 :   e   =   " F a i l e d   t o   c r e a t e   a n   O p e n C L   b u f f e r " ;   b r e a k ; 
 	 	 
 	 	 / / - -   O p e r a t i o n s   w i t h   W e b R e q u e s t 
 	 	 c a s e   5 2 0 0 :   e   =   " I n v a l i d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 1 :   e   =   " F a i l e d   t o   c o n n e c t   t o   s p e c i f i e d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 2 :   e   =   " T i m e o u t   e x c e e d e d " ;   b r e a k ; 
 	 	 c a s e   5 2 0 3 :   e   =   " H T T P   r e q u e s t   f a i l e d " ;   b r e a k ; 
 
 	 	 / / - -   t r a d i n g   e r r o r s 
 	 	 c a s e   1 0 0 0 4 :   e   =   " R e q u o t e   o c c u r e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 0 6 :   e   =   " O r d e r   i s   n o t   a c c e p t e d   b y   t h e   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   1 0 0 0 7 :   e   =   " R e q u e s t   c a n c e l e d   b y   t r a d e r " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 0 :   e   =   " O n l y   p a r t   o f   t h e   r e q u e s t   w a s   c o m p l e t e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 1 :   e   =   " R e q u e s t   p r o c e s s i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 2 :   e   =   " R e q u e s t   c a n c e l e d   b y   t i m e o u t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 3 :   e   =   " I n v a l i d   r e q u e s t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 4 :   e   =   " I n v a l i d   v o l u m e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 5 :   e   =   " I n v a l i d   p r i c e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 6 :   e   =   " I n v a l i d   S L   o r   T P " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 7 :   e   =   " T r a d i n g   i s   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 8 :   e   =   " M a r k e t   i s   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 1 9 :   e   =   " N o t   e n o u g h   m o n e y   t o   t r a d e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 0 :   e   =   " P r i c e s   c h a n g e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 1 :   e   =   " T h e r e   a r e   n o   q u o t e s   t o   p r o c e s s   t h e   r e q u e s t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 2 :   e   =   " I n v a l i d   e x p i r a t i o n   d a t e   i n   t h e   o r d e r   r e q u e s t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 3 :   e   =   " O r d e r   s t a t e   c h a n g e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 4 :   e   =   " T o o   f r e q u e n t   r e q u e s t s " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 5 :   e   =   " N o   c h a n g e s   i n   r e q u e s t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 6 :   e   =   " A u t o t r a d i n g   i s   d i s a b l e d   b y   t h e   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 7 :   e   =   " A u t o t r a d i n g   i s   d i s a b l e d   b y   t h e   c l i e n t   t e r m i n a l " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 8 :   e   =   " R e q u e s t   l o c k e d   f o r   p r o c e s s i n g " ;   b r e a k ; 
 	 	 c a s e   1 0 0 2 9 :   e   =   " O r d e r   o r   t r a d e   f r o z e n " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 0 :   e   =   " I n v a l i d   o r d e r   f i l l i n g   t y p e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 1 :   e   =   " N o   c o n n e c t i o n   w i t h   t h e   t r a d e   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 2 :   e   =   " O p e r a t i o n   i s   a l l o w e d   o n l y   f o r   l i v e   a c c o u n t s " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 3 :   e   =   " T h e   n u m b e r   o f   p e n d i n g   o r d e r s   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 4 :   e   =   " T h e   v o l u m e   o f   o r d e r s   a n d   t r a d e s   f o r   t h e   s y m b o l   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 5 :   e   =   " I n c o r r e c t   o r   p r o h i b i t e d   o r d e r   t y p e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 6 :   e   =   " P o s i t i o n   w i t h   t h e   s p e c i f i e d   P O S I T I O N _ I D E N T I F I E R   h a s   a l r e a d y   b e e n   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 8 :   e   =   " A   c l o s e   v o l u m e   e x c e e d s   t h e   c u r r e n t   p o s i t i o n   v o l u m e " ;   b r e a k ; 
 	 	 c a s e   1 0 0 3 9 :   e   =   " A   c l o s e   o r d e r   a l r e a d y   e x i s t s   f o r   a   s p e c i f i e d   p o s i t i o n " ;   b r e a k ; 
 	 	 / / - -   U s e r - D e f i n e d   E r r o r s 
 	 	 c a s e   6 5 5 3 6 :   e   =   " U s e r   d e f i n e d   e r r o r s " ;   b r e a k ; 
 	 	 d e f a u l t : 	 e   =   " U n k n o w n   e r r o r " ; 
 	 } 
 
 	 S t r i n g C o n c a t e n a t e ( e ,   e , "   ( " , e r r o r _ c o d e , " ) " ) ; 
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
 E N U M _ O R D E R _ T Y P E _ T I M E   E x p i r a t i o n T y p e B y T i m e ( s t r i n g   s y m b o l ,   d a t e t i m e   e x p i r a t i o n ) 
 { 
 	 d a t e t i m e   n o w                                       =   T i m e C u r r e n t ( ) ; 
 	 E N U M _ O R D E R _ T Y P E _ T I M E   t y p e _ t i m e   =   O R D E R _ T I M E _ G T C ; 
 
 	 / /   D e t e c t   T y p e   T i m e 
 	 i f   ( e x p i r a t i o n   = =   0   | |   e x p i r a t i o n   < =   n o w ) 
 	 { 
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ G T C ; 
 	 } 
 	 e l s e   i f   ( e x p i r a t i o n   = =   ( d a t e t i m e ) ( M a t h F l o o r ( ( n o w   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) ) 
 	 { 
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ D A Y ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ S P E C I F I E D ; 
 	 } 
 
 	 / /   W h a t   i f   c e r t a i n   T y p e   T i m e   i s   n o t   a l l o w e d ? 
 	 i f   ( t y p e _ t i m e   = =   O R D E R _ T I M E _ G T C   & &   ! I s E x p i r a t i o n T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ E X P I R A T I O N _ G T C ) ) 
 	 { 
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ D A Y ; 
 	 } 
 	 
 	 i f   ( t y p e _ t i m e   = =   O R D E R _ T I M E _ D A Y   & &   ! I s E x p i r a t i o n T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ E X P I R A T I O N _ D A Y ) ) 
 	 { 
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ S P E C I F I E D ; 
 	 } 
 
 	 / /   R e t u r n   T y p e   T i m e 
 	 r e t u r n   t y p e _ t i m e ; 
 }  
  
 c l a s s   E x p i r a t i o n W o r k e r 
 { 
 p r i v a t e : 
 	 s t r u c t   C a c h e d I t e m s 
 	 { 
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
 	 	 i n t   t o t a l   =   P o s i t i o n s T o t a l ( ) ; 
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
 	 	 	 	 S e t E x p i r a t i o n I n C a c h e ( t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 l o n g   G e t T i c k e t B y I n d e x ( i n t   i n d e x ) 
 	 { 
 	 	 r e t u r n   ( l o n g ) P o s i t i o n G e t T i c k e t ( i n d e x ) ; 
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
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . t i c k e t           =   c a c h e d I t e m s [ i ] . t i c k e t ; 
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . e x p i r a t i o n   =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( i t e m R e m o v e d )   A r r a y C l o n e ( c a c h e d I t e m s ,   n e w I t e m s ) ; 
 	 } 
 
 	 v o i d   S e t E x p i r a t i o n I n C a c h e ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n ) 
 	 { 
 	 	 b o o l   a l r e a d y E x i s t s   =   f a l s e ; 
 	 	 i n t   s i z e                       =   A r r a y S i z e ( c a c h e d I t e m s ) ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 	 { 
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t ) 
 	 	 	 { 
 	 	 	 	 c a c h e d I t e m s [ i ] . e x p i r a t i o n   =   e x p i r a t i o n ; 
 	 	 	 	 a l r e a d y E x i s t s   =   t r u e ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( a l r e a d y E x i s t s   = =   f a l s e ) 
 	 	 { 
 	 	 	 A r r a y R e s i z e ( c a c h e d I t e m s ,   s i z e   +   1 ) ; 
 	 	 	 c a c h e d I t e m s [ s i z e ] . t i c k e t           =   t i c k e t ; 
 	 	 	 c a c h e d I t e m s [ s i z e ] . e x p i r a t i o n   =   e x p i r a t i o n ; 
 	 	 } 
 	 } 
 
 	 b o o l   S e t E x p i r a t i o n I n O b j e c t ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n ) 
 	 { 
 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   r e t u r n   f a l s e ; 
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
 	 	 f o r   ( i n t   i   =   0 ;   i   <   P o s i t i o n s T o t a l ( ) ;   i + + ) 
 	 	 { 
 	 	 	 l o n g   p o s i t i o n T i c k e t   =   ( l o n g ) P o s i t i o n G e t T i c k e t ( i ) ; 
 
 	 	 	 i f   ( ! p o s i t i o n T i c k e t )   c o n t i n u e ; 
 
 	 	 	 i f   ( p o s i t i o n T i c k e t   = =   t i c k e t ) 
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
 	 	 	 S e t E x p i r a t i o n I n O b j e c t ( t i c k e t ,   e x p i r a t i o n ) ; 
 	 	 	 S e t E x p i r a t i o n I n C a c h e ( t i c k e t ,   e x p i r a t i o n ) ; 
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
 	 	 	 	 	 l o n g   t i c k e t                       =   c a c h e d I t e m s [ i ] . t i c k e t ; 
 	 	 	 	 	 b o o l   r e m o v e E x p i r a t i o n   =   f a l s e ; 
 
 	 	 	 	 	 i f   ( T r a d e E x i s t s ( t i c k e t ) ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( t i c k e t ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 P r i n t ( " c l o s e   # " ,   t i c k e t ,   "   b y   e x p i r a t i o n " ) ; 
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
 	 s t r i n g   L i m i t s O r S t o p s   =   " " , 
 	 i n t   u n u s e d                       =   0 ,   / /   f o r   M Q L 4   c o m p a t i b i l i t y 
 	 b o o l   o n T r a d e                   =   f a l s e 
 )   { 
 	 / / - -   d b 
 	 s t a t i c   s t r i n g   m a r k e t s [ ] ; 
 	 s t a t i c   s t r i n g   m a r k e t 0 	 =   " - " ; 
 	 s t a t i c   i n t   m a r k e t s _ s i z e   =   0 ; 
 	 
 	 s t a t i c   s t r i n g   g r o u p s [ ] ; 
 	 s t a t i c   s t r i n g   g r o u p 0 	     =   " - " ; 
 	 s t a t i c   i n t   g r o u p s _ s i z e   =   0 ; 
 	 
 	 / / - -   l o c a l   v a r i a b l e s 
 	 b o o l   t y p e _ p a s s 	     =   f a l s e ; 
 	 b o o l   m a r k e t _ p a s s   =   f a l s e ; 
 	 b o o l   g r o u p _ p a s s     =   f a l s e ; 
 
 	 i n t   i ; 
 	 l o n g   t y p e ; 
 	 u l o n g   m a g i c _ n u m b e r ; 
 	 s t r i n g   s y m b o l ; 
 	 
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
 	 
 	 / /   T r a d e s   & &   H i s t o r y   t r a d e s 
 	 i f   ( L i m i t s O r S t o p s   = =   " " ) 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "     & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L ) ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " b u y s "     & &   t y p e   = =   O R D E R _ T Y P E _ B U Y ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   t y p e   = =   O R D E R _ T Y P E _ S E L L ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 } 
 	 } 
 	 / /   P e n d i n g   o r d e r s 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) ) 
 	 	 	 | | 	 ( B u y s O r S e l l s   = =   " b u y s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P ) ) 
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	 	 ( L i m i t s O r S t o p s   = =   " b o t h "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) ) 
 	 	 	 	 | | 	 ( L i m i t s O r S t o p s   = =   " s t o p s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) ) 
 	 	 	 	 | |   ( L i m i t s O r S t o p s   = =   " l i m i t s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) ) 	 
 	 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 i f   ( t y p e _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
 	 
 	 / / - -   c h e c k   g r o u p 
 	 i f   ( g r o u p _ m o d e   = =   " g r o u p " ) 
 	 { 
 	 	 i f   ( g r o u p   = =   " " ) 
 	 	 { 
 	 	 	 i f   ( m a g i c _ n u m b e r   = =   M a g i c S t a r t ) 
 	 	 	 { 
 	 	 	 	 g r o u p _ p a s s   =   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( g r o u p 0   ! =   g r o u p ) 
 	 	 	 { 
 	 	 	 	 g r o u p 0   =   g r o u p ; 
 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   g r o u p ,   g r o u p s ) ; 
 	 	 	 	 g r o u p s _ s i z e   =   A r r a y S i z e ( g r o u p s ) ; 
 
 	 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + ) 
 	 	 	 	 { 
 	 	 	 	 	 g r o u p s [ i ]   =   S t r i n g T r i m ( g r o u p s [ i ] ) ; 
 
 	 	 	 	 	 i f   ( g r o u p s [ i ]   = =   " " ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 g r o u p s [ i ]   =   " 0 " ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( m a g i c _ n u m b e r   = =   ( M a g i c S t a r t   +   ( i n t ) g r o u p s [ i ] ) ) 
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
 	 i f   ( g r o u p _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
 	 
 	 / /   c h e c k   m a r k e t 
 	 i f   ( m a r k e t _ m o d e   = =   " a l l " ) 
 	 { 
 	 	 m a r k e t _ p a s s   =   t r u e ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( s y m b o l   = =   m a r k e t ) 
 	 	 { 
 	 	 	 m a r k e t _ p a s s   =   t r u e ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( m a r k e t 0   ! =   m a r k e t ) 
 	 	 	 { 
 	 	 	 	 m a r k e t 0   =   m a r k e t ; 
 
 	 	 	 	 i f   ( m a r k e t   = =   " " ) 
 	 	 	 	 { 
 	 	 	 	 	 m a r k e t s _ s i z e   =   1 ; 
 	 	 	 	 	 A r r a y R e s i z e ( m a r k e t s , 1 ) ; 
 	 	 	 	 	 m a r k e t s [ 0 ]   =   S y m b o l ( ) ; 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   m a r k e t ,   m a r k e t s ) ; 
 	 	 	 	 	 m a r k e t s _ s i z e   =   A r r a y S i z e ( m a r k e t s ) ; 
 
 	 	 	 	 	 f o r ( i   =   0 ;   i   <   m a r k e t s _ s i z e ;   i + + ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 m a r k e t s [ i ]   =   S t r i n g T r i m ( m a r k e t s [ i ] ) ; 
 
 	 	 	 	 	 	 i f   ( m a r k e t s [ i ]   = =   " " ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 m a r k e t s [ i ]   =   S y m b o l ( ) ; 
 	 	 	 	 	 	 } 
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
 	 i f   ( m a r k e t _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
   
 	 r e t u r n ( t r u e ) ; 
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
 	 	 	 	 ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   / /   s k i p   f o r   b r a n d   n e w   t r a d e s 
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
 b o o l   H i s t o r y T r a d e S e l e c t B y I n d e x ( 
 	 i n t   i n d e x , 
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " , 
 	 s t r i n g   g r o u p                   =   " 0 " , 
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " , 
 	 s t r i n g   m a r k e t                 =   " " , 
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " 
 )   { 
 	 i f   ( L o a d H i s t o r y T r a d e ( i n d e x ,   " s e l e c t _ b y _ p o s " )   & &   L o a d e d T y p e ( )   = =   3 ) 
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
 	 i f   ( t o _ d a t e   = =   0 )   { t o _ d a t e   =   T i m e C u r r e n t ( )   +   1 ; } 
 	 
 	 H i s t o r y S e l e c t ( f r o m _ d a t e ,   t o _ d a t e ) ; 
 	 
 	 S e l e c t e d H i s t o r y F r o m T i m e ( f r o m _ d a t e ) ; 
 	 S e l e c t e d H i s t o r y T o T i m e ( t o _ d a t e ) ; 
 	 
 	 r e t u r n   H i s t o r y D e a l s T o t a l ( ) ; 
 }  
  
 v o i d   H i s t o r y T r a d e s T o t a l R e s e t ( ) 
 { 
 	 i f   ( S e l e c t e d H i s t o r y T o T i m e ( )   >   0   | |   S e l e c t e d H i s t o r y F r o m T i m e ( )   >   0 )   { 
 	 	 H i s t o r y S e l e c t ( S e l e c t e d H i s t o r y F r o m T i m e ( ) ,   S e l e c t e d H i s t o r y T o T i m e ( ) ) ; 
 	 } 
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
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
 / / |   C h e c k s   i f   t h e   s p e c i f i e d   e x p i r a t i o n   m o d e   i s   a l l o w e d                               |  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
 b o o l   I s E x p i r a t i o n T y p e A l l o w e d ( s t r i n g   s y m b o l , i n t   e x p _ t y p e )  
     {  
 / / - - -   O b t a i n   t h e   v a l u e   o f   t h e   p r o p e r t y   t h a t   d e s c r i b e s   a l l o w e d   e x p i r a t i o n   m o d e s  
       i n t   e x p i r a t i o n = ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ E X P I R A T I O N _ M O D E ) ;  
 / / - - -   R e t u r n   t r u e ,   i f   m o d e   e x p _ t y p e   i s   a l l o w e d  
       r e t u r n ( ( e x p i r a t i o n & e x p _ t y p e ) = = e x p _ t y p e ) ;  
     }  
  
 b o o l   I s F i l l i n g T y p e A l l o w e d ( s t r i n g   s y m b o l , i n t   f i l l _ t y p e )  
 {  
 / / - - -   O b t a i n   t h e   v a l u e   o f   t h e   p r o p e r t y   t h a t   d e s c r i b e s   a l l o w e d   f i l l i n g   m o d e s  
       i n t   f i l l i n g = ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ F I L L I N G _ M O D E ) ;  
 / / - - -   R e t u r n   t r u e ,   i f   m o d e   f i l l _ t y p e   i s   a l l o w e d  
       r e t u r n ( ( f i l l i n g   &   f i l l _ t y p e ) = = f i l l _ t y p e ) ;  
 }  
  
 b o o l   I s O r d e r T y p e B u y ( ) 
 { 
 	 i n t   l o a d e d T y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( l o a d e d T y p e   = =   1 ) 
 	 { 
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y ) 
 	 	 { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 	 e l s e   i f   ( l o a d e d T y p e   = =   3 ) 
 	 { 
 	 	 r e t u r n   ( O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ B U Y ) ; 
 	 } 
 	 e l s e   i f   ( l o a d e d T y p e   = =   4 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ L I M I T 
 	 	 	 | |   H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ S T O P 
 	 	 )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 	 e l s e   i f   ( 
 	 	 O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ L I M I T 
 	 	 | |   O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ S T O P 
 	 )   { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   I s O r d e r T y p e S e l l ( ) 
 { 
 	 i n t   l o a d e d T y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( l o a d e d T y p e   = =   1 ) 
 	 { 
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 	 e l s e   i f   ( l o a d e d T y p e   = =   3 ) 
 	 { 
 	 	 r e t u r n   ( O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L ) ; 
 	 } 
 	 e l s e   i f   ( l o a d e d T y p e   = =   4 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 	 | |   H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 	 e l s e   i f   ( 
 	 	 O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 | |   O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 )   { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   L o a d H i s t o r y T r a d e ( i n t   i n d e x ,   s t r i n g   s e l e c t b y = " s e l e c t _ b y _ p o s " ) 
 { 
 	 i f   ( s e l e c t b y   = =   " s e l e c t _ b y _ p o s " ) 
 	 { 
 	 	 u l o n g   t i c k e t     =   H i s t o r y D e a l G e t T i c k e t ( i n d e x ) ; 
 
 	 	 i f   ( t i c k e t   >   0 ) 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	       / / H i s t o r y D e a l S e l e c t ( t i c k e t )   -   c o m m e n t e d ,   b e c a u s e   i t   b r e a k s   H i s t o r y S e l e c t ( ) 
 	 	 	 	       H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T Y P E )   <   2 
 	 	 	 	 & &   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T 
 	 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 O r d e r T i c k e t ( t i c k e t ) ; 
 
 	 	 	 	 L o a d e d T y p e ( 3 ) ; 
 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 i f   ( s e l e c t b y   = =   " s e l e c t _ b y _ t i c k e t " ) 
 	 { 
 	 	 i f   ( H i s t o r y D e a l S e l e c t ( i n d e x ) ) 
 	 	 { 
 	 	 	 O r d e r T i c k e t ( i n d e x ) ; 
 
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( i n d e x ,   D E A L _ T Y P E )   <   2 ) 
 	 	 	 { 
 	 	 	 	 L o a d e d T y p e ( 3 ) ; 
 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   L o a d P e n d i n g O r d e r ( l o n g   t i c k e t ) 
 { 
 	 b o o l   s u c c e s s   =   f a l s e ; 
 
       i f   ( O r d e r S e l e c t ( t i c k e t ) ) 
 	 { 
 	 	 / /   T h e   o r d e r   c o u l d   b e   f r o m   a n y   t y p e ,   s o   c h e c k   t h e   t y p e 
 	 	 / /   a n d   a l l o w   o n l y   t r u e   p e n d i n g   o r d e r s . 
 	 	 E N U M _ O R D E R _ T Y P E   t y p e   =   ( E N U M _ O R D E R _ T Y P E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ; 
 
 	 	 i f   ( 
 	 	 	       t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T 
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P 
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 )   { 
 	 	 	 L o a d e d T y p e ( 2 ) ; 
 	 	 	 O r d e r T i c k e t ( t i c k e t ) ; 
 	 	 	 s u c c e s s   =   t r u e ; 
 	 	 } 
 	 } 
 
       r e t u r n   s u c c e s s ; 
 }  
  
 b o o l   L o a d P o s i t i o n ( u l o n g   t i c k e t ) 
 { 
       b o o l   s u c c e s s   =   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ; 
 
       i f   ( s u c c e s s )   { 
 	 	 L o a d e d T y p e ( 1 ) ; 
 	 	 O r d e r T i c k e t ( t i c k e t ) ; 
 	 } 
 
       r e t u r n   s u c c e s s ; 
 }  
  
 i n t   L o a d e d T y p e ( i n t   t y p e   =   0 ) 
 { 
 	 / /   1   -   p o s i t i o n 
 	 / /   2   -   p e n d i n g   o r d e r 
 	 / /   3   -   h i s t o r y   p o s i t i o n 
 	 / /   4   -   h i s t o r y   p e n d i n g   o r d e r 
 
 	 s t a t i c   i n t   m e m o r y ; 
 
 	 i f   ( t y p e   >   0 )   { m e m o r y   =   t y p e ; } 
 
 	 r e t u r n   m e m o r y ; 
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
 	 c o l o r   c l r   =   c l r N O N E 
 )   { 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( L o a d e d T y p e ( )   = =   1 ) 
 	 { 
 	 	 i f   ( O r d e r T y p e ( )   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 { b s   =   - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	 	 O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L 
 	 	 	 | |   O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 	 | |   O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 	 ) 
 	 	 { b s   =   - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l 
 	 } 
 
 	 w h i l e   ( t r u e ) 
 	 { 
 	 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ; 
 	 	 
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 ) 
 	 	 { 
 	 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   { r e t u r n   f a l s e ; } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( ! O r d e r S e l e c t ( t i c k e t ) )   { r e t u r n   f a l s e ; } 
 	 	 } 
 
 	 	 s t r i n g   s y m b o l             =   O r d e r S y m b o l ( ) ; 
 	 	 i n t   t y p e                       =   O r d e r T y p e ( ) ; 
 	 	 i n t   d i g i t s                   =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ D I G I T S ) ; 
 	 	 d o u b l e   a s k                   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ A S K ) ; 
 	 	 d o u b l e   b i d                   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ B I D ) ; 
 	 	 d o u b l e   p o i n t               =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ P O I N T ) ; 
 	 	 d o u b l e   s t o p l e v e l       =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ; 
 	 	 d o u b l e   f r e e z e l e v e l   =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ; 
 
 	 	 i f   ( O r d e r T y p e ( )   <   2 )   { o p   =   O r d e r O p e n P r i c e ( ) ; }   e l s e   { o p   =   N o r m a l i z e D o u b l e ( o p , d i g i t s ) ; } 
 	 	 
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ; 
 	 	 t p l   =   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ; 
 
 	 	 i f   ( o p   <   0   | |   o p   > =   E M P T Y _ V A L U E   | |   s l l   <   0   | |   s l p   <   0   | |   t p l   <   0   | |   t p p   <   0 ) 
 	 	 { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 / / - -   O P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 / /   h t t p s : / / b o o k . m q l 4 . c o m / a p p e n d i x / l i m i t s 
 	 	 i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T ) 
 	 	 { 
 	 	 	 i f   ( a s k   -   o p   <   s t o p l e v e l )   { o p   =   a s k   -   s t o p l e v e l ; } 
 	 	 	 i f   ( a s k   -   o p   < =   f r e e z e l e v e l )   { o p   =   a s k   -   f r e e z e l e v e l   -   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P ) 
 	 	 { 
 	 	 	 i f   ( o p   -   a s k   <   s t o p l e v e l )   { o p   =   a s k   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   a s k   < =   f r e e z e l e v e l )   { o p   =   a s k   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) 
 	 	 { 
 	 	 	 i f   ( o p   -   b i d   <   s t o p l e v e l )   { o p   =   b i d   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   b i d   < =   f r e e z e l e v e l )   { o p   =   b i d   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) 
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
 	 	 	 s l     =   0 ; 
 	 	 	 t p     =   0 ; 
 
 	 	 	 d o u b l e   a s k b i d   =   a s k ; 
 
 	 	 	 i f   ( b s   <   0 )   { a s k b i d   =   b i d ; } 
 
 	 	 	 i f   ( v s l   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 s l   =   v s l   -   E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( a s k b i d - v s l ) * b s ; 
 
 	 	 	 	 	 i f   ( s l   < =   0 )   { s l   =   a s k b i d ; } 
 	 	 	 	 	 s l   =   s l - t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( v t p   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " ) 
 	 	 	 { 
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 ) 
 	 	 	 	 { 
 	 	 	 	 	 t p = v t p + E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( v t p - a s k b i d ) * b s ; 
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
 	 	 
 	 	 b o o l   s u c c e s s   =   f a l s e ; 
 	 	 
 	 	 / /   c h e c k   i f   n e e d e d   t o   m o d i f y 
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 ) 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	       s l   = =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) , d i g i t s ) 
 	 	 	 	 & &   t p   = =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) , d i g i t s ) 
 	 	 	 	 & &   e x p   = =   O r d e r E x p i r a t i o n T i m e ( ) 
 	 	 	 )   { 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	       o p   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) , d i g i t s ) 
 	 	 	 	 & &   s l   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ S L ) , d i g i t s ) 
 	 	 	 	 & &   t p   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ T P ) , d i g i t s ) 
 	 	 	 )   { 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   p r e p a r e   t o   m o d i f y 
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ; 
 	 	 M q l T r a d e R e s u l t   r e s u l t ; 
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ; 
 	 	 Z e r o M e m o r y ( r e q u e s t ) ; 
 	 	 Z e r o M e m o r y ( r e s u l t ) ; 
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ; 
 
 	 	 / /   m o d i f y 
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 ) 
 	 	 { 
 	 	 	 / /   i n   c a s e   o f   p o s i t i o n ,   o n l y   s l   a n d   t p   a r e   g o i n g   t o   b e   m o d i f i e d 
 	 	 	 r e q u e s t . a c t i o n       =   T R A D E _ A C T I O N _ S L T P ; 
 	 	 	 r e q u e s t . s y m b o l       =   s y m b o l ; 
 	 	 	 r e q u e s t . p o s i t i o n   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ; 
 	 	 	 r e q u e s t . m a g i c         =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ; 
 	 	 	 r e q u e s t . c o m m e n t     =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 / /   i n   c a s e   o f   p e n d i n g   o r d e r 
 	 	 	 r e q u e s t . a c t i o n           =   T R A D E _ A C T I O N _ M O D I F Y ; 
 	 	 	 r e q u e s t . o r d e r             =   t i c k e t ; 
 	 	 	 r e q u e s t . p r i c e             =   o p ; 
 	 	 	 r e q u e s t . v o l u m e           =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ; 
 	 	 	 r e q u e s t . m a g i c             =   O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ; 
 	 	 	 r e q u e s t . t y p e _ t i m e     =   E x p i r a t i o n T y p e B y T i m e ( s y m b o l ,   e x p ) ; 
 	 	 	 r e q u e s t . e x p i r a t i o n   =   e x p ; 
 	 	 	 r e q u e s t . c o m m e n t         =   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ; 
 
 	 	 	 / / - -   f i l l i n g   t y p e 
 	 	 	 u i n t   f i l l i n g   =   ( u i n t ) S y m b o l I n f o I n t e g e r ( r e q u e s t . s y m b o l , S Y M B O L _ F I L L I N G _ M O D E ) ; 
 
 	 	 	 i f   ( f i l l i n g   = =   S Y M B O L _ F I L L I N G _ F O K ) 
 	 	 	 { 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ; 
 	 	 	 } 
 	 	 	 e l s e   i f   ( f i l l i n g   = =   S Y M B O L _ F I L L I N G _ I O C ) 
 	 	 	 { 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ; 
 	 	 	 } 
 	 	 } 
 	 	 
 	 	 r e q u e s t . s l   =   s l ; 
 	 	 r e q u e s t . t p   =   t p ; 
 
 	 	 i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) ) 
 	 	 { 
 	 	 	 P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   "   +   ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t   +   "   ( "   +   ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e   +   " ) " ) ; 
 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ; 
 
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E ) 
 	 	 { 
 	 	 	 s t r i n g   e r r m s g p f x   =   " M o d i f y   e r r o r " ; 
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ; 
 
 	 	 	 s w i t c h ( e r r a c t i o n ) 
 	 	 	 { 
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 	 } 
 
 	 	 	 r e t u r n   f a l s e ; 
 	 	 } 
 
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E ) 
 	 	 { 
 	 	 	 / / = =   W a i t   u n t i l   M T 5   u p d a t e s   i t s   c a c h e 
 	 	 	 i n t   w ; 
 
 	 	 	 f o r   ( w   =   0 ;   w   <   5 0 0 0 ;   w + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) )   & &   ( s l   = =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) ,   d i g i t s )   & &   t p   = =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) ,   d i g i t s ) ) ) 
 	 	 	 	 { 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 S l e e p ( 1 ) ; 
 	 	 	 } 
 
 	 	 	 i f   ( w   = =   5 0 0 0 ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " C h e c k   e r r o r :   M o d i f y   o r d e r   s t o p s " ) ;     
 	 	 	 } 
 
 	 	 	 i f   ( ! ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) )   | |   ( s l   ! =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) ,   d i g i t s )   | |   t p   ! =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) ,   d i g i t s ) ) ) 
 	 	 	 { 
 	 	 	 	 P r i n t ( " S o m e t h i n g   w e n t   w r o n g   w h e n   t r y i n g   t o   m o d i f y   t h e   s t o p s " ) ; 
 
 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 } 
 
 	 	 	 i f   ( ! ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) ) ) 
 	 	 	 { 
 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 } 
 
 	 	 	 O r d e r M o d i f i e d ( ( i n t ) t i c k e t ) ; 
 	 	 } 
 
 	 	 b r e a k ; 
 	 } 
 
 	 O n T r a d e ( ) ; 
 
 	 r e t u r n   t r u e ; 
 }  
  
 i n t   O C O D r i v e r ( ) 
 { 
 	 s t a t i c   l o n g   l a s t _ k n o w n _ t i c k e t   =   0 ; 
 	 s t a t i c   l o n g   o r d e r s 1 [ ] ; 
 	 s t a t i c   l o n g   o r d e r s 2 [ ] ; 
 	 i n t   i ,   s i z e ; 
 
 	 i n t   t o t a l   =   O r d e r s T o t a l ( ) ; 
 
 	 f o r   ( i n t   p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
 	 { 
 	 	 i f   ( L o a d P e n d i n g O r d e r ( O r d e r G e t T i c k e t ( p o s ) ) ) 
 	 	 { 
 	 	 	 l o n g   t i c k e t   =   O r d e r T i c k e t ( ) ; 
 
 	 	 	 / / - -   e n d   h e r e   i f   w e   r e a c h   t h e   l a s t   k n o w n   t i c k e t 
 	 	 	 i f   ( t i c k e t   = =   l a s t _ k n o w n _ t i c k e t )   { b r e a k ; } 
 
 	 	 	 / / - -   s e t   t h e   l a s t   k n o w n   t i c k e t ,   o n l y   i f   t h i s   i s   t h e   f i r s t   i t e r a t i o n 
 	 	 	 i f   ( p o s   = =   t o t a l - 1 )   { 
 	 	 	 	 l a s t _ k n o w n _ t i c k e t   =   t i c k e t ; 
 	 	 	 } 
 
 	 	 	 / / - -   w e   a r e   s e a r c h i n g   f o r   p e n d i n g   o r d e r s ,   s k i p   t r a d e s 
 	 	 	 i f   ( O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L )   { c o n t i n u e ; } 
 
 	 	 	 / / - - 
 	 	 	 i f   ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   0 ,   5 )   = =   " [ o c o : " ) 
 	 	 	 { 
 	 	 	 	 i n t   t i c k e t _ o c o   =   S t r T o I n t e g e r ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   5 ,   S t r i n g L e n ( O r d e r C o m m e n t ( ) ) - 1 ) ) ;   
 
 	 	 	 	 b o o l   f o u n d   =   f a l s e ; 
 	 	 	 	 s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ; 
 	 	 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( o r d e r s 2 [ i ]   = =   t i c k e t _ o c o )   { 
 	 	 	 	 	 	 f o u n d   =   t r u e ; 
 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( f o u n d   = =   f a l s e )   { 
 	 	 	 	 	 A r r a y R e s i z e ( o r d e r s 1 ,   s i z e + 1 ) ; 
 	 	 	 	 	 A r r a y R e s i z e ( o r d e r s 2 ,   s i z e + 1 ) ; 
 	 	 	 	 	 o r d e r s 1 [ s i z e ]   =   t i c k e t _ o c o ; 
 	 	 	 	 	 o r d e r s 2 [ s i z e ]   =   t i c k e t ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 s i z e   =   A r r a y S i z e ( o r d e r s 1 ) ; 
 	 i n t   d b r e m o v e   =   f a l s e ; 
 
 	 f o r   ( i   =   s i z e   -   1 ;   i   > =   0 ;   i - - ) 
 	 { 
 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 1 [ i ] )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 2 [ i ] ) )   { 
 	 	 	 	 i f   ( D e l e t e O r d e r ( o r d e r s 2 [ i ] ) ) 
 	 	 	 	 { 
 	 	 	 	 	 d b r e m o v e   =   t r u e ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 e l s e   { 
 	 	 	 	 d b r e m o v e   =   t r u e ; 
 	 	 	 } 
 	 	 	 
 	 	 	 i f   ( d b r e m o v e   = =   t r u e ) 
 	 	 	 { 
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ; 
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ; 
 	 d b r e m o v e   =   f a l s e ; 
 	 f o r   ( i = s i z e - 1 ;   i > = 0 ;   i - - ) 
 	 { 
 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 2 [ i ] )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 1 [ i ] ) )   { 
 	 	 	 	 i f   ( D e l e t e O r d e r ( o r d e r s 1 [ i ] ) ) 
 	 	 	 	 { 
 	 	 	 	 	 d b r e m o v e   =   t r u e ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 e l s e   { 
 	 	 	 	 d b r e m o v e   =   t r u e ; 
 	 	 	 } 
 	 	 	 
 	 	 	 i f   ( d b r e m o v e   = =   t r u e ) 
 	 	 	 { 
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ; 
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   t r u e ; 
 }  
  
 b o o l   O n T i m e r S e t ( d o u b l e   s e c o n d s )  
 {  
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
 
 	 s t r u c t   P o s i t i o n 
 	 { 
 	 	 E N U M _ P O S I T I O N _ T Y P E   t y p e ; 
 	 	 E N U M _ P O S I T I O N _ R E A S O N   r e a s o n ; 
 	 	 l o n g           p o s i t i o n I d , 
 	 	                   m a g i c , 
 	 	                   t i c k e t , 
 	 	                   t i m e M s , 
 	 	                   t i m e U p d a t e M s ; 
 	 	 d a t e t i m e   t i m e , 
 	 	 	 	 	 t i m e E x p i r a t i o n , 
 	 	                   t i m e U p d a t e ; 
 	 	 d o u b l e       p r i c e C u r r e n t , 
 	 	                   p r i c e O p e n , 
 	 	                   p r o f i t , 
 	 	                   s t o p L o s s , 
 	 	                   s w a p , 
 	 	                   t a k e P r o f i t , 
 	 	                   v o l u m e ; 
 	 	 s t r i n g       e x t e r n a l I d , 
 	 	                   c o m m e n t , 
 	 	                   s y m b o l ; 
 	 } ; 
 
 	 s t r u c t   P e n d i n g O r d e r 
 	 { 
 	 	 E N U M _ O R D E R _ T Y P E   t y p e ; 
 	 	 E N U M _ O R D E R _ S T A T E   s t a t e ; 
 	 	 E N U M _ O R D E R _ T Y P E _ F I L L I N G   t y p e F i l l i n g ; 
 	 	 E N U M _ O R D E R _ T Y P E _ T I M E   t y p e T i m e ; 
 	 	 E N U M _ O R D E R _ R E A S O N   r e a s o n ; 
 	 	 l o n g           m a g i c , 
 	 	                   p o s i t i o n I d , 
 	 	                   p o s i t i o n B y I d , 
 	 	                   t i c k e t , 
 	 	                   t i m e S e t u p M s , 
 	 	                   t i m e D o n e M s ; 
 	 	 d a t e t i m e   t i m e D o n e , 
 	 	                   t i m e E x p i r a t i o n , 
 	 	                   t i m e S e t u p ; 
 	 	 d o u b l e       p r i c e C u r r e n t , 
 	 	                   p r i c e O p e n , 
 	 	                   p r i c e S t o p L i m i t , 
 	 	                   s t o p L o s s , 
 	 	                   t a k e P r o f i t , 
 	 	                   v o l u m e , 
 	 	                   v o l u m e I n i t i a l ; 
 	 	 s t r i n g       e x t e r n a l I d , 
 	 	                   c o m m e n t , 
 	 	                   s y m b o l ; 
 	 } ; 
 	 
 	 s t r u c t   P o s i t i o n E x p i r a t i o n T i m e s 
 	 { 
 	 	 l o n g   t i c k e t ; 
 	 	 d a t e t i m e   t i m e E x p i r a t i o n ; 
 	 } ; 
 
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
 
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
 	 	 	 i f   ( O r d e r G e t T i c k e t ( i n d e x )   < =   0 )   c o n t i n u e ; 
 
 	 	 	 h o w M a n y A d d e d + + ; 
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ; 
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ; 
 
 	 	 	 / /   e n u m   t y p e s 
 	 	 	 l i s t [ i ] . t y p e                 =   ( E N U M _ O R D E R _ T Y P E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ; 
 	 	 	 l i s t [ i ] . s t a t e               =   ( E N U M _ O R D E R _ S T A T E ) O r d e r G e t I n t e g e r ( O R D E R _ S T A T E ) ; 
 	 	 	 l i s t [ i ] . t y p e F i l l i n g   =   ( E N U M _ O R D E R _ T Y P E _ F I L L I N G ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E _ F I L L I N G ) ; 
 	 	 	 l i s t [ i ] . t y p e T i m e         =   ( E N U M _ O R D E R _ T Y P E _ T I M E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E _ T I M E ) ; 
 	 	 	 l i s t [ i ] . r e a s o n             =   ( E N U M _ O R D E R _ R E A S O N ) O r d e r G e t I n t e g e r ( O R D E R _ R E A S O N ) ; 
 
 	 	 	 / /   l o n g 
 	 	 	 l i s t [ i ] . m a g i c                 =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ; 
 	 	 	 l i s t [ i ] . p o s i t i o n I d       =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ P O S I T I O N _ I D ) ; 
 	 	 	 l i s t [ i ] . p o s i t i o n B y I d   =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ P O S I T I O N _ B Y _ I D ) ; 
 	 	 	 l i s t [ i ] . t i c k e t               =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I C K E T ) ; 
 	 	 	 l i s t [ i ] . t i m e S e t u p M s     =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P _ M S C ) ; 
 	 	 	 l i s t [ i ] . t i m e D o n e M s       =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E _ M S C ) ; 
 
 	 	 	 / /   d a t e t i m e 
 	 	 	 l i s t [ i ] . t i m e D o n e               =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E ) ; 
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ E X P I R A T I O N ) ; 
 	 	 	 l i s t [ i ] . t i m e S e t u p             =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P ) ; 
 
 	 	 	 / /   d o u b l e 
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t       =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ C U R R E N T ) ; 
 	 	 	 l i s t [ i ] . p r i c e O p e n             =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) ; 
 	 	 	 l i s t [ i ] . p r i c e S t o p L i m i t   =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ S T O P L I M I T ) ; 
 	 	 	 l i s t [ i ] . s t o p L o s s               =   O r d e r G e t D o u b l e ( O R D E R _ S L ) ; 
 	 	 	 l i s t [ i ] . t a k e P r o f i t           =   O r d e r G e t D o u b l e ( O R D E R _ T P ) ; 
 	 	 	 l i s t [ i ] . v o l u m e                   =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ; 
 	 	 	 l i s t [ i ] . v o l u m e I n i t i a l     =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ I N I T I A L ) ; 
 
 	 	 	 / /   s t r i n g 
 	 	 	 l i s t [ i ] . e x t e r n a l I d   =   O r d e r G e t S t r i n g ( O R D E R _ E X T E R N A L _ I D ) ; 
 	 	 	 l i s t [ i ] . c o m m e n t         =   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ; 
 	 	 	 l i s t [ i ] . s y m b o l           =   O r d e r G e t S t r i n g ( O R D E R _ S Y M B O L ) ; 
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
 	 	 i n t   c o u n t                 =   P o s i t i o n s T o t a l ( ) ; 
 	 	 i n t   h o w M a n y A d d e d   =   0 ; 
 
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + ) 
 	 	 { 
 	 	 	 i f   ( P o s i t i o n G e t T i c k e t ( i n d e x )   < =   0 )   c o n t i n u e ; 
 
 	 	 	 h o w M a n y A d d e d + + ; 
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ; 
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ; 
 
 	 	 	 / /   e n u m   t y p e s 
 	 	 	 l i s t [ i ] . t y p e       =   ( E N U M _ P O S I T I O N _ T Y P E ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ; 
 	 	 	 l i s t [ i ] . r e a s o n   =   ( E N U M _ P O S I T I O N _ R E A S O N ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ R E A S O N ) ; 
 
 	 	 	 / /   l o n g 
 	 	 	 l i s t [ i ] . p o s i t i o n I d       =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ; 
 	 	 	 l i s t [ i ] . m a g i c                 =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ; 
 	 	 	 l i s t [ i ] . t i c k e t               =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ; 
 	 	 	 l i s t [ i ] . t i m e M s               =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ M S C ) ; 
 	 	 	 l i s t [ i ] . t i m e U p d a t e M s   =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ U P D A T E _ M S C ) ; 
 
 	 	 	 / /   d a t e t i m e 
 	 	 	 l i s t [ i ] . t i m e                       =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E ) ; 
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   ( d a t e t i m e ) 0 ; 
 	 	 	 l i s t [ i ] . t i m e U p d a t e           =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ U P D A T E ) ; 
 
 	 	 	 / /   d o u b l e 
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ C U R R E N T ) ; 
 	 	 	 l i s t [ i ] . p r i c e O p e n         =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ O P E N ) ; 
 	 	 	 l i s t [ i ] . p r o f i t               =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R O F I T ) ; 
 	 	 	 l i s t [ i ] . s t o p L o s s           =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) ; 
 	 	 	 l i s t [ i ] . s w a p                   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S W A P ) ; 
 	 	 	 l i s t [ i ] . t a k e P r o f i t       =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) ; 
 	 	 	 l i s t [ i ] . v o l u m e               =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ; 
 
 	 	 	 / /   s t r i n g 
 	 	 	 l i s t [ i ] . e x t e r n a l I d   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ E X T E R N A L _ I D ) ; 
 	 	 	 l i s t [ i ] . c o m m e n t         =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ; 
 	 	 	 l i s t [ i ] . s y m b o l           =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ; 
 
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
 
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
 	 	 d a t e t i m e   t i m e O p e n     =   i t e m . t i m e ; 
 	 	 d a t e t i m e   t i m e C l o s e   =   ( d a t e t i m e ) 0 ; 
 	 	 d o u b l e   p r i c e O p e n       =   i t e m . p r i c e O p e n ; 
 	 	 d o u b l e   p r i c e C l o s e     =   i t e m . p r i c e C u r r e n t ; 
 	 	 d o u b l e   p r o f i t             =   i t e m . p r o f i t ; 
 	 	 d o u b l e   s w a p                 =   i t e m . s w a p ; 
 	 	 d o u b l e   c o m m i s s i o n     =   0 . 0 ; 
 	 	 d o u b l e   v o l u m e             =   i t e m . v o l u m e ; 
 
 	 	 i f   ( r e a s o n   = =   " c l o s e "   | |   r e a s o n   = =   " d e c r e m e n t " ) 
 	 	 { 
 	 	 	 i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( i t e m . p o s i t i o n I d ) ) 
 	 	 	 { 
 	 	 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 	 	 	 i f   ( t o t a l   >   0 ) 
 	 	 	 	 { 
 	 	 	 	 	 l o n g   f i r s t T i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 	 	 	 	 	 l o n g   l a s t T i c k e t     =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( t o t a l   -   1 ) ; 
 
 	 	 	 	 	 / /   T i c k e t   i s   t h e   t i c k e t   o f   t h e   p r e v i o u s   d e a l ,   t h e   o n e   b e f o r e   t h e   l a s t   o n e 
 	 	 	 	 	 t i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( t o t a l   -   2 ) ; 
 
 	 	 	 	 	 / /   O p e n   T i m e   a n d   O p e n   P r i c e   -   g e t   t h e m   f r o m   t h e   v e r y   f i r s t   d e a l 
 	 	 	 	 	 p r i c e O p e n   =   H i s t o r y D e a l G e t D o u b l e ( f i r s t T i c k e t ,   D E A L _ P R I C E ) ; 
 	 	 	 	 	 t i m e O p e n     =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( f i r s t T i c k e t ,   D E A L _ T I M E ) ; 
 
 	 	 	 	 	 / /   C l o s e   T i m e   -   g e t   i t   f r o m   t h e   v e r y   l a s t   d e a l 
 	 	 	 	 	 t i m e C l o s e     =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( l a s t T i c k e t ,   D E A L _ T I M E ) ; 
 	 	 	 	 	 p r i c e C l o s e   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ P R I C E ) ; 
 
 	 	 	 	 	 p r o f i t           =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ P R O F I T ) ; 
 	 	 	 	 	 s w a p               =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ S W A P ) ; 
 	 	 	 	 	 c o m m i s s i o n   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ C O M M I S S I O N ) ; 
 
 	 	 	 	 	 v o l u m e   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ V O L U M E ) ; 
 
 	 	 	 	 	 / /   F i n d   w h y   t h e   p o s i t i o n   h a s   b e e n   c l o s e d 
 	 	 	 	 	 i f   ( d e t a i l   = =   " " ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i f   ( 
 	 	 	 	 	 	 	 i t e m . t i m e E x p i r a t i o n   >   0 
 	 	 	 	 	 	 	 & &   i t e m . t i m e E x p i r a t i o n   < =   t i m e C l o s e 
 	 	 	 	 	 	 )   { 
 	 	 	 	 	 	 	 d e t a i l   =   " e x p i r a t i o n " ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 
 	 	 	 	 	 i f   ( d e t a i l   = =   " " ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 E N U M _ D E A L _ R E A S O N   d e a l R e a s o n   =   ( E N U M _ D E A L _ R E A S O N ) H i s t o r y D e a l G e t I n t e g e r ( l a s t T i c k e t ,   D E A L _ R E A S O N ) ; 
 	 
 	 	 	 	 	 	 s w i t c h   ( d e a l R e a s o n ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ S L :   d e t a i l   =   " s l " ;   b r e a k ; 
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ T P :   d e t a i l   =   " t p " ;   b r e a k ; 
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ S O :   d e t a i l   =   " s o " ;   b r e a k ; 
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
 
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
 
 	 / * * 
 	 *   O v e r l o a d e d   m e t h o d   2   o f   2 
 	 * / 
 	 v o i d   U p d a t e V a l u e s ( P e n d i n g O r d e r   & i t e m ,   s t r i n g   r e a s o n ,   s t r i n g   d e t a i l ) 
 	 { 
 	 	 d a t e t i m e   t i m e E x p i r a t i o n   =   i t e m . t i m e E x p i r a t i o n ; 
 
 	 	 / /   W h e n   t h e   l i f e t i m e   o f   t h e   o r d e r   i s   O R D E R _ T I M E _ D A Y , 
 	 	 / /   t h e   e x p i r a t i o n   ( O R D E R _ T I M E _ E X P I R A T I O N )   e q u a l s   t o   t h e   t i m e   o f   o p e n i n g . 
 	 	 / /   H e r e   w e   f i x   t h i s . 
 	 	 i f   ( i t e m . t y p e T i m e   = =   O R D E R _ T I M E _ D A Y ) 
 	 	 { 
 	 	 	 t i m e E x p i r a t i o n   =   ( d a t e t i m e ) ( M a t h F l o o r ( ( ( d o u b l e ) i t e m . t i m e S e t u p   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) ; 
 	 	 } 
 
 	 	 i n t   i   =   e v e n t V a l u e s Q u e u e I n d e x ; 
 
 	 	 e v e n t V a l u e s [ i ] . r e a s o n   =   r e a s o n ; 
 	 	 e v e n t V a l u e s [ i ] . d e t a i l   =   d e t a i l ; 
 
 	 	 e v e n t V a l u e s [ i ] . p r i c e C l o s e           =   i t e m . p r i c e C u r r e n t ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e C l o s e             =   i t e m . t i m e D o n e ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m e n t                 =   i t e m . c o m m e n t ; 
 	 	 e v e n t V a l u e s [ i ] . c o m m i s s i o n           =   0 . 0 ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e E x p i r a t i o n   =   t i m e E x p i r a t i o n ; 
 	 	 e v e n t V a l u e s [ i ] . v o l u m e                   =   i t e m . v o l u m e ; 
 	 	 e v e n t V a l u e s [ i ] . m a g i c                     =   i t e m . m a g i c ; 
 	 	 e v e n t V a l u e s [ i ] . p r i c e O p e n             =   i t e m . p r i c e O p e n ; 
 	 	 e v e n t V a l u e s [ i ] . t i m e O p e n               =   i t e m . t i m e S e t u p ; 
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
 	 	 	 "   < < < \ n " , 
 	 	 	 "   |   r e a s o n :   " ,   e _ R e a s o n ( ) , 
 	 	 	 "   |   d e t a i l :   " ,   e _ R e a s o n D e t a i l ( ) , 
 	 	 	 "   |   t i c k e t :   " ,   e _ a t t r T i c k e t ( ) , 
 	 	 	 "   |   t y p e :   " ,   E n u m T o S t r i n g ( ( E N U M _ O R D E R _ T Y P E ) e _ a t t r T y p e ( ) ) , 
 	 	 	 " \ n " , 
 	 	 	 "   |   o p e n T i m e   :   " ,   e _ a t t r O p e n T i m e ( ) , 
 	 	 	 "   |   o p e n P r i c e   :   " ,   e _ a t t r O p e n P r i c e ( ) , 
 	 	 	 " \ n " , 
 	 	 	 "   |   c l o s e T i m e :   " ,   e _ a t t r C l o s e T i m e ( ) , 
 	 	 	 "   |   c l o s e P r i c e :   " ,   e _ a t t r C l o s e P r i c e ( ) , 
 	 	 	 " \ n " , 
 	 	 	 "   |   v o l u m e :   " ,   e _ a t t r L o t s ( ) , 
 	 	 	 "   |   s l :   " ,   e _ a t t r S t o p L o s s ( ) , 
 	 	 	 "   |   t p :   " ,   e _ a t t r T a k e P r o f i t ( ) , 
 	 	 	 "   |   p r o f i t :   " ,   e _ a t t r P r o f i t ( ) , 
 	 	 	 "   |   s w a p :   " ,   e _ a t t r S w a p ( ) , 
 	 	 	 "   |   e x p :   " ,   e _ a t t r E x p i r a t i o n ( ) , 
 	 	 	 "   |   c o m m e n t :   " ,   e _ a t t r C o m m e n t ( ) , 
 	 	 	 " \ n   > > > " 
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
 	 l o n g   t i c k e t   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ; 
 	 l o n g   p o s i t i o n I D   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ; 
 
 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I D ) ; 
 
 	 d o u b l e   o p e n P r i c e   =   0 ; 
 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 i f   ( t o t a l   >   0 )   { 
 	 	 d o u b l e   o r d e r C l o s e P r i c e   =   H i s t o r y D e a l G e t D o u b l e ( H i s t o r y D e a l G e t T i c k e t ( t o t a l   - 1 ) ,   D E A L _ P R I C E ) ; 
 	 	 o p e n P r i c e   =   o r d e r C l o s e P r i c e ; 
 	 } 
 
 	 P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ; 
 	 
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 
 	 r e t u r n   o p e n P r i c e ; 
 }  
  
 d o u b l e   O r d e r C l o s e P r i c e ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 ) 
 	 { 
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y ) 
 	 	 { 
 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ B I D ) ; 
 	 	 } 
 	 	 e l s e   i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ A S K ) ; 
 	 	 } 
 	 } 
 	 i f   ( t y p e   = =   3 )   { 
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ; 
 	 	 E N U M _ D E A L _ E N T R Y   d e a l E n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ E N T R Y ) ; 
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ; 
 	 	 d o u b l e   p r i c e   =   H i s t o r y D e a l G e t D o u b l e ( d e a l T i c k e t ,   D E A L _ P R I C E ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 	 	 
 	 	 / /   S e a r c h   f o r   t h e   f i r s t   O U T   d e a l   a f t e r   t h i s   o n e   a n d   g e t   t h e   p r i c e   f r o m   i t 
 
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 	 
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )   { 
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ; 
 	 
 	 	 	 i f   ( t i c k e t   = =   d e a l T i c k e t )   { 
 	 	 	 	 / /   G e t   t h e   c u r r e n t   v a l u e   i f   t h e   d e a l   i s   t h e   t h e   l a s t   o n e 
 	 	 	 	 i f   ( i   = =   t o t a l   -   1   & &   P o s i t i o n S e l e c t B y D e a l ( t i c k e t ) ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 p r i c e   =   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ B I D ) ; 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e   i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 p r i c e   =   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ A S K ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T )   { 
 	 	 	 	 p r i c e   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ P R I C E ) ; 
 	 	 	 } 
 	 	 } 
 	 	 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 	 
 	 	 r e t u r n   p r i c e ; 
 	 } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ P R I C E ) ; } 
 
 	 r e t u r n ( O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ C U R R E N T ) ) ; 
 }  
  
 d a t e t i m e   O r d e r C l o s e T i m e ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 ) 
 	 { 
 	 	 r e t u r n   0 ; 
 	 } 
 
 	 i f   ( t y p e   = =   3 ) 
 	 { 
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ; 
 	 	 E N U M _ D E A L _ E N T R Y   d e a l E n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ E N T R Y ) ; 
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ; 
 	 	 d a t e t i m e   t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ T I M E ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 
 	 	 / /   S e a r c h   f o r   t h e   f i r s t   O U T   d e a l   a f t e r   t h i s   o n e   a n d   g e t   t h e   t i m e   f r o m   i t 
 
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )   { 
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ; 
 
 	 	 	 i f   ( t i c k e t   = =   d e a l T i c k e t )   { 
 	 	 	 	 i f   ( i   = =   t o t a l   -   1   & &   P o s i t i o n S e l e c t B y D e a l ( t i c k e t ) ) 
 	 	 	 	 { 
 	 	 	 	 	 t i m e   =   ( d a t e t i m e ) 0 ; 
 	 	 	 	 } 
 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T )   { 
 	 	 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T I M E ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 
 	 	 r e t u r n   t i m e ; 
 	 } 
 
 	 i f   ( t y p e   = =   4 ) 
 	 { 
 	 	 r e t u r n   ( d a t e t i m e ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ T I M E _ D O N E ) ; 
 	 } 
 	 
 	 r e t u r n   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E ) ; 
 }  
  
 s t r i n g   O r d e r C o m m e n t ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ,   O R D E R _ C O M M E N T ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( O r d e r T i c k e t ( ) ,   O R D E R _ C O M M E N T ) ; } 
 
 	 r e t u r n   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ; 
 }  
  
 d o u b l e   O r d e r C o m m i s s i o n ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 ) { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ C O M M I S S I O N ) ; } 
 	 i f   ( t y p e   = =   3 ) { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) , D E A L _ C O M M I S S I O N ) ; } 
 	 i f   ( t y p e   = =   4 ) { r e t u r n   0 ; } 
 
 	 r e t u r n   0 ; 
 }  
  
 l o n g   O r d e r C r e a t e ( 
 	 s t r i n g       s y m b o l           =   " " , 
 	 i n t             t y p e               =   O R D E R _ T Y P E _ B U Y , 
 	 d o u b l e       l o t s               =   0 , 
 	 d o u b l e       o p                   =   0 , 
 	 d o u b l e       s l l                 =   0 , 
 	 d o u b l e       t p l                 =   0 , 
 	 d o u b l e       s l p                 =   0 , 
 	 d o u b l e       t p p                 =   0 , 
 	 d o u b l e       s l i p p a g e       =   0 , 
 	 u l o n g         m a g i c             =   0 , 
 	 s t r i n g       c o m m e n t         =   N U L L , 
 	 c o l o r         a r r o w c o l o r   =   c l r N O N E , 
 	 d a t e t i m e   e x p i r a t i o n   =   0 , 
 	 b o o l           o c o                 =   f a l s e 
 	 ) 
 { 
 	 O n T r a d e ( ) ;   / /   W h e n   p o s i t i o n   i s   c l o s e d   b y   s l   o r   t p ,   t h i s   e v e n t   i s   n o t   f i r e d   ( b y   M e t a T r a d e r )   u n t i l   t h e   e n d   o f   t h e   t i c k ,   a n d   i f   a   n e w   p o s i t i o n   i s   o p e n e d ,   i t   w i l l   b e   m i s s e d .   
 
 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ;   / /   u s e d   t o   m e a s u r e   s p e e d   o f   e x e c u t i o n   o f   t h e   o r d e r 
 	 
 	 b o o l   p l a c e E x p i r a t i o n O b j e c t   =   f a l s e ;   / /   w h e t h e r   o r   n o t   t o   c r e a t e   a n   o b j e c t   f o r   e x p i r a t i o n   f o r   t r a d e s 
 
 	 b o o l   c l o s i n g   =   f a l s e ; 
 	 d o u b l e   l o t s 0   =   0 ; 
 	 l o n g   t y p e 0       =   t y p e ; 
 
 	 i f   ( 
 	 	       ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ N E T T I N G ) 
 	 	 & &   ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 ) 
 	 { 
 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l ) ) 
 	 	 { 
 	 	 	 i f   ( ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   ! =   t y p e ) 
 	 	 	 { 
 	 	 	 	 c l o s i n g   =   t r u e ; 
 	 	 	 } 
 
 	 	 	 l o t s 0   =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ; 
 	 	 	 t y p e 0   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ; 
 	 	 } 
 	 } 
 
 	 u l o n g   t i c k e t   =   - 1 ; 
 
 	 / /   c a l c u l a t e   b u y / s e l l   f l a g   ( 1   w h e n   B u y   o r   - 1   w h e n   S e l l ) 
 	 i n t   b s   =   1 ; 
 
 	 i f   ( 
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P 
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T 
 	 ) 
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
 	 b o o l   s u c c e s s e d   =   f a l s e ; 
 
 	 / / - -   a t t e m p t s   t o   s e n d   p o s i t i o n / o r d e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 w h i l e   ( t r u e ) 
 	 { 
 	 	 d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
 	 	 a s k             =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 	 	 b i d             =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
 	 	 p o i n t         =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 	 t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ; 
 
 	 	 / / -   n o t   e n o u g h   m o n e y   c h e c k :   f i x   m a x i m u m   p o s s i b l e   l o t   b y   m a r g i n   r e q u i r e d ,   o r   q u i t 
 	 	 i f   ( ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L )   & &   c l o s i n g   = =   f a l s e ) 
 	 	 { 
 	 	 	 d o u b l e   L o t S t e p                   =   S y m b o l L o t S t e p ( s y m b o l ) ; 
 	 	 	 d o u b l e   M i n L o t s                   =   S y m b o l M i n L o t ( s y m b o l ) ; 
 	 	 	 d o u b l e   m a r g i n _ r e q u i r e d   =   0 ; 
 	 	 	 b o o l   o c m                               =   O r d e r C a l c M a r g i n ( ( E N U M _ O R D E R _ T Y P E ) t y p e ,   s y m b o l ,   1 ,   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ,   m a r g i n _ r e q u i r e d ) ; 
 	 	 	 s t a t i c   b o o l   n o t _ e n o u g h _ m e s s a g e   =   f a l s e ; 
 
 	 	 	 i f   ( m a r g i n _ r e q u i r e d   ! =   0 ) 
 	 	 	 { 
 	 	 	 	 d o u b l e   m a x _ s i z e _ b y _ m a r g i n   =   A c c o u n t F r e e M a r g i n ( )   /   m a r g i n _ r e q u i r e d ; 
 	 	 	 
 	 	 	 	 i f   ( l o t s   >   m a x _ s i z e _ b y _ m a r g i n ) 
 	 	 	 	 { 
 	 	 	 	 	 d o u b l e   l o t s _ o l d   =   l o t s ; 
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
 
 	 	 	 	 	 	 r e t u r n   - 1 ; 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e 
 	 	 	 	 	 { 
 	 	 	 	 	 	 l o t s   =   M a t h F l o o r ( l o t s   /   L o t S t e p )   *   L o t S t e p ; 
 	 	 	 	 	 	 P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   "   +   D o u b l e T o S t r i n g ( l o t s _ o l d ,   2 )   +   " ,   t h e   v o l u m e   t o   t r a d e   w i l l   b e   t h e   m a x i m u m   p o s s i b l e   o f   "   +   D o u b l e T o S t r i n g ( l o t s ,   2 ) ) ; 
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
 	 	 	 c o m m e n t   =   S t r i n g S u b s t r ( c o m m e n t ,   0 ,   3 1 ) ; 
 	 	 } 
 
 	 	 / / -   e x p i r a t i o n   f o r   t r a d e s 
 	 	 i f   ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( e x p i r a t i o n   >   0 ) 
 	 	 	 { 
 	 	 	 	 / / -   b o   b r o k e r ? 
 	 	 	 	 i f   ( 
 	 	 	 	 	       S t r i n g L e n ( s y m b o l )   >   6 
 	 	 	 	 	 & &   S t r i n g S u b s t r ( s y m b o l ,   S t r i n g L e n ( s y m b o l )   -   2 )   = =   " b o " 
 	 	 	 	 )   { 
 	 	 	 	 	 / / -   c o n v e r t   U N I X   t o   s e c o n d s 
 	 	 	 	 	 i f   ( e x p i r a t i o n   >   T i m e C u r r e n t ( ) - 1 0 0 ) 
 	 	 	 	 	 { 
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
 	 	 i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L ) 
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
 	 	 v s l   =   0 ; 
 	 	 v t p   =   0 ; 
 
 	 	 s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ,   s l p ) ; 
 
 	 	 i f   ( s l   <   0 )   { b r e a k ; } 
 
 	 	 t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ,   t p p ) ; 
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
 	 	 	 
 	 	 	 d o u b l e   a s k b i d   =   ( b s   >   0 )   ?   a s k   :   b i d ; 
 	 	 	 
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
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ; 
 	 	 M q l T r a d e R e s u l t   r e s u l t ; 
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ; 
 	 	 Z e r o M e m o r y ( r e q u e s t ) ; 
 	 	 Z e r o M e m o r y ( r e s u l t ) ; 
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ; 
 
 	 	 E N U M _ S Y M B O L _ T R A D E _ E X E C U T I O N   e x e c   =   ( E N U M _ S Y M B O L _ T R A D E _ E X E C U T I O N ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ T R A D E _ E X E M O D E ) ; 
 
 	 	 / / - -   f i x   p r i c e s   b y   t i c k s i z e 
 	 	 o p   =   M a t h R o u n d ( o p   /   t i c k s i z e )   *   t i c k s i z e ; 
 	 	 s l   =   M a t h R o u n d ( s l   /   t i c k s i z e )   *   t i c k s i z e ; 
 	 	 t p   =   M a t h R o u n d ( t p   /   t i c k s i z e )   *   t i c k s i z e ; 
 
 	 	 r e q u e s t . s y m b o l           =   s y m b o l ; 
 	 	 r e q u e s t . t y p e               =   ( E N U M _ O R D E R _ T Y P E ) t y p e ; 
 	 	 r e q u e s t . v o l u m e           =   l o t s ; 
 	 	 r e q u e s t . p r i c e             =   o p ; 
 	 	 r e q u e s t . d e v i a t i o n     =   ( u l o n g ) ( s l i p p a g e   *   P i p V a l u e ( s y m b o l ) ) ; 
 	 	 r e q u e s t . s l                   =   s l ; 
 	 	 r e q u e s t . t p                   =   t p ; 
 	 	 r e q u e s t . c o m m e n t         =   c o m m e n t ; 
 	 	 r e q u e s t . m a g i c             =   m a g i c ; 
 	 	 r e q u e s t . t y p e _ t i m e     =   E x p i r a t i o n T y p e B y T i m e ( s y m b o l ,   e x p i r a t i o n ) ; 
 	 	 r e q u e s t . e x p i r a t i o n   =   e x p i r a t i o n ; 
 
 	 	 / / - -   r e q u e s t   a c t i o n 
 	 	 i f   ( t y p e   >   O R D E R _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 r e q u e s t . a c t i o n   =   T R A D E _ A C T I O N _ P E N D I N G ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 r e q u e s t . a c t i o n   =   T R A D E _ A C T I O N _ D E A L ; 
 	 	 } 
 	 	 / / - -   f i l l i n g   t y p e 
 	 	 
 	 	 / /   c h e c k   O R D E R _ F I L L I N G _ R E T U R N   f o r   p e n d i n g   o r d e r s   o n l y   
 	 	 i f   ( t y p e   >   O R D E R _ T Y P E _ S E L L ) 
 	 	 { 
 	 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) ) 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ; 
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ F O K ) ) 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ; 
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ I O C ) ) 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 / /   i n   c a s e   o f   p o s i t i o n s   I   w o u l d   c h e c k   f o r   S Y M B O L _ F I L L I N G _   a n d   t h e n   s e t   O R D E R _ F I L L I N G _ 
 	 	 	 / /   t h i s   i s   b e c a u s e   i t   a p p e a r s   t h a t   I s F i l l i n g T y p e A l l o w e d ( )   w o r k s   c o r r e c t   w i t h   S Y M B O L _ F I L L I N G _ ,   b u t   t h e n   t h e   p o s i t i o n   w o r k s   c o r r e c t l y   w i t h   O R D E R _ F I L L I N G _ 
 	 	 	 / /   F O K   a n d   I O C   i n t e g e r   v a l u e s   a r e   n o t   t h e   s a m e   f o r   O R D E R   a n d   S Y M B O L 
 
 	 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ F O K ) ) 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ; 
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ I O C ) ) 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ; 
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) )   / /   j u s t   i n   c a s e 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ; 
 	 	 	 e l s e 
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ; 
 	 	 } 
 
 	 	 i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) ) 
 	 	 { 
 	 	 	 P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   " ,   ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t ,   "   ( " ,   ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e ,   " ) " ) ; 
 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 
 	 	 b o o l   s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ; 
 
 	 	 / / - -   c h e c k   s e c u r i t y   f l a g   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( s u c c e s s e d   = =   t r u e ) 
 	 	 { 
 	 	 	 P r i n t ( " T h e   p r o g r a m   w i l l   b e   r e m o v e d   b e c a u s e   o f   s u s p i c i o u s   a t t e m p t   t o   c r e a t e   a   n e w   p o s i t i o n " ) ; 
 	 	 	 E x p e r t R e m o v e ( ) ; 
 	 	 	 S l e e p ( 1 0 0 0 0 ) ; 
 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 i f   ( s u c c e s s )   { s u c c e s s e d   =   t r u e ; } 
 
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( 
 	 	 	       s u c c e s s   = =   f a l s e 
 	 	 	 | |   ( 
 	 	 	 	       r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E 
 	 	 	 	 & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ P L A C E D 
 	 	 	 	 & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L 
 	 	 	 ) 
 	 	 ) 
 	 	 { 
 	 	 	 s t r i n g   e r r m s g p f x   =   ( t y p e   >   O R D E R _ T Y P E _ S E L L )   ?   " N e w   p e n d i n g   o r d e r   e r r o r "   :   " N e w   p o s i t i o n   e r r o r " ; 
 
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ; 
 
 	 	 	 s w i t c h   ( e r r a c t i o n ) 
 	 	 	 { 
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
 	 	 	 } 
 
 	 	 	 r e t u r n   - 1 ; 
 	 	 } 
 
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 i f   ( 
 	 	 	       r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E 
 	 	 	 | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ P L A C E D 
 	 	 	 | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L 
 	 	 )   { 
 	 	 	 t i c k e t   =   r e s u l t . o r d e r ; 
 	 	 	 / / = =   W h a t e v e r   w a s   c r e a t e d ,   w e   n e e d   t o   w a i t   u n t i l   M T 5   u p d a t e s   i t ' s   c a c h e 
 
 	 	 	 / / - -   S y n c h r o n i z e :   P o s i t i o n 
 	 	 	 i f   ( t y p e   < =   O R D E R _ T Y P E _ S E L L ) 
 	 	 	 { 
 	 	 	 	 i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ N E T T I N G ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( c l o s i n g   = =   f a l s e ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 / / -   n e w   p o s i t i o n :   2   s i t u a t i o n s   h e r e   -   n e w   p o s i t i o n   o r   a d d   t o   p o s i t i o n 
 	 	 	 	 	 	 / / -   . . .   b e c a u s e   o f   t h a t   w e   w i l l   c h e c k   t h e   l o t   s i z e   i n s t e a d   o f   P o s i t i o n S e l e c t 
 	 	 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( l o t s 0   ! =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ) )   { b r e a k ; } 
 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 	 e l s e 
 	 	 	 	 	 { 
 	 	 	 	 	 	 / / -   c l o s i n g   p o s i t i o n :   f u l l 
 	 	 	 	 	 	 i f   ( l o t s 0   = =   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 i f   ( ! P o s i t i o n S e l e c t ( s y m b o l ) )   { b r e a k ; } 
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 } 
 	 	 	 	 	 	 / / -   c l o s i n g   p o s i t i o n :   p a r t i a l 
 	 	 	 	 	 	 e l s e   i f   ( l o t s 0   >   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( l o t s 0   ! =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ) )   { b r e a k ; } 
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 } 
 	 	 	 	 	 	 e l s e   i f   ( l o t s 0   <   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 / / - -   p o s i t i o n   r e v e r s e 
 	 	 	 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( t y p e 0   ! =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ) )   { b r e a k ; } 
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 	 e l s e   i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ H E D G I N G ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( c l o s i n g   = =   f a l s e ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   { b r e a k ; } 
 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 / / - -   S y n c h r o n i z e :   O r d e r 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 w h i l e   ( t r u e ) 
 	 	 	 	 { 
 	 	 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( r e s u l t . o r d e r ) )   { b r e a k ; } 
 	 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 / / - -   f i x   a r r o w   c o l o r   ( i t   w o r k s   o n l y   i n   v i s u a l   m o d e ) 
 	 	 	 / /   T O D O :   t h i s   p i e c e   o f   c o d e   s l o w s   d o w n   t h e   b a c k t e s t   f o r   s o m e   r e a s o n 
 	 	 	 i f   ( 0   & &   M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )   & &   a r r o w c o l o r   ! =   C L R _ N O N E ) 
 	 	 	 { 
 	 	 	 	 i f   ( t y p e   < =   O R D E R _ T Y P E _ S E L L ) 
 	 	 	 	 { 
 	 	 	 	 	 u i n t   t 0   =   G e t T i c k C o u n t ( ) ; 
 	 	 	 	 	 E N U M _ O B J E C T   o b j T y p e   =   ( t y p e = = P O S I T I O N _ T Y P E _ B U Y )   ?   O B J _ A R R O W _ B U Y   :   O B J _ A R R O W _ S E L L ; 
 
 	 	 	 	 	 / /   w a i t   f o r   t h e   o b j e c t   t o   b e   c r e a t e d   ( M Q L 5   i s   a s y n c   e v e n   h e r e ) 
 	 	 	 	 	 w h i l e ( t r u e ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 i n t   t o t a l                 =   O b j e c t s T o t a l ( 0 , 0 , o b j T y p e ) ; 
 	 	 	 	 	 	 s t r i n g   n a m e             =   O b j e c t N a m e ( 0 , t o t a l - 1 , 0 , o b j T y p e ) ; 
 	 	 	 	 	 	 d a t e t i m e   o b j T i m e   =   ( d a t e t i m e ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E ) ; 
 
 	 	 	 	 	 	 i f   ( o b j T i m e   >   T i m e C u r r e n t ( ) - 1 ) 
 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 i f   ( S t r i n g F i n d ( n a m e ,   " # "   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   "   " )   = =   0 ) 
 	 	 	 	 	 	 	 { 
 	 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O L O R , a r r o w c o l o r ) ; 
 	 	 	 	 	 	 	 } 
 
 	 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 	 } 
 
 	 	 	 	 	 	 i f   ( G e t T i c k C o u n t ( )   -   t 0   >   1 0 0 0 )   b r e a k ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 / /   P e n d i n g   o r d e r s   d o n ' t   h a v e   a r r o w s 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
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
 	 	 	 i f   ( L o a d P o s i t i o n ( t i c k e t ) ) 
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
 	 	 	 
 	 	 	 / / - -   f i x   s t o p s   i n   c a s e   o f   s l i p p a g e 
 	 	 	 i f   ( 
 	 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) 
 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) 
 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) 
 	 	 	 )   { 
 
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
 	 	 	 	 	 	 M o d i f y O r d e r ( t i c k e t ,   O r d e r O p e n P r i c e ( ) ,   s l ,   t p ,   0 ,   0 ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 / / R e g i s t e r E v e n t ( " t r a d e " ) ; 
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
 	 	 
 	 	 i n t   t y p e o c o   =   t y p e ; 
 
 	 	 i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ S T O P ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ S E L L _ S T O P ; 
 	 	 	 o p   =   b i d   -   M a t h A b s ( o p - a s k ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ L I M I T ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ S E L L _ L I M I T ; 
 	 	 	 o p   =   b i d   +   M a t h A b s ( o p - a s k ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ B U Y _ S T O P ; 
 	 	 	 o p   =   a s k   +   M a t h A b s ( o p - b i d ) ; 
 	 	 } 
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) 
 	 	 { 
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ B U Y _ L I M I T ; 
 	 	 	 o p   =   a s k   -   M a t h A b s ( o p - b i d ) ; 
 	 	 } 
 
 	 	 i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ L I M I T ) 
 	 	 { 
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   -   s l   :   0 ; 
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   +   t p   :   0 ; 
 	 	 } 
 	 	 e l s e   { 
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   +   s l   :   0 ; 
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   -   t p   :   0 ; 
 	 	 } 
 
 	 	 c o m m e n t   =   " [ o c o : "   +   ( s t r i n g ) t i c k e t   +   " ] " ; 
 
 	 	 O r d e r C r e a t e ( 
 	 	 	 s y m b o l , 
 	 	 	 t y p e o c o , 
 	 	 	 l o t s , 
 	 	 	 o p , 
 	 	 	 s l , 
 	 	 	 t p , 
 	 	 	 0 , 
 	 	 	 0 , 
 	 	 	 s l i p p a g e , 
 	 	 	 m a g i c , 
 	 	 	 c o m m e n t , 
 	 	 	 a r r o w c o l o r , 
 	 	 	 e x p i r a t i o n , 
 	 	 	 f a l s e 
 	 	 ) ; 
 	 } 
 
 	 O n T r a d e ( ) ; 
 
 	 r e t u r n   ( l o n g ) t i c k e t ; 
 }  
  
 d a t e t i m e   O r d e r E x p i r a t i o n ( ) 
 { 
 	 r e t u r n   O r d e r E x p i r a t i o n T i m e ( ) ; 
 }  
  
 d a t e t i m e   O r d e r E x p i r a t i o n T i m e ( ) 
 { 
 	 i n t   L o a d e d T y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( L o a d e d T y p e   = =   1 )   r e t u r n   e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ) ; 
 	 i f   ( L o a d e d T y p e   = =   2 )   r e t u r n   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ E X P I R A T I O N ) ; 
 
 	 r e t u r n   0 ; 
 }  
  
 d o u b l e   O r d e r L o t s ( ) 
 { 
 	 i n t   t y p e         =   L o a d e d T y p e ( ) ; 
 	 d o u b l e   l o t s   =   0 ; 
 
 	 i f   ( t y p e   = =   1 )   { 
 	 	 l o t s   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   3 )   { 
 	 	 / /   C a l c u l a t e   l o t s   a s   t h e   d i f f e r e n c e   b e t w e e n   t h e   i n t i a l   l o t s 
 	 	 / /   a n d   t h e   l o t s   o f   a l l   
 
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 	 l o t s   =   0 . 0 ; 
 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   t o t a l ;   i + + )   { 
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ; 
 	 	 	 E N U M _ D E A L _ E N T R Y   e n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y ) ; 
 	 	 	 d o u b l e   d e a l V o l u m e   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ V O L U M E ) ; 
 
 	 	 	 i f   ( e n t r y   = =   D E A L _ E N T R Y _ I N )   { 
 	 	 	 	 l o t s   + =   d e a l V o l u m e ; 
 	 	 	 } 
 	 	 	 e l s e   { 
 	 	 	 	 / /   I f   t h e   l a s t   d e a l   i s   t h e   f i n a l   c l o s e ,   i t ' s   s i z e   w o u l d   b e   t h e   s a m e   a s   t h e 
 	 	 	 	 / /   c a l c u l a t e d   l o t s .   I n   t h i s   c a s e ,   s k i p ,   o t h e r w i s e   t h e   f i n a l   l o t s   w i l l   b e   0 . 
 	 	 	 	 i f   ( N o r m a l i z e D o u b l e ( d e a l V o l u m e ,   4 )   <   N o r m a l i z e D o u b l e ( l o t s ,   4 ) )   { 
 	 	 	 	 	 l o t s   - =   d e a l V o l u m e ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   4 )   { l o t s   =   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) , O R D E R _ V O L U M E _ I N I T I A L ) ; } 
 	 e l s e                                 { l o t s   =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ; } 
 
 	 r e t u r n   N o r m a l i z e D o u b l e ( l o t s ,   2 ) ; 
 }  
  
 i n t   O r d e r M a g i c N u m b e r ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) , D E A L _ P O S I T I O N _ I D ) , O R D E R _ M A G I C ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ M A G I C ) ; } 
 
 	 r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ; 
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
 d o u b l e   O r d e r O p e n P r i c e ( ) 
 { 
 	 d o u b l e   o p     =   0 . 0 ; 
 	 i n t   t y p e       =   L o a d e d T y p e ( ) ; 
 	 i n t   d i g i t s   =   ( i n t ) S y m b o l I n f o I n t e g e r ( O r d e r S y m b o l ( ) ,   S Y M B O L _ D I G I T S ) ; 
 
 	 i f   ( t y p e   = =   1 ) 
 	 { 
 	 	 o p   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ O P E N ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   3 ) 
 	 { 
 	 	 / /   G e t   t h e   v a l u e   f r o m   t h e   v e r y   f i r s t   d e a l   i n   t h e   p o s i t i o n 
 
 	 	 u l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 
 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 
 	 	 o p   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ P R I C E ) ; 
 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   4 ) 
 	 { 
 	 	 o p   =   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) ,   O R D E R _ P R I C E _ O P E N ) ; 
 	 } 
       e l s e 
       { 
       	 o p   =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) ; 
       } 
 
 	 r e t u r n   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
 }  
  
 d a t e t i m e   O r d e r O p e n T i m e ( ) 
 { 
 	 d a t e t i m e   t i m e   =   0 ; 
 	 i n t   t y p e             =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 ) 
 	 { 
 	 	 t i m e   =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   3 ) 
 	 { 
 	 	 / /   G e t   t h e   v a l u e   f r o m   t h e   v e r y   f i r s t   d e a l   i n   t h e   p o s i t i o n 
 
 	 	 u l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 
 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 	 	 
 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T I M E ) ; 
 	 	 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 } 
 	 e l s e   i f   ( t y p e   = =   4 ) 
 	 { 
 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T I M E _ S E T U P ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 t i m e   =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P ) ; 
 	 } 
 	 
 	 r e t u r n   t i m e ; 
 }  
  
 d o u b l e   O r d e r P r o f i t ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
       i f   ( t y p e   = =   1 )   { 
 	 	 r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R O F I T ) ; 
 	 } 
       i f   ( t y p e   = =   3 )   { 
 	 	 r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ P R O F I T ) ; 
 	 } 
       i f   ( t y p e   = =   4 )   { 
 	 	 r e t u r n   0 ; 
 	 } 
 	 
 	 r e t u r n   0 ; 
 }  
  
 d o u b l e   O r d e r S t o p L o s s ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ S L ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) ,   O R D E R _ S L ) ; } 
 
 	 r e t u r n   O r d e r G e t D o u b l e ( O R D E R _ S L ) ; 
 }  
  
 d o u b l e   O r d e r S w a p ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S W A P ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) , D E A L _ S W A P ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   0 ; } 
 
 	 r e t u r n   0 ; 
 }  
  
 s t r i n g   O r d e r S y m b o l ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t S t r i n g ( O r d e r T i c k e t ( ) , D E A L _ S Y M B O L ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( O r d e r T i c k e t ( ) , O R D E R _ S Y M B O L ) ; } 
 
 	 r e t u r n   O r d e r G e t S t r i n g ( O R D E R _ S Y M B O L ) ; 
 }  
  
 d o u b l e   O r d e r T a k e P r o f i t ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) ; } 
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ T P ) ; } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) , O R D E R _ T P ) ; } 
 
 	 r e t u r n   O r d e r G e t D o u b l e ( O R D E R _ T P ) ; 
 }  
  
 l o n g   O r d e r T i c k e t ( l o n g   t i c k e t   =   0 ) 
 { 
 	 s t a t i c   l o n g   m e m o r y   =   0 ; 
 
 	 i f   ( t i c k e t   >   0 )   { m e m o r y   =   t i c k e t ; } 
 
 	 r e t u r n   m e m o r y ; 
 }  
  
 i n t   O r d e r T y p e ( ) 
 { 
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ; 
 
 	 i f   ( t y p e   = =   1 )   { r e t u r n   ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ; } 
 	 i f   ( t y p e   = =   2 )   { r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ; } 
 	 i f   ( t y p e   = =   3 ) 
 	 { 
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ; 
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ; 
 
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ; 
 
 	 	 u l o n g   f i r s t D e a l T i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 	 	 
 	 	 i n t   o r d e r T y p e   =   ( i n t ) H i s t o r y D e a l G e t I n t e g e r ( f i r s t D e a l T i c k e t ,   D E A L _ T Y P E ) ; 
 
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 
 	 	 r e t u r n   o r d e r T y p e ; 
 	 } 
 	 i f   ( t y p e   = =   4 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ T Y P E ) ; } 
 
 	 r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ; 
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
 	 i f   ( L o a d P e n d i n g O r d e r ( O r d e r G e t T i c k e t ( i n d e x ) ) ) 
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
 	 b o o l   s u c c e s s   =   O r d e r S e l e c t ( t i c k e t ) ; 
 
 	 i f   ( s u c c e s s )   { 
 	 	 L o a d e d T y p e ( 2 ) ; 
 	 	 O r d e r T i c k e t ( t i c k e t ) ; 
 	 } 
 
 	 r e t u r n   s u c c e s s ; 
 }  
  
 d o u b l e   P i p V a l u e ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   C u s t o m P o i n t ( s y m b o l )   /   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 }  
  
 b o o l   P o s i t i o n S e l e c t B y D e a l ( u l o n g   d e a l T i c k e t ) 
 { 
 	 b o o l   s u c c e s s   =   f a l s e ; 
 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ; 
 	 
 	 i f   ( p o s i t i o n I d ) 
 	 { 
 	 	 i n t   t o t a l   =   P o s i t i o n s T o t a l ( ) ; 
 	 	 
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - ) 
 	 	 { 
 	 	 	 i f   ( P o s i t i o n G e t T i c k e t ( i ) ) 
 	 	 	 { 
 	 	 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R )   = =   p o s i t i o n I d ) 
 	 	 	 	 { 
 	 	 	 	 	 s u c c e s s   =   t r u e ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   s u c c e s s ; 
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
 d a t e t i m e   S e l e c t e d H i s t o r y F r o m T i m e ( d a t e t i m e   s e t T i m e   =   - 1 ) 
 { 
 	 s t a t i c   d a t e t i m e   t i m e ; 
 	 
 	 i f   ( s e t T i m e   >   - 1 ) 
 	 { 
 	 	 t i m e   =   s e t T i m e ; 
 	 } 
 	 
 	 r e t u r n   t i m e ; 
 }  
  
 d a t e t i m e   S e l e c t e d H i s t o r y T o T i m e ( d a t e t i m e   s e t T i m e   =   - 1 ) 
 { 
 	 s t a t i c   d a t e t i m e   t i m e ; 
 	 
 	 i f   ( s e t T i m e   >   - 1 ) 
 	 { 
 	 	 t i m e   =   s e t T i m e ; 
 	 } 
 	 
 	 r e t u r n   t i m e ; 
 }  
  
 l o n g   S e l l L a t e r ( 
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
 	 E N U M _ O R D E R _ T Y P E   t y p e   =   0 ; 
 
 	           i f   ( p r i c e   = =   b i d )   { t y p e   =   O R D E R _ T Y P E _ S E L L ; } 
 	 e l s e   i f   ( p r i c e   <   b i d )     { t y p e   =   O R D E R _ T Y P E _ S E L L _ S T O P ; } 
 	 e l s e   i f   ( p r i c e   >   b i d )     { t y p e   =   O R D E R _ T Y P E _ S E L L _ L I M I T ; } 
 
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
 l o n g   S e l l N o w ( 
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
 	 	 P O S I T I O N _ T Y P E _ S E L L , 
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
 i n t   S t r T o I n t e g e r ( s t r i n g   v a l u e ) 
 { 
 	 r e t u r n   ( i n t ) S t r i n g T o I n t e g e r ( v a l u e ) ; 
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
 	 i n t   s i z e             =   A r r a y S i z e ( a r r a y ) ; 
 
       f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 { 
             S t r i n g C o n c a t e n a t e ( r e t v a l ,   r e t v a l ,   ( s t r i n g ) a r r a y [ i ] ,   d e l i m e t e r ) ; 
       } 
 
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
 	 S t r i n g T r i m R i g h t ( t e x t ) ; 
 	 S t r i n g T r i m L e f t ( t e x t ) ; 
 
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
 d o u b l e   S y m b o l L o t S i z e ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ C O N T R A C T _ S I Z E ) ; 
 }  
  
 d o u b l e   S y m b o l L o t S t e p ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ S T E P ) ; 
 }  
  
 d o u b l e   S y m b o l M a x L o t ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ; 
 }  
  
 d o u b l e   S y m b o l M i n L o t ( s t r i n g   s y m b o l ) 
 { 
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ; 
 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ; 
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
 i n t   T i m e D a y ( d a t e t i m e   t i m e )  
 {  
 	 M q l D a t e T i m e   t m ;  
       T i m e T o S t r u c t ( t i m e , t m ) ;  
       r e t u r n ( t m . d a y ) ;  
 }  
  
 i n t   T i m e D a y O f W e e k ( d a t e t i m e   t i m e )  
 {  
       M q l D a t e T i m e   t m ;  
       T i m e T o S t r u c t ( t i m e , t m ) ;  
       r e t u r n ( t m . d a y _ o f _ w e e k ) ;  
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
 i n t   T i m e H o u r ( d a t e t i m e   t i m e ) 
 { 
 	 M q l D a t e T i m e   t m ; 
 	 T i m e T o S t r u c t ( t i m e , t m ) ; 
 
 	 r e t u r n   t m . h o u r ; 
 }  
  
 i n t   T i m e M i n u t e ( d a t e t i m e   t i m e ) 
 { 
 	 M q l D a t e T i m e   t m ; 
 	 T i m e T o S t r u c t ( t i m e , t m ) ; 
 	 
 	 r e t u r n   t m . m i n ; 
 }  
  
 i n t   T i m e M o n t h ( d a t e t i m e   t i m e ) 
 { 
 	 M q l D a t e T i m e   t m ; 
 	 T i m e T o S t r u c t ( t i m e , t m ) ; 
 
 	 r e t u r n   t m . m o n ; 
 }  
  
 i n t   T i m e S e c o n d s ( d a t e t i m e   t i m e ) 
 { 
 	 M q l D a t e T i m e   t m ; 
 	 T i m e T o S t r u c t ( t i m e , t m ) ; 
 
 	 r e t u r n   t m . s e c ; 
 }  
  
 i n t   T i m e Y e a r ( d a t e t i m e   t i m e ) 
 { 
       M q l D a t e T i m e   t m ; 
 	 T i m e T o S t r u c t ( t i m e , t m ) ; 
 
 	 r e t u r n   t m . y e a r ; 
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
 	 i f   ( L o a d P o s i t i o n ( P o s i t i o n G e t T i c k e t ( i n d e x ) ) ) 
 	 { 
 	 	 i f   ( F i l t e r O r d e r B y ( 
 	 	 	 g r o u p _ m o d e , 
 	 	 	 g r o u p , 
 	 	 	 m a r k e t _ m o d e , 
 	 	 	 m a r k e t , 
 	 	 	 B u y s O r S e l l s ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   T r a d e S e l e c t B y T i c k e t ( u l o n g   t i c k e t ) 
 { 
 	 i f   ( L o a d P o s i t i o n ( t i c k e t )   & &   O r d e r T y p e ( )   <   2 ) 
 	 { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 i n t   T r a d e s T o t a l ( ) 
 { 
 	 r e t u r n   P o s i t i o n s T o t a l ( ) ; 
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
 i n t   W i n d o w F i n d V i s i b l e ( l o n g   c h a r t _ i d ,   s t r i n g   t e r m )  
 {  
       / / - -   t h e   s e a r c h   t e r m   c a n   b e   c h a r t   n a m e ,   s u c h   a s   F o r c e ( 1 3 ) ,   o r   s u b w i n d o w   i n d e x  
       i f   ( t e r m   = =   " "   | |   t e r m   = =   " 0 " )   { r e t u r n   0 ; }  
        
       i n t   s u b w i n d o w   =   ( i n t ) S t r i n g T o I n t e g e r ( t e r m ) ;  
        
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
 d o u b l e   a s k ( s t r i n g   s y m b o l   =   N U L L ) 
 { 
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
 }  
  
 d o u b l e   a t t r L o t s I n i t i a l ( ) 
 { 
 	 d o u b l e   r e t v a l   =   0 . 0 ; 
 	 u l o n g   t i c k e t   =   O r d e r T i c k e t ( ) ; 
 
 	 l o n g   p a r e n t T i c k e t   =   a t t r T i c k e t P a r e n t ( t i c k e t ) ; 
 
 	 i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( p a r e n t T i c k e t ) )   { 
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 	 i f   ( t o t a l   >   0 )   { 
 	 	 	 l o n g   d e a l T i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 
 	 	 	 r e t v a l   =   H i s t o r y D e a l G e t D o u b l e ( d e a l T i c k e t ,   D E A L _ V O L U M E ) ; 
 	 	 } 
 	 } 
 
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ; 
 
       r e t u r n   r e t v a l ; 
 } 
 
 d o u b l e   a t t r L o t s I n i t i a l ( s t r i n g   s y m b o l )   { 
 	 d o u b l e   r e t v a l   =   0 . 0 ; 
 
       i f   ( ! P o s i t i o n S e l e c t ( s y m b o l ) )   { 
       	 r e t u r n   0 . 0 ; 
       } 
     
       l o n g   p o s i t i o n I d   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ; 
       
       i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) )   { 
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ; 
 
 	 	 i f   ( t o t a l   >   0 )   { 
 	 	 	 l o n g   t i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ; 
 	 	 	 
 	 	 	 r e t v a l   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ V O L U M E ) ; 
 	 	 } 
 	 } 
 
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ; 
 	 	 
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
 l o n g   a t t r T i c k e t I n L o o p ( l o n g   t i c k e t   =   0 ) 
 { 
 	 s t a t i c   l o n g   t ; 
 
 	 i f   ( t i c k e t   >   0 )   { t   =   t i c k e t ; } 
 
 	 r e t u r n   t ; 
 }  
  
 / * * 
 *   G e t   t h e   p a r e n t   p o s i t i o n   t i c k e t   w h e n   t h e   c u r r e n t   p o s i t i o n 
 *   w a s   c r e a t e d   a s   " a d d   t o   v o l u m e "   c h i l d . 
 *   I n   o t h e r   c a s e s ,   r e t u r n   t h e   i n p u t   t i c k e t . 
 * / 
 l o n g   a t t r T i c k e t P a r e n t ( l o n g   t i c k e t ) 
 { 
 	 l o n g   p a r e n t T i c k e t   =   0 ; 
 
 	 i f   ( P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   { 
 	 	 s t r i n g   c o m m e n t   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ; 
 	 	 i n t   t a g P o s           =   S t r i n g F i n d ( c o m m e n t ,   " [ p = " ) ; 
 	 	 
 	 	 i f   ( t a g P o s   > =   0 )   { 
 	 	 	 s t r i n g   t a g       =   S t r i n g S u b s t r ( c o m m e n t ,   t a g P o s ) ; 
 	 	 	 t a g                     =   S t r i n g S u b s t r ( t a g ,   0 ,   S t r i n g F i n d ( t a g ,   " ] " )   +   1 ) ; 
 	 	 	 p a r e n t T i c k e t   =   S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( t a g ,   3 ,   - 1 ) ) ; 
 	 	 } 
 	 } 
 
 	 i f   ( p a r e n t T i c k e t   = =   0 )   { 
 	 	 p a r e n t T i c k e t   =   t i c k e t ; 
 	 } 
 
 	 r e t u r n   p a r e n t T i c k e t ; 
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
 l o n g   e _ a t t r M a g i c N u m b e r ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e M a g i c ( ) ; }  
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
 l o n g   e _ a t t r T i c k e t ( )   { r e t u r n   o n T r a d e E v e n t D e t e c t o r . E v e n t V a l u e T i c k e t ( ) ; }  
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
 d o u b l e   f x d C u s t o m I n d i c a t o r ( i n t   h a n d l e ,   i n t   m o d e = 0 ,   i n t   s h i f t = 0 ) 
 { 
 	 s t a t i c   d o u b l e   b u f f e r [ 1 ] ; 
 
 	 i f   ( h a n d l e   <   0 ) 
 	 { 
 	 	 P r i n t ( " E r r o r :   I n d i c a t o r   n o t   h a n d l e d .   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ; 
 	 	 r e t u r n   0 ; 
 	 } 
 
 	 i n t   t r y o u t s   =   0 ; 
 
 	 w h i l e   ( t r u e ) 
 	 { 
 	 	 i f   ( B a r s C a l c u l a t e d ( h a n d l e )   >   0 )   b r e a k ; 
 	 	 e l s e 
 	 	 { 
 	 	 	 t r y o u t s + + ; 
 
 	 	 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) ) 
 	 	 	 { 
 	 	 	 	 S l e e p ( 1 0 ) ; 
 	 	 	 } 
 	 	 	 e l s e 
 	 	 	 { 
 	 	 	 	 i f   ( t r y o u t s   >   1 0 0 ) 
 	 	 	 	 { 
 	 	 	 	 	 P r i n t ( " E r r o r :   C u s t o m   i n d i c a t o r   c o u l d   n o t   l o a d   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ; 
 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 
 	 	 	 	 S l e e p ( 5 0 ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 i n t   s u c c e s s   =   C o p y B u f f e r ( h a n d l e , m o d e , s h i f t , 1 , b u f f e r ) ; 
 
 	 i f   ( s u c c e s s   <   0 ) 
 	 { 
 	 	 P r i n t ( " E r r o r :   C a n n o t   g e t   v a l u e   f r o m   a   c u s t o m   i n d i c a t o r .   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ; 
 	 	 r e t u r n   0 ; 
 	 } 
 
 	 / / A r r a y S e t A s S e r i e s ( b u f f e r , t r u e ) ; 
 
 	 r e t u r n   b u f f e r [ 0 ] ; 
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
 d o u b l e   i M A C D (   
 	 s t r i n g                           s y m b o l , 
 	 E N U M _ T I M E F R A M E S         t i m e f r a m e , 
 	 i n t                                 f a s t _ e m a _ p e r i o d , 
 	 i n t                                 s l o w _ e m a _ p e r i o d , 
 	 i n t                                 s i g n a l _ p e r i o d , 
 	 E N U M _ A P P L I E D _ P R I C E   a p p l i e d _ p r i c e , 
 	 i n t                                 m o d e , 
 	 i n t                                 s h i f t 
 ) 
 { 
 	 i n t   h a n d l e   =   i M A C D ( s y m b o l ,   t i m e f r a m e ,   f a s t _ e m a _ p e r i o d ,   s l o w _ e m a _ p e r i o d ,   s i g n a l _ p e r i o d ,   a p p l i e d _ p r i c e ) ; 
 	 d o u b l e   v a l   =   f x d C u s t o m I n d i c a t o r ( h a n d l e ,   m o d e ,   s h i f t ) ; 
 
 	 r e t u r n   N o r m a l i z e D o u b l e ( v a l ,   1 0 ) ; 
 }  
  
 d o u b l e   i R S I (   
 	 s t r i n g                           s y m b o l , 
 	 E N U M _ T I M E F R A M E S         t i m e f r a m e , 
 	 i n t                                 p e r i o d , 
 	 E N U M _ A P P L I E D _ P R I C E   a p p l i e d _ p r i c e , 
 	 i n t                                 s h i f t 
 ) 
 { 
 	 i n t   h a n d l e   =   i R S I ( s y m b o l ,   t i m e f r a m e ,   p e r i o d ,   a p p l i e d _ p r i c e ) ; 
 	 d o u b l e   v a l   =   f x d C u s t o m I n d i c a t o r ( h a n d l e ,   0 ,   s h i f t ) ; 
 	 
 	 / /   R S I   a p p e a r s   t o   b e   0   i n   M Q L 4   i n   t h e   f e w   m o s t   l e f t   v a l u e s 
 	 i f   ( v a l   = =   E M P T Y _ V A L U E )   { v a l   =   0 ; } 
 	 
 	 r e t u r n   N o r m a l i z e D o u b l e ( v a l ,   2 ) ; 
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
 / * < f x d r e e m a : e N r t f W 1 z 4 r i y 8 F 9 x z a 1 7 a 8 6 p y R 5 b f s / Z 3 X o I O A l 3 e b t A Z n b u F 5 c D T u I d g j n G T C b 3 1 P z 3 R 2 8 2 t p H B d g w h Q a m a A a y 2 1 C 1 1 t 7 q l V s s 5 N 8 / / v T y X p P M P E 3 8 + d y e h 5 8 + X H / 7 p n J v G + b + 9 c x F + k x G E e v 7 h z n N n 0 w / / X J 7 r 5 x 9 a 1 m X j p j N G v 7 T z D 0 t / F U x c 9 A P W I 9 G H o R P c u y F 9 C D 7 8 8 6 d 3 L p W v T W X V p u P a A K s 2 C N r u f b a G z M p 0 V m U m r k w u j 5 r J q s 3 A t S k 1 o A Z g V 4 q 4 N r U 8 b k x K N V y b V r 4 2 j Y m c h K v T S 1 a H 3 p T z B 9 W o U B 3 I r 8 4 s N x C o N v Z I E C 6 R x A r o s X u P 4 C d J d V U I C K 9 I o D z F 7 P r I 8 E p y B Q S V f O 6 T l P L 1 A c B E U C Y V q h U q l J k V K q R C r U K F C r N C l V R Y Q U S A y q y Q 9 m E F I Q H s Q a Z c a F a o k C k n g M g J q C A n w G R V K B O 2 B h X k B L 3 K q J C w D Q A V K m S z D V H 5 Q C 4 t e O h N B o J E 8 E A F Q W H r L p l M v q C C o M h M y Z M o x R U E R W Y K i k w E B e i l u 3 B 7 f U b 5 + t j K m t Z n l p 8 6 m V M d U T R y B e O K O d U R j p a r i A i b Y c j 4 y h V E R G L q L Z m o G b n C X K K w h Z g a b R V k R G a q G Y U I n V x B R h S m j C h 0 j L X S L K g w t Y x C W F C u M J c o z D F R i F a Q K 8 w l C l N I F M o 1 5 U 0 u h c m F C h l j p c J U o r D H m M y e i l R e K 7 C 5 m t Z X Z S Z h 9 y A R Z K W C m L A x V I j c K R X E R G X K n U r E R K k g J i p T U 6 u E r Z U K U 4 n K l B O V D k o F O V G Z g 6 I S Q V Y q y I n K n N 9 V y t c V b C 6 V y d c a 9 R I r C I o m M S s k q k G t M K F o z E H R S B + q F S R F Y 7 K N R t h G r S A p G n O U N S I p a g V J 0 Z j a S y P a U K 0 g K R p z l H U 6 y h U k R W f K s k 5 k W a 0 g K T p z y t O J + l I r S I r O Z B u d s k 0 F S d G Z + l C n K y A V J E V n s o 1 O 2 E a r I C k 6 U z n o R D l o F S R F Z 7 K N Q d h G q y A p B l s 5 E L b R q k g K k 2 0 M M s p a B U n R m c r B I H y o a X W Z r x J l m w q S o j F H 2 a B s U 0 F S D K Y s G 0 Q f a l U k h a m + D K K + 9 A q S Y r A Z m 1 Z Y Z U 5 h k m w S x t Y r S I r J 7 k O 6 n l l l T m G y j U k r r C A p J l v 0 C B / q F S T F Z I q e R r S N X k F S D K a 2 M Y n l o F e x v p h 8 a B J Z 1 i t I i s m 2 D y k f m n V V q B E M D b G u Q d G J L B t V 5 h Q m 2 5 h E w R p V J I W p Y H U y y k Y F S T H Z k k I Y 2 6 g i K W y j n S g H o 4 K k G M x B M e n u R B U / h V 0 h 4 U O j g q S Y b E k h s m x U k R S 2 L F M + r C I p m 1 O A j H a z y K i Y Z U U l e p c x z k T 4 z A q y Y m h s H I n S N k E V H J n i Z x B p M e U q N T J 5 R 6 U 1 K v V R T W u s I C 8 S 2 8 I h E m 1 q V Y h W 2 D j S s d Z r W c a O G v r 5 E x f c z v z J N 7 z v D Z + i j W / E U U B C z R h 4 a z w M / B k u V 9 E z 8 / z D V e C v F l 1 / G q H t z G b o m 0 p L 0 H f x / A N e o Y W f o + f H W 3 8 W g S P 8 8 A P 6 Y x T / Q L C T 8 / P R 1 + 5 F v z P C T 6 T z D x e r 5 2 U / G L k z h M L y X I H 4 + u E D R B 5 j g r B z v L k b 0 L K x N / m G v k L E p 9 7 S u Z 2 5 s I t u z 0 X S T e 6 P 0 A 3 I F r 9 4 / u + f u H 8 8 C I B I x t V 5 S 3 u y W o b + Y / S S E X U P 6 T m M / D J 0 H 2 k b j 5 C o m e 3 h Y Z B g 8 + 2 7 / s K d u 9 N + M H U D j K 8 E m 1 0 4 g f P o w q Z h 7 b 4 f T J e J D o I 1 L r z 5 f I 0 m 7 M T l x J l F f T X 3 g 0 c n 7 p 6 l i + o K / Q D T I J P B i i I P U F T A + r s c f y e j v A y d c I V f A 5 S B / L l / d 4 d A R d J 3 U y d 0 Y s x + Y p D Q C w k m k o m I E 8 a B M 3 W F j 3 B M / o F G 5 G 8 U S V g P 7 i B a N 6 x r 5 t 6 F G C P T E A m P h P 4 C P T C h W f 0 T g z w 5 X h g R D W v / 7 g Q e G q / E 6 M C u 8 1 f h Y h U u k 1 V 7 8 B l 6 T y J Y u / Q n r h a 2 M 1 l G f Q O x R t z t T L 7 d Q 6 6 c T 8 8 m / s w P q M T 8 R 8 N s m p e X l G 3 j E t h j / x F x 3 h 3 k r b M n 1 7 t / C J P d g s Y 5 E g o b c l T g r D G W A G J P N P h n y / C Z d B 1 5 j 4 R s M K V K k o 9 I r A h 9 l j N 5 G A T + n R d G 9 U c N S 6 S w 6 T 9 C T o x 2 Z n 7 H  
 n 1 r y v c Y j 7 P I w 8 S Y Q N 4 s H 3 m K Z C P c g u K b b V Z G Q z d 1 n O m y J d u F L v / + G X w L R S + t G E b + K k G r r z 4 H V H F s t e z D s X 7 b H E Z 5 b k K h X r 4 A a 9 A q s r P n g T r 7 d E K z f k V Z B P I F J E x a Y N O F j F 4 1 1 E b U C H c G k W o E z 1 6 n q F T l P r x j H p V Y g C X h a 7 H r z V e g m u R X i P Z p 5 i 4 V z 7 6 4 3 i U k L j S D w n 5 p x L 6 J Q v V n Q c t 3 F w J t / q 1 t Y 5 R q E F W L Y n P l L l 9 g B + 5 Z V t Z i s o q C 8 9 X e 1 X h n W K M X C w l 9 6 O I T y 1 9 v g 9 4 / X V u v K K i L J Z t p A k C R R r U m S x Z d J s q I Z 4 F b J S j I q u c N / O f K c G L I X S L W S J 9 X 6 c U k 1 b L n j P X o h K o c j u F F + a B l W a p B h + H 7 L n U F x H b j z q T e / P 4 w 1 r 5 S U Z b E e + Z V B R K 2 w I O Q K m C V L S r G e l W J D 5 F K M o 5 e Z U k x e Z f B 9 e 0 4 s v L J 8 r 7 6 c 7 1 E Y y F 3 L f f T 3 z e k E 9 Z f 7 p I h z r W 5 f a D S b / Z v e e C e X K i D D p I p 6 H D b j B P 8 d 0 G b U c n 1 R k U 4 v n 2 k X S N E Q f j 8 / 7 9 j Y W K f 9 / N m Z r V A x 7 Q 3 K i R B Y R e 3 6 M 9 e Z 2 / S T M l u y I f w O p P 1 i D Q F p C Y O V G z X Y 7 A + H 0 H d r 9 3 t r z H + m c A N p f s Q I A Q Z C E h p R W G b j / / O Q U W k N y a M c x f C Q G X j I r 4 C H w s B D e Q U 8 V A Y e 6 m H w q F e p a j U Y E x B 9 a H Z 5 d 8 + f 1 0 r l d Z w C M W F I i G l D I n Y K a j I q k L L r t J t W b 2 Q J 7 Z H w u d F p t 3 a q Z 1 l O q 2 d F P h I T Q o V / J H Q q a 0 L c 4 r 8 9 K W k 9 T 0 k r V I w 6 / q Z Q w e 4 J Y R s 2 + i 9 P o p B 5 T Y u x D C L N 3 l s 9 3 h J 5 2 S L j O q o s u Q D 3 2 2 / 0 y 7 A e V C a F U c G O S u A v l 0 / e l L o a k U u 7 r b 9 r V A 7 6 y 5 W D i R Y 0 o c 2 N v O a 3 Y n T B H + 1 L A Q p 3 c c G G 4 p M S b K A f i d 1 1 e d l q N s w q d t c W s T V y b S t q 8 n T d 5 Z I u d a m w 3 b P o T 0 h o z H Y P d 6 1 w J o y t Y b f d a 4 z b v S v h L P G X 5 z h X Z W e j F n Y e u 8 G j N 3 d C 9 4 2 w c x b l H X y c n q B U 6 U h W q g 7 u P 5 i 5 U 5 N G B 2 E c 9 f C L W J z w U P / 2 r + a D E 4 S j 1 e 0 X b z 7 1 n x I 8 Z J J i P 6 A S I B l 4 y u h Z Q 3 v Y v r o e 2 z e D g T W k s g E h / 0 y e r S a P v q Y O M u J 1 6 t u / M P 6 X P t l N g j h c u X 5 w 7 z k J l G K I Z m I o J r P g y i f b 8 m j A k m A j 7 / / S h 4 D R 2 h k E 6 D i 3 7 m y Z a O q z G 0 y d u R N R k w L Z W E Z z g m 9 X g f O c w G s N n G x R p J V D g J y m Q F w Y N 2 L g N r 4 8 e F S e p R h k o 2 p k 8 K G G J Y b t L 7 3 Y N k i s Z O b Z A 7 A z L 5 G + C I n 5 I M W 7 l d 3 B + K s N W e 3 G i h 4 R u L H 3 6 O Z B R d Q U 9 D D 3 T g 0 o R A 3 Y Q U 1 B P 3 X v 1 M i F q J F 3 U F P Q 2 9 0 7 N U o h a p Q d 1 B T 0 m f d O j V q I G n U H N R q D G u 0 V q N E K U a P t o E Z n U K O / A j V 6 I W r 0 H d Q Y D G q M V 6 D G K E Q N G 6 p e 0 9 e s y Z N 7 f H T n o f V j 3 6 a v Z L x s g Y e s a 0 X f 9 c R 3 I / H d T H y X x O Q P K f k j 2 b S U b F t K N i 4 l W 5 e S z U v J 9 i W j 1 l U o Y K Z W o a j B i f a 1 m v 1 u 1 y q w Y 6 C C I 1 2 S Q j t X q n Z A i x 9 n f 2 G a / A C T h j d 6 Z 2 4 Q 1 m b 4 S 7 T C D b M y L s n d g a i 0 s C z u 0 l 8 p h E A u Q u B 1 E J J z E Z J f B y E l F y H l d R B S c x F S X w c h L R c h 7 X U Q 0 n M R 0 l 8 H I S M X I e N 1 E D J z E T I P h h B I K U Y x i R F I a U b x U C g B r P y X / s i d T 3 t + 6 N 1 5 E y d a 0 0 Y n F Z z Z 0 q 3 b a J P E l 1 t t I J q 0 6 J J s Y / r d m U / 2 H 7 Y H R 2 F t w Y m v Z s H V F Q G o 5 5 l Z j c 4 6 q U i + k a W L K j e y 1 h n x S h l Z i p h j Z F E T q 4 B V h R C i L 7 a E c V 8 o Z G K V 9 A 7 N a J c R i l N 5 M w t 1 Z 0 S a 1 W 2 0 O 0 I h q 6 v s / m M U 5 G I 9 O t 6 s v O 0 l J b y N B n z j c w O 9 J R S y x 8 q i q l J U G 5 P Q + x 6 r 2 n K m W X K P H n N L e / y 1 k K 1 W F l m Z I g v r 8 6 Z e + M y N N m 6 0 c a P t N I 0 2 i R t t R 2 K 0 q Z s R W s V N t m y o l i q d r M k G D h b i L Y F a 1 q n b d 0 2 I k L s M 3 1 D E U b P f G 1 u j c e F I b 1 V T e a T 3  
 O o f 1 g f h T r u k M w t C l L P U 2 z i A M r U a n M G f q g H P m h 3 U 2 9 A N x p l K T 5 h x D t e n N 7 9 8 I c 0 I M k d Z s 9 6 5 2 T + g S Z 8 s P 6 5 z 6 5 d i y c t K R G g 5 t w e Y H z n L 5 R j g y g e 1 W d j Q y k Z a K e K K B l p K 2 9 X Q / G v K R G 3 x 3 g 3 7 Q 8 e F Y o p C J i G X w 8 w i v E G V u 6 f r z K Y 0 V l M l h q 8 n 5 e e I h o H D j l b u M n i k x 4 M Z T C P n F n c 7 X T 7 U Y N v 1 c j u p 9 W A X x Q 3 V d c f J x h O t l 4 G 3 i m n 0 I 4 U a Q H 4 M E A t h v R U e Y k 8 + j S k e r e Y K C G J Q + r V m 6 6 z g 9 B K n 8 4 r r f I H q X 3 i y k w / k G z C I l x l u 4 i x H f K v K S q G V O Z 4 I j y e h x K 7 r A k A 8 p 9 L k n f y R Q X O p h T 4 1 C J w i v / V U c G S 2 K 5 y J K i 4 M L 7 K g E V m f N p z E c r E X U C B x 8 b C e f j 1 y I D Y Z c X i A W T q 8 V E a E m M K m m V V p j x N I E J N G m i m 4 y i g B Q 9 P i D F 2 x r R q E g 2 V b W l Q A K k W n E i M o 1 F G S 2 C s K H 7 c Q Q m I 1 m j A Q x B C T d D u 7 n 2 h W K X k 9 + E k z x Y d T J I T O U A U p Z U Y W T z U w m G e q J 6 R s D z Y q e M 7 9 H P 6 O 7 l c o c C y c 7 O 1 b D H q 7 m c + o X 8 Z P h / G T 4 2 z k Z X l k X G / x o e E U 9 j f I A N o T h T a 9 X Z G F C E j O u o K y r J 3 0 q X D K P V E m n T C e u p b m W P g I t b X I t X d 2 B h 1 q 6 1 x 8 X 1 9 S S n D 3 m f 9 r 5 O 4 B Y V V P T p R N u T n N F f R q K G o h c U V e P j o C K + o t l / V F c U 8 t K Z u n j x G 1 q I B 2 p p u Y 2 N V f V x 6 a q J a 6 q K 4 Z c S r G q 7 n w t Z 1 r L U l p h G y d u W Y M q q f E q a + H E V n V z F d o d n 8 Z b 1 J U o b z / K p 7 4 M e Z V V B T j N F H k o z V L v r H 9 5 K X y E / C I g f q m S Q v t Y b r T Y S 5 Y 8 I J / e J V O g j g s m 3 v M t U w D g W 6 Z w q A 5 O P 1 / m o i n z S L d z D 3 / R V G 5 g r b x l d k R 9 7 0 w m 6 E Y k u 0 E + L 5 w Z O l n D m I + k 6 D R q o f k P k v j 3 e q c / Z E r J Y m I + t h d u M H H n I X t O h K / + / e O Z 9 D d q D b M 7 F j c C x 9 G Z / r U i h y M g 2 D / W l y 8 G 7 n I 1 i y + X + s 5 q u 2 Z 1 U U P U s k 5 y K a 1 m z h u Z P F H O H o o x 1 g D R B C o M S C c X 0 Q S Z w x 9 A P Z r D S Y Z B 2 K n O i V T l 9 8 r V e q 8 c b P f X v G v l A O y 9 M 1 k U v + d o n o N e L V d D 9 P i x 3 C 0 n 1 m 9 L y F r 2 b r l I g 5 S 2 L D L p q 2 X p Z C 0 L j d 8 1 V 5 f 0 a v 9 8 7 5 f N 7 W M J L b 5 s D v s I y 9 K i n I n 5 l A 1 + 1 x z a q O e X z V U T 4 j o i s v l t c + V v m 8 s e D 1 P 5 Z X O w W 3 L D t 4 F c 4 r C Y j O T h 0 c V n H i I Z V k j K n + j G h K g 4 f d o h 8 + 5 X 1 w m S i k F J 1 T s n I p v I g R I X t s h + a l S U r D M + i x I t f 6 v J S v F k n 8 p + k i w m h 0 5 S x R I p t u Z T B q F 6 X J g g U 8 q 8 l y U S J G r M k C j G R R k C 1 7 V t k C e v q 0 s S l y 1 k k K b G h U N 3 h r B c p o q 1 Z D F G N V 2 u J M s h v s v 8 y v G h i 1 S x n q p 8 b Y L F m K c A C P K J G m r W 0 X V E a t O x O 8 y h G Z C v m m v Z n q D 8 V v S c z I b R p I v q i R 7 M A + b W u 3 1 M 5 P 1 7 8 z D K f K Y r i e R 8 N E X f c N Q W R u P + s C u c C d 3 G n 0 K r J f z R 7 n S E 0 Z f 2 u H m N M v A N 2 1 d X 1 t D K J O / L v / C n s m C Y 9 a w f Y J I T d x q 9 h R 0 6 C a 2 B 3 w u P a 6 z L X T e v y u q J 5 j u S x V I i Y I D t I g A / B w O U / n v c b z W + o v S T Q 2 t k j S P R a D X a n a 9 Z Q R C E 2 i 9 + F 7 k o F B e F T O o v 8 1 R T f 8 n V o g Y f n R / 2 d G o / e O G u q M F 9 x 6 T x W E E e K 7 j X W E G Z x w q + I I Y o M Q / + B s 3 C + B a f E n a K r p 1 2 Y L c M j l F F i 1 x F c x V 9 L C o a c B V d U U U b G R V 9 2 e i M r A I H 2 k F 2 O / m 0 g 7 l l + W A J 9 2 S Z J 9 z L X e R L c 6 W m n m r K P V n Z u s J B N i G X Y f + O b G R S T k A 5 t G 6 G N 6 P W J / h x d T F A H 8 0 G / t W 4 w R / N 6 0 v 0 0 f v f 1 i c I 9 t + D r + g D g c B / q A x + o I f w X Q Q C P 1 B l 8 A O V w Q 9 U C / r V w B 8 I E j 5 B v + A H e g H 9 g p D w A 5 X B J + h 1 + I F A 0 A c s g x + w L L n j W r N 4 1 R C w S D a p w u Y q C N x 5 S L o Y v B F h k 3 G G  
 t F D 4 Q L E X u k 7 w D Z I s 3 P m B M I f 9 J p B e 2 C 2 N 2 f T V 4 t E c B b A u W h e s K U L E f / s S y V p i H F G k I F l Q H A z 7 l + 2 x 0 L y 2 m n + Q y 8 E 3 w x b W d a R i F h K b d v m B C n R / T K L 8 j f d H 6 R Y p 2 u 1 3 n k c P 3 l 2 Y v N O Q v g H S N 5 t H k I C x H y o N 3 Z k T e t 9 d 1 j n R o R u u g n l E S u R y p O M c Y X / / / l t E S x Q c S S M i A S Q G i D g F I O 4 x m / S Y f d V v d F 6 s N f A 9 C m J q c F J a R K 0 n q A I H / x G 6 2 v O B G 3 j + 9 B 0 d l Z A h G 2 D + F d q X 2 A S l P P 2 l M R K u 4 S d e T 9 + t a D K h j Z I m H n N o Y 0 L 4 9 h J B I W t c z + x D z / y a q 2 d Q P H V K 0 X T 6 o 9 F h 1 I z G 1 U w B N a N n 1 A x h b D R K J V W N k o n Z q u 9 U x t t U N b k x l 4 p G x 2 m c v K u H 3 i 4 u 0 N 1 F k n 2 i 1 + h a 8 Y n T 2 7 + a D y j M a X X 7 x Z t P / a e 0 i K N i P 5 i v o 1 e a / W H P G t o d 6 3 J s 3 w w G R D 0 p G P B P K s z q + t F X K s l A i e O r b / / C C F 7 6 8 y h c 6 s r 1 g 3 v P S W A U Q 6 w j M g G O y L z y Z 1 N 3 H l B Z 0 d L A I + / / I s 0 h K Z E u g g D 4 7 q x l o s H P b j B 1 5 k 6 0 G p M C 2 Y g B h b b 4 V U C T f + s Z 4 G S L k Q q D A D l N g b g w b s T A b X x 5 8 M J 4 V 5 W C b F S N r t 2 L L 1 + E 7 1 0 0 O o 1 e 0 x J 2 L D X X e j 6 P 5 C 2 G T B z 2 V o + 3 b h C H t V n d w f i r / b n R I b s N 6 B G B i + c Z B l R E E Y i S S f / P T X v 8 V d i x Z o 3 O 8 G U I s v 6 1 o v c D v p A e U I g e s I M e O Z o e h 4 0 v r f 6 X n r B j 9 Z t B 0 f p Y z Q s p k g t R J O + g K J b e i 2 E f W i T C u N 1 N M x 5 r L V 2 M 1 r B D G i / K v J v U w G v A b h R T m t z m w C G Y / i q Y p E r W g a S P i 4 1 A U h p H 2 X T m 0 5 n b b m U X x l E Z d a 4 T u t p M v o S + 3 Q V O B h s a e Y j M E 2 i D z D e C V I 1 M + U Y U p 5 Y B y M R y Z u u P I j q R 9 I M U k n E L m 1 G r W Z D N 8 E 4 K s b m p J K 9 H A V t 0 r K B O X B C H h E a Y q 4 n C d U B o N n g X l a K c R 0 t W h C 4 q j G J F W S / G k a K Z z i R t b h z V S R U n o k S z x d + 8 B U 3 D t M z c X c i Q I 6 W Q H C k 7 5 E i N a C P X 7 E Y X 6 e 3 Y D a p 6 I S 0 2 M X d l + 8 j Q q R a i U 9 1 B p x b 7 L O P G c C x c 9 2 + G S R q 1 W i 6 H 3 b i P o A S Z W i E y t R 1 k 6 h R T q 9 f a o F F / O Y 0 S p j F 1 l 0 J x C v V C F O o 7 K D R y U y / n X s x a O V u O T r L l b C Q d L k G 0 U Y h o N l T N a 9 p 6 T T l s s P l u / d j 7 L a X G C 0 7 p S T m 3 l E q l b y k V 4 w s r 4 x / J X V k p 2 b i U v C N V S j Y v J d u X j F q 3 b / V 4 U H b f R q V k E g q A k 4 3 + N Y p 7 r Q m T 6 A C + q Y x 8 R Z M 7 p 3 U 6 p x J e y P w 6 I t l F 9 5 X j M j 1 f J B J q v o 7 / i q z v z Y M Z u 5 z Z a i Z B w W x y e / R u s c N A q M U A u 1 z c s n T m Z c p 5 N d 9 X i u l F S 5 e 7 X N 8 a e D o d S 1 i C 6 j o 9 F X T p / c 2 4 L 4 w H Z 6 P O L j e l M t V o 4 y O 6 0 m 9 g j z q 2 1 W t c d K z W K 7 o u e m Y r J j v o W p 3 k y + l B t 0 n i k Q p D X 6 N X g 6 h J r N l n 6 d f r p F 9 N 0 + 9 4 s 2 d 7 h s S + f A / U 6 P V k o j S N F y u 1 x I H e t + f O G O / Q n d k S 6 M l 0 Z 8 Q a 3 R k p 1 5 2 R 3 o w 7 o 5 + s O 5 N / n j d K a I T 9 l n i D G w d d N I Z j u 9 n o t T r W K H Z Y E F R / D m X Z J Y R R o / p s H c q N / Z 9 o S X Z d p N K i x i r 0 R x P Y / C z n 1 U h g 1 k V y X K v / 1 L / u N N O l W q L 0 w p t 2 o P L I B 2 g s v 2 0 C 6 A m A j r M M N y C A m o A g W 9 + j h P T m 4 X o V e N N s M o K 4 8 L M / W z 2 6 6 b f R v k o M 0 H K X k 8 B b o H z A G S g x A T V G 6 Y E 6 7 n d 3 l k H E S F b l h C 6 j X 8 0 k V Y E 3 Y c G o y W G 5 9 H 5 I U g 6 9 t D x R W u / V 9 n I d p 7 j j T n H R h h U 0 0 k P v 9 U L 4 8 x a q p P R C V V 2 3 H G F 5 F q 6 G 7 Z b Q J 2 E A 2 8 P 3 g Z Q J 3 x e P 5 v y r f q e K B 9 S e i l g 6 c L 8 q l y s i D 9 z P 4 8 f s b K 6 o J x q 4 r 0 j b o / f i C Q I v j F 3 E a K + X y C 5 m D j G r 0 6 D p a V 3 H o L 1 + z 4 p V S A w Z T W 0 Z G D X d c H C z S K w 2 d q D p f x W 4 7 j w 1 6 U a g L f 9 p H u d K m w X N w H t c + v N N  
 H C 9 W s x n Z + M 6 r O g P v O k E C f k f t L f 8 v b 6 P 2 f u D M 7 9 3 h O v H g G j 4 x i + M d P r L C S V 5 I z Y 8 E l 3 U G h Y 3 + S A F C M 4 U K B I S L G k 4 N A L J T i n U A S i C 3 N h A S V d a s u e o 4 A q 2 s 5 2 e M + 1 t R Y n g t F R 8 M F C Y I f 2 E S Y 7 9 D q Y H s p a 8 n O 8 m C U v l W V C 2 Z b y W V a i U T u T m 0 G j j f 0 P 4 S D C m A Z 1 U p m F V F y V x e I J u n 6 p I r M k 9 i y J M Y 8 i S G G V U q 8 y S G G / l R v j T a Y + G y P x R 6 1 p 9 j o c g Z B F U U 9 3 T 0 / q 1 l M l S U U m a F C X L N C j Q K K I F b c i C E x l j A i g Z H 0 4 2 E Z L Q x S f G G w w n 3 a H o o 3 P S o a H o o J 5 v a U F F 3 y U Q T h f S 7 Q T I e v W a + r e H s q 0 F W j v r 0 Z M h b Y F k j 7 t p z A e E u + B T 5 7 d o 8 e y / H s Z w o M y 4 v m s Y h 7 + V Q t F L a X J N 3 O I k 0 W A I d w z y U r 6 h x h V 0 0 A 2 f W i D n Z a F R F 5 7 4 i 9 x W 5 r 5 h R p T r 3 F W v w F Y G S O a 8 u n 6 y v a L x v X 9 H g p k d V 0 0 M / 1 d z f i v n 6 v q L J f c X C v i I w 9 h X z + N Z 8 R V X c m R L 5 J b e 9 V U p n t H q O Q w U 6 v r 9 o e Y E 7 Q Q F + k e W G z m M t w 7 P Q P 5 u 7 T + 4 y 2 o h H s O j 0 d / o 0 G X p q Q d v + e f M x v j w u a Z j p h P + t p C 1 Z r 5 S q d V w t o V J a k V W P I x u P O j i v r r s e V R w c L 7 j O 5 E H A V A s f O 3 6 4 F C A D 7 b 4 j T h P T A m + a R y L w T U s U m x Y r h e I l / s s R e 5 z 1 a z Z 9 m e i X v b A C k A Q E f m h f u 9 P Y P s g 9 A Q g r 9 e Y z y K g 2 v s O Q B A H l H a h A P I e U x h o K U T 2 y O n b z Z j i 0 e m O e J J 0 n S T + S J O k q v 8 e i q h L X 4 w i w m O y X q H F J l E / 7 R g s 1 N x 5 M o U L V 8 d l n + r z 5 1 J t g 3 r A 9 6 J Q z x E y j k w A s X c S J D N f n 3 O G 3 x m I x 8 9 w p P h U R p 3 Q c t p u W 3 e z 0 4 + T 3 G 2 Y f f J b I j I h C m 6 1 h u 9 9 K a n q I Y H w 6 Z v c B O x R f u 8 4 w C Z H 4 n a I 6 9 G v R L + j E i Y 6 S U n b 8 J z e w c Z y o j U z W X Q f / U B x t 4 C + X T 9 6 U 3 k k c e X 7 b B r x O V Q V q O u A H u S U 2 w Y / f L T Q w 1 w r R E G 3 V K W Y m u 7 a u q s e S X b v V b J h V f M F t C i M 3 o A 7 j s 1 N c z V h a r 2 O j E P l M X e c H W i F e 7 m t 5 Q 6 0 p 5 A m t b U B q L p z g r a x w A I K 0 A H W w c O v s v q D V z J w A M c x T v Z 9 V V Y 5 r b Q M x T / T 9 X S 5 u K H x x o 6 J d r O U s b i D e 2 W 0 W m 1 J 6 I R 5 d 0 X z y q x s q X 9 3 g q x t 8 d a O 8 F l f 5 6 k Z F L W 7 k r m 4 U 1 O O b y x u n f R m c m h v J q C p 0 g L J 2 G t M W g 5 9 E 9 U a 2 G 8 o K 7 P 1 w p + n S K P 8 d e i L + I i G H v z 8 e x c l 9 Y 5 i h R 0 6 e Q s x V M V 1 F V A T 7 F v y i R p Y e K R u s 0 5 2 h / I Q 0 Z s y I i i + Q c C V g Y H f G S c y m S Q R r 0 C k y J n D X 8 g W s 5 R L 1 0 t C B F u r N 3 I s T B C r o d T E O Q V s D t d w Z k Q 9 0 O U C c u / v x k V h y A 5 8 M S z K Q 6 v G x e 4 9 O 0 3 r O D E l K B j m D A H R X s 9 B b z J 7 7 8 z g / H q w / O s W b h l j n W E / G W y G Y x n S K m k h V E q f Y T g G k 6 k i h O n S h 7 D J q 0 F P F e T h I M t D y i Z U j k K E L b f r l 5 h U r u I 5 L 7 9 b P r Q P g 3 m 5 B l Y k S T Y U 7 O j a G y 2 k Q Y I w 6 z q 2 / m j y 4 g Z t f n Z Y G R D f i R Z w p f Q K f 5 E / K J / W T t u 7 r N W g e r b j p k f u v C 2 f p M h q U a P F 6 K O D b M m x K S 7 3 N H A p A C / O a 1 i K J v F l A p z t 2 p B I x j v i 0 O G w 3 U i c m m p v m K N X Z q J O F G X i L Z U p Z I J a N C 4 m 4 x y u o W L B U N b 7 6 L g 0 2 H m R 0 B 6 x p O o u A D m X 0 4 F Y X t b a a J m l b u 9 N a 2 0 3 q s S 0 N I 2 v K + e Z G t x U x p p A U R D T i O h r x 7 y j 7 Y S S a C Z g t A 2 8 y A A l f J f o J o K F f g x 1 s 8 F G 7 i 5 r b L T b 8 q O V p z S 0 X Y w B 0 i c m P 5 D L R 1 b g Z X W 7 y Y 5 G 5 4 8 D A D 5 N R w X H 1 q J K N e w 2 Q U Q k L + E 0 b 7 / G m D X D w m z b i 0 T r 8 V R s K S f h J Z A Z d h z 3 z F o s o / P X 8 g 0 I 7 s P u c S E 1 I l 1 3 o 7 V V 2 J 0 K 9 E Q T + E 8 n M s t 7 E 2 Z 6 T p b L D W 8 N h I 3 y 0 Z D b r k V z m x 7 R a K d a f J 8 0 g  
 x A p z Q u 2 O 3 b X M 0 u S + N u y l 0 j H C 0 Q 2 1 W Y / 2 D v / t c 2 k y 9 6 C S + q o h l z W L l V 5 P q q P 2 X X / h Q l n B y 6 x 7 X 0 Y 6 4 G W K h D g h J M v 9 h e J f J D V z P F t V 1 G O + N n G f m 3 v G 2 w t c J j t 6 a G + P 7 P K 9 p b 0 9 g + / t V b w z F b D 2 9 v w F u g 4 + 9 O b 3 k J A C g o 9 S Q K W i V G Q e w K y a V Y P f J t h T g b x G P h m + l U 5 H 2 o t S K c M u 8 J o z f 7 1 E h D Q F 8 X g u v f n 0 4 p l 6 G / F J m o w L t d P 1 q h g p V y Y s 7 t c t Y X E o x i 2 5 o Y k m 3 X h 1 o u x t l a 8 f 9 2 a e Z N w b T r u 5 C g J 0 N T A e P B R W u 1 u 5 K C C j X I z 3 H A K n i V t D 4 P L U R o X l N A i A N p G u r d a V Z b f a o z G 6 2 b e s 0 P 6 9 3 l j W e F F i y 2 4 y W 0 g B D R B 0 p n + t l m G a 8 Q N 3 u Z q F 0 e o 2 d O h b H u T k + c S 1 I Q P S U N l 6 J V w T a / H a 0 X 0 b q 5 n z h k 7 o 9 l w n u H 0 W o k X m H Z K d O b Z u H E 8 6 J 8 M Q x b o l W 3 q b w a 2 a x I N b i w W 3 S k o m y 5 O p n 2 p 0 q w Y O N Y 2 h 7 Z l s a N w r z m B o h g H x t N q 9 6 Y z b g 0 6 b 3 A q 5 r 1 l t M z q w Z g 0 A T n E 2 w + s B 4 T L h C R d R A G I m R g q 8 6 y l N 5 s t c B 1 z m 0 m S + z P W a y 1 y a w p e 5 N l S A w p e 5 + D I X W 1 0 p f J m r + D K X Z p 7 U M p f K l 7 n e w T K X y p e 5 d k u 2 L p 3 U M p e 2 0 y d o R 9 k d a k 3 + g F 6 V F C j q 8 K l N 5 u h j S w W B c C E m y T I Z h 7 e + h p O U r R t F Y b k a 0 l 7 + k 9 1 1 5 s 8 2 h b B B Z A F Z P y Y u v m C 0 u T a j k o l i S Z Q 4 y g m R d 7 p k D R G p D h l l k 8 C P a T Y J O o H h s x 5 J 8 D r W S 1 D y i g I h z j i 5 x V Y 6 1 h B R u K S U S Y q R J C M J X Q 8 Z s n j A c 3 B a D W G B y N q M R f G L F z 5 4 c + z U 7 t 0 h l N I O Y S 1 X U I o J W o R H / 7 u 7 F J 4 w S c I M 0 y R 8 R D k 3 I A e A I o 6 e n F n H P Z Z 8 u t A W U z R w y H V c / Y 1 u W u h 8 0 6 L g p k X W P D n h T Q v j R D c t Y D m A 6 F x 3 b f C m 9 y k M v k 9 R b J 9 C F 0 9 r n 8 J 8 g 7 l 2 3 v J G h c k 3 K l 5 z o 8 L M B N b w j Q r Y B y L f q K g t T e X 7 2 q j Q x d P c q D C y G x W F U l J K p n F K O x W 6 x H c q 3 v 5 O h S 7 x n Y o i V + a c 0 k 6 F D v h O R a 0 7 F Q p r p 0 L a 2 0 4 F w I k 5 M l s V c e L r N 7 R X s T 2 D 9 z v Y r d A B 3 6 1 I 7 V Z I h X Y r E A t I R d w 9 I P L t C q L S 3 2 g C c Z 0 n E C + 4 X b F h o 5 z u d o W u 8 D M W 7 + a M h a 7 w v Y t i e x e m q Z 7 S 3 o W u 8 r 2 L Q + 5 d 6 C r f u 3 j F v Q s g 8 V w i m z p A 4 3 s X f O + C r a 4 0 v n d R f O 8 C A O W k 9 i 5 0 v n f x D v Y u d L 5 3 U U C y t Z P a u z D 4 3 s V b P m X B 9 y 7 e z N 6 F w f c u K u 5 d g C L u n s H 3 L q h K N 9 / o 3 o X J 9 y 4 K 7 l 0 A n h + K M r s h 8 q M W b 3 m 7 w h D 5 d k W h 7 Y q N F Y d 3 v l 1 h S N w x e c t B V R L L M X m D 5 7 / R 4 s y G X / K O D o A b E n d L 9 h h S J W v c L a E K H V T d e 6 q o y N H S i H J s q r t U G q + K I S 1 6 n t o 9 5 v 0 n A 5 z k / p O B m b b Y p p O W S Q q q 6 + I 7 3 n M y c k M w F b X E r c g Q L B Z 6 F K N C L i 6 G k J E u O N C N k h L F o 0 + H l x h l Q G R v / F S 4 z V n F 1 8 Z u e K j 8 S u e q V z q f 0 L X N 5 e 8 C T j E j 4 x 7 g 6 F Z Y c q M r v w y Y X w b 8 t i 8 D f p 0 r e V / v H m J + G T C / D J h 9 G X D i W l 5 + F 3 D y L m D k f Q S u E 7 r 9 Z j / Z g Q X v C I a k X Y / i J b z 1 z c D U e d P x x c A X e B B q 9 r x q O j M E E R 2 4 0 P u a 3 + / b 9 9 J f E K O M v 2 u J 7 3 q 9 1 5 3 q u C O E B e k J A T s 3 R c 4 i Z P M o G e J x 3 C A s Q k x e 6 Q Z h Q 9 m H B 3 h L O J Z 7 g N w D 5 B 4 g 9 w C 5 B 8 g 9 Q O 4 B c g + Q e 4 C F P c D 4 V e 4 C 1 u 8 C X s S E r F 3 A x O 4 Q 9 A G H 7 r R 2 F 7 C G Q + N I D y F E u Q + I 5 B r 1 R F k n U N m I 8 N L V 4 3 A C 7 + 7 E V 3 M C V e 4 E c i e Q O 4 H c C e R O I H c C u R P I n U D u B H I n 8 L 3 v A 4 L X c A J V 7 g S + u h M I g C J y J 3 D D C c z N W 4 S z D q G L c t d B 1 b C e X 3 + L V D p 9 3 o T k E G 8 L d h w K j x 7 3 x 4 2 O 3 W 3 8 a Q 8 a w 0 a n Y 3 X s 8 b D R s k Z U J F + S C g 0 L  
 S O R / p p x R H G Y N r e G v 3 Y t + Z 7 T l 8 n k f T Q E 1 i 3 c N C X 4 Q e z Q f 3 M k 3 k o s s 7 t V 9 y r h c T M Z r S T w m U v K E E N M n T B C B w k e c 3 k k A Z 8 r u A x + 6 n B Z f V T m S k 7 k N s 2 m S 3 G K H O u + h 8 / h t v n D D F 2 7 4 w g 1 f u O E L N 3 z h h i / c 8 I U b H r / 9 z j f v w W v E b + s 8 f v u 1 4 7 e 1 j V z y O o / f N v J z S y p H k X E e 5 3 O A A H D Q 0 i s v G B Y p D I n P c e 9 x c 0 I 8 + C T H e v E w c x w y + p 3 Z k k 5 y l C z A + Z r z 9 X v i 6 6 h H L p y l G 3 u o y O Y i u d 1 p Z y Z K N 9 g f V r B A R U u b f D A k Q K E G R X J B s j H 6 g 0 5 B y H 4 j L L x l O X O L y 2 Y S C o b O / D 5 y M R f U L U e p b d D j y E 0 n a X 9 z l x 5 l C n 4 Z O P F t K h p 2 W E V J T E E M / O U 6 W w o 2 / m u 2 T W t I e o u Q 7 f k k h 3 c / M s f 2 a Z 4 q O e a p m G + e 1 m F 6 A k x n 2 v I U 5 p j s A t u G m a v 7 D E M 8 5 n 2 H h J G W M T w T Y / M S 0 z M 3 B 6 7 6 u p Z n z e J V R 8 p c 2 H 7 7 D l 1 e 4 k 6 x e C 3 f 0 Y 4 e m u 7 a d 2 Q 7 T / i I x q N I K m m Q 3 c M T T 3 Q P z x S 5 B 8 c t X W 7 p c g + O 8 z X n a + 7 B l f T g Y O N 3 C R e s B i 8 O x G 7 c z t f 2 7 d q Z I n f t D u H a S Y r I X b u k T S o d l 0 2 K T M 7 V M z d J + d T N T V L O 1 5 y v u U n K T d L X M k k l b p I e x C T V d J W b p A m T N P d q C + 2 1 L F J q c W 6 3 S G u W v h p u c E A z S c + n Y W j v b z d C 2 5 S 5 A t s R Y l r Y V P N U j x S Z M p c z 3 A t c z u q X M 0 n N T G q a e L L b f g p f Y u G u K H d F + R I L 5 2 v O 1 3 y J 5 f T i N k 2 F r 6 Q c Z C X F 1 P j m X t L y V L d e 5 1 7 x i k 7 U 4 s B Z L r v O D 6 S R l q n 7 L e u U G r W e k 3 h 9 q B k g T R f O 3 k W m r g v N A U E a C k E g 3 D q 7 n S 1 N T v t a p n Q k b H 8 r u s C Q D + l r 5 a Y 2 U p U S a V J K p x s R c R 4 M d K 9 1 f z z i m U Z e l G k E o P w c J C X S w K e Z n j K p P U 4 h C w k G k G S g 5 R M r R y B D 9 z t U Z m 7 a I I z q u P R u / d w 6 A O 7 t F t R v j 7 d u E O 7 o 2 B g u p 0 G A M e o 4 t / 5 q 8 u A G b n 5 1 W h q w A y 2 4 i D O l T + C T / E n 5 p H 7 S 1 n 2 9 B s 2 j F T c 9 c v + F r F t G g x I t X g 8 F f F u G T W m p t 5 l D A W h h X t M 8 Y Q x P G M M T x h x d 1 p Z X T F X D E 8 b w x S u e 6 b d c x p i C m W E Q w 0 E V a T X s X q N r 2 Z 1 X y B F j 1 p D 8 U 8 P 7 M j 3 / a d 9 O q V o y P Y y Y T g 9 T h 0 N L s 8 D M C b H b X V k 1 v Y J j q j z z i 5 m f + 5 O q / 4 7 P m A w g M d 5 8 6 k 0 w J 9 h e t 9 F s M a Y E E x M O O + L S W Y Z W t 7 F Y r / 7 A C g B 0 a d G L 9 q V t 2 S M 7 d j t G M / 9 p A 1 i O g E c J Y G T c e v d z Z z b I g W 1 f J W E b i 8 X M c 6 e x l Y M z h Q 7 b T c t u d v o j i 3 Z p N L F G y n T n S p Y Z L 2 R d S 3 Q M 1 0 o X V i h F 6 D R j Z L Z O 7 p N 1 g m S I w 6 9 0 3 h j y Y X j Z M I j J Y Q A F r P t J A A 3 7 J 2 9 K 4 0 Y i j b V N 0 u q c B 2 r I F Y b y p M H Z c r 3 / c P z r k 2 j k K R e X 0 u W G d C S h V p e X r W b D r L I s u U 1 L G 8 e h p S / K q I e L E u r h 4 p i 0 9 E V 5 L f 3 7 Q b X 0 O x 4 G M T k M b 0 B L G 1 x L b 9 H S G 3 u m x x K o t x 8 t b X J b + n h t a Y j 0 D 2 5 M v w l j G o s Q o g S / Z W + + V q c G N 7 k G L 2 N n a + 9 Z g 0 u i y A 3 t 4 z W 0 k Q r n l v a b s L Q P q c I l U e Q 6 v I w V r q j v W o d L t V 1 B p 0 d S S y + f s z r R 5 X P 2 x c 3 X 4 7 i A D h + 3 q V u g 6 j i e / c 5 v o I P l k A e E Q X / U R u p S a P Z v e u N f b 4 P f / 2 s W / v M 3 Y X x t 9 Y Q / d 9 t X m p Q + y q Z p J 3 q U T R J B b X J r 5 M v t C H 5 / x 4 I L u O A e R n C N z O 2 v m q a e r O D m H v a G A 0 0 O o X 6 m n R B Z o n H 4 o U b D n 1 j H Q E E U c b T w v X m 4 7 b h Q H A G j 4 d g t u p l O j / t s B J S V P z U U o Q / W 6 J M w u g h 9 8 C b Q l 9 P S i m u W D x W r l 8 B D Y e C h v A I e K g M P 9 T B 4 v F D v A 3 r G Z i 0 7 E t K g V O t S N H 5 m + F O K l G w C 5 G e C T h z 4 K H + o J 2 c B Z F 3 v 7 v n z W v m 9 f i S S m B O J J N a U y w A t E l h j e z w 4 G 3 X Q f L J 7 D s m k L 1 e k P Q U k l Z 1 D  
 V P i n a a y A p F v 8 t 7 e Z R K m 0 / K a i K v 2 Z 6 8 x t + p k n o y h a b A 2 B Y t 9 R j C C 6 Z X x g j z q 2 1 W t c d K x W 2 U W p 3 3 7 b t i i 1 t 7 D 3 1 9 z 6 p N p C + X C S K y 9 Z l L c v v 0 g g J e W y q r / b 5 R c S a g s 7 I v T m 9 w R n P U I D n Z T + 7 t p 5 / I c q X Q T + X + 4 k t O c 0 Y B t d 8 9 7 o X P W H 7 f F 1 t 9 2 0 h 6 O 2 P R r 3 h 1 3 7 O / h F + k X 9 R c u + G T 4 v I j 5 w f y z c I I w 0 8 w R y n D 1 z 5 v c r J z 7 8 3 f 2 f j h o f a n N C i B u + V Z I m T j M 1 R R Q V W V S M J M g j n t f y Q B 6 d e 2 9 i Q + Y K o g h N F c i 4 D Y D U g L f 0 4 P j a M + 8 2 c I J n + z 5 y M 1 P i g Q K / I 0 g s Q 3 l w i K W 8 R z e w l + u g a N g V m h j R h A 1 P O 1 h R l p K J i b D m o 7 s A C e z 0 H B 9 b J y + H P n 0 g Y Y W c A 7 w J L p I X Q O 4 L 7 D d + E n F f L a F 2 9 I J w 5 c x g 5 9 F c M Q C J 8 r r r E q X 4 C A J m e i K t q M d Q F S 7 s j H t 3 P n l m V I J g M u V 2 4 M 6 y E f d Z E G e a i r h H v e p + d 6 E 5 j x g h 4 q M w Y m E z L p 0 8 T + D w R Z s F 1 D R B x X M k 4 f Z y A T l t a m M V l 4 3 c j 0 C o h l p P B + j M T u j C 4 Y c j / u A / 2 e u t j u z h v v v A W T z Y f u B B X J x Y r 0 K I s b 8 Y + x d + i D U 1 O e g Q S Q 4 U F y + I g a m u x f P F 4 j m I N I C s o h l p 8 H X Y v r o e f x K A C G T h T E i I 6 C f h q n t x H Q u V u 5 w E 3 i J O Q A l S 4 i x A c R a w O A u 0 I 2 f e / F u 0 8 P o Q h o v l + T / + 8 f T 0 9 I s z u 4 f E h A + P 3 u Q X f x 7 F f a M D c 0 l 0 4 / k N Z W w g G l O N D O U O 1 B 6 9 Y d K S i E P l o y I y B U K t n 9 A h y z C I b l n d J E c R 0 d R P / g R Y i 9 U b W U K z 3 7 t s X 9 0 M G 3 h t I S 6 O H M f 4 q E + p d 4 l a 7 d i 9 F T o h u U l F q r A 0 H T L p B I x C 7 6 Z 7 Y Q 2 F j y P / L n y C F o 7 Q Q F o b s 8 X f s j R E n Q 4 H D q 1 2 b a I V F 5 T v W i X R P e 3 e a D y 8 6 V q 9 8 a h w 9 5 Z + n 0 y 2 8 a p d l p R k W X l q Y D U p L M Z 9 4 Q Z 2 9 s g a W B A T q y V c f I W Y d b s N 4 c O n D 1 l a k J V q 3 Q x v R q 1 P 8 K N 5 f Y k + e v / b i q d i Y r s S y j Y x 3 4 R 4 G a O P B 8 J / C a N O J U b f + S 7 N M 5 O x x j d I 2 g T Z o E k h P k G e J o I k 0 3 d j p B o 3 c F i g A 3 c z 2 K A h P k p E K k M H 8 f P 7 O w t Q u r v R S W e q G P o x y 5 J e 2 u C N b a B E N E n W A I Z o R u k E N r G b + q v b m Z v H D O s 3 M 3 0 E 4 K w e M + W 1 1 b q y t j J l G q J 8 L 0 U i L u C K t n f T V t i f x D 4 l + H R v O u P 2 o N O 2 G J M F G 6 p 0 D 6 I Z m u C x r m Z D b n D O B j F 2 6 E i z r f Z o 3 O g 1 L Q Z q D J g N x G Q U H h H m z Q J m h F V U A 1 R Z w q A 9 E I T L Y b 8 r 9 I c t i C Y s G Y 4 3 u h f i q k a L K G j T p d V i z r R R U X k F F L M 5 r E J o D R t f W v 0 v P e G P d q c j j L 6 0 x 8 3 r r c N f + n U y 3 z Z X o R 0 d 7 t 6 Y b 9 e F J V W P r O O O W K M B L a C B 8 J F Y f V P B u x N + E 5 C 2 2 Z h u E + m 4 6 C Y N R Q G Z m S R P B 4 t h N 6 F K M 6 y a R R k p S o R 1 A 3 Y g 2 V c T G m P h P 4 W P / y n 4 d 0 L o h 8 5 M u H V m K G / W 3 x i M r U S M L a N I l / 5 l e 5 y v K D Z B y m s K N R p + U t N 2 V b E d + C d Z b r L + H F h N O H H b B I i B N w u o d M f L E L 7 R R f t T Q r f f s 7 4 K X / s 3 w p c G / A l H A E c H C Q 0 y A F k y 8 E 6 C F i t k O I C t R r v z l a J i X / U b H Q b S b L D y / A I l o G V d t n u Q L z D f o D q j / j w T 2 p f C 0 G o 0 o b K B n y N o E o 2 E n v X n G I J 9 Z Z A B o K e Y I G P c H z c 6 u 8 l g g J U n Q 0 q T g e u M y E B 1 k r 1 C J A m j B F F Z G n R C Q 0 y E G n U y H L 9 R H g k s o N I E a C p r H F C N 6 V G A 5 B A i G r 3 d Q w L J O T M S 5 E D 7 D i 3 L 5 A p w p r y 8 9 O q R Q C J 3 s d 1 r / b J d f n e B J 3 A m 8 X H 5 O E f l 5 S Z S Z J O R N 4 X + Z Y R F u 9 m A j i 5 j 4 p Q U g h J s 4 R r 6 9 F 1 n / m y T 1 A V L W 2 K g l g N X D k X q 3 S d R I U f i 8 z A B B T E B 9 W C i x Z K C s 9 7 Y H f e 7 O 7 P x 2 X u W p G w A v R g H W L 2 y F t e O / 7 Q b i Q 2 g O j p C i i f 7 J I 0 k D S V r s t + E e j E W U T o U  
 i k e S z H w 8 N q H q G B J t 7 V 6 g j A 9 2 k + x y 5 P i 8 K Y j y i y J 6 0 m 9 t d w u v 7 J R 4 k a q i E V o u t k m O E J Y q S p a X p g N X g I x 2 4 b p / M 2 T Y l C I 4 p 8 O L c s X M p z m I p A p L Y 4 H e h n N L H g p q h A J y E v z 5 1 H l m + w + 0 q K y z j 8 z X f g / O Z X D a i 7 3 + 4 Y 3 1 j 8 t G Z 2 R t 8 / a R J b F y l 0 y E k m V l M U I J Z m 6 s U R W U o J v 2 x Z 3 O c 5 B K l 5 Z 1 T S C v f L F a v W q I I Z o e V g E b r 1 R h 2 d 5 C e W 6 u b 4 a V s I J s c x l 4 e R w V F V X g q M t h u 2 I v j Z x w F e T 1 0 r q w Q i + N G u O b Y V G s U v 4 k C i p a 5 Q p e V F S h m 0 Y 3 v U o I o e r I 8 Y Q t 6 2 w p g J e p e F R V J R W / / U W q 4 p N n F l k q P n 2 m s c x M q U j J t 2 E / k x / Q k u 9 Y w n o p B 4 W 9 C l K + h Z H E A e z A E b w I R 7 A d R 8 D A U c z i e L G j H y 8 q 9 G P q 7 V w c U e R o o W 6 8 2 N G N F x W 6 M f X 2 V h S 3 9 C K g l c Q n V F n G U / Y M a 6 m F R D X 9 f o T o Z W M 0 F q x u I 5 8 X Q R r D 0 U 4 M R y / E c J T G c N T p f 9 m O o Z z B M D q M m 4 / h + r h u K Q z l 9 P s U Q w H + 7 D U 6 h f G L j 7 B t H e M K 0 i I r 6 f c 3 x j h P T h h D f L F z i F + C 4 C i N Y D z E e Q g y R v h i 5 w h X Q T D z f m a E t 6 N H 1 9 I H 4 9 x l 9 s G 4 w o S o g t S 8 t n F 4 o u j 8 W L 2 e n 2 T 5 J P f A V Z b a r c D l l 2 2 2 V J U Z B 7 L d A R T 2 O + S Q y Q a y W 6 F L Y r u j L j a 6 a r Q w G r 8 K 3 6 W v M v D d D l 4 S 4 V 2 V Z d f F x D h c O x U X R + P J 0 E r 1 5 s 0 c z A V t 1 g U e J R d S 2 Y s z Y u S P d X z o n r v T e 5 f p j y V K a 2 0 Y 5 X s l i S q Z v m l c V l o N s B Z f p J z I n a g L E i k z G V 2 Q S q j 5 c m z w 5 S p x K G C n P 8 5 i c b 0 V i + u a s F C T W O C t 0 2 h c O j Y + Q M U c l 7 i s D h x S L t M e Q 4 R Y 6 4 J o b 0 b T D S B r i q 6 c m b K q 6 k D V d f N M U n Q D / j C A e C a K R j R h w d Z x V C c r A o s W 1 T I q R o p T S T y a s B 4 Y 6 9 H x Z j k D Q 8 v q E h h v f u f / v 0 z o m h C b F x 1 7 H V r F N i / S E L V 0 D r L A R A B + E e V f J H P t n n b s z 8 7 M m 3 r h M 9 t n S Z b X g Q c U x p t e p 9 1 t j 6 1 W o k O i R u x x X o c k I e r q k I t G 8 4 + x N R q 3 e 1 e H 3 1 r f p u B R z z 8 6 P + z p 1 H 7 w Q v b I J M t L r s 7 s U i c 4 R 3 j D H q 7 m c 9 y n r O a T 5 f t p n q Z 0 z m 0 + L q + 5 e Z T E g 2 X D k c e 1 j j M O 0 G M 2 R Q 4 Z 1 s l S G m U Z e 4 H T 1 u c w F h O q 7 v E 1 a C N Q 5 z 7 b M y R G b G R y 4 O o e b x y b H j q z i O b A h b M B m / O 3 w d Y x X P h q E T E K 4 L v u s p a S 4 o K a G p R S D c p 5 D c r 1 N I j y A P 0 i y 4 k W l b w W l R p b p F F q p G I 1 r 0 W 1 x k 4 F i Q a 1 v A a 1 G k m U 9 E S L e l 6 L e j 0 t q r h F R Y 1 v P n U C 1 1 n f 8 I e y 1 h p p Y T 7 / Y M T n C t L n g N B 9 P h / S x y H p S a z 4 C j 5 N J W 3 S M 2 / e u a 6 a B P E H e k b J O 1 c 1 8 M + N D P E N i J b w H 0 Z u P C b E 7 0 z o Q m y E 7 l g V L l d z f K n j U g h 9 Y e w u Q x S U F z 6 4 g t U Q O h 6 c 6 J e u 4 C 0 F b I s I f i D 0 / B A d 9 z w T L p z J N 3 R A A 1 0 u C A E a s 5 n / 5 E 5 J W c t 9 9 I U z 9 L 4 w d P + 1 8 o K o A G 1 R o z Z Y Z U P X m T I K S L Z J V u e a O Z 0 b H b J K J L / P d C 4 w x W z v A k 3 L 9 q 6 u q J n e p Q s R z K j K v P 5 G c V X J R + i k k b x B D l o E k A s z i 4 S v 9 E t y i 2 R s E A S k L E F A l j M E G R G 7 S H I Z / B U m / k r x 8 Q A b A 6 K I G / i D L P 6 y L O b i r x T G / 2 f 6 P A 0 9 M V 3 g z F 6 h o 2 o / / z / y l t 4 r  
 : f x d r e e m a > * /  
 