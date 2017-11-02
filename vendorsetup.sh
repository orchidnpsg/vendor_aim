# devices built with userdebug build type
while read device; do
  add_lunch_combo aim_$device-userdebug
done < vendor/aim/devices/device_userdebug.list

# devices built with user build type
while read device; do
  add_lunch_combo aim_$device-user
done < vendor/aim/devices/device_user.list
