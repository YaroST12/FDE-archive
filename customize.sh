#!/system/bin/sh
### FDE.AI | FeraVolt. 2020 ###

touch $MODPATH/fde
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive $MODPATH/service.sh 0 0 0755 0777
set_perm_recursive $MODPATH/system/etc/fde.ai 0 0 0755 0777
set_perm_recursive $MODPATH/fde 0 0 0755 0777
{
echo "#!/system/bin/sh"
echo " "
echo "echo alive"
echo " "
}>> $MODPATH/fde
A=$($MODPATH/fde | grep alive);
if [ "$A" != "alive" ]; then
rm -rf $MODPATH
abort "- Your custom kernel blocks this module. Please get a better kernel."
else
rm -rf $MODPATH/fde
rm -rf $MODPATH/ai.png
rm -rf $MODPATH/anti-theft.jpg
rm -rf $MODPATH/gplay.png
rm -rf $MODPATH/gplay.png
ui_print "- Thanks for choosing FDE.AI!"
fi;

