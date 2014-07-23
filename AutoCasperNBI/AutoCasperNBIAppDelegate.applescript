--
--  AppDelegate.applescript
--  AutoCasperNBI
--
--  Created by Ben Toms on 04/06/2014.
--  Copyright (c) 2014 macmule. All rights reserved.
--

script AutoCasperNBIAppDelegate

--- PROPERTIES ---

--- Classes
	property parent : class "NSObject"
    
--- Objects
--property AutoCasperNBIWindow : missing value

	-- IBOutlets
    property defaults : missing value -- for saved prefs
    property hostMacOSVersion : missing value
    property hostMacOSBuildVersion : missing value
    property mainWindow : missing value
    property optionsWindow : missing value
    property showBuildProcessWindow : missing value
    property selectedOSdmgPath : missing value
    property selectedOSdmgMountPath : missing value
    property selectedOSdmgVersion : missing value
    property selectedAppPath : missing value
    property selectedAppTextField : missing value
    property selectedAppBundleName : missing value
    property selectedCasperImagingAppVersion : missing value
    property jssURL : missing value
    property checkJSSURL : missing value
    property enteredJSSURLTextField : missing value
    property jssURLHtml : missing value
    property jssVersion : missing value
    property jssVersionCut : missing value
    property selectOSDMG : missing value
    property selectedOSDMGTextField : missing value
    property netBootNameTextField : missing value
    property netBootImageIndexTextField : missing value
    property netBootImageIndexLabel : missing value
    property netBootDescription : missing value
    property applescriptsDelims : missing value
    property startTag : missing value
    property endTag : missing value
    property hostMacOSVersionToDelim : missing value
    property hostMacOSVersionMajor : missing value
    property selectedOSdmgVersionToDelim : missing value
    property selectedOSdmgVersionMajor : missing value
    property jssAndCasperImagingVersionCheckTextfield : missing value
    property netBootImageIndexMinValue : missing value
    property netBootImageIndexMaxValue : missing value
    property netBootImageIndex : missing value
    property ardUsername : missing value
    property ardPassword : missing value
    property vncPassword : missing value
    property userName : missing value
    property longUserName : missing value
    property netBootServeOptionSelected : missing value
    property netBootServeOver : missing value
    property customDesktopImagePath : missing value
    property customDesktopImageLabel : missing value
    property freeSpacelibraryVolume : missing value
    property freeSpaceUsersVolume : missing value
    property libraryPath : missing value
    property userPath: missing value
    property libraryVolume : missing value
    property usersVolume : missing value
    property pathToResources : missing value
    property osSize : missing value
    property requiredSpaceCheckPassed: missing value
    property buildProcessTextField : missing value
    property tempUUID : missing value
    property netBootDmgMountPath : missing value
    property selectedAppPathToCopy : missing value
    property downloadedJSSCACert : missing value
    property variableVariable : missing value
    property buildDate : missing value
    property ardPasswordEncoded : missing value
    property ardUsernameEncoded : missing value
    property netBootCreatedPath : missing value
    property desktopImageExists : missing value
    property netBootImageExpandValue : missing value
    property selectedCasperImagingAppVersionToDelim : missing value
    property selectedCasperImagingAppVersionMajor : missing value
    property selectedCasperImagingAppVersionMinor : missing value
    property jssVersionToDelim : missing value
    property jssVersionMajor : missing value
    property jssVersionMinor : missing value
    property myLogFile : missing value
    property timeStamp : missing value
    property logMe : missing value
    property netBootSelectedLocation : missing value
    property logDate : missing value
    property buildProcessLogTextField : missing value
    property versionOfAutoCasperNBI : missing value
    property netBootDirectory : missing value
    property adminUserName : missing value
    property adminUsersPassword : missing value
    property adminUserWindow : missing value
    property netBootDmgTotalSize : missing value
    property netBootDmgFreeSpace : missing value
    property netBootDmgUsedSpace : missing value
    property netBootReducedDmgMountPath : missing value
    property netBootExpandedTotalSize : missing value
    
    --- Booleans
    property selectedOSDMGTextFieldEnabled : false
    property checkGreenOSDMG : false
    property exclamationRedOSDMG : false
    property cogOSDMG : false
    property cogOSDMGAnimate : true
    property checkGreenSelectedApp : false
    property exclamationRedSelectedApp : false
    property warningSelectedApp : false
    property cogSelectedApp : false
    property cogSelectedAppAnimate : true
    property checkGreenJSSURL : false
    property exclamationRedJSSURL : false
    property warningJSSURL : false
    property cogJSSURL : false
    property cogJSSURLAnimate: true
    property JSSOptionsDisabled : true
    property minorJSSAndCasperImagingVersionDiff : false
    property buildButtonDisabled : true
    property optionsButtonDisabled : true
    property disableOptionsAndBuild : true
    property netBootImageIndexLoadBalanced : false
    property optionWindowEnabled : true
    property netBootImageExpandEnabled : false
    property netBootImageReduceEnabled : false
    property ardEnabled : false
    property vncEnabled : false
    property ardDetailsCheck : true
    property vncPassCheck : true
    property closeOptionsWindowButton : true
    property netBootDescriptionEnabled : false
    property mainWindowCog : false
    property mainWindowCogAnimate : true
    property buildProccessProgressBarIndeterminate : false
    property buildProccessProgressBarAniminate : false
    property netBootCreationSuccessful : false
    property netBootServeOverNFS : true
    property customDesktopImageEnabled : false
    property installRCNetBootSelected : false
    
    -- Others
    property requiredSpace : 20
    property buildProccessProgressBar : 0
    property selectedOSdmgTotalSize : 0
    property selectedOSdmgFreeSpace : 0
    property selectedOSdmgUsedSpace : 0
    property netBootDmgRequiredSize : 0
    property netBootDmgResize : 0
    
--- HANDLERS ---

    -- To be run at launch
    on startYourEngines_(sender)
        
        -- Log that we've launched
        set logMe to "\\n"
        
        -- Log To file
        logToFile_(me)
        
        -- Get AutoCasperNBI version
        set versionOfAutoCasperNBI to get version of application "AutoCasperNBI"
        
        -- Log AutoCasperNBI version
        set logMe to  "AutoCasperNBI " & versionOfAutoCasperNBI
        
        -- Log To file
        logToFile_(me)

        -- Get OS of host mac to verify that we can create an .nbi from supplied OS.dmg
        set my hostMacOSVersion to (do shell script "sw_vers -productVersion")
    
        -- Get host macs Build version for logging/debugging
        set my hostMacOSBuildVersion to (do shell script "sw_vers -buildVersion")
        
        -- Log OS version & build of host mac
        set logMe to  "Running on OS " & hostMacOSVersion & " (" & hostMacOSBuildVersion & ")"
        
        -- Log To file
        logToFile_(me)

        -- Get username of user running AutoCasperNBI
        set userName to short user name of (system info)
        set logMe to "Launched by " & userName
        
        -- Log To file
        logToFile_(me)
        
        -- Get a UUID for folder path
        set tempUUID to do shell script "uuidgen"
        set logMe to "UUID " & tempUUID
        
        -- Log To file
        logToFile_(me)
        
        -- Get path to resources folder
        set pathToResources to (current application's class "NSBundle"'s mainBundle()'s resourcePath()) as string
        
    end startYourEngines_

    -- Register plist default settings
    on regDefaults_(sender)
        tell current application's NSUserDefaults to set defaults to standardUserDefaults()
        tell defaults to registerDefaults_({ardEnabled:ardEnabled, ¬
        ardUsername:ardUsername, ¬
        ardPassword:ardPassword, ¬
        customDesktopImageEnabled:customDesktopImageEnabled, ¬
        customDesktopImagePath:customDesktopImagePath, ¬
        jssURL:jssURL, ¬
        netBootDescriptionEnabled:netBootDescriptionEnabled, ¬
        netBootImageIndexLoadBalanced:netBootImageIndexLoadBalanced, ¬
        netBootImageExpandEnabled:netBootImageExpandEnabled, ¬
        netBootImageExpandValue:netBootImageExpandValue, ¬
        netBootImageReduceEnabled:netBootImageReduceEnabled, ¬
        netBootServeOverNFS:netBootServeOverNFS, ¬
        vncEnabled:vncEnabled, ¬
        vncPassword:vncPassword, ¬
        installRCNetBootSelected:installRCNetBootSelected})
    end regDefaults_
    
    -- Get values from plist
	on retrieveDefaults_(sender)
        tell defaults to set my ardEnabled to objectForKey_("ardEnabled") as boolean
        tell defaults to set my ardUsername to objectForKey_("ardUsername")
        tell defaults to set my ardPassword to objectForKey_("ardPassword")
        tell defaults to set my customDesktopImageEnabled to objectForKey_("customDesktopImageEnabled") as boolean
        tell defaults to set my customDesktopImagePath to objectForKey_("customDesktopImagePath")
        tell defaults to set my jssURL to objectForKey_("jssURL")
        tell defaults to set my netBootDescriptionEnabled to objectForKey_("netBootDescriptionEnabled") as boolean
        tell defaults to set my netBootImageIndexLoadBalanced to objectForKey_("netBootImageIndexLoadBalanced")
        tell defaults to set my netBootImageExpandEnabled to objectForKey_("netBootImageExpandEnabled")
        tell defaults to set my netBootImageExpandValue to objectForKey_("netBootImageExpandValue")
        tell defaults to set my netBootImageReduceEnabled to objectForKey_("netBootImageReduceEnabled")
        tell defaults to set my netBootServeOverNFS to objectForKey_("netBootServeOverNFS")
        tell defaults to set my vncEnabled to objectForKey_("vncEnabled") as boolean
        tell defaults to set my vncPassword to objectForKey_("vncPassword")
        tell defaults to set my installRCNetBootSelected to objectForKey_("installRCNetBootSelected") as boolean
    end retrieveDefaults_
    
    ----- BUTTON HANDLERS ----
    -- Open Options window
    on showOptionsWindow_(sender)
        
        -- Disable main windows buttons
        set my optionWindowEnabled to false
        
         -- reload options from plist
        retrieveDefaults_(me)
        
        -- Set NetBoot Description
        enablenetBootDescription_(me)
        
        -- activate options window
        activate
        optionsWindow's makeKeyAndOrderFront_(null)
        
    end showOptionsWindow_
    
    -- Cancel & tidy up
    on cancelBuildProcess_(sender)
        
        --Log Action
        set logMe to "Cancelling..."
        
        -- Log To file
        logToFile_(me)
        
        -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
        tidyUpTimeKids_(me)
        
    end cancelBuildProcess_
    
    ----- TIDY ICONS ----
    -- Reset OSDMG Icons, cog & further options
    on doResetOSDMGIcons_(sender)
        set my checkGreenOSDMG to false
        set my exclamationRedOSDMG to false
        set my cogOSDMG to false
        set my disableOptionsAndBuild to true
    end doResetOSDMGIcons_

    -- Reset SelectedApp Icons, cog & further options
    on doResetSelectedAppIcons_(sender)
        set my checkGreenSelectedApp to false
        set my exclamationRedSelectedApp to false
        set my warningSelectedApp to false
        set my cogSelectedApp to false
    end doResetSelectedAppIcons_
    
    -- Reset JSSURL Icons
    on doResetJSSURLIcons_(sender)
        set my checkGreenJSSURL to false
        set my exclamationRedJSSURL to false
        set my warningJSSURL to false
        set my cogJSSURL to false
    end doResetJSSURLIcons_

    -- Reset Main Window Text Field & Cog
    on resetMainWindowLabel_(sender)
        set my buildProcessTextField to missing value
        set my mainWindowCog to false
    end resetMainWindowLabel_

----- LAUNCHING -----

    -- Insert code here to initialize your application before any files are opened
    on applicationWillFinishLaunching_(aNotification)
        
        -- Get OS of host mac & user running the app
        startYourEngines_(me)
        
        -- populate plist file with defaults (will not overwrite non-default settings))
        regDefaults_(me)
        
        -- retrieve plist values
        retrieveDefaults_(me)
        
        -- check for passwords, enable check boxes if found in plist
        checkPasswords_(me)
        
        -- Check that image selected for desktop exists
        checkDesktopImage_(me)
        
    end applicationWillFinishLaunching_
    
    -- On launch as for administrative credentials & validate
    on adminCheck_(sender)
        
        -- Checking variable
        set isAdminUser to false
        
        -- Set to text
        set adminUserName to adminUserName as text
        
        -- Check to see if supplied User is a member of the Administrator group
        if ("80" is not in (do shell script "id " & adminUserName & " -G")) then
            
            --Log Action
            set logMe to "User " & adminUserName & " is not a part of the Administrators group"
            
            -- Log To file
            logToFile_(me)
            
        else
            
            --Log Action
            set logMe to "User " & adminUserName & " is part of the Administrators group"
            
            -- Log To file
            logToFile_(me)
            
            -- Checking variable
            set isAdminUser to true
            
        end if
        
        -- If the User is an Administrator
        if isAdminUser is true then
            
            -- Set to text
            set adminUsersPassword to adminUsersPassword as text
            
            try
                
                -- Perform a check of privileges
                do shell script "ls " user name adminUserName password adminUsersPassword with administrator privileges
                
                -- Open the Main Window
                openMainWindow_(me)
                
            on error
                
                -- Display error to user
                display dialog "Authentication failed. Please renter the Administrator credentials."with icon 2 buttons {"OK"}
                
            end try
            
        end if
        
    end adminCheck_
    
    -- Open the Main Window
    on openMainWindow_(sender)
        
        -- close build process window
        adminUserWindow's orderOut_(null)
        
        -- activate main window
        activate
        mainWindow's makeKeyAndOrderFront_(null)
        
    end openMainWindow_


----- LOGGING -----
    -- Log to file
    on logToFile_(sender)
        
        -- Comment out before release.. this will send log messages to Xcode's log
        --log logMe
        
        -- Date for log file
        set logDate to do shell script "date +%F"
        
        -- Get time & date of command execution
        set timeStamp to do shell script "date"
        
        try
            
            -- Write message to log file
            do shell script "echo " & timeStamp & space & quoted form of logMe & ">> ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
            
        on error
            
            -- Create directory if doesn't exist
            do shell script "mkdir ~/Library/Logs/AutoCasperNBI/"
            
            -- Write message to log file
            do shell script "echo " & timeStamp & space & quoted form of logMe & ">> ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
            
        end try
        
    end logToFile_
    
