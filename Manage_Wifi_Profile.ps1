################################################################################################
# This script allows you to delete a temporary wifi profile and change the priority            #
# of the production wifi profile                                                               #
# Editor : Christopher Mogis                                                                   #
# Date : 24/11/2022                                                                            #
# Version 1.0 -                                                                                #
################################################################################################

#Variables
$WifiP = "MOGIS_HOME"
$WifiD = "MOGIS_HOME_5GHZ"

#Delete Wifi Profiles
Netsh wlan delete profile $WifiP

#Change priority for wifi profile
netsh wlan set profileorder name="$($WifiD)" interface="Wi-Fi" priority=1

#Create folder for detection method
New-Item 'C:\Wifi' -itemType Directory
$ConditionFile=Get-Item 'C:\Wifi' -Force
$ConditionFile.attributes='Hidden'
