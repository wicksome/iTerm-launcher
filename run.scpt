FasdUAS 1.101.10   ��   ��    l      ����  i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     K    	 
 	 l     ��  ��    ( " get current path for load script.     �   D   g e t   c u r r e n t   p a t h   f o r   l o a d   s c r i p t . 
     O         r        c        n        m   	 ��
�� 
ctnr  l   	 ����  I   	�� ��
�� .earsffdralis        afdr   f    ��  ��  ��    m    ��
�� 
ctxt  o      ���� 0 currentpath currentPath  m       �                                                                                  MACS  alis    t  Macintosh HD               �I"qH+  �*l
Finder.app                                                     ������        ����  	                CoreServices    �H��      ��vn    �*l�*k�*j  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��        r        I   �� ��
�� .sysoloadscpt        file  4    ��  
�� 
file   l    !���� ! b     " # " o    ���� 0 currentpath currentPath # m     $ $ � % %  i t e r m 2 . s c p t��  ��  ��    o      ���� 	0 iterm     & ' & l   ��������  ��  ��   '  ( ) ( r    * * + * n    ( , - , I    (�� .���� 0 	openiterm 	openIterm .  / 0 / m     ����  0  1�� 1 n     $ 2 3 2 4   ! $�� 4
�� 
cobj 4 m   " #����  3 o     !���� 0 argv  ��  ��   - o    ���� 	0 iterm   + o      ���� 0 iterm_window ITERM_WINDOW )  5 6 5 n   + 2 7 8 7 I   , 2�� 9���� 40 sendcommandtoallsessions sendCommandToAllSessions 9  : ; : o   , -���� 0 iterm_window ITERM_WINDOW ;  <�� < m   - . = = � > >  l s��  ��   8 o   + ,���� 	0 iterm   6  ? @ ? n   3 B A B A I   4 B�� C���� 20 sendcommandeachsessions sendCommandEachSessions C  D E D o   4 5���� 0 iterm_window ITERM_WINDOW E  F G F v   5 8 H H  I�� I m   5 6 J J � K K    - L��   G  L M L m   8 9 N N � O O  p w d M  P�� P m   9 < Q Q � R R  ��  ��   B o   3 4���� 	0 iterm   @  S�� S n   C K T U T I   D K�� V���� 0 sendkeystroke sendKeystroke V  W�� W m   D G X X � Y Y  C M D - O P T - i��  ��   U o   C D���� 	0 iterm  ��  ��  ��       �� Z [ \ ] ^��   Z ��������
�� .aevtoappnull  �   � ****�� 0 currentpath currentPath�� 	0 iterm  �� 0 iterm_window ITERM_WINDOW [ �� ���� _ `��
�� .aevtoappnull  �   � ****�� 0 argv  ��   _ ���� 0 argv   `  ���������� $���������� =�� J N Q���� X��
�� .earsffdralis        afdr
�� 
ctnr
�� 
ctxt�� 0 currentpath currentPath
�� 
file
�� .sysoloadscpt        file�� 	0 iterm  
�� 
cobj�� 0 	openiterm 	openIterm�� 0 iterm_window ITERM_WINDOW�� 40 sendcommandtoallsessions sendCommandToAllSessions�� �� 20 sendcommandeachsessions sendCommandEachSessions�� 0 sendkeystroke sendKeystroke�� L� )j �,�&E�UO*���%/j E�O�k��k/l+ 
E�O���l+ O���k�a a + O�a k+  \ � a a ^ M a c i n t o s h   H D : U s e r s : y e o n g j u n : g i t : i t e r m - l a u n c h e r : ] �� b  c��   b k       d d  e f e l     �� g h��   g T N------------------------------------------------------------------------------    h � i i � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - f  j k j l     �� l m��   l   Utils for iterm2.    m � n n $   U t i l s   f o r   i t e r m 2 . k  o p o l     �� q r��   q  	 @example    r � s s    @ e x a m p l e p  t u t l     �� v w��   v %    set iterm to openIterm(2, 2)    w � x x >       s e t   i t e r m   t o   o p e n I t e r m ( 2 ,   2 ) u  y z y l     �� { |��   { . (   sendCommandToAllSessions(iterm, "ls")    | � } } P       s e n d C o m m a n d T o A l l S e s s i o n s ( i t e r m ,   " l s " ) z  ~  ~ l     �� � ���   � ; 5   sendCommandEachSessions(iterm, [" -L"], "pwd", "")    � � � � j       s e n d C o m m a n d E a c h S e s s i o n s ( i t e r m ,   [ "   - L " ] ,   " p w d " ,   " " )   � � � l     �� � ���   � ? 9 @see https://www.iterm2.com/documentation-scripting.html    � � � � r   @ s e e   h t t p s : / / w w w . i t e r m 2 . c o m / d o c u m e n t a t i o n - s c r i p t i n g . h t m l �  � � � l     �� � ���   �   @author yeongjun.kim    � � � � *   @ a u t h o r   y e o n g j u n . k i m �  � � � l     �� � ���   � T N------------------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Open and Split iterm.    � � � � ,   O p e n   a n d   S p l i t   i t e r m . �  � � � l     �� � ���   �   @param row    � � � �    @ p a r a m   r o w �  � � � l     �� � ���   �   @param column    � � � �    @ p a r a m   c o l u m n �  � � � l     �� � ���   � %  @return created iterm's window    � � � � >   @ r e t u r n   c r e a t e d   i t e r m ' s   w i n d o w �  � � � i     � � � I      �� ����� 0 	openiterm 	openIterm �  � � � o      ���� 0 row   �  ��� � o      ���� 
0 column  ��  ��   � k     q � �  � � � q       � � ������ 	0 iterm  ��   �  � � � O     n � � � k    m � �  � � � l   �� � ���   �   Open iTerm    � � � �    O p e n   i T e r m �  � � � Z    ! � ��� � � =   	 � � � n     � � � 1    ��
�� 
prun � m     � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   � m    ��
�� boovtrue � r     � � � l    ����� � I   ������
�� .Itrmnwwnnull��� ��� null��  ��  ��  ��   � o      ���� 	0 iterm  ��   � k    ! � �  � � � I   �� ���
�� .miscactvnull��� ��� null � m     � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��  ��   �  ��� � r    ! � � � 1    ��
�� 
Crwn � o      ���� 	0 iterm  ��   �  � � � I  " '�� ���
�� .sysodelanull��� ��� nmbr � m   " #���� ��   �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   �   Split pane    � � � �    S p l i t   p a n e �  ��� � O   ( m � � � k   . l � �  � � � U   . X � � � O   7 S � � � U   ? R � � � I  H M������
�� .Itrmsvdpnull���     obj ��  ��   � \   B E � � � l  B C ����� � o   B C���� 
0 column  ��  ��   � m   C D����  � l  7 < ���� � I  7 <�~�}�|
�~ .Itrmshdpnull���     obj �}  �|  ��  �   � \   1 4 � � � l  1 2 ��{�z � o   1 2�y�y 0 row  �{  �z   � m   2 3�x�x  �  � � � l  Y Y�w�v�u�w  �v  �u   �  ��t � U   Y l � � � I  b g�s�r�q
�s .Itrmsvdpnull���     obj �r  �q   � \   \ _ � � � l  \ ] ��p�o � o   \ ]�n�n 
0 column  �p  �o   � m   ] ^�m�m �t   � n   ( + � � � 1   ) +�l
�l 
Wcsn � o   ( )�k�k 	0 iterm  ��   � m      � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   �  ��j � L   o q � � o   o p�i�i 	0 iterm  �j   �  � � � l     �h�g�f�h  �g  �f   �  �  � l     �e�e   $  Send command to all sessions.    � <   S e n d   c o m m a n d   t o   a l l   s e s s i o n s .   l     �d�d   $  @param iterm - iterm's window    � <   @ p a r a m   i t e r m   -   i t e r m ' s   w i n d o w 	
	 l     �c�c   2 , @param command - command sended to terminal    � X   @ p a r a m   c o m m a n d   -   c o m m a n d   s e n d e d   t o   t e r m i n a l
  i    I      �b�a�b 40 sendcommandtoallsessions sendCommandToAllSessions  o      �`�` 	0 iterm   �_ o      �^�^ 0 command  �_  �a   O     5 O    4 X   
 3�] O    . k     -   I    '�\�[!
