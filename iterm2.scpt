FasdUAS 1.101.10   ��   ��    k             l     ��  ��    T N------------------------------------------------------------------------------     � 	 	 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��      Utils for iterm2.     �   $   U t i l s   f o r   i t e r m 2 .      l     ��  ��     	 @example     �      @ e x a m p l e      l     ��  ��    %    set iterm to openIterm(2, 2)     �   >       s e t   i t e r m   t o   o p e n I t e r m ( 2 ,   2 )      l     ��  ��    . (   sendCommandToAllSessions(iterm, "ls")     �   P       s e n d C o m m a n d T o A l l S e s s i o n s ( i t e r m ,   " l s " )      l     ��   !��     ; 5   sendCommandEachSessions(iterm, [" -L"], "pwd", "")    ! � " " j       s e n d C o m m a n d E a c h S e s s i o n s ( i t e r m ,   [ "   - L " ] ,   " p w d " ,   " " )   # $ # l     �� % &��   % ? 9 @see https://www.iterm2.com/documentation-scripting.html    & � ' ' r   @ s e e   h t t p s : / / w w w . i t e r m 2 . c o m / d o c u m e n t a t i o n - s c r i p t i n g . h t m l $  ( ) ( l     �� * +��   *   @author yeongjun.kim    + � , , *   @ a u t h o r   y e o n g j u n . k i m )  - . - l     �� / 0��   / T N------------------------------------------------------------------------------    0 � 1 1 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   Open and Split iterm.    7 � 8 8 ,   O p e n   a n d   S p l i t   i t e r m . 5  9 : 9 l     �� ; <��   ;   @param row    < � = =    @ p a r a m   r o w :  > ? > l     �� @ A��   @   @param column    A � B B    @ p a r a m   c o l u m n ?  C D C l     �� E F��   E %  @return created iterm's window    F � G G >   @ r e t u r n   c r e a t e d   i t e r m ' s   w i n d o w D  H I H i     J K J I      �� L���� 0 	openiterm 	openIterm L  M N M o      ���� 0 row   N  O�� O o      ���� 
0 column  ��  ��   K k     q P P  Q R Q q       S S ������ 	0 iterm  ��   R  T U T O     n V W V k    m X X  Y Z Y l   �� [ \��   [   Open iTerm    \ � ] ]    O p e n   i T e r m Z  ^ _ ^ Z    ! ` a�� b ` =   	 c d c n     e f e 1    ��
�� 
prun f m     g g�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   d m    ��
�� boovtrue a r     h i h l    j���� j I   ������
�� .Itrmnwwnnull��� ��� null��  ��  ��  ��   i o      ���� 	0 iterm  ��   b k    ! k k  l m l I   �� n��
�� .miscactvnull��� ��� null n m     o o�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��  ��   m  p�� p r    ! q r q 1    ��
�� 
Crwn r o      ���� 	0 iterm  ��   _  s t s I  " '�� u��
�� .sysodelanull��� ��� nmbr u m   " #���� ��   t  v w v l  ( (��������  ��  ��   w  x y x l  ( (�� z {��   z   Split pane    { � | |    S p l i t   p a n e y  }�� } O   ( m ~  ~ k   . l � �  � � � U   . X � � � O   7 S � � � U   ? R � � � I  H M������
�� .Itrmsvdpnull���     obj ��  ��   � \   B E � � � l  B C ����� � o   B C���� 
0 column  ��  ��   � m   C D����  � l  7 < ����� � I  7 <������
�� .Itrmshdpnull���     obj ��  ��  ��  ��   � \   1 4 � � � l  1 2 ����� � o   1 2���� 0 row  ��  ��   � m   2 3����  �  � � � l  Y Y��������  ��  ��   �  ��� � U   Y l � � � I  b g������
�� .Itrmsvdpnull���     obj ��  ��   � \   \ _ � � � l  \ ] ����� � o   \ ]���� 
0 column  ��  ��   � m   ] ^���� ��    n   ( + � � � 1   ) +��
�� 
Wcsn � o   ( )���� 	0 iterm  ��   W m      � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   U  ��� � L   o q � � o   o p���� 	0 iterm  ��   I  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  Send command to all sessions.    � � � � <   S e n d   c o m m a n d   t o   a l l   s e s s i o n s . �  � � � l     �� � ���   � $  @param iterm - iterm's window    � � � � <   @ p a r a m   i t e r m   -   i t e r m ' s   w i n d o w �  � � � l     �� � ���   � 2 , @param command - command sended to terminal    � � � � X   @ p a r a m   c o m m a n d   -   c o m m a n d   s e n d e d   t o   t e r m i n a l �  � � � i    � � � I      �� ����� 40 sendcommandtoallsessions sendCommandToAllSessions �  � � � o      ���� 	0 iterm   �  ��� � o      ���� 0 command  ��  ��   � O     5 � � � O    4 � � � X   
 3 ��� � � O    . � � � k     - � �  � � � I    '���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � o   " #���� 0 command  ��   �  ��� � I  ( -�� ���
