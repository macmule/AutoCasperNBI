#!/bin/sh
################################################################################################
#
# Used by AutoCasperNBI created nbi's on launch to set Time, Screen Sharing & install Certificates
#
################################################################################################

########
#
# Set Time Server & Zone
#
########

# If file exists, read from it & set Time Server & Zone
if [ -f /Library/Application\ Support/AutoCasperNBI/Settings/TimeSettings.plist ]; then

	echo "Getting Time Server & Zone settings..."
	
	# Get Time Server from plist
	timeServer=$(sudo defaults read /Library/Application\ Support/AutoCasperNBI/Settings/TimeSettings.plist timeServer)
	
	echo "Setting Time Server..."
	
	/usr/sbin/systemsetup -setnetworktimeserver "$timeServer"
		
	echo "Set Time Server"
	
	# Get Time Zone from plist
	timeZone=$(sudo defaults read /Library/Application\ Support/AutoCasperNBI/Settings/TimeSettings.plist timeZone)
	
	echo "Setting Time Zone..."
	
	/usr/sbin/systemsetup -settimezone "$timeZone"
		
	echo "Set Time Zone"
	
	# Enable Network time
	
	echo "Enabling Network Time..."
	
	/usr/sbin/systemsetup -setusingnetworktime on
	
	echo "Network Time enabled."

else
	
	echo "TimeSettings.plist does not exist..."

fi

########
#
# Create ARD User
#
########

# If file exists, read from it & create the ARD User
if [ -f /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ]; then

	echo "ARDUser.plist exists.. Getting values.."
	
	# Get encoded ARD Username from plist
	ardUsernameEncoded=$(sudo defaults read /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ARDUsername)
	echo "Retrieved ARD User..."
	
	# Decode ARD Username
	ardUsername=$(echo $ardUsernameEncoded | openssl base64 -d )
	echo "Decoded ARD User..."
	
	# Get encoded ARD Password from plist
	ardPasswordEncoded=$(sudo defaults read /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ARDPassword)
	echo "Retrieved ARD Password..."
	
	# Decode ARD Password
	ardPassword=$(echo $ardPasswordEncoded | openssl base64 -d)
	echo "Decoded ARD Password..."
	
	# Create ARD User
	dscl . create /Users/$ardUsername
	echo "ARD User created..."
	
	# Set ARD User password
	dscl . passwd /Users/$ardUsername $ardPassword
	echo "ARD Password set..."
	
	# ARD User UniqueID set
	dscl . create /Users/$ardUsername UniqueID 600
	echo "Set ARD Users UniqueID..."

else
	
	echo "ARDUser.plist does not exist..."

fi
	
########
#
# Screen Sharing
#
########

# If both the ARDUser.plist & com.apple.VNCSettings.txt files exist
if [ -f /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ] && [ -f /Library/Preferences/com.apple.VNCSettings.txt ]; then
	
	echo "Enabling ARD & VNC..."
	
	/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -clientopts -setvnclegacy -vnclegacy yes -restart -agent -privs -all
	
	echo "ARD & VNC enabled..."

# If only the file com.apple.VNCSettings.txt exists
elif [ ! -f /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ] && [ -f /Library/Preferences/com.apple.VNCSettings.txt ]; then
	
	echo "Enabling VNC..."
	
	/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -clientopts -setvnclegacy -vnclegacy yes -restart -agent
	
	echo "VNC enabled..."

# If only the file ARDUser.plist exists
elif [ -f /Library/Application\ Support/AutoCasperNBI/Settings/ARDUser.plist ] && [ ! -f /Library/Preferences/com.apple.VNCSettings.txt ]; then

	echo "Enabling ARD..."
	
	/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -restart -agent -privs -all
	
	echo "ARD enabled for all users..."

else
	echo "No files found to enable screen sharing..."	
fi

########
#
# Certificates
#
########

# Save IFS
setIFS=$IFS

# Set IFS to space
IFS=$(echo -en "\n\b")

# Check to see if /Library/Application\ Support/AutoCasperNBI/Certificates/ contains certs
if [ "$(ls -A /Library/Application\ Support/AutoCasperNBI/Certificates/)" ]; then

	# For each Certificate found...
	for certificate in /Library/Application\ Support/AutoCasperNBI/Certificates/*
	do

 		echo "Installing Certificate $certificate..."
		
		# Install found certificates in the System keychain as root,
		/usr/bin/security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain "$certificate"
		
	done

else

	echo "No Certificates to install..."
	
fi 

# Reset IFS
setIFS=$IFS

########
#
# Disable Gatekeeper
#
########

spctl --master-disable

echo "GateKeeper disabled..."

########
#
# Energy Saver Preferences
#
########

sudo pmset -a displaysleep 0 disksleep 0 sleep 0 womp 1 autorestart 1