----- MAIN WINDOW----

    -- Display a window for the user to select an DMG.
    on selectedOSDMG_(sender)
        
        try
            -- Prompt user to chose OS.dmg
            choose file of type {"public.disk-image"} with prompt "Select an OS.dmg:" default location (path to desktop folder)
            
            -- Set selectedOSdmgPath to path of OS.dmg given
            set selectedOSdmgPath to POSIX path of result
            
            -- Log path of selected DMG
            set logMe to "Path: " & selectedOSdmgPath
            
            -- Log To file
            logToFile_(me)
            
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
            
            -- Do handler:
            doOSDMG_(me)
            
        end try
        
    end selectedOSDMG_
    
    -- Try & get OS version from dropped dmg, error if something is not quite right
    on doOSDMG_(sender)
        
        -- Reset build Process ProgressBar
        set my buildProccessProgressBar to 0
        
        -- Log that we're tryin to mount selected DMG
        set logMe to "Trying to mount: " & selectedOSdmgPath
        
        -- Log To file
        logToFile_(me)
        
        -- Update label to show we're doing stuff
        set my selectedOSDMGTextField to "Examining..."
        
        -- Display the cog to reinforce we're busy
        set my cogOSDMG to true
        
        -- Delay needed to update label
        delay 0.1
        
        --  Try & mount dropped file
        set selectedOSdmgMountPath to do shell script "hdiutil attach " & quoted form of selectedOSdmgPath & " -nobrowse -owners on | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form
        
        -- If selectedOSdmgMountPath, then we've failed to mount as it's not a dmg.
        if selectedOSdmgMountPath is equal to "" then
            
            -- Update text field with error
            set my selectedOSDMGTextField to "Cannot mount dmg"
            
            -- Reset OSDMG Icons
            doResetOSDMGIcons_(me)
            
            -- Display exclamation icon
            set my exclamationRedOSDMG to true
            
        else
            
            -- If a dmg, mount & try & read /System/Library/CoreServices/SystemVersion.plist
            try
                
                -- Try & get OS version
                set selectedOSdmgVersion to do shell script "defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductVersion"
                
                -- Try & get build version
                set selectedOSBuilddmgVersion to do shell script "defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductBuildVersion"
                
                -- If we have both OS & build versions, display them
                set my selectedOSDMGTextField to "Mac OS " & selectedOSdmgVersion & " (" & selectedOSBuilddmgVersion & ")"
                
                -- Reset OSDMG Icons
                doResetOSDMGIcons_(me)
                
                -- Display green check icon
                set my checkGreenOSDMG to true
                
                -- Set netBoot Name
                set my netBootNameTextField to selectedOSdmgVersion & " AutoCasperNBI"
                
                -- Set Image Index
                netBootImageIndex_(me)
                
            -- If a dmg but cannot read /System/Library/CoreServices/SystemVersion.plist
            on error
            
                -- Error advising we cannot get the OS version from dmg
                set my selectedOSDMGTextField to "Cannot read OS Version"
                
                -- Reset OSDMG Icons & hide cog
                doResetOSDMGIcons_(me)
                
                -- Display exclamation icon
                set my exclamationRedOSDMG to true
                
            end try
            
        end if
        
        -- Log mounth path
        set logMe to "Mount Path: " & selectedOSdmgMountPath
        
        -- Check OS Versions
        checkOSVersions_(me)
        
    end doOSDMG_

    -- Check selected OSDMG version against Hosts, to make sure we can create a NetBoot on this mac.
    on checkOSVersions_(sender)
        
        -- Variables to mess with, keeping the orignal with their decimals
        set my selectedOSdmgVersionToDelim to selectedOSdmgVersion
        set my hostMacOSVersionToDelim to hostMacOSVersion
        
        -- Store delimiters for resetting later
        set applescriptsDelims to AppleScript's text item delimiters
        
        -- Set delimiters to decimal
        set AppleScript's text item delimiters to "."
        
        -- Set variables to the split versions of Casper Imaging & JSS versions
        set selectedOSdmgVersionToDelim to selectedOSdmgVersionToDelim's text items
        set hostMacOSVersionToDelim to hostMacOSVersionToDelim's text items
        
        -- Set to major version of Casper Imaging
        set selectedOSdmgVersionMajor to text item 2 of selectedOSdmgVersionToDelim as integer
        
        -- Set to major version of JSS
        set hostMacOSVersionMajor to text item 2 of hostMacOSVersionToDelim as integer
        
        -- Reset delimiters
        set AppleScript's text item delimiters to applescriptsDelims
        
        -- If major versions do not match, bad things can happen. But we'll not stop incase this nbi is being created before uprading JSS
        if hostMacOSVersionMajor is less than selectedOSdmgVersionMajor then
            
            -- Log error if selected OS.dmg's OS is greater than host
            set logMe to "Error: Cannot create an .nbi as OS.dmg's OS version (" & selectedOSdmgVersion & ") is newer than this Macs (" & hostMacOSVersion & ")."
            
            -- Log To file
            logToFile_(me)
            
            -- Display error to user
            display dialog "Error: Cannot create an NetBoot from supplied OS.dmg as it's OS version (" & selectedOSdmgVersion & ") is newer than this Macs OS (" & hostMacOSVersion & ")." with icon 0 buttons {"OK"}
            
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
            
            -- Display exclamation icon
            set my exclamationRedOSDMG to true
            
        else if selectedOSdmgVersionMajor is less than hostMacOSVersionMajor then
            
            display dialog "Error: Cannot create an NetBoot from supplied OS.dmg as it's OS version (" & selectedOSdmgVersion & ") is older than this Macs OS (" & hostMacOSVersion & ")." with icon 0 buttons {"OK"}
            
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
            
            -- Display exclamation icon
            set my exclamationRedOSDMG to true
        else
            
            -- Log that we're ok to proceed
            set logMe to "We can create a NetBoot from " & selectedOSdmgPath
            
            -- Log To file
            logToFile_(me)
            
            -- See if pre-reqs have been met
            checkIfReadyToProceed_(me)
            
        end if
        
    end checkOSVersions_

    -- Display a window for the user to select Casper Imaging.app.
    on selectedApp_(sender)
        
        -- Create a window prompting user to select an app
        try
            choose file of type {"com.apple.application-bundle"} with prompt "Select Casper Imaging.app:" default location (path to applications folder)
            
            -- Get path of the selected app.
            set my selectedAppPath to POSIX path of result
            
            -- Log path of the selected app
            set logMe to "Selected App Path: " & selectedAppPath
            
            -- Log To file
            logToFile_(me)
            
            -- Reset Selected App Icons & cog
            doResetSelectedAppIcons_(me)
            
            -- Run handler
            selectedAppCheck_(me)
            
        end try
        
    end selectedApp_

    -- Make sure OS & Imaging.app is specified before proceeding, once checked enable JSS options, as well as Build & Option buttons
    on checkIfReadyToProceed_(sender)
        
        -- Check to see if we have ticks or minor warning before we proceed
        if (checkGreenSelectedApp or minorJSSAndCasperImagingVersionDiff) and checkGreenOSDMG is equal to true
        
            -- Enable Options & Build
            set my disableOptionsAndBuild to false
            
            --Log Action
            set logMe to "Pre-Reqs met, Options & Build enabled."
            
            -- Log To file
            logToFile_(me)
            
            -- Get the NetBoot Serve option
            netBootServeOption_(me)
            
        end if

    end checkIfReadyToProceed_

    -- Check selected app is Casper Imaging & return version
    on selectedAppCheck_(sender)

        -- Set label to Casper Imaging version
        set my selectedAppTextField to "Examining..."

        -- Display the cog to reinforce we're busy
        set my cogSelectedApp to true
        
        -- Delay needed to update label
        delay 0.1
        
        -- Get Bundle Name of selected app
        set selectedAppBundleName to do shell script "defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleName"
        
        --Log Action
        set logMe to "Bundle Name: " & selectedAppBundleName
        
        -- Log To file
        logToFile_(me)

        -- If Bundle Name is Casper Imaging, proceed to get version
        if selectedAppBundleName is equal to "Casper Imaging" then
            
            try
               
                -- If Casper Imaging, return version
                set selectedCasperImagingAppVersion to do shell script "defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleGetInfoString"
                
                --Log Action
                set logMe to "Casper Imaging Version: " & selectedCasperImagingAppVersion
                
                -- Log To file
                logToFile_(me)
                
                -- Set label to Casper Imaging version
                set my selectedAppTextField to "Casper Imaging " & selectedCasperImagingAppVersion
                
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                
                -- Set Image Index (reset index to make sure we don't create images with the same)
                netBootImageIndex_(me)
                
                -- Display green tick
                set my checkGreenSelectedApp to true
                
                -- if jssURL has a value, then get it's version
                if jssURL is not equal missing value
                
                    -- Compare JSS & Casper Imaging Versions
                    checkJSSURL_(me)
                
                end if
            
            -- Error if cannot get the version number
            on error
            
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
            
                -- Display Error if cannot get version number
                set my selectedAppTextField to "Cannot Get Version"
                set my exclamationRedSelectedApp to true
                
                -- Disable options and build
                set my disableOptionsAndBuild to true
            
            end try
        
        -- If selected app is not Casper Imaging.
        else
        
            -- Reset Selected App Icons
            doResetSelectedAppIcons_(me)
        
            -- Display message that we have selected Casper Imaging
            set my selectedAppTextField to "Select Casper Imaging.app"
            set my exclamationRedSelectedApp to true
            
            -- Disable options and build
            set my disableOptionsAndBuild to true
        
        end if

        -- See if pre-reqs have been met
        checkIfReadyToProceed_(me)

    end selectedAppCheck_

    -- On enter, check the JSS URL details & try & get version of the JSS
    on checkJSSURL_(sender)
        
        -- Make sure jssURL has a value before we proceed
        if jssURL is not equal to missing value
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Update lable to show we're doing something
            set my enteredJSSURLTextField to "Examining..."
            
            -- Display the cog to reinforce we're busy
            set my cogJSSURL to true
            
            -- Delay needed to update label
            delay 0.1
            
            try
                
                --Log Action
                set logMe to "Trying to get JSS version"
                
                -- Log To file
                logToFile_(me)
                
                -- Try & get URL using insecure method, this way it will work with or without a valid SSL cert
                set jssURLHtml to do shell script "curl -k " & jssURL & "/jss.html"

                --Log Action
                set logMe to "Received JSS version"
                
                -- Log To file
                logToFile_(me)
                
                -- Run Handler
                getJSSVersion_(me)
                
            -- Error if we cannot get the JSS version
            on error
            
                    -- Reset JSS URL icons
                    doResetJSSURLIcons_(me)
                    
                    -- Error if cannot get JSS Version
                    set logMe to "Cannot get JSS Version"
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Set JSS exclaimation icon to show
                    set my exclamationRedJSSURL to true
                    
                    -- Update text field with error
                    set my enteredJSSURLTextField to "Cannot get JSS version"
                
            end try
            
        else
        
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Blank JSS Text Field
            set my enteredJSSURLTextField to ""
        
            -- Delete jssURL from plist
            tell defaults to removeObjectForKey_("jssURL")
            
        end if

    end checkJSSURL_

    -- Get JSS Version from given URL
    on getJSSVersion_(sender)
        
        --Log Action
        set logMe to "Checking JSS Version from " & jssURL
        
        -- Log To file
        logToFile_(me)
        
        try
         
            -- Store delimiters for resetting later
            set applescriptsDelims to AppleScript's text item delimiters
            
            -- We only need the content between the title tags
            set startTag to "<meta name=\"version\" content=\""
            set endTag to "\">"
            
            -- Split at the <title> tag
            set AppleScript's text item delimiters to startTag
            set jssVersionCut to text item 2 of jssURLHtml
            
            -- Split again at </title>
            set AppleScript's text item delimiters to endTag
            set jssVersion to text item 1 of jssVersionCut
            
            -- Reset delimiters
            set AppleScript's text item delimiters to applescriptsDelims
            
            -- Return JSS Version
            set logMe to "JSS is: " & jssVersion
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Update lable with JSS Version
            set my enteredJSSURLTextField to "JSS " & jssVersion
            
            -- Update plist
            tell defaults to setObject_forKey_(jssURL, "jssURL")

            -- Compare JSS & Casper Imaging Versions
            checkJSSAndImagingVersions_(me)

            -- Delay needed to update label
            delay 0.1
            
        -- Error if there is an issue
        on error
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Error if cannot get JSS Version
            set logMe to "Cannot get JSS Version"
            
            -- Log To file
            logToFile_(me)
            
            -- Set JSS exclaimation icon to show
            set my exclamationRedJSSURL to true
            
            -- Update text field with error
            set my enteredJSSURLTextField to "Cannot get JSS version"
            
            -- Reset delimiters
            set AppleScript'stext item delimiters to applescriptsDelims
            
        end try

    end getJSSVersion_

    -- Check JSS version against supplied Casper Imaging.app
    on checkJSSAndImagingVersions_(sender)
        
        -- Variables to mess with, keeping the orignal with their decimals
        set selectedCasperImagingAppVersionToDelim to selectedCasperImagingAppVersion
        set jssVersionToDelim to jssVersion
        
        -- Store delimiters for resetting later
        set applescriptsDelims to AppleScript's text item delimiters
        
        -- Set delimiters to decimal
        set AppleScript's text item delimiters to "."
        
        -- Set variables to the split versions of Casper Imaging & JSS versions
        set selectedCasperImagingAppVersionToDelim to selectedCasperImagingAppVersionToDelim's text items
        set jssVersionToDelim to jssVersionToDelim's text items
        
        -- Reset delimiters
        set AppleScript's text item delimiters to applescriptsDelims
        
        -- Set to major version of Casper Imaging
        set selectedCasperImagingAppVersionMajor to item 1 of selectedCasperImagingAppVersion
        
        -- Set to major version of JSS
        set jssVersionMajor to item 1 of my jssVersion
        
        -- Set to minor version of Casper Imaging
        set selectedCasperImagingAppVersionMinor to items 2 thru end of selectedCasperImagingAppVersion
        
        -- Set to minor version of JSS
        set jssVersionMinor to items 2 thru end of jssVersion
        
        -- If major versions do not match, bad things can happen. But we'll not stop incase this nbi is being created before uprading JSS
        if selectedCasperImagingAppVersionMajor is not equal to jssVersionMajor then
            
            set logMe to "Major Version Difference"
            
            -- Log To file
            logToFile_(me)
            
            -- Reset Selected App Icons
            doResetSelectedAppIcons_(me)
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Show exclamation if major version difference
            set my exclamationRedJSSURL to true
            set my exclamationRedSelectedApp to true
            
            -- Update lable with JSS & Casper Imaging version comparison result
            set my jssAndCasperImagingVersionCheckTextfield to "Major version difference between JSS & Casper Imaging"
            
            -- If major versions match
        else if selectedCasperImagingAppVersionMajor is equal to jssVersionMajor then
            
            -- Check if minor versions match, alert if not
            if selectedCasperImagingAppVersionMinor is not equal to jssVersionMinor then
                
                -- Log Minor Version Diff
                set logMe to "Minor Version Difference"
                
                -- Log To file
                logToFile_(me)
                
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                
                -- Reset JSS URL icons
                doResetJSSURLIcons_(me)
                
                set my disableOptionsAndBuild to FALSE
                
                -- Show warning labels
                set my warningSelectedApp to true
                set my warningJSSURL to true
                
                -- Update lable with JSS & Casper Imaging version comparison result
                set my jssAndCasperImagingVersionCheckTextfield to "Minor version difference between JSS & Casper Imaging"
                
                -- See if pre-reqs have been met
                checkIfReadyToProceed_(me)
                
            -- If Casper Imaging & JSS are the same version
            else

                -- Show check if version received
                set my checkGreenJSSURL to true
                
                -- Update lable with JSS & Casper Imaging version comparison result
                set my jssAndCasperImagingVersionCheckTextfield to "JSS & Casper Imaging versions match"
                
                -- See if pre-reqs have been met
                checkIfReadyToProceed_(me)
                
            end if
            
        end if
        
    end checkJSSAndImagingVersions_

    -- Make sure a name is specified for the NetBoot Image, error if not.
    on netBootName_(sender)
        
        -- If textfield is empty
        if netBootNameTextField is missing value then
            
            -- Set netBoot Name
            set my netBootNameTextField to selectedOSdmgVersion & " AutoCasperNBI"
        
            -- Display error to user
            display dialog "Please select a Name for the NetBoot Image" with icon 0 buttons {"OK"}
            
            --Log Action
            set logMe to "Error: Name required for NetBoot Image"
            
            -- Log To file
            logToFile_(me)
            
        else
        
            --Log Action
            set logMe to "Name: " & netBootNameTextField
            
            -- Log To file
            logToFile_(me)
        
        end if
        
    end netBootName_

    -- Bound to "Will be served from more than one server"
    on netBootImageIndex_(sender)
    
        -- Set netBootImageIndexLoadBalanced to boolean of value
        set netBootImageIndexLoadBalanced to netBootImageIndexLoadBalanced as boolean
        
        -- Set options depending on checkbox
        if netBootImageIndexLoadBalanced is true then
            
            --Log Action
            set logMe to "NetBoot is to be hosted on multiple servers."
            
            -- Log To file
            logToFile_(me)
            
            -- Set min & max values for Index
            set netBootImageIndexMinValue to 4096 as integer
            set netBootImageIndexMaxValue to 65535 as integer
            
        else
        
            --Log Action
            set logMe to "NetBoot is to be hosted on a single server."
            
            -- Log To file
            logToFile_(me)
            
            -- Set min & max values for Index
            set netBootImageIndexMinValue to 1 as integer
            set netBootImageIndexMaxValue to 4095 as integer
            
        end if
    
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageIndexLoadBalanced, "netBootImageIndexLoadBalanced")
        
        -- Update lable to show index value based on hosting option
        set my netBootImageIndexLabel to "(" & netBootImageIndexMinValue & " - " & netBootImageIndexMaxValue & ")"
        
        -- Update text field to show the random number
        set my netBootImageIndexTextField to current application's (random number from (netBootImageIndexMinValue) to (netBootImageIndexMaxValue))

    end netBootImageIndex_

    -- Error if incorrect value specified
    on netBootImageIndexCheck_(sender)

        -- If we have a value
        if netBootImageIndexTextField is not equal to missing value
        
            -- Set to integer of value
            set netBootImageIndexTextField to netBootImageIndexTextField as integer

        end if

        -- If integer value is outside of allowed range
        if (netBootImageIndexTextField less than netBootImageIndexMinValue) or (netBootImageIndexTextField greater than netBootImageIndexMaxValue) or (netBootImageIndexTextField is equal to missing value) then
        
            -- Display error to user
            display dialog "Please select a value between " & netBootImageIndexMinValue & " & " & netBootImageIndexMaxValue with icon 0 buttons {"OK"}
        
            -- Reset using below function.
            netBootImageIndex_(me)
        
        end if

    end netBootImageIndexCheck_

    -- Bound to NetBoot Serve over HTTP radio button
    on netbootServeOverHTTPSelected_(sender)
        
        -- Set NetBoot Serve Over NFS to false
        set netBootServeOverNFS to false
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootServeOverNFS, "netBootServeOverNFS")
        
        --Log Action
        set logMe to "NetBoot is to served over HTTP"
        
        -- Log To file
        logToFile_(me)
        
    end netbootServeOverHTTPSelected_

    -- Bound to NetBoot Serve over NFS radio button
    on netbootServeOverNFSSelected_(sender)
        
        -- Set NetBoot Serve Over NFS to true
        set netBootServeOverNFS to true
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootServeOverNFS, "netBootServeOverNFS")
        
        --Log Action
        set logMe to "NetBoot is to served over NFS"
        
        -- Log To file
        logToFile_(me)
        
    end netbootServeOverNFSSelected_

    -- Get NetBoot Serve Option, if missing value set to NFS
    on netBootServeOption_(sender)
        
        -- Set to variable to boolean
        set netBootServeOverNFS to netBootServeOverNFS as boolean
            
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootServeOverNFS, "netBootServeOverNFS")
            
    end netBootServeOption_

