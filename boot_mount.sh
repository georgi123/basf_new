echo "/root/scripts/boot_mount.sh $1"
CONF=etc
OLDSLES=mnt
LOG=set_configuration.log

#mount suse11 disk in the /mnt
mount /dev/$1/root /$OLDSLES/
mount /dev/$1/opt /$OLDSLES/opt/
mount /dev/$1/tmp /$OLDSLES/tmp/
mount /dev/$1/home /$OLDSLES/usr2/local/
