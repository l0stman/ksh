# : : generated from strtof-6.37.38-15.307.308-31.291.308.rt by mktest : : #

TEST 01 min/max

	EXEC	2.225073858507201e-308 2.225073858507202e-308 2.225073858507203e-308
		OUTPUT - $'strtod   "2.225073858507201e-308" "" 0.00000000000000e+00 ERANGE
strtold  "2.225073858507201e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntod  22 "2.225073858507201e-308" "" 0.00000000000000e+00 ERANGE
strntod  21 "2.225073858507201e-30" "8" 2.22507385850720e-30 OK
strntold 22 "2.225073858507201e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntold 21 "2.225073858507201e-30" "8" 2.225073858507201000000000000000e-30 OK

strtod   "2.225073858507202e-308" "" 2.22507385850720e-308 OK
strtold  "2.225073858507202e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntod  22 "2.225073858507202e-308" "" 2.22507385850720e-308 OK
strntod  21 "2.225073858507202e-30" "8" 2.22507385850720e-30 OK
strntold 22 "2.225073858507202e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntold 21 "2.225073858507202e-30" "8" 2.225073858507202000000000000000e-30 OK

strtod   "2.225073858507203e-308" "" 2.22507385850720e-308 OK
strtold  "2.225073858507203e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntod  22 "2.225073858507203e-308" "" 2.22507385850720e-308 OK
strntod  21 "2.225073858507203e-30" "8" 2.22507385850720e-30 OK
strntold 22 "2.225073858507203e-308" "" 0.000000000000000000000000000000e+00 ERANGE
strntold 21 "2.225073858507203e-30" "8" 2.225073858507203000000000000000e-30 OK'

	EXEC	1.797693134862314e+308 1.797693134862315e+308 1.797693134862316e+308
		OUTPUT - $'strtod   "1.797693134862314e+308" "" 1.79769313486231e+308 OK
strtold  "1.797693134862314e+308" "" 1.797693134862314000000000000000e+308 OK
strntod  22 "1.797693134862314e+308" "" 1.79769313486231e+308 OK
strntod  21 "1.797693134862314e+30" "8" 1.79769313486231e+30 OK
strntold 22 "1.797693134862314e+308" "" 1.797693134862314000000000000000e+308 OK
strntold 21 "1.797693134862314e+30" "8" 1.797693134862314000000000000000e+30 OK

strtod   "1.797693134862315e+308" "" 1.79769313486232e+308 OK
strtold  "1.797693134862315e+308" "" 1.797693134862315000000000000000e+308 OK
strntod  22 "1.797693134862315e+308" "" 1.79769313486232e+308 OK
strntod  21 "1.797693134862315e+30" "8" 1.79769313486231e+30 OK
strntold 22 "1.797693134862315e+308" "" 1.797693134862315000000000000000e+308 OK
strntold 21 "1.797693134862315e+30" "8" 1.797693134862315000000000000000e+30 OK

strtod   "1.797693134862316e+308" "" inf ERANGE
strtold  "1.797693134862316e+308" "" inf ERANGE
strntod  22 "1.797693134862316e+308" "" inf ERANGE
strntod  21 "1.797693134862316e+30" "8" 1.79769313486232e+30 OK
strntold 22 "1.797693134862316e+308" "" inf ERANGE
strntold 21 "1.797693134862316e+30" "8" 1.797693134862316000000000000000e+30 OK'

	EXEC	2.0041683600089727779961080513501e-292 2.0041683600089727779961080513502e-292 2.0041683600089727779961080513503e-292
		OUTPUT - $'strtod   "2.0041683600089727779961080513501e-292" "" 2.00416836000897e-292 OK
strtold  "2.0041683600089727779961080513501e-292" "" 0.000000000000000000000000000000e+00 ERANGE
strntod  38 "2.0041683600089727779961080513501e-292" "" 2.00416836000897e-292 OK
strntod  37 "2.0041683600089727779961080513501e-29" "2" 2.00416836000897e-29 OK
strntold 38 "2.0041683600089727779961080513501e-292" "" 0.000000000000000000000000000000e+00 ERANGE
strntold 37 "2.0041683600089727779961080513501e-29" "2" 2.004168360008972777996108051350e-29 OK