�\ .Itrmsntxnull���     obj �[  ! �Z"�Y
�Z 
Text" o   " #�X�X 0 command  �Y    #�W# I  ( -�V$�U
�V .sysodelanull��� ��� nmbr$ m   ( )%% ?�      �U  �W   o    �T�T 0 eachsession eachSession�] 0 eachsession eachSession 2   �S
�S 
Trms n    &'& 1    �R
�R 
Crtb' o    �Q�Q 	0 iterm   m     ((�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   )*) l     �P�O�N�P  �O  �N  * +,+ l     �M-.�M  - $  Send command to each session.   . �// <   S e n d   c o m m a n d   t o   e a c h   s e s s i o n ., 010 l     �L23�L  2 &   @param iterm   - iterm's window   3 �44 @   @ p a r a m   i t e r m       -   i t e r m ' s   w i n d o w1 565 l     �K78�K  7 A ; @param commands - command's array for send to each session   8 �99 v   @ p a r a m   c o m m a n d s   -   c o m m a n d ' s   a r r a y   f o r   s e n d   t o   e a c h   s e s s i o n6 :;: i   <=< I      �J>�I�J 20 sendcommandeachsessions sendCommandEachSessions> ?@? o      �H�H 	0 iterm  @ ABA o      �G�G 0 commands  B CDC o      �F�F 
0 prefix  D E�EE o      �D�D 0 postfix  �E  �I  = O     VFGF O    UHIH k   
 TJJ KLK q   
 
