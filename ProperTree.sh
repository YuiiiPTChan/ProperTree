#!/bin/sh
chmod +x ./ProperTree.sh
echo "------------------------------------------------------"
echo "Attempting to verify needed packages before loading..."
echo "------------------------------------------------------"
echo ""
echo "Verifying Python3"
sleep 2
REQUIRED_PKG="python3"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "$REQUIRED_PKG is not installed. Installing $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi
echo "Verifying python3-tk"
sleep 2
REQUIRED_PKG="python3-tk"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "$REQUIRED_PKG is not installed. Installing $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi
echo ""
echo "All required packages were installed."
sleep 1
echo "Starting ProperTree..."
sleep 1
python3 ProperTree.command
echo ""
echo "------------------------------------------------------"
echo "ProperTree is a cross-platfrom GUI plist editor written
by CorpNewt using python."
echo "Source Code available at: 
https://github.com/corpnewt/ProperTree"
echo ""
echo "Program terminated by the user. 
Script written by Yuichiro#0001"
echo "------------------------------------------------------"
echo ""
$SHELL
exit