strtod   "2.0041683600089727779961080513502e-292" "" 2.00416836000897e-292 OK
strtold  "2.0041683600089727779961080513502e-292" "" 2.004168360008972777996108051350e-292 OK
strntod  38 "2.0041683600089727779961080513502e-292" "" 2.00416836000897e-292 OK
strntod  37 "2.0041683600089727779961080513502e-29" "2" 2.00416836000897e-29 OK
strntold 38 "2.0041683600089727779961080513502e-292" "" 2.004168360008972777996108051350e-292 OK
strntold 37 "2.0041683600089727779961080513502e-29" "2" 2.004168360008972777996108051350e-29 OK

strtod   "2.0041683600089727779961080513503e-292" "" 2.00416836000897e-292 OK
strtold  "2.0041683600089727779961080513503e-292" "" 2.004168360008972777996108051350e-292 OK
strntod  38 "2.0041683600089727779961080513503e-292" "" 2.00416836000897e-292 OK
strntod  37 "2.0041683600089727779961080513503e-29" "2" 2.00416836000897e-29 OK
strntold 38 "2.0041683600089727779961080513503e-292" "" 2.004168360008972777996108051350e-292 OK
strntold 37 "2.0041683600089727779961080513503e-29" "2" 2.004168360008972777996108051350e-29 OK'

	EXEC	1.7976931348623158079372897140529e+308 1.7976931348623158079372897140530e+308 1.7976931348623158079372897140531e+308
		OUTPUT - $'strtod   "1.7976931348623158079372897140529e+308" "" inf ERANGE
strtold  "1.7976931348623158079372897140529e+308" "" inf ERANGE
strntod  38 "1.7976931348623158079372897140529e+308" "" inf ERANGE
strntod  37 "1.7976931348623158079372897140529e+30" "8" 1.79769313486232e+30 OK
strntold 38 "1.7976931348623158079372897140529e+308" "" inf ERANGE
strntold 37 "1.7976931348623158079372897140529e+30" "8" 1.797693134862315807937289714053e+30 OK

strtod   "1.7976931348623158079372897140530e+308" "" inf ERANGE
strtold  "1.7976931348623158079372897140530e+308" "" inf ERANGE
strntod  38 "1.7976931348623158079372897140530e+308" "" inf ERANGE
strntod  37 "1.7976931348623158079372897140530e+30" "8" 1.79769313486232e+30 OK
strntold 38 "1.7976931348623158079372897140530e+308" "" inf ERANGE
strntold 37 "1.7976931348623158079372897140530e+30" "8" 1.797693134862315807937289714053e+30 OK

strtod   "1.7976931348623158079372897140531e+308" "" inf ERANGE
strtold  "1.7976931348623158079372897140531e+308" "" inf ERANGE
strntod  38 "1.7976931348623158079372897140531e+308" "" inf ERANGE
strntod  37 "1.7976931348623158079372897140531e+30" "8" 1.79769313486232e+30 OK
strntold 38 "1.7976931348623158079372897140531e+308" "" inf ERANGE
strntold 37 "1.7976931348623158079372897140531e+30" "8" 1.797693134862315807937289714053e+30 OK'

TEST 02 'optional suffix'

	EXEC	1.17549435e-38F 3.40282347e+38F
		OUTPUT - $'strtod   "1.17549435e-38F" "F" 1.17549435000000e-38 OK
strtold  "1.17549435e-38F" "F" 1.175494350000000000000000000000e-38 OK
strntod  15 "1.17549435e-38F" "F" 1.17549435000000e-38 OK
strntod  14 "1.17549435e-38" "F" 1.17549435000000e-38 OK
strntold 15 "1.17549435e-38F" "F" 1.175494350000000000000000000000e-38 OK
strntold 14 "1.17549435e-38" "F" 1.175494350000000000000000000000e-38 OK

strtod   "3.40282347e+38F" "F" 3.40282347000000e+38 OK
strtold  "3.40282347e+38F" "F" 3.402823470000000000000000000000e+38 OK
strntod  15 "3.40282347e+38F" "F" 3.40282347000000e+38 OK
strntod  14 "3.40282347e+38" "F" 3.40282347000000e+38 OK
strntold 15 "3.40282347e+38F" "F" 3.402823470000000000000000000000e+38 OK
strntold 14 "3.40282347e+38" "F" 3.402823470000000000000000000000e+38 OK'

	EXEC	2.00416836000897277799610805135016e-292L 1.79769313486231580793728971405301e+308L
		OUTPUT - $'strtod   "2.00416836000897277799610805135016e-292L" "L" 2.00416836000897e-292 OK
