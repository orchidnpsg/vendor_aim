while read device; do
  add_lunch_combo aim_$device-userdebug
done < vendor/aim/devices/device.list
# @anupritaisno1: oneplus2 always builds in user so it as to be done exactly like this
# do not touch this line!
  add_lunch_combo aim_oneplus2-user