----- OPTIONS WINDOW  -----

    -- Bound to "Resize Image by"
    on netBootImageExpand_(sender)
        
        -- Set netBootImageExpandEnabled to boolean of value
        set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
        
        -- Set options depending on checkbox
        if netBootImageExpandEnabled is true then
            
            --Log Action
            set logMe to "NetBoot resize enabled"
            
            -- Log To file
            logToFile_(me)
            
        else
        
            --Log Action
            set logMe to "NetBoot resize option unchecked"
            
            -- Log To file
            logToFile_(me)
            
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageExpandEnabled, "netBootImageExpandEnabled")
        
    end netBootImageExpand_

    -- Bound to NetBoot Image Resize value
    on netBootImageExpandEnteredValue_(sender)
        
        -- If we have a value
        if netBootImageExpandValue is equal to missing value
        
            -- Display error to user
            display dialog "Please select a value to resize the NetBoot Image or deselect Resize by" with icon 0 buttons {"OK"}
            
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageExpandValue, "netBootImageExpandValue")
        
    end netBootImageExpandEnteredValue_

    -- Bound to "Reduce Image Size"
    on netBootImageReduce_(sender)
        
        -- Set netBootImageReduceEnabled to boolean of value
        set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
        
        -- Set options depending on checkbox
        if netBootImageReduceEnabled is true then
            
           --Log Action
            set logMe to "NetBoot Reduce by enabled"
            
            -- Log To file
            logToFile_(me)
        
        else
            --Log Action
            set logMe to "NetBoot Reduce option unchecked"
            
            -- Log To file
            logToFile_(me)
        
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageReduceEnabled, "netBootImageReduceEnabled")
        
    end netBootImageReduce_

    -- Bound to "Enable Description"
    on enablenetBootDescription_(sender)
        
            --If not enabled, delete from plist
            if netBootDescriptionEnabled is false then
                
                -- Update plist with selection
                tell defaults to setObject_forKey_(netBootDescriptionEnabled, "netBootDescriptionEnabled")
                
                --Log Action
                set logMe to "NetBoot description not enabled"
                
                -- Log To file
                logToFile_(me)
                
            else
            
                --Log Action
                set logMe to "NetBoot description enabled"
                
                -- Log To file
                logToFile_(me)
                
                -- Get Build date (should return localised).
                set buildDate to date string of (current date)
            
                -- Get the full name of the user running AutoCasperNBI
                set longUserName to long user name of (system info)

                -- If we don't have a JSS URL set, then omit
                if jssURL is equal to missing value
                
                    -- Set NetBoot Description
                    set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & ". Created by, " & longUserName & " on: " & buildDate & "."
                    
                    --Log Action
                    set logMe to "NetBoot description set to " & quoted form of netBootDescription
                    
                    -- Log To file
                    logToFile_(me)
                    
                else
                
                    -- Set NetBoot Description
                    set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & " pointing to JSS " & jssURL & ". Created by, " & longUserName & " on: " & buildDate & "."
                    
                    --Log Action
                    set logMe to "NetBoot description set to " & quoted form of netBootDescription
                    
                    -- Log To file
                    logToFile_(me)
                    
                end if
            
                -- Update plist with selection
                tell defaults to setObject_forKey_(netBootDescriptionEnabled, "netBootDescriptionEnabled")
                
            end if
                
    end enablenetBootDescriptionTextField_

    -- Verify that the description field has a value & reset & prompt if not
    on netBootDescriptionCheck_(sender)
        
        -- If the description field is emptied.
        if netBootDescription is equal to missing value then
            
            -- Display error to user
            display dialog "Please select enter a Description or uncheck Set NetBoot Description" with icon 0 buttons {"OK"}
            
            -- Reset description to auto generated
            enablenetBootDescription_(me)
            
        end if

    end netBootDescriptionCheck_

    -- Bound to "Enable ARD"
    on ardOption_(sender)
        
        -- If false
        if ardEnabled is false then
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(ardEnabled, "ardEnabled")
            
            -- ARD details check status
            set ardDetailsCheck to true
 
        else
        
            -- Update plist with selection
            tell defaults to setObject_forKey_(ardEnabled, "ardEnabled")
            
            -- ARD details check status
            set ardDetailsCheck to false
            
        end if
        
    end ardOption_

    -- Check the value entered in the ARD Username textfield
    on checkardUsername_(sender)
        
        -- If textfield is empty
        if my ardUsername is missing value then
            
            -- Delete ardUsername from plist
            tell defaults to removeObjectForKey_("ardUsername")
            
            -- Set check to false
            set my ardDetailsCheck to false
            
        else

            -- Update plist with selection
            tell defaults to setObject_forKey_(ardUsername, "ardUsername")
            
            -- Set check to true
            set my ardDetailsCheck to true
        
        end if

    end checkardUsername_

    -- Check the value entered in the ARD Password textfield
    on checkardPassword_(sender)
        
        -- If textfield is empty
        if my ardPassword is missing value then
            
            -- Delete ardPassword from plist
            tell defaults to removeObjectForKey_("ardPassword")

        else
        
            -- Update plist with selection
            tell defaults to setObject_forKey_(ardPassword, "ardPassword")
            
        end if
        
    end checkardPassword_

    -- Bound to "Enable VNC"
    on vncOption_(sender)

        -- If False
        if vncEnabled is false then
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(vncEnabled, "vncEnabled")
            
            -- VNC password check status
            set vncPassCheck to true
            
        else
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(vncEnabled, "vncEnabled")
            
            -- VNC password check status
            set vncPassCheck to false
            
        end if
        
    end vncOption_

    -- Check the value entered in the vnc Password textfield
    on checkvncPassword_(sender)
        
        -- If textfield is empty
        if my vncPassword is missing value then
            
            -- Delete vncPassword from plist
            tell defaults to removeObjectForKey_("vncPassword")
            
        else
        
            -- Update plist with selection
            tell defaults to setObject_forKey_(vncPassword, "vncPassword")
            
        end if
        
        -- If no VNC password
        if vncPassword is equal to missing value
        
            -- Display error to user
            display dialog "Please enter a password VNC, or deselect the VNC option" with icon 0 buttons {"OK"}
            
            -- VNC password check status
            set vncPassCheck to false
            
        end if

        -- Set variableVariable to vncPassword
        set variableVariable to vncPassword as text

        -- Check character to length of variableVariable
        if vncPassword is not equal to missing value and length of variableVariable is greater than 8

            -- Display error to user
            display dialog "Please enter a Password that is less than 8 characters" with icon 0 buttons {"OK"}

            -- VNC password check status
            set vncPassCheck to false

        else

            -- VNC password check status
            set vncPassCheck to true

        end if

    end checkvncPassword_

    -- Check NetBoot Resize value
    on checkNetBootExpandValue_(sender)
        
        -- reload options from plist
        retrieveDefaults_(me)
        
        -- Set to boolean of value
        set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
        
        -- If we're looking to Resize the NetBoot Image
        if netBootImageExpandEnabled is true
        
            -- If we do not have a value to Resize the Image by
            if netBootImageExpandValue is equal to missing value
        
                --Log Action
                set logMe to "Error: NetBoot expand enabled, but no value given for expansion"
                
                -- Log To file
                logToFile_(me)
        
                -- Bound to NetBoot Image Resize value
                netBootImageExpandEnteredValue_(me)
                
            else
            
                -- Bound to the Close button on options window
                checkScreenSharingDetails_(me)
        
            end if

        else

            -- Bound to the Close button on options window
            checkScreenSharingDetails_(me)

        end if

    end checkNetBootExpandValue_

    -- Bound to the Close button on options window
    on checkScreenSharingDetails_(sender)
        
            -- If ARD is enabled, check for Username & Password
            if ardEnabled is true
            
                -- If no ARD Username
                if ardUsername is equal to missing value
                
                    -- Display error to user
                    display dialog "Please enter a username for ARD or deselect the ARD option" with icon 0 buttons {"OK"}
                    
                    -- ARD details check status
                    set ardDetailsCheck to false
                
                end if

                -- If no ARD password
                if ardPassword is equal to missing value
                
                    -- Display error to user
                    display dialog "Please enter a password for the ARD user or deselect the ARD option" with icon 0 buttons {"OK"}

                    -- ARD details check status
                    set ardDetailsCheck to false

                end if

            else

                -- ARD details check status (true as not enabled)
                set ardDetailsCheck to true

            end if

            -- If VNC is enabled, check for password
            if vncEnabled is true

                -- If no VNC password
                if vncPassword is equal to missing value

                    -- Display error to user
                    display dialog "Please enter a password VNC, or deselect the VNC option" with icon 0 buttons {"OK"}

                    -- VNC password check status
                    set vncPassCheck to false


                end if

                -- Set variableVariable to vncPassword
                set variableVariable to vncPassword as text

                -- Check character to length of variableVariable
                if vncPassword is not equal to missing value and length of variableVariable is greater than 8

                    -- Display error to user
                    display dialog "Please enter a Password that is less than 8 characters" with icon 0 buttons {"OK"}

                    -- VNC password check status
                    set vncPassCheck to false

                else

                    -- VNC password check status
                    set vncPassCheck to true

                end if

            else

                -- VNC password check status (true as not enabled)
                set vncPassCheck to true

            end if

        -- If we have passed the ARD & VNC checks, either with details or as they are not enabled
        if ardDetailsCheck is true and vncPassCheck is true

                -- close options window
                optionsWindow's orderOut_(null)

                -- enable options
                set my optionWindowEnabled to true

        end if

    end checkScreenSharingDetails_

    -- To load at launch, verifying that we have correct values for ARD & VNC in plist
    on checkPasswords_(sender)
        
        -- If ARD enabled is set
        if ardEnabled is true then
            
            -- Get ARD username
            tell defaults to set my ardUsername to objectForKey_("ardUsername")
            
            -- If we can't get ARD Username,
            if ardUsername is missing value then
                
                -- Disable ARD options if pre-reqs are not met
                ardDisable_(me)
                
            else
                
                -- If No ARD Password
                if ardPassword is missing value then
                    
                    -- Disable ARD options if pre-reqs are not met
                    ardDisable_(me)
                    
                else
                    
                    -- Get ARD password from plist
                    tell defaults to set my ardPassword to objectForKey_("ardPassword")
                    
                end if
                
            end if
            
        end if
        
        -- If VNC enabled is set
        if vncEnabled is true then
            
            -- Get VNC password from plist
            tell defaults to set my vncPassword to objectForKey_("vncPassword")
            
            -- If No VNC Password
            if vncPassword is equal to missing value then
                
                -- Disable VNC options if pre-reqs are not met
                vncDisable_(me)
                
            end if
            
        end if
        
    end checkPasswords_

    -- Disable ARD options if pre-reqs are not met
    on ardDisable_(sender)
        
        -- Disable Enabled option
        set ardEnabled to false
        
        ardOption_(me)
        
    end ardDisable_

    -- Disable VNC options if pre-reqs are not met
    on vncDisable_(sender)
        
        -- Disable Enabled option
        set vncEnabled to false
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(vncEnabled, "vncEnabled")
        
    end vncDisable_

    -- Bound to "Use a custom desktop image" checkbox, sets plist
    on customDesktopImageSelected_(sender)
        
        -- Set to variable to boolean
        set customDesktopImageEnabled to customDesktopImageEnabled as boolean
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(customDesktopImageEnabled, "customDesktopImageEnabled")
        
        if customDesktopImageEnabled is false
        
            -- Delete jssURL from plist
            tell defaults to removeObjectForKey_("customDesktopImagePath")
        
            -- Set lable to blank
            set my customDesktopImageLabel to ""
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(customDesktopImagePath, "customDesktopImagePath")
            
        end if
        
    end customDesktopImageSelected_

    -- Display a window for the user to select an Desktop Image.
    on selectedDesktopImage_(sender)
        
        try
            
            -- Prompt user to chose an Image
            choose file of type {"public.jpeg"} with prompt "Select an Desktop Image:" default location (path to pictures folder)
            
            -- Set selectedDesktopImagePath to path of OS.dmg given
            set customDesktopImagePath to POSIX path of result
            
            --Update Label with path
            set my customDesktopImageLabel to "Image Selected: " & customDesktopImagePath
            
            -- Log path of selected Image
            set logMe to customDesktopImageLabel
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(customDesktopImagePath, "customDesktopImagePath")
        
        end
        
        -- If custom Desktop Image has a value, then check file exists & update error if it does.
        checkDesktopImage_(me)
        
    end selectedDesktopImage_

    -- If custom Desktop Image has a value, then check file exists & update error if it does not.
    on checkDesktopImage_(sender)
        
        -- If custom desktop image is selected
        if customDesktopImageEnabled is true
        
            -- If a custom desktop is selected
            if customDesktopImagePath is equal to missing value
                
                -- Set to false
                set customDesktopImageEnabled to false
                
                -- Bound to "Use a custom desktop image" checkbox, sets plist
                customDesktopImageSelected_(me)
                
            else
                
                try
                    
                    -- Set customDesktopImagePath to value as text
                    set customDesktopImagePath to customDesktopImagePath as text
                    
                    -- Check for file
                    do shell script "ls " & quoted form of customDesktopImagePath
                    
                    -- True if file exists
                    set desktopImageExists to true
                    
                    -- Update label
                    set my customDesktopImageLabel to "Image Selected: " & customDesktopImagePath
                    
                on error
                    
                    -- Update label
                    set my customDesktopImageLabel to "Cannot Find: " & customDesktopImagePath
                    
                    -- True if file exists
                    set desktopImageExists to false
                    
                end try
            
            end if

        end if

    end checkDesktopImage_

    -- Bound to "Install modified rc.netboot file" checkbox, sets plist
    on installRCNetBootSelected_(sender)
        
        -- Set to variable to boolean
        set installRCNetBootSelected to installRCNetBootSelected as boolean
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(installRCNetBootSelected, "installRCNetBootSelected")
        
    end installRCNetBootSelected_