strtold  "2.00416836000897277799610805135016e-292L" "L" 2.004168360008972777996108051350e-292 OK
strntod  40 "2.00416836000897277799610805135016e-292L" "L" 2.00416836000897e-292 OK
strntod  39 "2.00416836000897277799610805135016e-292" "L" 2.00416836000897e-292 OK
strntold 40 "2.00416836000897277799610805135016e-292L" "L" 2.004168360008972777996108051350e-292 OK
strntold 39 "2.00416836000897277799610805135016e-292" "L" 2.004168360008972777996108051350e-292 OK

strtod   "1.79769313486231580793728971405301e+308L" "L" inf ERANGE
strtold  "1.79769313486231580793728971405301e+308L" "L" inf ERANGE
strntod  40 "1.79769313486231580793728971405301e+308L" "L" inf ERANGE
strntod  39 "1.79769313486231580793728971405301e+308" "L" inf ERANGE
strntold 40 "1.79769313486231580793728971405301e+308L" "L" inf ERANGE
strntold 39 "1.79769313486231580793728971405301e+308" "L" inf ERANGE'

TEST 03 'hexadecimal floating point'

	EXEC	0x1.0000000000000000p-1021 0x1.fffffffffffffffep+1023
		OUTPUT - $'strtod   "0x1.0000000000000000p-1021" "" 4.45014771701440e-308 OK
strtold  "0x1.0000000000000000p-1021" "" 0.000000000000000000000000000000e+00 ERANGE
strntod  26 "0x1.0000000000000000p-1021" "" 4.45014771701440e-308 OK
strntod  25 "0x1.0000000000000000p-102" "1" 1.97215226305253e-31 OK
strntold 26 "0x1.0000000000000000p-1021" "" 0.000000000000000000000000000000e+00 ERANGE
strntold 25 "0x1.0000000000000000p-102" "1" 1.972152263052529513529321413207e-31 OK

strtod   "0x1.fffffffffffffffep+1023" "" inf ERANGE
strtold  "0x1.fffffffffffffffep+1023" "" inf ERANGE
strntod  26 "0x1.fffffffffffffffep+1023" "" inf ERANGE
strntod  25 "0x1.fffffffffffffffep+102" "3" 1.01412048018258e+31 OK
strntold 26 "0x1.fffffffffffffffep+1023" "" inf ERANGE
strntold 25 "0x1.fffffffffffffffep+102" "3" 1.014120480182583521142386982912e+31 OK'

	EXEC	0x1p+1023 -0x1p+1023 0x1p-968 -0x1p-968
		OUTPUT - $'strtod   "0x1p+1023" "" 8.98846567431158e+307 OK
strtold  "0x1p+1023" "" 8.988465674311579538646525953945e+307 OK
strntod   9 "0x1p+1023" "" 8.98846567431158e+307 OK
strntod   8 "0x1p+102" "3" 5.07060240091292e+30 OK
strntold  9 "0x1p+1023" "" 8.988465674311579538646525953945e+307 OK
strntold  8 "0x1p+102" "3" 5.070602400912917605986812821504e+30 OK

strtod   "-0x1p+1023" "" -8.98846567431158e+307 OK
strtold  "-0x1p+1023" "" -8.988465674311579538646525953945e+307 OK
strntod  10 "-0x1p+1023" "" -8.98846567431158e+307 OK
strntod   9 "-0x1p+102" "3" -5.07060240091292e+30 OK
strntold 10 "-0x1p+1023" "" -8.988465674311579538646525953945e+307 OK
strntold  9 "-0x1p+102" "3" -5.070602400912917605986812821504e+30 OK

strtod   "0x1p-968" "" 4.00833672001795e-292 OK
strtold  "0x1p-968" "" 4.008336720017945555992216102700e-292 OK
strntod   8 "0x1p-968" "" 4.00833672001795e-292 OK
strntod   7 "0x1p-96" "8" 1.26217744835362e-29 OK
strntold  8 "0x1p-968" "" 4.008336720017945555992216102700e-292 OK
strntold  7 "0x1p-96" "8" 1.262177448353618888658765704452e-29 OK

strtod   "-0x1p-968" "" -4.00833672001795e-292 OK
strtold  "-0x1p-968" "" -4.008336720017945555992216102700e-292 OK
strntod   9 "-0x1p-968" "" -4.00833672001795e-292 OK
strntod   8 "-0x1p-96" "8" -1.26217744835362e-29 OK
strntold  9 "-0x1p-968" "" -4.008336720017945555992216102700e-292 OK
strntold  8 "-0x1p-96" "8" -1.262177448353618888658765704452e-29 OK'

	EXEC	0x1p+1023 -0x1p+1023 0x1p+1024 -0x1p+1024 0x1p-968 -0x1p-968 0x1p-969 -0x1p-969 0x1p-970 -0x1p-970
		OUTPUT - $'strtod   "0x1p+1023" "" 8.98846567431158e+307 OK
