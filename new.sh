#!/bin/sh

echo "select your choice for (sin=1, cos=2, tan=3, cog=4, sec=5, csc=6) : "


read choice
sin=1
cos=2
tan=3
cog=4
sec=5
csc=6

if [ $choice = $sin ]
then
echo "congratulations! you selected sin"
echo "Enter a value for sin opration!"


read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x * $x) / 6" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x * $x) / 120" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x * $x) / 5040" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x) / 362880" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x) / 39916800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6227020800" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x) / 1307674368000" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 355687428096000" | bc)
f9_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 121645100408832000" | bc)


result=$(echo " scale=9; ($x - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)
echo " sin $input is equal to : $result"




elif [ $choice = $cos ]
then
echo "congratulations! you secleted cos"
echo "Enter a value for cos opration!"
read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x) / 2" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x) / 24" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x) / 720" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x) / 40320" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 3628800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 479001600" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 87178291200" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 20922789888000" | bc)
f9_x=$(echo "scale=9; ($x *$x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6402373705728000" | bc)


result2=$(echo " scale=9; (1 - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)

echo "cos $input is equal to: $result2"




elif [ $choice = $tan ]
then
echo "congratulations! you secleted tan"
echo "Enter a value for tan opration!"

read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x * $x) / 6" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x * $x) / 120" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x * $x) / 5040" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x) / 362880" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x) / 39916800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6227020800" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x) / 1307674368000" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 355687428096000" | bc)
f9_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 121645100408832000" | bc)

result=$(echo " scale=9; ($x - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)


f11_x=$(echo " scale=9; ($x * $x) / 2" | bc)
f22_x=$(echo "scale=9; ($x * $x * $x * $x) / 24" | bc)
f33_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x) / 720" | bc)
f44_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x) / 40320" | bc)
f55_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 3628800" | bc)
f66_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 479001600" | bc)
f77_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 87178291200" | bc)
f88_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 20922789888000" | bc)
f99_x=$(echo "scale=9; ($x *$x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6402373705728000" | bc)

result2=$(echo " scale=9; (1 - $f11_x + $f22_x - $f33_x + $f44_x - $f55_x + $f66_x - $f77_x + $f88_x - $f99_x)" | bc)



resulttag=$(echo " scale=9; ($result / $result2)" | bc )
echo "tag $input is equal to $resulttag"





elif [ $choice = $cog ]
then 
echo "congratulations! you secleted cog"
echo " Enter a value for cog opration!"

read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x * $x) / 6" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x * $x) / 120" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x * $x) / 5040" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x) / 362880" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x) / 39916800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6227020800" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x) / 1307674368000" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 355687428096000" | bc)
f9_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 121645100408832000" | bc)

result=$(echo " scale=9; ($x - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)


f11_x=$(echo " scale=9; ($x * $x) / 2" | bc)
f22_x=$(echo "scale=9; ($x * $x * $x * $x) / 24" | bc)
f33_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x) / 720" | bc)
f44_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x) / 40320" | bc)
f55_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 3628800" | bc)
f66_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 479001600" | bc)
f77_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 87178291200" | bc)
f88_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 20922789888000" | bc)
f99_x=$(echo "scale=9; ($x *$x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6402373705728000" | bc)

result2=$(echo " scale=9; (1 - $f11_x + $f22_x - $f33_x + $f44_x - $f55_x + $f66_x - $f77_x + $f88_x - $f99_x)" | bc)

resulttag=$(echo " scale=9; ($result / $result2)" | bc )



resultcog=$(echo " scale=9; (1 / $resulttag)" | bc)
echo "cog $input is equal to $resultcog"



elif [ $choice = $sec ]
then 
echo "congratulations! you secleted sec"
echo " Enter a value for sec opration!"

read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x) / 2" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x) / 24" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x) / 720" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x) / 40320" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 3628800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 479001600" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 87178291200" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 20922789888000" | bc)
f9_x=$(echo "scale=9; ($x *$x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6402373705728000" | bc)


result2=$(echo " scale=9; (1 - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)


resultsec=$(echo " scale=9; 1 / $result2" | bc)
echo "sec $input is equal to: $resultsec"


elif [ $choice = $csc ]
then 
echo "congratulations! you secleted csc"
echo " Enter a value for csc opration: "

read input
fhi=3.14
degree=180
x=$(echo "scale=9; ($input * $fhi) / $degree" | bc)
f1_x=$(echo " scale=9; ($x * $x * $x) / 6" | bc)
f2_x=$(echo "scale=9; ($x * $x * $x * $x * $x) / 120" | bc)
f3_x=$(echo " scale=9; ($x * $x * $x * $x * $x * $x * $x) / 5040" | bc)
f4_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x) / 362880" | bc)
f5_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x) / 39916800" | bc)
f6_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x ) / 6227020800" | bc)
f7_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x) / 1307674368000" | bc)
f8_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 355687428096000" | bc)
f9_x=$(echo "scale=9; ($x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x * $x  * $x * $x * $x * $x) / 121645100408832000" | bc)


result=$(echo " scale=9; ($x - $f1_x + $f2_x - $f3_x + $f4_x - $f5_x + $f6_x - $f7_x + $f8_x - $f9_x)" | bc)


resultcsc=$(echo " scale=9; 1 / $result" | bc)
echo "csc  $input is equal to: $resultcsc"


else
echo "your input is incorect!"
fi
