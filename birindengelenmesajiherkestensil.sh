#!/bin/bash
# birindengelenmesajiherkestensil.sh GondericiAdres
if [ -z "$1" ]; then
echo "Komut Kullanimi:  birindengelenmesajiherkestensil.sh gondericiadres" 
exit 0
else
gonderici=$1
for acct in `cat /tmp/temp_email` ; do
echo "$acct icinde Gonderen:  $gonderici araniyor.." 
for msg in `zmmailbox -z -m "$acct" s -l 999 -t message "from:$gonderici"|awk '{ if (NR!=1) {print}}' | grep -v -e Id -e "-" -e "^$" | awk '{ print $2 }'`
do
echo ""$msg" ID numarali mesaj siliniyor..." 
zmmailbox -z -m $acct dm $msg
done
done
fi