strtold  "0x1p+1023" "" 8.988465674311579538646525953945e+307 OK
strntod   9 "0x1p+1023" "" 8.98846567431158e+307 OK
strntod   8 "0x1p+102" "3" 5.07060240091292e+30 OK
strntold  9 "0x1p+1023" "" 8.988465674311579538646525953945e+307 OK
strntold  8 "0x1p+102" "3" 5.070602400912917605986812821504e+30 OK

strtod   "-0x1p+1023" "" -8.98846567431158e+307 OK
strtold  "-0x1p+1023" "" -8.988465674311579538646525953945e+307 OK
strntod  10 "-0x1p+1023" "" -8.98846567431158e+307 OK
strntod   9 "-0x1p+102" "3" -5.07060240091292e+30 OK
strntold 10 "-0x1p+1023" "" -8.988465674311579538646525953945e+307 OK
strntold  9 "-0x1p+102" "3" -5.070602400912917605986812821504e+30 OK

strtod   "0x1p+1024" "" inf ERANGE
strtold  "0x1p+1024" "" inf ERANGE
strntod   9 "0x1p+1024" "" inf ERANGE
strntod   8 "0x1p+102" "4" 5.07060240091292e+30 OK
strntold  9 "0x1p+1024" "" inf ERANGE
strntold  8 "0x1p+102" "4" 5.070602400912917605986812821504e+30 OK

strtod   "-0x1p+1024" "" -inf ERANGE
strtold  "-0x1p+1024" "" -inf ERANGE
strntod  10 "-0x1p+1024" "" -inf ERANGE
strntod   9 "-0x1p+102" "4" -5.07060240091292e+30 OK
strntold 10 "-0x1p+1024" "" -inf ERANGE
strntold  9 "-0x1p+102" "4" -5.070602400912917605986812821504e+30 OK

strtod   "0x1p-968" "" 4.00833672001795e-292 OK
strtold  "0x1p-968" "" 4.008336720017945555992216102700e-292 OK
strntod   8 "0x1p-968" "" 4.00833672001795e-292 OK
strntod   7 "0x1p-96" "8" 1.26217744835362e-29 OK
strntold  8 "0x1p-968" "" 4.008336720017945555992216102700e-292 OK
strntold  7 "0x1p-96" "8" 1.262177448353618888658765704452e-29 OK

strtod   "-0x1p-968" "" -4.00833672001795e-292 OK
strtold  "-0x1p-968" "" -4.008336720017945555992216102700e-292 OK
strntod   9 "-0x1p-968" "" -4.00833672001795e-292 OK
strntod   8 "-0x1p-96" "8" -1.26217744835362e-29 OK
strntold  9 "-0x1p-968" "" -4.008336720017945555992216102700e-292 OK
strntold  8 "-0x1p-96" "8" -1.262177448353618888658765704452e-29 OK

strtod   "0x1p-969" "" 2.00416836000897e-292 OK
strtold  "0x1p-969" "" 2.004168360008972777996108051350e-292 OK
strntod   8 "0x1p-969" "" 2.00416836000897e-292 OK
strntod   7 "0x1p-96" "9" 1.26217744835362e-29 OK
strntold  8 "0x1p-969" "" 2.004168360008972777996108051350e-292 OK
strntold  7 "0x1p-96" "9" 1.262177448353618888658765704452e-29 OK

strtod   "-0x1p-969" "" -2.00416836000897e-292 OK
strtold  "-0x1p-969" "" -2.004168360008972777996108051350e-292 OK
strntod   9 "-0x1p-969" "" -2.00416836000897e-292 OK
strntod   8 "-0x1p-96" "9" -1.26217744835362e-29 OK
strntold  9 "-0x1p-969" "" -2.004168360008972777996108051350e-292 OK
strntold  8 "-0x1p-96" "9" -1.262177448353618888658765704452e-29 OK

strtod   "0x1p-970" "" 1.00208418000449e-292 OK
strtold  "0x1p-970" "" 0.000000000000000000000000000000e+00 ERANGE
strntod   8 "0x1p-970" "" 1.00208418000449e-292 OK
strntod   7 "0x1p-97" "0" 6.31088724176809e-30 OK
strntold  8 "0x1p-970" "" 0.000000000000000000000000000000e+00 ERANGE
strntold  7 "0x1p-97" "0" 6.310887241768094443293828522262e-30 OK