MM �C�B
�C 
pidx�B  L NON r   
 PQP m   
 �A�A Q 1      �@
�@ 
pidxO R�?R X    TS�>TS O     OUVU Z   $ NWX�=YW l  $ +Z�<�;Z B   $ +[\[ 1   $ %�:
�: 
pidx\ l  % *]�9�8] I  % *�7^�6
�7 .corecnte****       ****^ o   % &�5�5 0 commands  �6  �9  �8  �<  �;  X k   . I__ `a` I  . =�4�3b
�4 .Itrmsntxnull���     obj �3  b �2c�1
�2 
Textc b   0 9ded b   0 7fgf o   0 1�0�0 
0 prefix  g n   1 6hih 4   2 6�/j
�/ 
cobjj 1   3 5�.
�. 
pidxi o   1 2�-�- 0 commands  e o   7 8�,�, 0 postfix  �1  a klk r   > Cmnm [   > Aopo 1   > ?�+
�+ 
pidxp m   ? @�*�* n 1      �)
�) 
pidxl q�(q I  D I�'r�&
�' .sysodelanull��� ��� nmbrr m   D Ess ?�      �&  �(  �=  Y L   L N�%�%  V o     !�$�$ 0 eachsession eachSession�> 0 eachsession eachSessionT 2   �#
�# 
Trms�?  I n    tut 1    �"
�" 
Crtbu o    �!�! 	0 iterm  G m     vv�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��  ; wxw l     � ���   �  �  x yzy l     �{|�  {   Send keystroke.   | �}}     S e n d   k e y s t r o k e .z ~~ l     ����  �  	 @example   � ���    @ e x a m p l e ��� l     ����  � * $ @param keySetStr - e.g. "CMD-OPT-i"   � ��� H   @ p a r a m   k e y S e t S t r   -   e . g .   " C M D - O P T - i "� ��� l     ����  �     CMD: command   � ���        C M D :   c o m m a n d� ��� l     ����  �     CTL: control   � ���        C T L :   c o n t r o l� ��� l     ����  �     OPT: option   � ���        O P T :   o p t i o n� ��� l     ����  �     SHT: shift   � ���        S H T :   s h i f t� ��� i   ��� I      ���� 0 sendkeystroke sendKeystroke� ��� o      �� 0 	keysetstr 	keySetStr�  �  � k     ��� ��� O     ��� r    ��� c    ��� n    ��� m   	 �
� 
ctnr� l   	���� I   	���
� .earsffdralis        afdr�  f    �  �  �  � m    �
� 
ctxt� o      �� 0 currentpath currentPath� m     ���                                                                                  MACS  alis    t  Macintosh HD               �I"qH+  �*l
Finder.app                                                     ������        ����  	                CoreServices    �H��      ��vn    �*l�*k�*j  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� I   �
��	
�
 .sysoloadscpt        file� 4    ��
� 
file� l   ���� b    ��� o    �� 0 currentpath currentPath� m    �� ���  u t i l s . s c p t�  �  �	  � o      �� 	0 utils  � ��� l   ����  �  �  � ��� q    �� � ���  0 keyset keySet��  � ��� q    �� ������ 0 funckey funcKey��  � ��� q    �� ������ 0 basickey basicKey��  � ��� r    "��� J     ����  � o      ���� 0 funckey funcKey� ��� l  # #��������  ��  ��  � ��� r   # ,��� n   # *��� I   $ *������� 	0 split  � ��� o   $ %���� 0 	keysetstr 	keySetStr� ���� m   % &�� ���  -��  ��  � o   # $���� 	0 utils  � o      ���� 0 keyset keySet� ��� X   - ������ k   = ��� ��� r   = B��� c   = @��� o   = >���� 0 str  � m   > ?��
�� 
TEXT� o      ���� 0 str  � ���� Z   C ������ l  C F������ =  C F��� o   C D���� 0 str  � m   D E�� ���  C M D��  ��  � s   I M��� m   I J��
�� eMdsKcmd� l     ������ n      ���  ;   K L� l  J K������ o   J K���� 0 funckey funcKey��  ��  ��  ��  � ��� l  P S������ =  P S��� o   P Q���� 0 str  � m   Q R�� ���  C T L��  ��  � ��� s   V \��� m   V Y��
�� eMdsKctl� l     ������ n      ���  ;   Z [� l  Y Z ����  o   Y Z���� 0 funckey funcKey��  ��  ��  ��  �  l  _ d���� =  _ d o   _ `���� 0 str   m   ` c �  O P T��  ��   	 s   g m

 m   g j��
�� eMdsKopt l     ���� n        ;   k l l  j k���� o   j k���� 0 funckey funcKey��  ��  ��  ��  	  l  p u���� =  p u o   p q���� 0 str   m   q t �  S H T��  ��   �� s   x ~ m   x {��
�� eMdsKsft l     ���� n        ;   | } l  { |���� o   { |���� 0 funckey funcKey��  ��  ��  ��  ��  � r   � � o   � ����� 0 str   o      ���� 0 basickey basicKey��  �� 0 str  � o   0 1���� 0 keyset keySet�  !  l  � ���������  ��  ��  ! "��" O  � �#$# I  � ���%&
�� .prcskprsnull���     ctxt% o   � ����� 0 basickey basicKey& ��'��
�� 
faal' o   � ����� 0 funckey funcKey��  $ m   � �((�                                                                                  sevs  alis    �  Macintosh HD               �I"qH+  �*lSystem Events.app                                              �!Q�Ë�        ����  	                CoreServices    �H��      ��1    �*l�*k�*j  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  �   c ��)*+,-��  ) ���������� 0 	openiterm 	openIterm�� 40 sendcommandtoallsessions sendCommandToAllSessions�� 20 sendcommandeachsessions sendCommandEachSessions�� 0 sendkeystroke sendKeystroke* �� �����./���� 0 	openiterm 	openIterm�� ��0�� 0  ������ 0 row  �� 
0 column  ��  . �������� 0 row  �� 
0 column  �� 	0 iterm  / 	 �����������������
�� 
prun
�� .Itrmnwwnnull��� ��� null
�� .miscactvnull��� ��� null
�� 
Crwn
�� .sysodelanull��� ��� nmbr
�� 
Wcsn
�� .Itrmshdpnull���     obj 
�� .Itrmsvdpnull���     obj �� r� k��,e  *j E�Y �j O*�,E�Okj O��, @ )�kkh*j   �kkh*j [OY��U[OY��O �kkh*j [OY��UUO�+ ������12���� 40 sendcommandtoallsessions sendCommandToAllSessions�� ��3�� 3  ������ 	0 iterm  �� 0 command  ��  1 �������� 	0 iterm  �� 0 command  �� 0 eachsession eachSession2 
(��������������%��
�� 
Crtb
�� 
Trms
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
Text
�� .Itrmsntxnull���     obj 
�� .sysodelanull��� ��� nmbr�� 6� 2��, + (*�-[��l kh � *�l O�j 	U[OY��UU, ��=����45���� 20 sendcommandeachsessions sendCommandEachSessions�� ��6�� 6  ���������� 	0 iterm  �� 0 commands  �� 
0 prefix  �� 0 postfix  ��  4 �������������� 	0 iterm  �� 0 commands  �� 
0 prefix  �� 0 postfix  
�� 
pidx�� 0 eachsession eachSession5 
v������~�}�|�{s�z
�� 
Crtb
�� 
Trms
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| 
Text
�{ .Itrmsntxnull���     obj 
�z .sysodelanull��� ��� nmbr�� W� S��, LkE�O E*�-[��l kh � ,��j   *梡�E/%�%l O�kE�O�j 	Y hU[OY��UU- �y��x�w78�v�y 0 sendkeystroke sendKeystroke�x �u9�u 9  �t�t 0 	keysetstr 	keySetStr�w  7 �s�r�q�p�o�n�m�s 0 	keysetstr 	keySetStr�r 0 currentpath currentPath�q 	0 utils  �p 0 keyset keySet�o 0 funckey funcKey�n 0 basickey basicKey�m 0 str  8 ��l�k�j�i��h��g�f�e�d�c��b��a�`�_(�^�]
�l .earsffdralis        afdr
�k 
ctnr
�j 
ctxt
�i 
file
�h .sysoloadscpt        file�g 	0 split  
�f 
kocl
�e 
cobj
�d .corecnte****       ****
�c 
TEXT
�b eMdsKcmd
�a eMdsKctl
�` eMdsKopt
�_ eMdsKsft
�^ 
faal
�] .prcskprsnull���     ctxt�v �� )j �,�&E�UO*��%/j E�OjvE�O���l+ E�O [�[��l kh ��&E�O��  	�6GY 6��  a �6GY '�a   a �6GY �a   a �6GY �E�[OY��Oa  �a �l U ^ ::  ��\�[�Z
�\ 
cwin�[8
�Z kfrmID   ascr  ��ޭ