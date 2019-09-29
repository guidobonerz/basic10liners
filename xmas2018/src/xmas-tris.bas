10 POKE53280,0:POKE53281,0
20 PRINT" XMAS-TRIS                              ";
30 PRINT"                                      ";
40 PRINT" 00/00                               ";
50 PRINT" 00/00                                ";
60 PRINT" 00/00                             ";
70 PRINT"*00/00       *                   ";
80 PRINT"                                    ";
90 PRINT"                                   ";
100 PRINT"                                     ";
110 PRINT"              *                  ";
120 PRINT"         *                      ";
130 PRINT"                                  ";
140 PRINT"                   *            ";
150 PRINT"                                    ";
160 PRINT"              *                    ";
170 PRINT"                                   ";
180 PRINT"        *                       ";
190 PRINT"                                  ";
200 PRINT"                  *              ";
210 PRINT"       *                     ";
220 PRINT"                    *           ";
230 PRINT"                    ";
240 PRINT"                                 ";
250 PRINT"                    ";
260 CLR
270 S(0)=66:C(0,0)=1:C(0,1)=1:C(0,2)=1:C(0,3)=1:MX(0)=15:PL(0)=0:DR(0)=0
280 S(1)=102:C(1,0)=4:C(1,1)=7:C(1,2)=13:C(1,3)=3:MX(1)=7:PL(1)=0:DR(1)=0
290 S(2)=81:C(2,0)=10:C(2,1)=14:C(2,2)=10:C(2,3)=14:MX(2)=14:PL(2)=0:DR(2)=0
300 S(3)=42:C(3,0)=1:C(3,1)=1:C(3,2)=1:C(3,3)=1:MX(3)=9:PL(3)=0:DR(3)=0
310 Z(0)=0:Z(1)=1:Z(2)=2:Z(3)=3
320 MT=MX(0)+MX(1)+MX(2)+MX(3)
330 PT=0:DT=0:F=0:ZM=4
340 O(0)=0
350 O(2)=0
360 X=RND(-TI)
370 SI=INT(RND(1)*ZM)
380 CI=INT(RND(1)*4)
390 HP=INT(RND(1)*15)
400 TX=TI:SP=0:WA=10
410 N(1)=1024+10+HP
420 N(3)=55296+10+HP
430 O(1)=N(1)
440 O(3)=N(3)
450 O(0)=PEEK(N(1))
460 O(2)=PEEK(N(3))AND15
470 POKEN(1),S(Z(SI))
480 POKEN(3),C(Z(SI),CI)
490 GETA$
500 ON-(F=1ANDA$="Y")GOTO10
510 ON-(F=1ANDA$="N")GOTO1140
520 P=(A$="")*-1+(A$="")
530 IFA$=""THENWA=0
540 ON-(TI-TX<WA)GOTO590
550 TX=TI
560 P=P+40
570 SP=SP+1
580 ON-(SP<25)GOTO590:DR(Z(SI))=DR(Z(SI))+1:DT=DT+1:GOSUB720:GOTO360
590 ON-(P=0)GOTO490
600 O(1)=N(1)
610 O(3)=N(3)
620 POKEO(3),O(2)
630 POKEO(1),O(0)
640 N(1)=N(1)+P
650 N(3)=N(3)+P
660 O(0)=PEEK(N(1))
670 O(2)=PEEK(N(3))AND15
680 POKEN(3),C(Z(SI),CI)
690 POKEN(1),S(Z(SI))
700 ON-(O(0)<>S(Z(SI))ORO(2)<>12)GOTO710
705 PL(Z(SI))=PL(Z(SI))+1:PT=PT+1:GOSUB720:GOSUB1080:GOSUB830:GOTO360
710 GOTO490
720 POKE211,3
730 POKE214,2+Z(SI)
740 SYS58732
750 P$=STR$(PL(Z(SI)))
760 P$=RIGHT$(P$,LEN(P$)-1)
770 P$=RIGHT$("0"+P$,2)
780 D$=STR$(DR(Z(SI)))
790 D$=RIGHT$(D$,LEN(D$)-1)
800 D$=RIGHT$("0"+D$,2)
810 PRINT""P$"/"D$
820 RETURN
830 IFMT<>PTTHEN1070
840 FORK=1TO15
850 READV1:POKEV1,65:READV2:POKEV2,7
860 NEXT
870 POKE211,12
880 POKE214,10
890 SYS58732
900 PRINT"MERRY CHRISTMAS"
910 POKE211,0
920 POKE214,12
930 SYS58732
940 IFDT<2THENPRINT"      YOU ARE THE REAL DECORATOR!":GOTO970
950 IFDT<5THENPRINT" NOT THAT BAD,BUT YOU NEED MORE PRACTICE":GOTO970
960 PRINT" OH MY GOOD, BETTER LET OTHERS DECORATE"
970 POKE211,10
980 POKE214,14
990 SYS58732
1000 PRINT"DECORATE AGAIN (Y/N)?"
1010 F=1
1020 S(Z(SI))=42
1030 C(Z(SI),0)=1
1040 C(Z(SI),1)=1
1050 C(Z(SI),2)=1
1060 C(Z(SI),3)=1
1070 RETURN
1080 IFPL(Z(SI))<>MX(Z(SI))THEN1130
1090 FORI=SITOZM-1
1100 Z(I)=Z(I+1)
1110 NEXT
1120 ZM=ZM-1
1130 RETURN
1140 END
1150 DATA1197,55469,1206,55478,1394,55666,1356,55628,1369,55641
1160 DATA1412,55684,1478,55750,1527,55799,1611,55883,1751,56023
1170 DATA1714,55986,1677,55949,1686,55958,1731,56003,1773,56045