strtod   "-0x1p-970" "" -1.00208418000449e-292 OK
strtold  "-0x1p-970" "" -0.000000000000000000000000000000e+00 ERANGE
strntod   9 "-0x1p-970" "" -1.00208418000449e-292 OK
strntod   8 "-0x1p-97" "0" -6.31088724176809e-30 OK
strntold  9 "-0x1p-970" "" -0.000000000000000000000000000000e+00 ERANGE
strntold  8 "-0x1p-97" "0" -6.310887241768094443293828522262e-30 OK'

	EXEC	0x1p127 0x1.p127 0x1.0p127 0x.1p131 0x0.1p131 0x0.10p131
		OUTPUT - $'strtod   "0x1p127" "" 1.70141183460469e+38 OK
strtold  "0x1p127" "" 1.701411834604692317316873037159e+38 OK
strntod   7 "0x1p127" "" 1.70141183460469e+38 OK
strntod   6 "0x1p12" "7" 4.09600000000000e+03 OK
strntold  7 "0x1p127" "" 1.701411834604692317316873037159e+38 OK
strntold  6 "0x1p12" "7" 4.096000000000000000000000000000e+03 OK

strtod   "0x1.p127" "" 1.70141183460469e+38 OK
strtold  "0x1.p127" "" 1.701411834604692317316873037159e+38 OK
strntod   8 "0x1.p127" "" 1.70141183460469e+38 OK
strntod   7 "0x1.p12" "7" 4.09600000000000e+03 OK
strntold  8 "0x1.p127" "" 1.701411834604692317316873037159e+38 OK
strntold  7 "0x1.p12" "7" 4.096000000000000000000000000000e+03 OK

strtod   "0x1.0p127" "" 1.70141183460469e+38 OK
strtold  "0x1.0p127" "" 1.701411834604692317316873037159e+38 OK
strntod   9 "0x1.0p127" "" 1.70141183460469e+38 OK
strntod   8 "0x1.0p12" "7" 4.09600000000000e+03 OK
strntold  9 "0x1.0p127" "" 1.701411834604692317316873037159e+38 OK
strntold  8 "0x1.0p12" "7" 4.096000000000000000000000000000e+03 OK

strtod   "0x.1p131" "" 1.70141183460469e+38 OK
strtold  "0x.1p131" "" 1.701411834604692317316873037159e+38 OK
strntod   8 "0x.1p131" "" 1.70141183460469e+38 OK
strntod   7 "0x.1p13" "1" 5.12000000000000e+02 OK
strntold  8 "0x.1p131" "" 1.701411834604692317316873037159e+38 OK
strntold  7 "0x.1p13" "1" 5.120000000000000000000000000000e+02 OK

strtod   "0x0.1p131" "" 1.70141183460469e+38 OK
strtold  "0x0.1p131" "" 1.701411834604692317316873037159e+38 OK
strntod   9 "0x0.1p131" "" 1.70141183460469e+38 OK
strntod   8 "0x0.1p13" "1" 5.12000000000000e+02 OK
strntold  9 "0x0.1p131" "" 1.701411834604692317316873037159e+38 OK
strntold  8 "0x0.1p13" "1" 5.120000000000000000000000000000e+02 OK

strtod   "0x0.10p131" "" 1.70141183460469e+38 OK
strtold  "0x0.10p131" "" 1.701411834604692317316873037159e+38 OK
strntod  10 "0x0.10p131" "" 1.70141183460469e+38 OK
strntod   9 "0x0.10p13" "1" 5.12000000000000e+02 OK
strntold 10 "0x0.10p131" "" 1.701411834604692317316873037159e+38 OK
strntold  9 "0x0.10p13" "1" 5.120000000000000000000000000000e+02 OK'

	EXEC	0x12345p127 0x12345.6789ap127 1.26866461572665980e+43
		OUTPUT - $'strtod   "0x12345p127" "" 1.26865773447299e+43 OK
strtold  "0x12345p127" "" 1.268657734472988826407326380157e+43 OK
strntod  11 "0x12345p127" "" 1.26865773447299e+43 OK
strntod  10 "0x12345p12" "7" 3.05418240000000e+08 OK
strntold 11 "0x12345p127" "" 1.268657734472988826407326380157e+43 OK
strntold 10 "0x12345p12" "7" 3.054182400000000000000000000000e+08 OK

