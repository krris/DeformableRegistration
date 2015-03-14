#!/bin/bash
inFile1="/home/krris/dane/CINE_retro_SAALL10/IM-0010-0001-0001.IMA"
inFile2="/home/krris/dane/CINE_retro_SAALL10/IM-0010-0003-0001.IMA"

outFile1=./output/DeformableRegistration4/DeformableRegistration4Output1.mhd
outFile2=./output/DeformableRegistration4/DeformableRegistration4Output2.mhd
outFile3=./output/DeformableRegistration4/DeformableRegistration4Output3.mhd
outFile4=./output/DeformableRegistration4/DeformableRegistration4Output4.mhd

STARTTIME=$(date +%s)

# START processing
/home/krris/dev/DeformableRegistration/build/DeformableRegistration4 "$inFile1" "$inFile2" "$outFile1" "$outFile2" "$outFile3" "$outFile4"
#/Applications/paraview.app/Contents/MacOS/paraview --data="$inFile, $outFile"
# END processing

ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to complete this task..."
