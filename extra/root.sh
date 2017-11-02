#!/bin/bash
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    ylw=$(tput setaf 3)             #  yellow
    blu=$(tput setaf 4)             #  blue
    ppl=$(tput setaf 5)             #  purple
    cya=$(tput setaf 6)             #  cyan
    txtbld=$(tput bold)             #  Bold
    bldred=${txtbld}$(tput setaf 1) #  red
    bldgrn=${txtbld}$(tput setaf 2) #  green
    bldylw=${txtbld}$(tput setaf 3) #  yellow
    bldblu=${txtbld}$(tput setaf 4) #  blue
    bldppl=${txtbld}$(tput setaf 5) #  purple
    bldcya=${txtbld}$(tput setaf 6) #  cyan
    txtrst=$(tput sgr0)             #  Reset
    rev=$(tput rev)                 #  Reverse color
    pplrev=${rev}$(tput setaf 5)
    cyarev=${rev}$(tput setaf 6)
    ylwrev=${rev}$(tput setaf 3)
    blurev=${rev}$(tput setaf 4)
    normal='tput sgr0'

echo -e ${ylw}"\n\n ▼ Which root method do you want to use?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 0 - Magisk "${txtrst}${red}"    ︱ Magisk Root Method"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1 - Native SU"${txtrst}${red}"  ︱ LineageOS superuser binary"${txtrst}
echo -e "";
echo -e ${blu}" 〉 2 - Rootless"${txtrst}${red}"   ︱  No root like stock rom or official LineageOS [default]"${txtrst}
echo -e "";
echo -e ${blu}" 🕑  10 seconds Time-out"${txtrst}${red}"︱ Default option"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a Method"${txtrst}
echo -e "";
$normal
read -t 10 askvariant || askvariant=2
sleep 1

echo -e "";
if [ "$askvariant" -eq "0" ];
then
echo -e ${blu}" ▪ Magisk"${txtrst}
export WITH_MAGISK="true";
$normal
elif [ "$askvariant" -eq "1" ];
then
echo -e ${blu}" ▪ Native SU "${txtrst}
export WITH_SU="true";
$normal
elif [ "$askvariant" -eq "2" ];
then
echo -e ${blu}" ▪ Rootless "${txtrst}
# nothing to do actually here, just unset 'WITH_MAGISK' and 'WITH_SU' if they were set
unset WITH_MAGISK WITH_SU;
$normal
else
echo -e ${red}" ▪ Invalid or empty option specified! Falling back to previously set root method if any. "${txtrst}
$normal
fi
echo -e "";
echo -e "";
sleep 1