strtod   "0x12345.6789ap127" "" 1.26866461572666e+43 OK
strtold  "0x12345.6789ap127" "" 1.268664615726659876516854453589e+43 OK
strntod  17 "0x12345.6789ap127" "" 1.26866461572666e+43 OK
strntod  16 "0x12345.6789ap12" "7" 3.05419896601563e+08 OK
strntold 17 "0x12345.6789ap127" "" 1.268664615726659876516854453589e+43 OK
strntold 16 "0x12345.6789ap12" "7" 3.054198966015625000000000000000e+08 OK

strtod   "1.26866461572665980e+43" "" 1.26866461572666e+43 OK
strtold  "1.26866461572665980e+43" "" 1.268664615726659800000000000000e+43 OK
strntod  23 "1.26866461572665980e+43" "" 1.26866461572666e+43 OK
strntod  22 "1.26866461572665980e+4" "3" 1.26866461572666e+04 OK
strntold 23 "1.26866461572665980e+43" "" 1.268664615726659800000000000000e+43 OK
strntold 22 "1.26866461572665980e+4" "3" 1.268664615726659800000000000000e+04 OK'

TEST 04 'to infinity and beyond'

	EXEC	inf +inf -inf
		OUTPUT - $'strtod   "inf" "" inf OK
strtold  "inf" "" inf OK
strntod   3 "inf" "" inf OK
strntod   2 "in" "inf" 0.00000000000000e+00 OK
strntold  3 "inf" "" inf OK
strntold  2 "in" "inf" 0.000000000000000000000000000000e+00 OK

strtod   "+inf" "" inf OK
strtold  "+inf" "" inf OK
strntod   4 "+inf" "" inf OK
strntod   3 "+in" "+inf" 0.00000000000000e+00 OK
strntold  4 "+inf" "" inf OK
strntold  3 "+in" "+inf" 0.000000000000000000000000000000e+00 OK

strtod   "-inf" "" -inf OK
strtold  "-inf" "" -inf OK
strntod   4 "-inf" "" -inf OK
strntod   3 "-in" "-inf" 0.00000000000000e+00 OK
strntold  4 "-inf" "" -inf OK
strntold  3 "-in" "-inf" 0.000000000000000000000000000000e+00 OK'

	EXEC	Inf +Inf -Inf
		OUTPUT - $'strtod   "Inf" "" inf OK
strtold  "Inf" "" inf OK
strntod   3 "Inf" "" inf OK
strntod   2 "In" "Inf" 0.00000000000000e+00 OK
strntold  3 "Inf" "" inf OK
strntold  2 "In" "Inf" 0.000000000000000000000000000000e+00 OK

strtod   "+Inf" "" inf OK
strtold  "+Inf" "" inf OK
strntod   4 "+Inf" "" inf OK
strntod   3 "+In" "+Inf" 0.00000000000000e+00 OK
strntold  4 "+Inf" "" inf OK
strntold  3 "+In" "+Inf" 0.000000000000000000000000000000e+00 OK

strtod   "-Inf" "" -inf OK
strtold  "-Inf" "" -inf OK
strntod   4 "-Inf" "" -inf OK
strntod   3 "-In" "-Inf" 0.00000000000000e+00 OK
strntold  4 "-Inf" "" -inf OK
strntold  3 "-In" "-Inf" 0.000000000000000000000000000000e+00 OK'

	EXEC	InFiNiTy +InFiNiTy -InFiNiTy
		OUTPUT - $'strtod   "InFiNiTy" "" inf OK
strtold  "InFiNiTy" "" inf OK
strntod   8 "InFiNiTy" "" inf OK
strntod   7 "InFiNiT" "iNiTy" inf OK
strntold  8 "InFiNiTy" "" inf OK
strntold  7 "InFiNiT" "iNiTy" inf OK

strtod   "+InFiNiTy" "" inf OK
strtold  "+InFiNiTy" "" inf OK
strntod   9 "+InFiNiTy" "" inf OK
strntod   8 "+InFiNiT" "iNiTy" inf OK
strntold  9 "+InFiNiTy" "" inf OK
strntold  8 "+InFiNiT" "iNiTy" inf OK

strtod   "-InFiNiTy" "" -inf OK
strtold  "-InFiNiTy" "" -inf OK
strntod   9 "-InFiNiTy" "" -inf OK
strntod   8 "-InFiNiT" "iNiTy" -inf OK
strntold  9 "-InFiNiTy" "" -inf OK
strntold  8 "-InFiNiT" "iNiTy" -inf OK'

	EXEC	infi +infi -infi
		OUTPUT - $'strtod   "infi" "i" inf OK
strtold  "infi" "i" inf OK
strntod   4 "infi" "i" inf OK
strntod   3 "inf" "i" inf OK
strntold  4 "infi" "i" inf OK
strntold  3 "inf" "i" inf OK

