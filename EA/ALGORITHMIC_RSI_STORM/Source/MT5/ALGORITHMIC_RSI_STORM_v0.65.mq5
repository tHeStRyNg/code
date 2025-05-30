# p r o p e r t y   c o p y r i g h t       " C o p y r i g h t   2 0 2 3 ,   A l g o r i t h m i c   G M B H "  
 # p r o p e r t y   l i n k                 " h t t p s : / / w w w . a l g o r i t h m i c . o n e "  
 # p r o p e r t y   d e s c r i p t i o n   " "  
 # p r o p e r t y   v e r s i o n           " 0 . 7 "  
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
 # d e f i n e   P R O J E C T _ I D   " m t 5 - 8 3 1 7 "  
 / / - -  
 / /   P o i n t   F o r m a t   R u l e s  
 # d e f i n e   P O I N T _ F O R M A T _ R U L E S   " 0 . 0 0 1 = 0 . 0 1 , 0 . 0 0 0 0 1 = 0 . 0 0 0 1 , 0 . 0 0 0 0 0 1 = 0 . 0 0 0 1 "   / /   t h i s   i s   d e s e r i a l i z e d   i n   a   s p e c i a l   f u n c t i o n   l a t e r  
 # d e f i n e   E N A B L E _ S P R E A D _ M E T E R   t r u e  
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
 / / - -  
 / /   C o n s t a n t s   ( I n p u t   P a r a m e t e r s )  
 i n p u t   s t r i n g   E A _ N a m e   =   " A L G O R I T H M I C _ R S I _ S T O R M " ;  
 i n p u t   d o u b l e   L o t s   =   0 . 1 ;  
 i n p u t   d o u b l e   L o t s _ M a r t i n g a l e   =   2 . 0 ;  
 i n p u t   i n t   D i s t a n c e _ p i p s   =   5 0 ;  
 i n p u t   i n t   C l o s e _ P r o f i t _ M o n e y   =   3 0 ;  
 i n p u t   s t r i n g   S e t _ I n d i c a t o r   =   " A L G O R I T H M I C _ R S I _ S T O R M " ;  
 i n p u t   i n t   R S I _ p e r i o d   =   1 4 ;  
 i n p u t   i n t   H o w _ M a n y _ C a n d l e s _ 1   =   4 ;  
 i n p u t   i n t   H o w _ M a n y _ C a n d l e s _ 2   =   6 ;  
 i n p u t   i n t   U p p e r _ L e v e l _ B u y   =   3 0 ;  
 i n p u t   i n t   L o w e r _ L e v e l _ B u y   =   1 ;  
 i n p u t   i n t   U p p e r _ L e v e l _ S e l l   =   1 0 0 ;  
 i n p u t   i n t   L o w e r _ L e v e l _ S e l l   =   7 0 ;  
 i n p u t   i n t   M a g i c S t a r t   =   8 3 1 7 ;  
 i n p u t   s t r i n g   s y m b o l   =   " E U R U S D , E U R G B P , E U R C A D , E U R A U D , E U R C H F , E U R N Z D , U S D J P Y , U S D C A D , C A D C H F , C A D J P Y , G B P N Z D , G B P U S D , G B P C H F , G B P A U D , G B P C A D , G B P J P Y , A U D C A D , A U D N Z D , A U D C H F , A U D J P Y , N Z D U S D , N Z D C A D , N Z D C H F , N Z D J P Y " ;  
 c l a s s   c  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   E A _ N a m e ;  
 	 s t a t i c   d o u b l e   L o t s ;  
 	 s t a t i c   d o u b l e   L o t s _ M a r t i n g a l e ;  
 	 s t a t i c   i n t   D i s t a n c e _ p i p s ;  
 	 s t a t i c   i n t   C l o s e _ P r o f i t _ M o n e y ;  
 	 s t a t i c   s t r i n g   S e t _ I n d i c a t o r ;  
 	 s t a t i c   i n t   R S I _ p e r i o d ;  
 	 s t a t i c   i n t   H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 s t a t i c   i n t   H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 s t a t i c   i n t   U p p e r _ L e v e l _ B u y ;  
 	 s t a t i c   i n t   L o w e r _ L e v e l _ B u y ;  
 	 s t a t i c   i n t   U p p e r _ L e v e l _ S e l l ;  
 	 s t a t i c   i n t   L o w e r _ L e v e l _ S e l l ;  
 	 s t a t i c   i n t   M a g i c S t a r t ;  
 `     s t a t i c   s t r i n g   s y m b o l ;  
 } ;  
 s t r i n g   c : : E A _ N a m e ;  
 d o u b l e   c : : L o t s ;  
 d o u b l e   c : : L o t s _ M a r t i n g a l e ;  
 i n t   c : : D i s t a n c e _ p i p s ;  
 i n t   c : : C l o s e _ P r o f i t _ M o n e y ;  
 s t r i n g   c : : S e t _ I n d i c a t o r ;  
 i n t   c : : R S I _ p e r i o d ;  
 i n t   c : : H o w _ M a n y _ C a n d l e s _ 1 ;  
 i n t   c : : H o w _ M a n y _ C a n d l e s _ 2 ;  
 i n t   c : : U p p e r _ L e v e l _ B u y ;  
 i n t   c : : L o w e r _ L e v e l _ B u y ;  
 i n t   c : : U p p e r _ L e v e l _ S e l l ;  
 i n t   c : : L o w e r _ L e v e l _ S e l l ;  
 i n t   c : : M a g i c S t a r t ;  
 s t r i n g   c : : s y m b o l ;  
  
 / / - -  
 / /   V a r i a b l e s   ( G l o b a l   V a r i a b l e s )  
  
  
  
  
 c l a s s   v  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   d o u b l e   L o t s _ B u y ;  
 	 s t a t i c   d o u b l e   L o t s _ S e l l ;  
 	 s t a t i c   d o u b l e   D i s t a n c e _ B u y _ S e l l ;  
 	 s t a t i c   s t r i n g   P a s s w o r d A c c e s s ;  
 	 s t a t i c   s t r i n g   s y m b o l ;  
 } ;  
 d o u b l e   v : : L o t s _ B u y ;  
 d o u b l e   v : : L o t s _ S e l l ;  
 d o u b l e   v : : D i s t a n c e _ B u y _ S e l l ;  
 s t r i n g   v : : P a s s w o r d A c c e s s ;  
 s t r i n g   v : : s y m b o l ;  
  
  
  
  
 / / - -  
 / /   E x t e r n s   ( G l o b a l   V a r i a b l e s )  
 i n p u t   s t r i n g   i n p 1 7 _ G r o u p   =   " D A I L Y   P R O F I T   C H E C K E R " ;  
 i n p u t   d o u b l e   i n p 1 7 _ P r o f i t M o n e y   =   2 0 0 0 . 0 ;  
 i n p u t   s t r i n g   i n p 1 8 _ A l e r t T i t l e   =   " T H E   D A I L Y   P R O F I T   W A S   R E A C H E D " ;  
 i n p u t   s t r i n g   i n p 2 3 _ A l e r t T i t l e   =   " W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 0   H O U R S   T O   S T A R T " ;  
 i n p u t   s t r i n g   i n p 5 1 _ G r o u p   =   " D A I L Y   P R O F I T   C H E C K E R " ;  
 i n p u t   d o u b l e   i n p 5 1 _ P r o f i t M o n e y   =   - 2 0 0 0 ;  
 i n p u t   s t r i n g   i n p 5 3 _ A l e r t T i t l e   =   " T H E   D A I L Y   M A X   L O S S   W A S   R E A C H E D " ;  
 i n p u t   s t r i n g   i n p 5 8 _ A l e r t T i t l e   =   " W A I T I N G   F O R   N E X T   D A Y   A T   0 0 : 0 0   H O U R S   T O   S T A R T " ;  
  
 c l a s s   _ e x t e r n s  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   s t r i n g   i n p 1 7 _ G r o u p ;  
 	 s t a t i c   s t r i n g   i n p 1 7 _ T i m e 1 ;  
 	 s t a t i c   d o u b l e   i n p 1 7 _ P r o f i t M o n e y ;  
 	 s t a t i c   s t r i n g   i n p 1 8 _ A l e r t T i t l e ;  
 	 s t a t i c   s t r i n g   i n p 1 8 _ A l e r t L a b e l 1 ;  
 	 s t a t i c   s t r i n g   i n p 2 3 _ A l e r t T i t l e ;  
 	 s t a t i c   s t r i n g   i n p 2 3 _ A l e r t L a b e l 1 ;  
 	 s t a t i c   s t r i n g   i n p 5 1 _ G r o u p ;  
 	 s t a t i c   s t r i n g   i n p 5 1 _ T i m e 1 ;  
 	 s t a t i c   d o u b l e   i n p 5 1 _ P r o f i t M o n e y ;  
 	 s t a t i c   s t r i n g   i n p 5 3 _ A l e r t T i t l e ;  
 	 s t a t i c   s t r i n g   i n p 5 3 _ A l e r t L a b e l 1 ;  
 	 s t a t i c   s t r i n g   i n p 5 8 _ A l e r t T i t l e ;  
 	 s t a t i c   s t r i n g   i n p 5 8 _ A l e r t L a b e l 1 ;  
  
 } ;  
 s t r i n g   _ e x t e r n s : : i n p 1 7 _ G r o u p ;  
 s t r i n g   _ e x t e r n s : : i n p 1 7 _ T i m e 1 ;  
 d o u b l e   _ e x t e r n s : : i n p 1 7 _ P r o f i t M o n e y ;  
 s t r i n g   _ e x t e r n s : : i n p 1 8 _ A l e r t T i t l e ;  
 s t r i n g   _ e x t e r n s : : i n p 1 8 _ A l e r t L a b e l 1 ;  
 s t r i n g   _ e x t e r n s : : i n p 2 3 _ A l e r t T i t l e ;  
 s t r i n g   _ e x t e r n s : : i n p 2 3 _ A l e r t L a b e l 1 ;  
 s t r i n g   _ e x t e r n s : : i n p 5 1 _ G r o u p ;  
 s t r i n g   _ e x t e r n s : : i n p 5 1 _ T i m e 1 ;  
 d o u b l e   _ e x t e r n s : : i n p 5 1 _ P r o f i t M o n e y ;  
 s t r i n g   _ e x t e r n s : : i n p 5 3 _ A l e r t T i t l e ;  
 s t r i n g   _ e x t e r n s : : i n p 5 3 _ A l e r t L a b e l 1 ;  
 s t r i n g   _ e x t e r n s : : i n p 5 8 _ A l e r t T i t l e ;  
 s t r i n g   _ e x t e r n s : : i n p 5 8 _ A l e r t L a b e l 1 ;  
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
 i n t   F X D _ B L O C K S _ C O U N T                 =   7 2 ;  
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
 	 c : : E A _ N a m e   =   E A _ N a m e ;  
 	 c : : L o t s   =   L o t s ;  
 	 c : : L o t s _ M a r t i n g a l e   =   L o t s _ M a r t i n g a l e ;  
 	 c : : D i s t a n c e _ p i p s   =   D i s t a n c e _ p i p s ;  
 	 c : : C l o s e _ P r o f i t _ M o n e y   =   C l o s e _ P r o f i t _ M o n e y ;  
 	 c : : S e t _ I n d i c a t o r   =   S e t _ I n d i c a t o r ;  
 	 c : : R S I _ p e r i o d   =   R S I _ p e r i o d ;  
 	 c : : H o w _ M a n y _ C a n d l e s _ 1   =   H o w _ M a n y _ C a n d l e s _ 1 ;  
 	 c : : H o w _ M a n y _ C a n d l e s _ 2   =   H o w _ M a n y _ C a n d l e s _ 2 ;  
 	 c : : U p p e r _ L e v e l _ B u y   =   U p p e r _ L e v e l _ B u y ;  
 	 c : : L o w e r _ L e v e l _ B u y   =   L o w e r _ L e v e l _ B u y ;  
 	 c : : U p p e r _ L e v e l _ S e l l   =   U p p e r _ L e v e l _ S e l l ;  
 	 c : : L o w e r _ L e v e l _ S e l l   =   L o w e r _ L e v e l _ S e l l ;  
 	 c : : M a g i c S t a r t   =   M a g i c S t a r t ;  
       c : : s y m b o l   =   s y m b o l ;  
  
  
  
  
 	 / /   I n i t i a t e   E x t e r n s  
 	 _ e x t e r n s : : i n p 1 7 _ G r o u p   =   i n p 1 7 _ G r o u p ;  
 	 _ e x t e r n s : : i n p 1 7 _ T i m e 1   =   i n p 1 7 _ T i m e 1 ;  
 	 _ e x t e r n s : : i n p 1 7 _ P r o f i t M o n e y   =   i n p 1 7 _ P r o f i t M o n e y ;  
 	 _ e x t e r n s : : i n p 1 8 _ A l e r t T i t l e   =   i n p 1 8 _ A l e r t T i t l e ;  
 	 _ e x t e r n s : : i n p 1 8 _ A l e r t L a b e l 1   =   i n p 1 8 _ A l e r t L a b e l 1 ;  
 	 _ e x t e r n s : : i n p 2 3 _ A l e r t T i t l e   =   i n p 2 3 _ A l e r t T i t l e ;  
 	 _ e x t e r n s : : i n p 2 3 _ A l e r t L a b e l 1   =   i n p 2 3 _ A l e r t L a b e l 1 ;  
 	 _ e x t e r n s : : i n p 5 1 _ G r o u p   =   i n p 5 1 _ G r o u p ;  
 	 _ e x t e r n s : : i n p 5 1 _ T i m e 1   =   i n p 5 1 _ T i m e 1 ;  
 	 _ e x t e r n s : : i n p 5 1 _ P r o f i t M o n e y   =   i n p 5 1 _ P r o f i t M o n e y ;  
 	 _ e x t e r n s : : i n p 5 3 _ A l e r t T i t l e   =   i n p 5 3 _ A l e r t T i t l e ;  
 	 _ e x t e r n s : : i n p 5 3 _ A l e r t L a b e l 1   =   i n p 5 3 _ A l e r t L a b e l 1 ;  
 	 _ e x t e r n s : : i n p 5 8 _ A l e r t T i t l e   =   i n p 5 8 _ A l e r t T i t l e ;  
 	 _ e x t e r n s : : i n p 5 8 _ A l e r t L a b e l 1   =   i n p 5 8 _ A l e r t L a b e l 1 ;  
 	 _ e x t e r n s : : i n p 8 1 _ I n d i c a t o r _ S y m b o l   =   i n p 8 1 _ I n d i c a t o r _ S y m b o l ;  
 	 _ e x t e r n s : : i n p 1 1 3 _ d l S t o p L o s s _ V a l u e   =   i n p 1 1 3 _ d l S t o p L o s s _ V a l u e ;  
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
 	 v : : L o t s _ B u y   =   0 . 0 ;  
 	 v : : L o t s _ S e l l   =   0 . 0 ;  
 	 v : : D i s t a n c e _ B u y _ S e l l   =   0 . 0 ;  
 	 v : : P a s s w o r d A c c e s s   =   " S l a c k w a r e " ;  
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
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   7 2 ) ;  
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
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 6 9 } ;  
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
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 0 , 1 0 , 2 9 , 4 8 , 4 9 } ;  
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
 / /   " N o   p o s i t i o n "   m o d e l  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " N o   p o s i t i o n   n e a r b y "   m o d e l  
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
 	 	 v : : L o t s _ B u y   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
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
 	 	 v : : L o t s _ B u y   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
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
 	 	 v : : L o t s _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
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
 	 	 v : : D i s t a n c e _ B u y _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
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
 	 	 v : : L o t s _ S e l l   =   f o r m u l a ( c o m p a r e ,   l o ,   r o ) ;  
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
 / /   " D r a w   T e x t "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   _ T 5 _ , t y p e n a m e   T 6 , t y p e n a m e   _ T 6 _ , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 >  
 c l a s s   M D L _ C h a r t D r a w T e x t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O b j e c t P e r B a r ;  
 	 T 2   O b j e c t U p d a t e ;  
 	 T 3   O b j N a m e ;  
 	 T 4   O b j e c t T y p e ;  
 	 T 5   O b j T i m e 1 ;   v i r t u a l   _ T 5 _   _ O b j T i m e 1 _ ( ) { r e t u r n ( _ T 5 _ ) 0 ; }  
 	 T 6   O b j P r i c e 1 ;   v i r t u a l   _ T 6 _   _ O b j P r i c e 1 _ ( ) { r e t u r n ( _ T 6 _ ) 0 ; }  
 	 T 7   O b j X ;  
 	 T 8   O b j Y ;  
 	 T 9   O b j T e x t ;   v i r t u a l   _ T 9 _   _ O b j T e x t _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   O b j F o n t ;  
 	 T 1 1   O b j F o n t S i z e ;  
 	 T 1 2   O b j A n g l e ;  
 	 T 1 3   O b j C o r n e r ;  
 	 T 1 4   O b j A n c h o r ;  
 	 T 1 5   O b j C o l o r ;  
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
 	 M D L _ C h a r t D r a w T e x t ( )  
 	 {  
 	 	 O b j e c t P e r B a r   =   ( b o o l ) t r u e ;  
 	 	 O b j e c t U p d a t e   =   ( b o o l ) t r u e ;  
 	 	 O b j N a m e   =   ( s t r i n g ) " " ;  
 	 	 O b j e c t T y p e   =   ( E N U M _ O B J E C T ) O B J _ T E X T ;  
 	 	 O b j X   =   ( i n t ) 0 ;  
 	 	 O b j Y   =   ( i n t ) 0 ;  
 	 	 O b j F o n t   =   ( s t r i n g ) " A r i a l " ;  
 	 	 O b j F o n t S i z e   =   ( i n t ) 1 0 ;  
 	 	 O b j A n g l e   =   ( d o u b l e ) 0 . 0 ;  
 	 	 O b j C o r n e r   =   ( E N U M _ B A S E _ C O R N E R ) C O R N E R _ L E F T _ U P P E R ;  
 	 	 O b j A n c h o r   =   ( i n t ) A N C H O R _ L E F T _ U P P E R ;  
 	 	 O b j C o l o r   =   ( c o l o r ) c l r S k y B l u e ;  
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
 	 	 s t r i n g   O b j N a m e P r e f i x   =   " f x d _ t e x t _ " ;  
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
 	 	 	 	 	 P r i n t ( _ _ F U N C T I O N _ _ , " :   f a i l e d   t o   c r e a t e   t e x t   o b j e c t !   E r r o r   c o d e   =   " , G e t L a s t E r r o r ( ) ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 d o u b l e   p 1 = 0 ,   p 2 = 0 ;  
 	 	 	 	 d a t e t i m e   t 1 = 0 ,   t 2 = 0 ;  
 	 	  
 	 	 	 	 i f   ( O b j e c t T y p e   = =   O B J _ T E X T )  
 	 	 	 	 {  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ T I M E , 0 , ( l o n g ) _ O b j T i m e 1 _ ( ) ) ;  
 	 	 	 	 	 O b j e c t S e t D o u b l e ( O b j C h a r t I D , n a m e , O B J P R O P _ P R I C E , 0 , ( d o u b l e ) _ O b j P r i c e 1 _ ( ) ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ X D I S T A N C E , O b j X ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ Y D I S T A N C E , O b j Y ) ;  
 	 	 	 	 }  
 	 	  
 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D , n a m e , O B J P R O P _ T E X T , ( s t r i n g ) ( _ O b j T e x t _ ( ) ) ) ;  
 	 	 	 	 O b j e c t S e t S t r i n g ( O b j C h a r t I D , n a m e , O B J P R O P _ F O N T , O b j F o n t ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ F O N T S I Z E , O b j F o n t S i z e ) ;  
 	 	 	 	 O b j e c t S e t D o u b l e ( O b j C h a r t I D , n a m e , O B J P R O P _ A N G L E , O b j A n g l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ C O R N E R , O b j C o r n e r ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ A N C H O R , O b j A n c h o r ) ;  
 	 	  
 	 	 	 	 / / O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S T Y L E , O b j S t y l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ C O L O R , O b j C o l o r ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ B A C K , O b j B a c k ) ;  
 	 	 	 	 / / O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ W I D T H , O b j W i d t h ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S E L E C T A B L E , O b j S e l e c t a b l e ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ S E L E C T E D , O b j S e l e c t e d ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ H I D D E N , O b j H i d d e n ) ;  
 	 	 	 	 O b j e c t S e t I n t e g e r ( O b j C h a r t I D , n a m e , O B J P R O P _ Z O R D E R , O b j Z o r d e r ) ;  
 	 	  
 	 	 	 	 C h a r t R e d r a w ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
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
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
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
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   B l o c k   1   ( C H E C K   I F   W E   H A V E   A N Y   P O S I T I O N   O P E N )  
 c l a s s   B l o c k 0 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 " ;  
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
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 9 ] . r u n ( 0 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 9 ] . r u n ( 0 ) ;  
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
 / /   B l o c k   1 7   ( C H E C K   I F   M A X   P R O F I T   W A S   H I T   T O D A Y )  
 c l a s s   B l o c k 1 :   p u b l i c   M D L _ C h e c k P r o f i t I n P e r i o d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , s t r i n g , d o u b l e , b o o l , i n t , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 2 , 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 C o m p a r e   =   " > = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 1 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 ] . r u n ( 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 G r o u p   =   ( s t r i n g ) _ e x t e r n s : : i n p 1 7 _ G r o u p ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 T i m e 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 1 7 _ T i m e 1 ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) _ e x t e r n s : : i n p 1 7 _ P r o f i t M o n e y ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 8   ( D A I L Y   M A X   P R O F I T   R E A C H E D )  
 c l a s s   B l o c k 2 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 1 . T e x t   =   " " ;  
 	 	 A l e r t V a l u e 2 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 3 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 4 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 1 _ ( )   { r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ; }  
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
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 ] . r u n ( 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 A l e r t T i t l e   =   ( s t r i n g ) _ e x t e r n s : : i n p 1 8 _ A l e r t T i t l e ;  
 	 	 A l e r t L a b e l 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 1 8 _ A l e r t L a b e l 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 9   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 3 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 T i m e E n d   =   " 0 1 : 0 0 " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 4 ] . r u n ( 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   2 3   ( W A I T I N G   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 4 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 1 . T e x t   =   " " ;  
 	 	 A l e r t V a l u e 2 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 3 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 4 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 1 _ ( )   { r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ; }  
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
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 A l e r t T i t l e   =   ( s t r i n g ) _ e x t e r n s : : i n p 2 3 _ A l e r t T i t l e ;  
 	 	 A l e r t L a b e l 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 2 3 _ A l e r t L a b e l 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 1   ( C H E C K   I F   M A X   D A I L Y   L O S S   W A S   H I T   T O D A Y )  
 c l a s s   B l o c k 5 :   p u b l i c   M D L _ C h e c k P r o f i t I n P e r i o d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , s t r i n g , d o u b l e , b o o l , i n t , s t r i n g , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 4 ]   =   { 5 , 5 4 , 6 , 6 0 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 C o m p a r e   =   " < = " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 5 4 ] . r u n ( 5 ) ;  
 	 	 	 _ b l o c k s _ [ 6 0 ] . r u n ( 5 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 5 ) ;  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 G r o u p   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 1 _ G r o u p ;  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 T i m e 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 1 _ T i m e 1 ;  
 	 	 P r o f i t M o n e y   =   ( d o u b l e ) _ e x t e r n s : : i n p 5 1 _ P r o f i t M o n e y ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 3   ( D A I L Y   M A X   L O S S   R E A C H E D )  
 c l a s s   B l o c k 6 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 1 . T e x t   =   " " ;  
 	 	 A l e r t V a l u e 2 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 3 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 4 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 1 _ ( )   { r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ; }  
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
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 7 ] . r u n ( 6 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 A l e r t T i t l e   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 3 _ A l e r t T i t l e ;  
 	 	 A l e r t L a b e l 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 3 _ A l e r t L a b e l 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   5 4   ( W A I T   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 7 :   p u b l i c   M D L _ T i m e F i l t e r < s t r i n g , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , s t r i n g , s t r i n g , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , i n t , d o u b l e , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 T i m e E n d   =   " 0 1 : 0 0 " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 8 ] . r u n ( 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   5 8   ( W A I T I N G   F O R   N E X T   D A Y )  
 c l a s s   B l o c k 8 :   p u b l i c   M D L _ A l e r t M e s s a g e A d v a n c e d < s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , b o o l >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 A l e r t V a l u e 1 . T e x t   =   " " ;  
 	 	 A l e r t V a l u e 2 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 3 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 4 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 5 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 6 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 7 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 8 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 9 . V a l u e   =   0 . 0 ;  
 	 	 A l e r t V a l u e 1 0 . V a l u e   =   0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ A l e r t V a l u e 1 _ ( )   { r e t u r n   A l e r t V a l u e 1 . _ e x e c u t e _ ( ) ; }  
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
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 A l e r t T i t l e   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 8 _ A l e r t T i t l e ;  
 	 	 A l e r t L a b e l 1   =   ( s t r i n g ) _ e x t e r n s : : i n p 5 8 _ A l e r t L a b e l 1 ;  
 	 }  
 } ;  
  
 / /   B l o c k   7 0   ( S e t   \ " C u r r e n t   M a r k e t \ "   f o r   n e x t   b l o c k s )  
 c l a s s   B l o c k 9 :   p u b l i c   M D L _ S e t C u r r e n t S y m b o l 2 < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 0 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 L i s t O f S y m b o l s   =   " E U R U S D , E U R G B P , E U R C A D , E U R A U D , E U R C H F , E U R N Z D , U S D J P Y , U S D C A D , C A D C H F , C A D J P Y , G B P N Z D , G B P U S D , G B P C H F , G B P A U D , G B P C A D , G B P J P Y , A U D C A D , A U D N Z D , A U D C H F , A U D J P Y , N Z D U S D , N Z D C A D , N Z D C H F , N Z D J P Y " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 1 ] . r u n ( 9 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 ] . r u n ( 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 5   ( I f   t r a d e   ( B u y ) )  
 c l a s s   B l o c k 1 0 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 1 1 , 2 0 } ;  
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
 	 	 	 _ b l o c k s _ [ 1 1 ] . r u n ( 1 0 ) ;  
 	 	 	 _ b l o c k s _ [ 2 0 ] . r u n ( 1 0 ) ;  
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
 / /   B l o c k   7 6   ( C h e c k   t r a d e s   c o u n t   ( O r d e r   2 - 4 ) )  
 c l a s s   B l o c k 1 1 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < " ;  
 	 	 C o m p a r e C o u n t   =   4 ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 2 ] . r u n ( 1 1 ) ;  
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
 / /   B l o c k   7 7   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 1 2 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 1 3 ] . r u n ( 1 2 ) ;  
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
 / /   B l o c k   7 8   ( C u r r e n t   P r i c e   B u y )  
 c l a s s   B l o c k 1 3 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 4 } ;  
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
 	 	 	 _ b l o c k s _ [ 1 4 ] . r u n ( 1 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   7 9   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 1 4 :   p u b l i c   M D L _ F o r m u l a _ 1 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 5 } ;  
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
 	 	 L o . V a l u e   =   c : : D i s t a n c e _ p i p s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 5 ] . r u n ( 1 4 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 0   ( N o   t r a d e   n e a r b y )  
 c l a s s   B l o c k 1 5 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 	 _ b l o c k s _ [ 1 6 ] . r u n ( 1 5 ) ;  
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
 / /   B l o c k   8 1   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   B u y 1 ) )  
 c l a s s   B l o c k 1 6 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ p e r i o d ;  
 	 	 I n d i c a t o r . A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 I n d i c a t o r . S y m b o l   =   _ e x t e r n s : : i n p 8 1 _ I n d i c a t o r _ S y m b o l ;  
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
 	 	 	 _ b l o c k s _ [ 1 7 ] . r u n ( 1 6 ) ;  
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
 / /   B l o c k   8 2   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 1 7 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 8 ] . r u n ( 1 7 ) ;  
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
 / /   B l o c k   8 3   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 1 8 :   p u b l i c   M D L _ F o r m u l a _ 2 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 1 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t s _ B u y ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : L o t s _ M a r t i n g a l e ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 9 ] . r u n ( 1 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 4   ( B u y   n o w   ( L o t s   M a r t i n g a l e ) )  
 c l a s s   B l o c k 1 9 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d l S t o p L o s s . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d l T a k e P r o f i t . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
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
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t s _ B u y ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   8 5   ( C h e c k   t r a d e s   c o u n t   ( O r d e r   5 . . . ) )  
 c l a s s   B l o c k 2 0 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e C o u n t   =   4 ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 1 ] . r u n ( 2 0 ) ;  
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
 / /   B l o c k   8 6   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 2 1 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 2 } ;  
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
 	 	 	 _ b l o c k s _ [ 2 2 ] . r u n ( 2 1 ) ;  
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
 / /   B l o c k   8 7   ( C u r r e n t   P r i c e   B u y )  
 c l a s s   B l o c k 2 2 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 2 3 ] . r u n ( 2 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 8   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 2 3 :   p u b l i c   M D L _ F o r m u l a _ 3 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 4 } ;  
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
 	 	 L o . V a l u e   =   c : : D i s t a n c e _ p i p s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 4 ] . r u n ( 2 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   8 9   ( N o   t r a d e   n e a r b y )  
 c l a s s   B l o c k 2 4 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 	 _ b l o c k s _ [ 2 5 ] . r u n ( 2 4 ) ;  
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
 / /   B l o c k   9 0   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   B u y 2 ) )  
 c l a s s   B l o c k 2 5 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ p e r i o d ;  
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
 	 	 	 _ b l o c k s _ [ 2 6 ] . r u n ( 2 5 ) ;  
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
 / /   B l o c k   9 1   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 2 6 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 7 ] . r u n ( 2 6 ) ;  
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
 / /   B l o c k   9 2   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 2 7 :   p u b l i c   M D L _ F o r m u l a _ 4 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 2 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t s _ B u y ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : L o t s _ M a r t i n g a l e ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 2 8 ] . r u n ( 2 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 3   ( B u y   n o w   ( L o t s   M a r t i n g a l e ) )  
 c l a s s   B l o c k 2 8 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d l S t o p L o s s . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d l T a k e P r o f i t . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
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
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t s _ B u y ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   9 4   ( I f   t r a d e   ( S e l l ) )  
 c l a s s   B l o c k 2 9 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 3 0 , 3 8 } ;  
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
 	 	 	 _ b l o c k s _ [ 3 0 ] . r u n ( 2 9 ) ;  
 	 	 	 _ b l o c k s _ [ 3 8 ] . r u n ( 2 9 ) ;  
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
 / /   B l o c k   9 5   ( C h e c k   t r a d e s   c o u n t   ( O r d e r   2 - 4 ) )  
 c l a s s   B l o c k 3 0 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e   =   " < " ;  
 	 	 C o m p a r e C o u n t   =   4 ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 1 ] . r u n ( 3 0 ) ;  
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
 / /   B l o c k   9 6   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 3 1 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 2 } ;  
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
 	 	 	 _ b l o c k s _ [ 3 2 ] . r u n ( 3 1 ) ;  
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
 / /   B l o c k   9 7   ( C u r r e n t   P r i c e   S e l l )  
 c l a s s   B l o c k 3 2 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 3 3 ] . r u n ( 3 2 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 8   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 3 3 :   p u b l i c   M D L _ F o r m u l a _ 5 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 8 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 4 } ;  
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
 	 	 L o . V a l u e   =   c : : D i s t a n c e _ p i p s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 4 ] . r u n ( 3 3 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   9 9   ( N o   t r a d e   n e a r b y )  
 c l a s s   B l o c k 3 4 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 	 _ b l o c k s _ [ 3 5 ] . r u n ( 3 4 ) ;  
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
 / /   B l o c k   1 0 0   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   S e l l 1 ) )  
 c l a s s   B l o c k 3 5 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ p e r i o d ;  
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
 	 	 	 _ b l o c k s _ [ 3 6 ] . r u n ( 3 5 ) ;  
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
 / /   B l o c k   1 0 1   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 3 6 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
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
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P e r i o d   =   ( E N U M _ T I M E F R A M E S ) C u r r e n t T i m e f r a m e ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 2   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 3 7 :   p u b l i c   M D L _ F o r m u l a _ 6 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 2 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t s _ S e l l ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : L o t s _ M a r t i n g a l e ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 6 ] . r u n ( 3 7 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 4   ( C h e c k   t r a d e s   c o u n t   ( O r d e r   5 . . . ) )  
 c l a s s   B l o c k 3 8 :   p u b l i c   M D L _ C h e c k T r a d e s C o u n t < s t r i n g , i n t , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 C o m p a r e C o u n t   =   4 ;  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 9 ] . r u n ( 3 8 ) ;  
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
 / /   B l o c k   1 0 5   ( F o r   e a c h   T r a d e   ( L o o p   M a r t i n g a l e ) )  
 c l a s s   B l o c k 3 9 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 0 } ;  
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
 	 	 	 _ b l o c k s _ [ 4 0 ] . r u n ( 3 9 ) ;  
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
 / /   B l o c k   1 0 6   ( C u r r e n t   P r i c e   S e l l )  
 c l a s s   B l o c k 4 0 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , s t r i n g , M D L I C _ i n l o o p _ O r d e r O p e n P r i c e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 6 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 1 } ;  
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
 	 	 	 _ b l o c k s _ [ 4 1 ] . r u n ( 4 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 7   ( N e a r b y   P i p s )  
 c l a s s   B l o c k 4 1 :   p u b l i c   M D L _ F o r m u l a _ 7 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 7 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 2 } ;  
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
 	 	 L o . V a l u e   =   c : : D i s t a n c e _ p i p s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 2 ] . r u n ( 4 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 0 8   ( N o   t r a d e   n e a r b y )  
 c l a s s   B l o c k 4 2 :   p u b l i c   M D L _ N o N e a r b y R u n n i n g < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ v a l u e _ t i m e , d a t e t i m e , s t r i n g , M D L I C _ p r i c e s _ p r i c e s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 	 _ b l o c k s _ [ 4 3 ] . r u n ( 4 2 ) ;  
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
 / /   B l o c k   1 0 9   ( I n d i c a t o r   m o v e s   w i t h i n   l i m i t s   ( R S I   S e l l 2 ) )  
 c l a s s   B l o c k 4 3 :   p u b l i c   M D L _ I n d i c a t o r W i t h i n L i m i t s < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , i n t , i n t , i n t , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d U p p e r L e v e l . V a l u e   =   7 0 . 0 ;  
 	 	 d L o w e r L e v e l . V a l u e   =   3 0 . 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ I n d i c a t o r _ ( )   {  
 	 	 I n d i c a t o r . R S I p e r i o d   =   c : : R S I _ p e r i o d ;  
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
 	 	 	 _ b l o c k s _ [ 4 4 ] . r u n ( 4 3 ) ;  
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
 / /   B l o c k   1 1 0   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 4 4 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 5 ] . r u n ( 4 4 ) ;  
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
 / /   B l o c k   1 1 1   ( L o t s   M a r t i n g a l e )  
 c l a s s   B l o c k 4 5 :   p u b l i c   M D L _ F o r m u l a _ 8 < M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 1 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " * " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . V a l u e   =   v : : L o t s _ S e l l ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . V a l u e   =   c : : L o t s _ M a r t i n g a l e ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
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
 / /   B l o c k   1 1 2   ( S e l l   n o w   ( L o t s   M a r t i n g a l e ) )  
 c l a s s   B l o c k 4 6 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d l S t o p L o s s . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d l T a k e P r o f i t . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
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
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t s _ S e l l ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 3   ( S e l l   n o w   ( L o t s   M a r t i n g a l e ) )  
 c l a s s   B l o c k 4 7 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d l T a k e P r o f i t . V a l u e   =   5 0 0 0 . 0 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 . 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 . 0 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   {  
 	 	 d l S t o p L o s s . V a l u e   =   _ e x t e r n s : : i n p 1 1 3 _ d l S t o p L o s s _ V a l u e ;  
  
 	 	 r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ;  
 	 }  
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
 	 	 V o l u m e S i z e   =   ( d o u b l e ) v : : L o t s _ S e l l ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1 4   ( I f   t r a d e   ( B u y ) )  
 c l a s s   B l o c k 4 8 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 0 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 0 ] . r u n ( 4 8 ) ;  
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
 / /   B l o c k   1 3 3   ( I f   t r a d e   ( S e l l ) )  
 c l a s s   B l o c k 4 9 :   p u b l i c   M D L _ I f O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 1 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 1 ] . r u n ( 4 9 ) ;  
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
 / /   B l o c k   1 3 4   ( C h e c k   p r o f i t   ( u n r e a l i z e d ) )  
 c l a s s   B l o c k 5 0 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 2 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 2 ] . r u n ( 5 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) c : : C l o s e _ P r o f i t _ M o n e y ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 5   ( C h e c k   p r o f i t   ( u n r e a l i z e d ) )  
 c l a s s   B l o c k 5 1 :   p u b l i c   M D L _ C h e c k U P r o f i t < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , s t r i n g , s t r i n g , d o u b l e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 3 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 3 ] . r u n ( 5 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 P r o f i t A m o u n t   =   ( d o u b l e ) c : : C l o s e _ P r o f i t _ M o n e y ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 6   ( C l o s e   t r a d e s   ( B u y ) )  
 c l a s s   B l o c k 5 2 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 7   ( C l o s e   t r a d e s   ( S e l l ) )  
 c l a s s   B l o c k 5 3 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , u l o n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 G r o u p M o d e   =   " a l l " ;  
 	 	 S y m b o l M o d e   =   " a l l " ;  
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
 	 	 A r r o w C o l o r   =   ( c o l o r ) c l r D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 3 8   ( N o   t r a d e   ( B u y ) )  
 c l a s s   B l o c k 5 4 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 5 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 5 ] . r u n ( 5 4 ) ;  
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
 / /   B l o c k   1 3 9   ( R S I   B u y )  
 c l a s s   B l o c k 5 5 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 3 9 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 6 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x < " ;  
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
 	 	 	 _ b l o c k s _ [ 5 6 ] . r u n ( 5 5 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 0   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 5 6 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 7 ] . r u n ( 5 6 ) ;  
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
 / /   B l o c k   1 4 1   ( B u y   n o w )  
 c l a s s   B l o c k 5 7 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 8 } ;  
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
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
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
 	 	 	 _ b l o c k s _ [ 5 8 ] . r u n ( 5 7 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L o t s ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r B u y   =   ( c o l o r ) c l r B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 2   ( F o r   e a c h   T r a d e   ( L o t s   B u y ) )  
 c l a s s   B l o c k 5 8 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 5 9 } ;  
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
 	 	 	 _ b l o c k s _ [ 5 9 ] . r u n ( 5 8 ) ;  
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
 / /   B l o c k   1 4 3   ( M o d i f y   V a r i a b l e s   ( L o t s   B u y ) )  
 c l a s s   B l o c k 5 9 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ i n l o o p _ O r d e r V o l u m e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 3 " ;  
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
 	 	 v : : L o t s _ B u y   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 4   ( N o   t r a d e   ( S e l l ) )  
 c l a s s   B l o c k 6 0 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 1 } ;  
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
 	 	 	 _ b l o c k s _ [ 6 1 ] . r u n ( 6 0 ) ;  
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
 / /   B l o c k   1 4 5   ( R S I   S e l l )  
 c l a s s   B l o c k 6 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i R S I , d o u b l e , s t r i n g , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 5 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 2 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x > " ;  
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
 	 	 	 _ b l o c k s _ [ 6 2 ] . r u n ( 6 1 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 4 6   ( O n c e   p e r   b a r )  
 c l a s s   B l o c k 6 2 :   p u b l i c   M D L _ O n c e P e r B a r < s t r i n g , E N U M _ T I M E F R A M E S , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 5 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 5 ] . r u n ( 6 2 ) ;  
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
 / /   B l o c k   1 4 8   ( F o r   e a c h   T r a d e   ( L o t s   S e l l ) )  
 c l a s s   B l o c k 6 3 :   p u b l i c   M D L _ L o o p S t a r t T r a d e s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , i n t , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 4 } ;  
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
 	 	 	 _ b l o c k s _ [ 6 4 ] . r u n ( 6 3 ) ;  
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
 / /   B l o c k   1 4 9   ( M o d i f y   V a r i a b l e s   ( L o t s   S e l l ) )  
 c l a s s   B l o c k 6 4 :   p u b l i c   M D L _ M o d i f y V a r i a b l e s < i n t , M D L I C _ i n l o o p _ O r d e r V o l u m e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e , i n t , M D L I C _ v a l u e _ v a l u e , d o u b l e >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 4 9 " ;  
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
 	 	 v : : L o t s _ S e l l   =   _ V a l u e 1 _ ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 0   ( S e l l   n o w )  
 c l a s s   B l o c k 6 5 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , i n t , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , u l o n g , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 6 3 } ;  
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
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 S t o p L o s s M o d e   =   " n o n e " ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
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
 	 	 	 _ b l o c k s _ [ 6 3 ] . r u n ( 6 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 S y m b o l   =   ( s t r i n g ) C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e S i z e   =   ( d o u b l e ) c : : L o t s ;  
 	 	 M y C o m m e n t   =   ( s t r i n g ) c : : E A _ N a m e ;  
 	 	 A r r o w C o l o r S e l l   =   ( c o l o r ) c l r R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 1   ( T e r m i n a t e )  
 c l a s s   B l o c k 6 6 :   p u b l i c   M D L _ T e r m i n a t e < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 1 " ;  
  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 M e s s a g e   =   " I n v a l i d   L i c e n s e   -   P r o g r a m   T e r m i n a t e d " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 2   ( D r a w   T e x t )  
 c l a s s   B l o c k 6 7 :   p u b l i c   M D L _ C h a r t D r a w T e x t < b o o l , b o o l , s t r i n g , E N U M _ O B J E C T , M D L I C _ v a l u e _ t i m e , d a t e t i m e , M D L I C _ c a n d l e s _ c a n d l e s , d o u b l e , i n t , i n t , M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , i n t , d o u b l e , E N U M _ B A S E _ C O R N E R , i n t , c o l o r , b o o l , b o o l , b o o l , b o o l , i n t , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 O b j T i m e 1 . T i m e C a n d l e I D   =   0 ;  
 	 	 O b j P r i c e 1 . i O H L C   =   " i O p e n " ;  
 	 	 O b j P r i c e 1 . T i m e S t a m p   =   " " ;  
 	 	 O b j T e x t . T e x t   =   " P a s s w o r d   E n t e r e d   S u c c e s s f u l l y " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 O b j e c t P e r B a r   =   f a l s e ;  
 	 	 O b j e c t U p d a t e   =   f a l s e ;  
 	 	 O b j F o n t S i z e   =   4 0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d a t e t i m e   _ O b j T i m e 1 _ ( )   { r e t u r n   O b j T i m e 1 . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ O b j P r i c e 1 _ ( )   {  
 	 	 O b j P r i c e 1 . S y m b o l   =   C u r r e n t S y m b o l ( ) ;  
 	 	 O b j P r i c e 1 . P e r i o d   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   O b j P r i c e 1 . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ O b j T e x t _ ( )   { r e t u r n   O b j T e x t . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
  
 	 	 O b j e c t T y p e   =   ( E N U M _ O B J E C T ) O B J _ T E X T ;  
 	 	 O b j C o r n e r   =   ( E N U M _ B A S E _ C O R N E R ) C O R N E R _ R I G H T _ L O W E R ;  
 	 	 O b j A n c h o r   =   ( i n t ) A N C H O R _ R I G H T ;  
 	 	 O b j C o l o r   =   ( c o l o r ) c l r S k y B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 3   ( C o n d i t i o n )  
 c l a s s   B l o c k 6 8 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ t e x t _ t e x t , s t r i n g , s t r i n g , M D L I C _ t e x t _ t e x t , s t r i n g , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 3 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 6 6 , 6 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 R o . T e x t   =   " " ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " = = " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   s t r i n g   _ L o _ ( )   {  
 	 	 L o . T e x t   =   v : : P a s s w o r d A c c e s s ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   s t r i n g   _ R o _ ( )   { r e t u r n   R o . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 6 6 ] . r u n ( 6 8 ) ;  
 	 	 }  
 	 	 e l s e   i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 7 ] . r u n ( 6 8 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 4   ( I f   T e s t i n g )  
 c l a s s   B l o c k 6 9 :   p u b l i c   M D L _ I f T e s t i n g  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 4 " ;  
  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 7 0 , 7 1 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   0 )   {  
 	 	 	 _ b l o c k s _ [ 7 0 ] . r u n ( 6 9 ) ;  
 	 	 	 _ b l o c k s _ [ 7 1 ] . r u n ( 6 9 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 5   ( I f   D e m o   a c c o u n t )  
 c l a s s   B l o c k 7 0 :   p u b l i c   M D L _ I f D e m o  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 5 " ;  
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
 	 	 	 _ b l o c k s _ [ 6 8 ] . r u n ( 7 0 ) ;  
 	 	 }  
 	 }  
 } ;  
  
 / /   B l o c k   1 5 6   ( I f   R e a l   a c c o u n t )  
 c l a s s   B l o c k 7 1 :   p u b l i c   M D L _ I f R e a l  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 5 6 " ;  
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
 	 	 	 _ b l o c k s _ [ 6 8 ] . r u n ( 7 1 ) ;  
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
 d o u b l e   A c c o u n t B a l a n c e ( )  
 {  
 	 r e t u r n   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ B A L A N C E ) ,   2 ) ;  
 }  
  
 d o u b l e   A c c o u n t B a l a n c e A t S t a r t ( )  
 {  
 	 / /   T h i s   f u n c t i o n   M U S T   b e   r u n   o n c e   a t   p o g r a m ' s   s t a r t  
 	 s t a t i c   d o u b l e   m e m o r y   =   0 ;  
  
 	 i f   ( m e m o r y   = =   0 )  
 	 {  
 	 	 m e m o r y   =   N o r m a l i z e D o u b l e ( A c c o u n t I n f o D o u b l e ( A C C O U N T _ B A L A N C E ) ,   2 ) ;  
 	 }  
  
 	 r e t u r n   m e m o r y ;  
 }  
  
 d o u b l e   A c c o u n t E q u i t y ( )  
 {  
 	 r e t u r n   A c c o u n t I n f o D o u b l e ( A C C O U N T _ E Q U I T Y ) ;  
 }  
  
 d o u b l e   A c c o u n t F r e e M a r g i n ( )  
 {  
 	 r e t u r n   A c c o u n t I n f o D o u b l e ( A C C O U N T _ F R E E M A R G I N ) ;  
 }  
  
 d o u b l e   A l i g n L o t s ( s t r i n g   s y m b o l ,   d o u b l e   l o t s ,   d o u b l e   l o w e r l o t s   =   0 . 0 ,   d o u b l e   u p p e r l o t s   =   0 . 0 )  
 {  
 	 d o u b l e   L o t S t e p   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ S T E P ) ;  
 	 d o u b l e   L o t S i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ C O N T R A C T _ S I Z E ) ;  
 	 d o u b l e   M i n L o t s   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
 	 d o u b l e   M a x L o t s   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ;  
  
 	 i f   ( L o t S t e p   >   M i n L o t s )   M i n L o t s   =   L o t S t e p ;  
  
 	 i f   ( l o t s   = =   E M P T Y _ V A L U E )   { l o t s   =   0 . 0 ; }  
  
 	 l o t s   =   M a t h R o u n d ( l o t s   /   L o t S t e p )   *   L o t S t e p ;  
  
 	 i f   ( l o t s   <   M i n L o t s )   { l o t s   =   M i n L o t s ; }  
 	 i f   ( l o t s   >   M a x L o t s )   { l o t s   =   M a x L o t s ; }  
  
 	 i f   ( l o w e r l o t s   >   0 . 0 )  
 	 {  
 	 	 l o w e r l o t s   =   M a t h R o u n d ( l o w e r l o t s   /   L o t S t e p )   *   L o t S t e p ;  
 	 	 i f   ( l o t s   <   l o w e r l o t s )   { l o t s   =   l o w e r l o t s ; }  
 	 }  
  
 	 i f   ( u p p e r l o t s   >   0 . 0 )  
 	 {  
 	 	 u p p e r l o t s   =   M a t h R o u n d ( u p p e r l o t s   /   L o t S t e p )   *   L o t S t e p ;  
 	 	 i f   ( l o t s   >   u p p e r l o t s )   { l o t s   =   u p p e r l o t s ; }  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   A l i g n S t o p L o s s (  
 	 s t r i n g   s y m b o l ,  
 	 i n t   t y p e ,  
 	 d o u b l e   p r i c e ,  
 	 d o u b l e   s l o   =   0 . 0 ,   / /   o r i g i n a l   s l ,   u s e d   w h e n   m o d i f y i n g  
 	 d o u b l e   s l l   =   0 . 0 ,  
 	 d o u b l e   s l p   =   0 . 0 ,  
 	 b o o l   c o n s i d e r _ f r e e z e l e v e l   =   f a l s e  
 	 )  
 {  
 	 d o u b l e   s l   =   0 . 0 ;  
 	  
 	 i f   ( M a t h A b s ( s l l )   = =   E M P T Y _ V A L U E )   { s l l   =   0 . 0 ; }  
 	 i f   ( M a t h A b s ( s l p )   = =   E M P T Y _ V A L U E )   { s l p   =   0 . 0 ; }  
  
 	 i f   ( s l l   = =   0 . 0   & &   s l p   = =   0 . 0 )  
 	 {  
 	 	 r e t u r n   0 . 0 ;  
 	 }  
  
 	 i f   ( p r i c e   < =   0 . 0 )  
 	 {  
 	 	 P r i n t ( _ _ F U N C T I O N _ _   +   "   e r r o r :   N o   p r i c e   e n t e r e d " ) ;  
  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 s l p                     =   s l p   *   P i p V a l u e ( s y m b o l )   *   p o i n t ;  
  
 	 / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 i n t   b s   =   1 ;  
  
 	 i f   (  
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P _ L I M I T  
 	 	 )  
 	 {  
 	 	 b s   =   - 1 ;  
 	 }  
  
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 d o u b l e   a s k b i d   =   p r i c e ;  
 	 d o u b l e   b i d a s k   =   p r i c e ;  
  
 	 i f   ( t y p e   <   2 )  
 	 {  
 	 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
  
 	 	 a s k b i d   =   a s k ;  
 	 	 b i d a s k   =   b i d ;  
  
 	 	 i f   ( b s   <   0 )  
 	 	 {  
 	 	     a s k b i d   =   b i d ;  
 	 	     b i d a s k   =   a s k ;  
 	 	 }  
 	 }  
  
 	 / / - -   b u i l d   s l   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -    
 	 i f   ( s l l   = =   0 . 0   & &   s l p   ! =   0 . 0 )   { s l l   =   p r i c e ; }  
  
 	 i f   ( s l l   >   0 . 0 )   { s l   =   s l l   -   s l p   *   b s ; }  
  
 	 i f   ( s l   <   0 . 0 )  
 	 {  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	 s l     =   N o r m a l i z e D o u b l e ( s l ,   d i g i t s ) ;  
 	 s l o   =   N o r m a l i z e D o u b l e ( s l o ,   d i g i t s ) ;  
  
 	 i f   ( s l   = =   s l o )  
 	 {  
 	 	 r e t u r n   s l ;  
 	 }  
  
 	 / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 d o u b l e   m i n s t o p s   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ;  
  
 	 i f   ( c o n s i d e r _ f r e e z e l e v e l   = =   t r u e )  
 	 {  
 	 	 d o u b l e   f r e e z e l e v e l   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ;  
  
 	 	 i f   ( f r e e z e l e v e l   >   m i n s t o p s )   { m i n s t o p s   =   f r e e z e l e v e l ; }  
 	 }  
  
 	 m i n s t o p s   =   N o r m a l i z e D o u b l e ( m i n s t o p s   *   p o i n t , d i g i t s ) ;  
  
 	 d o u b l e   s l l i m i t   =   b i d a s k   -   m i n s t o p s   *   b s ;   / /   S L   m i n   p r i c e   l e v e l  
  
 	 / / - -   c h e c k   a n d   a l i g n   s l ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l  
 	 i f   ( s l   >   0 . 0   & &   s l   ! =   s l o )  
 	 {  
 	 	 i f   ( ( b s   >   0   & &   s l   >   a s k b i d )   | |   ( b s   <   0   & &   s l   <   a s k b i d ) )  
 	 	 {  
 	 	 	 s t r i n g   a b s t r   =   " " ;  
  
 	 	 	 i f   ( b s   >   0 )   { a b s t r   =   " B i d " ; }   e l s e   { a b s t r   =   " A s k " ; }  
  
 	 	 	 P r i n t (  
 	 	 	 	 " E r r o r :   I n v a l i d   S L   r e q u e s t e d   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( s l ,   d i g i t s ) ,  
 	 	 	 	 "   f o r   " ,   a b s t r ,   "   p r i c e   " ,  
 	 	 	 	 b i d a s k ,  
 	 	 	 	 " ) "  
 	 	 	 ) ;  
  
 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
 	 	 e l s e   i f   ( ( b s   >   0   & &   s l   >   s l l i m i t )   | |   ( b s   <   0   & &   s l   <   s l l i m i t ) )  
 	 	 {  
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 	 {  
 	 	 	 	 r e t u r n   s l ;  
 	 	 	 }  
  
 	 	 	 P r i n t (  
 	 	 	 	 " W a r n i n g :   T o o   s h o r t   S L   r e q u e s t e d   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( s l ,   d i g i t s ) ,  
 	 	 	 	 "   o r   " ,  
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( s l   -   a s k b i d )   /   p o i n t ,   0 ) ,  
 	 	 	 	 "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( s l l i m i t ,   d i g i t s ) ,  
 	 	 	 	 "   o r   " ,  
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( a s k b i d   -   s l l i m i t )   /   p o i n t ,   0 ) ,  
 	 	 	 	 "   p o i n t s ) "  
 	 	 	 ) ;  
  
 	 	 	 s l   =   s l l i m i t ;  
  
 	 	 	 r e t u r n   s l ;  
 	 	 }  
 	 }  
  
 	 / /   a l i g n   b y   t h e   t i c k s i z e  
 	 d o u b l e   t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ;  
 	 s l   =   M a t h R o u n d ( s l   /   t i c k s i z e )   *   t i c k s i z e ;  
  
 	 r e t u r n   s l ;  
 }  
  
 d o u b l e   A l i g n T a k e P r o f i t (  
 	 s t r i n g   s y m b o l ,  
 	 i n t   t y p e ,  
 	 d o u b l e   p r i c e ,  
 	 d o u b l e   t p o   =   0 . 0 ,   / /   o r i g i n a l   t p ,   u s e d   w h e n   m o d i f y i n g  
 	 d o u b l e   t p l   =   0 . 0 ,  
 	 d o u b l e   t p p   =   0 . 0 ,  
 	 b o o l   c o n s i d e r _ f r e e z e l e v e l   =   f a l s e  
 	 )  
 {  
 	 d o u b l e   t p   =   0 . 0 ;  
 	  
 	 i f   ( M a t h A b s ( t p l )   = =   E M P T Y _ V A L U E )   { t p l   =   0 . 0 ; }  
 	 i f   ( M a t h A b s ( t p p )   = =   E M P T Y _ V A L U E )   { t p p   =   0 . 0 ; }  
  
 	 i f   ( t p l   = =   0 . 0   & &   t p p   = =   0 . 0 )  
 	 {  
 	 	 r e t u r n   0 . 0 ;  
 	 }  
  
 	 i f   ( p r i c e   < =   0 . 0 )  
 	 {  
 	 	 P r i n t ( _ _ F U N C T I O N _ _   +   "   e r r o r :   N o   p r i c e   e n t e r e d " ) ;  
  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 t p p                     =   t p p   *   P i p V a l u e ( s y m b o l )   *   p o i n t ;  
 	  
 	 / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 i n t   b s   =   1 ;  
  
 	 i f   (  
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P _ L I M I T  
 	 	 )  
 	 {  
 	 	 b s   =   - 1 ;  
 	 }  
 	  
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 d o u b l e   a s k b i d   =   p r i c e ;  
 	 d o u b l e   b i d a s k   =   p r i c e ;  
 	  
 	 i f   ( t y p e   <   2 )  
 	 {  
 	 	 d o u b l e   a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 d o u b l e   b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 	 	  
 	 	 a s k b i d   =   a s k ;  
 	 	 b i d a s k   =   b i d ;  
  
 	 	 i f   ( b s   <   0 )  
 	 	 {  
 	 	     a s k b i d   =   b i d ;  
 	 	     b i d a s k   =   a s k ;  
 	 	 }  
 	 }  
 	  
 	 / / - -   b u i l d   t p   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -    
 	 i f   ( t p l   = =   0 . 0   & &   t p p   ! =   0 . 0 )   { t p l   =   p r i c e ; }  
  
 	 i f   ( t p l   >   0 . 0 )   { t p   =   t p l   +   t p p   *   b s ; }  
 	  
 	 i f   ( t p   <   0 . 0 )  
 	 {  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	 t p     =   N o r m a l i z e D o u b l e ( t p ,   d i g i t s ) ;  
 	 t p o   =   N o r m a l i z e D o u b l e ( t p o ,   d i g i t s ) ;  
  
 	 i f   ( t p   = =   t p o )  
 	 {  
 	 	 r e t u r n   t p ;  
 	 }  
 	  
 	 / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 d o u b l e   m i n s t o p s   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ;  
  
 	 i f   ( c o n s i d e r _ f r e e z e l e v e l   = =   t r u e )  
 	 {  
 	 	 d o u b l e   f r e e z e l e v e l   =   ( d o u b l e ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ;  
  
 	 	 i f   ( f r e e z e l e v e l   >   m i n s t o p s )   { m i n s t o p s   =   f r e e z e l e v e l ; }  
 	 }  
  
 	 m i n s t o p s   =   N o r m a l i z e D o u b l e ( m i n s t o p s   *   p o i n t , d i g i t s ) ;  
 	  
 	 d o u b l e   t p l i m i t   =   b i d a s k   +   m i n s t o p s   *   b s ;   / /   T P   m i n   p r i c e   l e v e l  
 	  
 	 / / - -   c h e c k   a n d   a l i g n   t p ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l  
 	 i f   ( t p   >   0 . 0   & &   t p   ! =   t p o )  
 	 {  
 	 	 i f   ( ( b s   >   0   & &   t p   <   b i d a s k )   | |   ( b s   <   0   & &   t p   >   b i d a s k ) )  
 	 	 {  
 	 	 	 s t r i n g   a b s t r   =   " " ;  
  
 	 	 	 i f   ( b s   >   0 )   { a b s t r   =   " B i d " ; }   e l s e   { a b s t r   =   " A s k " ; }  
  
 	 	 	 P r i n t (  
 	 	 	 	 " E r r o r :   I n v a l i d   T P   r e q u e s t e d   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( t p ,   d i g i t s ) ,  
 	 	 	 	 "   f o r   " ,   a b s t r ,   "   p r i c e   " ,  
 	 	 	 	 b i d a s k ,  
 	 	 	 	 " ) "  
 	 	 	 ) ;  
  
 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
 	 	 e l s e   i f   ( ( b s   >   0   & &   t p   <   t p l i m i t )   | |   ( b s   <   0   & &   t p   >   t p l i m i t ) )  
 	 	 {  
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t p ;  
 	 	 	 }  
  
 	 	 	 P r i n t (  
 	 	 	 	 " W a r n i n g :   T o o   s h o r t   T P   r e q u e s t e d   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( t p ,   d i g i t s ) ,  
 	 	 	 	 "   o r   " ,  
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( t p   -   a s k b i d )   /   p o i n t ,   0 ) ,  
 	 	 	 	 "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " ,  
 	 	 	 	 D o u b l e T o S t r ( t p l i m i t ,   d i g i t s ) ,  
 	 	 	 	 "   o r   " ,  
 	 	 	 	 D o u b l e T o S t r ( M a t h A b s ( a s k b i d   -   t p l i m i t )   /   p o i n t ,   0 ) ,  
 	 	 	 	 "   p o i n t s ) "  
 	 	 	 ) ;  
  
 	 	 	 t p   =   t p l i m i t ;  
  
 	 	 	 r e t u r n   t p ;  
 	 	 }  
 	 }  
 	  
 	 / /   a l i g n   b y   t h e   t i c k s i z e  
 	 d o u b l e   t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ;  
 	 t p   =   M a t h R o u n d ( t p   /   t i c k s i z e )   *   t i c k s i z e ;  
 	  
 	 r e t u r n   t p ;  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 b o o l   A r r a y E n s u r e V a l u e ( T   & a r r a y [ ] ,   T   v a l u e )  
 {  
 	 i n t   s i z e       =   A r r a y S i z e ( a r r a y ) ;  
  
 	 i f   ( s i z e   >   0 )  
 	 {  
 	 	 i f   ( I n A r r a y ( a r r a y ,   v a l u e ) )  
 	 	 {  
 	 	 	 / /   v a l u e   f o u n d   - >   e x i t  
 	 	 	 r e t u r n   f a l s e ;   / /   n o   v a l u e   a d d e d  
 	 	 }  
 	 }  
  
 	 / /   v a l u e   d o e s   n o t   e x i s t s   - >   a d d   i t  
 	 A r r a y R e s i z e ( a r r a y ,   s i z e + 1 ) ;  
 	 a r r a y [ s i z e ]   =   v a l u e ;  
  
 	 r e t u r n   t r u e ;   / /   v a l u e   a d d e d  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 i n t   A r r a y S e a r c h ( T   & a r r a y [ ] ,   T   v a l u e )  
 {  
 	 i n t   i n d e x   =   - 1 ;  
 	 i n t   s i z e     =   A r r a y S i z e ( a r r a y ) ;  
  
 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 {  
 	 	 i f   ( a r r a y [ i ]   = =   v a l u e )  
 	 	 {  
 	 	 	 i n d e x   =   i ;  
 	 	 	 b r e a k ;  
 	 	 }      
 	 }  
  
       r e t u r n   i n d e x ;  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 b o o l   A r r a y S t r i p K e y ( T   & a r r a y [ ] ,   i n t   k e y )  
 {  
 	 i n t   x         =   0 ;  
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ;  
  
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + )  
 	 {  
 	 	 i f   ( i   ! =   k e y )  
 	 	 {  
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ;  
 	 	 	 x + + ;  
 	 	 }  
 	 }  
  
 	 i f   ( x   <   s i z e )  
 	 {  
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d  
 	 }  
  
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 b o o l   A r r a y S t r i p V a l u e ( T   & a r r a y [ ] ,   T   v a l u e )  
 {  
 	 i n t   x         =   0 ;  
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ;  
  
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + )  
 	 {  
 	 	 i f   ( a r r a y [ i ]   ! =   v a l u e )  
 	 	 {  
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ;  
 	 	 	 x + + ;  
 	 	 }  
 	 }  
  
 	 i f   ( x   <   s i z e )  
 	 {  
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d  
 	 }  
  
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d  
 }  
  
 d o u b l e   B e t 1 3 2 6 (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s ,  
 	 b o o l   r e v e r s e   =   f a l s e  
 )   {      
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
  
 	 / / - -   1 - 3 - 2 - 6   L o g i c  
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
  
 	 i f   ( i n i t i a l L o t s   <   m i n L o t )  
 	 {  
 	 	 i n i t i a l L o t s   =   m i n L o t ;      
 	 }  
  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   (  
 	 	 	       ( r e v e r s e   = =   f a l s e   & &   p r o f i t O r L o s s   = =   1 )  
 	 	 	 | |   ( r e v e r s e   = =   t r u e   & &   p r o f i t O r L o s s   = =   - 1 )  
 	 	 )   {  
 	 	 	 d o u b l e   d i v   =   l o t s   /   i n i t i a l L o t s ;  
  
 	 	 	           i f   ( d i v   <   1 . 5 )   { l o t s   =   i n i t i a l L o t s   *   3 ; }  
 	 	 	 e l s e   i f   ( d i v   <   2 . 5 )   { l o t s   =   i n i t i a l L o t s   *   6 ; }  
 	 	 	 e l s e   i f   ( d i v   <   3 . 5 )   { l o t s   =   i n i t i a l L o t s   *   2 ; }  
 	 	 	 e l s e   { l o t s   =   i n i t i a l L o t s ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 	 }  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   B e t D a l e m b e r t (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s ,  
 	 d o u b l e   r e v e r s e   =   f a l s e  
 )   {      
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
  
 	 / / - -   D a l e m b e r t   L o g i c  
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
  
 	 i f   ( i n i t i a l L o t s   <   m i n L o t )  
 	 {  
 	 	 i n i t i a l L o t s   =   m i n L o t ;      
 	 }  
  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   (  
 	 	 	       ( r e v e r s e   = =   0   & &   p r o f i t O r L o s s   = =   1 )  
 	 	 	 | |   ( r e v e r s e   = =   1   & &   p r o f i t O r L o s s   = =   - 1 )  
 	 	 )   {  
 	 	 	 l o t s   =   l o t s   -   i n i t i a l L o t s ;  
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l o t s   =   l o t s   +   i n i t i a l L o t s ;  
 	 	 }  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   B e t F i b o n a c c i (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s  
 )   {  
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
  
 	 / / - -   F i b o n a c c i   L o g i c  
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
  
 	 i f   ( i n i t i a l L o t s   <   m i n L o t )  
 	 {  
 	 	 i n i t i a l L o t s   =   m i n L o t ;      
 	 }  
  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 }  
 	 e l s e  
 	 {      
 	 	 i n t   f i b o 1   =   1 ;  
 	 	 i n t   f i b o 2   =   0 ;  
 	 	 i n t   f i b o 3   =   0 ;  
 	 	 i n t   f i b o 4   =   0 ;  
 	 	 d o u b l e   d i v   =   l o t s   /   i n i t i a l L o t s ;  
  
 	 	 i f   ( d i v   < =   0 )   { d i v   =   1 ; }  
  
 	 	 w h i l e   ( t r u e )  
 	 	 {  
 	 	 	 f i b o 1   =   f i b o 1   +   f i b o 2 ;  
 	 	 	 f i b o 3   =   f i b o 2 ;  
 	 	 	 f i b o 2   =   f i b o 1   -   f i b o 2 ;  
 	 	 	 f i b o 4   =   f i b o 2   -   f i b o 3 ;  
  
 	 	 	 i f   ( f i b o 1   >   N o r m a l i z e D o u b l e ( d i v ,   2 ) )  
 	 	 	 {  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( p r o f i t O r L o s s   = =   1 )  
 	 	 {  
 	 	 	 i f   ( f i b o 4   < =   0 )   { f i b o 4   =   1 ; }  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   f i b o 4 ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   f i b o 1 ;  
 	 	 }  
 	 }  
  
 	 l o t s   =   N o r m a l i z e D o u b l e ( l o t s ,   2 ) ;  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   B e t L a b o u c h e r e (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s ,  
 	 s t r i n g   l i s t O f N u m b e r s ,  
 	 d o u b l e   r e v e r s e   =   f a l s e  
 )   {  
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
  
 	 / / - -   L a b o u c h e r e   L o g i c  
 	 s t a t i c   s t r i n g   m e m G r o u p [ ] ;  
 	 s t a t i c   s t r i n g   m e m L i s t [ ] ;  
 	 s t a t i c   l o n g   m e m T i c k e t [ ] ;  
  
 	 i n t   s t a r t A g a i n   =   f a l s e ;  
  
 	 / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t  
 	 i n t   i d   =   A r r a y S e a r c h ( m e m G r o u p ,   g r o u p ) ;  
  
 	 i f   ( i d   = =   - 1 )  
 	 {  
 	 	 s t a r t A g a i n   =   t r u e ;  
  
 	 	 i f   ( l i s t O f N u m b e r s   = =   " " )   { l i s t O f N u m b e r s   =   " 1 " ; }  
  
 	 	 i d   =   A r r a y S i z e ( m e m G r o u p ) ;  
  
 	 	 A r r a y R e s i z e ( m e m G r o u p ,   i d + 1 ,   i d + 1 ) ;  
 	 	 A r r a y R e s i z e ( m e m L i s t ,   i d + 1 ,   i d + 1 ) ;  
 	 	 A r r a y R e s i z e ( m e m T i c k e t ,   i d + 1 ,   i d + 1 ) ;  
  
 	 	 m e m G r o u p [ i d ]   =   g r o u p ;  
 	 	 m e m L i s t [ i d ]     =   l i s t O f N u m b e r s ;  
 	 }  
  
 	 i f   ( m e m T i c k e t [ i d ]   = =   ( l o n g ) O r d e r T i c k e t ( ) )  
 	 {  
 	 	 / /   t h e   l a s t   k n o w n   t i c k e t   ( m e m T i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( )   n o r m a l l y  
 	 	 / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e   -   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e  
 	 	 / /   s o   w e   n e e d   t o   r e s e t  
 	 	 m e m L i s t [ i d ]   =   l i s t O f N u m b e r s ;  
 	 }  
  
 	 m e m T i c k e t [ i d ]   =   ( l o n g ) O r d e r T i c k e t ( ) ;  
  
 	 / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y  
 	 i n t   l i s t [ ] ;  
 	 s t r i n g   l i s t S [ ] ;  
  
 	 S t r i n g E x p l o d e ( " , " ,   m e m L i s t [ i d ] ,   l i s t S ) ;  
 	 A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t S ) ) ;  
  
 	 f o r   ( i n t   s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + )  
 	 {  
 	 	 l i s t [ s ]   =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;      
 	 }  
  
 	 / / - -    
 	 i n t   s i z e   =   A r r a y S i z e ( l i s t ) ;  
  
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
  
 	 i f   ( i n i t i a l L o t s   <   m i n L o t )  
 	 {  
 	 	 i n i t i a l L o t s   =   m i n L o t ;      
 	 }  
  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 s t a r t A g a i n   =   t r u e ;  
 	 }  
  
 	 i f   ( s t a r t A g a i n   = =   t r u e )  
 	 {  
 	 	 i f   ( s i z e   = =   1 )  
 	 	 {  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ;  
 	 	 }  
 	 	 e l s e   {  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ) ;  
 	 	 }  
 	 }  
 	 e l s e    
 	 {  
 	 	 i f   (  
 	 	 	       ( r e v e r s e   = =   0   & &   p r o f i t O r L o s s   = =   1 )  
 	 	 	 | |   ( r e v e r s e   = =   1   & &   p r o f i t O r L o s s   = =   - 1 )  
 	 	 )   {  
 	 	 	 i f   ( s i z e   = =   1 )  
 	 	 	 {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ;  
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( s i z e   = =   2 )  
 	 	 	 {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ 1 ] ) ;  
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( s i z e   >   2 )  
 	 	 	 {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ) ;  
  
 	 	 	 	 / /   C a n c e l   t h e   f i r s t   a n d   t h e   l a s t   n u m b e r   i n   t h e   l i s t  
 	 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t  
 	 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + )  
 	 	 	 	 {  
 	 	 	 	 	 l i s t [ p o s ]   =   l i s t [ p o s + 1 ] ;  
 	 	 	 	 }  
  
 	 	 	 	 / /   r e m o v e   l a s t   2   e l e m e n t s 	  
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t )   -   2 ) ; 	  
 	 	 	 }  
  
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   ( s i z e   >   1 )  
 	 	 	 {  
 	 	 	 	 A r r a y R e s i z e ( l i s t ,   s i z e + 1 ) ;  
  
 	 	 	 	 l i s t [ s i z e ]   =   l i s t [ 0 ]   +   l i s t [ s i z e - 1 ] ;  
 	 	 	 	 l o t s               =   i n i t i a l L o t s   *   ( l i s t [ 0 ]   +   l i s t [ s i z e ] ) ;  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t [ 0 ] ;  
 	 	 	 }  
  
 	 	 	 i f   ( l o t s   <   i n i t i a l L o t s )   { l o t s   =   i n i t i a l L o t s ; }  
 	 	 }  
 	 }  
  
 	 P r i n t ( " L a b o u c h e r e   ( f o r   g r o u p   "  
 	 	 +   ( s t r i n g ) i d  
 	 	 +   " )   c u r r e n t   l i s t   o f   n u m b e r s : "  
 	 	 +   S t r i n g I m p l o d e ( " , " ,   l i s t )  
 	 ) ;  
  
 	 s i z e = A r r a y S i z e ( l i s t ) ;  
  
 	 i f   ( s i z e   = =   0 )  
 	 {  
 	 	 A r r a y S t r i p K e y ( m e m G r o u p ,   i d ) ;  
 	 	 A r r a y S t r i p K e y ( m e m L i s t ,   i d ) ;  
 	 	 A r r a y S t r i p K e y ( m e m T i c k e t ,   i d ) ;  
 	 }  
 	 e l s e   {  
 	 	 m e m L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t ) ;  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   B e t M a r t i n g a l e (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s ,  
 	 d o u b l e   m u l t i p l y O n L o s s ,  
 	 d o u b l e   m u l t i p l y O n P r o f i t ,  
 	 d o u b l e   a d d O n L o s s ,  
 	 d o u b l e   a d d O n P r o f i t ,  
 	 i n t   r e s e t O n L o s s ,  
 	 i n t   r e s e t O n P r o f i t  
 )   {  
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   t r u e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
 	 d o u b l e   c o n s e c u t i v e     =   i n f o [ 2 ] ;  
  
 	 / / - -   M a r t i n g a l e   L o g i c  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   ( p r o f i t O r L o s s   = =   1 )  
 	 	 {  
 	 	 	 i f   ( r e s e t O n P r o f i t   >   0   & &   c o n s e c u t i v e   > =   r e s e t O n P r o f i t )  
 	 	 	 {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( m u l t i p l y O n P r o f i t   < =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 m u l t i p l y O n P r o f i t   =   1 ;  
 	 	 	 	 }  
  
 	 	 	 	 l o t s   =   ( l o t s   *   m u l t i p l y O n P r o f i t )   +   a d d O n P r o f i t ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   ( r e s e t O n L o s s   >   0   & &   c o n s e c u t i v e   > =   r e s e t O n L o s s )  
 	 	 	 {  
 	 	 	 	 l o t s   =   i n i t i a l L o t s ;      
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( m u l t i p l y O n L o s s   < =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 m u l t i p l y O n L o s s   =   1 ;  
 	 	 	 	 }  
  
 	 	 	 	 l o t s   =   ( l o t s   *   m u l t i p l y O n L o s s )   +   a d d O n L o s s ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 d o u b l e   B e t S e q u e n c e (  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,  
 	 d o u b l e   i n i t i a l L o t s ,  
 	 s t r i n g   s e q u e n c e O n L o s s ,  
 	 s t r i n g   s e q u e n c e O n P r o f i t ,  
 	 b o o l   r e v e r s e   =   f a l s e  
 )   {      
 	 d o u b l e   i n f o [ ] ;  
 	 G e t B e t T r a d e s I n f o ( i n f o ,   g r o u p ,   s y m b o l ,   p o o l ,   f a l s e ) ;  
  
 	 d o u b l e   l o t s                   =   i n f o [ 0 ] ;  
 	 d o u b l e   p r o f i t O r L o s s   =   i n f o [ 1 ] ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s  
  
 	 / / - -   S e q u e n c e   s t u f f  
 	 s t a t i c   s t r i n g   m e m G r o u p [ ] ;  
 	 s t a t i c   s t r i n g   m e m L o s s L i s t [ ] ;  
 	 s t a t i c   s t r i n g   m e m P r o f i t L i s t [ ] ;  
 	 s t a t i c   l o n g   m e m T i c k e t [ ] ;  
  
 	 / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t  
 	 i n t   i d   =   A r r a y S e a r c h ( m e m G r o u p ,   g r o u p ) ;  
  
 	 i f   ( i d   = =   - 1 )  
 	 {  
 	 	 i f   ( s e q u e n c e O n L o s s   = =   " " )   { s e q u e n c e O n L o s s   =   " 1 " ; }  
  
 	 	 i f   ( s e q u e n c e O n P r o f i t   = =   " " )   { s e q u e n c e O n P r o f i t   =   " 1 " ; }  
  
 	 	 i d   =   A r r a y S i z e ( m e m G r o u p ) ;  
  
 	 	 A r r a y R e s i z e ( m e m G r o u p ,   i d + 1 ,   i d + 1 ) ;  
 	 	 A r r a y R e s i z e ( m e m L o s s L i s t ,   i d + 1 ,   i d + 1 ) ;  
 	 	 A r r a y R e s i z e ( m e m P r o f i t L i s t ,   i d + 1 ,   i d + 1 ) ;  
 	 	 A r r a y R e s i z e ( m e m T i c k e t ,   i d + 1 ,   i d + 1 ) ;  
  
 	 	 m e m G r o u p [ i d ]             =   g r o u p ;  
 	 	 m e m L o s s L i s t [ i d ]       =   s e q u e n c e O n L o s s ;  
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ;  
 	 }  
  
 	 b o o l   l o s s R e s e t       =   f a l s e ;  
 	 b o o l   p r o f i t R e s e t   =   f a l s e ;  
  
 	 i f   ( p r o f i t O r L o s s   = =   - 1   & &   m e m L o s s L i s t [ i d ]   = =   " " )  
 	 {  
 	 	 l o s s R e s e t                   =   t r u e ;  
 	 	 m e m P r o f i t L i s t [ i d ]   =   " " ;  
 	 }  
  
 	 i f   ( p r o f i t O r L o s s   = =   1   & &   m e m P r o f i t L i s t [ i d ]   = =   " " )  
 	 {  
 	 	 p r o f i t R e s e t           =   t r u e ;  
 	 	 m e m L o s s L i s t [ i d ]   =   " " ;  
 	 }  
  
 	 i f   ( p r o f i t O r L o s s   = =   1   | |   m e m L o s s L i s t [ i d ]   = =   " " )  
 	 {  
 	 	 m e m L o s s L i s t [ i d ]   =   s e q u e n c e O n L o s s ;  
  
 	 	 i f   ( l o s s R e s e t )   {  
 	 	 	 m e m L o s s L i s t [ i d ]   =   " 1 , "   +   m e m L o s s L i s t [ i d ] ;  
 	 	 }  
 	 }  
  
 	 i f   ( p r o f i t O r L o s s   = =   - 1   | |   m e m P r o f i t L i s t [ i d ]   = =   " " )  
 	 {  
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ;  
  
 	 	 i f   ( p r o f i t R e s e t )   {  
 	 	 	 m e m P r o f i t L i s t [ i d ]   =   " 1 , "   +   m e m P r o f i t L i s t [ i d ] ;  
 	 	 }  
 	 }  
  
 	 i f   ( m e m T i c k e t [ i d ]   = =   ( l o n g ) O r d e r T i c k e t ( ) )  
 	 {  
 	 	 / /   N o r m a l l y   t h e   l a s t   k n o w n   t i c k e t   ( m e m T i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( )  
 	 	 / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e ,   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e  
 	 	 / /   s o   w e   n e e d   t o   r e s e t  
 	 	 m e m L o s s L i s t [ i d ]       =   s e q u e n c e O n L o s s ;  
 	 	 m e m P r o f i t L i s t [ i d ]   =   s e q u e n c e O n P r o f i t ;  
 	 }  
  
 	 m e m T i c k e t [ i d ]   =   ( l o n g ) O r d e r T i c k e t ( ) ;  
  
 	 / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y  
 	 i n t   s   =   0 ;  
 	 d o u b l e   l i s t L o s s [ ] ;  
 	 d o u b l e   l i s t P r o f i t [ ] ;  
 	 s t r i n g   l i s t S [ ] ;  
  
 	 S t r i n g E x p l o d e ( " , " ,   m e m L o s s L i s t [ i d ] ,   l i s t S ) ;  
 	 A r r a y R e s i z e ( l i s t L o s s ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ;  
  
 	 f o r   ( s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + )  
 	 {  
 	 	 l i s t L o s s [ s ]   =   ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;      
 	 }  
  
 	 S t r i n g E x p l o d e ( " , " ,   m e m P r o f i t L i s t [ i d ] ,   l i s t S ) ;  
 	 A r r a y R e s i z e ( l i s t P r o f i t ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ;  
  
 	 f o r   ( s   =   0 ;   s   <   A r r a y S i z e ( l i s t S ) ;   s + + )  
 	 {  
 	 	 l i s t P r o f i t [ s ]   =   ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;      
 	 }  
  
 	 / / - -  
 	 d o u b l e   m i n L o t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
  
 	 i f   ( i n i t i a l L o t s   <   m i n L o t )  
 	 {  
 	 	 i n i t i a l L o t s   =   m i n L o t ;      
 	 }  
  
 	 i f   ( l o t s   = =   0 )  
 	 {  
 	 	 l o t s   =   i n i t i a l L o t s ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   (  
 	 	 	       ( r e v e r s e   = =   f a l s e   & &   p r o f i t O r L o s s   = = 1 )  
 	 	 	 | |   ( r e v e r s e   = =   t r u e   & &   p r o f i t O r L o s s   = =   - 1 )  
 	 	 )   {  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t P r o f i t [ 0 ] ;  
  
 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t  
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( l i s t P r o f i t ) ;  
  
 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + )  
 	 	 	 {  
 	 	 	 	 l i s t P r o f i t [ p o s ]   =   l i s t P r o f i t [ p o s + 1 ] ;  
 	 	 	 }  
  
 	 	 	 i f   ( s i z e   >   0 )  
 	 	 	 {  
 	 	 	 	 A r r a y R e s i z e ( l i s t P r o f i t ,   s i z e - 1 ,   s i z e - 1 ) ;  
 	 	 	 	 m e m P r o f i t L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t P r o f i t ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l o t s   =   i n i t i a l L o t s   *   l i s t L o s s [ 0 ] ;  
  
 	 	 	 / /   s h i f t   a r r a y   1   s t e p   l e f t  
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( l i s t L o s s ) ;  
  
 	 	 	 f o r ( i n t   p o s   =   0 ;   p o s   <   s i z e - 1 ;   p o s + + )  
 	 	 	 {  
 	 	 	 	 l i s t L o s s [ p o s ]   =   l i s t L o s s [ p o s + 1 ] ;  
 	 	 	 }  
  
 	 	 	 i f   ( s i z e   >   0 )  
 	 	 	 {  
 	 	 	 	 A r r a y R e s i z e ( l i s t L o s s ,   s i z e - 1 ,   s i z e - 1 ) ;  
 	 	 	 	 m e m L o s s L i s t [ i d ]   =   S t r i n g I m p l o d e ( " , " ,   l i s t L o s s ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   l o t s ;  
 }  
  
 l o n g   B u y N o w (  
 	 s t r i n g   s y m b o l ,  
 	 d o u b l e   l o t s ,  
 	 d o u b l e   s l l ,  
 	 d o u b l e   t p l ,  
 	 d o u b l e   s l p ,  
 	 d o u b l e   t p p ,  
 	 d o u b l e   s l i p p a g e   =   0 ,  
 	 i n t   m a g i c   =   0 ,  
 	 s t r i n g   c o m m e n t   =   " " ,  
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E ,  
 	 d a t e t i m e   e x p i r a t i o n   =   0  
 	 )  
 {  
 	 r e t u r n   O r d e r C r e a t e (  
 	 	 s y m b o l ,  
 	 	 P O S I T I O N _ T Y P E _ B U Y ,  
 	 	 l o t s ,  
 	 	 0 ,  
 	 	 s l l ,  
 	 	 t p l ,  
 	 	 s l p ,  
 	 	 t p p ,  
 	 	 s l i p p a g e ,  
 	 	 m a g i c ,  
 	 	 c o m m e n t ,  
 	 	 a r r o w c o l o r ,  
 	 	 e x p i r a t i o n  
 	 ) ;  
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
 b o o l   C l o s e T r a d e ( u l o n g   t i c k e t ,   u l o n g   d e v i a t i o n   =   0 ,   c o l o r   c l r   =   c l r N O N E )  
 {  
 	 w h i l e ( t r u e )  
 	 {  
 	 	 b o o l   s u c c e s s   =   f a l s e ;  
  
 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 s t r i n g   s y m b o l   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ;  
 	 	 l o n g   m a g i c         =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ;  
 	 	 d o u b l e   v o l u m e   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ;  
  
 	 	 / /   W i t h   s o m e   C F D   w e   c a n   o p e n   p o s i t i o n   w i t h   t h e   m a x   v o l u m e   m o r e   t h a n   o n c e ,  
 	 	 / /   s o   w e   g e t   a   p o s i t i o n   t h a t   h a s   v o l u m e   b i g g e r   t h a n   t h e   m a x i m u m .  
 	 	 / /   T h e n   w e   c a n n o t   c l o s e   t h a t   p o s i t i o n ,   b e c a u s e   t h e   v o l u m e   i s   t o o   h i g h .  
 	 	 / /   F o r   t h a t   r e a s o n   h e r e   w e   w i l l   c l o s e   i t   i n   p a r t s .  
 	 	 d o u b l e   m a x _ v o l u m e     =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ;  
 	 	 d o u b l e   p a r t _ v o l u m e   =   ( v o l u m e   >   m a x _ v o l u m e )   ?   m a x _ v o l u m e   :   v o l u m e ;  
  
 	 	 / / - -   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ;  
 	 	 M q l T r a d e R e s u l t   r e s u l t ;  
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ;  
 	 	 Z e r o M e m o r y ( r e q u e s t ) ;  
 	 	 Z e r o M e m o r y ( r e s u l t ) ;  
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ;  
  
 	 	 i f ( ( E N U M _ P O S I T I O N _ T Y P E ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y )  
 	 	 {  
 	 	 	 / / - - -   p r e p a r e   r e q u e s t   f o r   c l o s e   B U Y   p o s i t i o n  
 	 	 	 r e q u e s t . t y p e     =   O R D E R _ T Y P E _ S E L L ;  
 	 	 	 r e q u e s t . p r i c e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 / / - - -   p r e p a r e   r e q u e s t   f o r   c l o s e   S E L L   p o s i t i o n  
 	 	 	 r e q u e s t . t y p e     =   O R D E R _ T Y P E _ B U Y ;  
 	 	 	 r e q u e s t . p r i c e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 }  
  
 	 	 r e q u e s t . a c t i o n         =   T R A D E _ A C T I O N _ D E A L ;  
 	 	 r e q u e s t . s y m b o l         =   s y m b o l ;  
 	 	 r e q u e s t . v o l u m e         =   p a r t _ v o l u m e ;  
 	 	 r e q u e s t . m a g i c           =   m a g i c ;  
 	 	 r e q u e s t . d e v i a t i o n   =   ( i n t ) ( d e v i a t i o n   *   P i p V a l u e ( s y m b o l ) ) ;  
  
 	 	 / /   f o r   h e d g i n g   m o d e  
 	 	 r e q u e s t . p o s i t i o n     =   t i c k e t ;  
  
 	 	 / /   f i l l i n g   t y p e  
 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ F O K ) )  
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ;  
 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ I O C ) )  
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ;  
 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) )   / /   j u s t   i n   c a s e  
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ;  
 	 	 e l s e  
 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ;  
  
 	 	 s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ;  
  
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( ! s u c c e s s   | |   ( r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E   & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ P L A C E D   & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L ) )  
 	 	 {  
 	 	 	 s t r i n g   e r r m s g p f x   =   " C l o s i n g   p o s i t i o n / t r a d e   e r r o r " ;  
  
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ;  
  
 	 	 	 s w i t c h ( e r r a c t i o n )  
 	 	 	 {  
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r  
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r  
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r  
 	 	 	 }  
  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E   | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ P L A C E D )  
 	 	 {  
 	 	 	 / /   w e   a r e   c l o s i n g   t h e   p o s i t i o n   i n   p a r t s ?  
 	 	 	 i f   ( v o l u m e   ! =   p a r t _ v o l u m e )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;   / /   c o n t i n u e   t h e   " w h i l e "   l o o p ,   s o   t h a t   t h e   w h o l e   v o l u m e   c o u l d   b e   c l o s e d  
 	 	 	 }  
  
 	 	 	 w h i l e   ( t r u e )  
 	 	 	 {  
 	 	 	     	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   | |   ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )  
 	 	 	 	 {  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
  
 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( s u c c e s s   = =   t r u e )  
 	 	 {  
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 	 {  
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " c l e a r " ,   t i c k e t ) ;  
 	 	 	 }  
  
 	 	 	 e x p i r a t i o n W o r k e r . R e m o v e E x p i r a t i o n ( t i c k e t ) ;  
 	 	 }  
 	 	  
 	 	 b r e a k ;  
 	 }  
 	  
 	 O n T r a d e ( ) ;  
  
 	 r e t u r n   t r u e ;  
 }  
  
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 >  
 b o o l   C o m p a r e V a l u e s ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 )  
 {  
 	           i f   ( s i g n   = =   " > " )   r e t u r n ( v 1   >   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " < " )   r e t u r n ( v 1   <   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " > = " )   r e t u r n ( v 1   > =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " < = " )   r e t u r n ( v 1   < =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " = = " )   r e t u r n ( v 1   = =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " ! = " )   r e t u r n ( v 1   ! =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " x > " )   r e t u r n ( v 1   >   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " x < " )   r e t u r n ( v 1   <   v 2 ) ;  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 s t r i n g   C u r r e n t S y m b o l ( s t r i n g   s y m b o l   =   " " )  
 {  
       s t a t i c   s t r i n g   m e m o r y   =   " " ;  
  
 	 / /   S e t  
       i f   ( s y m b o l   ! =   " " )  
 	 {  
 	 	 m e m o r y   =   s y m b o l ;  
 	 }  
 	 / /   G e t  
 	 e l s e   i f   ( m e m o r y   = =   " " )  
 	 {  
 	 	 m e m o r y   =   S y m b o l ( ) ;  
 	 }  
  
       r e t u r n   m e m o r y ;  
 }  
  
 E N U M _ T I M E F R A M E S   C u r r e n t T i m e f r a m e ( E N U M _ T I M E F R A M E S   t f = - 1 )  
 {  
       s t a t i c   E N U M _ T I M E F R A M E S   m e m o r y = 0 ;  
       i f   ( t f > = 0 )   { m e m o r y = t f ; }  
       r e t u r n ( m e m o r y ) ;  
 }  
  
 d o u b l e   C u s t o m P o i n t ( s t r i n g   s y m b o l )  
 {  
 	 s t a t i c   s t r i n g   s y m b o l s [ ] ;  
 	 s t a t i c   d o u b l e   p o i n t s [ ] ;  
 	 s t a t i c   s t r i n g   l a s t _ s y m b o l   =   " - " ;  
 	 s t a t i c   d o u b l e   l a s t _ p o i n t     =   0 ;  
 	 s t a t i c   i n t   l a s t _ i                   =   0 ;  
 	 s t a t i c   i n t   s i z e                       =   0 ;  
  
 	 / / - -   v a r i a n t   A )   u s e   t h e   c a c h e   f o r   t h e   l a s t   u s e d   s y m b o l  
 	 i f   ( s y m b o l   = =   l a s t _ s y m b o l )  
 	 {  
 	 	 r e t u r n   l a s t _ p o i n t ;  
 	 }  
  
 	 / / - -   v a r i a n t   B )   s e a r c h   i n   t h e   a r r a y   c a c h e  
 	 i n t   i 	 	 	 =   l a s t _ i ;  
 	 i n t   s t a r t _ i 	 =   i ;  
 	 b o o l   f o u n d 	 =   f a l s e ;  
  
 	 i f   ( s i z e   >   0 )  
 	 {  
 	 	 w h i l e   ( t r u e )  
 	 	 {  
 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l )  
 	 	 	 {  
 	 	 	 	 l a s t _ s y m b o l 	 =   s y m b o l ;  
 	 	 	 	 l a s t _ p o i n t 	 =   p o i n t s [ i ] ;  
 	 	 	 	 l a s t _ i 	 	 =   i ;  
  
 	 	 	 	 r e t u r n   l a s t _ p o i n t ;  
 	 	 	 }  
  
 	 	 	 i + + ;  
  
 	 	 	 i f   ( i   > =   s i z e )  
 	 	 	 {  
 	 	 	 	 i   =   0 ;  
 	 	 	 }  
 	 	 	 i f   ( i   = =   s t a r t _ i )   { b r e a k ; }  
 	 	 }  
 	 }  
  
 	 / / - -   v a r i a n t   C )   a d d   t h i s   s y m b o l   t o   t h e   c a c h e  
 	 i 	 	 =   s i z e ;  
 	 s i z e 	 =   s i z e   +   1 ;  
  
 	 A r r a y R e s i z e ( s y m b o l s ,   s i z e ) ;  
 	 A r r a y R e s i z e ( p o i n t s ,   s i z e ) ;  
  
 	 s y m b o l s [ i ] 	 =   s y m b o l ;  
 	 p o i n t s [ i ] 	 =   0 ;  
 	 l a s t _ s y m b o l 	 =   s y m b o l ;  
 	 l a s t _ i 	 	 =   i ;  
  
 	 / / - -   u n s e r i a l i z e   r u l e s   f r o m   F X D _ P O I N T _ F O R M A T _ R U L E S  
 	 s t r i n g   r u l e s [ ] ;  
 	 S t r i n g E x p l o d e ( " , " ,   P O I N T _ F O R M A T _ R U L E S ,   r u l e s ) ;  
  
 	 i n t   r u l e s _ c o u n t   =   A r r a y S i z e ( r u l e s ) ;  
  
 	 i f   ( r u l e s _ c o u n t   >   0 )  
 	 {  
 	 	 s t r i n g   r u l e [ ] ;  
  
 	 	 f o r   ( i n t   r   =   0 ;   r   <   r u l e s _ c o u n t ;   r + + )  
 	 	 {  
 	 	 	 S t r i n g E x p l o d e ( " = " ,   r u l e s [ r ] ,   r u l e ) ;  
  
 	 	 	 / / - -   a   s i n g l e   r u l e   m u s t   c o n t a i n   2   p a r t s ,   [ 0 ]   f r o m   a n d   [ 1 ]   t o  
 	 	 	 i f   ( A r r a y S i z e ( r u l e )   ! =   2 )   { c o n t i n u e ; }  
  
 	 	 	 d o u b l e   f r o m   =   S t r i n g T o D o u b l e ( r u l e [ 0 ] ) ;  
 	 	 	 d o u b l e   t o 	 =   S t r i n g T o D o u b l e ( r u l e [ 1 ] ) ;  
  
 	 	 	 / / - -   " t o "   m u s t   b e   a   p o s i t i v e   n u m b e r ,   d i f f e r e n t   t h a n   0  
 	 	 	 i f   ( t o   < =   0 )   { c o n t i n u e ; }  
  
 	 	 	 / / - -   " f r o m "   c a n   b e   a   n u m b e r   o r   a   s t r i n g  
 	 	 	 / /   a )   s t r i n g  
 	 	 	 i f   ( f r o m   = =   0   & &   S t r i n g L e n ( r u l e [ 0 ] )   >   0 )  
 	 	 	 {  
 	 	 	 	 s t r i n g   s _ f r o m   =   r u l e [ 0 ] ;  
 	 	 	 	 i n t   p o s               =   S t r i n g F i n d ( s _ f r o m ,   " ? " ) ;  
  
 	 	 	 	 i f   ( p o s   <   0 )   / /   ?   n o t   f o u n d  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   s _ f r o m )   = =   0 )   { p o i n t s [ i ]   =   t o ; }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( p o s   = =   0 )   / /   ?   i s   t h e   f i r s t   s y m b o l   = >   m a t c h   t h e   s e c o n d   s y m b o l  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   1 ) ,   3 )   = =   3 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p o i n t s [ i ]   =   t o ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( p o s   >   0 )   / /   ?   i s   t h e   s e c o n d   s y m b o l   = >   m a t c h   t h e   f i r s t   s y m b o l  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   0 ,   p o s ) )   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p o i n t s [ i ]   =   t o ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / /   b )   n u m b e r  
 	 	 	 i f   ( f r o m   = =   0 )   { c o n t i n u e ; }  
  
 	 	 	 i f   ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T )   = =   f r o m )  
 	 	 	 {  
 	 	 	 	 p o i n t s [ i ]   =   t o ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 i f   ( p o i n t s [ i ]   = =   0 )  
 	 {  
 	 	 p o i n t s [ i ]   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 }  
  
 	 l a s t _ p o i n t   =   p o i n t s [ i ] ;  
  
 	 r e t u r n   l a s t _ p o i n t ;  
 }  
  
 b o o l   D e l e t e O r d e r ( u l o n g   t i c k e t ,   c o l o r   a r r o w c o l o r = c l r N O N E )  
 {  
       w h i l e ( t r u e )  
       {  
             M q l T r a d e R e q u e s t   r e q u e s t ;  
             M q l T r a d e R e s u l t   r e s u l t ;  
             M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ;  
             Z e r o M e m o r y ( r e q u e s t ) ;  
             Z e r o M e m o r y ( r e s u l t ) ;  
             Z e r o M e m o r y ( c h e c k _ r e s u l t ) ;  
        
             r e q u e s t . o r d e r = t i c k e t ;  
             r e q u e s t . a c t i o n = T R A D E _ A C T I O N _ R E M O V E ;  
             r e q u e s t . c o m m e n t = " P e n d i n g   o r d e r   c a n c e l e d " ;  
        
             i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) )     {  
                   P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   " + ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t + "   ( " + ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e + " ) " ) ;  
                   r e t u r n   f a l s e ;  
             }  
              
             b o o l   s u c c e s s   =   O r d e r S e n d ( r e q u e s t , r e s u l t ) ;  
              
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
             i f   ( ! s u c c e s s   | |   r e s u l t . r e t c o d e ! = T R A D E _ R E T C O D E _ D O N E )  
             {  
                   s t r i n g   e r r m s g p f x = " D e l e t e   o r d e r   e r r o r " ;  
                   i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ;  
                   s w i t c h ( e r r a c t i o n )  
                   {  
                         c a s e   0 :   b r e a k ;         / /   n o   e r r o r  
                         c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r  
                         c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r  
                   }  
                   r e t u r n ( f a l s e ) ;  
             }  
              
             / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
             i f   ( r e s u l t . r e t c o d e = = T R A D E _ R E T C O D E _ D O N E )  
             {  
                   / / = =   W a i t   u n t i l   M T 5   u p d a t e s   i t ' s   c a c h e  
                   i n t   w ;  
                   f o r   ( w = 0 ;   w < 5 0 0 0 ;   w + + )  
                   {  
                         i f   ( ! O r d e r S e l e c t ( t i c k e t ) )   { b r e a k ; }  
                         S l e e p ( 1 ) ;  
                   }  
                   i f   ( w = = 5 0 0 0 )   {  
                         P r i n t ( " C h e c k   e r r o r :   D e l e t e   o r d e r " ) ;      
                   }  
                   i f   ( O r d e r S e l e c t ( t i c k e t ) )   {  
                         P r i n t ( " S o m e t h i n g   w e n t   w r o n g   w i t h   t h e   o r d e r " ) ;  
                         r e t u r n   f a l s e ;  
                   }  
             }  
 	 	  
 	 	 i f   ( s u c c e s s = = t r u e )   {  
                   i f   ( U S E _ V I R T U A L _ S T O P S )   {  
                         V i r t u a l S t o p s D r i v e r ( " c l e a r " , t i c k e t ) ;  
                   }  
                   / / R e g i s t e r E v e n t ( " t r a d e " ) ;  
                   / / r e t u r n ( t r u e ) ;  
             }  
 	 	  
             b r e a k ;  
       }  
       O n T r a d e ( ) ;  
       r e t u r n ( t r u e ) ;  
 }  
  
 s t r i n g   D o u b l e T o S t r ( d o u b l e   d ,   i n t   d i g ) { r e t u r n ( D o u b l e T o S t r i n g ( d , d i g ) ) ; }  
  
 v o i d   D r a w S p r e a d I n f o ( )  
 {  
       s t a t i c   b o o l   a l l o w _ d r a w   =   t r u e ;  
       i f   ( a l l o w _ d r a w = = f a l s e )   { r e t u r n ; }  
       i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) )   { a l l o w _ d r a w = f a l s e ; }   / /   A l l o w e d   t o   d r a w   o n l y   o n c e   i n   t e s t i n g   m o d e  
  
       s t a t i c   b o o l   p a s s e d                   =   f a l s e ;  
       s t a t i c   d o u b l e   m a x _ s p r e a d       =   0 ;  
       s t a t i c   d o u b l e   m i n _ s p r e a d       =   E M P T Y _ V A L U E ;  
       s t a t i c   d o u b l e   a v g _ s p r e a d       =   0 ;  
       s t a t i c   d o u b l e   a v g _ a d d             =   0 ;  
       s t a t i c   d o u b l e   a v g _ c n t             =   0 ;  
  
       d o u b l e   c u s t o m _ p o i n t   =   C u s t o m P o i n t ( S y m b o l ( ) ) ;  
       d o u b l e   c u r r e n t _ s p r e a d   =   0 ;  
       i f   ( c u s t o m _ p o i n t   >   0 )   {  
             c u r r e n t _ s p r e a d   =   ( S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ A S K ) - S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ B I D ) ) / c u s t o m _ p o i n t ;  
       }  
       i f   ( c u r r e n t _ s p r e a d   >   m a x _ s p r e a d )   { m a x _ s p r e a d   =   c u r r e n t _ s p r e a d ; }  
       i f   ( c u r r e n t _ s p r e a d   <   m i n _ s p r e a d )   { m i n _ s p r e a d   =   c u r r e n t _ s p r e a d ; }  
        
       a v g _ c n t + + ;  
       a v g _ a d d           =   a v g _ a d d   +   c u r r e n t _ s p r e a d ;  
       a v g _ s p r e a d     =   a v g _ a d d   /   a v g _ c n t ;  
  
       i n t   x = 0 ;   i n t   y = 0 ;  
       s t r i n g   n a m e ;  
  
       / /   c r e a t e   o b j e c t s  
       i f   ( p a s s e d   = =   f a l s e )  
       {  
             p a s s e d = t r u e ;  
              
             n a m e = " f x d _ s p r e a d _ c u r r e n t _ l a b e l " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " S p r e a d : " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ m a x _ l a b e l " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m a x : " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ a v g _ l a b e l " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " a v g : " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ m i n _ l a b e l " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m i n : " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ c u r r e n t " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 9 3 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ m a x " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ a v g " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ;  
             }  
             n a m e = " f x d _ s p r e a d _ m i n " ;  
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   {  
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ;  
             }  
       }  
        
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ c u r r e n t " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( c u r r e n t _ s p r e a d , 2 ) ) ;  
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m a x " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m a x _ s p r e a d , 2 ) ) ;  
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ a v g " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( a v g _ s p r e a d , 2 ) ) ;  
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m i n " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m i n _ s p r e a d , 2 ) ) ;  
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
 d o u b l e   D y n a m i c L o t s ( s t r i n g   s y m b o l ,   s t r i n g   m o d e = " b a l a n c e " ,   d o u b l e   v a l u e = 0 ,   d o u b l e   s l = 0 ,   s t r i n g   a l i g n = " a l i g n " )  
 {  
       d o u b l e   s i z e = 0 ;  
       d o u b l e   L o t S t e p = S y m b o l L o t S t e p ( s y m b o l ) ;  
       d o u b l e   L o t S i z e = S y m b o l L o t S i z e ( s y m b o l ) ;  
       d o u b l e   M i n L o t s = S y m b o l M i n L o t ( s y m b o l ) ;  
       d o u b l e   M a x L o t s = S y m b o l M a x L o t ( s y m b o l ) ;  
       d o u b l e   T i c k V a l u e = S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ T R A D E _ T I C K _ V A L U E ) ;  
       d o u b l e   m a r g i n _ r e q u i r e d = 0 ;  
       b o o l   o c m   =   O r d e r C a l c M a r g i n ( O R D E R _ T Y P E _ B U Y , s y m b o l , 1 , a s k ( s y m b o l ) , m a r g i n _ r e q u i r e d ) ;   / /   T h i s   i s   t h e   M O D E _ M A R G I N R E Q U I R E D   a n a l o g   i n   M Q L 5  
       / / i f   ( v a l u e > M a x L o t s )   { v a l u e = v a l u e / L o t S i z e ; }   / /   M o n e y - t o - L o t   c o n v e r s i o n  
        
                 i f   ( m o d e = = " f i x e d "   | |   m o d e = = " l o t s " )   { s i z e = v a l u e ; }  
       e l s e   i f   ( m o d e = = " b l o c k - e q u i t y " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / m a r g i n _ r e q u i r e d ; }  
       e l s e   i f   ( m o d e = = " b l o c k - b a l a n c e " )         { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / m a r g i n _ r e q u i r e d ; }  
       e l s e   i f   ( m o d e = = " b l o c k - f r e e m a r g i n " )   { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / m a r g i n _ r e q u i r e d ; }  
       e l s e   i f   ( m o d e = = " e q u i t y " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / ( L o t S i z e * T i c k V a l u e ) ; }  
       e l s e   i f   ( m o d e = = " b a l a n c e " )         { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / ( L o t S i z e * T i c k V a l u e ) ; }  
       e l s e   i f   ( m o d e = = " f r e e m a r g i n " )   { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / ( L o t S i z e * T i c k V a l u e ) ; }  
       e l s e   i f   ( m o d e = = " e q u i t y R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; }  
       e l s e   i f   ( m o d e = = " b a l a n c e R i s k " ) { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; }  
       e l s e   i f   ( m o d e = = " f r e e m a r g i n R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; }  
       e l s e   i f   ( m o d e = = " f i x e d R i s k " )       { s i z e = ( v a l u e ) / ( s l * T i c k V a l u e * P i p V a l u e ( s y m b o l ) ) ; }  
       e l s e   i f   ( m o d e = = " f i x e d R a t i o "   | |   m o d e = = " R J F R " )   {    
             / / / / /  
             / /   R y a n   J o n e s   F i x e d   R a t i o   M M   s t a t i c   d a t a  
             s t a t i c   d o u b l e   R J F R _ s t a r t _ l o t s = 0 ;  
             s t a t i c   d o u b l e   R J F R _ d e l t a = 0 ;  
             s t a t i c   d o u b l e   R J F R _ u n i t s = 1 ;  
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ l o w e r = 0 ;  
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ u p p e r = 0 ;  
             / / / / /  
              
             i f   ( R J F R _ s t a r t _ l o t s < = 0 )   { R J F R _ s t a r t _ l o t s = v a l u e ; }  
             i f   ( R J F R _ s t a r t _ l o t s < M i n L o t s )   { R J F R _ s t a r t _ l o t s = M i n L o t s ; }  
             i f   ( R J F R _ d e l t a < = 0 )   { R J F R _ d e l t a = s l ; }  
             i f   ( R J F R _ t a r g e t _ u p p e r < = 0 )   {  
                   R J F R _ t a r g e t _ u p p e r = A c c o u n t E q u i t y ( ) + ( R J F R _ u n i t s * R J F R _ d e l t a ) ;  
                   P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ;  
             }  
             i f   ( A c c o u n t E q u i t y ( ) > = R J F R _ t a r g e t _ u p p e r )  
             {  
                   w h i l e ( t r u e )   {  
                         P r i n t ( " F i x e d   R a t i o   M M   g o i n g   u p   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s + 1 ) ) , "   l o t s :   E q u i t y   i s   a b o v e   U p p e r   T a r g e t   E q u i t y   ( " , A c c o u n t E q u i t y ( ) , " > = " , R J F R _ t a r g e t _ u p p e r , " ) " ) ;  
                         R J F R _ u n i t s + + ;  
                         R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ u p p e r ;  
                         R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ u p p e r + ( R J F R _ u n i t s * R J F R _ d e l t a ) ;  
                         P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ;  
                         i f   ( A c c o u n t E q u i t y ( ) < R J F R _ t a r g e t _ u p p e r )   { b r e a k ; }  
                   }  
             }  
             e l s e   i f   ( A c c o u n t E q u i t y ( ) < = R J F R _ t a r g e t _ l o w e r )  
             {  
                   w h i l e ( t r u e )   {  
                   i f   ( A c c o u n t E q u i t y ( ) > R J F R _ t a r g e t _ l o w e r )   { b r e a k ; }  
                         i f   ( R J F R _ u n i t s > 1 )   {                    
                               P r i n t ( " F i x e d   R a t i o   M M   g o i n g   d o w n   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s - 1 ) ) , "   l o t s :   E q u i t y   i s   b e l o w   L o w e r   T a r g e t   E q u i t y   |   " ,   A c c o u n t E q u i t y ( ) , "   < =   " , R J F R _ t a r g e t _ l o w e r , " ) " ) ;  
                               R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ l o w e r ;  
                               R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ l o w e r - ( ( R J F R _ u n i t s - 1 ) * R J F R _ d e l t a ) ;  
                               R J F R _ u n i t s - - ;  
                               P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ;  
                         }   e l s e   { b r e a k ; }  
                   }  
             }  
             s i z e = R J F R _ s t a r t _ l o t s * R J F R _ u n i t s ;  
       }  
 	 	  
 	 i f   ( s i z e = = E M P T Y _ V A L U E )   { s i z e = 0 ; }  
        
       s t a t i c   b o o l   a l e r t _ m i n _ l o t s = f a l s e ;  
       i f   ( s i z e < M i n L o t s   & &   a l e r t _ m i n _ l o t s = = f a l s e )   { a l e r t _ m i n _ l o t s = t r u e ;  
             A l e r t ( " Y o u   w a n t   t o   t r a d e   " , s i z e , "   l o t ,   b u t   y o u r   b r o k e r ' s   m i n i m u m   i s   " , M i n L o t s , "   l o t .   T h e   t r a d e / o r d e r   w i l l   c o n t i n u e   w i t h   " , M i n L o t s , "   l o t   i n s t e a d   o f   " , s i z e , "   l o t .   T h e   s a m e   r u l e   w i l l   b e   a p p l i e d   f o r   n e x t   t r a d e s / o r d e r s   w i t h   d e s i r e d   l o t   s i z e   l o w e r   t h a n   t h e   m i n i m u m .   Y o u   w i l l   n o t   s e e   t h i s   m e s s a g e   a g a i n   u n t i l   y o u   r e s t a r t   t h e   p r o g r a m . " ) ;  
       }  
  
       s i z e = M a t h R o u n d ( s i z e / L o t S t e p ) * L o t S t e p ;  
        
       i f   ( a l i g n = = " a l i g n " )   {  
             i f   ( s i z e < M i n L o t s )   { s i z e = M i n L o t s ; }  
             i f   ( s i z e > M a x L o t s )   { s i z e = M a x L o t s ; }  
       }  
        
       r e t u r n   ( s i z e ) ;  
 }  
  
 s t r i n g   E r r o r M e s s a g e ( i n t   e r r o r _ c o d e = - 1 )  
 {  
 	 s t r i n g   e   =   " " ;  
 	 i f   ( e r r o r _ c o d e < 0 )   { e r r o r _ c o d e = G e t L a s t E r r o r ( ) ; }  
 	  
  
 	 s w i t c h ( e r r o r _ c o d e )  
 	 {  
 	 	 / / - - -   s u c c e s s  
 	 	 c a s e   0 :   r e t u r n ( " T h e   o p e r a t i o n   c o m p l e t e d   s u c c e s s f u l l y " ) ;  
 	 	  
 	 	 / / - - -   R u n t i m e  
 	 	 c a s e   4 0 0 1 :   e   =   " U n e x p e c t e d   i n t e r n a l   e r r o r " ;   b r e a k ;  
 	 	 c a s e   4 0 0 2 :   e   =   " W r o n g   p a r a m e t e r   i n   t h e   i n n e r   c a l l   o f   t h e   c l i e n t   t e r m i n a l   f u n c t i o n " ;   b r e a k ;  
 	 	 c a s e   4 0 0 3 :   e   =   " W r o n g   p a r a m e t e r   w h e n   c a l l i n g   t h e   s y s t e m   f u n c t i o n " ;   b r e a k ;  
 	 	 c a s e   4 0 0 4 :   e   =   " N o t   e n o u g h   m e m o r y   t o   p e r f o r m   t h e   s y s t e m   f u n c t i o n " ;   b r e a k ;  
 	 	 c a s e   4 0 0 5 :   e   =   " T h e   s t r u c t u r e   c o n t a i n s   o b j e c t s   o f   s t r i n g s   a n d / o r   d y n a m i c   a r r a y s   a n d / o r   s t r u c t u r e   o f   s u c h   o b j e c t s   a n d / o r   c l a s s e s " ;   b r e a k ;  
 	 	 c a s e   4 0 0 6 :   e   =   " A r r a y   o f   a   w r o n g   t y p e ,   w r o n g   s i z e ,   o r   a   d a m a g e d   o b j e c t   o f   a   d y n a m i c   a r r a y " ;   b r e a k ;  
 	 	 c a s e   4 0 0 7 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   r e l o c a t i o n   o f   a n   a r r a y ,   o r   a n   a t t e m p t   t o   c h a n g e   t h e   s i z e   o f   a   s t a t i c   a r r a y " ;   b r e a k ;  
 	 	 c a s e   4 0 0 8 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   r e l o c a t i o n   o f   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   4 0 0 9 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   4 0 1 0 :   e   =   " I n v a l i d   d a t e   a n d / o r   t i m e " ;   b r e a k ;  
 	 	 c a s e   4 0 1 1 :   e   =   " R e q u e s t e d   a r r a y   s i z e   e x c e e d s   2   G B " ;   b r e a k ;  
 	 	 c a s e   4 0 1 2 :   e   =   " W r o n g   p o i n t e r " ;   b r e a k ;  
 	 	 c a s e   4 0 1 3 :   e   =   " W r o n g   t y p e   o f   p o i n t e r " ;   b r e a k ;  
 	 	 c a s e   4 0 1 4 :   e   =   " S y s t e m   f u n c t i o n   i s   n o t   a l l o w e d   t o   c a l l " ;   b r e a k ;  
 	 	 c a s e   4 0 1 5 :   e   =   " T h e   n a m e s   o f   t h e   d y n a m i c   a n d   t h e   s t a t i c   r e s o u r c e   m a t c h " ;   b r e a k ;  
 	 	 c a s e   4 0 1 6 :   e   =   " R e s o u r c e   w i t h   t h i s   n a m e   h a s   n o t   b e e n   f o u n d   i n   E X 5 " ;   b r e a k ;  
 	 	 c a s e   4 0 1 7 :   e   =   " U n s u p p o r t e d   r e s o u r c e   t y p e   o r   i t s   s i z e   e x c e e d s   1 6   M b " ;   b r e a k ;  
 	 	 c a s e   4 0 1 8 :   e   =   " T h e   r e s o u r c e   n a m e   e x c e e d s   6 3   c h a r a c t e r s " ;   b r e a k ;  
 	 	  
 	 	 / / - -   C h a r t s  
 	 	 c a s e   4 1 0 1 :   e   =   " W r o n g   c h a r t   I D " ;   b r e a k ;  
 	 	 c a s e   4 1 0 2 :   e   =   " C h a r t   d o e s   n o t   r e s p o n d " ;   b r e a k ;  
 	 	 c a s e   4 1 0 3 :   e   =   " C h a r t   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 1 0 4 :   e   =   " N o   E x p e r t   A d v i s o r   i n   t h e   c h a r t   t h a t   c o u l d   h a n d l e   t h e   e v e n t " ;   b r e a k ;  
 	 	 c a s e   4 1 0 5 :   e   =   " C h a r t   o p e n i n g   e r r o r " ;   b r e a k ;  
 	 	 c a s e   4 1 0 6 :   e   =   " F a i l e d   t o   c h a n g e   c h a r t   s y m b o l   a n d   p e r i o d " ;   b r e a k ;  
 	 	 c a s e   4 1 0 7 :   e   =   " W r o n g   p a r a m e t e r   f o r   t i m e r " ;   b r e a k ;  
 	 	 c a s e   4 1 0 8 :   e   =   " F a i l e d   t o   c r e a t e   t i m e r " ;   b r e a k ;  
 	 	 c a s e   4 1 0 9 :   e   =   " W r o n g   c h a r t   p r o p e r t y   I D " ;   b r e a k ;  
 	 	 c a s e   4 1 1 0 :   e   =   " E r r o r   c r e a t i n g   s c r e e n s h o t s " ;   b r e a k ;  
 	 	 c a s e   4 1 1 1 :   e   =   " E r r o r   n a v i g a t i n g   t h r o u g h   c h a r t " ;   b r e a k ;  
 	 	 c a s e   4 1 1 2 :   e   =   " E r r o r   a p p l y i n g   t e m p l a t e " ;   b r e a k ;  
 	 	 c a s e   4 1 1 3 :   e   =   " S u b w i n d o w   c o n t a i n i n g   t h e   i n d i c a t o r   w a s   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 1 1 4 :   e   =   " E r r o r   a d d i n g   a n   i n d i c a t o r   t o   c h a r t " ;   b r e a k ;  
 	 	 c a s e   4 1 1 5 :   e   =   " E r r o r   d e l e t i n g   a n   i n d i c a t o r   f r o m   t h e   c h a r t " ;   b r e a k ;  
 	 	 c a s e   4 1 1 6 :   e   =   " I n d i c a t o r   n o t   f o u n d   o n   t h e   s p e c i f i e d   c h a r t " ;   b r e a k ;  
  
 	 	 / / - -   G r a p h i c a l   O b j e c t s  
 	 	 c a s e   4 2 0 1 :   e   =   " E r r o r   w o r k i n g   w i t h   a   g r a p h i c a l   o b j e c t " ;   b r e a k ;  
 	 	 c a s e   4 2 0 2 :   e   =   " G r a p h i c a l   o b j e c t   w a s   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 2 0 3 :   e   =   " W r o n g   I D   o f   a   g r a p h i c a l   o b j e c t   p r o p e r t y " ;   b r e a k ;  
 	 	 c a s e   4 2 0 4 :   e   =   " U n a b l e   t o   g e t   d a t e   c o r r e s p o n d i n g   t o   t h e   v a l u e " ;   b r e a k ;  
 	 	 c a s e   4 2 0 5 :   e   =   " U n a b l e   t o   g e t   v a l u e   c o r r e s p o n d i n g   t o   t h e   d a t e " ;   b r e a k ;  
  
 	 	 / / - -   M a r k e t   I n f o  
 	 	 c a s e   4 3 0 1 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ;  
 	 	 c a s e   4 3 0 2 :   e   =   " S y m b o l   i s   n o t   s e l e c t e d   i n   M a r k e t W a t c h " ;   b r e a k ;  
 	 	 c a s e   4 3 0 3 :   e   =   " W r o n g   i d e n t i f i e r   o f   a   s y m b o l   p r o p e r t y " ;   b r e a k ;  
 	 	 c a s e   4 3 0 4 :   e   =   " T i m e   o f   t h e   l a s t   t i c k   i s   n o t   k n o w n   ( n o   t i c k s ) " ;   b r e a k ;  
 	 	 c a s e   4 3 0 5 :   e   =   " E r r o r   a d d i n g   o r   d e l e t i n g   a   s y m b o l   i n   M a r k e t W a t c h " ;   b r e a k ;  
  
 	 	 / / - -   H i s t o r y   A c c e s s  
 	 	 c a s e   4 4 0 1 :   e   =   " R e q u e s t e d   h i s t o r y   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 4 0 2 :   e   =   " W r o n g   I D   o f   t h e   h i s t o r y   p r o p e r t y " ;   b r e a k ;  
  
 	 	 / / - -   G l o b a l   V a r i a b l e s  
 	 	 c a s e   4 5 0 1 :   e   =   " G l o b a l   v a r i a b l e   o f   t h e   c l i e n t   t e r m i n a l   i s   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 5 0 2 :   e   =   " G l o b a l   v a r i a b l e   o f   t h e   c l i e n t   t e r m i n a l   w i t h   t h e   s a m e   n a m e   a l r e a d y   e x i s t s " ;   b r e a k ;  
 	 	 c a s e   4 5 1 0 :   e   =   " E m a i l   s e n d i n g   f a i l e d " ;   b r e a k ;  
 	 	 c a s e   4 5 1 1 :   e   =   " S o u n d   p l a y i n g   f a i l e d " ;   b r e a k ;  
 	 	 c a s e   4 5 1 2 :   e   =   " W r o n g   i d e n t i f i e r   o f   t h e   p r o g r a m   p r o p e r t y " ;   b r e a k ;  
 	 	 c a s e   4 5 1 3 :   e   =   " W r o n g   i d e n t i f i e r   o f   t h e   t e r m i n a l   p r o p e r t y " ;   b r e a k ;  
 	 	 c a s e   4 5 1 4 :   e   =   " F i l e   s e n d i n g   v i a   f t p   f a i l e d " ;   b r e a k ;  
 	 	 c a s e   4 5 1 5 :   e   =   " F a i l e d   t o   s e n d   a   n o t i f i c a t i o n " ;   b r e a k ;  
 	 	 c a s e   4 5 1 6 :   e   =   " I n v a l i d   p a r a m e t e r   f o r   s e n d i n g   a   n o t i f i c a t i o n   -   a n   e m p t y   s t r i n g   o r   N U L L   h a s   b e e n   p a s s e d   t o   t h e   S e n d N o t i f i c a t i o n ( )   f u n c t i o n " ;   b r e a k ;  
 	 	 c a s e   4 5 1 7 :   e   =   " W r o n g   s e t t i n g s   o f   n o t i f i c a t i o n s   i n   t h e   t e r m i n a l   ( I D   i s   n o t   s p e c i f i e d   o r   p e r m i s s i o n   i s   n o t   s e t ) " ;   b r e a k ;  
 	 	 c a s e   4 5 1 8 :   e   =   " T o o   f r e q u e n t   s e n d i n g   o f   n o t i f i c a t i o n s " ;   b r e a k ;  
  
 	 	 / / - -   C u s t o m   I n d i c a t o r   B u f f e r s  
 	 	 c a s e   4 6 0 1 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   d i s t r i b u t i o n   o f   i n d i c a t o r   b u f f e r s " ;   b r e a k ;  
 	 	 c a s e   4 6 0 2 :   e   =   " W r o n g   i n d i c a t o r   b u f f e r   i n d e x " ;   b r e a k ;  
  
 	 	 / / - -   C u s t o m   I n d i c a t o r   P r o p e r t i e s  
 	 	 c a s e   4 6 0 3 :   e   =   " W r o n g   I D   o f   t h e   c u s t o m   i n d i c a t o r   p r o p e r t y " ;   b r e a k ;  
  
 	 	 / / - -   A c c o u n t  
 	 	 c a s e   4 7 0 1 :   e   =   " W r o n g   a c c o u n t   p r o p e r t y   I D " ;   b r e a k ;  
 	 	 c a s e   4 7 5 1 :   e   =   " W r o n g   t r a d e   p r o p e r t y   I D " ;   b r e a k ;  
 	 	 c a s e   4 7 5 2 :   e   =   " T r a d i n g   b y   E x p e r t   A d v i s o r s   p r o h i b i t e d " ;   b r e a k ;  
 	 	 c a s e   4 7 5 3 :   e   =   " P o s i t i o n   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 7 5 4 :   e   =   " O r d e r   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 7 5 5 :   e   =   " D e a l   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 7 5 6 :   e   =   " T r a d e   r e q u e s t   s e n d i n g   f a i l e d " ;   b r e a k ;  
  
 	 	 / / - -   I n d i c a t o r s  
 	 	 c a s e   4 8 0 1 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ;  
 	 	 c a s e   4 8 0 2 :   e   =   " I n d i c a t o r   c a n n o t   b e   c r e a t e d " ;   b r e a k ;  
 	 	 c a s e   4 8 0 3 :   e   =   " N o t   e n o u g h   m e m o r y   t o   a d d   t h e   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 0 4 :   e   =   " T h e   i n d i c a t o r   c a n n o t   b e   a p p l i e d   t o   a n o t h e r   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 0 5 :   e   =   " E r r o r   a p p l y i n g   a n   i n d i c a t o r   t o   c h a r t " ;   b r e a k ;  
 	 	 c a s e   4 8 0 6 :   e   =   " R e q u e s t e d   d a t a   n o t   f o u n d " ;   b r e a k ;  
 	 	 c a s e   4 8 0 7 :   e   =   " W r o n g   i n d i c a t o r   h a n d l e " ;   b r e a k ;  
 	 	 c a s e   4 8 0 8 :   e   =   " W r o n g   n u m b e r   o f   p a r a m e t e r s   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 0 9 :   e   =   " N o   p a r a m e t e r s   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 1 0 :   e   =   " T h e   f i r s t   p a r a m e t e r   i n   t h e   a r r a y   m u s t   b e   t h e   n a m e   o f   t h e   c u s t o m   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 1 1 :   e   =   " I n v a l i d   p a r a m e t e r   t y p e   i n   t h e   a r r a y   w h e n   c r e a t i n g   a n   i n d i c a t o r " ;   b r e a k ;  
 	 	 c a s e   4 8 1 2 :   e   =   " W r o n g   i n d e x   o f   t h e   r e q u e s t e d   i n d i c a t o r   b u f f e r " ;   b r e a k ;  
  
 	 	 / / - -   D e p t h   o f   M a r k e t  
 	 	 c a s e   4 9 0 1 :   e   =   " D e p t h   O f   M a r k e t   c a n   n o t   b e   a d d e d " ;   b r e a k ;  
 	 	 c a s e   4 9 0 2 :   e   =   " D e p t h   O f   M a r k e t   c a n   n o t   b e   r e m o v e d " ;   b r e a k ;  
 	 	 c a s e   4 9 0 3 :   e   =   " T h e   d a t a   f r o m   D e p t h   O f   M a r k e t   c a n   n o t   b e   o b t a i n e d " ;   b r e a k ;  
 	 	 c a s e   4 9 0 4 :   e   =   " E r r o r   i n   s u b s c r i b i n g   t o   r e c e i v e   n e w   d a t a   f r o m   D e p t h   O f   M a r k e t " ;   b r e a k ;  
  
 	 	 / / - -   F i l e   O p e r a t i o n s  
 	 	 c a s e   5 0 0 1 :   e   =   " M o r e   t h a n   6 4   f i l e s   c a n n o t   b e   o p e n e d   a t   t h e   s a m e   t i m e " ;   b r e a k ;  
 	 	 c a s e   5 0 0 2 :   e   =   " I n v a l i d   f i l e   n a m e " ;   b r e a k ;  
 	 	 c a s e   5 0 0 3 :   e   =   " T o o   l o n g   f i l e   n a m e " ;   b r e a k ;  
 	 	 c a s e   5 0 0 4 :   e   =   " F i l e   o p e n i n g   e r r o r " ;   b r e a k ;  
 	 	 c a s e   5 0 0 5 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   c a c h e   t o   r e a d " ;   b r e a k ;  
 	 	 c a s e   5 0 0 6 :   e   =   " F i l e   d e l e t i n g   e r r o r " ;   b r e a k ;  
 	 	 c a s e   5 0 0 7 :   e   =   " A   f i l e   w i t h   t h i s   h a n d l e   w a s   c l o s e d ,   o r   w a s   n o t   o p e n i n g   a t   a l l " ;   b r e a k ;  
 	 	 c a s e   5 0 0 8 :   e   =   " W r o n g   f i l e   h a n d l e " ;   b r e a k ;  
 	 	 c a s e   5 0 0 9 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   f o r   w r i t i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 1 0 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   f o r   r e a d i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 1 1 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   b i n a r y   o n e " ;   b r e a k ;  
 	 	 c a s e   5 0 1 2 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   t e x t " ;   b r e a k ;  
 	 	 c a s e   5 0 1 3 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   a   t e x t   o r   C S V " ;   b r e a k ;  
 	 	 c a s e   5 0 1 4 :   e   =   " T h e   f i l e   m u s t   b e   o p e n e d   a s   C S V " ;   b r e a k ;  
 	 	 c a s e   5 0 1 5 :   e   =   " F i l e   r e a d i n g   e r r o r " ;   b r e a k ;  
 	 	 c a s e   5 0 1 6 :   e   =   " S t r i n g   s i z e   m u s t   b e   s p e c i f i e d ,   b e c a u s e   t h e   f i l e   i s   o p e n e d   a s   b i n a r y " ;   b r e a k ;  
 	 	 c a s e   5 0 1 7 :   e   =   " A   t e x t   f i l e   m u s t   b e   f o r   s t r i n g   a r r a y s ,   f o r   o t h e r   a r r a y s   -   b i n a r y " ;   b r e a k ;  
 	 	 c a s e   5 0 1 8 :   e   =   " T h i s   i s   n o t   a   f i l e ,   t h i s   i s   a   d i r e c t o r y " ;   b r e a k ;  
 	 	 c a s e   5 0 1 9 :   e   =   " F i l e   d o e s   n o t   e x i s t " ;   b r e a k ;  
 	 	 c a s e   5 0 2 0 :   e   =   " F i l e   c a n   n o t   b e   r e w r i t t e n " ;   b r e a k ;  
 	 	 c a s e   5 0 2 1 :   e   =   " W r o n g   d i r e c t o r y   n a m e " ;   b r e a k ;  
 	 	 c a s e   5 0 2 2 :   e   =   " D i r e c t o r y   d o e s   n o t   e x i s t " ;   b r e a k ;  
 	 	 c a s e   5 0 2 3 :   e   =   " T h i s   i s   a   f i l e ,   n o t   a   d i r e c t o r y " ;   b r e a k ;  
 	 	 c a s e   5 0 2 4 :   e   =   " T h e   d i r e c t o r y   c a n n o t   b e   r e m o v e d " ;   b r e a k ;  
 	 	 c a s e   5 0 2 5 :   e   =   " F a i l e d   t o   c l e a r   t h e   d i r e c t o r y   ( p r o b a b l y   o n e   o r   m o r e   f i l e s   a r e   b l o c k e d   a n d   r e m o v a l   o p e r a t i o n   f a i l e d ) " ;   b r e a k ;  
 	 	 c a s e   5 0 2 6 :   e   =   " F a i l e d   t o   w r i t e   a   r e s o u r c e   t o   a   f i l e " ;   b r e a k ;  
  
 	 	 / / - -   S t r i n g   C a s t i n g  
 	 	 c a s e   5 0 3 0 :   e   =   " N o   d a t e   i n   t h e   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 3 1 :   e   =   " W r o n g   d a t e   i n   t h e   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 3 2 :   e   =   " W r o n g   t i m e   i n   t h e   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 3 3 :   e   =   " E r r o r   c o n v e r t i n g   s t r i n g   t o   d a t e " ;   b r e a k ;  
 	 	 c a s e   5 0 3 4 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t h e   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 3 5 :   e   =   " T h e   s t r i n g   l e n g t h   i s   l e s s   t h a n   e x p e c t e d " ;   b r e a k ;  
 	 	 c a s e   5 0 3 6 :   e   =   " T o o   l a r g e   n u m b e r ,   m o r e   t h a n   U L O N G _ M A X " ;   b r e a k ;  
 	 	 c a s e   5 0 3 7 :   e   =   " I n v a l i d   f o r m a t   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 3 8 :   e   =   " A m o u n t   o f   f o r m a t   s p e c i f i e r s   m o r e   t h a n   t h e   p a r a m e t e r s " ;   b r e a k ;  
 	 	 c a s e   5 0 3 9 :   e   =   " A m o u n t   o f   p a r a m e t e r s   m o r e   t h a n   t h e   f o r m a t   s p e c i f i e r s " ;   b r e a k ;  
 	 	 c a s e   5 0 4 0 :   e   =   " D a m a g e d   p a r a m e t e r   o f   s t r i n g   t y p e " ;   b r e a k ;  
 	 	 c a s e   5 0 4 1 :   e   =   " P o s i t i o n   o u t s i d e   t h e   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 4 2 :   e   =   " 0   a d d e d   t o   t h e   s t r i n g   e n d ,   a   u s e l e s s   o p e r a t i o n " ;   b r e a k ;  
 	 	 c a s e   5 0 4 3 :   e   =   " U n k n o w n   d a t a   t y p e   w h e n   c o n v e r t i n g   t o   a   s t r i n g " ;   b r e a k ;  
 	 	 c a s e   5 0 4 4 :   e   =   " D a m a g e d   s t r i n g   o b j e c t " ;   b r e a k ;  
  
 	 	 / / - -   O p e r a t i o n s   w i t h   A r r a y s  
 	 	 c a s e   5 0 5 0 :   e   =   " C o p y i n g   i n c o m p a t i b l e   a r r a y s .   S t r i n g   a r r a y   c a n   b e   c o p i e d   o n l y   t o   a   s t r i n g   a r r a y ,   a n d   a   n u m e r i c   a r r a y   -   i n   n u m e r i c   a r r a y   o n l y " ;   b r e a k ;  
 	 	 c a s e   5 0 5 1 :   e   =   " T h e   r e c e i v i n g   a r r a y   i s   d e c l a r e d   a s   A S _ S E R I E S ,   a n d   i t   i s   o f   i n s u f f i c i e n t   s i z e " ;   b r e a k ;  
 	 	 c a s e   5 0 5 2 :   e   =   " T o o   s m a l l   a r r a y ,   t h e   s t a r t i n g   p o s i t i o n   i s   o u t s i d e   t h e   a r r a y " ;   b r e a k ;  
 	 	 c a s e   5 0 5 3 :   e   =   " A n   a r r a y   o f   z e r o   l e n g t h " ;   b r e a k ;  
 	 	 c a s e   5 0 5 4 :   e   =   " M u s t   b e   a   n u m e r i c   a r r a y " ;   b r e a k ;  
 	 	 c a s e   5 0 5 5 :   e   =   " M u s t   b e   a   o n e - d i m e n s i o n a l   a r r a y " ;   b r e a k ;  
 	 	 c a s e   5 0 5 6 :   e   =   " T i m e s e r i e s   c a n n o t   b e   u s e d " ;   b r e a k ;  
 	 	 c a s e   5 0 5 7 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   d o u b l e " ;   b r e a k ;  
 	 	 c a s e   5 0 5 8 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   f l o a t " ;   b r e a k ;  
 	 	 c a s e   5 0 5 9 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   l o n g " ;   b r e a k ;  
 	 	 c a s e   5 0 6 0 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   i n t " ;   b r e a k ;  
 	 	 c a s e   5 0 6 1 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   s h o r t " ;   b r e a k ;  
 	 	 c a s e   5 0 6 2 :   e   =   " M u s t   b e   a n   a r r a y   o f   t y p e   c h a r " ;   b r e a k ;  
 	 	  
 	 	 / / - -   O p e r a t i o n s   w i t h   O p e n C L  
 	 	 c a s e   5 1 0 0 :   e   =   " O p e n C L   f u n c t i o n s   a r e   n o t   s u p p o r t e d   o n   t h i s   c o m p u t e r " ;   b r e a k ;  
 	 	 c a s e   5 1 0 1 :   e   =   " I n t e r n a l   e r r o r   o c c u r r e d   w h e n   r u n n i n g   O p e n C L " ;   b r e a k ;  
 	 	 c a s e   5 1 0 2 :   e   =   " I n v a l i d   O p e n C L   h a n d l e " ;   b r e a k ;  
 	 	 c a s e   5 1 0 3 :   e   =   " E r r o r   c r e a t i n g   t h e   O p e n C L   c o n t e x t " ;   b r e a k ;  
 	 	 c a s e   5 1 0 4 :   e   =   " F a i l e d   t o   c r e a t e   a   r u n   q u e u e   i n   O p e n C L " ;   b r e a k ;  
 	 	 c a s e   5 1 0 5 :   e   =   " E r r o r   o c c u r r e d   w h e n   c o m p i l i n g   a n   O p e n C L   p r o g r a m " ;   b r e a k ;  
 	 	 c a s e   5 1 0 6 :   e   =   " T o o   l o n g   k e r n e l   n a m e   ( O p e n C L   k e r n e l ) " ;   b r e a k ;  
 	 	 c a s e   5 1 0 7 :   e   =   " E r r o r   c r e a t i n g   a n   O p e n C L   k e r n e l " ;   b r e a k ;  
 	 	 c a s e   5 1 0 8 :   e   =   " E r r o r   o c c u r r e d   w h e n   s e t t i n g   p a r a m e t e r s   f o r   t h e   O p e n C L   k e r n e l " ;   b r e a k ;  
 	 	 c a s e   5 1 0 9 :   e   =   " O p e n C L   p r o g r a m   r u n t i m e   e r r o r " ;   b r e a k ;  
 	 	 c a s e   5 1 1 0 :   e   =   " I n v a l i d   s i z e   o f   t h e   O p e n C L   b u f f e r " ;   b r e a k ;  
 	 	 c a s e   5 1 1 1 :   e   =   " I n v a l i d   o f f s e t   i n   t h e   O p e n C L   b u f f e r " ;   b r e a k ;  
 	 	 c a s e   5 1 1 2 :   e   =   " F a i l e d   t o   c r e a t e   a n   O p e n C L   b u f f e r " ;   b r e a k ;  
 	 	  
 	 	 / / - -   O p e r a t i o n s   w i t h   W e b R e q u e s t  
 	 	 c a s e   5 2 0 0 :   e   =   " I n v a l i d   U R L " ;   b r e a k ;  
 	 	 c a s e   5 2 0 1 :   e   =   " F a i l e d   t o   c o n n e c t   t o   s p e c i f i e d   U R L " ;   b r e a k ;  
 	 	 c a s e   5 2 0 2 :   e   =   " T i m e o u t   e x c e e d e d " ;   b r e a k ;  
 	 	 c a s e   5 2 0 3 :   e   =   " H T T P   r e q u e s t   f a i l e d " ;   b r e a k ;  
  
 	 	 / / - -   t r a d i n g   e r r o r s  
 	 	 c a s e   1 0 0 0 4 :   e   =   " R e q u o t e   o c c u r e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 0 6 :   e   =   " O r d e r   i s   n o t   a c c e p t e d   b y   t h e   s e r v e r " ;   b r e a k ;  
 	 	 c a s e   1 0 0 0 7 :   e   =   " R e q u e s t   c a n c e l e d   b y   t r a d e r " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 0 :   e   =   " O n l y   p a r t   o f   t h e   r e q u e s t   w a s   c o m p l e t e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 1 :   e   =   " R e q u e s t   p r o c e s s i n g   e r r o r " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 2 :   e   =   " R e q u e s t   c a n c e l e d   b y   t i m e o u t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 3 :   e   =   " I n v a l i d   r e q u e s t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 4 :   e   =   " I n v a l i d   v o l u m e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 5 :   e   =   " I n v a l i d   p r i c e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 6 :   e   =   " I n v a l i d   S L   o r   T P " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 7 :   e   =   " T r a d i n g   i s   d i s a b l e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 8 :   e   =   " M a r k e t   i s   c l o s e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 1 9 :   e   =   " N o t   e n o u g h   m o n e y   t o   t r a d e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 0 :   e   =   " P r i c e s   c h a n g e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 1 :   e   =   " T h e r e   a r e   n o   q u o t e s   t o   p r o c e s s   t h e   r e q u e s t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 2 :   e   =   " I n v a l i d   e x p i r a t i o n   d a t e   i n   t h e   o r d e r   r e q u e s t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 3 :   e   =   " O r d e r   s t a t e   c h a n g e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 4 :   e   =   " T o o   f r e q u e n t   r e q u e s t s " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 5 :   e   =   " N o   c h a n g e s   i n   r e q u e s t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 6 :   e   =   " A u t o t r a d i n g   i s   d i s a b l e d   b y   t h e   s e r v e r " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 7 :   e   =   " A u t o t r a d i n g   i s   d i s a b l e d   b y   t h e   c l i e n t   t e r m i n a l " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 8 :   e   =   " R e q u e s t   l o c k e d   f o r   p r o c e s s i n g " ;   b r e a k ;  
 	 	 c a s e   1 0 0 2 9 :   e   =   " O r d e r   o r   t r a d e   f r o z e n " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 0 :   e   =   " I n v a l i d   o r d e r   f i l l i n g   t y p e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 1 :   e   =   " N o   c o n n e c t i o n   w i t h   t h e   t r a d e   s e r v e r " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 2 :   e   =   " O p e r a t i o n   i s   a l l o w e d   o n l y   f o r   l i v e   a c c o u n t s " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 3 :   e   =   " T h e   n u m b e r   o f   p e n d i n g   o r d e r s   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 4 :   e   =   " T h e   v o l u m e   o f   o r d e r s   a n d   t r a d e s   f o r   t h e   s y m b o l   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 5 :   e   =   " I n c o r r e c t   o r   p r o h i b i t e d   o r d e r   t y p e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 6 :   e   =   " P o s i t i o n   w i t h   t h e   s p e c i f i e d   P O S I T I O N _ I D E N T I F I E R   h a s   a l r e a d y   b e e n   c l o s e d " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 8 :   e   =   " A   c l o s e   v o l u m e   e x c e e d s   t h e   c u r r e n t   p o s i t i o n   v o l u m e " ;   b r e a k ;  
 	 	 c a s e   1 0 0 3 9 :   e   =   " A   c l o s e   o r d e r   a l r e a d y   e x i s t s   f o r   a   s p e c i f i e d   p o s i t i o n " ;   b r e a k ;  
 	 	 / / - -   U s e r - D e f i n e d   E r r o r s  
 	 	 c a s e   6 5 5 3 6 :   e   =   " U s e r   d e f i n e d   e r r o r s " ;   b r e a k ;  
 	 	 d e f a u l t : 	 e   =   " U n k n o w n   e r r o r " ;  
 	 }  
  
 	 S t r i n g C o n c a t e n a t e ( e ,   e , "   ( " , e r r o r _ c o d e , " ) " ) ;  
 	  
 	 r e t u r n   e ;  
 }  
  
 d a t e t i m e   E x p i r a t i o n T i m e ( s t r i n g   m o d e = " G T C " , i n t   d a y s = 0 ,   i n t   h o u r s = 0 ,   i n t   m i n u t e s = 0 ,   d a t e t i m e   c u s t o m = 0 )  
 {  
 	 d a t e t i m e   n o w                 =   T i m e C u r r e n t ( ) ;  
       d a t e t i m e   e x p i r a t i o n   =   n o w ;  
  
 	           i f   ( m o d e   = =   " G T C "   | |   m o d e   = =   " " )   { e x p i r a t i o n   =   0 ; }  
 	 e l s e   i f   ( m o d e   = =   " t o d a y " )                           { e x p i r a t i o n   =   ( d a t e t i m e ) ( M a t h F l o o r ( ( n o w   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) ; }  
 	 e l s e   i f   ( m o d e   = =   " s p e c i f i e d " )  
 	 {  
 	 	 e x p i r a t i o n   =   0 ;  
  
 	 	 i f   ( ( d a y s   +   h o u r s   +   m i n u t e s )   >   0 )  
 	 	 {  
 	 	 	 e x p i r a t i o n   =   n o w   +   ( 8 6 4 0 0   *   d a y s )   +   ( 3 6 0 0   *   h o u r s )   +   ( 6 0   *   m i n u t e s ) ;  
 	 	 }  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   ( c u s t o m   < =   n o w )  
 	 	 {  
 	 	 	 i f   ( c u s t o m   <   3 1 5 5 7 6 0 0 )  
 	 	 	 {  
 	 	 	 	 c u s t o m   =   n o w   +   c u s t o m ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c u s t o m   =   0 ;  
 	 	 	 }  
 	 	 }  
  
 	 	 e x p i r a t i o n   =   c u s t o m ;  
 	 }  
  
 	 r e t u r n   e x p i r a t i o n ;  
 }  
  
 E N U M _ O R D E R _ T Y P E _ T I M E   E x p i r a t i o n T y p e B y T i m e ( s t r i n g   s y m b o l ,   d a t e t i m e   e x p i r a t i o n )  
 {  
 	 d a t e t i m e   n o w                                       =   T i m e C u r r e n t ( ) ;  
 	 E N U M _ O R D E R _ T Y P E _ T I M E   t y p e _ t i m e   =   O R D E R _ T I M E _ G T C ;  
  
 	 / /   D e t e c t   T y p e   T i m e  
 	 i f   ( e x p i r a t i o n   = =   0   | |   e x p i r a t i o n   < =   n o w )  
 	 {  
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ G T C ;  
 	 }  
 	 e l s e   i f   ( e x p i r a t i o n   = =   ( d a t e t i m e ) ( M a t h F l o o r ( ( n o w   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) )  
 	 {  
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ D A Y ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ S P E C I F I E D ;  
 	 }  
  
 	 / /   W h a t   i f   c e r t a i n   T y p e   T i m e   i s   n o t   a l l o w e d ?  
 	 i f   ( t y p e _ t i m e   = =   O R D E R _ T I M E _ G T C   & &   ! I s E x p i r a t i o n T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ E X P I R A T I O N _ G T C ) )  
 	 {  
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ D A Y ;  
 	 }  
 	  
 	 i f   ( t y p e _ t i m e   = =   O R D E R _ T I M E _ D A Y   & &   ! I s E x p i r a t i o n T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ E X P I R A T I O N _ D A Y ) )  
 	 {  
 	 	 t y p e _ t i m e   =   O R D E R _ T I M E _ S P E C I F I E D ;  
 	 }  
  
 	 / /   R e t u r n   T y p e   T i m e  
 	 r e t u r n   t y p e _ t i m e ;  
 }  
  
 c l a s s   E x p i r a t i o n W o r k e r  
 {  
 p r i v a t e :  
 	 s t r u c t   C a c h e d I t e m s  
 	 {  
 	 	 l o n g   t i c k e t ;  
 	 	 d a t e t i m e   e x p i r a t i o n ;  
 	 } ;  
  
 	 C a c h e d I t e m s   c a c h e d I t e m s [ ] ;  
 	 l o n g   c h a r t I D ;  
 	 s t r i n g   c h a r t O b j e c t P r e f i x ;  
 	 s t r i n g   c h a r t O b j e c t S u f f i x ;  
  
 	 t e m p l a t e < t y p e n a m e   T >  
 	 v o i d   A r r a y C l o n e ( T   & d e s t [ ] ,   T   & s r c [ ] )  
 	 {  
 	 	 i n t   s i z e   =   A r r a y S i z e ( s r c ) ;  
 	 	 A r r a y R e s i z e ( d e s t ,   s i z e ) ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 d e s t [ i ]   =   s r c [ i ] ;  
 	 	 }  
 	 }  
  
 	 v o i d   I n i t i a l D i s c o v e r y ( )  
 	 {  
 	 	 A r r a y R e s i z e ( c a c h e d I t e m s ,   0 ) ;  
  
 	 	 i n t   t o t a l   =   P o s i t i o n s T o t a l ( ) ;  
  
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   < =   t o t a l ;   i n d e x + + )  
 	 	 {  
 	 	 	 l o n g   t i c k e t   =   G e t T i c k e t B y I n d e x ( i n d e x ) ;  
  
 	 	 	 i f   ( t i c k e t   = =   0 )   c o n t i n u e ;  
  
 	 	 	 d a t e t i m e   e x p i r a t i o n   =   G e t E x p i r a t i o n F r o m O b j e c t ( t i c k e t ) ;  
  
 	 	 	 i f   ( e x p i r a t i o n   >   0 )  
 	 	 	 {  
 	 	 	 	 S e t E x p i r a t i o n I n C a c h e ( t i c k e t ,   e x p i r a t i o n ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 l o n g   G e t T i c k e t B y I n d e x ( i n t   i n d e x )  
 	 {  
 	 	 r e t u r n   ( l o n g ) P o s i t i o n G e t T i c k e t ( i n d e x ) ;  
 	 }  
  
 	 d a t e t i m e   G e t E x p i r a t i o n F r o m O b j e c t ( l o n g   t i c k e t )  
 	 {  
 	 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ;  
 	 	  
 	 	 s t r i n g   o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ;  
  
 	 	 i f   ( O b j e c t F i n d ( c h a r t I D ,   o b j e c t N a m e )   = =   c h a r t I D )  
 	 	 {  
 	 	 	 e x p i r a t i o n   =   ( d a t e t i m e ) O b j e c t G e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E ) ;  
 	 	 }  
  
 	 	 r e t u r n   e x p i r a t i o n ;  
 	 }  
  
 	 b o o l   R e m o v e E x p i r a t i o n O b j e c t ( l o n g   t i c k e t )  
 	 {  
 	 	 b o o l   s u c c e s s             =   f a l s e ;  
 	 	 s t r i n g   o b j e c t N a m e   =   " " ;  
  
 	 	 o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ;  
 	 	 s u c c e s s         =   O b j e c t D e l e t e ( c h a r t I D ,   o b j e c t N a m e ) ;  
  
 	 	 r e t u r n   s u c c e s s ;  
 	 }  
  
 	 v o i d   R e m o v e E x p i r a t i o n F r o m C a c h e ( l o n g   t i c k e t )  
 	 {  
 	 	 i n t   s i z e   =   A r r a y S i z e ( c a c h e d I t e m s ) ;  
 	 	 C a c h e d I t e m s   n e w I t e m s [ ] ;  
 	 	 i n t   n e w S i z e   =   0 ;  
 	 	 b o o l   i t e m R e m o v e d   =   f a l s e ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t )  
 	 	 	 {  
 	 	 	 	 i t e m R e m o v e d   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 n e w S i z e + + ;  
 	 	 	 	 A r r a y R e s i z e ( n e w I t e m s ,   n e w S i z e ) ;  
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . t i c k e t           =   c a c h e d I t e m s [ i ] . t i c k e t ;  
 	 	 	 	 n e w I t e m s [ n e w S i z e   -   1 ] . e x p i r a t i o n   =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( i t e m R e m o v e d )   A r r a y C l o n e ( c a c h e d I t e m s ,   n e w I t e m s ) ;  
 	 }  
  
 	 v o i d   S e t E x p i r a t i o n I n C a c h e ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n )  
 	 {  
 	 	 b o o l   a l r e a d y E x i s t s   =   f a l s e ;  
 	 	 i n t   s i z e                       =   A r r a y S i z e ( c a c h e d I t e m s ) ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t )  
 	 	 	 {  
 	 	 	 	 c a c h e d I t e m s [ i ] . e x p i r a t i o n   =   e x p i r a t i o n ;  
 	 	 	 	 a l r e a d y E x i s t s   =   t r u e ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( a l r e a d y E x i s t s   = =   f a l s e )  
 	 	 {  
 	 	 	 A r r a y R e s i z e ( c a c h e d I t e m s ,   s i z e   +   1 ) ;  
 	 	 	 c a c h e d I t e m s [ s i z e ] . t i c k e t           =   t i c k e t ;  
 	 	 	 c a c h e d I t e m s [ s i z e ] . e x p i r a t i o n   =   e x p i r a t i o n ;  
 	 	 }  
 	 }  
  
 	 b o o l   S e t E x p i r a t i o n I n O b j e c t ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n )  
 	 {  
 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   r e t u r n   f a l s e ;  
  
 	 	 s t r i n g   o b j e c t N a m e   =   c h a r t O b j e c t P r e f i x   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   c h a r t O b j e c t S u f f i x ;  
 	 	 d o u b l e   p r i c e             =   O r d e r O p e n P r i c e ( ) ;  
  
 	 	 i f   ( O b j e c t F i n d ( c h a r t I D ,   o b j e c t N a m e )   = =   c h a r t I D )  
 	 	 {  
 	 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E ,   e x p i r a t i o n ) ;  
 	 	 	 O b j e c t S e t D o u b l e ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ P R I C E ,   p r i c e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 O b j e c t C r e a t e ( c h a r t I D ,   o b j e c t N a m e ,   O B J _ A R R O W ,   0 ,   e x p i r a t i o n ,   p r i c e ) ;  
 	 	 }  
  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ A R R O W C O D E ,   7 7 ) ;  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ T O P ) ;  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ C O L O R ,   c l r R e d ) ;  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ S E L E C T A B L E ,   f a l s e ) ;  
 	 	 O b j e c t S e t I n t e g e r ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T I M E F R A M E S ,   O B J _ N O _ P E R I O D S ) ;  
 	 	 O b j e c t S e t S t r i n g ( c h a r t I D ,   o b j e c t N a m e ,   O B J P R O P _ T E X T ,   T i m e T o S t r i n g ( e x p i r a t i o n ) ) ;  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 b o o l   T r a d e E x i s t s ( l o n g   t i c k e t )  
 	 {  
 	 	 b o o l   e x i s t s     =   f a l s e ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   P o s i t i o n s T o t a l ( ) ;   i + + )  
 	 	 {  
 	 	 	 l o n g   p o s i t i o n T i c k e t   =   ( l o n g ) P o s i t i o n G e t T i c k e t ( i ) ;  
  
 	 	 	 i f   ( ! p o s i t i o n T i c k e t )   c o n t i n u e ;  
  
 	 	 	 i f   ( p o s i t i o n T i c k e t   = =   t i c k e t )  
 	 	 	 {  
 	 	 	 	 e x i s t s   =   t r u e ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   e x i s t s ;  
 	 }  
  
 p u b l i c :  
 	 / /   D e f a u l t   c o n s t r u c t o r  
 	 E x p i r a t i o n W o r k e r ( )  
 	 {  
 	 	 c h a r t I D                       =   0 ;  
 	 	 c h a r t O b j e c t P r e f i x   =   " # " ;  
 	 	 c h a r t O b j e c t S u f f i x   =   "   E x p i r a t i o n   M a r k e r " ;  
  
 	 	 I n i t i a l D i s c o v e r y ( ) ;  
 	 }  
  
 	 v o i d   S e t E x p i r a t i o n ( l o n g   t i c k e t ,   d a t e t i m e   e x p i r a t i o n )  
 	 {  
 	 	 i f   ( e x p i r a t i o n   < =   0 )  
 	 	 {  
 	 	 	 R e m o v e E x p i r a t i o n ( t i c k e t ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t E x p i r a t i o n I n O b j e c t ( t i c k e t ,   e x p i r a t i o n ) ;  
 	 	 	 S e t E x p i r a t i o n I n C a c h e ( t i c k e t ,   e x p i r a t i o n ) ;  
 	 	 }  
 	 }  
  
 	 d a t e t i m e   G e t E x p i r a t i o n ( l o n g   t i c k e t )  
 	 {  
 	 	 d a t e t i m e   e x p i r a t i o n   =   ( d a t e t i m e ) 0 ;  
 	 	 i n t   s i z e                         =   A r r a y S i z e ( c a c h e d I t e m s ) ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 i f   ( c a c h e d I t e m s [ i ] . t i c k e t   = =   t i c k e t )  
 	 	 	 {  
 	 	 	 	 e x p i r a t i o n   =   c a c h e d I t e m s [ i ] . e x p i r a t i o n ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   e x p i r a t i o n ;  
 	 }  
  
 	 v o i d   R e m o v e E x p i r a t i o n ( l o n g   t i c k e t )  
 	 {  
 	 	 R e m o v e E x p i r a t i o n O b j e c t ( t i c k e t ) ;  
 	 	 R e m o v e E x p i r a t i o n F r o m C a c h e ( t i c k e t ) ;  
 	 }  
  
 	 v o i d   R u n ( )  
 	 {  
 	 	 i n t   c o u n t   =   A r r a y S i z e ( c a c h e d I t e m s ) ;  
  
 	 	 i f   ( c o u n t   >   0 )  
 	 	 {  
 	 	 	 d a t e t i m e   t i m e N o w   =   T i m e C u r r e n t ( ) ;  
  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   c o u n t ;   i + + )  
 	 	 	 {  
 	 	 	 	 i f   ( t i m e N o w   > =   c a c h e d I t e m s [ i ] . e x p i r a t i o n )  
 	 	 	 	 {  
 	 	 	 	 	 l o n g   t i c k e t                       =   c a c h e d I t e m s [ i ] . t i c k e t ;  
 	 	 	 	 	 b o o l   r e m o v e E x p i r a t i o n   =   f a l s e ;  
  
 	 	 	 	 	 i f   ( T r a d e E x i s t s ( t i c k e t ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( t i c k e t ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 P r i n t ( " c l o s e   # " ,   t i c k e t ,   "   b y   e x p i r a t i o n " ) ;  
 	 	 	 	 	 	 	 r e m o v e E x p i r a t i o n   =   t r u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e m o v e E x p i r a t i o n   =   t r u e ;  
 	 	 	 	 	 }  
  
 	 	 	 	 	 i f   ( r e m o v e E x p i r a t i o n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 R e m o v e E x p i r a t i o n ( t i c k e t ) ;  
  
 	 	 	 	 	 	 / /   R e m o v i n g   e x p i r a t i o n   c a u s e s   c h a n g e   i n   t h e   s i z e   o f   t h e   c a c h e ,  
 	 	 	 	 	 	 / /   s o   r e s e t   o f   t h e   s i z e   a n d   o n e   s t e p   b a c k   o f   t h e   i n d e x   i s   n e e d e d  
 	 	 	 	 	 	 c o u n t   =   A r r a y S i z e ( c a c h e d I t e m s ) ;  
 	 	 	 	 	 	 i - - ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 } ;  
  
 E x p i r a t i o n W o r k e r   e x p i r a t i o n W o r k e r ;  
  
 b o o l   F i l t e r O r d e r B y (  
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " ,  
 	 s t r i n g   g r o u p                   =   " 0 " ,  
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " ,  
 	 s t r i n g   m a r k e t                 =   " " ,  
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h " ,  
 	 s t r i n g   L i m i t s O r S t o p s   =   " " ,  
 	 i n t   u n u s e d                       =   0 ,   / /   f o r   M Q L 4   c o m p a t i b i l i t y  
 	 b o o l   o n T r a d e                   =   f a l s e  
 )   {  
 	 / / - -   d b  
 	 s t a t i c   s t r i n g   m a r k e t s [ ] ;  
 	 s t a t i c   s t r i n g   m a r k e t 0 	 =   " - " ;  
 	 s t a t i c   i n t   m a r k e t s _ s i z e   =   0 ;  
 	  
 	 s t a t i c   s t r i n g   g r o u p s [ ] ;  
 	 s t a t i c   s t r i n g   g r o u p 0 	     =   " - " ;  
 	 s t a t i c   i n t   g r o u p s _ s i z e   =   0 ;  
 	  
 	 / / - -   l o c a l   v a r i a b l e s  
 	 b o o l   t y p e _ p a s s 	     =   f a l s e ;  
 	 b o o l   m a r k e t _ p a s s   =   f a l s e ;  
 	 b o o l   g r o u p _ p a s s     =   f a l s e ;  
  
 	 i n t   i ;  
 	 l o n g   t y p e ;  
 	 u l o n g   m a g i c _ n u m b e r ;  
 	 s t r i n g   s y m b o l ;  
 	  
 	 / /   T r a d e s  
 	 i f   ( o n T r a d e   = =   f a l s e )  
 	 {  
 	 	 t y p e                   =   O r d e r T y p e ( ) ;  
 	 	 m a g i c _ n u m b e r   =   O r d e r M a g i c N u m b e r ( ) ;  
 	 	 s y m b o l               =   O r d e r S y m b o l ( ) ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 t y p e                   =   e _ a t t r T y p e ( ) ;  
 	 	 m a g i c _ n u m b e r   =   e _ a t t r M a g i c N u m b e r ( ) ;  
 	 	 s y m b o l               =   e _ a t t r S y m b o l ( ) ;  
 	 }  
 	  
 	 / /   T r a d e s   & &   H i s t o r y   t r a d e s  
 	 i f   ( L i m i t s O r S t o p s   = =   " " )  
 	 {  
 	 	 i f   (  
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "     & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L ) )  
 	 	 	 | |   ( B u y s O r S e l l s   = =   " b u y s "     & &   t y p e   = =   O R D E R _ T Y P E _ B U Y )  
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   t y p e   = =   O R D E R _ T Y P E _ S E L L )  
 	 	 	 )  
 	 	 {  
 	 	 	 t y p e _ p a s s   =   t r u e ;  
 	 	 }  
 	 }  
 	 / /   P e n d i n g   o r d e r s  
 	 e l s e  
 	 {  
 	 	 i f   (  
 	 	 	 	 ( B u y s O r S e l l s   = =   " b o t h "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) )  
 	 	 	 | | 	 ( B u y s O r S e l l s   = =   " b u y s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P ) )  
 	 	 	 | |   ( B u y s O r S e l l s   = =   " s e l l s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) )  
 	 	 	 )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	 	 ( L i m i t s O r S t o p s   = =   " b o t h "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) )  
 	 	 	 	 | | 	 ( L i m i t s O r S t o p s   = =   " s t o p s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P ) )  
 	 	 	 	 | |   ( L i m i t s O r S t o p s   = =   " l i m i t s "   & &   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T ) ) 	  
 	 	 	 	 )  
 	 	 	 {  
 	 	 	 	 t y p e _ p a s s   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 i f   ( t y p e _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; }  
 	  
 	 / / - -   c h e c k   g r o u p  
 	 i f   ( g r o u p _ m o d e   = =   " g r o u p " )  
 	 {  
 	 	 i f   ( g r o u p   = =   " " )  
 	 	 {  
 	 	 	 i f   ( m a g i c _ n u m b e r   = =   M a g i c S t a r t )  
 	 	 	 {  
 	 	 	 	 g r o u p _ p a s s   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   ( g r o u p 0   ! =   g r o u p )  
 	 	 	 {  
 	 	 	 	 g r o u p 0   =   g r o u p ;  
 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   g r o u p ,   g r o u p s ) ;  
 	 	 	 	 g r o u p s _ s i z e   =   A r r a y S i z e ( g r o u p s ) ;  
  
 	 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 g r o u p s [ i ]   =   S t r i n g T r i m ( g r o u p s [ i ] ) ;  
  
 	 	 	 	 	 i f   ( g r o u p s [ i ]   = =   " " )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 g r o u p s [ i ]   =   " 0 " ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 f o r ( i   =   0 ;   i   <   g r o u p s _ s i z e ;   i + + )  
 	 	 	 {  
 	 	 	 	 i f   ( m a g i c _ n u m b e r   = =   ( M a g i c S t a r t   +   ( i n t ) g r o u p s [ i ] ) )  
 	 	 	 	 {  
 	 	 	 	 	 g r o u p _ p a s s   =   t r u e ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	 e l s e   i f   ( g r o u p _ m o d e   = =   " a l l "   | |   ( g r o u p _ m o d e   = =   " m a n u a l "   & &   m a g i c _ n u m b e r   = =   0 ) )  
 	 {  
 	 	 g r o u p _ p a s s   =   t r u e ;      
 	 }  
  
 	 i f   ( g r o u p _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; }  
 	  
 	 / /   c h e c k   m a r k e t  
 	 i f   ( m a r k e t _ m o d e   = =   " a l l " )  
 	 {  
 	 	 m a r k e t _ p a s s   =   t r u e ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   ( s y m b o l   = =   m a r k e t )  
 	 	 {  
 	 	 	 m a r k e t _ p a s s   =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   ( m a r k e t 0   ! =   m a r k e t )  
 	 	 	 {  
 	 	 	 	 m a r k e t 0   =   m a r k e t ;  
  
 	 	 	 	 i f   ( m a r k e t   = =   " " )  
 	 	 	 	 {  
 	 	 	 	 	 m a r k e t s _ s i z e   =   1 ;  
 	 	 	 	 	 A r r a y R e s i z e ( m a r k e t s , 1 ) ;  
 	 	 	 	 	 m a r k e t s [ 0 ]   =   S y m b o l ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   m a r k e t ,   m a r k e t s ) ;  
 	 	 	 	 	 m a r k e t s _ s i z e   =   A r r a y S i z e ( m a r k e t s ) ;  
  
 	 	 	 	 	 f o r ( i   =   0 ;   i   <   m a r k e t s _ s i z e ;   i + + )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m a r k e t s [ i ]   =   S t r i n g T r i m ( m a r k e t s [ i ] ) ;  
  
 	 	 	 	 	 	 i f   ( m a r k e t s [ i ]   = =   " " )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 m a r k e t s [ i ]   =   S y m b o l ( ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 f o r ( i   =   0 ;   i   <   m a r k e t s _ s i z e ;   i + + )  
 	 	 	 {  
 	 	 	 	 i f   ( s y m b o l   = =   m a r k e t s [ i ] )  
 	 	 	 	 {  
 	 	 	 	 	 m a r k e t _ p a s s   =   t r u e ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 i f   ( m a r k e t _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; }  
    
 	 r e t u r n ( t r u e ) ;  
 }  
  
 v o i d   G e t B e t T r a d e s I n f o (  
 	 d o u b l e   & o u t p u t [ ] ,  
 	 s t r i n g   g r o u p ,  
 	 s t r i n g   s y m b o l ,  
 	 i n t   p o o l ,   / /   0 :   t r y   r u n n i n g   t r a d e s   f i r s t   a n d   t h e n   h i s t o r y   t r a d e s ,   1 :   t r y   r u n n i n g   o n l y ,   2 :   t r y   h i s t o r y   o n l y  
 	 b o o l   f i n d C o n s e c u t i v e   =   f a l s e  
 )   {  
 	 i f   ( A r r a y S i z e ( o u t p u t )   <   4 )  
 	 {  
 	 	 A r r a y R e s i z e ( o u t p u t ,   4 ) ;  
 	 	 A r r a y I n i t i a l i z e ( o u t p u t ,   0 . 0 ) ;  
 	 }  
  
 	 d o u b l e   l o t s                   =   o u t p u t [ 0 ] ;   / /   w i l l   b e   t h e   l o t   s i z e   o f   t h e   f i r s t   l o a d e d   t r a d e  
 	 d o u b l e   p r o f i t O r L o s s   =   o u t p u t [ 1 ] ;   / /   0   i s   i n i t i a l   v a l u e ,   1   i s   p r o f i t ,   - 1   i s   l o s s  
 	 d o u b l e   c o n s e c u t i v e     =   o u t p u t [ 2 ] ;   / /   t h e   n u m b e r   o f   c o n s e c u t i v e   p r o f i t a b l e   o r   l o s a b l e   t r a d e s  
 	 d o u b l e   p r o f i t               =   o u t p u t [ 3 ] ;   / /   w i l l   b e   t h e   p r o f i t   o f   t h e   f i r s t   l o a d e d   t r a d e  
 	 b o o l   h i s t o r y T r a d e s     =   ( p o o l   = =   2 )   ?   t r u e   :   f a l s e ;  
 	  
 	 i n t   t o t a l   =   ( h i s t o r y T r a d e s )   ?   H i s t o r y T r a d e s T o t a l ( )   :   T r a d e s T o t a l ( ) ;  
  
 	 f o r   ( i n t   p o s   =   t o t a l   -   1 ;   p o s   > =   0 ;   p o s - - )  
 	 {  
 	 	 i f   (  
 	 	 	       ( ! h i s t o r y T r a d e s   & &   T r a d e S e l e c t B y I n d e x ( p o s ,   " g r o u p " ,   g r o u p ,   " s y m b o l " ,   s y m b o l ) )  
 	 	 	 | |   ( h i s t o r y T r a d e s   & &   H i s t o r y T r a d e S e l e c t B y I n d e x ( p o s ,   " g r o u p " ,   g r o u p ,   " s y m b o l " ,   s y m b o l ) )  
 	 	 )   {  
 	 	 	 i f   (  
 	 	 	 	 ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   / /   s k i p   f o r   b r a n d   n e w   t r a d e s  
 	 	 	 	 | |  
 	 	 	 	 (  
 	 	 	 	 	 / /   e x c l u d e   e x p i r e d   p e n d i n g   o r d e r s  
 	 	 	 	 	 ! h i s t o r y T r a d e s  
 	 	 	 	 	 & &   O r d e r E x p i r a t i o n ( )   >   0  
 	 	 	 	 	 & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( )  
 	 	 	 	 )  
 	 	 	 )   {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
  
 	 	 	 i f   ( l o t s   = =   0 . 0 )  
 	 	 	 {  
 	 	 	 	 l o t s   =   O r d e r L o t s ( ) ;  
 	 	 	 }  
  
 	 	 	 p r o f i t   =   O r d e r C l o s e P r i c e ( )   -   O r d e r O p e n P r i c e ( ) ;  
 	 	 	 p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ;  
 	 	 	  
 	 	 	 i f   ( p r o f i t   = =   0 . 0 )  
 	 	 	 {  
 	 	 	 	 / /   C o n s i d e r   a   t r a d e   w i t h   z e r o   p r o f i t   a s   n o n   e x i s t e n t  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
  
 	 	 	 i f   ( I s O r d e r T y p e S e l l ( ) )  
 	 	 	 {  
 	 	 	 	 p r o f i t   =   - 1   *   p r o f i t ;  
 	 	 	 }  
  
 	 	 	 i f   ( p r o f i t O r L o s s   = =   0 )  
 	 	 	 {  
 	 	 	 	 / /   W e   e n t e r   h e r e   o n l y   f o r   t h e   f i r s t   t r a d e  
 	 	 	 	 p r o f i t O r L o s s   =   ( p r o f i t   <   0 . 0 )   ?   - 1   :   1 ;  
  
 	 	 	 	 c o n s e c u t i v e + + ;  
  
 	 	 	 	 i f   ( f i n d C o n s e c u t i v e   = =   f a l s e )   b r e a k ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 / /   F o r   t h e   t r a d e s   a f t e r   t h e   f i r s t   o n e ,   i f   i t s   p r o f i t   i s   t h e   o p p o s i t e   o f   p r o f i t O r L o s s ,   w e   n e e d   t o   b r e a k  
 	 	 	 	 i f   (  
 	 	 	 	 	       ( p r o f i t O r L o s s   >   0 . 0   & &   p r o f i t   <   0 . 0 )  
 	 	 	 	 	 | |   ( p r o f i t O r L o s s   <   0 . 0   & &   p r o f i t   >   0 . 0 )  
 	 	 	 	 )   {  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
  
 	 	 	 	 c o n s e c u t i v e + + ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 o u t p u t [ 0 ]   =   l o t s ;  
 	 o u t p u t [ 1 ]   =   p r o f i t O r L o s s ;  
 	 o u t p u t [ 2 ]   =   c o n s e c u t i v e ;  
 	 o u t p u t [ 3 ]   =   p r o f i t ;  
 	  
 	 i f   ( p o o l   = =   0   & &   ( f i n d C o n s e c u t i v e   | |   p r o f i t O r L o s s   = =   0 ) )  
 	 {  
 	 	 / /   r u n n i n g   t r a d e s   t r i e d ,   c o n t i n u e   w i t h   t h e   h i s t o r y   t r a d e s  
 	 	 p o o l   =   2 ;  
 	 	 G e t B e t T r a d e s I n f o ( o u t p u t ,   g r o u p ,   s y m b o l ,   p o o l ,   f i n d C o n s e c u t i v e ) ;  
 	 }  
 }  
  
 b o o l   H i s t o r y T r a d e S e l e c t B y I n d e x (  
 	 i n t   i n d e x ,  
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " ,  
 	 s t r i n g   g r o u p                   =   " 0 " ,  
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " ,  
 	 s t r i n g   m a r k e t                 =   " " ,  
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h "  
 )   {  
 	 i f   ( L o a d H i s t o r y T r a d e ( i n d e x ,   " s e l e c t _ b y _ p o s " )   & &   L o a d e d T y p e ( )   = =   3 )  
 	 {  
 	 	 i f   ( F i l t e r O r d e r B y (  
 	 	 	 g r o u p _ m o d e ,  
 	 	 	 g r o u p ,  
 	 	 	 m a r k e t _ m o d e ,  
 	 	 	 m a r k e t ,  
 	 	 	 B u y s O r S e l l s )  
 	 	 )   {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 i n t   H i s t o r y T r a d e s T o t a l ( d a t e t i m e   f r o m _ d a t e = 0 ,   d a t e t i m e   t o _ d a t e = 0 )  
 {  
 	 i f   ( t o _ d a t e   = =   0 )   { t o _ d a t e   =   T i m e C u r r e n t ( )   +   1 ; }  
 	  
 	 H i s t o r y S e l e c t ( f r o m _ d a t e ,   t o _ d a t e ) ;  
 	  
 	 S e l e c t e d H i s t o r y F r o m T i m e ( f r o m _ d a t e ) ;  
 	 S e l e c t e d H i s t o r y T o T i m e ( t o _ d a t e ) ;  
 	  
 	 r e t u r n   H i s t o r y D e a l s T o t a l ( ) ;  
 }  
  
 v o i d   H i s t o r y T r a d e s T o t a l R e s e t ( )  
 {  
 	 i f   ( S e l e c t e d H i s t o r y T o T i m e ( )   >   0   | |   S e l e c t e d H i s t o r y F r o m T i m e ( )   >   0 )   {  
 	 	 H i s t o r y S e l e c t ( S e l e c t e d H i s t o r y F r o m T i m e ( ) ,   S e l e c t e d H i s t o r y T o T i m e ( ) ) ;  
 	 }  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 b o o l   I n A r r a y ( T   & a r r a y [ ] ,   T   v a l u e )  
 {  
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ;  
  
 	 i f   ( s i z e   >   0 )  
 	 {  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 i f   ( a r r a y [ i ]   = =   v a l u e )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   f a l s e ;  
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
 b o o l   I s O r d e r T y p e B u y ( )  
 {  
 	 i n t   l o a d e d T y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( l o a d e d T y p e   = =   1 )  
 	 {  
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
 	 e l s e   i f   ( l o a d e d T y p e   = =   3 )  
 	 {  
 	 	 r e t u r n   ( O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ B U Y ) ;  
 	 }  
 	 e l s e   i f   ( l o a d e d T y p e   = =   4 )  
 	 {  
 	 	 i f   (  
 	 	 	 H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ L I M I T  
 	 	 	 | |   H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ S T O P  
 	 	 )   {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
 	 e l s e   i f   (  
 	 	 O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ L I M I T  
 	 	 | |   O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ B U Y _ S T O P  
 	 )   {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 b o o l   I s O r d e r T y p e S e l l ( )  
 {  
 	 i n t   l o a d e d T y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( l o a d e d T y p e   = =   1 )  
 	 {  
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
 	 e l s e   i f   ( l o a d e d T y p e   = =   3 )  
 	 {  
 	 	 r e t u r n   ( O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L ) ;  
 	 }  
 	 e l s e   i f   ( l o a d e d T y p e   = =   4 )  
 	 {  
 	 	 i f   (  
 	 	 	 H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 	 | |   H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 )   {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
 	 e l s e   i f   (  
 	 	 O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 | |   O r d e r G e t I n t e g e r ( O R D E R _ T Y P E )   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 )   {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 b o o l   L o a d H i s t o r y T r a d e ( i n t   i n d e x ,   s t r i n g   s e l e c t b y = " s e l e c t _ b y _ p o s " )  
 {  
 	 i f   ( s e l e c t b y   = =   " s e l e c t _ b y _ p o s " )  
 	 {  
 	 	 u l o n g   t i c k e t     =   H i s t o r y D e a l G e t T i c k e t ( i n d e x ) ;  
  
 	 	 i f   ( t i c k e t   >   0 )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       / / H i s t o r y D e a l S e l e c t ( t i c k e t )   -   c o m m e n t e d ,   b e c a u s e   i t   b r e a k s   H i s t o r y S e l e c t ( )  
 	 	 	 	       H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T Y P E )   <   2  
 	 	 	 	 & &   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T  
 	 	 	 	 )  
 	 	 	 {  
 	 	 	 	 O r d e r T i c k e t ( t i c k e t ) ;  
  
 	 	 	 	 L o a d e d T y p e ( 3 ) ;  
  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 i f   ( s e l e c t b y   = =   " s e l e c t _ b y _ t i c k e t " )  
 	 {  
 	 	 i f   ( H i s t o r y D e a l S e l e c t ( i n d e x ) )  
 	 	 {  
 	 	 	 O r d e r T i c k e t ( i n d e x ) ;  
  
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( i n d e x ,   D E A L _ T Y P E )   <   2 )  
 	 	 	 {  
 	 	 	 	 L o a d e d T y p e ( 3 ) ;  
  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 b o o l   L o a d P e n d i n g O r d e r ( l o n g   t i c k e t )  
 {  
 	 b o o l   s u c c e s s   =   f a l s e ;  
  
       i f   ( O r d e r S e l e c t ( t i c k e t ) )  
 	 {  
 	 	 / /   T h e   o r d e r   c o u l d   b e   f r o m   a n y   t y p e ,   s o   c h e c k   t h e   t y p e  
 	 	 / /   a n d   a l l o w   o n l y   t r u e   p e n d i n g   o r d e r s .  
 	 	 E N U M _ O R D E R _ T Y P E   t y p e   =   ( E N U M _ O R D E R _ T Y P E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ;  
  
 	 	 i f   (  
 	 	 	       t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T  
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P  
 	 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 )   {  
 	 	 	 L o a d e d T y p e ( 2 ) ;  
 	 	 	 O r d e r T i c k e t ( t i c k e t ) ;  
 	 	 	 s u c c e s s   =   t r u e ;  
 	 	 }  
 	 }  
  
       r e t u r n   s u c c e s s ;  
 }  
  
 b o o l   L o a d P o s i t i o n ( u l o n g   t i c k e t )  
 {  
       b o o l   s u c c e s s   =   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ;  
  
       i f   ( s u c c e s s )   {  
 	 	 L o a d e d T y p e ( 1 ) ;  
 	 	 O r d e r T i c k e t ( t i c k e t ) ;  
 	 }  
  
       r e t u r n   s u c c e s s ;  
 }  
  
 i n t   L o a d e d T y p e ( i n t   t y p e   =   0 )  
 {  
 	 / /   1   -   p o s i t i o n  
 	 / /   2   -   p e n d i n g   o r d e r  
 	 / /   3   -   h i s t o r y   p o s i t i o n  
 	 / /   4   -   h i s t o r y   p e n d i n g   o r d e r  
  
 	 s t a t i c   i n t   m e m o r y ;  
  
 	 i f   ( t y p e   >   0 )   { m e m o r y   =   t y p e ; }  
  
 	 r e t u r n   m e m o r y ;  
 }  
  
 b o o l   M o d i f y O r d e r (  
 	 l o n g   t i c k e t ,  
 	 d o u b l e   o p ,  
 	 d o u b l e   s l l   =   0 ,  
 	 d o u b l e   t p l   =   0 ,  
 	 d o u b l e   s l p   =   0 ,  
 	 d o u b l e   t p p   =   0 ,  
 	 d a t e t i m e   e x p   =   0 ,  
 	 c o l o r   c l r   =   c l r N O N E  
 )   {  
 	 i n t   b s   =   1 ;  
  
 	 i f   ( L o a d e d T y p e ( )   = =   1 )  
 	 {  
 	 	 i f   ( O r d e r T y p e ( )   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 { b s   =   - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   (  
 	 	 	 	 O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L  
 	 	 	 | |   O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 	 | |   O r d e r T y p e ( )   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 	 )  
 	 	 { b s   =   - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l  
 	 }  
  
 	 w h i l e   ( t r u e )  
 	 {  
 	 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ;  
 	 	  
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 )  
 	 	 {  
 	 	 	 i f   ( ! P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   { r e t u r n   f a l s e ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   ( ! O r d e r S e l e c t ( t i c k e t ) )   { r e t u r n   f a l s e ; }  
 	 	 }  
  
 	 	 s t r i n g   s y m b o l             =   O r d e r S y m b o l ( ) ;  
 	 	 i n t   t y p e                       =   O r d e r T y p e ( ) ;  
 	 	 i n t   d i g i t s                   =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ D I G I T S ) ;  
 	 	 d o u b l e   a s k                   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ A S K ) ;  
 	 	 d o u b l e   b i d                   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ B I D ) ;  
 	 	 d o u b l e   p o i n t               =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ P O I N T ) ;  
 	 	 d o u b l e   s t o p l e v e l       =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ;  
 	 	 d o u b l e   f r e e z e l e v e l   =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ;  
  
 	 	 i f   ( O r d e r T y p e ( )   <   2 )   { o p   =   O r d e r O p e n P r i c e ( ) ; }   e l s e   { o p   =   N o r m a l i z e D o u b l e ( o p , d i g i t s ) ; }  
 	 	  
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ;  
 	 	 t p l   =   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ;  
  
 	 	 i f   ( o p   <   0   | |   o p   > =   E M P T Y _ V A L U E   | |   s l l   <   0   | |   s l p   <   0   | |   t p l   <   0   | |   t p p   <   0 )  
 	 	 {  
 	 	 	 b r e a k ;  
 	 	 }  
  
 	 	 / / - -   O P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 / /   h t t p s : / / b o o k . m q l 4 . c o m / a p p e n d i x / l i m i t s  
 	 	 i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ L I M I T )  
 	 	 {  
 	 	 	 i f   ( a s k   -   o p   <   s t o p l e v e l )   { o p   =   a s k   -   s t o p l e v e l ; }  
 	 	 	 i f   ( a s k   -   o p   < =   f r e e z e l e v e l )   { o p   =   a s k   -   f r e e z e l e v e l   -   p o i n t ; }  
 	 	 }  
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y _ S T O P )  
 	 	 {  
 	 	 	 i f   ( o p   -   a s k   <   s t o p l e v e l )   { o p   =   a s k   +   s t o p l e v e l ; }  
 	 	 	 i f   ( o p   -   a s k   < =   f r e e z e l e v e l )   { o p   =   a s k   +   f r e e z e l e v e l   +   p o i n t ; }  
 	 	 }  
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T )  
 	 	 {  
 	 	 	 i f   ( o p   -   b i d   <   s t o p l e v e l )   { o p   =   b i d   +   s t o p l e v e l ; }  
 	 	 	 i f   ( o p   -   b i d   < =   f r e e z e l e v e l )   { o p   =   b i d   +   f r e e z e l e v e l   +   p o i n t ; }  
 	 	 }  
 	 	 e l s e   i f   ( t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P )  
 	 	 {  
 	 	 	 i f   ( b i d   -   o p   <   s t o p l e v e l )   { o p   =   b i d   -   s t o p l e v e l ; }  
 	 	 	 i f   ( b i d   -   o p   <   f r e e z e l e v e l )   { o p   =   b i d   -   f r e e z e l e v e l   -   p o i n t ; }  
 	 	 }  
  
 	 	 o p   =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ;  
  
 	 	 / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l   =   0 ,   t p   =   0 ,   v s l   =   0 ,   v t p   =   0 ;  
  
 	 	 s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   a t t r S t o p L o s s ( ) ,   s l l ,   s l p ) ;  
  
 	 	 i f   ( s l   <   0 )   { b r e a k ; }  
  
 	 	 t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   a t t r T a k e P r o f i t ( ) ,   t p l ,   t p p ) ;  
  
 	 	 i f   ( t p   <   0 )   { b r e a k ; }  
  
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 {  
 	 	 	 / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 	 v s l   =   s l ;  
 	 	 	 v t p   =   t p ;  
 	 	 	 s l     =   0 ;  
 	 	 	 t p     =   0 ;  
  
 	 	 	 d o u b l e   a s k b i d   =   a s k ;  
  
 	 	 	 i f   ( b s   <   0 )   { a s k b i d   =   b i d ; }  
  
 	 	 	 i f   ( v s l   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " )  
 	 	 	 {  
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 s l   =   v s l   -   E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( a s k b i d - v s l ) * b s ;  
  
 	 	 	 	 	 i f   ( s l   < =   0 )   { s l   =   a s k b i d ; }  
 	 	 	 	 	 s l   =   s l - t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   ( v t p   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " )  
 	 	 	 {  
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 )  
 	 	 	 	 {  
 	 	 	 	 	 t p = v t p + E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( v t p - a s k b i d ) * b s ;  
  
 	 	 	 	 	 i f   ( t p   < =   0 )   { t p   =   a s k b i d ; }  
  
 	 	 	 	 	 t p   =   t p   +   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 v s l   =   N o r m a l i z e D o u b l e ( v s l , d i g i t s ) ;  
 	 	 	 v t p   =   N o r m a l i z e D o u b l e ( v t p , d i g i t s ) ;  
 	 	 }  
  
 	 	 s l   =   N o r m a l i z e D o u b l e ( s l , d i g i t s ) ;  
 	 	 t p   =   N o r m a l i z e D o u b l e ( t p , d i g i t s ) ;  
  
 	 	 / / - -   m o d i f y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 R e s e t L a s t E r r o r ( ) ;  
 	 	  
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 {  
 	 	 	 i f   ( v s l   ! =   a t t r S t o p L o s s ( )   | |   v t p   ! =   a t t r T a k e P r o f i t ( ) )  
 	 	 	 {  
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 b o o l   s u c c e s s   =   f a l s e ;  
 	 	  
 	 	 / /   c h e c k   i f   n e e d e d   t o   m o d i f y  
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 )  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       s l   = =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) , d i g i t s )  
 	 	 	 	 & &   t p   = =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) , d i g i t s )  
 	 	 	 	 & &   e x p   = =   O r d e r E x p i r a t i o n T i m e ( )  
 	 	 	 )   {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (  
 	 	 	 	       o p   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) , d i g i t s )  
 	 	 	 	 & &   s l   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ S L ) , d i g i t s )  
 	 	 	 	 & &   t p   = =   N o r m a l i z e D o u b l e ( O r d e r G e t D o u b l e ( O R D E R _ T P ) , d i g i t s )  
 	 	 	 )   {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / /   p r e p a r e   t o   m o d i f y  
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ;  
 	 	 M q l T r a d e R e s u l t   r e s u l t ;  
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ;  
 	 	 Z e r o M e m o r y ( r e q u e s t ) ;  
 	 	 Z e r o M e m o r y ( r e s u l t ) ;  
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ;  
  
 	 	 / /   m o d i f y  
 	 	 i f   ( L o a d e d T y p e ( )   = =   1 )  
 	 	 {  
 	 	 	 / /   i n   c a s e   o f   p o s i t i o n ,   o n l y   s l   a n d   t p   a r e   g o i n g   t o   b e   m o d i f i e d  
 	 	 	 r e q u e s t . a c t i o n       =   T R A D E _ A C T I O N _ S L T P ;  
 	 	 	 r e q u e s t . s y m b o l       =   s y m b o l ;  
 	 	 	 r e q u e s t . p o s i t i o n   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ;  
 	 	 	 r e q u e s t . m a g i c         =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ;  
 	 	 	 r e q u e s t . c o m m e n t     =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 / /   i n   c a s e   o f   p e n d i n g   o r d e r  
 	 	 	 r e q u e s t . a c t i o n           =   T R A D E _ A C T I O N _ M O D I F Y ;  
 	 	 	 r e q u e s t . o r d e r             =   t i c k e t ;  
 	 	 	 r e q u e s t . p r i c e             =   o p ;  
 	 	 	 r e q u e s t . v o l u m e           =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ;  
 	 	 	 r e q u e s t . m a g i c             =   O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ;  
 	 	 	 r e q u e s t . t y p e _ t i m e     =   E x p i r a t i o n T y p e B y T i m e ( s y m b o l ,   e x p ) ;  
 	 	 	 r e q u e s t . e x p i r a t i o n   =   e x p ;  
 	 	 	 r e q u e s t . c o m m e n t         =   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ;  
  
 	 	 	 / / - -   f i l l i n g   t y p e  
 	 	 	 u i n t   f i l l i n g   =   ( u i n t ) S y m b o l I n f o I n t e g e r ( r e q u e s t . s y m b o l , S Y M B O L _ F I L L I N G _ M O D E ) ;  
  
 	 	 	 i f   ( f i l l i n g   = =   S Y M B O L _ F I L L I N G _ F O K )  
 	 	 	 {  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( f i l l i n g   = =   S Y M B O L _ F I L L I N G _ I O C )  
 	 	 	 {  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e q u e s t . s l   =   s l ;  
 	 	 r e q u e s t . t p   =   t p ;  
  
 	 	 i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) )  
 	 	 {  
 	 	 	 P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   "   +   ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t   +   "   ( "   +   ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e   +   " ) " ) ;  
  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ;  
  
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E )  
 	 	 {  
 	 	 	 s t r i n g   e r r m s g p f x   =   " M o d i f y   e r r o r " ;  
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ;  
  
 	 	 	 s w i t c h ( e r r a c t i o n )  
 	 	 	 {  
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r  
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r  
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r  
 	 	 	 }  
  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E )  
 	 	 {  
 	 	 	 / / = =   W a i t   u n t i l   M T 5   u p d a t e s   i t s   c a c h e  
 	 	 	 i n t   w ;  
  
 	 	 	 f o r   ( w   =   0 ;   w   <   5 0 0 0 ;   w + + )  
 	 	 	 {  
 	 	 	 	 i f   ( ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) )   & &   ( s l   = =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) ,   d i g i t s )   & &   t p   = =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) ,   d i g i t s ) ) )  
 	 	 	 	 {  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
  
 	 	 	 	 S l e e p ( 1 ) ;  
 	 	 	 }  
  
 	 	 	 i f   ( w   = =   5 0 0 0 )  
 	 	 	 {  
 	 	 	 	 P r i n t ( " C h e c k   e r r o r :   M o d i f y   o r d e r   s t o p s " ) ;      
 	 	 	 }  
  
 	 	 	 i f   ( ! ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) )   | |   ( s l   ! =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) ,   d i g i t s )   | |   t p   ! =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) ,   d i g i t s ) ) )  
 	 	 	 {  
 	 	 	 	 P r i n t ( " S o m e t h i n g   w e n t   w r o n g   w h e n   t r y i n g   t o   m o d i f y   t h e   s t o p s " ) ;  
  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
  
 	 	 	 i f   ( ! ( ( L o a d e d T y p e ( )   = =   1   & &   P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   | |   O r d e r S e l e c t ( t i c k e t ) ) )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
  
 	 	 	 O r d e r M o d i f i e d ( ( i n t ) t i c k e t ) ;  
 	 	 }  
  
 	 	 b r e a k ;  
 	 }  
  
 	 O n T r a d e ( ) ;  
  
 	 r e t u r n   t r u e ;  
 }  
  
 i n t   O C O D r i v e r ( )  
 {  
 	 s t a t i c   l o n g   l a s t _ k n o w n _ t i c k e t   =   0 ;  
 	 s t a t i c   l o n g   o r d e r s 1 [ ] ;  
 	 s t a t i c   l o n g   o r d e r s 2 [ ] ;  
 	 i n t   i ,   s i z e ;  
  
 	 i n t   t o t a l   =   O r d e r s T o t a l ( ) ;  
  
 	 f o r   ( i n t   p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - )  
 	 {  
 	 	 i f   ( L o a d P e n d i n g O r d e r ( O r d e r G e t T i c k e t ( p o s ) ) )  
 	 	 {  
 	 	 	 l o n g   t i c k e t   =   O r d e r T i c k e t ( ) ;  
  
 	 	 	 / / - -   e n d   h e r e   i f   w e   r e a c h   t h e   l a s t   k n o w n   t i c k e t  
 	 	 	 i f   ( t i c k e t   = =   l a s t _ k n o w n _ t i c k e t )   { b r e a k ; }  
  
 	 	 	 / / - -   s e t   t h e   l a s t   k n o w n   t i c k e t ,   o n l y   i f   t h i s   i s   t h e   f i r s t   i t e r a t i o n  
 	 	 	 i f   ( p o s   = =   t o t a l - 1 )   {  
 	 	 	 	 l a s t _ k n o w n _ t i c k e t   =   t i c k e t ;  
 	 	 	 }  
  
 	 	 	 / / - -   w e   a r e   s e a r c h i n g   f o r   p e n d i n g   o r d e r s ,   s k i p   t r a d e s  
 	 	 	 i f   ( O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L )   { c o n t i n u e ; }  
  
 	 	 	 / / - -  
 	 	 	 i f   ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   0 ,   5 )   = =   " [ o c o : " )  
 	 	 	 {  
 	 	 	 	 i n t   t i c k e t _ o c o   =   S t r T o I n t e g e r ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   5 ,   S t r i n g L e n ( O r d e r C o m m e n t ( ) ) - 1 ) ) ;    
  
 	 	 	 	 b o o l   f o u n d   =   f a l s e ;  
 	 	 	 	 s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ;  
 	 	 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( o r d e r s 2 [ i ]   = =   t i c k e t _ o c o )   {  
 	 	 	 	 	 	 f o u n d   =   t r u e ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
  
 	 	 	 	 i f   ( f o u n d   = =   f a l s e )   {  
 	 	 	 	 	 A r r a y R e s i z e ( o r d e r s 1 ,   s i z e + 1 ) ;  
 	 	 	 	 	 A r r a y R e s i z e ( o r d e r s 2 ,   s i z e + 1 ) ;  
 	 	 	 	 	 o r d e r s 1 [ s i z e ]   =   t i c k e t _ o c o ;  
 	 	 	 	 	 o r d e r s 2 [ s i z e ]   =   t i c k e t ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 s i z e   =   A r r a y S i z e ( o r d e r s 1 ) ;  
 	 i n t   d b r e m o v e   =   f a l s e ;  
  
 	 f o r   ( i   =   s i z e   -   1 ;   i   > =   0 ;   i - - )  
 	 {  
 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 1 [ i ] )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 2 [ i ] ) )   {  
 	 	 	 	 i f   ( D e l e t e O r d e r ( o r d e r s 2 [ i ] ) )  
 	 	 	 	 {  
 	 	 	 	 	 d b r e m o v e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 d b r e m o v e   =   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( d b r e m o v e   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ;  
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ;  
 	 d b r e m o v e   =   f a l s e ;  
 	 f o r   ( i = s i z e - 1 ;   i > = 0 ;   i - - )  
 	 {  
 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 2 [ i ] )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O R D E R _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( o r d e r s 1 [ i ] ) )   {  
 	 	 	 	 i f   ( D e l e t e O r d e r ( o r d e r s 1 [ i ] ) )  
 	 	 	 	 {  
 	 	 	 	 	 d b r e m o v e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 d b r e m o v e   =   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( d b r e m o v e   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ;  
 	 	 	 	 A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   t r u e ;  
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
 c l a s s   O n T r a d e E v e n t D e t e c t o r  
 {  
 p r i v a t e :  
 	 / / - - -   s t r u c t u r e s  
 	 s t r u c t   E v e n t V a l u e s  
 	 {  
 	 	 / /   s p e c i a l   f i e l d s  
 	 	 s t r i n g       r e a s o n ,  
 	 	                   d e t a i l ;  
  
 	 	 / /   o r d e r   r e l a t e d   f i e l d s  
 	 	 l o n g           m a g i c ,  
 	 	                   t i c k e t ;  
 	 	 i n t             t y p e ;  
 	 	 d a t e t i m e   t i m e C l o s e ,  
 	 	                   t i m e O p e n ,  
 	 	                   t i m e E x p i r a t i o n ;  
 	 	 d o u b l e       c o m m i s s i o n ,  
 	 	                   p r i c e O p e n ,  
 	 	                   p r i c e C l o s e ,  
 	 	                   p r o f i t ,  
 	 	                   s t o p L o s s ,  
 	 	                   s w a p ,  
 	 	                   t a k e P r o f i t ,  
 	 	                   v o l u m e ;  
 	 	 s t r i n g       c o m m e n t ,  
 	 	                   s y m b o l ;  
 	 } ;  
  
 	 s t r u c t   P o s i t i o n  
 	 {  
 	 	 E N U M _ P O S I T I O N _ T Y P E   t y p e ;  
 	 	 E N U M _ P O S I T I O N _ R E A S O N   r e a s o n ;  
 	 	 l o n g           p o s i t i o n I d ,  
 	 	                   m a g i c ,  
 	 	                   t i c k e t ,  
 	 	                   t i m e M s ,  
 	 	                   t i m e U p d a t e M s ;  
 	 	 d a t e t i m e   t i m e ,  
 	 	 	 	 	 t i m e E x p i r a t i o n ,  
 	 	                   t i m e U p d a t e ;  
 	 	 d o u b l e       p r i c e C u r r e n t ,  
 	 	                   p r i c e O p e n ,  
 	 	                   p r o f i t ,  
 	 	                   s t o p L o s s ,  
 	 	                   s w a p ,  
 	 	                   t a k e P r o f i t ,  
 	 	                   v o l u m e ;  
 	 	 s t r i n g       e x t e r n a l I d ,  
 	 	                   c o m m e n t ,  
 	 	                   s y m b o l ;  
 	 } ;  
  
 	 s t r u c t   P e n d i n g O r d e r  
 	 {  
 	 	 E N U M _ O R D E R _ T Y P E   t y p e ;  
 	 	 E N U M _ O R D E R _ S T A T E   s t a t e ;  
 	 	 E N U M _ O R D E R _ T Y P E _ F I L L I N G   t y p e F i l l i n g ;  
 	 	 E N U M _ O R D E R _ T Y P E _ T I M E   t y p e T i m e ;  
 	 	 E N U M _ O R D E R _ R E A S O N   r e a s o n ;  
 	 	 l o n g           m a g i c ,  
 	 	                   p o s i t i o n I d ,  
 	 	                   p o s i t i o n B y I d ,  
 	 	                   t i c k e t ,  
 	 	                   t i m e S e t u p M s ,  
 	 	                   t i m e D o n e M s ;  
 	 	 d a t e t i m e   t i m e D o n e ,  
 	 	                   t i m e E x p i r a t i o n ,  
 	 	                   t i m e S e t u p ;  
 	 	 d o u b l e       p r i c e C u r r e n t ,  
 	 	                   p r i c e O p e n ,  
 	 	                   p r i c e S t o p L i m i t ,  
 	 	                   s t o p L o s s ,  
 	 	                   t a k e P r o f i t ,  
 	 	                   v o l u m e ,  
 	 	                   v o l u m e I n i t i a l ;  
 	 	 s t r i n g       e x t e r n a l I d ,  
 	 	                   c o m m e n t ,  
 	 	                   s y m b o l ;  
 	 } ;  
 	  
 	 s t r u c t   P o s i t i o n E x p i r a t i o n T i m e s  
 	 {  
 	 	 l o n g   t i c k e t ;  
 	 	 d a t e t i m e   t i m e E x p i r a t i o n ;  
 	 } ;  
  
 	 / / - - -   v a r i a b l e s   a n d   a r r a y s  
 	 b o o l   d e b u g ;  
  
 	 i n t   e v e n t V a l u e s Q u e u e I n d e x ;  
 	 E v e n t V a l u e s   e v e n t V a l u e s [ ] ;  
  
 	 P e n d i n g O r d e r   p r e v i o u s P e n d i n g O r d e r s [ ] ;  
 	 P e n d i n g O r d e r   p e n d i n g O r d e r s [ ] ;  
  
 	 P o s i t i o n   p r e v i o u s P o s i t i o n s [ ] ;  
 	 P o s i t i o n   p o s i t i o n s [ ] ;  
  
 	 P o s i t i o n E x p i r a t i o n T i m e s   p o s i t i o n E x p i r a t i o n T i m e s [ ] ;  
  
 	 / / - - -   m e t h o d s  
  
 	 / * *  
 	 *   L i k e   A r r a y C o p y ( ) ,   b u t   f o r   a n y   t y p e .  
 	 * /  
 	 t e m p l a t e < t y p e n a m e   T >  
 	 v o i d   C o p y L i s t ( T   & d e s t [ ] ,   T   & s r c [ ] )  
 	 {  
 	 	 i n t   s i z e   =   A r r a y S i z e ( s r c ) ;  
 	 	 A r r a y R e s i z e ( d e s t ,   s i z e ) ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 {  
 	 	 	 d e s t [ i ]   =   s r c [ i ] ;  
 	 	 }  
 	 }  
  
 	 / * *  
 	 *   O v e r l o a d e d   m e t h o d   1   o f   2  
 	 * /  
 	 i n t   M a k e L i s t O f ( P e n d i n g O r d e r   & l i s t [ ] )  
 	 {  
 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ;  
  
 	 	 i n t   c o u n t                 =   O r d e r s T o t a l ( ) ;  
 	 	 i n t   h o w M a n y A d d e d   =   0 ;  
  
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + )  
 	 	 {  
 	 	 	 i f   ( O r d e r G e t T i c k e t ( i n d e x )   < =   0 )   c o n t i n u e ;  
  
 	 	 	 h o w M a n y A d d e d + + ;  
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ;  
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ;  
  
 	 	 	 / /   e n u m   t y p e s  
 	 	 	 l i s t [ i ] . t y p e                 =   ( E N U M _ O R D E R _ T Y P E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ;  
 	 	 	 l i s t [ i ] . s t a t e               =   ( E N U M _ O R D E R _ S T A T E ) O r d e r G e t I n t e g e r ( O R D E R _ S T A T E ) ;  
 	 	 	 l i s t [ i ] . t y p e F i l l i n g   =   ( E N U M _ O R D E R _ T Y P E _ F I L L I N G ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E _ F I L L I N G ) ;  
 	 	 	 l i s t [ i ] . t y p e T i m e         =   ( E N U M _ O R D E R _ T Y P E _ T I M E ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E _ T I M E ) ;  
 	 	 	 l i s t [ i ] . r e a s o n             =   ( E N U M _ O R D E R _ R E A S O N ) O r d e r G e t I n t e g e r ( O R D E R _ R E A S O N ) ;  
  
 	 	 	 / /   l o n g  
 	 	 	 l i s t [ i ] . m a g i c                 =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ;  
 	 	 	 l i s t [ i ] . p o s i t i o n I d       =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ P O S I T I O N _ I D ) ;  
 	 	 	 l i s t [ i ] . p o s i t i o n B y I d   =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ P O S I T I O N _ B Y _ I D ) ;  
 	 	 	 l i s t [ i ] . t i c k e t               =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I C K E T ) ;  
 	 	 	 l i s t [ i ] . t i m e S e t u p M s     =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P _ M S C ) ;  
 	 	 	 l i s t [ i ] . t i m e D o n e M s       =   ( l o n g ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E _ M S C ) ;  
  
 	 	 	 / /   d a t e t i m e  
 	 	 	 l i s t [ i ] . t i m e D o n e               =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E ) ;  
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ E X P I R A T I O N ) ;  
 	 	 	 l i s t [ i ] . t i m e S e t u p             =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P ) ;  
  
 	 	 	 / /   d o u b l e  
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t       =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ C U R R E N T ) ;  
 	 	 	 l i s t [ i ] . p r i c e O p e n             =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) ;  
 	 	 	 l i s t [ i ] . p r i c e S t o p L i m i t   =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ S T O P L I M I T ) ;  
 	 	 	 l i s t [ i ] . s t o p L o s s               =   O r d e r G e t D o u b l e ( O R D E R _ S L ) ;  
 	 	 	 l i s t [ i ] . t a k e P r o f i t           =   O r d e r G e t D o u b l e ( O R D E R _ T P ) ;  
 	 	 	 l i s t [ i ] . v o l u m e                   =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ;  
 	 	 	 l i s t [ i ] . v o l u m e I n i t i a l     =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ I N I T I A L ) ;  
  
 	 	 	 / /   s t r i n g  
 	 	 	 l i s t [ i ] . e x t e r n a l I d   =   O r d e r G e t S t r i n g ( O R D E R _ E X T E R N A L _ I D ) ;  
 	 	 	 l i s t [ i ] . c o m m e n t         =   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ;  
 	 	 	 l i s t [ i ] . s y m b o l           =   O r d e r G e t S t r i n g ( O R D E R _ S Y M B O L ) ;  
 	 	 }  
  
 	 	 r e t u r n   h o w M a n y A d d e d ;  
 	 }  
  
 	 / * *  
 	 *   O v e r l o a d e d   m e t h o d   2   o f   2  
 	 * /  
 	 i n t   M a k e L i s t O f ( P o s i t i o n   & l i s t [ ] )  
 	 {  
 	 	 A r r a y R e s i z e ( l i s t ,   0 ) ;  
  
 	 	 i n t   c o u n t                 =   P o s i t i o n s T o t a l ( ) ;  
 	 	 i n t   h o w M a n y A d d e d   =   0 ;  
  
 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + )  
 	 	 {  
 	 	 	 i f   ( P o s i t i o n G e t T i c k e t ( i n d e x )   < =   0 )   c o n t i n u e ;  
  
 	 	 	 h o w M a n y A d d e d + + ;  
 	 	 	 A r r a y R e s i z e ( l i s t ,   h o w M a n y A d d e d ) ;  
 	 	 	 i n t   i   =   h o w M a n y A d d e d   -   1 ;  
  
 	 	 	 / /   e n u m   t y p e s  
 	 	 	 l i s t [ i ] . t y p e       =   ( E N U M _ P O S I T I O N _ T Y P E ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ;  
 	 	 	 l i s t [ i ] . r e a s o n   =   ( E N U M _ P O S I T I O N _ R E A S O N ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ R E A S O N ) ;  
  
 	 	 	 / /   l o n g  
 	 	 	 l i s t [ i ] . p o s i t i o n I d       =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ;  
 	 	 	 l i s t [ i ] . m a g i c                 =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ;  
 	 	 	 l i s t [ i ] . t i c k e t               =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ;  
 	 	 	 l i s t [ i ] . t i m e M s               =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ M S C ) ;  
 	 	 	 l i s t [ i ] . t i m e U p d a t e M s   =   ( l o n g ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ U P D A T E _ M S C ) ;  
  
 	 	 	 / /   d a t e t i m e  
 	 	 	 l i s t [ i ] . t i m e                       =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E ) ;  
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   ( d a t e t i m e ) 0 ;  
 	 	 	 l i s t [ i ] . t i m e U p d a t e           =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E _ U P D A T E ) ;  
  
 	 	 	 / /   d o u b l e  
 	 	 	 l i s t [ i ] . p r i c e C u r r e n t   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ C U R R E N T ) ;  
 	 	 	 l i s t [ i ] . p r i c e O p e n         =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ O P E N ) ;  
 	 	 	 l i s t [ i ] . p r o f i t               =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R O F I T ) ;  
 	 	 	 l i s t [ i ] . s t o p L o s s           =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) ;  
 	 	 	 l i s t [ i ] . s w a p                   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S W A P ) ;  
 	 	 	 l i s t [ i ] . t a k e P r o f i t       =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) ;  
 	 	 	 l i s t [ i ] . v o l u m e               =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ;  
  
 	 	 	 / /   s t r i n g  
 	 	 	 l i s t [ i ] . e x t e r n a l I d   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ E X T E R N A L _ I D ) ;  
 	 	 	 l i s t [ i ] . c o m m e n t         =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ;  
 	 	 	 l i s t [ i ] . s y m b o l           =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ;  
  
 	 	 	 / /   e x t r a c t   e x p i r a t i o n  
 	 	 	 l i s t [ i ] . t i m e E x p i r a t i o n   =   e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( l i s t [ i ] . t i c k e t ) ;  
  
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 	 {  
 	 	 	 	 l i s t [ i ] . s t o p L o s s       =   V i r t u a l S t o p s D r i v e r ( " g e t   s l " ,   l i s t [ i ] . t i c k e t ) ;  
 	 	 	 	 l i s t [ i ] . t a k e P r o f i t   =   V i r t u a l S t o p s D r i v e r ( " g e t   t p " ,   l i s t [ i ] . t i c k e t ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   h o w M a n y A d d e d ;  
 	 }  
  
 	 / * *  
 	 *   T h i s   m e t h o d   l o o p s   t h r o u g h   2   l i s t s   o f   i t e m s   a n d   f i n d s   a   d i f f e r e n c e .   T h i s   d i f f e r e n c e   i s   t h e   e v e n t .  
 	 *   " I t e m s "   a r e   e i t h e r   p e n d i n g   o r d e r s   o r   p o s i t i o n s .  
 	 *  
 	 *   R e t u r n s   t r u e   i f   a n   e v e n t   i s   d e t e c t e d   o r   f a l s e   i f   n o t .  
 	 * /  
 	 t e m p l a t e < t y p e n a m e   I T E M S _ T Y P E >    
 	 b o o l   D e t e c t E v e n t ( I T E M S _ T Y P E   & p r e v i o u s I t e m s [ ] ,   I T E M S _ T Y P E   & c u r r e n t I t e m s [ ] )  
 	 {  
 	 	 I T E M S _ T Y P E   i t e m ;  
 	 	 s t r i n g   r e a s o n       =   " " ;  
 	 	 s t r i n g   d e t a i l       =   " " ;  
 	 	 i n t   c o u n t B e f o r e   =   A r r a y S i z e ( p r e v i o u s I t e m s ) ;  
 	 	 i n t   c o u n t N o w         =   A r r a y S i z e ( c u r r e n t I t e m s ) ;  
  
 	 	 / /   N e w  
 	 	 i f   ( c o u n t B e f o r e   <   c o u n t N o w )  
 	 	 {  
 	 	 	 i t e m       =   c u r r e n t I t e m s [ c o u n t N o w   -   1 ] ;  
 	 	 	 r e a s o n   =   " n e w " ;  
 	 	 }  
 	 	 / /   G o n e  
 	 	 e l s e   i f   ( c o u n t B e f o r e   >   c o u n t N o w )  
 	 	 {  
 	 	 	 i t e m       =   F i n d M i s s i n g I t e m ( p r e v i o u s I t e m s ,   c u r r e n t I t e m s ) ;  
 	 	 	 r e a s o n   =   " c l o s e " ;  
  
 	 	 	 / /   A f t e r   t h i s   f u n c t i o n   e n d s ,   p o s i t i o n s   i s   c o p i e d   o v e r   p r e v i o u s P o s i t i o n s ,  
 	 	 	 / /   H o w e v e r ,   s o m e t i m e s   w e   c a n   h a v e   m u l t i p l e   e v e n t s   h a p p e n e d   a t   o n c e .  
 	 	 	 / /   I n   t h i s   c a s e   w e   d o n ' t   w a n t   t h e   f r e s h   p o s i t i o n s   t o   b e   c o p i e d   o v e r   p r e v i o u s P o s i t i o n s ,  
 	 	 	 / /   b e c a u s e   w e   c o u l d   l o s e   t h e   d e t e c t i o n   o f   s o m e   u n - d e t e c t e d   e v e n t .   R a t h e r ,  
 	 	 	 / /   w e   w a n t   t o   d e l e t e   t h e   i t e m   t h a t   w e   j u s t   d e t e c t e d   f r o m   p r e v i o u s P o s i t i o n s ,  
 	 	 	 / /   c o p y   i t   o v e r   p o s i t i o n s ,   a n d   t h e n   p o s i t i o n s   w o u l d   b e   c o p i e d   o v e r   p r e v i o u s P o s i t i o n s ,  
 	 	 	 / /   w h i c h   w o u l d   t e c h n i c a l l y   n o t   c h a n g e   i t .  
 	 	 	 D e l e t e I t e m ( p r e v i o u s I t e m s ,   i t e m ) ;  
 	 	 	 C o p y L i s t ( p o s i t i o n s ,   p r e v i o u s P o s i t i o n s ) ;  
 	 	 }  
 	 	 / /   S a m e   = >   c h e c k   f o r   m o d i f i c a t i o n s  
 	 	 e l s e   i f   ( c o u n t B e f o r e   = =   c o u n t N o w   & &   c o u n t N o w   >   0 )  
 	 	 {  
 	 	 	 i n t   c o u n t   =   A r r a y S i z e ( c u r r e n t I t e m s ) ;  
  
 	 	 	 f o r   ( i n t   i n d e x   =   0 ;   i n d e x   <   c o u n t ;   i n d e x + + )  
 	 	 	 {  
 	 	 	 	 i t e m   =   c u r r e n t I t e m s [ i n d e x ] ;  
 	 	 	 	 I T E M S _ T Y P E   p r e v i o u s   =   p r e v i o u s I t e m s [ i n d e x ] ;  
 	 	 	 	 I T E M S _ T Y P E   c u r r e n t     =   c u r r e n t I t e m s [ i n d e x ] ;  
  
 	 	 	 	 i f   ( p r e v i o u s . t i c k e t   ! =   c u r r e n t . t i c k e t )  
 	 	 	 	 {  
 	 	 	 	 	 / /   T y p e   = >   v o l u m e   m o d i f i e d  
 	 	 	 	 	 i f   ( p r e v i o u s . p o s i t i o n I d   = =   c u r r e n t . p o s i t i o n I d )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e a s o n   =   " r e v e r s e " ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / /   W e   c a n   e n d   u p   h e r e   i f   a   p o s i t i o n   w a s   c l o s e d  
 	 	 	 	 	 	 / /   a n d   a   n e w   o n e   w a s   c r e a t e d   a t   t h e   s a m e   t i m e .  
 	 	 	 	 	 	 / /   T h i s   c a n   h a p p e n   w h e n   w e   h a v e   f o r   e x a m p l e   o n e   p o s i t i o n  
 	 	 	 	 	 	 / /   w i t h   S L   a n d   o n e   p e n d i n g   o r d e r   w i t h   O p e n P r i c e   e q u a l   t o   S L .  
  
 	 	 	 	 	 	 i t e m       =   F i n d M i s s i n g I t e m ( p r e v i o u s I t e m s ,   c u r r e n t I t e m s ) ;  
 	 	 	 	 	 	 r e a s o n   =   " c l o s e " ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 / /   R e m o v e   t h e   i t e m   t h a t   w e   j u s t   d e t e c t e d .   B u t   t h e r e   i s   a l s o  
 	 	 	 	 	 	 / /   a   " n e w "   e v e n t   t h a t   m u s t   b e   d e t e c t e d ,   a n d   f o r   t h i s   s e t  
 	 	 	 	 	 	 / /   " p o s i t i o n s "   t o   b e   " p r e v i o u s P o s i t i o n s "   w i t h   t h e   d e l e t e d   i t e m .  
 	 	 	 	 	 	 D e l e t e I t e m ( p r e v i o u s I t e m s ,   i t e m ) ;  
 	 	 	 	 	 	 C o p y L i s t ( p o s i t i o n s ,   p r e v i o u s P o s i t i o n s ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
  
 	 	 	 	 i f   ( p r e v i o u s . v o l u m e   ! =   c u r r e n t . v o l u m e )  
 	 	 	 	 {  
 	 	 	 	 	 / /   V o l u m e   i n c r e m e n t  
 	 	 	 	 	 i f   ( p r e v i o u s . v o l u m e   <   c u r r e n t . v o l u m e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e a s o n   =   " i n c r e m e n t " ;  
  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 	 / /   V o l u m e   d e c r e m e n t  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e a s o n   =   " d e c r e m e n t " ;  
  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
  
 	 	 	 	 / /   S L   &   T P   m o d i f i e d  
 	 	 	 	 i f   (  
 	 	 	 	 	       p r e v i o u s . s t o p L o s s   ! =   c u r r e n t . s t o p L o s s  
 	 	 	 	 	 & &   p r e v i o u s . t a k e P r o f i t   ! =   c u r r e n t . t a k e P r o f i t  
 	 	 	 	 )   {  
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ;  
 	 	 	 	 	 d e t a i l   =   " s l t p " ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 / /   S L   m o d i f i e d  
 	 	 	 	 e l s e   i f   ( p r e v i o u s . s t o p L o s s   ! =   c u r r e n t . s t o p L o s s )  
 	 	 	 	 {  
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ;  
 	 	 	 	 	 d e t a i l   =   " s l " ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 / /   T P   m o d i f i e d  
 	 	 	 	 e l s e   i f   ( p r e v i o u s . t a k e P r o f i t   ! =   c u r r e n t . t a k e P r o f i t )  
 	 	 	 	 {  
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ;  
 	 	 	 	 	 d e t a i l   =   " t p " ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( p r e v i o u s . t i m e E x p i r a t i o n   ! =   c u r r e n t . t i m e E x p i r a t i o n )  
 	 	 	 	 {  
 	 	 	 	 	 r e a s o n   =   " m o d i f y " ;  
 	 	 	 	 	 d e t a i l   =   " e x p i r a t i o n " ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( r e a s o n   = =   " " )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 U p d a t e V a l u e s ( i t e m ,   r e a s o n ,   d e t a i l ) ;  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 / * *  
 	 *   F r o m   t h e   l i s t   o f   p r e v i o u s   o r d e r s   o r   p o s i t i o n s ,   f i n d   a n d   r e m o v e   t h e  
 	 *   p r o v i d e d   i t e m .  
 	 * /  
 	 t e m p l a t e < t y p e n a m e   T >    
 	 b o o l   D e l e t e I t e m ( T   & l i s t [ ] ,   T   & i t e m )  
 	 {  
 	 	 i n t   l i s t C o u n t   =   A r r a y S i z e ( l i s t ) ;  
 	 	 b o o l   r e m o v e d   =   f a l s e ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   l i s t C o u n t ;   i + + )  
 	 	 {  
 	 	 	 i f   ( l i s t [ i ] . t i c k e t   = =   i t e m . t i c k e t )   {  
 	 	 	 	 A r r a y S t r i p K e y ( l i s t ,   i ) ;  
 	 	 	 	 r e m o v e d   =   t r u e ;  
  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   r e m o v e d ;  
 	 }  
  
 	 / * *  
 	 *   F r o m   t h e   l i s t   o f   p r e v i o u s   o r d e r s   o r   p o s i t i o n s ,   f i n d   t h e   i t e m   t h a t   i s   m i s s i n g  
 	 *   i n   t h e   l i s t   o f   c u r r e n t   o r d e r s   o r   p o s i t i o n s .  
 	 *  
 	 *   R e t u r n   t h e   t i c k e t   n u m b e r   o r   0   i f   n o t h i n g   i s   f o u n d .  
 	 * /  
 	 t e m p l a t e < t y p e n a m e   T >    
 	 T   F i n d M i s s i n g I t e m ( T   & p r e v i o u s [ ] ,   T   & c u r r e n t [ ] )  
 	 {  
 	 	 i n t   p r e v i o u s C o u n t   =   A r r a y S i z e ( p r e v i o u s ) ;  
 	 	 i n t   c u r r e n t C o u n t     =   A r r a y S i z e ( c u r r e n t ) ;  
 	 	 T   i t e m ;  
  
 	 	 l o n g   t i c k e t   =   0 ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   p r e v i o u s C o u n t ;   i + + )  
 	 	 {  
 	 	 	 b o o l   f o u n d   =   f a l s e ;  
  
 	 	 	 f o r   ( i n t   j   =   0 ;   j   <   c u r r e n t C o u n t ;   j + + )  
 	 	 	 {  
 	 	 	 	 i f   ( p r e v i o u s [ i ] . t i c k e t   = =   c u r r e n t [ j ] . t i c k e t )  
 	 	 	 	 {  
 	 	 	 	 	 f o u n d   =   t r u e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   ( f o u n d   = =   f a l s e )  
 	 	 	 {  
 	 	 	 	 i t e m   =   p r e v i o u s [ i ] ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   i t e m ;  
 	 }  
  
 	 / * *  
 	 *   O v e r l o a d e d   m e t h o d   1   o f   2  
 	 * /  
 	 v o i d   U p d a t e V a l u e s ( P o s i t i o n   & i t e m ,   s t r i n g   r e a s o n ,   s t r i n g   d e t a i l )  
 	 {  
 	 	 l o n g   t i c k e t                 =   i t e m . t i c k e t ;  
 	 	 d a t e t i m e   t i m e O p e n     =   i t e m . t i m e ;  
 	 	 d a t e t i m e   t i m e C l o s e   =   ( d a t e t i m e ) 0 ;  
 	 	 d o u b l e   p r i c e O p e n       =   i t e m . p r i c e O p e n ;  
 	 	 d o u b l e   p r i c e C l o s e     =   i t e m . p r i c e C u r r e n t ;  
 	 	 d o u b l e   p r o f i t             =   i t e m . p r o f i t ;  
 	 	 d o u b l e   s w a p                 =   i t e m . s w a p ;  
 	 	 d o u b l e   c o m m i s s i o n     =   0 . 0 ;  
 	 	 d o u b l e   v o l u m e             =   i t e m . v o l u m e ;  
  
 	 	 i f   ( r e a s o n   = =   " c l o s e "   | |   r e a s o n   = =   " d e c r e m e n t " )  
 	 	 {  
 	 	 	 i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( i t e m . p o s i t i o n I d ) )  
 	 	 	 {  
 	 	 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 	 	 	 i f   ( t o t a l   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 l o n g   f i r s t T i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
 	 	 	 	 	 l o n g   l a s t T i c k e t     =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( t o t a l   -   1 ) ;  
  
 	 	 	 	 	 / /   T i c k e t   i s   t h e   t i c k e t   o f   t h e   p r e v i o u s   d e a l ,   t h e   o n e   b e f o r e   t h e   l a s t   o n e  
 	 	 	 	 	 t i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( t o t a l   -   2 ) ;  
  
 	 	 	 	 	 / /   O p e n   T i m e   a n d   O p e n   P r i c e   -   g e t   t h e m   f r o m   t h e   v e r y   f i r s t   d e a l  
 	 	 	 	 	 p r i c e O p e n   =   H i s t o r y D e a l G e t D o u b l e ( f i r s t T i c k e t ,   D E A L _ P R I C E ) ;  
 	 	 	 	 	 t i m e O p e n     =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( f i r s t T i c k e t ,   D E A L _ T I M E ) ;  
  
 	 	 	 	 	 / /   C l o s e   T i m e   -   g e t   i t   f r o m   t h e   v e r y   l a s t   d e a l  
 	 	 	 	 	 t i m e C l o s e     =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( l a s t T i c k e t ,   D E A L _ T I M E ) ;  
 	 	 	 	 	 p r i c e C l o s e   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ P R I C E ) ;  
  
 	 	 	 	 	 p r o f i t           =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ P R O F I T ) ;  
 	 	 	 	 	 s w a p               =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ S W A P ) ;  
 	 	 	 	 	 c o m m i s s i o n   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ C O M M I S S I O N ) ;  
  
 	 	 	 	 	 v o l u m e   =   H i s t o r y D e a l G e t D o u b l e ( l a s t T i c k e t ,   D E A L _ V O L U M E ) ;  
  
 	 	 	 	 	 / /   F i n d   w h y   t h e   p o s i t i o n   h a s   b e e n   c l o s e d  
 	 	 	 	 	 i f   ( d e t a i l   = =   " " )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (  
 	 	 	 	 	 	 	 i t e m . t i m e E x p i r a t i o n   >   0  
 	 	 	 	 	 	 	 & &   i t e m . t i m e E x p i r a t i o n   < =   t i m e C l o s e  
 	 	 	 	 	 	 )   {  
 	 	 	 	 	 	 	 d e t a i l   =   " e x p i r a t i o n " ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
  
 	 	 	 	 	 i f   ( d e t a i l   = =   " " )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 E N U M _ D E A L _ R E A S O N   d e a l R e a s o n   =   ( E N U M _ D E A L _ R E A S O N ) H i s t o r y D e a l G e t I n t e g e r ( l a s t T i c k e t ,   D E A L _ R E A S O N ) ;  
 	  
 	 	 	 	 	 	 s w i t c h   ( d e a l R e a s o n )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ S L :   d e t a i l   =   " s l " ;   b r e a k ;  
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ T P :   d e t a i l   =   " t p " ;   b r e a k ;  
 	 	 	 	 	 	 	 c a s e   D E A L _ R E A S O N _ S O :   d e t a i l   =   " s o " ;   b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 i n t   i   =   e v e n t V a l u e s Q u e u e I n d e x ;  
  
 	 	 e v e n t V a l u e s [ i ] . r e a s o n   =   r e a s o n ;  
 	 	 e v e n t V a l u e s [ i ] . d e t a i l   =   d e t a i l ;  
  
 	 	 e v e n t V a l u e s [ i ] . p r i c e C l o s e           =   p r i c e C l o s e ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e C l o s e             =   t i m e C l o s e ;  
 	 	 e v e n t V a l u e s [ i ] . c o m m e n t                 =   i t e m . c o m m e n t ;  
 	 	 e v e n t V a l u e s [ i ] . c o m m i s s i o n           =   c o m m i s s i o n ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e E x p i r a t i o n   =   i t e m . t i m e E x p i r a t i o n ;  
 	 	 e v e n t V a l u e s [ i ] . v o l u m e                   =   v o l u m e ;  
 	 	 e v e n t V a l u e s [ i ] . m a g i c                     =   i t e m . m a g i c ;  
 	 	 e v e n t V a l u e s [ i ] . p r i c e O p e n             =   p r i c e O p e n ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e O p e n               =   t i m e O p e n ;  
 	 	 e v e n t V a l u e s [ i ] . p r o f i t                   =   p r o f i t ;  
 	 	 e v e n t V a l u e s [ i ] . s t o p L o s s               =   i t e m . s t o p L o s s ;  
 	 	 e v e n t V a l u e s [ i ] . s w a p                       =   s w a p ;  
 	 	 e v e n t V a l u e s [ i ] . s y m b o l                   =   i t e m . s y m b o l ;  
 	 	 e v e n t V a l u e s [ i ] . t a k e P r o f i t           =   i t e m . t a k e P r o f i t ;  
 	 	 e v e n t V a l u e s [ i ] . t i c k e t                   =   t i c k e t ;  
 	 	 e v e n t V a l u e s [ i ] . t y p e                       =   i t e m . t y p e ;  
  
 	 	 i f   ( d e b u g )  
 	 	 {  
 	 	 	 P r i n t U p d a t e d V a l u e s ( ) ;  
 	 	 }  
 	 }  
  
 	 / * *  
 	 *   O v e r l o a d e d   m e t h o d   2   o f   2  
 	 * /  
 	 v o i d   U p d a t e V a l u e s ( P e n d i n g O r d e r   & i t e m ,   s t r i n g   r e a s o n ,   s t r i n g   d e t a i l )  
 	 {  
 	 	 d a t e t i m e   t i m e E x p i r a t i o n   =   i t e m . t i m e E x p i r a t i o n ;  
  
 	 	 / /   W h e n   t h e   l i f e t i m e   o f   t h e   o r d e r   i s   O R D E R _ T I M E _ D A Y ,  
 	 	 / /   t h e   e x p i r a t i o n   ( O R D E R _ T I M E _ E X P I R A T I O N )   e q u a l s   t o   t h e   t i m e   o f   o p e n i n g .  
 	 	 / /   H e r e   w e   f i x   t h i s .  
 	 	 i f   ( i t e m . t y p e T i m e   = =   O R D E R _ T I M E _ D A Y )  
 	 	 {  
 	 	 	 t i m e E x p i r a t i o n   =   ( d a t e t i m e ) ( M a t h F l o o r ( ( ( d o u b l e ) i t e m . t i m e S e t u p   +   8 6 4 0 0 . 0 )   /   8 6 4 0 0 . 0 )   *   8 6 4 0 0 . 0 ) ;  
 	 	 }  
  
 	 	 i n t   i   =   e v e n t V a l u e s Q u e u e I n d e x ;  
  
 	 	 e v e n t V a l u e s [ i ] . r e a s o n   =   r e a s o n ;  
 	 	 e v e n t V a l u e s [ i ] . d e t a i l   =   d e t a i l ;  
  
 	 	 e v e n t V a l u e s [ i ] . p r i c e C l o s e           =   i t e m . p r i c e C u r r e n t ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e C l o s e             =   i t e m . t i m e D o n e ;  
 	 	 e v e n t V a l u e s [ i ] . c o m m e n t                 =   i t e m . c o m m e n t ;  
 	 	 e v e n t V a l u e s [ i ] . c o m m i s s i o n           =   0 . 0 ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e E x p i r a t i o n   =   t i m e E x p i r a t i o n ;  
 	 	 e v e n t V a l u e s [ i ] . v o l u m e                   =   i t e m . v o l u m e ;  
 	 	 e v e n t V a l u e s [ i ] . m a g i c                     =   i t e m . m a g i c ;  
 	 	 e v e n t V a l u e s [ i ] . p r i c e O p e n             =   i t e m . p r i c e O p e n ;  
 	 	 e v e n t V a l u e s [ i ] . t i m e O p e n               =   i t e m . t i m e S e t u p ;  
 	 	 e v e n t V a l u e s [ i ] . p r o f i t                   =   0 . 0 ;  
 	 	 e v e n t V a l u e s [ i ] . s t o p L o s s               =   i t e m . s t o p L o s s ;  
 	 	 e v e n t V a l u e s [ i ] . s w a p                       =   0 . 0 ;  
 	 	 e v e n t V a l u e s [ i ] . s y m b o l                   =   i t e m . s y m b o l ;  
 	 	 e v e n t V a l u e s [ i ] . t a k e P r o f i t           =   i t e m . t a k e P r o f i t ;  
 	 	 e v e n t V a l u e s [ i ] . t i c k e t                   =   i t e m . t i c k e t ;  
 	 	 e v e n t V a l u e s [ i ] . t y p e                       =   i t e m . t y p e ;  
  
 	 	 i f   ( d e b u g )  
 	 	 {  
 	 	 	 P r i n t U p d a t e d V a l u e s ( ) ;  
 	 	 }  
 	 }  
  
 	 v o i d   P r i n t U p d a t e d V a l u e s ( )  
 	 {  
 	 	 P r i n t (  
 	 	 	 "   < < < \ n " ,  
 	 	 	 "   |   r e a s o n :   " ,   e _ R e a s o n ( ) ,  
 	 	 	 "   |   d e t a i l :   " ,   e _ R e a s o n D e t a i l ( ) ,  
 	 	 	 "   |   t i c k e t :   " ,   e _ a t t r T i c k e t ( ) ,  
 	 	 	 "   |   t y p e :   " ,   E n u m T o S t r i n g ( ( E N U M _ O R D E R _ T Y P E ) e _ a t t r T y p e ( ) ) ,  
 	 	 	 " \ n " ,  
 	 	 	 "   |   o p e n T i m e   :   " ,   e _ a t t r O p e n T i m e ( ) ,  
 	 	 	 "   |   o p e n P r i c e   :   " ,   e _ a t t r O p e n P r i c e ( ) ,  
 	 	 	 " \ n " ,  
 	 	 	 "   |   c l o s e T i m e :   " ,   e _ a t t r C l o s e T i m e ( ) ,  
 	 	 	 "   |   c l o s e P r i c e :   " ,   e _ a t t r C l o s e P r i c e ( ) ,  
 	 	 	 " \ n " ,  
 	 	 	 "   |   v o l u m e :   " ,   e _ a t t r L o t s ( ) ,  
 	 	 	 "   |   s l :   " ,   e _ a t t r S t o p L o s s ( ) ,  
 	 	 	 "   |   t p :   " ,   e _ a t t r T a k e P r o f i t ( ) ,  
 	 	 	 "   |   p r o f i t :   " ,   e _ a t t r P r o f i t ( ) ,  
 	 	 	 "   |   s w a p :   " ,   e _ a t t r S w a p ( ) ,  
 	 	 	 "   |   e x p :   " ,   e _ a t t r E x p i r a t i o n ( ) ,  
 	 	 	 "   |   c o m m e n t :   " ,   e _ a t t r C o m m e n t ( ) ,  
 	 	 	 " \ n   > > > "  
 	 	 ) ;  
 	 }  
  
 	 i n t   A d d E v e n t V a l u e s ( )  
 	 {  
 	 	 e v e n t V a l u e s Q u e u e I n d e x + + ;  
 	 	 A r r a y R e s i z e ( e v e n t V a l u e s ,   e v e n t V a l u e s Q u e u e I n d e x   +   1 ) ;  
  
 	 	 r e t u r n   e v e n t V a l u e s Q u e u e I n d e x ;  
 	 }  
  
 	 i n t   R e m o v e E v e n t V a l u e s ( )  
 	 {  
 	 	 i f   ( e v e n t V a l u e s Q u e u e I n d e x   = =   - 1 )  
 	 	 {  
 	 	 	 P r i n t ( " C a n n o t   r e m o v e   e v e n t   v a l u e s ,   a d d   t h e m   f i r s t .   ( i n   f u n c t i o n   " ,   _ _ F U N C T I O N _ _ ,   " ) " ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 e v e n t V a l u e s Q u e u e I n d e x - - ;  
 	 	 	 A r r a y R e s i z e ( e v e n t V a l u e s ,   e v e n t V a l u e s Q u e u e I n d e x   +   1 ) ;  
 	 	 }  
  
 	 	 r e t u r n   e v e n t V a l u e s Q u e u e I n d e x ;  
 	 }  
  
 p u b l i c :  
 	 / * *  
 	 *   D e f a u l t   c o n s t r u c t o r  
 	 * /  
 	 O n T r a d e E v e n t D e t e c t o r ( v o i d )  
 	 {  
 	 	 d e b u g   =   f a l s e ;  
 	 	 e v e n t V a l u e s Q u e u e I n d e x   =   - 1 ;  
 	 } ;  
  
 	 b o o l   S t a r t ( )  
 	 {  
 	 	 A d d E v e n t V a l u e s ( ) ;  
  
 	 	 M a k e L i s t O f ( p o s i t i o n s ) ;  
 	 	 M a k e L i s t O f ( p e n d i n g O r d e r s ) ;  
  
 	 	 b o o l   s u c c e s s   =   f a l s e ;  
  
 	 	 i f   ( ! s u c c e s s )   s u c c e s s   =   D e t e c t E v e n t ( p r e v i o u s P o s i t i o n s ,   p o s i t i o n s ) ;  
  
 	 	 i f   ( ! s u c c e s s )   s u c c e s s   =   D e t e c t E v e n t ( p r e v i o u s P e n d i n g O r d e r s ,   p e n d i n g O r d e r s ) ;  
  
 	 	 C o p y L i s t ( p r e v i o u s P o s i t i o n s ,   p o s i t i o n s ) ;  
 	 	 C o p y L i s t ( p r e v i o u s P e n d i n g O r d e r s ,   p e n d i n g O r d e r s ) ;  
  
 	 	 r e t u r n   s u c c e s s ;  
 	 }  
  
 	 v o i d   E n d ( )  
 	 {  
 	 	 R e m o v e E v e n t V a l u e s ( ) ;  
 	 }  
  
 	 s t r i n g   E v e n t V a l u e R e a s o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . r e a s o n ; }  
 	 s t r i n g   E v e n t V a l u e D e t a i l ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . d e t a i l ; }  
  
 	 i n t   E v e n t V a l u e T y p e ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t y p e ; }  
  
 	 d a t e t i m e   E v e n t V a l u e T i m e C l o s e ( )             { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e C l o s e ; }  
 	 d a t e t i m e   E v e n t V a l u e T i m e O p e n ( )               { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e O p e n ; }  
 	 d a t e t i m e   E v e n t V a l u e T i m e E x p i r a t i o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i m e E x p i r a t i o n ; }  
  
 	 l o n g   E v e n t V a l u e M a g i c ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . m a g i c ; }  
 	 l o n g   E v e n t V a l u e T i c k e t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t i c k e t ; }  
  
 	 d o u b l e   E v e n t V a l u e C o m m i s s i o n ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . c o m m i s s i o n ; }  
 	 d o u b l e   E v e n t V a l u e P r i c e O p e n ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r i c e O p e n ; }  
 	 d o u b l e   E v e n t V a l u e P r i c e C l o s e ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r i c e C l o s e ; }  
 	 d o u b l e   E v e n t V a l u e P r o f i t ( )           { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . p r o f i t ; }  
 	 d o u b l e   E v e n t V a l u e S t o p L o s s ( )       { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s t o p L o s s ; }  
 	 d o u b l e   E v e n t V a l u e S w a p ( )               { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s w a p ; }  
 	 d o u b l e   E v e n t V a l u e T a k e P r o f i t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . t a k e P r o f i t ; }  
 	 d o u b l e   E v e n t V a l u e V o l u m e ( )           { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . v o l u m e ; }  
  
 	 s t r i n g   E v e n t V a l u e C o m m e n t ( )   { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . c o m m e n t ; }  
 	 s t r i n g   E v e n t V a l u e S y m b o l ( )     { r e t u r n   e v e n t V a l u e s [ e v e n t V a l u e s Q u e u e I n d e x ] . s y m b o l ; }  
 } ;  
  
 O n T r a d e E v e n t D e t e c t o r   o n T r a d e E v e n t D e t e c t o r ;  
  
 / * *  
 *   W h e n   a   t r a d e   i s   a   c h i l d ,   i t s   O p e n   P r i c e   i s   t h e   s a m e   a s   t h e   O p e n   P r i c e   o f   t h e   m o s t   p a r e n t   t r a d e .  
 *   T h i s   f u n c t i o n   w i l l   r e t u r n   t h e   a c t u a l   O p e n   P r i c e   o f   t h i s   p a r e n t   t r a d e ,   w h i c h   w o u l d   b e   t h e   C l o s e  
 *   P r i c e   o f   t h e   p r e v i o u s   c h i l d   t r a d e ,   o r   t h e   p a r e n t   t r a d e   i f   t h i s   i s   t h e   o n l y   c h i l d ,   o r   i t s e l f   i f  
 *   i t ' s   t h e   t r a d e   i s   n o t   a   c h i l d .  
 * /  
 d o u b l e   O r d e r C h i l d O p e n P r i c e ( )   {  
 	 l o n g   t i c k e t   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ;  
 	 l o n g   p o s i t i o n I D   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ;  
  
 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I D ) ;  
  
 	 d o u b l e   o p e n P r i c e   =   0 ;  
 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 i f   ( t o t a l   >   0 )   {  
 	 	 d o u b l e   o r d e r C l o s e P r i c e   =   H i s t o r y D e a l G e t D o u b l e ( H i s t o r y D e a l G e t T i c k e t ( t o t a l   - 1 ) ,   D E A L _ P R I C E ) ;  
 	 	 o p e n P r i c e   =   o r d e r C l o s e P r i c e ;  
 	 }  
  
 	 P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ;  
 	  
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
  
 	 r e t u r n   o p e n P r i c e ;  
 }  
  
 d o u b l e   O r d e r C l o s e P r i c e ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )  
 	 {  
 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y )  
 	 	 {  
 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ B I D ) ;  
 	 	 }  
 	 	 e l s e   i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ A S K ) ;  
 	 	 }  
 	 }  
 	 i f   ( t y p e   = =   3 )   {  
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ;  
 	 	 E N U M _ D E A L _ E N T R Y   d e a l E n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ E N T R Y ) ;  
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ;  
 	 	 d o u b l e   p r i c e   =   H i s t o r y D e a l G e t D o u b l e ( d e a l T i c k e t ,   D E A L _ P R I C E ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
 	 	  
 	 	 / /   S e a r c h   f o r   t h e   f i r s t   O U T   d e a l   a f t e r   t h i s   o n e   a n d   g e t   t h e   p r i c e   f r o m   i t  
  
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
 	  
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )   {  
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ;  
 	  
 	 	 	 i f   ( t i c k e t   = =   d e a l T i c k e t )   {  
 	 	 	 	 / /   G e t   t h e   c u r r e n t   v a l u e   i f   t h e   d e a l   i s   t h e   t h e   l a s t   o n e  
 	 	 	 	 i f   ( i   = =   t o t a l   -   1   & &   P o s i t i o n S e l e c t B y D e a l ( t i c k e t ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ B U Y )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p r i c e   =   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ B I D ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p r i c e   =   S y m b o l I n f o D o u b l e ( P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ,   S Y M B O L _ A S K ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	  
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T )   {  
 	 	 	 	 p r i c e   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ P R I C E ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 	  
 	 	 r e t u r n   p r i c e ;  
 	 }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ P R I C E ) ; }  
  
 	 r e t u r n ( O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ C U R R E N T ) ) ;  
 }  
  
 d a t e t i m e   O r d e r C l o s e T i m e ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )  
 	 {  
 	 	 r e t u r n   0 ;  
 	 }  
  
 	 i f   ( t y p e   = =   3 )  
 	 {  
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ;  
 	 	 E N U M _ D E A L _ E N T R Y   d e a l E n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ E N T R Y ) ;  
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ;  
 	 	 d a t e t i m e   t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ T I M E ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
  
 	 	 / /   S e a r c h   f o r   t h e   f i r s t   O U T   d e a l   a f t e r   t h i s   o n e   a n d   g e t   t h e   t i m e   f r o m   i t  
  
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )   {  
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ;  
  
 	 	 	 i f   ( t i c k e t   = =   d e a l T i c k e t )   {  
 	 	 	 	 i f   ( i   = =   t o t a l   -   1   & &   P o s i t i o n S e l e c t B y D e a l ( t i c k e t ) )  
 	 	 	 	 {  
 	 	 	 	 	 t i m e   =   ( d a t e t i m e ) 0 ;  
 	 	 	 	 }  
  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
  
 	 	 	 i f   ( H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y )   = =   D E A L _ E N T R Y _ O U T )   {  
 	 	 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T I M E ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
  
 	 	 r e t u r n   t i m e ;  
 	 }  
  
 	 i f   ( t y p e   = =   4 )  
 	 {  
 	 	 r e t u r n   ( d a t e t i m e ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ T I M E _ D O N E ) ;  
 	 }  
 	  
 	 r e t u r n   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ D O N E ) ;  
 }  
  
 s t r i n g   O r d e r C o m m e n t ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ,   O R D E R _ C O M M E N T ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( O r d e r T i c k e t ( ) ,   O R D E R _ C O M M E N T ) ; }  
  
 	 r e t u r n   O r d e r G e t S t r i n g ( O R D E R _ C O M M E N T ) ;  
 }  
  
 d o u b l e   O r d e r C o m m i s s i o n ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 ) { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ C O M M I S S I O N ) ; }  
 	 i f   ( t y p e   = =   3 ) { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) , D E A L _ C O M M I S S I O N ) ; }  
 	 i f   ( t y p e   = =   4 ) { r e t u r n   0 ; }  
  
 	 r e t u r n   0 ;  
 }  
  
 l o n g   O r d e r C r e a t e (  
 	 s t r i n g       s y m b o l           =   " " ,  
 	 i n t             t y p e               =   O R D E R _ T Y P E _ B U Y ,  
 	 d o u b l e       l o t s               =   0 ,  
 	 d o u b l e       o p                   =   0 ,  
 	 d o u b l e       s l l                 =   0 ,  
 	 d o u b l e       t p l                 =   0 ,  
 	 d o u b l e       s l p                 =   0 ,  
 	 d o u b l e       t p p                 =   0 ,  
 	 d o u b l e       s l i p p a g e       =   0 ,  
 	 u l o n g         m a g i c             =   0 ,  
 	 s t r i n g       c o m m e n t         =   N U L L ,  
 	 c o l o r         a r r o w c o l o r   =   c l r N O N E ,  
 	 d a t e t i m e   e x p i r a t i o n   =   0 ,  
 	 b o o l           o c o                 =   f a l s e  
 	 )  
 {  
 	 O n T r a d e ( ) ;   / /   W h e n   p o s i t i o n   i s   c l o s e d   b y   s l   o r   t p ,   t h i s   e v e n t   i s   n o t   f i r e d   ( b y   M e t a T r a d e r )   u n t i l   t h e   e n d   o f   t h e   t i c k ,   a n d   i f   a   n e w   p o s i t i o n   i s   o p e n e d ,   i t   w i l l   b e   m i s s e d .    
  
 	 u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ;   / /   u s e d   t o   m e a s u r e   s p e e d   o f   e x e c u t i o n   o f   t h e   o r d e r  
 	  
 	 b o o l   p l a c e E x p i r a t i o n O b j e c t   =   f a l s e ;   / /   w h e t h e r   o r   n o t   t o   c r e a t e   a n   o b j e c t   f o r   e x p i r a t i o n   f o r   t r a d e s  
  
 	 b o o l   c l o s i n g   =   f a l s e ;  
 	 d o u b l e   l o t s 0   =   0 ;  
 	 l o n g   t y p e 0       =   t y p e ;  
  
 	 i f   (  
 	 	       ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ N E T T I N G )  
 	 	 & &   ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 )  
 	 {  
 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l ) )  
 	 	 {  
 	 	 	 i f   ( ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E )   ! =   t y p e )  
 	 	 	 {  
 	 	 	 	 c l o s i n g   =   t r u e ;  
 	 	 	 }  
  
 	 	 	 l o t s 0   =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ;  
 	 	 	 t y p e 0   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ;  
 	 	 }  
 	 }  
  
 	 u l o n g   t i c k e t   =   - 1 ;  
  
 	 / /   c a l c u l a t e   b u y / s e l l   f l a g   ( 1   w h e n   B u y   o r   - 1   w h e n   S e l l )  
 	 i n t   b s   =   1 ;  
  
 	 i f   (  
 	 	       t y p e   = =   O R D E R _ T Y P E _ S E L L  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ S T O P  
 	 	 | |   t y p e   = =   O R D E R _ T Y P E _ S E L L _ L I M I T  
 	 )  
 	 {  
 	 	 b s   =   - 1 ;  
 	 }  
  
 	 i f   ( s y m b o l   = =   " " )   { s y m b o l   =   S y m b o l ( ) ; }  
  
 	 l o t s   =   A l i g n L o t s ( s y m b o l ,   l o t s ) ;  
  
 	 i n t   d i g i t s   =   0 ;  
 	 d o u b l e   a s k   =   0 ,   b i d   =   0 ,   p o i n t   =   0 ,   t i c k s i z e   =   0 ;  
 	 d o u b l e   s l   =   0 ,   t p   =   0 ;  
 	 d o u b l e   v s l   =   0 ,   v t p   =   0 ;  
 	 b o o l   s u c c e s s e d   =   f a l s e ;  
  
 	 / / - -   a t t e m p t s   t o   s e n d   p o s i t i o n / o r d e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 w h i l e   ( t r u e )  
 	 {  
 	 	 d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 	 a s k             =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 b i d             =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 	 	 p o i n t         =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 	 	 t i c k s i z e   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ T I C K _ S I Z E ) ;  
  
 	 	 / / -   n o t   e n o u g h   m o n e y   c h e c k :   f i x   m a x i m u m   p o s s i b l e   l o t   b y   m a r g i n   r e q u i r e d ,   o r   q u i t  
 	 	 i f   ( ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L )   & &   c l o s i n g   = =   f a l s e )  
 	 	 {  
 	 	 	 d o u b l e   L o t S t e p                   =   S y m b o l L o t S t e p ( s y m b o l ) ;  
 	 	 	 d o u b l e   M i n L o t s                   =   S y m b o l M i n L o t ( s y m b o l ) ;  
 	 	 	 d o u b l e   m a r g i n _ r e q u i r e d   =   0 ;  
 	 	 	 b o o l   o c m                               =   O r d e r C a l c M a r g i n ( ( E N U M _ O R D E R _ T Y P E ) t y p e ,   s y m b o l ,   1 ,   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ,   m a r g i n _ r e q u i r e d ) ;  
 	 	 	 s t a t i c   b o o l   n o t _ e n o u g h _ m e s s a g e   =   f a l s e ;  
  
 	 	 	 i f   ( m a r g i n _ r e q u i r e d   ! =   0 )  
 	 	 	 {  
 	 	 	 	 d o u b l e   m a x _ s i z e _ b y _ m a r g i n   =   A c c o u n t F r e e M a r g i n ( )   /   m a r g i n _ r e q u i r e d ;  
 	 	 	  
 	 	 	 	 i f   ( l o t s   >   m a x _ s i z e _ b y _ m a r g i n )  
 	 	 	 	 {  
 	 	 	 	 	 d o u b l e   l o t s _ o l d   =   l o t s ;  
 	 	 	 	 	 l o t s   =   m a x _ s i z e _ b y _ m a r g i n ;  
  
 	 	 	 	 	 i f   ( l o t s   <   M i n L o t s )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( n o t _ e n o u g h _ m e s s a g e   = =   f a l s e )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   : (   T h e   r o b o t   i s   s t i l l   w o r k i n g ,   w a i t i n g   f o r   s o m e   f u n d s   t o   a p p e a r . . . " ) ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 n o t _ e n o u g h _ m e s s a g e   =   t r u e ;  
  
 	 	 	 	 	 	 r e t u r n   - 1 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l o t s   =   M a t h F l o o r ( l o t s   /   L o t S t e p )   *   L o t S t e p ;  
 	 	 	 	 	 	 P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   "   +   D o u b l e T o S t r i n g ( l o t s _ o l d ,   2 )   +   " ,   t h e   v o l u m e   t o   t r a d e   w i l l   b e   t h e   m a x i m u m   p o s s i b l e   o f   "   +   D o u b l e T o S t r i n g ( l o t s ,   2 ) ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 n o t _ e n o u g h _ m e s s a g e   =   f a l s e ;  
 	 	 }  
  
 	 	 / /   f i x   t h e   c o m m e n t ,   b e c a u s e   i t   s e e m s   t h a t   t h e   c o m m e n t   i s   d e l e t e d   i f   i t s   l e n g h t   i s   >   3 1   s y m b o l s  
 	 	 i f   ( S t r i n g L e n ( c o m m e n t )   >   3 1 )  
 	 	 {  
 	 	 	 c o m m e n t   =   S t r i n g S u b s t r ( c o m m e n t ,   0 ,   3 1 ) ;  
 	 	 }  
  
 	 	 / / -   e x p i r a t i o n   f o r   t r a d e s  
 	 	 i f   ( t y p e   = =   P O S I T I O N _ T Y P E _ B U Y   | |   t y p e   = =   P O S I T I O N _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 i f   ( e x p i r a t i o n   >   0 )  
 	 	 	 {  
 	 	 	 	 / / -   b o   b r o k e r ?  
 	 	 	 	 i f   (  
 	 	 	 	 	       S t r i n g L e n ( s y m b o l )   >   6  
 	 	 	 	 	 & &   S t r i n g S u b s t r ( s y m b o l ,   S t r i n g L e n ( s y m b o l )   -   2 )   = =   " b o "  
 	 	 	 	 )   {  
 	 	 	 	 	 / / -   c o n v e r t   U N I X   t o   s e c o n d s  
 	 	 	 	 	 i f   ( e x p i r a t i o n   >   T i m e C u r r e n t ( ) - 1 0 0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 e x p i r a t i o n   =   e x p i r a t i o n   -   T i m e C u r r e n t ( ) ;  
 	 	 	 	 	 }  
  
 	 	 	 	 	 c o m m e n t   =   " B O   e x p : "   +   ( s t r i n g ) e x p i r a t i o n ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 / /   T h e   e x p i r a t i o n   i n   t h i s   c a s e   i s   a   v e r t i c a l   l i n e  
 	 	 	 	 	 / /   C o m m e n t   d o e s n ' t   a l w a y s   w o r k ,  
 	 	 	 	 	 / /   b e c a u s e   i t   c h a n g e s   w h e n   t h e   t r a d e   i s   p a r t i a l l y   c l o s e d  
 	 	 	 	 	 p l a c e E x p i r a t i o n O b j e c t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( t y p e   = =   O R D E R _ T Y P E _ B U Y   | |   t y p e   = =   O R D E R _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 o p   =   ( b s   >   0 )   ?   a s k   :   b i d ;  
 	 	 }  
  
 	 	 o p     =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ;  
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l ,   d i g i t s ) ;  
 	 	 t p l   =   N o r m a l i z e D o u b l e ( t p l ,   d i g i t s ) ;  
  
 	 	 i f   ( o p   <   0   | |   o p   > =   E M P T Y _ V A L U E   | |   s l l   <   0   | |   s l p   <   0   | |   t p l   <   0   | |   t p p   <   0 )  
 	 	 {  
 	 	 	 b r e a k ;  
 	 	 }  
  
 	 	 / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 v s l   =   0 ;  
 	 	 v t p   =   0 ;  
  
 	 	 s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ,   s l p ) ;  
  
 	 	 i f   ( s l   <   0 )   { b r e a k ; }  
  
 	 	 t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ,   t p p ) ;  
  
 	 	 i f   ( t p   <   0 )   { b r e a k ; }  
  
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 {  
 	 	 	 / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 	 v s l   =   s l ;  
 	 	 	 v t p   =   t p ;  
 	 	 	 s l   =   0 ;  
 	 	 	 t p   =   0 ;  
 	 	 	  
 	 	 	 d o u b l e   a s k b i d   =   ( b s   >   0 )   ?   a s k   :   b i d ;  
 	 	 	  
 	 	 	 i f   ( v s l   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " )  
 	 	 	 {  
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 s l   =   v s l   -   E M E R G E N C Y _ S T O P S _ R E L   *   M a t h A b s ( a s k b i d   -   v s l )   *   b s ;  
  
 	 	 	 	 	 i f   ( s l   < =   0 )   { s l   =   a s k b i d ; }  
  
 	 	 	 	 	 s l   =   s l   -   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D ,   s y m b o l )   *   b s ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   ( v t p   >   0   | |   U S E _ E M E R G E N C Y _ S T O P S   = =   " a l w a y s " )  
 	 	 	 {  
 	 	 	 	 i f   ( E M E R G E N C Y _ S T O P S _ R E L   >   0   | |   E M E R G E N C Y _ S T O P S _ A D D   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 t p   =   v t p   +   E M E R G E N C Y _ S T O P S _ R E L   *   M a t h A b s ( v t p   -   a s k b i d )   *   b s ;  
  
 	 	 	 	 	 i f   ( t p   < =   0 )   { t p   =   a s k b i d ; }  
  
 	 	 	 	 	 t p   =   t p   +   t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D ,   s y m b o l )   *   b s ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 v s l   =   N o r m a l i z e D o u b l e ( v s l ,   d i g i t s ) ;  
 	 	 	 v t p   =   N o r m a l i z e D o u b l e ( v t p ,   d i g i t s ) ;  
 	 	 }  
  
 	 	 s l   =   N o r m a l i z e D o u b l e ( s l ,   d i g i t s ) ;  
 	 	 t p   =   N o r m a l i z e D o u b l e ( t p ,   d i g i t s ) ;  
  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 M q l T r a d e R e q u e s t   r e q u e s t ;  
 	 	 M q l T r a d e R e s u l t   r e s u l t ;  
 	 	 M q l T r a d e C h e c k R e s u l t   c h e c k _ r e s u l t ;  
 	 	 Z e r o M e m o r y ( r e q u e s t ) ;  
 	 	 Z e r o M e m o r y ( r e s u l t ) ;  
 	 	 Z e r o M e m o r y ( c h e c k _ r e s u l t ) ;  
  
 	 	 E N U M _ S Y M B O L _ T R A D E _ E X E C U T I O N   e x e c   =   ( E N U M _ S Y M B O L _ T R A D E _ E X E C U T I O N ) S y m b o l I n f o I n t e g e r ( s y m b o l , S Y M B O L _ T R A D E _ E X E M O D E ) ;  
  
 	 	 / / - -   f i x   p r i c e s   b y   t i c k s i z e  
 	 	 o p   =   M a t h R o u n d ( o p   /   t i c k s i z e )   *   t i c k s i z e ;  
 	 	 s l   =   M a t h R o u n d ( s l   /   t i c k s i z e )   *   t i c k s i z e ;  
 	 	 t p   =   M a t h R o u n d ( t p   /   t i c k s i z e )   *   t i c k s i z e ;  
  
 	 	 r e q u e s t . s y m b o l           =   s y m b o l ;  
 	 	 r e q u e s t . t y p e               =   ( E N U M _ O R D E R _ T Y P E ) t y p e ;  
 	 	 r e q u e s t . v o l u m e           =   l o t s ;  
 	 	 r e q u e s t . p r i c e             =   o p ;  
 	 	 r e q u e s t . d e v i a t i o n     =   ( u l o n g ) ( s l i p p a g e   *   P i p V a l u e ( s y m b o l ) ) ;  
 	 	 r e q u e s t . s l                   =   s l ;  
 	 	 r e q u e s t . t p                   =   t p ;  
 	 	 r e q u e s t . c o m m e n t         =   c o m m e n t ;  
 	 	 r e q u e s t . m a g i c             =   m a g i c ;  
 	 	 r e q u e s t . t y p e _ t i m e     =   E x p i r a t i o n T y p e B y T i m e ( s y m b o l ,   e x p i r a t i o n ) ;  
 	 	 r e q u e s t . e x p i r a t i o n   =   e x p i r a t i o n ;  
  
 	 	 / / - -   r e q u e s t   a c t i o n  
 	 	 i f   ( t y p e   >   O R D E R _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 r e q u e s t . a c t i o n   =   T R A D E _ A C T I O N _ P E N D I N G ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e q u e s t . a c t i o n   =   T R A D E _ A C T I O N _ D E A L ;  
 	 	 }  
 	 	 / / - -   f i l l i n g   t y p e  
 	 	  
 	 	 / /   c h e c k   O R D E R _ F I L L I N G _ R E T U R N   f o r   p e n d i n g   o r d e r s   o n l y    
 	 	 i f   ( t y p e   >   O R D E R _ T Y P E _ S E L L )  
 	 	 {  
 	 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) )  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ;  
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ F O K ) )  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ;  
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ I O C ) )  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 / /   i n   c a s e   o f   p o s i t i o n s   I   w o u l d   c h e c k   f o r   S Y M B O L _ F I L L I N G _   a n d   t h e n   s e t   O R D E R _ F I L L I N G _  
 	 	 	 / /   t h i s   i s   b e c a u s e   i t   a p p e a r s   t h a t   I s F i l l i n g T y p e A l l o w e d ( )   w o r k s   c o r r e c t   w i t h   S Y M B O L _ F I L L I N G _ ,   b u t   t h e n   t h e   p o s i t i o n   w o r k s   c o r r e c t l y   w i t h   O R D E R _ F I L L I N G _  
 	 	 	 / /   F O K   a n d   I O C   i n t e g e r   v a l u e s   a r e   n o t   t h e   s a m e   f o r   O R D E R   a n d   S Y M B O L  
  
 	 	 	 i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ F O K ) )  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ F O K ;  
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   S Y M B O L _ F I L L I N G _ I O C ) )  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ I O C ;  
 	 	 	 e l s e   i f   ( I s F i l l i n g T y p e A l l o w e d ( s y m b o l ,   O R D E R _ F I L L I N G _ R E T U R N ) )   / /   j u s t   i n   c a s e  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ;  
 	 	 	 e l s e  
 	 	 	 	 r e q u e s t . t y p e _ f i l l i n g   =   O R D E R _ F I L L I N G _ R E T U R N ;  
 	 	 }  
  
 	 	 i f   ( ! O r d e r C h e c k ( r e q u e s t , c h e c k _ r e s u l t ) )  
 	 	 {  
 	 	 	 P r i n t ( " O r d e r C h e c k ( )   f a i l e d :   " ,   ( s t r i n g ) c h e c k _ r e s u l t . c o m m e n t ,   "   ( " ,   ( s t r i n g ) c h e c k _ r e s u l t . r e t c o d e ,   " ) " ) ;  
  
 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
  
 	 	 b o o l   s u c c e s s   =   O r d e r S e n d ( r e q u e s t ,   r e s u l t ) ;  
  
 	 	 / / - -   c h e c k   s e c u r i t y   f l a g   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   ( s u c c e s s e d   = =   t r u e )  
 	 	 {  
 	 	 	 P r i n t ( " T h e   p r o g r a m   w i l l   b e   r e m o v e d   b e c a u s e   o f   s u s p i c i o u s   a t t e m p t   t o   c r e a t e   a   n e w   p o s i t i o n " ) ;  
 	 	 	 E x p e r t R e m o v e ( ) ;  
 	 	 	 S l e e p ( 1 0 0 0 0 ) ;  
  
 	 	 	 b r e a k ;  
 	 	 }  
  
 	 	 i f   ( s u c c e s s )   { s u c c e s s e d   =   t r u e ; }  
  
 	 	 / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   (  
 	 	 	       s u c c e s s   = =   f a l s e  
 	 	 	 | |   (  
 	 	 	 	       r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E  
 	 	 	 	 & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ P L A C E D  
 	 	 	 	 & &   r e s u l t . r e t c o d e   ! =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L  
 	 	 	 )  
 	 	 )  
 	 	 {  
 	 	 	 s t r i n g   e r r m s g p f x   =   ( t y p e   >   O R D E R _ T Y P E _ S E L L )   ?   " N e w   p e n d i n g   o r d e r   e r r o r "   :   " N e w   p o s i t i o n   e r r o r " ;  
  
 	 	 	 i n t   e r r a c t i o n   =   C h e c k F o r T r a d i n g E r r o r ( r e s u l t . r e t c o d e ,   e r r m s g p f x ) ;  
  
 	 	 	 s w i t c h   ( e r r a c t i o n )  
 	 	 	 {  
 	 	 	 	 c a s e   0 :   b r e a k ;         / /   n o   e r r o r  
 	 	 	 	 c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r  
 	 	 	 	 c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r  
 	 	 	 }  
  
 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
  
 	 	 / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i f   (  
 	 	 	       r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E  
 	 	 	 | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ P L A C E D  
 	 	 	 | |   r e s u l t . r e t c o d e   = =   T R A D E _ R E T C O D E _ D O N E _ P A R T I A L  
 	 	 )   {  
 	 	 	 t i c k e t   =   r e s u l t . o r d e r ;  
 	 	 	 / / = =   W h a t e v e r   w a s   c r e a t e d ,   w e   n e e d   t o   w a i t   u n t i l   M T 5   u p d a t e s   i t ' s   c a c h e  
  
 	 	 	 / / - -   S y n c h r o n i z e :   P o s i t i o n  
 	 	 	 i f   ( t y p e   < =   O R D E R _ T Y P E _ S E L L )  
 	 	 	 {  
 	 	 	 	 i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ N E T T I N G )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( c l o s i n g   = =   f a l s e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / -   n e w   p o s i t i o n :   2   s i t u a t i o n s   h e r e   -   n e w   p o s i t i o n   o r   a d d   t o   p o s i t i o n  
 	 	 	 	 	 	 / / -   . . .   b e c a u s e   o f   t h a t   w e   w i l l   c h e c k   t h e   l o t   s i z e   i n s t e a d   o f   P o s i t i o n S e l e c t  
 	 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( l o t s 0   ! =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ) )   { b r e a k ; }  
 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / -   c l o s i n g   p o s i t i o n :   f u l l  
 	 	 	 	 	 	 i f   ( l o t s 0   = =   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   ( ! P o s i t i o n S e l e c t ( s y m b o l ) )   { b r e a k ; }  
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 / / -   c l o s i n g   p o s i t i o n :   p a r t i a l  
 	 	 	 	 	 	 e l s e   i f   ( l o t s 0   >   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( l o t s 0   ! =   N o r m a l i z e D o u b l e ( P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ,   5 ) ) )   { b r e a k ; }  
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   i f   ( l o t s 0   <   N o r m a l i z e D o u b l e ( r e s u l t . v o l u m e ,   5 ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 / / - -   p o s i t i o n   r e v e r s e  
 	 	 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t ( s y m b o l )   & &   ( t y p e 0   ! =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ) )   { b r e a k ; }  
 	 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( A c c o u n t I n f o I n t e g e r ( A C C O U N T _ M A R G I N _ M O D E )   = =   A C C O U N T _ M A R G I N _ M O D E _ R E T A I L _ H E D G I N G )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( c l o s i n g   = =   f a l s e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   { b r e a k ; }  
 	 	 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 / / - -   S y n c h r o n i z e :   O r d e r  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 w h i l e   ( t r u e )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( L o a d P e n d i n g O r d e r ( r e s u l t . o r d e r ) )   { b r e a k ; }  
 	 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / / - -   f i x   a r r o w   c o l o r   ( i t   w o r k s   o n l y   i n   v i s u a l   m o d e )  
 	 	 	 / /   T O D O :   t h i s   p i e c e   o f   c o d e   s l o w s   d o w n   t h e   b a c k t e s t   f o r   s o m e   r e a s o n  
 	 	 	 i f   ( 0   & &   M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )   & &   a r r o w c o l o r   ! =   C L R _ N O N E )  
 	 	 	 {  
 	 	 	 	 i f   ( t y p e   < =   O R D E R _ T Y P E _ S E L L )  
 	 	 	 	 {  
 	 	 	 	 	 u i n t   t 0   =   G e t T i c k C o u n t ( ) ;  
 	 	 	 	 	 E N U M _ O B J E C T   o b j T y p e   =   ( t y p e = = P O S I T I O N _ T Y P E _ B U Y )   ?   O B J _ A R R O W _ B U Y   :   O B J _ A R R O W _ S E L L ;  
  
 	 	 	 	 	 / /   w a i t   f o r   t h e   o b j e c t   t o   b e   c r e a t e d   ( M Q L 5   i s   a s y n c   e v e n   h e r e )  
 	 	 	 	 	 w h i l e ( t r u e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n t   t o t a l                 =   O b j e c t s T o t a l ( 0 , 0 , o b j T y p e ) ;  
 	 	 	 	 	 	 s t r i n g   n a m e             =   O b j e c t N a m e ( 0 , t o t a l - 1 , 0 , o b j T y p e ) ;  
 	 	 	 	 	 	 d a t e t i m e   o b j T i m e   =   ( d a t e t i m e ) O b j e c t G e t I n t e g e r ( 0 , n a m e , O B J P R O P _ T I M E ) ;  
  
 	 	 	 	 	 	 i f   ( o b j T i m e   >   T i m e C u r r e n t ( ) - 1 )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   ( S t r i n g F i n d ( n a m e ,   " # "   +   I n t e g e r T o S t r i n g ( t i c k e t )   +   "   " )   = =   0 )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O L O R , a r r o w c o l o r ) ;  
 	 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   ( G e t T i c k C o u n t ( )   -   t 0   >   1 0 0 0 )   b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 / /   P e n d i n g   o r d e r s   d o n ' t   h a v e   a r r o w s  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( t i c k e t   >   0 )  
 	 	 {  
 	 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 	 {  
 	 	 	 	 V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ;  
 	 	 	 }  
  
 	 	 	 / / - -   s h o w   s o m e   i n f o  
 	 	 	 d o u b l e   s l i p   =   0 ;  
  
 	 	 	 i f   ( L o a d P o s i t i o n ( t i c k e t ) )  
 	 	 	 {  
 	 	 	 	 i f   ( p l a c e E x p i r a t i o n O b j e c t )  
 	 	 	 	 {  
 	 	 	 	 	 e x p i r a t i o n W o r k e r . S e t E x p i r a t i o n ( t i c k e t ,   e x p i r a t i o n ) ;  
 	 	 	 	 }  
  
 	 	 	 	 i f   (  
 	 	 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )  
 	 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )  
 	 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N )  
 	 	 	 	 )   {  
 	 	 	 	 	 s l i p   =   O r d e r O p e n P r i c e ( )   -   o p ;  
  
 	 	 	 	 	 P r i n t (  
 	 	 	 	 	 	 " O p e r a t i o n   d e t a i l s :   S p e e d   " ,  
 	 	 	 	 	 	 ( G e t T i c k C o u n t ( )   -   t i m e 0 ) ,  
 	 	 	 	 	 	 "   m s   |   S l i p p a g e   " ,  
 	 	 	 	 	 	 D o u b l e T o S t r ( t o P i p s ( s l i p ,   s y m b o l ) ,   1 ) ,  
 	 	 	 	 	 	 "   p i p s "  
 	 	 	 	 	 ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 / / - -   f i x   s t o p s   i n   c a s e   o f   s l i p p a g e  
 	 	 	 i f   (  
 	 	 	 	       ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )  
 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )  
 	 	 	 	 & &   ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N )  
 	 	 	 )   {  
  
 	 	 	 	 s l i p   =   N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) ,   d i g i t s )   -   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ;  
  
 	 	 	 	 i f   ( s l i p   ! =   0   & &   ( O r d e r S t o p L o s s ( )   ! =   0   | |   O r d e r T a k e P r o f i t ( )   ! =   0 ) )  
 	 	 	 	 {  
 	 	 	 	 	 P r i n t ( " C o r r e c t i n g   s t o p s   b e c a u s e   o f   s l i p p a g e . . . " ) ;  
  
 	 	 	 	 	 s l   =   O r d e r S t o p L o s s ( ) ;  
 	 	 	 	 	 t p   =   O r d e r T a k e P r o f i t ( ) ;  
  
 	 	 	 	 	 i f   ( s l   ! =   0   | |   t p   ! =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( s l   ! =   0 )   { s l   =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( )   +   s l i p ,   d i g i t s ) ; }  
 	 	 	 	 	 	 i f   ( t p   ! =   0 )   { t p   =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( )   +   s l i p ,   d i g i t s ) ; }  
  
 	 	 	 	 	 	 M o d i f y O r d e r ( t i c k e t ,   O r d e r O p e n P r i c e ( ) ,   s l ,   t p ,   0 ,   0 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / / R e g i s t e r E v e n t ( " t r a d e " ) ;  
  
 	 	 	 b r e a k ;  
 	 	 }  
  
 	 	 b r e a k ;  
 	 }  
  
 	 i f   ( o c o   = =   t r u e   & &   t i c k e t   >   0 )  
 	 {  
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 	 {  
 	 	 	 s l   =   v s l ;  
 	 	 	 t p   =   v t p ;  
 	 	 }  
  
 	 	 s l   =   ( s l   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - s l ) ,   d i g i t s )   :   0 ;  
 	 	 t p   =   ( t p   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - t p ) ,   d i g i t s )   :   0 ;  
 	 	  
 	 	 i n t   t y p e o c o   =   t y p e ;  
  
 	 	 i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ S T O P )  
 	 	 {  
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ S E L L _ S T O P ;  
 	 	 	 o p   =   b i d   -   M a t h A b s ( o p - a s k ) ;  
 	 	 }  
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ L I M I T )  
 	 	 {  
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ S E L L _ L I M I T ;  
 	 	 	 o p   =   b i d   +   M a t h A b s ( o p - a s k ) ;  
 	 	 }  
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ S E L L _ S T O P )  
 	 	 {  
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ B U Y _ S T O P ;  
 	 	 	 o p   =   a s k   +   M a t h A b s ( o p - b i d ) ;  
 	 	 }  
 	 	 e l s e   i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ S E L L _ L I M I T )  
 	 	 {  
 	 	 	 t y p e o c o   =   O R D E R _ T Y P E _ B U Y _ L I M I T ;  
 	 	 	 o p   =   a s k   -   M a t h A b s ( o p - b i d ) ;  
 	 	 }  
  
 	 	 i f   ( t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ S T O P   | |   t y p e o c o   = =   O R D E R _ T Y P E _ B U Y _ L I M I T )  
 	 	 {  
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   -   s l   :   0 ;  
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   +   t p   :   0 ;  
 	 	 }  
 	 	 e l s e   {  
 	 	 	 s l   =   ( s l   >   0 )   ?   o p   +   s l   :   0 ;  
 	 	 	 t p   =   ( t p   >   0 )   ?   o p   -   t p   :   0 ;  
 	 	 }  
  
 	 	 c o m m e n t   =   " [ o c o : "   +   ( s t r i n g ) t i c k e t   +   " ] " ;  
  
 	 	 O r d e r C r e a t e (  
 	 	 	 s y m b o l ,  
 	 	 	 t y p e o c o ,  
 	 	 	 l o t s ,  
 	 	 	 o p ,  
 	 	 	 s l ,  
 	 	 	 t p ,  
 	 	 	 0 ,  
 	 	 	 0 ,  
 	 	 	 s l i p p a g e ,  
 	 	 	 m a g i c ,  
 	 	 	 c o m m e n t ,  
 	 	 	 a r r o w c o l o r ,  
 	 	 	 e x p i r a t i o n ,  
 	 	 	 f a l s e  
 	 	 ) ;  
 	 }  
  
 	 O n T r a d e ( ) ;  
  
 	 r e t u r n   ( l o n g ) t i c k e t ;  
 }  
  
 d a t e t i m e   O r d e r E x p i r a t i o n ( )  
 {  
 	 r e t u r n   O r d e r E x p i r a t i o n T i m e ( ) ;  
 }  
  
 d a t e t i m e   O r d e r E x p i r a t i o n T i m e ( )  
 {  
 	 i n t   L o a d e d T y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( L o a d e d T y p e   = =   1 )   r e t u r n   e x p i r a t i o n W o r k e r . G e t E x p i r a t i o n ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I C K E T ) ) ;  
 	 i f   ( L o a d e d T y p e   = =   2 )   r e t u r n   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ E X P I R A T I O N ) ;  
  
 	 r e t u r n   0 ;  
 }  
  
 d o u b l e   O r d e r L o t s ( )  
 {  
 	 i n t   t y p e         =   L o a d e d T y p e ( ) ;  
 	 d o u b l e   l o t s   =   0 ;  
  
 	 i f   ( t y p e   = =   1 )   {  
 	 	 l o t s   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ V O L U M E ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   3 )   {  
 	 	 / /   C a l c u l a t e   l o t s   a s   t h e   d i f f e r e n c e   b e t w e e n   t h e   i n t i a l   l o t s  
 	 	 / /   a n d   t h e   l o t s   o f   a l l    
  
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
  
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 	 l o t s   =   0 . 0 ;  
  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   t o t a l ;   i + + )   {  
 	 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( i ) ;  
 	 	 	 E N U M _ D E A L _ E N T R Y   e n t r y   =   ( E N U M _ D E A L _ E N T R Y ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ E N T R Y ) ;  
 	 	 	 d o u b l e   d e a l V o l u m e   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ V O L U M E ) ;  
  
 	 	 	 i f   ( e n t r y   = =   D E A L _ E N T R Y _ I N )   {  
 	 	 	 	 l o t s   + =   d e a l V o l u m e ;  
 	 	 	 }  
 	 	 	 e l s e   {  
 	 	 	 	 / /   I f   t h e   l a s t   d e a l   i s   t h e   f i n a l   c l o s e ,   i t ' s   s i z e   w o u l d   b e   t h e   s a m e   a s   t h e  
 	 	 	 	 / /   c a l c u l a t e d   l o t s .   I n   t h i s   c a s e ,   s k i p ,   o t h e r w i s e   t h e   f i n a l   l o t s   w i l l   b e   0 .  
 	 	 	 	 i f   ( N o r m a l i z e D o u b l e ( d e a l V o l u m e ,   4 )   <   N o r m a l i z e D o u b l e ( l o t s ,   4 ) )   {  
 	 	 	 	 	 l o t s   - =   d e a l V o l u m e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   4 )   { l o t s   =   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) , O R D E R _ V O L U M E _ I N I T I A L ) ; }  
 	 e l s e                                 { l o t s   =   O r d e r G e t D o u b l e ( O R D E R _ V O L U M E _ C U R R E N T ) ; }  
  
 	 r e t u r n   N o r m a l i z e D o u b l e ( l o t s ,   2 ) ;  
 }  
  
 i n t   O r d e r M a g i c N u m b e r ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ M A G I C ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) , D E A L _ P O S I T I O N _ I D ) , O R D E R _ M A G I C ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ M A G I C ) ; }  
  
 	 r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ M A G I C ) ;  
 }  
  
 b o o l   O r d e r M o d i f i e d ( u l o n g   t i c k e t   =   0 ,   s t r i n g   a c t i o n   =   " s e t " )  
 {  
 	 s t a t i c   u l o n g   m e m o r y [ ] ;  
  
 	 i f   ( t i c k e t   = =   0 )  
 	 {  
 	 	 t i c k e t   =   O r d e r T i c k e t ( ) ;  
 	 	 a c t i o n   =   " g e t " ;  
 	 }  
 	 e l s e   i f   ( t i c k e t   >   0   & &   a c t i o n   ! =   " c l e a r " )  
 	 {  
 	 	 a c t i o n   =   " s e t " ;  
 	 }  
  
 	 b o o l   m o d i f i e d _ s t a t u s   =   I n A r r a y ( m e m o r y ,   t i c k e t ) ;  
 	  
 	 i f   ( a c t i o n   = =   " g e t " )  
 	 {  
 	 	 r e t u r n   m o d i f i e d _ s t a t u s ;  
 	 }  
 	 e l s e   i f   ( a c t i o n   = =   " s e t " )  
 	 {  
 	 	 A r r a y E n s u r e V a l u e ( m e m o r y ,   t i c k e t ) ;  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	 e l s e   i f   ( a c t i o n   = =   " c l e a r " )  
 	 {  
 	 	 A r r a y S t r i p V a l u e ( m e m o r y ,   t i c k e t ) ;  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 d o u b l e   O r d e r O p e n P r i c e ( )  
 {  
 	 d o u b l e   o p     =   0 . 0 ;  
 	 i n t   t y p e       =   L o a d e d T y p e ( ) ;  
 	 i n t   d i g i t s   =   ( i n t ) S y m b o l I n f o I n t e g e r ( O r d e r S y m b o l ( ) ,   S Y M B O L _ D I G I T S ) ;  
  
 	 i f   ( t y p e   = =   1 )  
 	 {  
 	 	 o p   =   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R I C E _ O P E N ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   3 )  
 	 {  
 	 	 / /   G e t   t h e   v a l u e   f r o m   t h e   v e r y   f i r s t   d e a l   i n   t h e   p o s i t i o n  
  
 	 	 u l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
  
 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
  
 	 	 o p   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ P R I C E ) ;  
  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   4 )  
 	 {  
 	 	 o p   =   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) ,   O R D E R _ P R I C E _ O P E N ) ;  
 	 }  
       e l s e  
       {  
       	 o p   =   O r d e r G e t D o u b l e ( O R D E R _ P R I C E _ O P E N ) ;  
       }  
  
 	 r e t u r n   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ;  
 }  
  
 d a t e t i m e   O r d e r O p e n T i m e ( )  
 {  
 	 d a t e t i m e   t i m e   =   0 ;  
 	 i n t   t y p e             =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )  
 	 {  
 	 	 t i m e   =   ( d a t e t i m e ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T I M E ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   3 )  
 	 {  
 	 	 / /   G e t   t h e   v a l u e   f r o m   t h e   v e r y   f i r s t   d e a l   i n   t h e   p o s i t i o n  
  
 	 	 u l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   D E A L _ P O S I T I O N _ I D ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
  
 	 	 u l o n g   t i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
 	 	  
 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y D e a l G e t I n t e g e r ( t i c k e t ,   D E A L _ T I M E ) ;  
 	 	  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 }  
 	 e l s e   i f   ( t y p e   = =   4 )  
 	 {  
 	 	 t i m e   =   ( d a t e t i m e ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) ,   O R D E R _ T I M E _ S E T U P ) ;  
 	 }  
 	 e l s e  
 	 {  
 	 	 t i m e   =   ( d a t e t i m e ) O r d e r G e t I n t e g e r ( O R D E R _ T I M E _ S E T U P ) ;  
 	 }  
 	  
 	 r e t u r n   t i m e ;  
 }  
  
 d o u b l e   O r d e r P r o f i t ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
       i f   ( t y p e   = =   1 )   {  
 	 	 r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ P R O F I T ) ;  
 	 }  
       i f   ( t y p e   = =   3 )   {  
 	 	 r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ P R O F I T ) ;  
 	 }  
       i f   ( t y p e   = =   4 )   {  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 r e t u r n   0 ;  
 }  
  
 d o u b l e   O r d e r S t o p L o s s ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S L ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ S L ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) ,   O R D E R _ S L ) ; }  
  
 	 r e t u r n   O r d e r G e t D o u b l e ( O R D E R _ S L ) ;  
 }  
  
 d o u b l e   O r d e r S w a p ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ S W A P ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) , D E A L _ S W A P ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   0 ; }  
  
 	 r e t u r n   0 ;  
 }  
  
 s t r i n g   O r d e r S y m b o l ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ S Y M B O L ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t S t r i n g ( O r d e r T i c k e t ( ) , D E A L _ S Y M B O L ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t S t r i n g ( O r d e r T i c k e t ( ) , O R D E R _ S Y M B O L ) ; }  
  
 	 r e t u r n   O r d e r G e t S t r i n g ( O R D E R _ S Y M B O L ) ;  
 }  
  
 d o u b l e   O r d e r T a k e P r o f i t ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   P o s i t i o n G e t D o u b l e ( P O S I T I O N _ T P ) ; }  
 	 i f   ( t y p e   = =   3 )   { r e t u r n   H i s t o r y D e a l G e t D o u b l e ( O r d e r T i c k e t ( ) ,   D E A L _ T P ) ; }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   H i s t o r y O r d e r G e t D o u b l e ( O r d e r T i c k e t ( ) , O R D E R _ T P ) ; }  
  
 	 r e t u r n   O r d e r G e t D o u b l e ( O R D E R _ T P ) ;  
 }  
  
 l o n g   O r d e r T i c k e t ( l o n g   t i c k e t   =   0 )  
 {  
 	 s t a t i c   l o n g   m e m o r y   =   0 ;  
  
 	 i f   ( t i c k e t   >   0 )   { m e m o r y   =   t i c k e t ; }  
  
 	 r e t u r n   m e m o r y ;  
 }  
  
 i n t   O r d e r T y p e ( )  
 {  
 	 i n t   t y p e   =   L o a d e d T y p e ( ) ;  
  
 	 i f   ( t y p e   = =   1 )   { r e t u r n   ( i n t ) P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ T Y P E ) ; }  
 	 i f   ( t y p e   = =   2 )   { r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ; }  
 	 i f   ( t y p e   = =   3 )  
 	 {  
 	 	 u l o n g   d e a l T i c k e t   =   O r d e r T i c k e t ( ) ;  
 	 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ;  
  
 	 	 H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) ;  
  
 	 	 u l o n g   f i r s t D e a l T i c k e t   =   H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
 	 	  
 	 	 i n t   o r d e r T y p e   =   ( i n t ) H i s t o r y D e a l G e t I n t e g e r ( f i r s t D e a l T i c k e t ,   D E A L _ T Y P E ) ;  
  
 	 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
  
 	 	 r e t u r n   o r d e r T y p e ;  
 	 }  
 	 i f   ( t y p e   = =   4 )   { r e t u r n   ( i n t ) H i s t o r y O r d e r G e t I n t e g e r ( O r d e r T i c k e t ( ) , O R D E R _ T Y P E ) ; }  
  
 	 r e t u r n   ( i n t ) O r d e r G e t I n t e g e r ( O R D E R _ T Y P E ) ;  
 }  
  
 b o o l   P e n d i n g O r d e r S e l e c t B y T i c k e t ( u l o n g   t i c k e t )  
 {  
 	 b o o l   s u c c e s s   =   O r d e r S e l e c t ( t i c k e t ) ;  
  
 	 i f   ( s u c c e s s )   {  
 	 	 L o a d e d T y p e ( 2 ) ;  
 	 	 O r d e r T i c k e t ( t i c k e t ) ;  
 	 }  
  
 	 r e t u r n   s u c c e s s ;  
 }  
  
 d o u b l e   P i p V a l u e ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   C u s t o m P o i n t ( s y m b o l )   /   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
 }  
  
 b o o l   P o s i t i o n S e l e c t B y D e a l ( u l o n g   d e a l T i c k e t )  
 {  
 	 b o o l   s u c c e s s   =   f a l s e ;  
 	 l o n g   p o s i t i o n I d   =   H i s t o r y D e a l G e t I n t e g e r ( d e a l T i c k e t ,   D E A L _ P O S I T I O N _ I D ) ;  
 	  
 	 i f   ( p o s i t i o n I d )  
 	 {  
 	 	 i n t   t o t a l   =   P o s i t i o n s T o t a l ( ) ;  
 	 	  
 	 	 f o r   ( i n t   i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )  
 	 	 {  
 	 	 	 i f   ( P o s i t i o n G e t T i c k e t ( i ) )  
 	 	 	 {  
 	 	 	 	 i f   ( P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R )   = =   p o s i t i o n I d )  
 	 	 	 	 {  
 	 	 	 	 	 s u c c e s s   =   t r u e ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   s u c c e s s ;  
 }  
  
 i n t   S e c o n d s F r o m C o m p o n e n t s ( d o u b l e   d a y s ,   d o u b l e   h o u r s ,   d o u b l e   m i n u t e s ,   i n t   s e c o n d s )  
 {  
 	 i n t   r e t v a l   =  
 	 	 8 6 4 0 0   *   ( i n t ) M a t h F l o o r ( d a y s )  
 	 	 +   3 6 0 0   *   ( i n t ) ( M a t h F l o o r ( h o u r s )   +   ( 2 4   *   ( d a y s   -   M a t h F l o o r ( d a y s ) ) ) )  
 	 	 +   6 0   *   ( i n t ) ( M a t h F l o o r ( m i n u t e s )   +   ( 6 0   *   ( h o u r s   -   M a t h F l o o r ( h o u r s ) ) ) )  
 	 	 +   ( i n t ) ( ( d o u b l e ) s e c o n d s   +   ( 6 0   *   ( m i n u t e s   -   M a t h F l o o r ( m i n u t e s ) ) ) ) ;  
  
 	 r e t u r n   r e t v a l ;  
 }  
  
 d a t e t i m e   S e l e c t e d H i s t o r y F r o m T i m e ( d a t e t i m e   s e t T i m e   =   - 1 )  
 {  
 	 s t a t i c   d a t e t i m e   t i m e ;  
 	  
 	 i f   ( s e t T i m e   >   - 1 )  
 	 {  
 	 	 t i m e   =   s e t T i m e ;  
 	 }  
 	  
 	 r e t u r n   t i m e ;  
 }  
  
 d a t e t i m e   S e l e c t e d H i s t o r y T o T i m e ( d a t e t i m e   s e t T i m e   =   - 1 )  
 {  
 	 s t a t i c   d a t e t i m e   t i m e ;  
 	  
 	 i f   ( s e t T i m e   >   - 1 )  
 	 {  
 	 	 t i m e   =   s e t T i m e ;  
 	 }  
 	  
 	 r e t u r n   t i m e ;  
 }  
  
 l o n g   S e l l N o w (  
 	 s t r i n g   s y m b o l ,  
 	 d o u b l e   l o t s ,  
 	 d o u b l e   s l l ,  
 	 d o u b l e   t p l ,  
 	 d o u b l e   s l p ,  
 	 d o u b l e   t p p ,  
 	 d o u b l e   s l i p p a g e   =   0 ,  
 	 i n t   m a g i c   =   0 ,  
 	 s t r i n g   c o m m e n t   =   " " ,  
 	 c o l o r   a r r o w c o l o r   =   c l r N O N E ,  
 	 d a t e t i m e   e x p i r a t i o n   =   0  
 	 )  
 {  
 	 r e t u r n   O r d e r C r e a t e (  
 	 	 s y m b o l ,  
 	 	 P O S I T I O N _ T Y P E _ S E L L ,  
 	 	 l o t s ,  
 	 	 0 ,  
 	 	 s l l ,  
 	 	 t p l ,  
 	 	 s l p ,  
 	 	 t p p ,  
 	 	 s l i p p a g e ,  
 	 	 m a g i c ,  
 	 	 c o m m e n t ,  
 	 	 a r r o w c o l o r ,  
 	 	 e x p i r a t i o n  
 	 ) ;  
 }  
  
 i n t   S t r T o I n t e g e r ( s t r i n g   v a l u e )  
 {  
 	 r e t u r n   ( i n t ) S t r i n g T o I n t e g e r ( v a l u e ) ;  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 v o i d   S t r i n g E x p l o d e ( s t r i n g   d e l i m i t e r ,   s t r i n g   i n p u t S t r i n g ,   T   & o u t p u t [ ] )  
 {  
 	 i n t   b e g i n       =   0 ;  
 	 i n t   e n d           =   0 ;  
 	 i n t   e l e m e n t   =   0 ;  
 	 i n t   l e n g t h     =   S t r i n g L e n ( i n p u t S t r i n g ) ;  
 	 i n t   l e n g t h _ d e l i m i t e r   =   S t r i n g L e n ( d e l i m i t e r ) ;  
 	 T   e m p t y _ v a l     =   ( t y p e n a m e ( T )   = =   " s t r i n g " )   ?   ( T ) " "   :   ( T ) 0 ;  
  
 	 i f   ( l e n g t h   >   0 )  
 	 {  
 	 	 w h i l e   ( t r u e )  
 	 	 {  
 	 	 	 e n d   =   S t r i n g F i n d ( i n p u t S t r i n g ,   d e l i m i t e r ,   b e g i n ) ;  
  
 	 	 	 A r r a y R e s i z e ( o u t p u t ,   e l e m e n t   +   1 ) ;  
 	 	 	 o u t p u t [ e l e m e n t ]   =   e m p t y _ v a l ;  
 	  
 	 	 	 i f   ( e n d   ! =   - 1 )  
 	 	 	 {  
 	 	 	 	 i f   ( e n d   >   b e g i n )  
 	 	 	 	 {  
 	 	 	 	 	 o u t p u t [ e l e m e n t ]   =   ( T ) S t r i n g S u b s t r ( i n p u t S t r i n g ,   b e g i n ,   e n d   -   b e g i n ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 o u t p u t [ e l e m e n t ]   =   ( T ) S t r i n g S u b s t r ( i n p u t S t r i n g ,   b e g i n ,   l e n g t h   -   b e g i n ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 	  
 	 	 	 b e g i n   =   e n d   +   1   +   ( l e n g t h _ d e l i m i t e r   -   1 ) ;  
 	 	 	 e l e m e n t + + ;  
 	 	 }  
 	 }  
 	 e l s e  
 	 {  
 	 	 A r r a y R e s i z e ( o u t p u t ,   1 ) ;  
 	 	 o u t p u t [ e l e m e n t ]   =   e m p t y _ v a l ;  
 	 }  
 }  
  
 t e m p l a t e < t y p e n a m e   T >  
 s t r i n g   S t r i n g I m p l o d e ( s t r i n g   d e l i m e t e r ,   T   & a r r a y [ ] )  
 {  
       s t r i n g   r e t v a l   =   " " ;  
 	 i n t   s i z e             =   A r r a y S i z e ( a r r a y ) ;  
  
       f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )  
 	 {  
             S t r i n g C o n c a t e n a t e ( r e t v a l ,   r e t v a l ,   ( s t r i n g ) a r r a y [ i ] ,   d e l i m e t e r ) ;  
       }  
  
       r e t u r n   S t r i n g S u b s t r ( r e t v a l ,   0 ,   ( S t r i n g L e n ( r e t v a l )   -   S t r i n g L e n ( d e l i m e t e r ) ) ) ;  
 }  
  
 d a t e t i m e   S t r i n g T o T i m e E x ( s t r i n g   s t r ,   s t r i n g   m o d e = " s e r v e r " )  
 {  
 	 / /   m o d e :   s e r v e r ,   l o c a l ,   g m t  
 	 i n t   o f f s e t   =   0 ;  
  
 	 i f   ( m o d e   = =   " s e r v e r " )   { o f f s e t   =   0 ; }  
 	 e l s e   i f   ( m o d e   = =   " l o c a l " )   { o f f s e t   =   ( i n t ) ( T i m e L o c a l ( )   -   T i m e C u r r e n t ( ) ) ; }  
 	 e l s e   i f   ( m o d e   = =   " g m t " )   { o f f s e t   =   ( i n t ) ( T i m e G M T ( )   -   T i m e C u r r e n t ( ) ) ; }  
  
 	 d a t e t i m e   t i m e   =   S t r i n g T o T i m e ( s t r )   -   o f f s e t ;  
  
 	 r e t u r n   t i m e ;  
 }  
  
 s t r i n g   S t r i n g T r i m ( s t r i n g   t e x t )  
 {  
 	 S t r i n g T r i m R i g h t ( t e x t ) ;  
 	 S t r i n g T r i m L e f t ( t e x t ) ;  
  
 	 r e t u r n   t e x t ;  
 }  
  
 d o u b l e   S y m b o l A s k ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 }  
  
 d o u b l e   S y m b o l B i d ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 }  
  
 i n t   S y m b o l D i g i t s ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 }  
  
 d o u b l e   S y m b o l L o t S i z e ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ T R A D E _ C O N T R A C T _ S I Z E ) ;  
 }  
  
 d o u b l e   S y m b o l L o t S t e p ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ S T E P ) ;  
 }  
  
 d o u b l e   S y m b o l M a x L o t ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M A X ) ;  
 }  
  
 d o u b l e   S y m b o l M i n L o t ( s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ V O L U M E _ M I N ) ;  
 }  
  
 i n t   S y m b o l s L i s t ( s t r i n g   & s y m b o l s [ ] ,   b o o l   s e l e c t e d )  
 {  
 	 s t a t i c   s t r i n g   m e m o r y [ ] ;  
 	 s t a t i c   i n t   s y m b o l s _ c o u n t ;  
 	 s t a t i c   b o o l   d o _ r e a d   =   t r u e ;  
  
 	 / / - -   r e a d   a l l   s y m b o l s   o n c e ,   o r   r e a d   t h e m   e v e r y   t i m e   i f   s e l e c t e d = = t r u e  
 	 i f   ( d o _ r e a d   = =   t r u e   | |   s e l e c t e d   = =   t r u e )  
 	 {  
 	 	 d o _ r e a d   =   f a l s e ;  
  
 	 	 s y m b o l s _ c o u n t   =   S y m b o l s T o t a l ( s e l e c t e d ) ;  
  
 	 	 i n t   s   =   0 ;  
  
 	 	 f o r ( i n t   i   =   0 ;   i   <   s y m b o l s _ c o u n t ;   i + + )  
 	 	 {  
 	 	 	 s t r i n g   s y m b o l   =   S y m b o l N a m e ( i ,   s e l e c t e d ) ;  
  
 	 	 	 i f   ( S t r i n g L e n ( s y m b o l )   >   0   / *   a d d   a n o t h e r   c o n d i t i o n   h e r e   i f   n e e d e d   * / )  
 	 	 	 {  
 	 	 	 	 A r r a y R e s i z e ( m e m o r y ,   s + 1 ) ;  
 	 	 	 	 m e m o r y [ s ]   =   s y m b o l ;  
 	 	 	 	 s + + ;  
 	 	 	 }  
 	 	 }  
  
 	 	 s y m b o l s _ c o u n t   =   s ;  
 	 }  
  
 	 A r r a y C o p y ( s y m b o l s , m e m o r y ) ;  
  
 	 r e t u r n   s y m b o l s _ c o u n t ;  
 }  
  
 d o u b l e   T i c k s D a t a ( s t r i n g   s y m b o l   =   " " ,   i n t   t y p e   =   0 ,   i n t   s h i f t   =   0 )  
 {  
 	 s t a t i c   b o o l   c o l l e c t i n g _ t i c k s   =   f a l s e ;  
 	 s t a t i c   s t r i n g   s y m b o l s [ ] ;  
 	 s t a t i c   i n t   z e r o _ s i d [ ] ;  
 	 s t a t i c   d o u b l e   m e m o r y A S K [ ] [ 1 0 0 ] ;  
 	 s t a t i c   d o u b l e   m e m o r y B I D [ ] [ 1 0 0 ] ;  
  
 	 i n t   s i d   =   0 ,   s i z e   =   0 ,   i   =   0 ,   i d   =   0 ;  
 	 d o u b l e   a s k   =   0 ,   b i d   =   0 ,   r e t v a l   =   0 ;  
 	 b o o l   e x i s t s   =   f a l s e ;  
  
 	 i f   ( A r r a y S i z e ( s y m b o l s )   = =   0 )  
 	 {  
 	 	 A r r a y R e s i z e ( s y m b o l s ,   1 ) ;  
 	 	 A r r a y R e s i z e ( z e r o _ s i d ,   1 ) ;  
 	 	 A r r a y R e s i z e ( m e m o r y A S K ,   1 ) ;  
 	 	 A r r a y R e s i z e ( m e m o r y B I D ,   1 ) ;  
  
 	 	 s y m b o l s [ 0 ]   =   _ S y m b o l ;  
 	 }  
  
 	 i f   ( t y p e   >   0   & &   s h i f t   >   0 )  
 	 {  
 	 	 c o l l e c t i n g _ t i c k s   =   t r u e ;  
 	 }  
  
 	 i f   ( c o l l e c t i n g _ t i c k s   = =   f a l s e )  
 	 {  
 	 	 i f   ( t y p e   >   0   & &   s h i f t   = =   0 )  
 	 	 {  
 	 	 	 / /   g o i n g   t o   g e t   t i c k s  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   0 ;  
 	 	 }  
 	 }  
  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   _ S y m b o l ;  
  
 	 i f   ( t y p e   = =   0 )  
 	 {  
 	 	 e x i s t s   =   f a l s e ;  
 	 	 s i z e       =   A r r a y S i z e ( s y m b o l s ) ;  
  
 	 	 i f   ( s i z e   = =   0 )   { A r r a y R e s i z e ( s y m b o l s ,   1 ) ; }  
  
 	 	 f o r   ( i = 0 ;   i < s i z e ;   i + + )  
 	 	 {  
 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l )  
 	 	 	 {  
 	 	 	 	 e x i s t s   =   t r u e ;  
 	 	 	 	 s i d         =   i ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( e x i s t s   = =   f a l s e )  
 	 	 {  
 	 	 	 i n t   n e w s i z e   =   A r r a y S i z e ( s y m b o l s )   +   1 ;  
  
 	 	 	 A r r a y R e s i z e ( s y m b o l s ,   n e w s i z e ) ;  
 	 	 	 s y m b o l s [ n e w s i z e - 1 ]   =   s y m b o l ;  
  
 	 	 	 A r r a y R e s i z e ( z e r o _ s i d ,   n e w s i z e ) ;  
 	 	 	 A r r a y R e s i z e ( m e m o r y A S K ,   n e w s i z e ) ;  
 	 	 	 A r r a y R e s i z e ( m e m o r y B I D ,   n e w s i z e ) ;  
  
 	 	 	 s i d = n e w s i z e ;  
 	 	 }  
  
 	 	 i f   ( s i d   > =   0 )  
 	 	 {  
 	 	 	 a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
  
 	 	 	 i f   ( b i d   = =   0   & &   M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )  
 	 	 	 {  
 	 	 	 	 P r i n t ( " T i c k s   d a t a   c o l l e c t o r   e r r o r :   "   +   s y m b o l   +   "   c a n n o t   b e   b a c k t e s t e d .   O n l y   t h e   c u r r e n t   s y m b o l   c a n   b e   b a c k t e s t e d .   T h e   E A   w i l l   b e   t e r m i n a t e d . " ) ;  
 	 	 	 	 E x p e r t R e m o v e ( ) ;  
 	 	 	 }  
  
 	 	 	 i f   (  
 	 	 	 	       s y m b o l   = =   _ S y m b o l  
 	 	 	 	 | |   a s k   ! =   m e m o r y A S K [ s i d ] [ 0 ]  
 	 	 	 	 | |   b i d   ! =   m e m o r y B I D [ s i d ] [ 0 ]  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 m e m o r y A S K [ s i d ] [ z e r o _ s i d [ s i d ] ]   =   a s k ;  
 	 	 	 	 m e m o r y B I D [ s i d ] [ z e r o _ s i d [ s i d ] ]   =   b i d ;  
 	 	 	 	 z e r o _ s i d [ s i d ]                                   =   z e r o _ s i d [ s i d ]   +   1 ;  
  
 	 	 	 	 i f   ( z e r o _ s i d [ s i d ]   = =   1 0 0 )  
 	 	 	 	 {  
 	 	 	 	 	 z e r o _ s i d [ s i d ]   =   0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	 e l s e  
 	 {  
 	 	 i f   ( s h i f t   < =   0 )  
 	 	 {  
 	 	 	 i f   ( t y p e   = =   S Y M B O L _ A S K )  
 	 	 	 {  
 	 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( t y p e   = =   S Y M B O L _ B I D )  
 	 	 	 {  
 	 	 	 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;    
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 d o u b l e   m i d   =   ( ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K )   +   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) )   /   2 ) ;  
  
 	 	 	 	 r e t u r n   m i d ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s i z e   =   A r r a y S i z e ( s y m b o l s ) ;  
  
 	 	 	 f o r   ( i   =   0 ;   i   <   s i z e ;   i + + )  
 	 	 	 {  
 	 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l )  
 	 	 	 	 {  
 	 	 	 	 	 s i d   =   i ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   ( s h i f t   <   1 0 0 )  
 	 	 	 {  
 	 	 	 	 i d   =   z e r o _ s i d [ s i d ]   -   s h i f t   -   1 ;  
  
 	 	 	 	 i f ( i d   <   0 )   { i d   =   i d   +   1 0 0 ; }  
  
 	 	 	 	 i f   ( t y p e   = =   S Y M B O L _ A S K )  
 	 	 	 	 {  
 	 	 	 	 	 r e t v a l   =   m e m o r y A S K [ s i d ] [ i d ] ;  
  
 	 	 	 	 	 i f   ( r e t v a l   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t v a l   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( t y p e   = =   S Y M B O L _ B I D )  
 	 	 	 	 {  
 	 	 	 	 	 r e t v a l   =   m e m o r y B I D [ s i d ] [ i d ] ;  
  
 	 	 	 	 	 i f   ( r e t v a l   = =   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t v a l   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 r e t u r n   r e t v a l ;  
 }  
  
 i n t   T i c k s P e r S e c o n d ( b o o l   g e t _ m a x   =   f a l s e ,   b o o l   s e t   =   f a l s e )  
 {  
 	 s t a t i c   d a t e t i m e   t i m e 0   =   0 ;  
 	 s t a t i c   i n t   t i c k s             =   0 ;  
 	 s t a t i c   i n t   t p s                 =   0 ;  
 	 s t a t i c   i n t   t p s m a x           =   0 ;  
  
 	 d a t e t i m e   t i m e 1   =   T i m e L o c a l ( ) ;  
  
 	 i f   ( s e t   = =   t r u e )  
 	 {  
 	 	 i f   ( t i m e 1   >   t i m e 0 )  
 	 	 {  
 	 	 	 i f   ( t i m e 1   -   t i m e 0   >   1 )  
 	 	 	 {  
 	 	 	 	 t p s   =   0 ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t p s   =   t i c k s ;  
 	 	 	 }  
  
 	 	 	 t i m e 0   =   t i m e 1 ;  
 	 	 	 t i c k s   =   0 ;  
 	 	 }  
  
 	 	 t i c k s + + ;  
  
 	 	 i f   ( t p s   >   t p s m a x )   { t p s m a x   =   t p s ; }  
 	 }  
  
 	 i f   ( g e t _ m a x )  
 	 {  
 	 	 r e t u r n   t p s m a x ;  
 	 }  
  
 	 r e t u r n   t p s ;  
 }  
  
 d a t e t i m e   T i m e A t S t a r t ( s t r i n g   c m d   =   " s e r v e r " )  
 {  
 	 s t a t i c   d a t e t i m e   l o c a l     =   0 ;  
 	 s t a t i c   d a t e t i m e   s e r v e r   =   0 ;  
  
 	 i f   ( c m d   = =   " l o c a l " )  
 	 {  
 	 	 r e t u r n   l o c a l ;  
 	 }  
 	 e l s e   i f   ( c m d   = =   " s e r v e r " )  
 	 {  
 	 	 r e t u r n   s e r v e r ;  
 	 }  
 	 e l s e   i f   ( c m d   = =   " s e t " )  
 	 {  
 	 	 l o c a l     =   T i m e L o c a l ( ) ;  
 	 	 s e r v e r   =   T i m e C u r r e n t ( ) ;  
 	 }  
  
 	 r e t u r n   0 ;  
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
 d a t e t i m e   T i m e F r o m C o m p o n e n t s (  
 	 i n t   t i m e _ s r c   =   0 ,  
 	 i n t         y   =   0 ,  
 	 i n t         m   =   0 ,  
 	 d o u b l e   d   =   0 ,  
 	 d o u b l e   h   =   0 ,  
 	 d o u b l e   i   =   0 ,  
 	 i n t         s   =   0  
 )   {  
 	 M q l D a t e T i m e   t m ;  
 	 i n t   o f f s e t   =   0 ;  
  
 	 i f   ( t i m e _ s r c   = =   0 )   {  
 	 	 T i m e C u r r e n t ( t m ) ;  
 	 }  
 	 e l s e   i f   ( t i m e _ s r c   = =   1 )   {  
 	 	 T i m e L o c a l ( t m ) ;    
 	 	 o f f s e t   =   ( i n t ) ( T i m e L o c a l ( )   -   T i m e C u r r e n t ( ) ) ;  
 	 }  
 	 e l s e   i f   ( t i m e _ s r c   = =   2 )   {  
 	 	 T i m e G M T ( t m ) ;  
 	 	 o f f s e t   =   ( i n t ) ( T i m e G M T ( )   -   T i m e C u r r e n t ( ) ) ;  
 	 }  
  
 	 i f   ( y   >   0 )  
 	 {  
 	 	 i f   ( y   <   1 0 0 )   { y   =   2 0 0 0   +   y ; }  
 	 	 t m . y e a r   =   y ;  
 	 }  
 	 i f   ( m   >   0 )   { t m . m o n   =   m ; }  
 	 i f   ( d   >   0 )   { t m . d a y   =   ( i n t ) M a t h F l o o r ( d ) ; }  
  
 	 t m . h o u r   =   ( i n t ) ( M a t h F l o o r ( h )   +   ( 2 4   *   ( d   -   M a t h F l o o r ( d ) ) ) ) ;  
 	 t m . m i n     =   ( i n t ) ( M a t h F l o o r ( i )   +   ( 6 0   *   ( h   -   M a t h F l o o r ( h ) ) ) ) ;  
 	 t m . s e c     =   ( i n t ) ( ( d o u b l e ) s   +   ( 6 0   *   ( i   -   M a t h F l o o r ( i ) ) ) ) ;  
 	  
 	 d a t e t i m e   t i m e   =   S t r u c t T o T i m e ( t m )   -   o f f s e t ;  
  
 	 r e t u r n   t i m e ;  
 }  
  
 d a t e t i m e   T i m e F r o m S t r i n g ( i n t   m o d e _ t i m e ,   s t r i n g   s t a m p )  
 {  
 	 d a t e t i m e   t   =   0 ;  
  
 	           i f   ( m o d e _ t i m e   = =   0 )   t   =   T i m e C u r r e n t ( ) ;  
 	 e l s e   i f   ( m o d e _ t i m e   = =   1 )   t   =   T i m e L o c a l ( ) ;  
 	 e l s e   i f   ( m o d e _ t i m e   = =   2 )   t   =   T i m e G M T ( ) ;  
  
 	 i n t   s t a m p l e n   =   S t r i n g L e n ( s t a m p ) ;  
  
 	 i f   ( s t a m p l e n   <   9 )  
 	 {  
 	 	 i n t   t h o u r         =   T i m e H o u r ( t ) ;  
 	 	 i n t   t m i n u t e     =   T i m e M i n u t e ( t ) ;  
 	 	 i n t   t s e c o n d s   =   T i m e S e c o n d s ( t ) ;  
  
 	 	 i n t   h o u r       =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   0 ,   2 ) ;  
 	 	 i n t   m i n u t e   =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   3 ,   2 ) ;  
 	 	 i n t   s e c o n d   =   0 ;  
  
 	 	 i f   ( s t a m p l e n   >   5 )  
 	 	 {  
 	 	 	 s e c o n d   =   ( i n t ) S t r i n g S u b s t r ( s t a m p ,   6 ,   2 ) ;  
 	 	 }  
  
 	 	 d a t e t i m e   t 1   =   ( d a t e t i m e ) ( t   -   ( t h o u r - h o u r ) * 3 6 0 0   -   ( t m i n u t e   -   m i n u t e ) * 6 0   -   ( t s e c o n d s - s e c o n d ) ) ;  
  
 	 	 r e t u r n   t 1 ;  
 	 }  
  
 	 r e t u r n   S t r i n g T o T i m e ( s t a m p ) ;  
 }  
  
 i n t   T i m e H o u r ( d a t e t i m e   t i m e )  
 {  
 	 M q l D a t e T i m e   t m ;  
 	 T i m e T o S t r u c t ( t i m e , t m ) ;  
  
 	 r e t u r n   t m . h o u r ;  
 }  
  
 i n t   T i m e M i n u t e ( d a t e t i m e   t i m e )  
 {  
 	 M q l D a t e T i m e   t m ;  
 	 T i m e T o S t r u c t ( t i m e , t m ) ;  
 	  
 	 r e t u r n   t m . m i n ;  
 }  
  
 i n t   T i m e M o n t h ( d a t e t i m e   t i m e )  
 {  
 	 M q l D a t e T i m e   t m ;  
 	 T i m e T o S t r u c t ( t i m e , t m ) ;  
  
 	 r e t u r n   t m . m o n ;  
 }  
  
 i n t   T i m e S e c o n d s ( d a t e t i m e   t i m e )  
 {  
 	 M q l D a t e T i m e   t m ;  
 	 T i m e T o S t r u c t ( t i m e , t m ) ;  
  
 	 r e t u r n   t m . s e c ;  
 }  
  
 i n t   T i m e Y e a r ( d a t e t i m e   t i m e )  
 {  
       M q l D a t e T i m e   t m ;  
 	 T i m e T o S t r u c t ( t i m e , t m ) ;  
  
 	 r e t u r n   t m . y e a r ;  
 }  
  
 b o o l   T r a d e S e l e c t B y I n d e x (  
 	 i n t   i n d e x ,  
 	 s t r i n g   g r o u p _ m o d e         =   " a l l " ,  
 	 s t r i n g   g r o u p                   =   " 0 " ,  
 	 s t r i n g   m a r k e t _ m o d e       =   " a l l " ,  
 	 s t r i n g   m a r k e t                 =   " " ,  
 	 s t r i n g   B u y s O r S e l l s       =   " b o t h "  
 )   {  
 	 i f   ( L o a d P o s i t i o n ( P o s i t i o n G e t T i c k e t ( i n d e x ) ) )  
 	 {  
 	 	 i f   ( F i l t e r O r d e r B y (  
 	 	 	 g r o u p _ m o d e ,  
 	 	 	 g r o u p ,  
 	 	 	 m a r k e t _ m o d e ,  
 	 	 	 m a r k e t ,  
 	 	 	 B u y s O r S e l l s )  
 	 	 	 )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 b o o l   T r a d e S e l e c t B y T i c k e t ( u l o n g   t i c k e t )  
 {  
 	 i f   ( L o a d P o s i t i o n ( t i c k e t )   & &   O r d e r T y p e ( )   <   2 )  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 i n t   T r a d e s T o t a l ( )  
 {  
 	 r e t u r n   P o s i t i o n s T o t a l ( ) ;  
 }  
  
 d o u b l e   V i r t u a l S t o p s D r i v e r (  
 	 s t r i n g   c o m m a n d   =   " " ,  
 	 u l o n g   t i               =   0 ,  
 	 d o u b l e   s l             =   0 ,  
 	 d o u b l e   t p             =   0 ,  
 	 d o u b l e   s l p           =   0 ,  
 	 d o u b l e   t p p           =   0  
 )  
 {  
 	 s t a t i c   b o o l   i n i t i a l i z e d           =   f a l s e ;  
 	 s t a t i c   s t r i n g   n a m e                     =   " " ;  
 	 s t a t i c   s t r i n g   l o o p _ n a m e [ 2 ]     =   { " s l " ,   " t p " } ;  
 	 s t a t i c   c o l o r     l o o p _ c o l o r [ 2 ]   =   { D e e p P i n k ,   D o d g e r B l u e } ;  
 	 s t a t i c   d o u b l e   l o o p _ p r i c e [ 2 ]   =   { 0 ,   0 } ;  
 	 s t a t i c   u l o n g   m e m _ t o _ t i [ ] ;   / /   t i c k e t s  
 	 s t a t i c   i n t   m e m _ t o [ ] ;             / /   t i m e o u t s  
 	 s t a t i c   b o o l   t r a d e _ p a s s   =   f a l s e ;  
 	 i n t   i   =   0 ;  
  
 	 / /   A r e   V i r t u a l   S t o p s   e v e n   e n a b l e d ?  
 	 i f   ( ! U S E _ V I R T U A L _ S T O P S )  
 	 {  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 i f   ( i n i t i a l i z e d   = =   f a l s e   | |   c o m m a n d   = =   " i n i t i a l i z e " )  
 	 {  
 	 	 i n i t i a l i z e d   =   t r u e ;  
 	 }  
  
 	 / /   L i s t e n  
 	 i f   ( c o m m a n d   = =   " "   | |   c o m m a n d   = =   " l i s t e n " )  
 	 {  
 	 	 i n t   t o t a l           =   O b j e c t s T o t a l ( 0 ,   - 1 ,   O B J _ H L I N E ) ;  
 	 	 i n t   l e n g t h         =   0 ;  
 	 	 c o l o r   c l r           =   c l r N O N E ;  
 	 	 i n t   s l t p             =   0 ;  
 	 	 u l o n g   t i c k e t     =   0 ;  
 	 	 d o u b l e   l e v e l     =   0 ;  
 	 	 d o u b l e   a s k b i d   =   0 ;  
 	 	 i n t   p o l a r i t y     =   0 ;  
 	 	 s t r i n g   s y m b o l   =   " " ;  
  
 	 	 f o r   ( i   =   t o t a l   -   1 ;   i   > =   0 ;   i - - )  
 	 	 {  
 	 	 	 n a m e   =   O b j e c t N a m e ( 0 ,   i ,   - 1 ,   O B J _ H L I N E ) ;   / /   f o r   e x a m p l e :   # 1   s l  
  
 	 	 	 i f   ( S t r i n g S u b s t r ( n a m e ,   0 ,   1 )   ! =   " # " )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
  
 	 	 	 l e n g t h   =   S t r i n g L e n ( n a m e ) ;  
  
 	 	 	 i f   ( l e n g t h   <   5 )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
  
 	 	 	 c l r   =   ( c o l o r ) O b j e c t G e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ) ;  
  
 	 	 	 i f   ( c l r   ! =   l o o p _ c o l o r [ 0 ]   & &   c l r   ! =   l o o p _ c o l o r [ 1 ] )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
  
 	 	 	 s t r i n g   l a s t _ s y m b o l s   =   S t r i n g S u b s t r ( n a m e ,   l e n g t h - 2 ,   2 ) ;  
  
 	 	 	 i f   ( l a s t _ s y m b o l s   = =   " s l " )  
 	 	 	 {  
 	 	 	 	 s l t p   =   - 1 ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( l a s t _ s y m b o l s   = =   " t p " )  
 	 	 	 {  
 	 	 	 	 s l t p   =   1 ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ; 	  
 	 	 	 }  
  
 	 	 	 u l o n g   t i c k e t 0   =   S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( n a m e ,   1 ,   l e n g t h   -   4 ) ) ;  
  
 	 	 	 / /   p r e v e n t   l o a d i n g   t h e   s a m e   t i c k e t   n u m b e r   t w i c e   i n   a   r o w  
 	 	 	 i f   ( t i c k e t 0   ! =   t i c k e t )  
 	 	 	 {  
 	 	 	 	 t i c k e t   =   t i c k e t 0 ;  
  
 	 	 	 	 i f   ( T r a d e S e l e c t B y T i c k e t ( t i c k e t ) )  
 	 	 	 	 {  
 	 	 	 	 	 s y m b o l           =   O r d e r S y m b o l ( ) ;  
 	 	 	 	 	 p o l a r i t y       =   ( O r d e r T y p e ( )   = =   0 )   ?   1   :   - 1 ;  
 	 	 	 	 	 a s k b i d       =   ( O r d e r T y p e ( )   = =   0 )   ?   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D )   :   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 	 	 	 	 	  
 	 	 	 	 	 t r a d e _ p a s s   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t r a d e _ p a s s   =   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   ( t r a d e _ p a s s )  
 	 	 	 {  
 	 	 	 	 l e v e l         =   O b j e c t G e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ) ;  
  
 	 	 	 	 i f   ( l e v e l   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 / /   p o l a r i z e   l e v e l s  
 	 	 	 	 	 d o u b l e   l e v e l _ p     =   p o l a r i t y   *   l e v e l ;  
 	 	 	 	 	 d o u b l e   a s k b i d _ p   =   p o l a r i t y   *   a s k b i d ;  
  
 	 	 	 	 	 i f   (  
 	 	 	 	 	 	       ( s l t p   = =   - 1   & &   ( l e v e l _ p   -   a s k b i d _ p )   > =   0 )   / /   s l  
 	 	 	 	 	 	 | |   ( s l t p   = =   1   & &   ( a s k b i d _ p   -   l e v e l _ p )   > =   0 )     / /   t p  
 	 	 	 	 	 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / - -   V i r t u a l   S t o p s   S L   T i m e o u t  
 	 	 	 	 	 	 i f   (  
 	 	 	 	 	 	 	       ( V I R T U A L _ S T O P S _ T I M E O U T   >   0 )  
 	 	 	 	 	 	 	 & &   ( s l t p   = =   - 1   & &   ( l e v e l _ p   -   a s k b i d _ p )   > =   0 )   / /   s l  
 	 	 	 	 	 	 )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 / /   s t a r t   t i m e o u t ?  
 	 	 	 	 	 	 	 i n t   i n d e x   =   A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ;  
  
 	 	 	 	 	 	 	 i f   ( i n d e x   <   0 )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i n t   s i z e   =   A r r a y S i z e ( m e m _ t o _ t i ) ;  
 	 	 	 	 	 	 	 	 A r r a y R e s i z e ( m e m _ t o _ t i ,   s i z e + 1 ) ;  
 	 	 	 	 	 	 	 	 A r r a y R e s i z e ( m e m _ t o ,   s i z e + 1 ) ;  
 	 	 	 	 	 	 	 	 m e m _ t o _ t i [ s i z e ]   =   t i c k e t ;  
 	 	 	 	 	 	 	 	 m e m _ t o [ s i z e ]         =   ( i n t ) T i m e L o c a l ( ) ;  
  
 	 	 	 	 	 	 	 	 P r i n t (  
 	 	 	 	 	 	 	 	 	 " # " ,  
 	 	 	 	 	 	 	 	 	 t i c k e t ,  
 	 	 	 	 	 	 	 	 	 "   t i m e o u t   o f   " ,  
 	 	 	 	 	 	 	 	 	 V I R T U A L _ S T O P S _ T I M E O U T ,  
 	 	 	 	 	 	 	 	 	 "   s e c o n d s   s t a r t e d "  
 	 	 	 	 	 	 	 	 ) ;  
  
 	 	 	 	 	 	 	 	 r e t u r n   0 ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   ( T i m e L o c a l ( )   -   m e m _ t o [ i n d e x ]   < =   V I R T U A L _ S T O P S _ T I M E O U T )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 r e t u r n   0 ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   ( C l o s e T r a d e ( t i c k e t ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 / /   c h e c k   t h i s   b e f o r e   d e l e t i n g   t h e   l i n e s  
 	 	 	 	 	 	 	 / / O n T r a d e L i s t e n e r ( ) ;  
  
 	 	 	 	 	 	 	 / /   d e l e t e   o b j e c t s  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( 0 ,   " # "   +   ( s t r i n g ) t i c k e t   +   "   s l " ) ;  
 	 	 	 	 	 	 	 O b j e c t D e l e t e ( 0 ,   " # "   +   ( s t r i n g ) t i c k e t   +   "   t p " ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   ( V I R T U A L _ S T O P S _ T I M E O U T   >   0 )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i   =   A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ;  
  
 	 	 	 	 	 	 	 i f   ( i   > =   0 )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 A r r a y S t r i p K e y ( m e m _ t o _ t i ,   i ) ;  
 	 	 	 	 	 	 	 	 A r r a y S t r i p K e y ( m e m _ t o ,   i ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (  
 	 	 	 	 	 ! P e n d i n g O r d e r S e l e c t B y T i c k e t ( t i c k e t )  
 	 	 	 	 | |   O r d e r C l o s e T i m e ( )   >   0   / /   i n   c a s e   t h e   o r d e r   h a s   b e e n   c l o s e d  
 	 	 	 )  
 	 	 	 {  
 	 	 	 	 O b j e c t D e l e t e ( 0 ,   n a m e ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 P e n d i n g O r d e r S e l e c t B y T i c k e t ( t i c k e t ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 / /   G e t   S L   o r   T P  
 	 e l s e   i f   (  
 	 	 t i   >   0  
 	 	 & &   (  
 	 	 	       c o m m a n d   = =   " g e t   s l "  
 	 	 	 | |   c o m m a n d   = =   " g e t   t p "  
 	 	 )  
 	 )  
 	 {  
 	 	 d o u b l e   v a l u e   =   0 ;  
  
 	 	 n a m e   =   " # "   +   I n t e g e r T o S t r i n g ( t i )   +   "   "   +   S t r i n g S u b s t r ( c o m m a n d ,   4 ,   2 ) ;  
  
 	 	 i f   ( O b j e c t F i n d ( 0 ,   n a m e )   >   - 1 )  
 	 	 {  
 	 	 	 v a l u e   =   O b j e c t G e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ) ;  
 	 	 }  
  
 	 	 r e t u r n   v a l u e ;  
 	 }  
 	 / /   S e t   S L   a n d   T P  
 	 e l s e   i f   (  
 	 	 t i   >   0  
 	 	 & &   (  
 	 	 	       c o m m a n d   = =   " s e t "  
 	 	 	 | |   c o m m a n d   = =   " m o d i f y "  
 	 	 	 | |   c o m m a n d   = =   " c l e a r "  
 	 	 	 | |   c o m m a n d   = =   " p a r t i a l "  
 	 	 )  
 	 )  
 	 {  
 	 	 l o o p _ p r i c e [ 0 ]   =   s l ;  
 	 	 l o o p _ p r i c e [ 1 ]   =   t p ;  
  
 	 	 f o r   ( i   =   0 ;   i   <   2 ;   i + + )  
 	 	 {  
 	 	 	 n a m e   =   " # "   +   I n t e g e r T o S t r i n g ( t i )   +   "   "   +   l o o p _ n a m e [ i ] ;  
 	 	 	  
 	 	 	 i f   ( l o o p _ p r i c e [ i ]   >   0 )  
 	 	 	 {  
 	 	 	 	 / /   1 )   c r e a t e   a   n e w   l i n e  
 	 	 	 	 i f   ( O b j e c t F i n d ( 0 ,   n a m e )   = =   - 1 )  
 	 	 	 	 {  
 	 	 	 	 	 	   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ H L I N E ,   0 ,   0 ,   l o o p _ p r i c e [ i ] ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ W I D T H ,   1 ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   l o o p _ c o l o r [ i ] ) ;  
 	 	 	 	 	 O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ S T Y L E ,   S T Y L E _ D O T ) ;  
 	 	 	 	 	 O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   n a m e   +   "   ( v i r t u a l ) " ) ;  
 	 	 	 	 }  
 	 	 	 	 / /   2 )   m o d i f y   e x i s t i n g   l i n e  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 O b j e c t S e t D o u b l e ( 0 ,   n a m e ,   O B J P R O P _ P R I C E ,   0 ,   l o o p _ p r i c e [ i ] ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 / /   3 )   d e l e t e   e x i s t i n g   l i n e  
 	 	 	 	 O b j e c t D e l e t e ( 0 ,   n a m e ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / /   p r i n t   m e s s a g e  
 	 	 i f   ( c o m m a n d   = =   " s e t "   | |   c o m m a n d   = =   " m o d i f y " )  
 	 	 {  
 	 	 	 P r i n t (  
 	 	 	 	 c o m m a n d ,  
 	 	 	 	 "   # " ,  
 	 	 	 	 I n t e g e r T o S t r i n g ( t i ) ,  
 	 	 	 	 " :   v i r t u a l   s l   " ,  
 	 	 	 	 D o u b l e T o S t r ( s l ,   ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) ) ,  
 	 	 	 	 "   t p   " ,  
 	 	 	 	 D o u b l e T o S t r ( t p , ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) )  
 	 	 	 ) ;  
 	 	 }  
  
 	 	 r e t u r n   1 ;  
 	 }  
  
 	 r e t u r n   1 ;  
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
 d o u b l e   a s k ( s t r i n g   s y m b o l   =   N U L L )  
 {  
 	 r e t u r n   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ;  
 }  
  
 d o u b l e   a t t r L o t s I n i t i a l ( )  
 {  
 	 d o u b l e   r e t v a l   =   0 . 0 ;  
 	 u l o n g   t i c k e t   =   O r d e r T i c k e t ( ) ;  
  
 	 l o n g   p a r e n t T i c k e t   =   a t t r T i c k e t P a r e n t ( t i c k e t ) ;  
  
 	 i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( p a r e n t T i c k e t ) )   {  
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 	 i f   ( t o t a l   >   0 )   {  
 	 	 	 l o n g   d e a l T i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
  
 	 	 	 r e t v a l   =   H i s t o r y D e a l G e t D o u b l e ( d e a l T i c k e t ,   D E A L _ V O L U M E ) ;  
 	 	 }  
 	 }  
  
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) ;  
  
       r e t u r n   r e t v a l ;  
 }  
  
 d o u b l e   a t t r L o t s I n i t i a l ( s t r i n g   s y m b o l )   {  
 	 d o u b l e   r e t v a l   =   0 . 0 ;  
  
       i f   ( ! P o s i t i o n S e l e c t ( s y m b o l ) )   {  
       	 r e t u r n   0 . 0 ;  
       }  
      
       l o n g   p o s i t i o n I d   =   P o s i t i o n G e t I n t e g e r ( P O S I T I O N _ I D E N T I F I E R ) ;  
        
       i f   ( H i s t o r y S e l e c t B y P o s i t i o n ( p o s i t i o n I d ) )   {  
 	 	 i n t   t o t a l   =   H i s t o r y D e a l s T o t a l ( ) ;  
  
 	 	 i f   ( t o t a l   >   0 )   {  
 	 	 	 l o n g   t i c k e t   =   ( l o n g ) H i s t o r y D e a l G e t T i c k e t ( 0 ) ;  
 	 	 	  
 	 	 	 r e t v a l   =   H i s t o r y D e a l G e t D o u b l e ( t i c k e t ,   D E A L _ V O L U M E ) ;  
 	 	 }  
 	 }  
  
 	 H i s t o r y T r a d e s T o t a l R e s e t ( ) ;  
 	 	  
       r e t u r n   r e t v a l ;  
 }  
  
 d o u b l e   a t t r S t o p L o s s ( )  
 {  
 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 {  
 	 	 r e t u r n   V i r t u a l S t o p s D r i v e r ( " g e t   s l " ,   O r d e r T i c k e t ( ) ) ;  
 	 }  
  
 	 r e t u r n   O r d e r S t o p L o s s ( ) ;  
 }  
  
 d o u b l e   a t t r T a k e P r o f i t ( )  
 {  
 	 i f   ( U S E _ V I R T U A L _ S T O P S )  
 	 {  
 	 	 r e t u r n   V i r t u a l S t o p s D r i v e r ( " g e t   t p " ,   O r d e r T i c k e t ( ) ) ;  
 	 }  
  
       r e t u r n   O r d e r T a k e P r o f i t ( ) ;  
 }  
  
 l o n g   a t t r T i c k e t I n L o o p ( l o n g   t i c k e t   =   0 )  
 {  
 	 s t a t i c   l o n g   t ;  
  
 	 i f   ( t i c k e t   >   0 )   { t   =   t i c k e t ; }  
  
 	 r e t u r n   t ;  
 }  
  
 / * *  
 *   G e t   t h e   p a r e n t   p o s i t i o n   t i c k e t   w h e n   t h e   c u r r e n t   p o s i t i o n  
 *   w a s   c r e a t e d   a s   " a d d   t o   v o l u m e "   c h i l d .  
 *   I n   o t h e r   c a s e s ,   r e t u r n   t h e   i n p u t   t i c k e t .  
 * /  
 l o n g   a t t r T i c k e t P a r e n t ( l o n g   t i c k e t )  
 {  
 	 l o n g   p a r e n t T i c k e t   =   0 ;  
  
 	 i f   ( P o s i t i o n S e l e c t B y T i c k e t ( t i c k e t ) )   {  
 	 	 s t r i n g   c o m m e n t   =   P o s i t i o n G e t S t r i n g ( P O S I T I O N _ C O M M E N T ) ;  
 	 	 i n t   t a g P o s           =   S t r i n g F i n d ( c o m m e n t ,   " [ p = " ) ;  
 	 	  
 	 	 i f   ( t a g P o s   > =   0 )   {  
 	 	 	 s t r i n g   t a g       =   S t r i n g S u b s t r ( c o m m e n t ,   t a g P o s ) ;  
 	 	 	 t a g                     =   S t r i n g S u b s t r ( t a g ,   0 ,   S t r i n g F i n d ( t a g ,   " ] " )   +   1 ) ;  
 	 	 	 p a r e n t T i c k e t   =   S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( t a g ,   3 ,   - 1 ) ) ;  
 	 	 }  
 	 }  
  
 	 i f   ( p a r e n t T i c k e t   = =   0 )   {  
 	 	 p a r e n t T i c k e t   =   t i c k e t ;  
 	 }  
  
 	 r e t u r n   p a r e n t T i c k e t ;  
 }  
  
 i n t   a t t r T y p e I n L o o p ( i n t   t y p e = 0 )  
 {  
 	 s t a t i c   i n t   t ;  
  
 	 i f   ( t y p e   >   0 )   { t   =   t y p e ; }  
  
 	 r e t u r n   t ;  
 }  
  
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 >  
 b o o l   c o m p a r e ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 )  
 {  
 	           i f   ( s i g n   = =   " > " )   r e t u r n ( v 1   >   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " < " )   r e t u r n ( v 1   <   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " > = " )   r e t u r n ( v 1   > =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " < = " )   r e t u r n ( v 1   < =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " = = " )   r e t u r n ( v 1   = =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " ! = " )   r e t u r n ( v 1   ! =   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " x > " )   r e t u r n ( v 1   >   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " x < " )   r e t u r n ( v 1   <   v 2 ) ;  
  
 	 r e t u r n   f a l s e ;  
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
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 >  
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 )  
 {  
 	           i f   ( s i g n   = =   " + " )   r e t u r n ( v 1   +   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n ( v 1   -   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n ( v 1   *   v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n ( v 1   /   v 2 ) ;  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 s t r i n g   f o r m u l a ( s t r i n g   s i g n ,   s t r i n g   v 1 ,   s t r i n g   v 2 )  
 {  
 	 i f   ( s i g n   = =   " + " )   r e t u r n ( v 1   +   v 2 ) ;  
 	 e l s e   {  
 	 	 d o u b l e   _ v 1   =   S t r i n g T o D o u b l e ( v 1 ) ;  
 	 	 d o u b l e   _ v 2   =   S t r i n g T o D o u b l e ( v 2 ) ;  
 	 	  
 	 	           i f   ( s i g n   = =   " - " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   -   _ v 2 ) ;  
 	 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   *   _ v 2 ) ;  
 	 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   D o u b l e T o S t r i n g ( _ v 1   /   _ v 2 ) ;  
 	 }  
  
 	 r e t u r n   v 1   +   v 2 ;  
 }  
  
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   s t r i n g   v 1 ,   d o u b l e   v 2 )  
 {  
 	           i f   ( s i g n   = =   " + " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   +   v 2 ;  
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   -   v 2 ;  
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   *   v 2 ;  
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   S t r i n g T o D o u b l e ( v 1 )   /   v 2 ;  
  
 	 r e t u r n   S t r i n g T o D o u b l e ( v 1 )   +   v 2 ;  
 }  
  
 d o u b l e   f o r m u l a ( s t r i n g   s i g n ,   d o u b l e   v 1 ,   s t r i n g   v 2 )  
 {  
 	 i f   ( s i g n   = =   " + " )   r e t u r n   ( v 1   +   S t r i n g T o D o u b l e ( v 2 ) ) ;  
 	 e l s e   i f   ( s i g n   = =   " - " )   r e t u r n   v 1   -   S t r i n g T o D o u b l e ( v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " * " )   r e t u r n   v 1   *   S t r i n g T o D o u b l e ( v 2 ) ;  
 	 e l s e   i f   ( s i g n   = =   " / " )   r e t u r n   v 1   /   S t r i n g T o D o u b l e ( v 2 ) ;  
  
 	 r e t u r n   v 1   +   S t r i n g T o D o u b l e ( v 2 ) ;  
 }  
  
 d o u b l e   f x d C u s t o m I n d i c a t o r ( i n t   h a n d l e ,   i n t   m o d e = 0 ,   i n t   s h i f t = 0 )  
 {  
 	 s t a t i c   d o u b l e   b u f f e r [ 1 ] ;  
  
 	 i f   ( h a n d l e   <   0 )  
 	 {  
 	 	 P r i n t ( " E r r o r :   I n d i c a t o r   n o t   h a n d l e d .   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ;  
 	 	 r e t u r n   0 ;  
 	 }  
  
 	 i n t   t r y o u t s   =   0 ;  
  
 	 w h i l e   ( t r u e )  
 	 {  
 	 	 i f   ( B a r s C a l c u l a t e d ( h a n d l e )   >   0 )   b r e a k ;  
 	 	 e l s e  
 	 	 {  
 	 	 	 t r y o u t s + + ;  
  
 	 	 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )  
 	 	 	 {  
 	 	 	 	 S l e e p ( 1 0 ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( t r y o u t s   >   1 0 0 )  
 	 	 	 	 {  
 	 	 	 	 	 P r i n t ( " E r r o r :   C u s t o m   i n d i c a t o r   c o u l d   n o t   l o a d   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ;  
  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
  
 	 	 	 	 S l e e p ( 5 0 ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 i n t   s u c c e s s   =   C o p y B u f f e r ( h a n d l e , m o d e , s h i f t , 1 , b u f f e r ) ;  
  
 	 i f   ( s u c c e s s   <   0 )  
 	 {  
 	 	 P r i n t ( " E r r o r :   C a n n o t   g e t   v a l u e   f r o m   a   c u s t o m   i n d i c a t o r .   ( h a n d l e = " , h a n d l e , "   |   e r r o r   c o d e = " , G e t L a s t E r r o r ( ) , " ) " ) ;  
 	 	 r e t u r n   0 ;  
 	 }  
  
 	 / / A r r a y S e t A s S e r i e s ( b u f f e r , t r u e ) ;  
  
 	 r e t u r n   b u f f e r [ 0 ] ;  
 }  
  
 i n t   i C a n d l e I D ( s t r i n g   S Y M B O L ,   E N U M _ T I M E F R A M E S   T I M E F R A M E ,   d a t e t i m e   t i m e _ s t a m p )  
 {  
 	 b o o l   T i m e S t a m p P r e v D a y S h i f t   =   t r u e ;  
 	 i n t   C a n d l e I D                               =   0 ;  
  
 	 / /   g e t   t h e   t i m e   r e s o l u t i o n   o f   t h e   d e s i r e d   p e r i o d ,   i n   m i n u t e s  
 	 i n t   m i n s _ t f     =   T I M E F R A M E ;  
 	 i n t   m i n s _ t f 0   =   0 ;  
  
 	 i f   ( T I M E F R A M E   = =   P E R I O D _ C U R R E N T )  
 	 {  
 	 	 m i n s _ t f   =   ( i n t ) P e r i o d S e c o n d s ( P E R I O D _ C U R R E N T )   /   6 0 ;  
 	 }  
  
 	 / /   g e t   t h e   d i f f e r e n c e   b e t w e e n   n o w   a n d   t h e   t i m e   w e   w a n t ,   i n   m i n u t e s  
 	 i n t   d a y s _ a d j u s t   =   0 ;  
  
 	 i f   ( T i m e S t a m p P r e v D a y S h i f t )  
 	 {  
 	 	 / /   a u t o m a t i c a l l y   s h i f t   t o   t h e   p r e v i o u s   d a y  
 	 	 i f   ( t i m e _ s t a m p   >   T i m e C u r r e n t ( ) )  
 	 	 {  
 	 	 	 t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ;  
 	 	 }  
  
 	 	 / /   a l s o   s h i f t   w e e k d a y s  
 	 	 w h i l e   ( t r u e )  
 	 	 {  
 	 	 	 i n t   d o w   =   T i m e D a y O f W e e k ( t i m e _ s t a m p ) ;  
  
 	 	 	 i f   ( d o w   >   0   & &   d o w   <   6 )   { b r e a k ; }  
  
 	 	 	 t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ;  
 	 	 	 d a y s _ a d j u s t + + ;  
 	 	 }  
 	 }  
  
 	 i n t   m i n s _ d i f f   =   ( i n t ) ( T i m e C u r r e n t ( )   -   t i m e _ s t a m p ) ;  
 	 m i n s _ d i f f   =   m i n s _ d i f f   -   d a y s _ a d j u s t * 8 6 4 0 0 ;  
 	 m i n s _ d i f f   =   m i n s _ d i f f   /   6 0 ;  
  
 	 / /   t h e   d i f f e r e n c e   i s   n e g a t i v e   = >   q u i t   h e r e  
 	 i f   ( m i n s _ d i f f   <   0 )  
 	 {  
 	 	 r e t u r n   ( i n t ) E M P T Y _ V A L U E ;  
 	 }  
  
 	 / /   n o w   c a l c u l a t e   t h e   c a n d l e   I D ,   i t   i s   r e l a t i v e   t o   t h e   c u r r e n t   t i m e  
 	 i f   ( m i n s _ d i f f   >   0 )  
 	 {  
 	 	 C a n d l e I D   =   ( i n t ) M a t h C e i l ( ( d o u b l e ) m i n s _ d i f f / ( d o u b l e ) m i n s _ t f ) ;  
 	 }  
  
 	 / /   n o w ,   a f t e r   a l l   t h e   s h i f t i n g   a n d   i n   c a s e   o f   m i s s i n g   c a n d l e s ,   t h e   c a l c u l a t e d   c a n d l e   i d   c a n   b e   f e w   c a n d l e s   e a r l y  
 	 / /   s o   w e   w i l l   s e a r c h   f o r   t h e   r i g h t   c a n d l e  
 	 w h i l e ( t r u e )  
 	 {  
 	 	 i f   ( i T i m e ( S Y M B O L ,   T I M E F R A M E ,   C a n d l e I D )   > =   t i m e _ s t a m p )   { b r e a k ; }  
  
 	 	 C a n d l e I D - - ;  
  
 	 	 i f   ( C a n d l e I D   < =   0 )   { C a n d l e I D   =   0 ;   b r e a k ; }  
 	 }  
  
 	 r e t u r n   C a n d l e I D ;  
 }  
  
 d o u b l e   i R S I (    
 	 s t r i n g                           s y m b o l ,  
 	 E N U M _ T I M E F R A M E S         t i m e f r a m e ,  
 	 i n t                                 p e r i o d ,  
 	 E N U M _ A P P L I E D _ P R I C E   a p p l i e d _ p r i c e ,  
 	 i n t                                 s h i f t  
 )  
 {  
 	 i n t   h a n d l e   =   i R S I ( s y m b o l ,   t i m e f r a m e ,   p e r i o d ,   a p p l i e d _ p r i c e ) ;  
 	 d o u b l e   v a l   =   f x d C u s t o m I n d i c a t o r ( h a n d l e ,   0 ,   s h i f t ) ;  
 	  
 	 / /   R S I   a p p e a r s   t o   b e   0   i n   M Q L 4   i n   t h e   f e w   m o s t   l e f t   v a l u e s  
 	 i f   ( v a l   = =   E M P T Y _ V A L U E )   { v a l   =   0 ; }  
 	  
 	 r e t u r n   N o r m a l i z e D o u b l e ( v a l ,   2 ) ;  
 }  
  
 d o u b l e   t o D i g i t s ( d o u b l e   p i p s ,   s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
 	 i n t   d i g i t s       =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ;  
 	 d o u b l e   p o i n t   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ;  
  
 	 r e t u r n   N o r m a l i z e D o u b l e ( p i p s   *   P i p V a l u e ( s y m b o l )   *   p o i n t ,   d i g i t s ) ;  
 }  
  
 d o u b l e   t o P i p s ( d o u b l e   d i g i t s ,   s t r i n g   s y m b o l )  
 {  
 	 i f   ( s y m b o l   = =   " " )   s y m b o l   =   S y m b o l ( ) ;  
  
       r e t u r n   d i g i t s   /   ( P i p V a l u e ( s y m b o l )   *   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ) ;  
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
 / * < f x d r e e m a : e N r t P W t z 4 z i O f 8 W V / T J 3 1 d 2 n 9 8 O z O 1 W O 4 3 S y m 9 f Z 7 u 6 Z / e J S b C X R t i P 5 J D m Z 7 F b + + x F 8 S J R M J b I i J 0 7 M 1 E z b F i k Q J A G Q A A H Q 6 7 r d / y R d V e 3 u T a M w 9 K d p E I X J 3 q 9 e 1 1 a 6 / w m 6 C v q m Q w 2 z u 3 c V + P P Z 3 q 9 J 1 + 7 u H Q w O e 9 9 O x v D L 6 u 4 l 0 T K e + v B D 6 + 6 p N n 2 a e v G 1 n 7 K n z t 6 v j 0 F X X R + e q Y r g m T q G p 6 0 J D / V T C M 5 W M D h d B A 7 V P T 7 7 P h i u D c 1 Y D 1 r l 2 M E I I H D m + m N n m 0 L 0 L A z P a g D P E s K z M T y 7 A T x h f 2 1 C K 0 4 D e I 4 Q n o v h u Q 3 g u S J 4 D p l e t Q F z w K s C g G S C 1 Q b c 4 Q g J 0 N E I Q K 0 B Q E 0 I k L C b q j c A q A s B G g S g 0 Q C g k K g d Q t R q A y 5 x h F T t E K p W G 7 C J I y R r h 4 r A B n z i C O n a I X S t N m A U R 0 j Y L i X s B p z i C g n b J Y S t N e A U V 0 j Y L i F s r Q G n u E L C d u k 6 o r U l X I E 6 A W A D T n E N I Y Y U Y A N O c Y U Y u o R T t A a c 4 g o 5 x S W c o j X g F F f I K S 7 h F K 0 B p 7 h C T n E J p 2 g N O M V d 5 R Q d L d Q K Y R V t X V Z h 7 4 p A E m b R l S Y g V T F I w i 6 6 2 g S k I Q Z J y F H X m o A 0 x S A J Q e p 6 E 5 C W G C Q h S d 1 o A t I W g y R E q Z t N Q D p i k I Q s d a s J S D F d q n Q j a z c A q Y r p U q V 0 6 b Q i 0 R h p A c R G z K O J k S S U b j R h H l X M P C p Z G o w m z K O K O 6 6 T j h t N m E f X x S A J P x p N m E e v w J L w o 9 G E e X Q x i + u E H 4 0 m z K O L m U c n z G M 0 Y R 5 d z D w G 1 d u a M I 8 h Z h 6 D M I / h N A E p p k u D k n o T 7 j H E 3 G M Q U j e b c I 8 h J i K D 0 K X Z h H s M M R E Z h C 7 N J t x j i I n I I E R k N u E e Q 7 z 0 m I S I z C b c Y 1 Y Q E V l 6 T H N t g 4 I p J i G d A r T a A m g Q w W b a a w O 0 h Y q D S u S F 2 c Q G 8 C R A d z 0 E 8 a S I B S + 1 y l h N e K Y K J O F s S 2 2 A p J g L T c K F V h O W M c V c S C 1 v l t 4 e k t Q e 1 Y h j r C e R X J 9 j V K F m r F F 4 D V Q c V a i R q E T w W O s z j C n U E k 3 C 0 V Y D h j G F B h q T c L T l t m a x B X 5 5 x M 8 v 5 9 H 0 J 7 E y a 2 B l B n r X V G j E w X b o N I 7 m u N i E Z 2 5 3 7 2 s c L R e n 0 Y x N u z e f w z e T l s B 3 p b u H T b L o c / R w e x n N V 6 t b r I i v r 3 b 3 9 p c P y X k 8 8 u f Q a N I 1 E I J R e o O w x W 0 D P l 4 Q + j E t G w f T n / A V o T o L E u 9 y 7 q M h u e w q Z F j 8 P 1 M / J h Z 0 p f u f R 9 z z Y M Y b i x H I I J l M l 0 k a 3 b I X H T Y m Z L R g Q B + S 1 L + l 7 d y i r s w n F A x C 4 S w 6 X / i h P z u P Z 3 6 M c V Z R 0 w s v 9 m 5 9 1 D y C H k X x L O G 6 i S A u g j D M U U V D l 0 y 9 u U 8 L w y i + 9 e Z s A B M f Y K V R j P u h k y l i P Q C j e / 5 d z 7 6 T q U 1 S L 1 3 i 1 z R K N F E Y X V 1 B V Y W M 3 8 x L v Q y z R 1 w l D V K C i Y 7 K + 0 e D / j 8 6 x 4 e d H 4 P O U e / 7 o N M 7 + 6 N z c T 4 6 H h + f n 3 X O L w Z n F G c E F o 8 X b Q q 9 O v e v U m j J 0 B U y 8 W m 0 w L 9 N a A h V u P e C l I 0 A m o c 7 L w 5 g A r n p Q u M Y L d P F M k 1 4 w A F 6 B u + p p A s + / a k A W N T M N G E D h Q Y D 6 N u b / r x G h B n O P k + j e R R T l v l L z + 2 7 h 4 e U c r M S N H x / Y a R 4 h Y j t 8 7 0 f X N + k / B j B p D O + m C A S i 7 0 c Y 1 U D e g V K + J y k D 2 Q c y X v U 1 i j k L F W v z 1 o a A n f Q O z 5 B 0 z A 8 P z w e d / A U D Y Z t 8 x t u d R z c + i q l e 0 X p 4 v 8 o 2 x x 4 D 6 O b 4 C p V O X j 0 D Y 1 7 x N X k H 6 M e E + B D f + 6 l w Z 1 P X 7 / y 5 o n P u j L 0 0 2 U c s q 4 g X B U 6 d / 3 o F v E E k 3 C / / Y 3 1 5 S K O r o L 0 N A r 9 B 9 o X T c G 2 o Z f J D p 0 c v v H z Q H g w H y H K h 2 U c e J G T n S i 9 V O a g 9 / s 3 / v Q n a e k 4 v P D j I J p 9 J M G j c 4 L n t P c 7 o / Q f v V H n C H 2 O z w 9 6 f z w r d 1 S n K H c 0 V d l m w c O x Z E n u c B P z E u n j V E k f D f c P Z r w 3 9 + N 0 z K Z B Q / X G R 4 N O Q d r A H A w H P T Q 9 B w x d / N a J d + n P 1 V J H c M l 3 b 7 4 E F q H j m P E D G v k U 4 T + B f y i Z F 7 C i g z 6 m x d y W o n 8 +  
 H A 7 6 s A L l H X w s 4 6 J V 4 q K t 4 g I V 7 q B s g v + t Q g f N 1 3 d W z s R R b Y T 0 S o T 0 t 0 H I q E T I e B u E z E q E z L d B y K p E y H o b h O x K h O y 3 Q c i p R M h 5 G 4 T c S o T c V 0 N I K 8 h E h c d I K w h F 5 b V Q 0 r B w T 6 K R H 8 7 O o j S 4 C q Y e O B c V d 1 0 v 3 C Z p b J t U X k r o v q G 8 V J Q 3 R 0 4 L m y O N N X 3 q J 4 l 3 7 f d m d 1 4 4 9 T e + O 0 K d E 2 + P F G 5 7 h L 8 b 3 H e T + 2 5 x 3 2 3 u u 8 N 9 d 7 n v q s L / U F v d g G k G 0 z G 4 3 R e 3 6 j + z 7 z I L + y 5 d a U v h U 1 6 2 7 7 p C f 8 R C 9 V o K n 1 u 5 5 S L I I q x G f n z n x + f x S Y Q o D Z Q J R u H 4 O a 8 q j V I P k T V V h g y y e a I c k x X T z m V 6 W u H d P 3 y v s N M 0 C n B D o v R x g i o r R A q c Q H X D R U f R M u b t K a r J A w 3 C Z V o U U X z x y E d D M i s U q 6 R 4 E M 4 E H b W z Q t Z N l X U z f 6 / c S Y 2 D W O q i k h W V O p h D W + m e n o P j O 1 c u F H T N z A q R y g t Y J o V i i y / G q B b L D b 4 c 4 Z t U A w e k i 8 V 2 A T h G P C l g X q h A k O c g t G t 6 y 8 y 6 L 9 W D 6 f w d B v O U c s o G B b x W r f 6 2 I X E B 9 R 8 9 J G U P z 4 e d s 8 H v 4 0 4 d F V d T S 6 L W 2 R I V 9 1 L x N e J q + E q i F n t 4 r a X d G g Y Z 8 e O z r 4 V B 7 / T G H S w / O 0 f n 3 4 a j z v i 8 M x r 3 i P V f a r t S 2 5 X a r t R 2 p b Y r t d 0 X a r u a L r X d b d F 2 F f F O 4 P n t 1 8 r J p r K j m q 6 p y q P N T R x t / r X q a B P B + 7 x d Z 5 u m K s 8 2 6 5 x t 2 q W z T U L w J + e j 0 Z r n m 0 Z J + d P M n T 7 f N N f W A H W F P 9 + E u c h m Q Z 5 w S p 1 P 6 n x S 5 5 M 6 n 9 T 5 2 t P 5 T K n z b Y 3 O p / E n n H j d r 3 u + a S r y f H M v j 6 q R 5 5 v y f F O e b 5 Y E v S H P N 9 s 4 3 1 w R t b a 5 o + e b p i P P N 6 W u K 3 V d q e t K X V f q u u 9 B 1 5 X e v O / + f N O w T H m + S b I p K p X n m x h X h P t J k K T n V + Q c k u g W F k J 1 8 G 3 4 b X T w C X 1 8 3 b + A j 3 4 P / + p 9 w x / 9 o 0 P 4 O P v n w S d U 7 e 8 X f 8 A H V E H / Q x n 6 g I f o X a i C P g A Y + o A y 9 A F Q 4 F c P f 0 B N 9 A R + o Q 9 4 A X 6 h m u g D y t A T e B 1 9 Q B X 4 Q G X o A 5 V t Q A e y l T Z 0 I G x B S P v L O P b D l A y u t m n u J 3 1 5 + U m f h X H v 7 F H s O 6 d e / B N 1 u X M V x Z 0 Q j V 2 H R d 4 / x 4 Y l h 3 p 1 W w I Z D w 8 H + w f 7 Z T a E E g X / b Y o Z z a 3 L U L A E e 0 X 7 L G S 2 l K L g + O q D p i g g n e s g 0 p n 5 n V / Q x P z X 8 + E p 5 f g U U 9 / V h A S 2 V c V I N j w r e q O g 5 v / K N r 3 0 c R / 1 I a V l z O L 1 U V j P a o P 1 L O r N M g b 6 T P L h + i C u L A r t H u G / p D O F D n Z + w V K m o 3 0 2 a j C j U r L w m a 6 y q 8 x Y n R 1 E e d N l j W 5 v o 2 h x E M Q k J z 0 j 7 t C / 9 5 P 0 c x p 9 j u a I A J j h D + q O f g a L o q 8 c P B 3 c + f H D 6 u O T 4 D Z I e Y M 9 m o E L L 0 k G / B l D + z z e S j Y O k / Y X T n w I n 2 + a x c 1 6 L J 4 p p y q n n L b F + m j 4 D t E 2 1 v e m N 5 0 x W X 1 h F G C P m w b h N e r I 8 8 z v u k X e t 7 Y l M 1 B / o C j 9 g W h f e 4 j / K i Q A 9 i + F l F w v k Q K V d n 6 D G p Z O I o G Z C f D 0 w h k a o g n 9 F J i a b D r R w f n R S Z / O T t C f R 9 Q r F f 0 C Y d H H 7 x 8 G 4 W z / g T I K a Q R B I 2 X H B 7 y d K j + e v V 2 U j 2 d F o g Y 9 4 5 w 6 0 T B d D I b H 5 w e T / r f h c H A 2 f s b 0 Z U O X V v Y k C M e h Y F j Q O O 4 F 4 R z R 5 Q S v S b A J v o i D q c g O p 7 J T l C o z I P o 2 j a M k u Q 9 m 5 J g 1 4 6 a n 5 r p l i d W G U Q 1 c b K N w F m S C f P t V a U C R a d F 4 A j t o s a q x u T C K / v m 2 s j W K 8 0 G / 5 z b Z X D w l O i q j z f W n R E c D C z X q g j r t d g 8 C N K v h 1 J 8 s g k W y L t / + 9 x N 8 2 8 x q r j 2 J Q i W f Y l B o r r z Z v 5 Z J W q T 7 2 E + W 8 5 T Z U O + 4 L i P 6 m 8 B W a R P b k j a C o 2 2 8 P t 8 u 5 9 5 7 Y X E 0 g 2 e + F 1 8 + d C 4 o O T 3 D 3 G Z x 9 2 A b W + O G 5 T h k + W u R u R 2 l j Q C b j W g H e a D I C h 8 r j I 9 T 6 v g l 9 F 1 w y M a D O Y f x B 2 B 4 Z 8 H f 8 P T s l o M 5 R J W 2 K i o P k R p i u Q 6 6 / E v w 7 Q q Y  
 R e R j B K a P K E Q L U d k R y y m V r 7 h j W a U K J a e s M n z m m g X p E r Q C k l k L q + 5 n 5 S q r f l q 0 x u p x o 5 7 P A g 5 p E n l n 4 Y L M t 4 t h b n K F u W d X 2 Q s P S n / 4 / s 9 E 5 G o H h c z p S / R i 5 v J V G k z S Z u 7 w J S r m 3 L 3 K x U h H B Z R m X k b J 7 O z 0 k Y / 4 k n Q t 6 f r j 0 D U b k X 0 v 8 T N t C P Z n Z I N N B 5 M r X S F / B G A B R c m E f A g 4 w K B b g K w B 9 E 5 v 9 A + 6 w s D u i J B w v g F Z X X W q d 5 M u 6 c H Q C 6 + Z E y 3 b g 6 I i / J h t I s D R 2 1 T E W z f S F V z 9 M P Y y y x Z C R v m i K K p S q H E R J b n K t B m D l K O 0 Z J A 6 i 8 h W a r g M w y C 8 3 v Q W 0 K j h L V E y S L W y Z c Q 9 p Y c / I e 5 w H Z 2 w t G 1 0 d z p q 0 l G f t T o f h z P w L w J 8 R H a n g B U n k 2 A 4 O h b I A o s C Q q W L 3 P J j w k U V S I t E T y f c Y 3 C p W i z m g T / L R A e O P B 4 e 9 w e T / s n 5 a P A C w x J q M 1 s D a n i g a s z i l f A r R + Y L T 8 v y R k H W Q J e O o v v J q R c + T G i N i c q k 8 + D P q b 8 A K d L P r X T 8 Y v R t g Y b i x L / z s 5 0 5 T v T / p 5 / t O / I a T C 3 V F d Q k f j z B z y f U N g L D N u O r t 6 B m Z 3 4 d T w 2 b A Z a G + 2 f 6 k d d g C z y Y F P B T Q T f 4 2 u 1 0 Q 1 e e M x e 8 R L a r I t 5 R m U c d R 7 2 P 5 S W g j S h 6 s H t m L f 8 I 0 p s g x C c s G z + Z K L n N t S H k D Y X r S + c 2 u v O T z j 3 u U m e O + 9 T 5 B U k Q s A e q N U 4 c 7 K L w d 4 z t M Q g a l v a K p 4 2 O 9 q S x s K n h X i P n d q f e n 7 A P T Q p m 8 p b 3 S l p L I T b n a E + I + r X v x e / F U q Y R p D t I s n c u C d r r m c o c Z 1 f D a B z 9 t W z k o N 7 e w Y K W J t l K 9 o b m c T S 5 2 p S i k 5 / R b t J i j r H k B 6 B 9 E a D v p K E c O x y g d a 8 4 j c 9 J g O J J m K t / a G N 5 Z V y y y e w S Z Z N 4 l Q H i e z R f 3 v p V m 1 h S O g r + n T k j K l 9 W u N 7 g 6 w 2 D 5 C e L k F C K Y F g R G j 3 t i 8 m U D F K G F q g p t c 3 k d x a D a Y 4 U 7 w O x c 3 X Q s O n Z 3 p l H s g V R o u N O P q c D I C i H M F J D C E z 5 F g Y p G y Q 8 R k o W S 5 1 X O v D n h O g h O V 5 m 8 r y 9 J T 4 1 F x G Z G j 4 i + P b 2 9 P o Y g Q 6 8 O Q x 4 C T m H V D h F 4 i h Y z B / O w 5 M o S f i j Q t C d i j V I 0 q l y 4 D D U 6 c 1 m 0 E Q B S G a Z L F Q o w C i g O v Q R d w o g 2 I X i K h x U X b O q O 6 u z K k O k I 8 X J a s o x D O M w u I w q Y W h 4 t A + Q O L m 9 9 O P 0 m Y H N 6 l U 0 q G G M T r z L a D m 9 8 W O / G p x V r A h h F I w y 1 U / a J / 2 T 8 c n 8 Z O V j n V e t 6 i t u e u T / H 5 g w B Q 2 q t D i f C v S 2 j p q y C m 8 L p 0 K j h V V N W 4 w j i d 7 N 3 N q 4 e L E R k s D Q L h f / H 0 a h X y 7 O z J d M T g C 1 Z o W E 0 z M D C e Y p c k E k D p g o V h t f l M Q G g j S b s 0 q t y A Q D s F S e N Q x A w 4 t W G y 7 2 6 q l 2 Z 2 1 3 O J N i T 1 t C x t 5 P n 6 X N W 5 3 x Q o X V O d c K x U / M u i u o O D o p j Z A G 8 5 5 X e 8 2 Z h 6 Y X L T d d b + 6 h 5 V n 7 n a 4 x + x D 9 9 S d / I P 9 1 3 K f b H v S 8 d C r k 4 I d 8 Z o s M P A B Z O Q m C T S I q k G e T H / F s U n v 1 s 8 l s t l 7 / c B I S 4 M R L e j a J J n Q 0 D x Y L 7 9 o v x Z W c P q A B v m X 7 W 3 D G 7 H Y H v c k Z I x k 4 X 4 z j 6 L 4 P O g T d e o N W P Y / 3 8 a i 3 r 3 2 2 k e P F w o 4 1 Z 9 H 9 t v m M K + 3 7 j G s m 7 m w n j O 7 B W b y g w d a J F N F K K q y z I R V W X V O F V R R H W V V h W Z g y D M / G v M U d c 7 0 A r t 9 2 J 4 D L M W U A 1 7 N R H O p T A V z m l y 9 f a v C l Z s o I L s q N l o z g e t 0 I L s f a v Q g u Z Y s i u F T N k C F c K 2 L A l i F c M o S r U m T Z M o R r j R A u z S 3 u + i 3 X / M A h X I 4 j Q 7 g + Q g i X 4 8 g Q r h o h X L q y U y F c r g z h k u Z k G e o i Q 7 g k X U u 6 l i F c H z O E y 5 U h X J s O 4 d J c G c L F 7 S t d R Y Z w t R r C Z Y l C u D Q Z w r V b I V y r s t 1 V Z G x W w 9 g s r c 5 Z g i 6 D s 6 h E V 9 9 5 c J a r y u C s u s F Z Z S P Y 7 g Z n u Z o M z v o w w V m u J o O z a g Z n 6 c o u B W e 5 u g z O k s F Z M j h L B m f J 4 C w Z n C W D s 2 R w l g z O k q e O  
 M j h L B m e 1 q X 3 q M j j r N Y O z N F s G Z 6 0 o u s Z W X V M H 9 E i + t 8 9 t r V x 3 / 6 H v q T P 5 e + p g T m o w l a 0 r 8 q I 6 w k r m O 7 + o b p P M J w M d X + W m O r O U Q m t 3 4 x z d L Y t z z J n r w w Y 6 u j L Q 8 W 0 D H c 3 S V V I y 0 B G y 6 c p A x 7 X O j X / b p U B H d 1 c D H Z 1 y o C P z V H 5 G w j i 7 F O n o y k j H D x H p 6 M p I x z q R j l b J x e N j R z q 6 W x b p y C s I M t R R h o T J U E d J 1 5 K u Z a i j D H V 8 0 d Z P h j p u P N T R L K W / 2 f F Q R 1 W R s Y 7 v + r o 6 D b u F l Y I d M / H 2 j q I d w V x n K 6 V w x 0 J H 3 n m 8 Y + 7 A J w M e 8 4 B H t V b A I 9 C B W u d Q o Z T S e H c j H l X l X Y c 8 Y m a R M Y + 1 Y x 7 L 5 r D d j X l U l V c L e t S 5 o M d s p d q t q E c t j 3 r c h D 0 c i w E Z 9 1 g 3 7 t E s 5 X H 5 2 H G P q m K 8 8 2 T 9 m 3 J i w 2 x j S C + 2 V 0 n X 7 y j S j Y 0 x p C n 9 2 F 7 T j w 3 z u S k d 2 d 7 U k c 1 2 p S P b q i S w p C e b 9 G S r F l q W d G V b x 5 X N K W X y + t i u b K p i S 1 + 2 d + / L h v n c l s 5 s N Z z Z H H O X n N l U x Z H e b N L r R 3 r 9 S G 8 2 S d e S r q U 3 2 w f 0 Z s O b P 0 e 6 s 2 3 a n c 0 x p D t b Y W v p S n e 2 9 5 y 6 X 7 q z v S t 3 N l e 6 s z V 1 Z 6 u T w N 9 2 p D s b F e y q 8 t 7 d 2 V R F u r P V d W c r G 8 R 2 2 J 1 N V a U 7 2 0 d y Z 1 N V 6 c 5 W 0 5 3 N M X b K n U 3 V 3 i a P v 1 n I 4 5 9 x v k z k L x P 5 y 0 T + M p G / T O Q v E / n L R P 4 y k b 9 M 5 C 9 P I W U i / 7 Y T + R t 8 I n / O G X A 6 j 4 f + b C M K a E v x V I D s j q T y t 0 h v m + b y N 8 u 5 / F s 7 p H t h L v + r K + W t c v m r q i 6 1 X a n t S m 1 X a r t S 2 5 X a r t R 2 p b Y r t V 2 p 7 U p t V 2 q 7 z b X d L P i x u H J i R x + q d t L p f V z R i n W p F b + u V u x o U i t e 1 Y q 3 6 4 o 7 6 N P y Y S P 5 S V R 5 x d 1 z P h M G f 8 U d m p n n m c o w S 3 H C 2 s 7 m I t H 1 n b g s E l h J 1 y U r t X 9 b p G W V e E k 1 d 5 a X j O 0 K 2 M 2 W J d K n g T e 9 K W r v 3 K t Q K E o D Z v H v 9 W 5 Z Z i v 6 J h h y y s W c 5 q 9 m e l i x X T A i I v W C X c d c k X 6 s 3 C a Y 4 X S I F c B J T C a k e H L K A A G q T + C x A X n S y t K s 0 d x a 3 z g L 3 R t I E 6 V 9 a Q J X O 5 O 0 Y Q v c t c 4 v y z D 2 v X n w b 3 9 W Y 4 0 u 7 X s t e 3 f X a H N 7 E w F I w b I B w W J K w b I 5 w W K V k w T t s G C p T D / m v P V + B W J h A O t V 0 1 y F W Q 3 a z 4 1 m r I X p P D 7 w / c V F E P 7 c C K e 2 c j 0 u p N c E y U O 0 i m 2 2 i b W U U R D n 9 4 I e s 4 S i N d X 2 c h S 3 r m x H o I N h O d q l s b Y p r K V g b t 3 e K i 4 u 7 A 7 e C R v b u 8 X G b Z k L 3 D I b 1 z Q Z l M x v t m Z K P k Z 8 7 O y K U V t 3 W r L E n U U f 2 K i d Z T m p t z q q m l V c H l V t d y 1 x b t O 8 u g 3 z m o A u a G x b J p N i 6 D F C 7 M + / t h t 7 D F q 6 X k 5 D g o i 1 h g / T W s l 1 y Y G 1 S t + a r L 7 W t n x y d z P v r o 2 p u k N n 8 B l p U 0 q 6 o T r K R 8 6 1 a 7 z 7 x B q G T K x R O 7 G G V j r U 0 n R l V x N r G O r b B C A o 2 M m Z J r a Q s Q c y 9 k D G H s j Y g 4 8 e e 8 A 7 G s v A g 5 0 J P K g z 7 T L q Q E Y d 7 G 7 U g Y w u 4 K M L q q I w X h Z 1 o P M n L 9 Q G Y O O z l 3 0 S D N C + S t p G k j c L W 6 5 3 I 5 j A x n 2 F U I I a O q x d 0 m E d c z s C B x T F e b P A A U P b r q s X e Z e H q p s X y X 2 L c P M i u Y P x n d 2 8 a L S R S G M 3 b 1 4 E R 6 f V m x f T p F P z Q E g v m m j 1 b b F i v e W V i 4 b + r A T 4 T o c j U 3 N Z G o z c M I 4 X X t H t R 0 7 x D k K i x F b t i I H o Q H T k t a C 1 0 e C k 5 v W I H K 5 a k e o x f t p r K S c c H r o A D / 0 N 8 D A E e B h v g I c p w M N 8 H T w 2 I M r 1 l k Q 5 I v r g 6 u F 7 L n b e R p T z v q n K Z l 3 e N J v 1 u p N 1 e z 1 h r h W 3 c 7 q 9 J U 4 z J v q z L J E w v 8 R / G z u Y M H Y m c s 0 w p L / M G r c C 1 X R D U 8 2 S H 5 q 6 u 2 G g h i k d Z k Q O M 7 + 1 7 D D z 5 H U 3 7 9 h j x j B 3 0 2 P G I R 4 z 9 a 6 n N k s W m Y / u M m O 9 e 5 c Z S 7 r M 1 H W Z M U v e p 7 v s M u N s l 5 G x E J H x U a 2 M j r Q y v i B D k d D K W H c b r U k z 4 6 o M  
 c N c 0 M 6 7 c q S T t j N L O u K t 2 R l f a G Z s K c 6 f S z l h X n K v S 0 F g Q 5 a Y i P a C l B 7 T 0 g J Y e 0 N I D W n p A S w 9 o 6 Q E t P a C l B 7 T 0 g P 5 4 H t C v f 8 u Y q c h 8 6 m u f u L F 0 6 u t f K b Y 1 P t B v m T z d r I z o x c / A U c l P E s o 9 O u r E c Y g W g 2 D W O U E 7 h j D x O 5 8 7 a B 2 8 R h T W G f v x b R B 6 a T V z w G 6 9 M X O o 7 R w q Z 1 i + k 8 O 3 M s p P J 1 M q W d 8 h t / l W m G u m + O 8 1 z 9 3 M S u d + 8 h A f a l 7 + y 5 + m + V l s Q e f K y r 8 t Z n T s + X I b F 7 P V g j P r k J f G D w s m o c 7 3 / z 4 Z D 3 4 f s 5 + X / 4 K 1 S t 3 q n Z Y i d 1 r i G 2 6 4 v Z B o A 6 a 8 + g Z M 9 O L r 7 L 9 y b q B W f 0 T Z W J F U x c 5 h U 0 w t S M q S T w F 9 2 1 Q + B u d H J 3 3 a R A B O i g w N G H J C d I d B O N t / o B N O 2 o A 8 k g I q L l P / E 1 b Z O h 4 n 1 e q Z g U f g d 7 5 t 8 u g P / h G R G 2 M k y l Z H C a G a o o J J i k v F a i P M M y 3 W X H K a f o 9 k Y G c Q o i X M n 3 V G y + k U r d h X y / n 8 4 X l 9 E q F y G J E t s A n 7 3 Y C u Z m p W x A y s C E m S N I a I s F 5 4 P S 8 L G f S 4 H 8 V 0 u c d p P c + H Z 4 P h Z H j 8 9 W g 8 O T n / M R j m N X v h 9 I a u A u D 0 d 9 Y / O q c 1 8 0 b y t I 8 K 3 n e P f j 7 s U z 4 k u O 9 7 Z L d d t t O h I r Q v R G I Y 1 r i S r k D 7 R s q J v Z 1 / n W B 3 F M x m h O x W y / 6 J l 5 y y s A N 0 b 7 w 4 H S 0 v f y D a J B t S t o q 1 v R d q J Y p K h 8 T J C O O D 2 L t n J L X J D Z G x v n d D S x s o 6 G G H d f H p r L L 6 l m 6 g r q 7 s K 1 N 5 1 Q 2 U 3 s Q L e F 0 R h s o T J J j n f g f e u O t 2 m U D r Y T G 2 r o / u 3 / 7 2 h I / u m r g 9 7 y K 8 t i c u G f a 2 p Y G + m + 6 2 Z Z S f Z G x z J W L m Q 7 v b m p X x M J s h Q a M d E j y + G v s J X I f 3 X j x j F X x H E o f 0 0 0 R Y 8 q b Q l C 0 h w j d Q z 8 3 X J V C z n e Q S x 1 c H / m 3 0 X q i T 3 O A F G H e 8 6 Z T d c P L M T T s l E r X 1 n S V R 6 3 V J 1 G q L R I c + J a x 3 Q 6 K A c W 0 S N d 0 y i W o 7 S a L k d A s N E q w 9 p D 8 2 Q 9 G b p s G d P 6 k 6 n Q K g i z g C Q + U k p J Y 7 C E r u n X w 9 H x 6 P j 0 6 P + 5 P h 6 H g y G p 8 P T y d 3 y h f L L L + W U g O n B X S 9 8 O O U 6 Z R T R I 6 T u R d e L + m p A W r 3 9 H 9 P z M x x z E s R Y r F P b a q a A X 5 Z m v 5 Z Q f 8 Z Y w Q B 0 Y S q f 1 E 1 9 5 + F V 2 6 x I 2 P d V 2 6 9 6 2 A 6 S c B 3 n + L g 6 K r N w u 7 u g i R A h D G Z B 5 e x F z 9 M r p n L X o G 3 w D z I a m I G r K o H t B j c + v E k y Y 1 n a K g s h W G z i I I w n c R L S o s 6 u V w 5 J 8 C r G L h 9 1 l W + K I p K X k 4 j + k D F w q i i 8 m p 1 h b y g V b 4 g f u O R i I t l 4 k / u g j h d e n M 0 e F H m O x J G + d B x p d h Q j b m F c D u M G I D w 0 W B c + + H 0 Q Q A E 6 p T K J 7 E / L 9 t l y 1 W 8 W f E E H H 3 x 7 / w w T Y A w M h s P o 2 8 3 K 5 0 + T N H 0 s V h T a o C A 4 h B E w y R Z I E q c T b C I L J x n 6 3 k V K u H y Q v C h S d G e D 2 b 8 J r q f 5 G G v Z Q e 7 6 9 h b 3 E y i O E C 4 e J l u h W q M o 8 U 4 2 o 9 S L O a J t Y x x F m K n I M 4 q 5 w E 1 0 2 j x E D P R o c O N X u x B B 7 j h U 6 c 3 v 0 Y t p T e 3 w b T z 9 X T / K G M f P 5 n G w a I E E S Q q v k K F s P 5 N m i 6 S 7 v / 8 z / 3 9 / R c v B / S F e h W h G u C a R k F g t z e b M 2 2 h M Q p T 7 h Y 6 c E l h Z + m 5 w S A 7 o e b O 2 R 2 y Q H D i J E l j p g F U I m / S k x J G l U L B t U e X B e K s V 0 Y j K x D h M I u W 1 H J Y D w f m B / j I 4 o Y Q 5 e U 3 e 6 8 2 L q z U E i L a F + I + D i R 8 E M D M T B E D Y D + w F T R W q 6 w g o U N w S b r G d B B P s 0 f u Z q f S L X o r W F T U a w M V P R + L k Z 9 O j h m n i s e i V G X z 1 A k b K 3 j C 5 N M K U q X y N o Y E Q u 3 p 7 B w h 4 X X q h Q + T P j 2 b U c W z I 6 r 3 Y l S I L 0 4 V J l p N T L R 2 M L E y 3 l 2 5 v k L E u 4 I 7 L t q j V S w b 7 p 9 H Y q V S G w N B h Z h V 7 C P x f 1 p B Q l j r x V g w P 0 y K x 2 p 6 B B E e o i Q K L 5 8 S W 8 l O N w v a h E G 1 w j w T W B m n Q m E b k p 0 P l u U i A 8 v t F k t b b R g 2 N N l q g f p V N R v i a u 2 i  
 Y u R H n + y k Y A U P Q Z 0 2 J L o L L o V I B b z H x w 6 P R K N F 3 z 3 + l I v e t 5 c j Q z e F T 7 g M c r k g L K o 6 5 7 5 r V D 2 n B w 1 I C b Z d g v 0 N 1 S a D r m 4 4 v 6 5 k C O 0 h v D p / U S t 6 B 4 8 O + E d U c 1 j B X a u N u 1 1 G X c X q e g F 3 w 1 7 B 3 d K r c N f W w F 0 X 4 a 7 X x t 1 w z C L y r l H G X V V 1 v Y y 8 W Y 2 8 v g b y h g h 5 o z b y p l V C X n f L R G N g u i r g r m m V u B u 1 c X 8 s 6 g f 0 N L e G G a K W g v 3 4 / w I c k O U =  
 : f x d r e e m a > * /  
 