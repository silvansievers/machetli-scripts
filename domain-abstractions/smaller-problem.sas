begin_version
3
end_version
begin_metric
1
end_metric
3
begin_variable
var0
-1
2
Atom sideup(sheet1, back)
NegatedAtom sideup(sheet1, back)
end_variable
begin_variable
var1
-1
8
Atom location(sheet1, fe1_exit-hw1_leftentry)
Atom location(sheet1, hw1_toprightentry-uc1_exit)
Atom location(sheet1, lc1_entry-hw1_bottomleftexit)
Atom location(sheet1, lime_entry-lc1_exittoime)
Atom location(sheet1, some_feeder_tray)
Atom location(sheet1, uc1_entry-hw1_topleftexit)
Atom location(sheet1, uc1_exittoime-uime_entry)
Atom location(sheet1, uime_exit-uc1_entryfromime)
end_variable
begin_variable
var2
-1
2
Atom sideup(sheet1, front)
NegatedAtom sideup(sheet1, front)
end_variable
0
begin_state
1
4
1
end_state
begin_goal
1
2 0
end_goal
11
begin_operator
fe1-feedmsi-letter sheet1
0
2
0 0 -1 0
0 1 4 0
125
end_operator
begin_operator
hw1-leftentrytotopleftexit-letter sheet1
0
1
0 1 0 5
1499
end_operator
begin_operator
hw1-toprightentrytobottomleftexit-letter sheet1
0
1
0 1 1 2
8999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 back back
1
0 0
1
0 1 2 3
9999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 back front
0
3
0 0 0 1
0 1 2 3
0 2 -1 0
9999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 front back
0
3
0 0 -1 0
0 1 2 3
0 2 0 1
9999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 front front
1
2 0
1
0 1 2 3
9999
end_operator
begin_operator
uc1-fromime-letter sheet1
0
1
0 1 7 1
2999
end_operator
begin_operator
uc1-toime-letter sheet1
0
1
0 1 5 6
2999
end_operator
begin_operator
uime-simplex-letter sheet1 back image-2
1
0 0
1
0 1 6 7
127790
end_operator
begin_operator
uime-simplex-letter sheet1 front image-2
1
2 0
1
0 1 6 7
127790
end_operator
0