strtod   "+infi" "i" inf OK
strtold  "+infi" "i" inf OK
strntod   5 "+infi" "i" inf OK
strntod   4 "+inf" "i" inf OK
strntold  5 "+infi" "i" inf OK
strntold  4 "+inf" "i" inf OK

strtod   "-infi" "i" -inf OK
strtold  "-infi" "i" -inf OK
strntod   5 "-infi" "i" -inf OK
strntod   4 "-inf" "i" -inf OK
strntold  5 "-infi" "i" -inf OK
strntold  4 "-inf" "i" -inf OK'

	EXEC	in +in -in
		OUTPUT - $'strtod   "in" "in" 0.00000000000000e+00 OK
strtold  "in" "in" 0.000000000000000000000000000000e+00 OK
strntod   2 "in" "in" 0.00000000000000e+00 OK
strntod   1 "i" "in" 0.00000000000000e+00 OK
strntold  2 "in" "in" 0.000000000000000000000000000000e+00 OK
strntold  1 "i" "in" 0.000000000000000000000000000000e+00 OK

strtod   "+in" "+in" 0.00000000000000e+00 OK
strtold  "+in" "+in" 0.000000000000000000000000000000e+00 OK
strntod   3 "+in" "+in" 0.00000000000000e+00 OK
strntod   2 "+i" "+in" 0.00000000000000e+00 OK
strntold  3 "+in" "+in" 0.000000000000000000000000000000e+00 OK
strntold  2 "+i" "+in" 0.000000000000000000000000000000e+00 OK

strtod   "-in" "-in" 0.00000000000000e+00 OK
strtold  "-in" "-in" 0.000000000000000000000000000000e+00 OK
strntod   3 "-in" "-in" 0.00000000000000e+00 OK
strntod   2 "-i" "-in" 0.00000000000000e+00 OK
strntold  3 "-in" "-in" 0.000000000000000000000000000000e+00 OK
strntold  2 "-i" "-in" 0.000000000000000000000000000000e+00 OK'

	EXEC	NaN +NaN -NaN
		OUTPUT - $'strtod   "NaN" "" nan OK
strtold  "NaN" "" nan OK
strntod   3 "NaN" "" nan OK
strntod   2 "Na" "NaN" 0.00000000000000e+00 OK
strntold  3 "NaN" "" nan OK
strntold  2 "Na" "NaN" 0.000000000000000000000000000000e+00 OK

strtod   "+NaN" "" nan OK
strtold  "+NaN" "" nan OK
strntod   4 "+NaN" "" nan OK
strntod   3 "+Na" "+NaN" 0.00000000000000e+00 OK
strntold  4 "+NaN" "" nan OK
strntold  3 "+Na" "+NaN" 0.000000000000000000000000000000e+00 OK

strtod   "-NaN" "" -nan OK
strtold  "-NaN" "" -nan OK
strntod   4 "-NaN" "" -nan OK
strntod   3 "-Na" "-NaN" 0.00000000000000e+00 OK
strntold  4 "-NaN" "" -nan OK
strntold  3 "-Na" "-NaN" 0.000000000000000000000000000000e+00 OK'

	EXEC	NaN12-34abc.def +NaN12-34abc.def -NaN12-34abc.def
		OUTPUT - $'strtod   "NaN12-34abc.def" "" nan OK
strtold  "NaN12-34abc.def" "" nan OK
strntod  15 "NaN12-34abc.def" "" nan OK
strntod  14 "NaN12-34abc.de" "f" nan OK
strntold 15 "NaN12-34abc.def" "" nan OK
strntold 14 "NaN12-34abc.de" "f" nan OK

strtod   "+NaN12-34abc.def" "" nan OK
strtold  "+NaN12-34abc.def" "" nan OK
strntod  16 "+NaN12-34abc.def" "" nan OK
strntod  15 "+NaN12-34abc.de" "f" nan OK
strntold 16 "+NaN12-34abc.def" "" nan OK
strntold 15 "+NaN12-34abc.de" "f" nan OK

strtod   "-NaN12-34abc.def" "" -nan OK
strtold  "-NaN12-34abc.def" "" -nan OK
strntod  16 "-NaN12-34abc.def" "" -nan OK
strntod  15 "-NaN12-34abc.de" "f" -nan OK
strntold 16 "-NaN12-34abc.def" "" -nan OK
strntold 15 "-NaN12-34abc.de" "f" -nan OK'

	EXEC	0 -0 0. -0. 0.0 -0.0
		OUTPUT - $'strtod   "0" "" 0.00000000000000e+00 OK