�� .sysodelanull��� ��� nmbr � m   ( ) � � ?�      ��  ��   � o    ���� 0 eachsession eachSession�� 0 eachsession eachSession � 2   ��
�� 
Trms � n     � � � 1    ��
�� 
Crtb � o    ���� 	0 iterm   � m      � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  Send command to each session.    � � � � <   S e n d   c o m m a n d   t o   e a c h   s e s s i o n . �  � � � l     �� � ���   � &   @param iterm   - iterm's window    � � � � @   @ p a r a m   i t e r m       -   i t e r m ' s   w i n d o w �  � � � l     �� � ���   � A ; @param commands - command's array for send to each session    � � � � v   @ p a r a m   c o m m a n d s   -   c o m m a n d ' s   a r r a y   f o r   s e n d   t o   e a c h   s e s s i o n �  � � � i    � � � I      �� ����� 20 sendcommandeachsessions sendCommandEachSessions �  � � � o      ���� 	0 iterm   �  � � � o      ���� 0 commands   �  � � � o      ���� 
0 prefix   �  ��� � o      ���� 0 postfix  ��  ��   � O     V � � � O    U � � � k   
 T � �  � � � q   
 
 � � ����
�� 
pidx��   �  � � � r   
  � � � m   
 ����  � 1      ��
�� 
pidx �  ��� � X    T ��� � � O     O � � � Z   $ N � ��� � � l  $ + ����� � B   $ + � � � 1   $ %��
�� 
pidx � l  % * ����� � I  % *�� ��
�� .corecnte****       **** � o   % &�~�~ 0 commands  �  ��  ��  ��  ��   � k   . I � �    I  . =�}�|
�} .Itrmsntxnull���     obj �|   �{�z
�{ 
Text b   0 9 b   0 7 o   0 1�y�y 
0 prefix   n   1 6	 4   2 6�x

�x 
cobj
 1   3 5�w
�w 
pidx	 o   1 2�v�v 0 commands   o   7 8�u�u 0 postfix  �z    r   > C [   > A 1   > ?�t
�t 
pidx m   ? @�s�s  1      �r
�r 
pidx �q I  D I�p�o
�p .sysodelanull��� ��� nmbr m   D E ?�      �o  �q  ��   � L   L N�n�n   � o     !�m�m 0 eachsession eachSession�� 0 eachsession eachSession � 2   �l
�l 
Trms��   � n     1    �k
�k 
Crtb o    �j�j 	0 iterm   � m     �                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      h,I�l��        ����  	                Applications    �H��      �l&h     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   �  l     �i�h�g�i  �h  �g    l     �f�f     Send keystroke.    �     S e n d   k e y s t r o k e .  l     �e !�e     	 @example   ! �""    @ e x a m p l e #$# l     �d%&�d  % #    sendKeystroke("CMD-OPT-i")   & �'' :       s e n d K e y s t r o k e ( " C M D - O P T - i " )$ ()( l     �c*+�c  *    @param keySetStr (string)   + �,, 4   @ p a r a m   k e y S e t S t r   ( s t r i n g )) -.- l     �b/0�b  /     CMD: command   0 �11        C M D :   c o m m a n d. 232 l     �a45�a  4     CTL: control   5 �66        C T L :   c o n t r o l3 787 l     �`9:�`  9     OPT: option   : �;;        O P T :   o p t i o n8 <=< l     �_>?�_  >     SHT: shift   ? �@@        S H T :   s h i f t= A�^A i   BCB I      �]D�\�] 0 sendkeystroke sendKeystrokeD E�[E o      �Z�Z 0 	keysetstr 	keySetStr�[  �\  C k     �FF GHG O     IJI r    KLK c    MNM n    OPO m   	 �Y
�Y 
ctnrP l   	Q�X�WQ I   	�VR�U
�V .earsffdralis        afdrR  f    �U  �X  �W  N m    �T
�T 
ctxtL o      �S�S 0 currentpath currentPathJ m     SS�                                                                                  MACS  alis    t  Macintosh HD               �I"qH+  �*l
Finder.app                                                     ������        ����  	                CoreServices    �H��      ��vn    �*l�*k�*j  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  H TUT r    VWV I   �RX�Q
�R .sysoloadscpt        fileX 4    �PY
�P 
fileY l   Z�O�NZ b    [\[ o    �M�M 0 currentpath currentPath\ m    ]] �^^  u t i l s . s c p t�O  �N  �Q  W o      �L�L 	0 utils  U _`_ l   �K�J�I�K  �J  �I  ` aba q    cc �H�G�H 0 keyset keySet�G  b ded q    ff �F�E�F 0 funckey funcKey�E  e ghg q    ii �D�C�D 0 basickey basicKey�C  h jkj r    "lml J     �B�B  m o      �A�A 0 funckey funcKeyk non l  # #�@�?�>�@  �?  �>  o pqp r   # ,rsr n   # *tut I   $ *�=v�<�= 	0 split  v wxw o   $ %�;�; 0 	keysetstr 	keySetStrx y�:y m   % &zz �{{  -�:  �<  u o   # $�9�9 	0 utils  s o      �8�8 0 keyset keySetq |}| X   - �~�7~ k   = ��� ��� r   = B��� c   = @��� o   = >�6�6 0 str  � m   > ?�5
�5 
TEXT� o      �4�4 0 str  � ��3� Z   C ������ l  C F��2�1� =  C F��� o   C D�0�0 0 str  � m   D E�� ���  C M D�2  �1  � s   I M��� m   I J�/
�/ eMdsKcmd� l     ��.�-� n      ���  ;   K L� l  J K��,�+� o   J K�*�* 0 funckey funcKey�,  �+  �.  �-  � ��� l  P S��)�(� =  P S��� o   P Q�'�' 0 str  � m   Q R�� ���  C T L�)  �(  � ��� s   V \��� m   V Y�&
�& eMdsKctl� l     ��%�$� n      ���  ;   Z [� l  Y Z��#�"� o   Y Z�!�! 0 funckey funcKey�#  �"  �%  �$  � ��� l  _ d�� �� =  _ d��� o   _ `�� 0 str  � m   ` c�� ���  O P T�   �  � ��� s   g m��� m   g j�
� eMdsKopt� l     ���� n      ���  ;   k l� l  j k���� o   j k�� 0 funckey funcKey�  �  �  �  � ��� l  p u���� =  p u��� o   p q�� 0 str  � m   q t�� ���  S H T�  �  � ��� s   x ~��� m   x {�
� eMdsKsft� l     ���� n      ���  ;   | }� l  { |���� o   { |�� 0 funckey funcKey�  �  �  �  �  � r   � ���� o   � ��� 0 str  � o      �� 0 basickey basicKey�3  �7 0 str   o   0 1�� 0 keyset keySet} ��� l  � ��
�	��
  �	  �  � ��� O  � ���� I  � ����
� .prcskprsnull���     ctxt� o   � ��� 0 basickey basicKey� ���
� 
faal� o   � ��� 0 funckey funcKey�  � m   � ����                                                                                  sevs  alis    �  Macintosh HD               �I"qH+  �*lSystem Events.app                                              �!Q�Ë�        ����  	                CoreServices    �H��      ��1    �*l�*k�*j  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  �^       �������  � � �������  0 	openiterm 	openIterm�� 40 sendcommandtoallsessions sendCommandToAllSessions�� 20 sendcommandeachsessions sendCommandEachSessions�� 0 sendkeystroke sendKeystroke� �� K���������� 0 	openiterm 	openIterm�� ����� �  ������ 0 row  �� 
0 column  ��  � �������� 0 row  �� 
0 column  �� 	0 iterm  � 	 �����������������
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
�� .Itrmsvdpnull���     obj �� r� k��,e  *j E�Y �j O*�,E�Okj O��, @ )�kkh*j   �kkh*j [OY��U[OY��O �kkh*j [OY��UUO�� �� ����������� 40 sendcommandtoallsessions sendCommandToAllSessions�� ����� �  ������ 	0 iterm  �� 0 command  ��  � �������� 	0 iterm  �� 0 command  �� 0 eachsession eachSession� 
 ��������������� ���
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
�� .sysodelanull��� ��� nmbr�� 6� 2��, + (*�-[��l kh � *�l O�j 	U[OY��UU� �� ����������� 20 sendcommandeachsessions sendCommandEachSessions�� ����� �  ���������� 	0 iterm  �� 0 commands  �� 
0 prefix  �� 0 postfix  ��  � �������������� 	0 iterm  �� 0 commands  �� 
0 prefix  �� 0 postfix  
�� 
pidx�� 0 eachsession eachSession� 
����������������
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
�� .sysodelanull��� ��� nmbr�� W� S��, LkE�O E*�-[��l kh � ,��j   *梡�E/%�%l O�kE�O�j 	Y hU[OY��UU� ��C���������� 0 sendkeystroke sendKeystroke�� ����� �  ���� 0 	keysetstr 	keySetStr��  � ���������������� 0 	keysetstr 	keySetStr�� 0 currentpath currentPath�� 	0 utils  �� 0 keyset keySet�� 0 funckey funcKey�� 0 basickey basicKey�� 0 str  � S��������]��z���������������������������
�� .earsffdralis        afdr
�� 
ctnr
�� 
ctxt
�� 
file
�� .sysoloadscpt        file�� 	0 split  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT
�� eMdsKcmd
�� eMdsKctl
�� eMdsKopt
�� eMdsKsft
�� 
faal
�� .prcskprsnull���     ctxt�� �� )j �,�&E�UO*��%/j E�OjvE�O���l+ E�O [�[��l kh ��&E�O��  	�6GY 6��  a �6GY '�a   a �6GY �a   a �6GY �E�[OY��Oa  �a �l U ascr  ��ޭ