----- BUILD PRE-CHECK -----

    -- Prompt user for location to create the .nbi
    on netBootLocation_(sender)
        
        -- Set NetBoot Description
        enablenetBootDescription_(me)

        try
            
            --If /Library/NetBoot/NetBootSPO/ exists
            choose folder with prompt "Choose a location to create the .nbi in:" default location "/Library/NetBoot/NetBootSP0/"
            
            -- Set netBootSelectedLocation to path of location given
            set netBootSelectedLocation to POSIX path of the result
            
            --Log Action
            set logMe to "Selected path to create .nbi is: " & netBootSelectedLocation
            
            -- Log To file
            logToFile_(me)
            
            -- Check that we have enough space available to proceed
            getNetBootDmgRequiredSize_(me)
            
        on error
            
            --Else open pointing to the desktop folder
            choose folder with prompt "Choose a location to create the .nbi in:" default location (path to desktop folder)
            
            -- Set netBootSelectedLocation to path of location given
            set netBootSelectedLocation to POSIX path of the result
            
            --Log Action
            set logMe to "Selected path to create .nbi is: " & netBootSelectedLocation
            
            -- Log To file
            logToFile_(me)
            
            -- Check that we have enough space available to proceed
            getNetBootDmgRequiredSize_(me)
            
        end try

    end netBootLocation_

    -- Get the space needed for the NetBoot.dmg
    on getNetBootDmgRequiredSize_(sender)
        
        try
            
            -- Disable main windows buttons
            set my optionWindowEnabled to false

            -- Update buildProcessLogTextField to show path to todays log
            set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"

            -- activate build process window
            activate
            showBuildProcessWindow's makeKeyAndOrderFront_(null)
            
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to false
            
            -- Reset required space
            set requiredSpace to 20
            
            -- Show Cog on main window
            set my mainWindowCog to true
            
            --Log Action
            set logMe to "Trying to get the Total size of " & quoted form of selectedOSdmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Get total size of selectedOSdmg
            set selectedOSdmgTotalSize to do shell script "diskutil info " & quoted form of selectedOSdmgMountPath & " | grep \"Total Size\" | awk '{ print $3 }'"
            
            --Log Action
            set logMe to "Total size of " & quoted form of selectedOSdmgMountPath & "is " & selectedOSdmgTotalSize & "GB"
            
            -- Log To file
            logToFile_(me)

            -- Get the value of the free space available on selectedOSdmg
            set selectedOSdmgFreeSpace to do shell script "diskutil info " & quoted form of selectedOSdmgMountPath & " | grep \"Volume Free Space\" | awk '{ print $4 }'"

            --Log Action
            set logMe to "There is " & selectedOSdmgFreeSpace & "GB space free on " & quoted form of selectedOSdmgMountPath

            -- Log To file
            logToFile_(me)
            
            considering numeric strings
                
                -- Get the space used on selectedOSdmg
                set selectedOSdmgUsedSpace to (selectedOSdmgTotalSize - selectedOSdmgFreeSpace)
                
            end considering
                
                --Log Action
                set logMe to "Used space on  " & quoted form of selectedOSdmgMountPath & "is " & selectedOSdmgUsedSpace & "GB"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot.dmg's size to + 1GB of what is needed
                set netBootDmgRequiredSize to selectedOSdmgUsedSpace + 1
                
                --Log Action
                set logMe to "The NetBoot.dmg will need to be around " & netBootDmgRequiredSize & "GB"
                
                -- Log To file
                logToFile_(me)
                
                -- Check that selected files exist
                checkFiles_(me)
        
        on error
        
            -- Display error to user
            display dialog "Error: Calculating space needed" with icon 0 buttons {"OK"}
        
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
        
        end try

    end getNetBootDmgRequiredSize_

    -- Check that selected files exist
    on checkFiles_(sender)
        
        -- If custom desktop image is selected
        if customDesktopImageEnabled is true
        
            -- Bound to "Use a custom desktop image" checkbox, sets plist
            customDesktopImageSelected_(me)
            
            -- If a custom desktop is selected
            if customDesktopImagePath is equal to missing value
            
                -- Set to false
                set customDesktopImageEnabled to false
                
                -- Bound to "Use a custom desktop image" checkbox, sets plist
                customDesktopImageSelected_(me)
                
                -- True if file exists
                set desktopImageExists to false
                
                -- Create the .nbi folder
                netBootLocationCreate_(me)
            
            else
            
                try
                    
                    -- Set customDesktopImagePath to value as text
                    set customDesktopImagePath to customDesktopImagePath as text
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Checking that custom Desktop Image exists"
                    
                    set logMe to "Selected Desktop Image: " & customDesktopImagePath
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Check for file
                    do shell script "ls " & quoted form of customDesktopImagePath
                    
                    -- True as file exists
                    set desktopImageExists to true
                    
                    -- Update label
                    set my customDesktopImageLabel to "Image Selected: " & customDesktopImagePath
                    
                    -- Create the .nbi folder
                    netBootLocationCreate_(me)

                on error
                    
                    -- Update label
                    set my customDesktopImageLabel to "Cannot Find: " & customDesktopImagePath
                    
                    display dialog "Cannot Find: " & customDesktopImagePath & ".Do you wish to proceed?" with icon 2 buttons {"No", "Yes"}
                    
                    -- If user selected no
                    if button returned of the result is "No" then
                        
                        --Log Action
                        set logMe to "User chose not to proceed as missing Desktop Image"
                        
                        -- Log To file
                        logToFile_(me)
                        
                        -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                        tidyUpTimeKids_(me)
                    
                    else

                        --Log Action
                        set logMe to "User chose to proceed with a missing Desktop Image"
                        
                        -- Log To file
                        logToFile_(me)
                        
                        -- True if file exists
                        set desktopImageExists to false
                        
                        -- Create the .nbi folder
                        netBootLocationCreate_(me)

                    end if

                end try
                
            end if
            
        else
        
            -- Create the .nbi folder
            netBootLocationCreate_(me)

        end if
        
    end checkDesktopImage_