strtold  "0" "" 0.000000000000000000000000000000e+00 OK
strntod   1 "0" "" 0.00000000000000e+00 OK
strntod   0 "" "0" 0.00000000000000e+00 OK
strntold  1 "0" "" 0.000000000000000000000000000000e+00 OK
strntold  0 "" "0" 0.000000000000000000000000000000e+00 OK

strtod   "-0" "" -0.00000000000000e+00 OK
strtold  "-0" "" -0.000000000000000000000000000000e+00 OK
strntod   2 "-0" "" -0.00000000000000e+00 OK
strntod   1 "-" "-0" 0.00000000000000e+00 OK
strntold  2 "-0" "" -0.000000000000000000000000000000e+00 OK
strntold  1 "-" "-0" 0.000000000000000000000000000000e+00 OK

strtod   "0." "" 0.00000000000000e+00 OK
strtold  "0." "" 0.000000000000000000000000000000e+00 OK
strntod   2 "0." "" 0.00000000000000e+00 OK
strntod   1 "0" "." 0.00000000000000e+00 OK
strntold  2 "0." "" 0.000000000000000000000000000000e+00 OK
strntold  1 "0" "." 0.000000000000000000000000000000e+00 OK

strtod   "-0." "" -0.00000000000000e+00 OK
strtold  "-0." "" -0.000000000000000000000000000000e+00 OK
strntod   3 "-0." "" -0.00000000000000e+00 OK
strntod   2 "-0" "." -0.00000000000000e+00 OK
strntold  3 "-0." "" -0.000000000000000000000000000000e+00 OK
strntold  2 "-0" "." -0.000000000000000000000000000000e+00 OK

strtod   "0.0" "" 0.00000000000000e+00 OK
strtold  "0.0" "" 0.000000000000000000000000000000e+00 OK
strntod   3 "0.0" "" 0.00000000000000e+00 OK
strntod   2 "0." "0" 0.00000000000000e+00 OK
strntold  3 "0.0" "" 0.000000000000000000000000000000e+00 OK
strntold  2 "0." "0" 0.000000000000000000000000000000e+00 OK

strtod   "-0.0" "" -0.00000000000000e+00 OK
strtold  "-0.0" "" -0.000000000000000000000000000000e+00 OK
strntod   4 "-0.0" "" -0.00000000000000e+00 OK
strntod   3 "-0." "0" -0.00000000000000e+00 OK
strntold  4 "-0.0" "" -0.000000000000000000000000000000e+00 OK
strntold  3 "-0." "0" -0.000000000000000000000000000000e+00 OK'

TEST 05 'simple, right?'

	EXEC	1 12 1.2 1.2.3
		OUTPUT - $'strtod   "1" "" 1.00000000000000e+00 OK
strtold  "1" "" 1.000000000000000000000000000000e+00 OK
strntod   1 "1" "" 1.00000000000000e+00 OK
strntod   0 "" "1" 0.00000000000000e+00 OK
strntold  1 "1" "" 1.000000000000000000000000000000e+00 OK
strntold  0 "" "1" 0.000000000000000000000000000000e+00 OK

strtod   "12" "" 1.20000000000000e+01 OK
strtold  "12" "" 1.200000000000000000000000000000e+01 OK
strntod   2 "12" "" 1.20000000000000e+01 OK
strntod   1 "1" "2" 1.00000000000000e+00 OK
strntold  2 "12" "" 1.200000000000000000000000000000e+01 OK
strntold  1 "1" "2" 1.000000000000000000000000000000e+00 OK

strtod   "1.2" "" 1.20000000000000e+00 OK
strtold  "1.2" "" 1.200000000000000000000000000000e+00 OK
strntod   3 "1.2" "" 1.20000000000000e+00 OK
strntod   2 "1." "2" 1.00000000000000e+00 OK
strntold  3 "1.2" "" 1.200000000000000000000000000000e+00 OK
strntold  2 "1." "2" 1.000000000000000000000000000000e+00 OK

strtod   "1.2.3" ".3" 1.20000000000000e+00 OK
strtold  "1.2.3" ".3" 1.200000000000000000000000000000e+00 OK
strntod   5 "1.2.3" ".3" 1.20000000000000e+00 OK
strntod   4 "1.2." ".3" 1.20000000000000e+00 OK
strntold  5 "1.2.3" ".3" 1.200000000000000000000000000000e+00 OK
strntold  4 "1.2." ".3" 1.200000000000000000000000000000e+00 OK'
