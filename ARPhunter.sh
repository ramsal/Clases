#!/bin/bash

clear

echo "*******************************************"
echo "                    ARP HUNTER "
echo "*******************************************"

echo "                   sNMNo  oNMNs                    "
echo "                  yMMMMMooMMMMMy                  "
echo "                  NMMMMMMMMMMMMN                  "
echo "                  MMMMMMMMMMMMMM                  "
echo "           :oydhdMMMMMMMMMMMMMMdhdyo:             "
echo "          :NMMMMd/:/osyhhhhyso/:/dMMMMN:          "
echo "           /ydNMMMMNmdhyyyyhdmNMMMMNdy/           "
echo "                dy+oossyyyyssoo+yd                "
echo "                hNMMMMMMssMMMMMMNh                "
echo "                oh+mMM      MMm+ho                "
echo "                .N-    ARP     -N.                "
echo "                 /m.  HUNTER  .m/                 "
echo "                  +N+        +N+                  "
echo "               -+ymMMMNs+::+sNMMMmy+-             "
echo "          /ymMMMMMMMMMMMMMMMMMMMMMMMMmy/          "
echo "         dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd         "
echo "        hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh        "
echo "       /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/       "
echo "       dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd       "
echo "       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      "
echo "      /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/      "
echo "      sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMs      "
echo "      sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMs      "
echo "       :oymMMMMMMMMMMMMMMMMMMMMMMMMMMMMmyo:       "
echo "            .-/osyhdmNNMMMMNNmdhyso/-.            "
echo
echo


mac=$(arp -a | grep '192.168.2.1)')
echo "La MAC del router es $mac"
echo
real="? (192.168.2.1) en 18:66:8f:dc:ff:f1 [ether] en eth0" 
echo "La MAC del router debería ser $real"

if [ "$mac" = "$real" ]; then
        echo;echo;echo "---------> TODO OK"
   else
        echo;echo;echo "---------> Las MAC's NO COINCIDEN, puedes estar sufriendo un ataque MITM"
fi

echo
echo
echo "*******************************************"