----- BUILD -----

    -- Create the .nbi folder
    on netBootLocationCreate_(sender)
        
        -- Set build Process ProgressBar to indeterminate & animated to false
        set my buildProccessProgressBarIndeterminate to false
        set my buildProccessProgressBarAniminate to false
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Creating .nbi folder"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 10
        
        -- Set to path of NetBoot directory
        set netBootDirectory to netBootSelectedLocation & netBootNameTextField & ".nbi"
        
        --Log action
        set logMe to "Trying to create .nbi folder " & netBootDirectory
        
        -- Log To file
        logToFile_(me)


        try
            -- Create .nbi folder
            do shell script "mkdir " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully created " & quoted form of netBootDirectory
            
            -- Log To file
            logToFile_(me)
            
            -- Create the NetBoot.dmg
            createNetbootDmg_(me)
            
        on error number 1
        
            -- Error to user prompting for what to do next
            display dialog "There is already afolder called: " & quoted form of netBootNameTextField & " in " & quoted form of netBootSelectedLocation & return & return & "Do you want to select another folder or delete the existing?" with icon 2 buttons {"Delete Existing", "New Folder"}
            
            -- If user selected "Delete Existing"
            if button returned of the result is "Delete Existing" then
                
                --Log action
                set logMe to "Trying to delete " & quoted form of netBootDirectory
                
                -- Log To file
                logToFile_(me)
                
                -- Delete existing folder
                do shell script "rm -rf " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges

                --Log action
                set logMe to "Deleted " & quoted form of netBootDirectory

                -- Log To file
                logToFile_(me)

                -- Create the .nbi folder
                netBootLocationCreate_(me)
                
            else
            
                --Log action
                set logMe to "Reselecting path to create .nbi"
                
                -- Log To file
                logToFile_(me)
            
                -- Prompt user for location to create the .nbi
                netBootLocation_(me)
                
            end if
            
        end try
        
    end netBootLocationCreate_

    -- Create the NetBoot.dmg
    on createNetbootDmg_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Creating NetBoot.dmg"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 20
        
        --Log action
        set logMe to "Trying to create NetBoot.dmg in " & netBootDirectory
        
        -- Log To file
        logToFile_(me)
        
        -- Set to text value, to avoid an issue when name changed
        set netBootNameTextField to netBootNameTextField as text
                
        try
            
            -- Create a the NetBoot.dmg
            do shell script "hdiutil create " & quoted form of netBootDirectory & "/NetBoot -size " & netBootDmgRequiredSize & "g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"SPUD\" -fs \"HFS+\" -stretch 500g" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully created NetBoot.dmg in " & quoted form of netBootDirectory
            
            -- Log To file
            logToFile_(me)
            
            -- Mount the NetBoot.dmg
            mountNetBootDmg_(me)
            
        on error
        
            -- Display error to user
            display dialog "Error: Failed to create NetBoot.dmg" with icon 0 buttons {"OK"}
        
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)

        end try

    end createNetbootDmg_

    -- Mount the NetBoot.dmg
    on mountNetBootDmg_(sender)

        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Mounting NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 30
            
            --Log Action
            set logMe to "Trying to mount: " & quoted form of netBootDirectory
            
            -- Log To file
            logToFile_(me)
            
            -- Mount the NetBoot.dmg & get the mount path
            set netBootDmgMountPath to do shell script "hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Mounted to: " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)

            -- Copy OS.dmg's content to NetBoot.dmg
            copyOSDmgToNetBootDmg_(me)

        on error
            
            -- Display error to user
            display dialog "Error: Cannot mount NetBoot.dmg" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end mountNetBootDmg_

    -- Copy OS.dmg's content to NetBoot.dmg
    on copyOSDmgToNetBootDmg_(sender)
        
        -- Set build Process ProgressBar to indeterminate & animated to false
        set my buildProccessProgressBarIndeterminate to false
        set my buildProccessProgressBarAniminate to false
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying the contents of the OS.dmg to NetBoot.dmg"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 40
        
        --Log action
        set logMe to "Copying contents of " & quoted form of selectedOSdmgMountPath & " to " & quoted form of netBootDirectory & "/NetBoot.dmg"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Copy contents of the SelectedOSdmg to NetBootdmg
            do shell script "ditto " & quoted form of selectedOSdmgMountPath & " " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully copied " & quoted form of selectedOSdmgPath & " to " & quoted form of netBootDirectory & "/NetBoot.dmg"
            
            -- Log To file
            logToFile_(me)
            
            -- Reduce NetBoot Image if ticked
            reduceNetBootImage_(me)
                    
        on error
                    
            -- Display error to user
            display dialog "Error: Cannot copy contents of " & selectedOSdmgMountPath & " to " & quoted form of netBootDmgMountPath with icon 0 buttons {"OK"}
                
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
                    
        end try
        
    end copyOSDmgToNetBootDmg_

    -- Reduce NetBoot Image if ticked
    on reduceNetBootImage_(sender)
        
        -- Set variable to boolean
        set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
        
        try
            
            -- Check if reduce NetBoot Image is ticked
            if netBootImageReduceEnabled is true then
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing size"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 50
                
                ---- Applications ----
                --Log Action
                set logMe to "Trying to delete Applications from: " & netBootDmgMountPath & "/Applications/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing NetBoot size by deleting unneeded Applications"
                
                delay 0.1
                
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/Applications/* -maxdepth 0 -not -path \"*Launchpad.app*\" -not -path \"*Safari.app*\" -not -path \"*System Preferences.app*\" -not -path \"*TextEdit.app*\"  -not -path \"*Utilities*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Deleted Applications from: " & netBootDmgMountPath & "/Applications/"
                
                -- Log To file
                logToFile_(me)
                
                ---- Utilities ----
                --Log Action
                set logMe to  "Deleting unwanted Utilities from: " & netBootDmgMountPath

                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing NetBoot size by deleting unneeded Utilities"
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 52
                
                delay 0.1

                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/Applications/Utilities/* -maxdepth 0 -not -path \"*Activity Monitor.app*\" -not -path \"*Console.app*\" -not -path \"*Disk Utility.app*\" -not -path \"*Grab.app*\" -not -path \"*Keychain Access.app*\" -not -path \"*System Information.app*\" -not -path \"*Terminal.app*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Deleted Utilities from: " & netBootDmgMountPath & "/Applications/Utilities/"
                
                -- Log To file
                logToFile_(me)
                
                ---- PreferencePanes ----
                --Log Action
                set logMe to "Deleting unwanted PreferencesPanes from: " & netBootDmgMountPath
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing NetBoot size by deleting unneeded Preference Panes"
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 54
                
                delay 0.1
                
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/System/Library/PreferencePanes/* -maxdepth 0 -not -path \"*DateAndTime.prefPane*\" -not -path \"*Displays.prefPane*\" -not -path \"*Network.prefPane*\" -not -path \"*SharingPref.prefPane*\" -not -path \"*StartupDisk.prefPane*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Deleted Preference Panes from: " & netBootDmgMountPath & "/System/Library/PreferencePanes/"
                
                -- Log To file
                logToFile_(me)
                
                ---- Directories ----
                --- /Library/ ---
                --Log Action
                set logMe to "Trying to empty directories in " & netBootDmgMountPath & "/Library/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 56
                
                delay 0.1
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Application Support/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Application\\ Support/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Application Support/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Audio/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Audio/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Audio/"
                
                -- Log To file
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Caches/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Caches/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Caches/"
                
                -- Log To file
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Desktop Pictures/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Desktop\\ Pictures/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Desktop Pictures/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Dictionaries/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Dictionaries/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Dictionaries/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Documentation/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Documentation/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Documentation/"
                
                -- Log To file
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Fonts/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Fonts/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Fonts/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Logs/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Logs/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Logs/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Modem Scripts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Modem\\ Scripts/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Modem Scripts/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Printers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Printers/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Printers/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Receipts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Receipts/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Receipts/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Screen\\ Savers/*" user name adminUserName password adminUsersPassword with administrator privileges
    
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Screen Savers/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Updates/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/Updates/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Updates/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/User Pictures/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/User\\ Pictures/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/User Pictures/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/WebServer/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Library/WebServer/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/WebServer/"
                
                -- Log To file
                logToFile_(me)
                
                --Log Action
                set logMe to "Successfully emptied targeted directories in " & netBootDmgMountPath & "/Library/"
                
                -- Log To file
                logToFile_(me)
                
                --- /System/Library/ ---

                --Log Action
                set logMe to "Trying to empty targeted directories in " & netBootDmgMountPath & "/System/Library/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 58
                
                delay 0.1
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Address Book Plug-Ins/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Address\\ Book\\ Plug-Ins/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Address Book Plug-Ins/"
                
                -- Log To file
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Automator/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Automator/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Automator/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Caches/"
                
                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Caches/*" user name adminUserName password adminUsersPassword with administrator privileges
   
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Caches/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Compositions/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Compositions/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Compositions/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/InternetAccounts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/InternetAccounts/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/InternetAccounts/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting unneeded folders from /System/Library/LinguisticData/"
                
                delay 0.1
				
				-- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/System/Library/LinguisticData/* -maxdepth 0 -not -path \"*en*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges
				
				--Log Action
                set logMe to "Deleting unneeded folders from " & netBootDmgMountPath & "/System/Library/LinguisticData/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Printers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Printers/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Printers/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Screen\\ Savers/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Screen Savers/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Speech/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Speech/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Speech/"
                
                -- Log To file
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/User Templates/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/User\\ Templates/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/User Templates/"
                
                -- Log To file
                logToFile_(me)
                
                --Log Action
                set logMe to "Successfully emptied targeted directories in " & netBootDmgMountPath & "/System/Library/"
                
                -- Log To file
                logToFile_(me)
                
                -- Delete swap files from the NetBoot.dmg
                removeSwapFiles_(me)
                
            else
            
                --Log Action
                set logMe to "NetBoot reduction not enabled. Skipping..."
                
                -- Log To file
                logToFile_(me)
                
                -- Delete swap files from the NetBoot.dmg
                removeSwapFiles_(me)
                
            end if
        
        on error
        
            -- Display error to user
            display dialog "Error: Deleting files" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end reduceNetBootImage_

    -- Delete swap files from the NetBoot.dmg
    on removeSwapFiles_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Removing swapfiles"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 60
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/private/var/vm/swapfile*"
        
        -- Log To file
        logToFile_(me)
            
        try
            
            -- Delete the below, silently error if doesn't exist
            do shell script "rm " & quoted form of netBootDmgMountPath & "/private/var/vm/swapfile*" user name adminUserName password adminUsersPassword with administrator privileges
        
        end try
        
        --Log Action
        set logMe to "Deleted swapfiles in " & netBootDmgMountPath & "/private/var/vm/"
        
        -- Log To file
        logToFile_(me)
        
        -- Delete sleepimage from the NetBoot.dmg
        removeSleepImage_(me)
        
    end removeSwapFiles_

    -- Delete sleepimage from the NetBoot.dmg
    on removeSleepImage_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Removing sleepimage"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 70
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/private/var/vm/sleepimage"
        
        -- Log To file
        logToFile_(me)

        try
            
            -- Delete the below file, silently error if doesn't exist
            do shell script "rm " & quoted form of netBootDmgMountPath & "/private/var/vm/sleepimage" user name adminUserName password adminUsersPassword with administrator privileges
        
        end try
        
        --Log Action
        set logMe to "Deleted sleepimage in " & netBootDmgMountPath & "/private/var/vm/"
        
        -- Log To file
        logToFile_(me)
        
        -- Empty /private/tmp from the NetBoot.dmg
        emptyPrivateTmp_(me)
    
    end removeSleepImage_

    -- Empty /private/tmp from the NetBoot.dmg
    on emptyPrivateTmp_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /private/tmp"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 80
        
        --Log Action
        set logMe to "Emptying " & netBootDmgMountPath & "/private/tmp/*"
        
        -- Log To file
        logToFile_(me)
        
        try

            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/private/tmp/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/private/tmp/"
            
            -- Log To file
            logToFile_(me)
            
            -- Empty /private/var/tmp from the NetBoot.dmg
            emptyPrivateVarTmp_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Emptying /private/tmp" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end emptyPrivateTmp_

    -- Empty /private/var/tmp from the NetBoot.dmg
    on emptyPrivateVarTmp_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /private/var/tmp/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 90
        
        --Log Action
        set logMe to "Emptying " & netBootDmgMountPath & "/private/var/tmp/*"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/private/var/tmp/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/private/var/tmp/"
            
            -- Log To file
            logToFile_(me)
            
            -- Empty /Volumes/ from the NetBoot.dmg
            emptyVolumesFolder_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Emptying /private/var/tmp" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end emptyPrivateVarTmp_

    -- Empty /Volumes/ from the NetBoot.dmg
    on emptyVolumesFolder_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /Volumes/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 100
        
        --Log Action
        set logMe to "Emptying " & netBootDmgMountPath & "/Volumes/"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/Volumes/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/Volumes/"
            
            -- Log To file
            logToFile_(me)
            
            -- Empty /dev/ from the NetBoot.dmg
            emptyDevFolder_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Emptying /Volumes/" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end emptyVolumesFolder_

    -- Empty /dev/ from the NetBoot.dmg
    on emptyDevFolder_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /dev/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 110
        
        --Log Action
        set logMe to "Emptying " & netBootDmgMountPath & "/dev/"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/dev/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/dev/"
            
            -- Log To file
            logToFile_(me)
            
            -- Empty /var/run/ from the NetBoot.dmg
            emptyVarRunFolder_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Emptying /dev/" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end emptyDevFolder_

    -- Empty /var/run/ from the NetBoot.dmg
    on emptyVarRunFolder_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /var/run/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 110
        
        --Log Action
        set logMe to "Emptying " & netBootDmgMountPath & "/var/run/"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/var/run/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/var/run/"
            
            -- Log To file
            logToFile_(me)
            
            -- Disable Software Update
            disableSoftwareUpdate_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Emptying /var/run/" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end emptyVarRunFolder_

    -- Disable Software Update
    on disableSoftwareUpdate_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling Software Update"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 120
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/System/Library/CoreServices/Software Update.app"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Software\\ Update.app" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/Software Update.app"

            -- Log To file
            logToFile_(me)
            
            --Log Action
            set logMe to "Deleting " & netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*"
            
            -- Log To file
            logToFile_(me)
            
            -- Empty the below folder
            do shell script "rm " & quoted form of netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*"
            
            -- Log To file
            logToFile_(me)
            
            -- Delete plists from SystemConfiguration to rebuild network interfaces
            deleteSystemConfigurationPlists_(me)
    
        on error
            
            -- Display error to user
            display dialog "Error: Disabling Software Update" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end disableSoftwareUpdate_

    -- Delete plists from SystemConfiguration to rebuild network interfaces
    on deleteSystemConfigurationPlists_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting /Library/Preferences/SystemConfiguration/preferences.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 125
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Delete the below folder, silently error if doesn't exist
            do shell script "rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist" user name adminUserName password adminUsersPassword with administrator privileges
        
        end try
        
        --Log Action
        set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist"
        
        -- Log To file
        logToFile_(me)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 130
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Delete the below folder, silently error if doesn't exist
            do shell script "rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
        end try
        
        --Log Action
        set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        
        -- Log To file
        logToFile_(me)
        
        -- Bypass the various setup assistants so we're logging in uninterrupted
        bypassSetupAssistants_(me)
            
    end deleteSystemConfigurationPlists_

    -- Bypass the various setup assistants so we're logging in uninterrupted
    on bypassSetupAssistants_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Bypassing Apple Setup Assistant"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 133
        
        try
            
            ---- .AppleSetupDone ----
            -- Write .AppleSetupDone file
            do shell script "touch " & quoted form of netBootDmgMountPath & "/var/db/.AppleSetupDone" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to ".AppleSetupDone written to " & netBootDmgMountPath & "/var/db/.AppleSetupDone"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/var/db/.AppleSetupDone" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/var/db/.AppleSetupDone"
            
            -- Log To file
            --logToFile_(me)
            
            -- Correct permissions
            --do shell script "chmod 644 " & quoted form of netBootDmgMountPath & "/var/db/.AppleSetupDone" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set permissions to 644 on " & netBootDmgMountPath & "/var/db/.AppleSetupDone"
            
            -- Log To file
            --logToFile_(me)
            
            ---- .SetupRegComplete ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Bypassing Registration"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 136
            
            ---- .SetupRegComplete ----
            -- Write .SetupRegComplete file
            do shell script "touch " & quoted form of netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to ".SetupRegComplete written to " & netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete"
            
            -- Log To file
            --logToFile_(me)
            
            ---- com.apple.SetupAssistant----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Bypassing iCloud Setup Assistant"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 140
            
            -- Write DidSeeCloudSetup to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist DidSeeCloudSetup -bool true" user name adminUserName password adminUsersPassword with administrator privileges
            
            -- Write GestureMovieSeen to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist GestureMovieSeen none" user name adminUserName password adminUsersPassword with administrator privileges
            
            -- Write LastSeenCloudProductVersion to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist LastSeenCloudProductVersion " & quoted form of selectedOSdmgVersion user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "iCloud Bypass options written to " & netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist"
            
            -- Log To file
            --logToFile_(me)
            
            -- Correct permissions
            --do shell script "chmod 700 " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist" user name adminUserName password adminUsersPassword with administrator privileges
           
            --Log Action
            --set logMe to "Set permissions to 700 on " & netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist"
            
            -- Log To file
            --logToFile_(me)
            
            --Log Action
            set logMe to "Deleting " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app/Contents/SharedSupport/MiniLauncher"
            
            -- Log To file
            logToFile_(me)
            
            --Delete the MiniLauncher
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup\\ Assistant.app/Contents/SharedSupport/MiniLauncher" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app/Contents/SharedSupport/MiniLauncher"
            
            -- Log To file
            logToFile_(me)

            -- Stop TimeMachine for prompting to use mounted disks for backup
            disableTimeMachinePrompt_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Bypassing Setup Assistants" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end bypassSetupAssistants_
    
    -- Stop TimeMachine for prompting to use mounted disks for backup
    on disableTimeMachinePrompt_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling TimeMachine prompts"
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 150
        
        try
            
            -- TimeMachine Plist location on mounted volume
            set variableVariable to netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist"
            
            -- Set TimeMachine to not prompt for new disks for backup
            do shell script "defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist DoNotOfferNewDisksForBackup -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
            
            -- Log Action
            set logMe to "com.apple.TimeMachine.plist amended at " & netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
           -- set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist"
            
            -- Log To file
            --logToFile_(me)
            
            -- Correct permissions
            --do shell script "chmod 755 " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set permissions to 755 on " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist"
            
            -- Log To file
           -- logToFile_(me)
            
            -- Delete the file delete /Library/Preferences/com.apple.dockfixup.plist
            deleteDockFixUp_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Writing to /Library/Preferences/com.apple.TimeMachine.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end disableTimeMachinePrompt_
    
    -- Delete the file delet /Library/Preferences/com.apple.dockfixup.plist
    on deleteDockFixUp_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting com.apple.dockfixup.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 160
        
        try

            --Log Action
            set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Delete com.apple.dockfixup.plist
            do shell script "rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy the com.apple.PowerManagement.plist used by SIU
            copyPowerManagementPlist_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Deleting /Library/Preferences/com.apple.dockfixup.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end deleteDockFixUp_

    -- Copy the com.apple.PowerManagement.plist used by SIU
    on copyPowerManagementPlist_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying com.apple.PowerManagement.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 170
        
        try
            
            --Log Action
            set logMe to "Copying com.apple.PowerManagement.plist"
            
            -- Log To file
            logToFile_(me)
        
            -- Copy the plist
            do shell script "ditto " & quoted form of pathToResources & "/com.apple.PowerManagement.plist " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied com.apple.PowerManagement.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist"
            
            -- Log To file
            --logToFile_(me)
            
            -- Correct permissions
            --do shell script "chmod 644 " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            --set logMe to "Set permissions to 644 on " &  quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist"
            
            -- Log To file
            --logToFile_(me)
            
            -- Create the ARD user
            createARDUser_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Copying com.apple.PowerManagement.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyPowerManagementPlist_

    -- Create the ARD user
    on createARDUser_(sender)
        
        -- If ARD option has been enabled
        if ardEnabled is equal to true then
            
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating ARD User"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 175
                
                -- JSS Plist location on mounted volume
                set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/ScreenSharing/ARDUser.plist"
                
                -- Encode ardUsername
                set ardUsernameEncoded to do shell script "echo " & ardUsername & " | openssl base64 "
                
                --Log Action
                set logMe to "ARD Username encoded"
                
                -- Log To file
                logToFile_(me)
                
                -- Write encoded ARD Username to plist
                do shell script "defaults write " & quoted form of variableVariable & " ARDUsername "  & ardUsernameEncoded  user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Written ARD Username to " & variableVariable
                
                -- Log To file
                logToFile_(me)
                
                -- Encode ardPassword
                set ardPasswordEncoded to do shell script "echo " & ardPassword & " | openssl base64 "
                
                --Log Action
                set logMe to "ARD Password encoded"
                
                -- Log To file
                logToFile_(me)
                
                -- Write encoded ARD Password to plist
                do shell script "defaults write " & quoted form of variableVariable & " ARDPassword "  & ardPasswordEncoded  user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Written ARD Password to " & variableVariable
                
                -- Log To file
                logToFile_(me)
                
                -- Correct ownership
                --do shell script "chown -R root:wheel " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                --set logMe to "Set ownership to root:wheel on " & quoted form of variableVariable
                
                -- Log To file
                --logToFile_(me)
                
                -- Correct permissions
                --do shell script "chmod -R 755 " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                --set logMe to "Set permissions to 755 on " & quoted form of variableVariable
                
                -- Log To file
                --logToFile_(me)
                
                -- Writes vncPassword to com.apple.VNCSettings.txt
                enableVNC_(me)
                
            on error
                
                -- Display error to user
                display dialog "Error: Creating ARD User" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
            
        -- If ARD option has not been enabled
        else
            
            --Log Action
            set logMe to "Skipping creation of ARD user as ARD not enabled"
            
            -- Log To file
            logToFile_(me)
            
            -- Writes vncPassword to com.apple.VNCSettings.txt
            enableVNC_(me)
            
        end if
        
    end createARDUser_

    -- Writes vncPassword to com.apple.VNCSettings.txt
    on enableVNC_(sender)
        
        -- If VNC option has been enabled
        if vncEnabled is equal to true then
            
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Writing VNC password to com.apple.VNCSettings.txt"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 180
                
                -- Set variableVariable to location of com.apple.VNCSettings.txt
                set variableVariable to netBootDmgMountPath & "/Library/Preferences/com.apple.VNCSettings.txt"
                
                --Log Action
                set logMe to "Trying to write VNC password to " & variableVariable
                
                -- Log To file
                logToFile_(me)
                
                -- Write hashed vncPassword to /Library/Preferences/com.apple.VNCSettings.txt on .nbi
                do shell script "echo " & vncPassword & " | perl -we 'BEGIN { @k = unpack \"C*\", pack \"H*\", \"1734516E8BA8C5E2FF1C39567390ADCA\"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack \"C*\", $_; foreach (@k) { printf \"%02X\", $_ ^ (shift @p || 0) }; print \"
                \"' | sudo tee " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "VNC password written to " & variableVariable
                
                -- Log To file
                logToFile_(me)
                
                -- Correct Ownership
                --do shell script "chown root:wheel " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                --set logMe to "Set ownership to root:wheel on " & variableVariable
                
                -- Log To file
                --logToFile_(me)
                
                -- Correct Permissions
                --do shell script "chmod 400 " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                --set logMe to "Set permissions to 400 on " & variableVariable
                
                -- Log To file
                --logToFile_(me)
                
                -- Install AutoCasperNBIStartup.pkg
                installAutoCasperNBIStartup_(me)
                
            on error
                
                -- Display error to user
                display dialog "Error: Wrting VNC Settings" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
            
        -- If VNC option has not been enabled
        else
            
            --Log Action
            set logMe to "Skipping writing VNC password as VNC option not enabled"
            
            -- Log To file
            logToFile_(me)
            
            -- Install AutoCasperNBIStartup.pkg
            installAutoCasperNBIStartup_(me)
            
        end if
        
    end enableVNC_

    -- Install AutoCasperNBIStartup.pkg
    on installAutoCasperNBIStartup_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing AutoCasperNBI LaunchDaemon & required files"
            
            delay 0.1
            
            --Log Action
            set logMe to "Trying to install AutoCasperNBIStartup.pkg"
            
            -- Log To file
            logToFile_(me)
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 190
        
            -- Install CasperImagingLaunchAgent.pkg from rescources
            do shell script "installer -pkg " & quoted form of pathToResources & "/AutoCasperNBIStartup.pkg -target " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "AutoCasperNBIStartup.pkg installed successfully"
            
            -- Log To file
            logToFile_(me)
            
            -- Install RootUser.pkg
            installRootUserpkg_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Installing AutoCasperNBI LaunchDaemon & required files" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end installAutoCasperNBIStartup_

    -- Install RootUser.pkg
    on installRootUserpkg_(sender)
        
        --Log Action
        set logMe to "Trying to install Root user via pkg"
        
        -- Log To file
        logToFile_(me)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Installing Root User via pkg"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 200
        
        try

            -- Install RootUser.pkg from rescources
            do shell script "installer -pkg " & quoted form of pathToResources & "/RootUser.pkg -target " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Root user installed via pkg"
            
            -- Log To file
            logToFile_(me)
            
            -- Install rc.netboot.pkg
            installRCNetboot_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Installing Root User" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end installRootUserpkg_

    -- Install rc.netboot.pkg
    on installRCNetboot_(sender)
        
        --Set to boolean
        set installRCNetBootSelected to installRCNetBootSelected as boolean
        
        -- if we're installing rc.netboot.pkg
        if installRCNetBootSelected is true

            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Installing modified rc.netboot file"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 210
                
                --Log Action
                log "Trying to install rc.netboot.pkg"
                
                -- Install rc.netboot.pkg from rescources
                do shell script "installer -pkg " & quoted form of pathToResources & "/rc.netboot.pkg -target " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                log "rc.netboot.pkg installed successfully"
                
                -- Set Desktop Image to selected
                copyDesktopImage_(me)
                
            on error
                
                -- Display error to user
                display dialog "Error: Installing modified rc.netboot file" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
            
        else
        
            -- Set Desktop Image to selected
            copyDesktopImage_(me)
        
        end if
        
    end installRCNetboot_

    -- Set Desktop Image to selected
    on copyDesktopImage_(sender)
        
        -- If we have a desktop selected & we can found it
        if desktopImageExists is true
        
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Copying Desktop Image"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 220
                
                -- Set variableVariable to path of DefaultDesktop.jpg
                set variableVariable to netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                --Log Action
                set logMe to "Removing symbolic link on " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Log To file
                logToFile_(me)
                
                try
                
                    -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                    do shell script "unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                
                end try
                
                -- Set to text
                set customDesktopImagePath to customDesktopImagePath as text
                
                --Log Action
                set logMe to "Trying to copy " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Log To file
                logToFile_(me)
                
                -- Copy selected image
                do shell script "cp -r " & quoted form of customDesktopImagePath & " " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Copied " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Log To file
                logToFile_(me)

                -- Correct ownership
                --do shell script "chown root:wheel " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                --set logMe to "Set ownership to root:wheel on " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Log To file
                --logToFile_(me)
                
                -- Correct permissions
                --do shell script "chmod 755 " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                --set logMe to "Set permissions to 755 on " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Log To file
                --logToFile_(me)
                
                -- Copy Casper Imaging.app selected earlier
                copyCasperImagingApp_(me)
                
            on error
                
                -- Display error to user
                display dialog "Error: Copying Desktop Image" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
            
        else
        
            -- Copy Casper Imaging.app selected earlier
            copyCasperImagingApp_(me)
        
        end if
        
    end copyDesktopImage_

    -- Copy Casper Imaging.app selected earlier
    on copyCasperImagingApp_(sender)
        
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying Casper Imaging.app"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 230
            
            -- Cut the trailing /
            set selectedAppPathToCopy to do shell script "echo " & quoted form of selectedAppPath & " | rev | cut -c 2- | rev"
            
            --Log Action
            set logMe to "Casper Imaging.app to copy resides " & selectedAppPathToCopy
            
            -- Log To file
            logToFile_(me)
            
            -- Copy location for Casper Imaging.app
            set variableVariable to netBootDmgMountPath & "/Applications/"
            
            -- Copy path of Casper Imaging.app
            set copiedAppPath to netBootDmgMountPath & "/Applications/Casper Imaging.app"
            
            --Log Action
            set logMe to "Casper Imaging.app to be copied to " & copiedAppPath
            
            -- Log To file
            logToFile_(me)
            
            -- Copy Casper Imaging.app & log
            do shell script "cp -r " & quoted form of selectedAppPathToCopy & " " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

            --Log action
            set logMe to "Copied " & selectedAppPath & " to " & variableVariable
            
            -- Log To file
            logToFile_(me)
        
            -- Correct ownership on copied Casper Imaging.app
            --do shell script "chown -R root:wheel " & quoted form of copiedAppPath user name adminUserName password adminUsersPassword with administrator privileges
   
            --Log Action
            --set logMe to "Set ownership to root:wheel on " & copiedAppPath
            
            -- Log To file
            --logToFile_(me)
            
            -- Correct permissions on copied Casper Imaging.app
            --do shell script "chmod -R 755 " & quoted form of copiedAppPath user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            --set logMe to "Set permissions to 755 on " & copiedAppPath
            
            -- Log To file
            --logToFile_(me)
            
            -- Try as errors if not found (i think)
            try
                
                -- Delete Quaratine flag
                do shell script "xattr -d com.apple.quarantine " & quoted form of copiedAppPath user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Quarantine flag removed from " & copiedAppPath
                
                -- Log To file
                logToFile_(me)
            
            end try
        
            -- Write the Casper Imaging plist
            writeCasperImagingPlist_(me)
            
        on error
        
            -- Display error to user
            display dialog "Error: There was an issue copying  " & selectedAppPath & " to " & variableVariable  with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyCasperImagingApp_

    -- Write the Casper Imaging plist
    on writeCasperImagingPlist_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Writing Casper Imaging plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 240
            
            -- JSS Plist location on mounted volume
            set variableVariable to netBootDmgMountPath & "/private/var/root/Library/Preferences/com.jamfsoftware.jss.plist"
            
            -- Write Casper Imaging plist to allow invalid cert,
            do shell script "defaults write " & quoted form of variableVariable & " allowInvalidCertificate -bool true" user name adminUserName password adminUsersPassword with administrator privileges
            
            -- Log Action
            set logMe to "com.jamfsoftware.jss.plist created & allow invalid certificate set"
            
            -- Log To file
            logToFile_(me)
            
            -- If a JSS URL is specified
            if jssURL is not equal missing value
            
                -- Write JSS URL to plist,
                do shell script "defaults write " & quoted form of variableVariable & " url -string " & jssURL user name adminUserName password adminUsersPassword with administrator privileges
      
                --Log Action
                set logMe to "plist updated with JSS url"
                
                -- Log To file
                logToFile_(me)
            
            end if

            -- Correct ownership
            --do shell script "chown root:wheel " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            --set logMe to "Set ownership to root:wheel on " & variableVariable
            
            -- Log To file
            --logToFile_(me)

            -- Correct permissions
            --do shell script "chmod 700 " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            --set logMe to "Set permissions to 700 on " & variableVariable
            
            -- Log To file
            --logToFile_(me)
            
            -- Install CasperImagingLaunchAgent.pkg
            installCasperImagingLaunchAgent_(me)
                
        on error
            
            -- Display error to user
            display dialog "Error: Installing the Casper Imaging plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end writeCasperImagingPlist_

    -- Install CasperImagingLaunchAgent.pkg
    on installCasperImagingLaunchAgent_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing Casper Imaging LaunchAgent"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 250
            
            --Log Action
            set logMe to "Trying to install Casper Imaging LaunchAgent via pkg"
            
            -- Log To file
            logToFile_(me)
            
            -- Install CasperImagingLaunchAgent.pkg from rescources
            do shell script "installer -pkg " & quoted form of pathToResources & "/CasperImagingLaunchAgent.pkg -target " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
    
            --Log Action
            set logMe to "Casper Imaging LaunchAgent plist installed via pkg"
            
            -- Log To file
            logToFile_(me)
            
            -- Get JSS CA Cert if JSS URL given
            importJSSCACert_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Installing Casper Imaging LaunchAgent" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end installCasperImagingLaunchAgent_

    -- Get JSS CA Cert if JSS URL given
    on importJSSCACert_(sender)
        
        -- If a JSS URL is specified
        if jssURL is not equal missing value
        
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Downloading JSS CA Cert"
            
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 260
                
                -- Application Support location on TempOSdmg for installing at boot
                set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Certificates/"
                
                -- Log Action
                set logMe to "Downloading JSS CA Cert for " & jssURL
                
                -- Log To file
                logToFile_(me)
                
                -- Download CA Cert from JSS to /Library/Application Support/AutoCasperNBI/Certificates/UUID
                do shell script "curl -k -o " & quoted form of variableVariable & tempUUID & ".cer " & jssURL & "/CA/SCEP?operation=getcacert" user name adminUserName password adminUsersPassword with administrator privileges
         
                 -- Log Action
                 set logMe to "Downloaded JSS CA Cert to " & quoted form of variableVariable
                 
                 -- Log To file
                 logToFile_(me)
         
                -- Create dlyd shared cache files
                createDlydCaches_(me)
                
            on error
            
                -- Display error to user
                display dialog "Error: Importing JSS CA Cert" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
        
        else
        
            -- Create dlyd shared cache files
            createDlydCaches_(me)
        
        end if

    end importJSSCACert_

    -- Create dlyd shared cache files
    on createDlydCaches_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Creating dyld shared cache files"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 270

        try
            
            --Log Action
            set logMe to "Creating dyld shared cache files on: " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            do shell script "update_dyld_shared_cache -root " & quoted form of netBootDmgMountPath & " -universal_boot -force" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Successfully created dyld caches"
            
            -- Log To file
            logToFile_(me)
            
            -- If we're running on 10.9.0 - .3 then manually reduce kernel cache
            manualKernelCacheReductionCheck_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Creating dyld shared cache files" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end createDlydCaches

    -- If we're running on 10.9.0 - .3 then manually reduce kernel cache
    on manualKernelCacheReductionCheck_(sender)
        
        -- If we're running on 10.9.0 - .3 then manually reduce kernel cache
        --manualKernelCacheReductionCheck_(me)
        considering numeric strings
            
            -- If we're running on 10.9.0 - .3 then reduce kernel cache
            if hostMacOSVersion is greater than "10.8.9" and hostMacOSVersion is less than "10.9.4" then
                
                --Log Action
                set logMe to "We're on not on 10.9.+ so need to manually reduce kernel cache"
                
                -- Log To file
                logToFile_(me)
                
                -- Reduce Kernel cache if we're on 10.9.0 - .3
                reduceKernelCache_(me)
                
            else
                
                --Log Action
                set logMe to "Skipping extension deletion as not needed on this OS"
                
                -- Log To file
                logToFile_(me)
                
                -- Generate the Kernel cache
                generateKernelCache_(me)
                
                
            end if
            
        end considering
        
    end manualKernelCacheReductionCheck_

    -- Reduce Kernel cache if we're on 10.9.0 - .3
    on reduceKernelCache_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting extensions to reduce kernel cache size"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 280
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/AMD*"
            
            -- Log To file
            logToFile_(me)
            
            -- Delete extensions
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/AMD*"  user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/AMD*"
            
            -- Log To file
            logToFile_(me)
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/ATI*"
            
            -- Log To file
            logToFile_(me)
            
            -- Delete extesntions
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/ATI*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/ATI*"
            
            -- Log To file
            logToFile_(me)
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/ATTO*"
            
            -- Log To file
            logToFile_(me)
            
            -- Delete extesntions
            do shell script "rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/ATTO*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/ATTO*"
            
            -- Log To file
            logToFile_(me)
            
            -- Generate the Kernel cache
            generateKernelCache_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Deleting extensions" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end reduceKernelCache_

    -- Generate the Kernel cache
    on generateKernelCache_(sender)
        
        try
            
            ---- MAKE x86_64 FOLDER ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating x84_64 folder"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 290
            
            --Log Action
            set logMe to "Trying to create folder " & netBootDirectory & "/i386/x86_64"
            
            -- Log To file
            logToFile_(me)
            
            -- Create the x86_64 folder
            do shell script "mkdir -p " & quoted form of netBootDirectory & "/i386/x86_64" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Created folder " & netBootDirectory & "/i386/x86_64"
            
            -- Log To file
            logToFile_(me)
            
            ---- UPDATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Updating kernel cache"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 294
            
            --Log Action
            set logMe to "Updating kernel cache on: " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Update
            do shell script "kextcache -update-volume  " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Updated kernel cache on: " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            ---- GENERATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Generating kernel cache"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 298
            
            --Log Action
            set logMe to "Generating kernel cache"
            
            -- Log To file
            logToFile_(me)
            
            try

                -- Generate kernel cache, silently error as this will error when on 10.9.4 when skipping extensions
                do shell script "kextcache -arch x86_64 -l -n -K " & quoted form of netBootDmgMountPath & "/mach_kernel -c " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Extensions" user name adminUserName password adminUsersPassword with administrator privileges

            end try
            
            --Log Action
            set logMe to "Updated kernel cache on: " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Copy the boot.efi to the booter shell
            copyBootEfi_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Generating kernel cache" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end generateKernelCache_

    -- Copy the boot.efi to the booter shell
    on copyBootEfi_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying boot.efi"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 300
        
        try
            
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi to " & quoted form of netBootDirectory & "/i386/booter"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy the plist
            do shell script "ditto " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi to " & quoted form of netBootDirectory & "/i386/booter"
            
            -- Log To file
            logToFile_(me)
            
            --Log Action
            set logMe to "Unlocking " & quoted form of netBootDirectory & "/i386/booter"
            
            -- Log To file
            logToFile_(me)
            
            -- Unlock booter
            do shell script "chflags nouchg " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Unlocked " & quoted form of netBootDirectory & "/i386/booter"
            
            -- Correct ownership
            do shell script "chown -R root:admin " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set ownership to root:admin on " & netBootDirectory & "/i386/booter"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct permissions
            do shell script "chmod -R 775 " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set permissions to 775 on " & netBootDirectory & "/i386/booter"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy PlatformSupport.plist
            copyPlatformSupportPlist_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Copying booter.efi" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyBootEfi_

    -- Copy PlatformSupport.plist
    on copyPlatformSupportPlist_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying PlaformSupport.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 310
        
        try
            
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist to " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy the plist
            do shell script "ditto " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist to " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy NBImageInfo.plist
            copyNBImageInfoPlist_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Copying PlatformSupport.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyPlatformSupportPlist_

    -- Copy NBImageInfo.plist
    on copyNBImageInfoPlist_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying NBImageInfo.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 320
        
        try
            
            --Log Action
            set logMe to "Copying NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Copy the plist
            do shell script "ditto " & quoted form of pathToResources & "/NBImageInfo.plist " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Updates NBImageInfo.plist
            updateNBImageInfoPlist_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Copying  NBImageInfo.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyNBImageInfoPlist_

    -- Updates NBImageInfo.plist
    on updateNBImageInfoPlist_(sender)
        
            try
                
                ---- Make NBImageInfo.plist writable ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Amending NBImageInfo.plist"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 330
                
                --Log Action
                set logMe to "Trying to change permissions on " & netBootDirectory & "/NBImageInfo.plist"
                
                -- Log To file
                logToFile_(me)
                
                -- Making NBImageInfo.plist writable
                do shell script "chmod 777 "  & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set permissions on " & netBootDirectory & "/NBImageInfo.plist to 777"
                
                -- Log To file
                logToFile_(me)
                
                ---- Description----
                -- If we're looking to set a description for this .nbi
                if netBootDescriptionEnabled is true
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist Description"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 334
                    
                    --Log Action
                    set logMe to "Trying to set .nbi description to " & netBootDescription
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Set NetBoot to Description
                    do shell script "defaults write "& quoted form of netBootDirectory & "/NBImageInfo.plist Description -string " & quoted form of netBootDescription user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi Description"
                    
                    -- Log To file
                    logToFile_(me)
                    
                end if
            
                ---- Index ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist Index"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 336
                
                --Log Action
                set logMe to "Trying to set .nbi Index"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Index -int " & netBootImageIndexTextField user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi Index"
                
                -- Log To file
                logToFile_(me)
                
                ---- IsInstall ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist IsInstall value"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 338
                
                --Log Action
                set logMe to "Trying to set .nbi IsInstall value"
                
                -- Log To file
                logToFile_(me)
                
                -- Set IsInstall value
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist IsInstall -bool NO" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi IsInstall value"
                
                -- Log To file
                logToFile_(me)
                
                ---- Name ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist Name"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 340
                
                --Log Action
                set logMe to "Trying to set .nbi Name to " & netBootNameTextField

                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Name -string " & quoted form of netBootNameTextField user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi Name to " & netBootNameTextField
                
                -- Log To file
                logToFile_(me)
            
                ---- Diskless ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist to Diskless"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 342

                --Log Action
                set logMe to "Trying to set .nbi to Diskless"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist  SupportsDiskless -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to Diskless"
                
                -- Log To file
                logToFile_(me)
                
                ---- RootPath ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist RootPath"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 344
                
                --Log Action
                set logMe to "Trying to set .nbi to RootPath"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist RootPath -string NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to RootPath"
                
                -- Log To file
                logToFile_(me)
                
                ---- Serve Over ---
                --Log Action
                set logMe to "Setting NBImageInfo.plist's serve over option"
                
                -- Log To file
                logToFile_(me)
                
                ---- ImageType ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist ImageType"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 346
                
                --Log Action
                set logMe to "Trying to set .nbi to ImageType"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist ImageType -string netboot" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to ImageType"
                
                -- Log To file
                logToFile_(me)
                
                ---- osVersion ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist osVersion"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 348
                
                --Log Action
                set logMe to "Trying to set .nbi to osVersion"
                
                -- Log To file
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist osVersion -string 10.9" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to osVersion"
                
                -- Log To file
                logToFile_(me)
                
                ---- Serve Over ---
                --Log Action
                set logMe to "Setting NBImageInfo.plist's serve over option"
                
                -- Log To file
                logToFile_(me)
                
                -- Set to boolean of value
                set netBootServeOverNFSd to netBootServeOverNFS as boolean
                
                -- If NetBoot Serve Over NFS to true
                if netBootServeOverNFS is true
                
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist to being served over NFS"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 351


                    --Log Action
                    set logMe to "Trying to set .nbi to being served over NFS"
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Set NetBoot Serve over NFS
                    do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Type -string NFS" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi to being served over NFS"
                    
                    -- Log To file
                    logToFile_(me)
                
                else
                
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist to being served over HTTP"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 351


                    --Log Action
                    set logMe to "Trying to set .nbi to being served over HTTP"
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Set NetBoot Serve over HTTP
                    do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Type -string HTTP" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi to being served over NFS"
                    
                    -- Log To file
                    logToFile_(me)
                    
                end if

            ---- Enabled ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NBImageInfo.plist to Enabled"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 354

            --Log Action
            set logMe to "Trying to set .nbi to Enabled"

            -- Log To file
            logToFile_(me)

            -- Set NetBoot to Diskless
            do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist IsEnabled -bool YES" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set .nbi to Enabled"

            -- Log To file
            logToFile_(me)

            ---- Fix Plist ----
            -- Correct ownership
            do shell script "chown -R root:wheel " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set ownership to root:wheel on " & netBootDirectory & "/NBImageInfo.plist"

            -- Log To file
            logToFile_(me)

            -- Correct permissions
            do shell script "chmod -R 755 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set permissions to 755 on " & netBootDirectory & "/NBImageInfo.plist"

            -- Log To file
            logToFile_(me)

            ---- Revert NBImageInfo.plist permissionchanges ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Changing permissions on NBImageInfo.plist"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 357

            --Log Action
            set logMe to "Trying to correct permissions on " & netBootDirectory & "/NBImageInfo.plist"

            -- Log To file
            logToFile_(me)

            -- Making NBImageInfo.plist writable
            do shell script "chmod 644 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set permissons on " & netBootDirectory & "/NBImageInfo.plist to 644"

            -- Log To file
            logToFile_(me)

            -- Disable Spotlight Indexing on NetBoot.dmg
            disableSpotlight_(me)

        on error
            
            -- Display error to user
            display dialog "Error: Writing NBImageInfo.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end supdateNBImageInfoPlist_

    -- Disable Spotlight Indexing on NetBoot.dmg
    on disableSpotlight_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling Spotlight Indexing"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 365
            
            --Log Action
            set logMe to "Trying to disable Spotlight Indexing on " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Disable Spotlight Indexing
            do shell script "mdutil -i off " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Disabled Spotlight Indexing on " & netBootDmgMountPath

            -- Log To file
            logToFile_(me)
            
            -- Get size of NetBoot.dmg
            getNetBootDmgSize_(me)
            
        on error
        
            -- Display error to user
            display dialog "Error: Disabling Spolight Indexing" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
        
        end try
        
    end disableSpotlight_

    -- Get size of NetBoot.dmg
    on getNetBootDmgSize_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Getting NetBoot.dmg size"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 370
            
            --Log Action
            set logMe to "Trying to get the Total size of " & quoted form of netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Get total size of NetBoot.dmg
            set netBootDmgTotalSize to do shell script "diskutil info " & quoted form of netBootDmgMountPath & " | grep \"Total Size\" | awk '{ print $3 }'"
            
            --Log Action
            set logMe to "Total size of " & quoted form of netBootDmgMountPath & "is " & netBootDmgTotalSize & "GB"
            
            -- Log To file
            logToFile_(me)
            
            -- Get the value of the free space available on NetBoot.dmg
            set netBootDmgFreeSpace to do shell script "diskutil info " & quoted form of netBootDmgMountPath & " | grep \"Volume Free Space\" | awk '{ print $4 }'"
            
            --Log Action
            set logMe to "There is " & netBootDmgFreeSpace & "GB space free on " & quoted form of netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            considering numeric strings
                
                -- Get the space used on NetBoot.dmg
                set netBootDmgUsedSpace to (netBootDmgTotalSize - netBootDmgFreeSpace)
                
            end considering
            
            --Log Action
            set logMe to "Used space on  " & quoted form of netBootDmgMountPath & "is " & netBootDmgUsedSpace & "GB"
            
            -- Log To file
            logToFile_(me)
            
            considering numeric strings
                
                -- Set NetBoot.dmg's size to + 1GB of what is needed
                set netBootDmgResize to netBootDmgUsedSpace + 1
                
            end considering
            
            --Log Action
            set logMe to "NetBoot.reduced.dmg will need to be around " & netBootDmgResize & "GB"
            
            -- Log To file
            logToFile_(me)
            
            -- Set to boolean of value
            set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
            set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
            
            -- If we're resizing the NetBoot Image
            if netBootImageReduceEnabled is true
                
                ---- Reduce NetBoot Image
                createReducedNetBootImage_(me)
                
            else if netBootImageExpandEnabled is true
                
                -- Expands the NetBoot.dmg
                expandNetBootDMG_(me)
            
            else
            
                -- Set netBootCreationSuccessful value, for notifying later
                set my netBootCreationSuccessful to true
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
            
            end if
            
        on error
            
            -- Display error to user
            display dialog "Error: Calculating space needed" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end getNetBootDmgSize_

    ---- Reduce NetBoot Image
    on createReducedNetBootImage_(sedner)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Creating a smaller NetBoot.dmg"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 380
        
        --Log action
        set logMe to "Trying to create NetBoot.reduced.dmg in " & netBootDirectory
        
        -- Log To file
        logToFile_(me)
        
        -- Set to text value, to avoid an issue when name changed
        set netBootNameTextField to netBootNameTextField as text
        
        try
            
            -- Create a the NetBoot.dmg
            do shell script "hdiutil create " & quoted form of netBootDirectory & "/NetBoot.reduced -size " & netBootDmgResize & "g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"SPUD\" -fs \"HFS+\" -stretch 500g" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully created NetBoot.reduced.dmg in " & quoted form of netBootDirectory
            
            -- Log To file
            logToFile_(me)
            
            -- Mount the NetBoot.dmg
            mountReducedNetBootDmg_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Failed to create NetBoot.reduced.dmg" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end createReducedNetBootImage_

    -- Mount the NetBoot.reduced.dmg
    on mountReducedNetBootDmg_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Mounting NetBoot.reduced.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 390
            
            --Log Action
            set logMe to "Trying to mount: " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg"
            
            -- Log To file
            logToFile_(me)
            
            -- Mount the NetBoot.dmg & get the mount path
            set netBootReducedDmgMountPath to do shell script "hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Mounted to: " & netBootReducedDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Copy NetBoot.dmg's content to NetBoot.reduced.dmg
            copyNetBootDmgToNetBootReducedDmg_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Cannot mount NetBoot.reduced.dmg" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end mountReducedNetBootDmg_

    -- Copy NetBoot.dmg's content to NetBoot.reduced.dmg
    on copyNetBootDmgToNetBootReducedDmg_(sender)
        
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying the contents of the NetBoot.dmg to NetBoot.reduced.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 400
            
            --Log action
            set logMe to "Copying contents of " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Copy contents of the SelectedOSdmg to NetBootdmg
            do shell script "ditto " & quoted form of netBootDmgMountPath & " " & quoted form of netBootReducedDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully copied " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Updates NBImageInfo.plist post reduction
            postReduceupdateNBImageInfoPlist_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Cannot copy contents of " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end copyNetBootDmgToNetBootReducedDmg_

    -- Updates NBImageInfo.plist post reduction
    on postReduceupdateNBImageInfoPlist_(sender)
        
        try
            
            ---- Make NBImageInfo.plist writable ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Amending NBImageInfo.plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 410
            
            --Log Action
            set logMe to "Trying to change permissions on " & netBootDirectory & "/NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Making NBImageInfo.plist writable
            do shell script "chmod 777 "  & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set permissions on " & netBootDirectory & "/NBImageInfo.plist to 777"
            
            -- Log To file
            logToFile_(me)
            
            ---- RootPath ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Updating NBImageInfo.plist RootPath"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 413
            
            --Log Action
            set logMe to "Trying to set .nbi to RootPath"
            
            -- Log To file
            logToFile_(me)
            
            -- Set NetBoot to Diskless
            do shell script "defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist RootPath -string NetBoot.reduced.dmg" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set .nbi to RootPath"
            
            -- Log To file
            logToFile_(me)
            
            ---- Fix Plist ----
            -- Correct ownership
            do shell script "chown -R root:wheel " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set ownership to root:wheel on " & netBootDirectory & "/NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Correct permissions
            do shell script "chmod -R 755 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set permissions to 755 on " & netBootDirectory & "/NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            ---- Revert NBImageInfo.plist permissionchanges ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Changing permissions on NBImageInfo.plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 416
            
            --Log Action
            set logMe to "Trying to correct permissions on " & netBootDirectory & "/NBImageInfo.plist"
            
            -- Log To file
            logToFile_(me)
            
            -- Making NBImageInfo.plist writable
            do shell script "chmod 644 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set permissons on " & netBootDirectory & "/NBImageInfo.plist to 644"
            
            -- Log To file
            logToFile_(me)
            
            --Delete NetBoot.dmg
            deleteNetBootDmg_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Updating RootPath in NBImageInfo.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end postReduceupdateNBImageInfoPlist_

    --Delete NetBoot.dmg
    on deleteNetBootDmg_(sender)

        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Unmounting NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 420
            
            ---- Unmount NetBoot.dmg ----
            try
                
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                
                -- Log To file
                logToFile_(me)
                
                -- Detach Volume
                do shell script "hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
                
            end try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 425
            
            --Log action
            set logMe to "Deleting " & quoted form of netBootDirectory & "/NetBoot.dmg"
            
            -- Log To file
            logToFile_(me)
            
            -- Create a the NetBoot.dmg
            do shell script "rm -f " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Deleted " & quoted form of netBootDirectory & "/NetBoot.dmg"
            
            -- Log To file
            logToFile_(me)
            
            -- Expands the NetBoot.dmg
            expandNetBootDMG_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Failed to create NetBoot.reduced.dmg" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try

    end deleteNetBootDmg_

    -- Expands the NetBoot.dmg
    on expandNetBootDMG_(sender)
        
        -- If we're expanding the NetBoot.dmg
        if netBootImageExpandEnabled is true
        
            -- If we resized the NetBoot Image
            if netBootImageReduceEnabled is true then
                
                try
            
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Expanding NetBoot.reduced.dmg"
                
                    delay 0.1
                
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 430
                    
                    considering numeric strings
                        
                        -- Set Netboot.reduced.dmg to required space + selected expansion value
                        set netBootExpandedTotalSize to netBootDmgUsedSpace + netBootImageExpandValue
                    
                    end considering
                    
                    ---- Unmount NetBoot.reduced.dmg ----
                    try
                        
                        --Log Action
                        set logMe to "Trying to detach " & netBootReducedDmgMountPath
                        
                        -- Log To file
                        logToFile_(me)
                        
                        -- Detach Volume
                        do shell script "hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
                        
                    end try
                    
                    -- Set to text
                    set netBootExpandedTotalSize to netBootExpandedTotalSize as text
                    set netBootDirectory to netBootDirectory as text
                    
                    --Log Action
                    set logMe to "Trying to expand " & netBootDirectory & "/NetBoot.reduced.dmg to " & netBootExpandedTotalSize & "GB"
                    
                    -- Log To file
                    logToFile_(me)

                    -- Expand NetBoot.reduced.dmg by the value given before
                    do shell script "hdiutil resize -size " & netBootExpandedTotalSize & "g " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    -- Set netBootCreationSuccessful value, for notifying later
                    set my netBootCreationSuccessful to true
                    
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                
                on error
                
                    -- Display error to user
                    display dialog "Error: Expanding NetBoot.reduced.dmg" with icon 0 buttons {"OK"}
                    
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                
                end try
                
            else
        
                try
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Expanding NetBoot.dmg"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 430
                    
                    considering numeric strings
                        
                        -- Set NetBoot.dmg to required space + selected expansion value
                        set netBootExpandedTotalSize to netBootDmgUsedSpace + netBootImageExpandValue
                        
                    end considering
                    
                    ---- Unmount NetBoot.dmg ----
                    try
                        
                        --Log Action
                        set logMe to "Trying to detach " & netBootDmgMountPath
                        
                        -- Log To file
                        logToFile_(me)
                        
                        -- Detach Volume
                        do shell script "hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
                        
                    end try
                    
                    -- Set to text
                    set netBootExpandedTotalSize to netBootExpandedTotalSize as text
                    set netBootDirectory to netBootDirectory as text
                    
                    --Log Action
                    set logMe to "Trying to expand " & netBootDirectory & "/NetBoot.dmg to " & netBootExpandedTotalSize & "GB"
                    
                    -- Log To file
                    logToFile_(me)
                    
                    -- Expand NetBoot.dmg by the value given before
                    do shell script "hdiutil resize -size " & netBootExpandedTotalSize & "g " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    -- Set netBootCreationSuccessful value, for notifying later
                    set my netBootCreationSuccessful to true
                    
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                    
                on error
                    
                    -- Display error to user
                    display dialog "Error: Expanding NetBoot.dmg" with icon 0 buttons {"OK"}
                    
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                    
                end try
                
            end if
        
        else
        
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to true
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)

        end if
            
    end expandNetBootDMG_

    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
    on tidyUpTimeKids_(sender)
        
        -- close build process window
        showBuildProcessWindow's orderOut_(null)
        
        -- Reset Main Window Text Field & Cog
        resetMainWindowLabel_(me)
        
        -- Re-enable main windows buttons
        set my optionWindowEnabled to true
        
        -- Reset build Process ProgressBar
        set my buildProccessProgressBar to 0
        
        -- High fives all round!
        weDitIt_(me)
            
    end tidyUpTimeKids_


    -- High fives all round!
    on weDitIt_(sender)
        
        -- If we were successful
        if netBootCreationSuccessful is true
        
            --Log Action
            set logMe to "NetBoot successfully created at the following location " & netBootDirectory
            
            -- Log To file
            logToFile_(me)
        
            -- Notify on completion
            display dialog "NetBoot successfully created at the following location:" & return & return & netBootDirectory with icon 1 buttons {"OK"}
            
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to false
        
        end if
        
    end weDitIt_
	
    -- Insert code here to do any housekeeping before your application quits
	on applicationShouldTerminate_(sender)
        
        -- Disable main windows buttons
        set my optionWindowEnabled to false
        
        -- Update buildProcessLogTextField to show path to todays log
        set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
        
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Detaching any Volumes we mounted"
        
        -- Set build Process ProgressBar to indeterminate & animated
        set my buildProccessProgressBarIndeterminate to true
        set my buildProccessProgressBarAniminate to true
        
        delay 0.1
        
        ---- Unmount NetBoot.dmg ----
        try
            
            --Log Action
            set logMe to "Trying to detach " & netBootDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Detach Volume
            do shell script "hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
            
        end try
        
        ---- Unmount NetBoot.reduced.dmg ----
        try
            
            --Log Action
            set logMe to "Trying to detach " & netBootReducedDmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Detach Volume
            do shell script "hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
            
        end try
        
        ---- Unmount OS.dmg ----
        try
            
            --Log Action
            set logMe to "Trying to detach " & selectedOSdmgMountPath
            
            -- Log To file
            logToFile_(me)
            
            -- Detach Volume
            do shell script "hdiutil detach " & quoted form of selectedOSdmgMountPath & " -force"
            
        end try
        
        -- close build process window
        showBuildProcessWindow's orderOut_(null)
        
        -- Terminate App
		return current application's NSTerminateNow
        
	end applicationShouldTerminate_
	
end script