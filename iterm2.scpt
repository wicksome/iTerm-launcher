FasdUAS 1.101.10   ��   ��    k             l     ��  ��    T N------------------------------------------------------------------------------     � 	 	 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��      Utils for iterm2     �   "   U t i l s   f o r   i t e r m 2      l     ��  ��    ? 9 @see https://www.iterm2.com/documentation-scripting.html     �   r   @ s e e   h t t p s : / / w w w . i t e r m 2 . c o m / d o c u m e n t a t i o n - s c r i p t i n g . h t m l      l     ��  ��    / ) @author yeongjun.kim / opid911@gmail.com     �   R   @ a u t h o r   y e o n g j u n . k i m   /   o p i d 9 1 1 @ g m a i l . c o m      l     ��  ��    T N------------------------------------------------------------------------------     �   � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��       !   l      �� " #��   " � �
Open and Split iterm.

<pre><code>
set iterm to openIterm(2, 2)
</code></pre>

@param row {int}@param column {int}@return created iterm's window
    # � $ $( 
 O p e n   a n d   S p l i t   i t e r m . 
 
 < p r e > < c o d e > 
 s e t   i t e r m   t o   o p e n I t e r m ( 2 ,   2 ) 
 < / c o d e > < / p r e > 
 
 @ p a r a m   r o w   { i n t }  @ p a r a m   c o l u m n   { i n t }  @ r e t u r n   c r e a t e d   i t e r m ' s   w i n d o w 
 !  % & % l     �� ' (��   '       ( � ) )    &  * + * i     , - , I      �� .���� 0 	openiterm 	openIterm .  / 0 / o      ���� 0 row   0  1�� 1 o      ���� 
0 column  ��  ��   - k     q 2 2  3 4 3 q       5 5 ������ 	0 iterm  ��   4  6 7 6 O     n 8 9 8 k    m : :  ; < ; l   �� = >��   =   Open iTerm    > � ? ?    O p e n   i T e r m <  @ A @ Z    ! B C�� D B =   	 E F E n     G H G 1    ��
�� 
prun H m     I I�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      �	�Ց\\        ����  	                Applications    �H��      Ր��     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   F m    ��
�� boovtrue C r     J K J l    L���� L I   ������
�� .Itrmnwwnnull��� ��� null��  ��  ��  ��   K o      ���� 	0 iterm  ��   D k    ! M M  N O N I   �� P��
�� .miscactvnull��� ��� null P m     Q Q�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      �	�Ց\\        ����  	                Applications    �H��      Ր��     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��  ��   O  R�� R r    ! S T S 1    ��
�� 
Crwn T o      ���� 	0 iterm  ��   A  U V U I  " '�� W��
�� .sysodelanull��� ��� nmbr W m   " #���� ��   V  X Y X l  ( (��������  ��  ��   Y  Z [ Z l  ( (�� \ ]��   \   Split pane    ] � ^ ^    S p l i t   p a n e [  _�� _ O   ( m ` a ` k   . l b b  c d c U   . X e f e O   7 S g h g U   ? R i j i I  H M������
�� .Itrmsvdpnull���     obj ��  ��   j \   B E k l k l  B C m���� m o   B C���� 
0 column  ��  ��   l m   C D����  h l  7 < n���� n I  7 <������
�� .Itrmshdpnull���     obj ��  ��  ��  ��   f \   1 4 o p o l  1 2 q���� q o   1 2���� 0 row  ��  ��   p m   2 3����  d  r s r l  Y Y��������  ��  ��   s  t�� t U   Y l u v u I  b g������
�� .Itrmsvdpnull���     obj ��  ��   v \   \ _ w x w l  \ ] y���� y o   \ ]���� 
0 column  ��  ��   x m   ] ^���� ��   a n   ( + z { z 1   ) +��
�� 
Wcsn { o   ( )���� 	0 iterm  ��   9 m      | |�                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      �	�Ց\\        ����  	                Applications    �H��      Ր��     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   7  }�� } L   o q ~ ~ o   o p���� 	0 iterm  ��   +   �  l     ��������  ��  ��   �  � � � l      �� � ���   � � �
Send command to all sessions.

<pre><code>sendCommandToAllSessions(iterm, "ls")
</code></pre>
@param iterm - iterm's window@param command - command sended to terminal
    � � � �X 
 S e n d   c o m m a n d   t o   a l l   s e s s i o n s . 
 
 < p r e > < c o d e >  s e n d C o m m a n d T o A l l S e s s i o n s ( i t e r m ,   " l s " ) 
 < / c o d e > < / p r e > 
  @ p a r a m   i t e r m   -   i t e r m ' s   w i n d o w  @ p a r a m   c o m m a n d   -   c o m m a n d   s e n d e d   t o   t e r m i n a l  
 �  � � � i    � � � I      �� ����� 40 sendcommandtoallsessions sendCommandToAllSessions �  � � � o      ���� 	0 iterm   �  ��� � o      ���� 0 command  ��  ��   � O     5 � � � O    4 � � � X   
 3 ��� � � O    . � � � k     - � �  � � � I    '���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � o   " #���� 0 command  ��   �  ��� � I  ( -�� ���
�� .sysodelanull��� ��� nmbr � m   ( ) � � ?�      ��  ��   � o    ���� 0 eachsession eachSession�� 0 eachsession eachSession � 2   ��
�� 
Trms � n     � � � 1    ��
�� 
Crtb � o    ���� 	0 iterm   � m      � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      �	�Ց\\        ����  	                Applications    �H��      Ր��     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �
Send command to each session.

<pre><code>sendCommandEachSessions(iterm, [" -L"], "pwd", "")
</code></pre>
@param iterm - iterm's window@param commands - command's array for send to each session
    � � � �� 
 S e n d   c o m m a n d   t o   e a c h   s e s s i o n . 
 
 < p r e > < c o d e >  s e n d C o m m a n d E a c h S e s s i o n s ( i t e r m ,   [ "   - L " ] ,   " p w d " ,   " " ) 
 < / c o d e > < / p r e > 
  @ p a r a m   i t e r m   -   i t e r m ' s   w i n d o w  @ p a r a m   c o m m a n d s   -   c o m m a n d ' s   a r r a y   f o r   s e n d   t o   e a c h   s e s s i o n  
 �  � � � i    � � � I      �� ����� 20 sendcommandeachsessions sendCommandEachSessions �  � � � o      ���� 	0 iterm   �  � � � o      ���� 0 commands   �  � � � o      ���� 
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
pidx � l  % * ����� � I  % *�� ���
�� .corecnte****       **** � o   % &���� 0 commands  ��  ��  ��  ��  ��   � k   . I � �  � � � I  . =���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � b   0 9 � � � b   0 7 � � � o   0 1���� 
0 prefix   � n   1 6 � � � 4   2 6�� �
�� 
cobj � 1   3 5��
�� 
pidx � o   1 2���� 0 commands   � o   7 8�� 0 postfix  ��   �  � � � r   > C � � � [   > A � � � 1   > ?�~
�~ 
pidx � m   ? @�}�}  � 1      �|
�| 
pidx �  ��{ � I  D I�z ��y
�z .sysodelanull��� ��� nmbr � m   D E � � ?�      �y  �{  ��   � L   L N�x�x   � o     !�w�w 0 eachsession eachSession�� 0 eachsession eachSession � 2   �v
�v 
Trms��   � n     � � � 1    �u
�u 
Crtb � o    �t�t 	0 iterm   � m      � ��                                                                                  ITRM  alis    x  Macintosh HD               �I"qH+   De	iTerm.app                                                      �	�Ց\\        ����  	                Applications    �H��      Ր��     De 	[g *�  5Macintosh HD:Users: yeongjun: Applications: iTerm.app    	 i T e r m . a p p    M a c i n t o s h   H D  %Users/yeongjun/Applications/iTerm.app   /    ��   �  � � � l     �s�r�q�s  �r  �q   �  � � � l      �p � ��p   � � �
Send keystroke.

<pre><code>
-- "CMD": command-- "CTL": control-- "OPT": option-- "SHT": shiftsendKeystroke("CMD-OPT-i")
</code></pre>
@param keySetStr {string}    � � � �N 
 S e n d   k e y s t r o k e . 
 
 < p r e > < c o d e > 
 - -   " C M D " :   c o m m a n d  - -   " C T L " :   c o n t r o l  - -   " O P T " :   o p t i o n  - -   " S H T " :   s h i f t  s e n d K e y s t r o k e ( " C M D - O P T - i " ) 
 < / c o d e > < / p r e > 
  @ p a r a m   k e y S e t S t r   { s t r i n g }  �  ��o � i    � � � I      �n ��m�n 0 sendkeystroke sendKeystroke �  ��l � o      �k�k 0 	keysetstr 	keySetStr�l  �m   � k     � � �  � � � O      � � � r     � � � b     � � � n     � � � 1    �j
�j 
psxp � l    ��i�h � c     � � � n     �  � m   	 �g
�g 
ctnr  l   	�f�e I   	�d�c
�d .earsffdralis        afdr  f    �c  �f  �e   � m    �b
�b 
ctxt�i  �h   � m     �  l i b / � o      �a�a 0 libpath libPath � m     �                                                                                  MACS  alis    t  Macintosh HD               �I"qH+  �*l
Finder.app                                                     ������        ����  	                CoreServices    �H��      ��vn    �*l�*k�*j  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  r    !	 I   �`
�_
�` .sysoloadscpt        file
 4    �^
�^ 
psxf l   �]�\ b     o    �[�[ 0 libpath libPath m     �  u t i l s . s c p t�]  �\  �_  	 o      �Z�Z 	0 utils    l  " "�Y�X�W�Y  �X  �W    q   " " �V�U�V 0 keyset keySet�U    q   " " �T�S�T 0 funckey funcKey�S    q   " " �R�Q�R 0 basickey basicKey�Q    r   " & J   " $�P�P   o      �O�O 0 funckey funcKey  !  l  ' '�N�M�L�N  �M  �L  ! "#" r   ' 0$%$ n   ' .&'& I   ( .�K(�J�K 	0 split  ( )*) o   ( )�I�I 0 	keysetstr 	keySetStr* +�H+ m   ) *,, �--  -�H  �J  ' o   ' (�G�G 	0 utils  % o      �F�F 0 keyset keySet# ./. X   1 �0�E10 k   A �22 343 r   A F565 c   A D787 o   A B�D�D 0 str  8 m   B C�C
�C 
TEXT6 o      �B�B 0 str  4 9�A9 Z   G �:;<=: l  G J>�@�?> =  G J?@? o   G H�>�> 0 str  @ m   H IAA �BB  C M D�@  �?  ; s   M SCDC m   M P�=
�= eMdsKcmdD l     E�<�;E n      FGF  ;   Q RG l  P QH�:�9H o   P Q�8�8 0 funckey funcKey�:  �9  �<  �;  < IJI l  V [K�7�6K =  V [LML o   V W�5�5 0 str  M m   W ZNN �OO  C T L�7  �6  J PQP s   ^ dRSR m   ^ a�4
�4 eMdsKctlS l     T�3�2T n      UVU  ;   b cV l  a bW�1�0W o   a b�/�/ 0 funckey funcKey�1  �0  �3  �2  Q XYX l  g lZ�.�-Z =  g l[\[ o   g h�,�, 0 str  \ m   h k]] �^^  O P T�.  �-  Y _`_ s   o uaba m   o r�+
�+ eMdsKoptb l     c�*�)c n      ded  ;   s te l  r sf�(�'f o   r s�&�& 0 funckey funcKey�(  �'  �*  �)  ` ghg l  x }i�%�$i =  x }jkj o   x y�#�# 0 str  k m   y |ll �mm  S H T�%  �$  h n�"n s   � �opo m   � ��!
�! eMdsKsftp l     q� �q n      rsr  ;   � �s l  � �t��t o   � ��� 0 funckey funcKey�  �  �   �  �"  = r   � �uvu o   � ��� 0 str  v o      �� 0 basickey basicKey�A  �E 0 str  1 o   4 5�� 0 keyset keySet/ wxw l  � �����  �  �  x y�y O  � �z{z I  � ��|}
� .prcskprsnull���     ctxt| o   � ��� 0 basickey basicKey} �~�
� 
faal~ o   � ��� 0 funckey funcKey�  { m   � ��                                                                                  sevs  alis    �  Macintosh HD               �I"qH+  �*lSystem Events.app                                              �!Q�Ë�        ����  	                CoreServices    �H��      ��1    �*l�*k�*j  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  �o       �������  � ����� 0 	openiterm 	openIterm� 40 sendcommandtoallsessions sendCommandToAllSessions� 20 sendcommandeachsessions sendCommandEachSessions� 0 sendkeystroke sendKeystroke� �
 -�	�����
 0 	openiterm 	openIterm�	 ��� �  ��� 0 row  � 
0 column  �  � ���� 0 row  � 
0 column  � 	0 iterm  � 	 |� ��������������
�  
prun
�� .Itrmnwwnnull��� ��� null
�� .miscactvnull��� ��� null
�� 
Crwn
�� .sysodelanull��� ��� nmbr
�� 
Wcsn
�� .Itrmshdpnull���     obj 
�� .Itrmsvdpnull���     obj � r� k��,e  *j E�Y �j O*�,E�Okj O��, @ )�kkh*j   �kkh*j [OY��U[OY��O �kkh*j [OY��UUO�� �� ����������� 40 sendcommandtoallsessions sendCommandToAllSessions�� ����� �  ������ 	0 iterm  �� 0 command  ��  � �������� 	0 iterm  �� 0 command  �� 0 eachsession eachSession� 
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
�� .sysodelanull��� ��� nmbr�� W� S��, LkE�O E*�-[��l kh � ,��j   *梡�E/%�%l O�kE�O�j 	Y hU[OY��UU� �� ����������� 0 sendkeystroke sendKeystroke�� ����� �  ���� 0 	keysetstr 	keySetStr��  � ���������������� 0 	keysetstr 	keySetStr�� 0 libpath libPath�� 	0 utils  �� 0 keyset keySet�� 0 funckey funcKey�� 0 basickey basicKey�� 0 str  � ������������,����������A��N��]��l������
�� .earsffdralis        afdr
�� 
ctnr
�� 
ctxt
�� 
psxp
�� 
psxf
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
�� .prcskprsnull���     ctxt�� �� )j �,�&�,�%E�UO*��%/j E�OjvE�O���l+ 
E�O _�[��l kh ��&E�O��  a �6GY 8�a   a �6GY '�a   a �6GY �a   a �6GY �E�[OY��Oa  �a �l Uascr  ��ޭ