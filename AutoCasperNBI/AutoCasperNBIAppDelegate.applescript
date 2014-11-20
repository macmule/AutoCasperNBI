--
--  AppDelegate.applescript
--  AutoCasperNBI
--
--  Created by Ben Toms on 04/06/2014.
--  Copyright (c) 2014 macmule. All rights reserved.
--

script AutoCasperNBIAppDelegatel

--- PROPERTIES ---

--- Classes
	property parent : class "NSObject"
    
--- Objects
    property defaults : ""
    property hostMacOSVersion : ""
    property hostMacOSBuildVersion : ""
    property mainWindow : ""
    property optionsWindow : ""
    property showBuildProcessWindow : ""
    property selectedOSdmgPath : ""
    property selectedOSdmgMountPath : ""
    property selectedOSdmgVersion : ""
    property selectedAppPath : ""
    property selectedAppTextField : ""
    property selectedAppBundleName : ""
    property selectedCasperImagingAppVersion : ""
    property jssURL : ""
    property enteredJSSURLTextField : ""
    property jssURLHtml : ""
    property jssVersion : ""
    property jssVersionCut : ""
    property selectOSDMG : ""
    property selectedOSDMGTextField : ""
    property netBootNameTextField : ""
    property netBootImageIndexTextField : ""
    property netBootImageIndexLabel : ""
    property netBootDescription : ""
    property applescriptsDelims : ""
    property startTag : ""
    property endTag : ""
    property hostMacOSVersionToDelim : ""
    property hostMacOSVersionMajor : ""
    property selectedOSdmgVersionToDelim : ""
    property selectedOSdmgVersionMajor : ""
    property jssAndCasperImagingVersionCheckTextfield : ""
    property netBootImageIndexMinValue : ""
    property netBootImageIndexMaxValue : ""
    property netBootImageIndex : ""
    property ardUsername : ""
    property ardPassword : ""
    property vncPassword : ""
    property userName : ""
    property longUserName : ""
    property netBootServeOptionSelected : ""
    property netBootServeOver : ""
    property customDesktopImagePath : ""
    property customDesktopImageLabel : ""
    property pathToResources : ""
    property buildProcessTextField : ""
    property tempUUID : ""
    property netBootDmgMountPath : ""
    property selectedAppPathToCopy : ""
    property downloadedJSSCACert : ""
    property variableVariable : ""
    property buildDate : ""
    property ardPasswordEncoded : ""
    property ardUsernameEncoded : ""
    property netBootCreatedPath : ""
    property desktopImageExists : ""
    property netBootImageExpandValue : ""
    property selectedCasperImagingAppVersionToDelim : ""
    property selectedCasperImagingAppVersionMajor : ""
    property selectedCasperImagingAppVersionMinor : ""
    property jssVersionToDelim : ""
    property jssVersionMajor : ""
    property jssVersionMinor : ""
    property myLogFile : ""
    property timeStamp : ""
    property logMe : ""
    property netBootSelectedLocation : ""
    property logDate : ""
    property buildProcessLogTextField : ""
    property versionOfAutoCasperNBI : ""
    property netBootDirectory : ""
    property adminUserName : ""
    property adminUsersPassword : ""
    property adminUserWindow : ""
    property netBootDmgTotalSize : ""
    property netBootDmgFreeSpace : ""
    property netBootDmgUsedSpace : ""
    property netBootReducedDmgMountPath : ""
    property netBootExpandedTotalSize : ""
    property userNotifyWindow : ""
    property userNotifyError : ""
    property userNotifySuccess : ""
    property inputLayoutID : ""
    property languageCode : ""
    property additionalPKGsArray : ""
    property selectedPKGsPath : ""
    property selectedObjects : ""
    property selectedPKGsColour : ""
    property additionalCertsArray : ""
    property selectedCertsPath : ""
    property selectedCertsColour : ""
    property keyboardLayoutInputSourceID : ""
    property letters : ""
    property freeSpaceOnVolume : ""
    property spaceNeeded : ""
    property fullPath : ""
    property volname : ""
    property freeSpaceOnVolumeUnit : ""
    property selectedVolume : ""
    
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
    property timeServerOptionsEnabled : false
    property createReadOnlyDMG : false
    property userNotifyErrorHidden : true
    property userNotifySuccessHidden : true
    property optionsWindowPreCheckPassed : true
    property buildButtonPreCheckPassed : true
    property closeButtonPreCheckPassed : true
    property simpleFinderEnabled : false
    property servedFromNetSUS : false
    property logNewLine : true
    property isAdminUser : false
    property pkgsMissing : false
    property certsMissing : false
    property yosemiteOS : false
    property buildPreCheckPassed : false
    
    -- Others
    property requiredSpace : 20
    property buildProccessProgressBar : 0
    property selectedOSdmgTotalSize : 0
    property selectedOSdmgFreeSpace : 0
    property selectedOSdmgUsedSpace : 0
    property netBootDmgRequiredSize : 0
    property netBootDmgResize : 0
    property timeServerSelected : "time.apple.com"
    property timeZoneSelected : "Americas/Los_Angeles"
    property languageSelected : "English : en"
    property inputLanguageSelected : "U.S."
    property NSColor : class "NSColor" of current application
    property pkgList : {}
    property thePKGs : {}
    property certList : {}
    property theCerts : {}
    property additionalCerts : {}
    property additionalPKGs : {}
    
--- HANDLERS ---

    -- To be run at launch
    on startYourEngines_(sender)
        -- Get AutoCasperNBI version
        set versionOfAutoCasperNBI to get version of application "AutoCasperNBI"
        -- Log AutoCasperNBI version
        set logMe to  "AutoCasperNBI " & versionOfAutoCasperNBI
        logToFile_(me)
        -- Get OS of host mac to verify that we can create an .nbi from supplied OS.dmg
        set my hostMacOSVersion to (do shell script "/usr/bin/sw_vers -productVersion")
        -- Get host macs Build version for logging/debugging
        set my hostMacOSBuildVersion to (do shell script "/usr/bin/sw_vers -buildVersion")
        -- Log OS version & build of host mac
        set logMe to  "Running on OS " & hostMacOSVersion & " (" & hostMacOSBuildVersion & ")"
        logToFile_(me)
        -- If we're running on 10.10, enable Yosemite icons
        if my hostMacOSVersion begins with "10.10" then
            set my yosemiteOS to true
        else
            set my yosemiteOS to false
        end if
        -- Get username of user running AutoCasperNBI
        set userName to short user name of (system info)
        set logMe to "Launched by " & userName
        logToFile_(me)
        -- Get a UUID for folder path
        set tempUUID to do shell script "/usr/bin/uuidgen"
        set logMe to "UUID " & tempUUID
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
                                            servedFromNetSUS:servedFromNetSUS,  ¬
                                            netBootImageIndexLoadBalanced:netBootImageIndexLoadBalanced, ¬
                                            netBootImageExpandEnabled:netBootImageExpandEnabled, ¬
                                            netBootImageExpandValue:netBootImageExpandValue, ¬
                                            netBootImageReduceEnabled:netBootImageReduceEnabled, ¬
                                            netBootServeOverNFS:netBootServeOverNFS, ¬
                                            vncEnabled:vncEnabled, ¬
                                            vncPassword:vncPassword, ¬
                                            timeServerSelected:timeServerSelected, ¬
                                            timeZoneSelected:timeZoneSelected, ¬
                                            languageSelected:languageSelected, ¬
                                            inputLanguageSelected:inputLanguageSelected, ¬
                                            installRCNetBootSelected:installRCNetBootSelected, ¬
                                            createReadOnlyDMG:createReadOnlyDMG, ¬
                                            simpleFinderEnabled:simpleFinderEnabled, ¬
                                            additionalCerts:additionalCerts, ¬
                                            additionalPKGs:additionalPKGs})
    end regDefaults_
    
    -- Get values from plist
	on retrieveDefaults_(sender)
        tell defaults to set my ardEnabled to objectForKey_("ardEnabled") as boolean
        tell defaults to set my ardUsername to objectForKey_("ardUsername") as string
        tell defaults to set my ardPassword to objectForKey_("ardPassword") as string
        tell defaults to set my customDesktopImageEnabled to objectForKey_("customDesktopImageEnabled") as boolean
        tell defaults to set my customDesktopImagePath to objectForKey_("customDesktopImagePath") as string
        tell defaults to set my jssURL to objectForKey_("jssURL") as string
        tell defaults to set my netBootDescriptionEnabled to objectForKey_("netBootDescriptionEnabled") as boolean
        tell defaults to set my servedFromNetSUS to objectForKey_("servedFromNetSUS") as boolean
        tell defaults to set my netBootImageIndexLoadBalanced to objectForKey_("netBootImageIndexLoadBalanced") as boolean
        tell defaults to set my netBootImageExpandEnabled to objectForKey_("netBootImageExpandEnabled") as boolean
        tell defaults to set my netBootImageExpandValue to objectForKey_("netBootImageExpandValue") as string
        tell defaults to set my netBootImageReduceEnabled to objectForKey_("netBootImageReduceEnabled") as boolean
        tell defaults to set my netBootServeOverNFS to objectForKey_("netBootServeOverNFS") as boolean
        tell defaults to set my vncEnabled to objectForKey_("vncEnabled") as boolean
        tell defaults to set my vncPassword to objectForKey_("vncPassword") as string
        tell defaults to set my timeServerSelected to objectForKey_("timeServerSelected") as string
        tell defaults to set my timeZoneSelected to objectForKey_("timeZoneSelected") as string
        tell defaults to set my languageSelected to objectForKey_("languageSelected") as string
        tell defaults to set my inputLanguageSelected to objectForKey_("inputLanguageSelected") as string
        tell defaults to set my installRCNetBootSelected to objectForKey_("installRCNetBootSelected") as boolean
        tell defaults to set my createReadOnlyDMG to objectForKey_("createReadOnlyDMG") as boolean
        tell defaults to set my simpleFinderEnabled to objectForKey_("simpleFinderEnabled") as boolean
        tell defaults to set my additionalCerts to objectForKey_("additionalCerts") as list
        tell defaults to set my additionalPKGs to objectForKey_("additionalPKGs") as list
    end retrieveDefaults_
    
    ----- BUTTON HANDLERS ----
    -- Open Options window
    on showOptionsWindow_(sender)
        -- check the JSS URL
        checkJSSURL_(me)
        -- reset value
        set optionsWindowPreCheckPassed to true
        -- Make sure a name is specified for the NetBoot Image, error if not.
        netBootName_(me)
        -- Error if incorrect value specified
        netBootImageIndexCheck_(me)
        -- Set to boolean
        set optionsWindowPreCheckPassed to optionsWindowPreCheckPassed as boolean
        -- If we ok to proceed
        if optionsWindowPreCheckPassed is true then
            -- Disable main windows buttons
            set my optionWindowEnabled to false
             -- reload options from plist
            retrieveDefaults_(me)
            -- Set NetBoot Description
            enablenetBootDescription_(me)
            -- Check that image selected for desktop exists
            checkDesktopImage_(me)
            -- Check additional pkgs array, & amend accordingly
            checkAdditionalPKGs_(me)
            -- Check additional Certs array, & amend accordingly
            checkAdditionalCerts_(me)
            -- activate options window
            activate
            optionsWindow's makeKeyAndOrderFront_(null)
        end if
    end showOptionsWindow_
    
    -- Cancel & tidy up
    on cancelBuildProcess_(sender)
        --Log Action
        set logMe to "Cancelling..."
        logToFile_(me)
        -- Detach mounted volumes
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
    
    ---- HELP MENU ----
    -- Open the User Guide
    on openUserGuide_(sender)
        open location "https://macmule.com/AutoCasperNBI"
    end openUserGuide_
    
    -- Open default browser to the below
    on logAnIssue_(sender)
        open location "https://github.com/macmule/AutoCasperNBI/issues"
    end logAnIssue_

----- LAUNCHING -----

    -- Insert code here to initialize your application before any files are opened
    on applicationWillFinishLaunching_(aNotification)
        -- Date for log file
        set logDate to do shell script "/bin/date +%F"
        -- Get OS of host mac & user running the app
        startYourEngines_(me)
        -- populate plist file with defaults (will not overwrite non-default settings))
        regDefaults_(me)
        -- retrieve plist values
        retrieveDefaults_(me)
        -- check for passwords, enable check boxes if found in plist
        checkPasswords_(me)
    end applicationWillFinishLaunching_
    
    -- On launch as for administrative credentials & validate
    on adminCheck_(sender)
        -- Checking variable
        set isAdminUser to false
        -- Set to text
        set adminUserName to adminUserName as text
        try
            -- Check to see if supplied User is a member of the Administrator group
            if ("80" is not in (do shell script "/usr/bin/id " & adminUserName & " -G")) then
                --Log Action
                set logMe to "User " & adminUserName & " is not a part of the Administrators group"
                logToFile_(me)
            else
                --Log Action
                set logMe to "User " & adminUserName & " is part of the Administrators group"
                logToFile_(me)
                -- Checking variable
                set isAdminUser to true
            end if
        on error
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Authentication failed. Please retry the administrative credentials."
            --Log Action
            set logMe to "Authentication failed for user: " & adminUserName
            logToFile_(me)
            -- Notify of errors or success
            userNotify_(me)
        end try
        
        -- If the User is an Administrator
        if isAdminUser is true then
            -- Set to text
            set adminUsersPassword to adminUsersPassword as text
            try
                -- Perform a check of privileges
                do shell script "/bin/ls " user name adminUserName password adminUsersPassword with administrator privileges
                -- Open the Main Window
                openMainWindow_(me)
            on error
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Authentication failed. Please retry the administrative credentials."
                set isAdminUser to false
                -- Notify of errors or success
                userNotify_(me)
                --Log Action
                set logMe to "Authentication failed for user: " & adminUserName
                logToFile_(me)
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
        -- Get time & date of command execution for log file
        set timeStamp to do shell script "/bin/date"
        -- Set to boolean of value
        set logNewLine to logNewLine as boolean
        -- If we're to create a newline ion the log
        if logNewLine is true then
            try
                -- Create an empty new line for log if exists
                do shell script "/bin/echo \"\" >> ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
            end try
        end if
        try
            -- Write message to log file
            do shell script "/bin/echo " & timeStamp & space & quoted form of logMe & ">> ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
        on error
            -- Create directory if doesn't exist
            do shell script "/bin/mkdir ~/Library/Logs/AutoCasperNBI/"
            -- Write message to log file
            do shell script "/bin/echo " & timeStamp & space & quoted form of logMe & ">> ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
        end try
        -- Set to false so we don't create a newline until next time the app is run
        set logNewLine to false
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
        logToFile_(me)
        -- Update label to show we're doing stuff
        set my selectedOSDMGTextField to "Examining..."
        -- Display the cog to reinforce we're busy
        set my cogOSDMG to true
        -- Delay needed to update label
        delay 0.1
        -- Set to front window
        tell application "System Events" to set frontmost of process "AutoCasperNBI" to true
        --  Try & mount dropped file
        set selectedOSdmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of selectedOSdmgPath & " -nobrowse -owners on | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' | head -1" as quoted form
        set logMe to "Mounted to: " & selectedOSdmgMountPath
        -- If selectedOSdmgMountPath, then we've failed to mount as it's not a dmg.
        if selectedOSdmgMountPath is equal to missing value then
            -- Update text field with error
            set my selectedOSDMGTextField to "Cannot mount dmg"
            -- Reset OSDMG Icons
            set my exclamationRedOSDMG to true
        else
            -- If a dmg, mount & try & read /System/Library/CoreServices/SystemVersion.plist
            try
                -- Try & get OS version
                set selectedOSdmgVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductVersion"
                -- Try & get build version
                set selectedOSBuilddmgVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductBuildVersion"
                -- If we have both OS & build versions, display them
                set my selectedOSDMGTextField to "Mac OS " & selectedOSdmgVersion & " (" & selectedOSBuilddmgVersion & ")"
                -- Reset OSDMG Icons
                doResetOSDMGIcons_(me)
                -- If we're building a 10.10 NBI, enable Yosemite icons
                if selectedOSdmgVersion begins with "10.10" then
                    set my yosemiteOS to true
                else
                    set my yosemiteOS to false
                end if
                -- Display green check icon
                set my checkGreenOSDMG to true
                -- Set netBoot Name
                set my netBootNameTextField to selectedOSdmgVersion & " AutoCasperNBI"
                -- Correct NetBoot Name, removing spaces if to be hosted on a NetSUS
                servedFromNetSUS_(me)
                -- Set Image Index
                netBootImageIndex_(me)
                -- If a dmg but cannot read /System/Library/CoreServices/SystemVersion.plist
            on error
                --Log Action
                set logMe to "Cannot read OS Version"
                logToFile_(me)
                -- Error advising we cannot get the OS version from dmg
                set my selectedOSDMGTextField to "Cannot read OS Version"
                -- Reset OSDMG Icons & hide cog
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
        -- See if pre-reqs have been met
        checkIfReadyToProceed_(me)
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
        set selectedAppBundleName to do shell script "/usr/bin/defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleName"
        --Log Action
        set logMe to "Bundle Name: " & selectedAppBundleName
        logToFile_(me)
        -- If Bundle Name is Casper Imaging, proceed to get version
        if selectedAppBundleName is equal to "Casper Imaging" then
            try
                -- If Casper Imaging, return version
                set selectedCasperImagingAppVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleGetInfoString"
                --Log Action
                set logMe to "Casper Imaging Version: " & selectedCasperImagingAppVersion
                logToFile_(me)
                -- Set label to Casper Imaging version
                set my selectedAppTextField to "Casper Imaging " & selectedCasperImagingAppVersion
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                -- Set Image Index (reset index to make sure we don't create images with the same)
                netBootImageIndex_(me)
                -- Display green tick
                set my checkGreenSelectedApp to true
                -- Compare JSS & Casper Imaging Versions
                checkJSSURL_(me)
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
            --Log Action
            set logMe to "Select Casper Imaging.app"
            logToFile_(me)
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

    -- Check the JSS URL details & try & get version of the JSS
    on checkJSSURL_(aNotification)
        -- Make sure jssURL has a value before we proceed
        if my jssURL as string is not equal to "" then
            -- Update plist
            tell defaults to setObject_forKey_(jssURL, "jssURL")
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
                logToFile_(me)
                -- Try & get URL using insecure method, this way it will work with or without a valid SSL cert
                set jssURLHtml to do shell script "/usr/bin/curl -k " & jssURL & "/jss.html"
                --Log Action
                set logMe to "Received JSS version"
                logToFile_(me)
                -- Run Handler
                getJSSVersion_(me)
            -- Error if we cannot get the JSS version
            on error
                    if jssURL is "missing value" then
                        -- Reset JSS URL icons
                        doResetJSSURLIcons_(me)
                        -- Blank JSS Text Field
                        set my enteredJSSURLTextField to missing value
                        -- Delete jssURL from plist
                        tell defaults to removeObjectForKey_("jssURL")
                        -- Reset JSS URL
                        set jssURL to ""
                    else
                        --Log Action
                        set logMe to "Cannot get JSS Version"
                        logToFile_(me)
                        -- Reset JSS URL icons
                        doResetJSSURLIcons_(me)
                        -- Error if cannot get JSS Version
                        set logMe to "Cannot get JSS Version"
                        logToFile_(me)
                        -- Set JSS exclaimation icon to show
                        set my exclamationRedJSSURL to true
                        -- Update text field with error
                        set my enteredJSSURLTextField to "Cannot get JSS version"
                    end if
            end try
        else
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            -- Blank JSS Text Field
            set my enteredJSSURLTextField to missing value
            -- Delete jssURL from plist
            tell defaults to removeObjectForKey_("jssURL")
        end if
    end checkJSSURL_

    -- Get JSS Version from given URL
    on getJSSVersion_(sender)
        
        --Log Action
        set logMe to "Checking JSS Version from " & jssURL
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
            logToFile_(me)
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
            -- Update lable with JSS Version
            set my enteredJSSURLTextField to "JSS " & jssVersion

            -- Compare JSS & Casper Imaging Versions
            checkJSSAndImagingVersions_(me)

            -- Delay needed to update label
            delay 0.1
            
        -- Error if there is an issue
        on error
            
            -- Error if cannot get JSS Version
            set logMe to "Cannot get JSS Version"
            logToFile_(me)
            
            -- Reset JSS URL icons
            doResetJSSURLIcons_(me)
            
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
            
            -- Warn if major version diff
            set logMe to "Major Version Difference"
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
                logToFile_(me)
                
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                
                -- Reset JSS URL icons
                doResetJSSURLIcons_(me)
                
                set my disableOptionsAndBuild to false
                
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
            -- Correct NetBoot Name, removing spaces if to be hosted on a NetSUS
            servedFromNetSUS_(me)
            -- Display error to user
            display dialog "Please select a Name for the NetBoot Image" with icon 0 buttons {"OK"}
            --Log Action
            set logMe to "Error: Name required for NetBoot Image"
            logToFile_(me)
            -- Set to false so we don't proceed showing options window
            set optionsWindowPreCheckPassed to false
            -- Set to false so we don't proceed with build
            set buildButtonPreCheckPassed to false
        else
            -- Correct NetBoot Name, removing spaces if to be hosted on a NetSUS
            servedFromNetSUS_(me)
        end if
    end netBootName_

    -- Correct NetBoot Name, removing spaces if to be hosted on a NetSUS
    on servedFromNetSUS_(sender)
        
        -- Set netBootImageIndexLoadBalanced to boolean of value
        set servedFromNetSUS to servedFromNetSUS as boolean
        
        -- If true, remove spaces from NetBoot Name
        if servedFromNetSUS is true then
            
            -- Set netBootNameTextField to text of value
            set my netBootNameTextField to netBootNameTextField as text

            -- Remove spaces from NetBoot Name
            set my netBootNameTextField to words of netBootNameTextField as string
            
            --Log Action
            set logMe to "NetBoot Name: " & netBootNameTextField
            logToFile_(me)

        else
        
            --Log Action
            set logMe to "NetBoot Name: " & netBootNameTextField
            logToFile_(me)
            
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(servedFromNetSUS, "servedFromNetSUS")
        
    end servedFromNetSUS
            
    -- Bound to "Will be served from more than one server"
    on netBootImageIndex_(sender)
        -- Set netBootImageIndexLoadBalanced to boolean of value
        set netBootImageIndexLoadBalanced to netBootImageIndexLoadBalanced as boolean
        -- Set options depending on checkbox
        if netBootImageIndexLoadBalanced is true then
            --Log Action
            set logMe to "NetBoot is to be hosted on multiple servers."
            logToFile_(me)
            -- Set min & max values for Index
            set netBootImageIndexMinValue to 4096 as integer
            set netBootImageIndexMaxValue to 65535 as integer
        else
            --Log Action
            set logMe to "NetBoot is to be hosted on a single server."
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
            display dialog "Please select an Index between " & netBootImageIndexMinValue & " & " & netBootImageIndexMaxValue with icon 0 buttons {"OK"}
            -- Reset using below function.
            netBootImageIndex_(me)
            -- Set to false so we proceed showing options window
            set optionsWindowPreCheckPassed to false
            -- Set to false so we don't proceed with build
            set buildButtonPreCheckPassed to false
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

    -- Bound to "Enable Description"
    on enablenetBootDescription_(sender)
        --If not enabled, delete from plist
        if netBootDescriptionEnabled is false then
            -- Update plist with selection
            tell defaults to setObject_forKey_(netBootDescriptionEnabled, "netBootDescriptionEnabled")
            --Log Action
            set logMe to "NetBoot description not enabled"
            logToFile_(me)
        else
            --Log Action
            set logMe to "NetBoot description enabled"
            logToFile_(me)
            -- Get Build date (should return localised).
            set buildDate to date string of (current date)
            -- Get the full name of the user running AutoCasperNBI
            set longUserName to long user name of (system info)
            -- If we don't have a JSS URL set, then omit
            if jssURL is equal to "" then
                -- Set NetBoot Description
                set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & ". Created by, " & longUserName & " on: " & buildDate & "."
                --Log Action
                set logMe to "NetBoot description set to " & quoted form of netBootDescription
                logToFile_(me)
            else
                -- Set NetBoot Description
                set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & " pointing to JSS " & jssURL & ". Created by, " & longUserName & " on: " & buildDate & "."
                --Log Action
                set logMe to "NetBoot description set to " & quoted form of netBootDescription
                logToFile_(me)
            end if
            -- Update plist with selection
            tell defaults to setObject_forKey_(netBootDescriptionEnabled, "netBootDescriptionEnabled")
        end if
    end enablenetBootDescriptionTextField_

    -- Verify that the description field has a value & reset & prompt if not
    on netBootDescriptionCheck_(sender)
        -- Set netBootDescriptionEnabled to boolean of value
        set netBootDescriptionEnabled to netBootDescriptionEnabled as boolean
        --If enabled
        if netBootDescriptionEnabled is true then
            -- If the description field is emptied.
            if netBootDescription is equal to missing value then
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
                -- Reset description to auto generated
                enablenetBootDescription_(me)
                -- Display error to user
                display dialog "Please select enter a Description or uncheck Set NetBoot Description" with icon 0 buttons {"OK"}
            end if
        end if
    end netBootDescriptionCheck_

    -- Bound to "Reduce Image Size"
    on netBootImageReduce_(sender)
        -- Set netBootImageReduceEnabled to boolean of value
        set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
        -- Set options depending on checkbox
        if netBootImageReduceEnabled is true then
            --Log Action
            set logMe to "NetBoot Reduce by enabled"
            logToFile_(me)
        else
            --Log Action
            set logMe to "NetBoot Reduce option unchecked"
            logToFile_(me)
        end if
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageReduceEnabled, "netBootImageReduceEnabled")
    end netBootImageReduce_

    -- Bound to "Expand by"
    on netBootImageExpand_(sender)
        -- Set netBootImageExpandEnabled to boolean of value
        set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
        -- Set options depending on checkbox
        if netBootImageExpandEnabled is true then
            --Log Action
            set logMe to "NetBoot expand enabled"
            logToFile_(me)
        else
            --Log Action
            set logMe to "NetBoot expand option unchecked"
            logToFile_(me)
        end if
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageExpandEnabled, "netBootImageExpandEnabled")
    end netBootImageExpand_

    -- Bound to NetBoot Image Resize value
    on netBootImageExpandEnteredValue_(sender)
        -- Set netBootImageExpandEnabled to boolean of value
        set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
        -- If we're expanding the NetBoot Image
        if netBootImageExpandEnabled is true then
            -- If we have a value
            if netBootImageExpandValue is equal to ""
                -- Display error to user
                display dialog "Please select a value to resize the NetBoot Image or deselect \"Expand By\"" with icon 0 buttons {"OK"}
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
            end if
            -- Update plist with selection
            tell defaults to setObject_forKey_(netBootImageExpandValue, "netBootImageExpandValue")
        end if
    end netBootImageExpandEnteredValue_

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
        -- Set to boolean of value
        set ardEnabled to ardEnabled as boolean
        -- If ard enabled
        if ardEnabled is true
            -- If textfield is empty
            if ardUsername is equal to "" then
                -- Delete ardUsername from plist
                tell defaults to removeObjectForKey_("ardUsername")
                -- Display error to user
                display dialog "Please enter a Username for the ARD user or deselect the ARD option" with icon 0 buttons {"OK"}
                --Log Action
                set logMe to "Error: Please enter a Username for the ARD user or deselect the ARD option"
                logToFile_(me)
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
            else
                -- Update plist with selection
                tell defaults to setObject_forKey_(ardUsername, "ardUsername")
                --Log Action
                set logMe to "ARD Username written to plist"
                logToFile_(me)
            end if
        end if
    end checkardUsername_

    -- Check the value entered in the ARD Password textfield
    on checkardPassword_(sender)
        -- Set to boolean of value
        set ardEnabled to ardEnabled as boolean
        -- If ard enabled
        if ardEnabled is true
            -- If textfield is empty
            if ardPassword is equal to "" then
                -- Delete ardPassword from plist
                tell defaults to removeObjectForKey_("ardPassword")
                -- Display error to user
                display dialog "Please enter a password for the ARD user or deselect the ARD option" with icon 0 buttons {"OK"}
                --Log Action
                set logMe to "Error: Please enter a password for the ARD user or deselect the ARD option"
                logToFile_(me)
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
            else
                -- Update plist with selection
                tell defaults to setObject_forKey_(ardPassword, "ardPassword")
                --Log Action
                set logMe to "ARD password written to plist"
                logToFile_(me)
            end if
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
        -- Set to boolean of value
        set vncEnabled to vncEnabled as boolean
        -- If VNC enabled
        if vncEnabled is true
            -- If textfield is empty
            if vncPassword is equal to "" then
                -- Delete vncPassword from plist
                tell defaults to removeObjectForKey_("vncPassword")
                -- Display error to user
                display dialog "Please enter a VNC password, or deselect the VNC option" with icon 0 buttons {"OK"}
                --Log Action
                set logMe to "Error: Please enter a VNC password, or deselect the VNC option"
                logToFile_(me)
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
            else
                -- Set to text of value
                set vncPassword to vncPassword as text
                -- If vncPassword's length is more than 8 characters
                if length of vncPassword is greater than 8
                    -- Delete vncPassword from plist
                    tell defaults to removeObjectForKey_("vncPassword")
                    -- Display error to user
                    display dialog "Please enter a VNC Password that is less than 8 characters" with icon 0 buttons {"OK"}
                    --Log Action
                    set logMe to "Error: Please enter a VNC Password that is less than 8 characters"
                    logToFile_(me)
                    -- Set to false so we don't proceed
                    set closeButtonPreCheckPassed to false
                else
                    -- Update plist with selection
                    tell defaults to setObject_forKey_(vncPassword, "vncPassword")
                    --Log Action
                    set logMe to "VNC password written to plist"
                    logToFile_(me)
                end if
            end if
        end if
    end checkvncPassword_

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
            tell defaults to set vncPassword to objectForKey_("vncPassword")
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
            -- Delete desktop image path from plist
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
        -- Set veriable to boolean
        set customDesktopImageEnabled to customDesktopImageEnabled as boolean
        -- If custom desktop image is selected
        if customDesktopImageEnabled is true
            -- If a custom desktop is selected
            if customDesktopImagePath is equal to ""
                -- Set to false
                set customDesktopImageEnabled to false
                -- Bound to "Use a custom desktop image" checkbox, sets plist
                customDesktopImageSelected_(me)
            else
                try
                    -- Set customDesktopImagePath to value as text
                    set customDesktopImagePath to customDesktopImagePath as text
                    -- Check for file
                    do shell script "/bin/ls " & quoted form of customDesktopImagePath
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

    -- Check that a custom desktop image has been selected
    on checkcustomDesktopImagePath_(sender)
        -- Set to boolean of value
        set customDesktopImageEnabled to customDesktopImageEnabled as boolean
        -- If ard enabled
        if customDesktopImageEnabled is true
            -- If textfield is empty
            if customDesktopImagePath is equal to missing value then
                -- Delete customDesktopImagePath from plist
                tell defaults to removeObjectForKey_("customDesktopImagePath")
                -- Display error to user
                display dialog "Please select a Desktop Image or deselect the Desktop Image option" with icon 0 buttons {"OK"}
                --Log Action
                set logMe to "Error: Please select a Desktop Image or deselect the Desktop Image option"
                logToFile_(me)
                -- Set to false so we don't proceed
                set closeButtonPreCheckPassed to false
            else
                -- If custom Desktop Image has a value, then check file exists & update error if it does not.
                checkDesktopImage_(me)
            end if
        end if
    end checkcustomDesktopImagePath_

    -- Bound to Time Server Text field
    on timeServerCheck_(sender)
        -- If textfield is empty
        if timeServerSelected is missing value then
            -- Set netBoot Name
            set my timeServerSelected to "time.apple.com"
            -- Display error to user
            display dialog "Please enter a Time Server" with icon 0 buttons {"OK"}
            --Log Action
            set logMe to "Error: Please enter a Time Server"
            logToFile_(me)
            -- Update plist with selection
            tell defaults to setObject_forKey_(timeServerSelected, "timeServerSelected")
            -- Set to false so we don't proceed
            set closeButtonPreCheckPassed to false
        else
            --Log Action
            set logMe to "Time Server: " & timeServerSelected
            logToFile_(me)
            -- Update plist with selection
            tell defaults to setObject_forKey_(timeServerSelected, "timeServerSelected")
        end if
    end timeServerCheck_

    -- Bound to Time Zone drop down
    on timeZone_(sender)
        -- Update plist with selection
        tell defaults to setObject_forKey_(timeZoneSelected, "timeZoneSelected")
        --Log Action
        set logMe to "Time Zone selected: " & timeZoneSelected
        logToFile_(me)
    end timeZone_

    -- Bound to OS Language drop down
    on netBootLanguage_(sender)
        -- Update plist with selection
        tell defaults to setObject_forKey_(languageSelected, "languageSelected")
        --Log Action
        set logMe to "Language Selected: " & languageSelected
        logToFile_(me)
    end netBootLanguage_


    -- Bound to Input Language drop down
    on inputLanguage_(sender)
        -- Update plist with selection
        tell defaults to setObject_forKey_(inputLanguageSelected, "inputLanguageSelected")
        --Log Action
        set logMe to "Input Language Selected: " & inputLanguageSelected
        logToFile_(me)
    end inputLanguage_

    -- Bound to "Install modified rc.netboot file" checkbox, sets plist
    on installRCNetBootCheckBox_(sender)
        -- Set to variable to boolean
        set installRCNetBootSelected to installRCNetBootSelected as boolean
        -- Update plist with selection
        tell defaults to setObject_forKey_(installRCNetBootSelected, "installRCNetBootSelected")
        --Log Action
        set logMe to "Install rc.netboot set to: " & installRCNetBootSelected
        logToFile_(me)
    end installRCNetBootCheckBox_

    -- Bound to "Create Read-Only DMG" checkbox, sets plist
    on createReadOnlyDMGCheckBox_(sender)
        -- Set to variable to boolean
        set createReadOnlyDMG to createReadOnlyDMG as boolean
        -- Update plist with selection
        tell defaults to setObject_forKey_(createReadOnlyDMG, "createReadOnlyDMG")
        --Log Action
        set logMe to "Create a ReadOnly DMG set to: " & createReadOnlyDMG
        logToFile_(me)
    end createReadOnlyDMGCheckBox_

    -- Bound to "Enable Simple Finder" checkbox, sets plist
    on simpleFinderCheckBox_(sender)
        -- Set to variable to boolean
        set simpleFinderEnabled to simpleFinderEnabled as boolean
        -- Update plist with selection
        tell defaults to setObject_forKey_(simpleFinderEnabled, "simpleFinderEnabled")
        --Log Action
        set logMe to "Enable Simple Finder set to : " & simpleFinderEnabled
        logToFile_(me)
    end simpleFinderCheckBox_

    -- Check additional Certs array, & amend accordingly
    on checkAdditionalCerts_(sender)
        -- For prompting later
        set certsMissing to false
        -- Check to see if list has a value
        if my additionalCerts as string is not equal to "" then
            -- Set variable to list
            set additionalCerts to additionalCerts as list
            try
                -- Empty array
                (additionalCertsArray's removeObjects:(additionalCertsArray's arrangedObjects()))
                -- For each item in array
                repeat with selectedCertsPath in additionalCerts
                    try
                        -- Check for file
                        do shell script "ls " & quoted form of selectedCertsPath
                        -- Set text to black
                        set selectedCertsColour to current application's NSColor's blackColor()
                        -- Add to array
                        (additionalCertsArray's addObject:{certPath:selectedCertsPath, certPathColour:selectedCertsColour})
                    on error
                        -- Get array's value of missing item
                        set certList to {certPathColour:selectedCertsColour, certPath:selectedCertsPath}
                        -- Remove from Array
                        (additionalCertsArray's removeObject:certList)
                        -- Set Text to red
                        set my selectedCertsColour to current application's NSColor's redColor()
                        -- Add to array
                        (additionalCertsArray's addObject:{certPath:selectedCertsPath, certPathColour:selectedCertsColour})
                        -- For prompting later
                        set certsMissing to true
                    end try
                end repeat
            end try
        end if
    end checkAdditionalCerts_

    -- Add Cert selected by user
    on selectCert_(sender)
        -- Reset text colour
        set selectedCertsColour to current application's NSColor's blackColor()
        try
            -- Prompt user to select
            choose file of type {"public.x509-certificate"} with prompt "Select a Certificate to add:" default location (path to desktop folder)
            -- Get path of the item selected
            set my selectedCertsPath to POSIX path of result
            -- Do not add if a duplicate, also make sure we have a value or we'll error
            if additionalCerts as string is equal to missing value
                -- If we're missing value
                set certList to selectedCertsPath
            else
                -- Set variable to list
                set certList to additionalCerts as list
                -- Verify that we're not adding a duplicate
                if certList does not contain selectedCertsPath then
                    -- Add to end of list
                    set end of certList to selectedCertsPath
                else
                    display dialog "The Cert " & selectedCertsPath & " has already been added." with icon 2 buttons {"OK"}
                end if
            end if
            -- Add to array
            (additionalCertsArray's addObject:{certPath:selectedCertsPath})
            -- Update plist with selection
            tell defaults to setObject_forKey_(certList, "additionalCerts")
            -- Update variable
            tell defaults to set my additionalCerts to objectForKey_("additionalCerts") as list
            -- Check additional Certs array, & amend accordingly
            checkAdditionalCerts_(me)
        end try
    end selectCert_

    -- Remove Selected Cert
    on deleteCert_(sender)
        -- Get selected object
        tell additionalCertsArray to set my selectedObjects to selectedObjects()
        -- Remove from array
        tell additionalCertsArray to removeObjects:selectedObjects
        -- Set variable
        set certList to (theCerts's valueForKey:"certPath") as list
        -- Update plist with selection
        tell defaults to setObject_forKey_(certList, "additionalCerts") as list
        -- Get value from plist
        tell defaults to set my additionalCerts to objectForKey_("additionalCerts")
    end deleteCert_

    -- Check additional pkgs array, & amend accordingly
    on checkAdditionalPKGs_(sender)
        -- For prompting later
        set pkgsMissing to false
        -- Check to see if list has a value
        if my additionalPKGs as string is not equal to "" then
            -- Set variable to list
            set additionalPKGs to additionalPKGs as list
            try
                -- Empty array
                (additionalPKGsArray's removeObjects:(additionalPKGsArray's arrangedObjects()))
                -- For each item in array
                repeat with selectedPKGsPath in additionalPKGs
                    if my selectedPKGsPath as string is not "" then
                        try
                            -- Check for file
                            do shell script "ls " & quoted form of selectedPKGsPath
                            -- Set text to black
                            set selectedPKGsColour to current application's NSColor's blackColor()
                            -- Add to array
                            (additionalPKGsArray's addObject:{pkgPath:selectedPKGsPath, pkgPathColour:selectedPKGsColour})
                        on error
                            -- Get array's value of missing item
                            set pkgList to {pkgPathColour:selectedPKGsColour, pkgPath:selectedPKGsPath}
                            -- Remove from Array
                            (additionalPKGsArray's removeObject:pkgList)
                            -- Set Text to red
                            set my selectedPKGsColour to current application's NSColor's redColor()
                            -- Add to array
                            (additionalPKGsArray's addObject:{pkgPath:selectedPKGsPath, pkgPathColour:selectedPKGsColour})
                            -- For prompting later
                            set pkgsMissing to true
                        end try
                    end if
                end repeat
            end try
        end if
    end checkAdditionalPKGs_

    -- Add PKG selected by user
    on selectPKG_(sender)
        -- Reset text colour
        set selectedPKGsColour to current application's NSColor's blackColor()
        try
            -- Prompt user to select
            choose file of type {"com.apple.installer-package-archive"} with prompt "Select a .pkg to add:" default location (path to desktop folder)
            -- Get path of the item selected
            set my selectedPKGsPath to POSIX path of result
            -- Do not add if a duplicate, also make sure we have a value or we'll error
            if additionalPKGs is equal to missing value
                -- If we're missing value
                set pkgList to selectedPKGsPath
            else
                -- Set variable to list
                set pkgList to additionalPKGs as list
                -- Verify that we're not adding a duplicate
                if pkgList does not contain selectedPKGsPath then
                    -- Add to end of list
                    set end of pkgList to selectedPKGsPath
                else
                    display dialog "The .pkg " & selectedPKGsPath & " has already been added." with icon 2 buttons {"OK"}
                end if
            end if
            -- Add to array
            (additionalPKGsArray's addObject:{pkgPath:selectedPKGsPath})
            -- Update plist with selection
            tell defaults to setObject_forKey_(pkgList, "additionalPKGs")
            -- Update variable
            tell defaults to set my additionalPKGs to objectForKey_("additionalPKGs") as list
            -- Check additional pkgs array, & amend accordingly
            checkAdditionalPKGs_(me)
        end try
    end selectPKG_

    -- Remove Selected PKG
    on deletePKG_(sender)
        -- Get selected object
        tell additionalPKGsArray to set my selectedObjects to selectedObjects()
        -- Remove from array
        tell additionalPKGsArray to removeObjects:selectedObjects
        -- Set variable
        set pkgList to (thePKGs's valueForKey:"pkgPath") as list
        -- Update plist with selection
        tell defaults to setObject_forKey_(pkgList, "additionalPKGs") as list
        -- Get value from plist
        tell defaults to set my additionalPKGs to objectForKey_("additionalPKGs")
    end deletePKG_

----- CLOSE OPTIONS WINDOW CHECK -----

    -- Make sure all variables are set if enabled, if passed close options window
    on closeOptionsWindowCheck_(sender)
        -- reset value
        set closeButtonPreCheckPassed to true
        -- Verify that the description field has a value & reset & prompt if not
        netBootDescriptionCheck_(me)
        -- Bound to NetBoot Image Resize value
        netBootImageExpandEnteredValue_(me)
        -- Check the value entered in the ARD Username textfield
        checkardUsername_(me)
        -- Check the value entered in the ARD Password textfield
        checkardPassword_(me)
        -- Check the value entered in the vnc Password textfield
        checkvncPassword_(me)
        -- Check that a custom desktop image has been selected
        checkcustomDesktopImagePath_(me)
        -- Bound to Time Server Text field
        timeServerCheck_(me)
        -- Set to boolean of value
        set closeButtonPreCheckPassed to closeButtonPreCheckPassed as boolean
        -- Proceed if we've passed precheck
        if closeButtonPreCheckPassed is true then
            -- reload options from plist
            retrieveDefaults_(me)
            -- close options window
            optionsWindow's orderOut_(null)
            -- enable options
            set my optionWindowEnabled to true
        end if
    end closeOptionsWindowCheck_

----- BUILD PRE-CHECK -----

    -- Make sure all variables are set if enabled
    on buildPreCheck_(sender)
        
        -- reset value
        set buildButtonPreCheckPassed to true
        
        -- Make sure a name is specified for the NetBoot Image, error if not.
        netBootName_(me)
        -- Error if incorrect value specified
        netBootImageIndexCheck_(me)
        
        -- Set to boolean of value
        set buildButtonPreCheckPassed to buildButtonPreCheckPassed as boolean
        
        -- Proceed if we've passed precheck
        if buildButtonPreCheckPassed is true then
            -- reload options from plist
            retrieveDefaults_(me)
            -- Check the JSS URL details & try & get version of the JSS
            checkJSSURL_(me)
            -- Set NetBoot Description
            enablenetBootDescription_(me)
            -- Check that image selected for desktop exists
            checkDesktopImage_(me)
            -- Check additional pkgs array, & amend accordingly
            checkAdditionalPKGs_(me)
            -- Check additional Certs array, & amend accordingly
            checkAdditionalCerts_(me)
            -- Prompt user for location to create the .nbi
            netBootLocation_(me)

        end if
        
    end buildPreCheck_

    -- Prompt user for location to create the .nbi
    on netBootLocation_(sender)
        try
            --If /Library/NetBoot/NetBootSPO/ exists
            choose folder with prompt "Choose a location to create the .nbi in:" default location "/Library/NetBoot/NetBootSP0/"
            -- Set netBootSelectedLocation to path of location given
            set netBootSelectedLocation to POSIX path of the result
            --Log Action
            set logMe to "Selected path to create .nbi is: " & netBootSelectedLocation
            logToFile_(me)
        on error
            --Else open pointing to the desktop folder
            choose folder with prompt "Choose a location to create the .nbi in:" default location (path to desktop folder)
            -- Set netBootSelectedLocation to path of location given
            set netBootSelectedLocation to POSIX path of the result
            --Log Action
            set logMe to "Selected path to create .nbi is: " & netBootSelectedLocation
            logToFile_(me)
        end try
        if netBootSelectedLocation is not missing value then
            -- Check that we have enough space available to proceed
            getNetBootDmgRequiredSize_(me)
        end if
    end netBootLocation_

    -- Get the space needed for the NetBoot.dmg
    on getNetBootDmgRequiredSize_(sender)
        try
            -- Disable main windows buttons
            set my optionWindowEnabled to false
            -- Update buildProcessLogTextField to show path to todays log
            set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to false
            -- Reset required space
            set requiredSpace to 20
            -- Set build Process ProgressBar to indeterminate & animated to false
            set my buildProccessProgressBarIndeterminate to false
            set my buildProccessProgressBarAniminate to false
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Calculating NetBoot.dmg size"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 0
            -- Close main window
            mainWindow's orderOut_(null)
            -- activate build process window
            activate
            showBuildProcessWindow's makeKeyAndOrderFront_(null)
            -- Show Cog on main window
            set my mainWindowCog to true
            
            ----- NetBoot.dmg Size -----
            --Log Action
            set logMe to "Trying to get the Total size of " & quoted form of selectedOSdmgMountPath
            logToFile_(me)
            -- Get total size of selectedOSdmg
            set selectedOSdmgTotalSize to do shell script "/usr/sbin/diskutil info " & quoted form of selectedOSdmgMountPath & " | grep \"Total Size\" | awk '{ print $3 }'"
            -- Round value, resolves issue with non full stop decimals used in some langauges
            set selectedOSdmgTotalSize to (round selectedOSdmgTotalSize rounding up)
            --Log Action
            set logMe to "Total size of " & quoted form of selectedOSdmgMountPath & " is " & selectedOSdmgTotalSize & "GB rounded up"
            logToFile_(me)
            -- Get the value of the free space available on selectedOSdmg
            set selectedOSdmgFreeSpace to do shell script "/usr/sbin/diskutil info " & quoted form of selectedOSdmgMountPath & " | grep \"Volume Free Space\" | awk '{ print $4 }'"
            -- Round value, resolves issue with non full stop decimals used in some langauges
            set selectedOSdmgFreeSpace to (round selectedOSdmgFreeSpace rounding down)
            --Log Action
            set logMe to "There is around " & selectedOSdmgFreeSpace & "GB space free on " & quoted form of selectedOSdmgMountPath & " rounded down"
            logToFile_(me)
            -- Get the space used on selectedOSdmg
            set selectedOSdmgUsedSpace to (selectedOSdmgTotalSize - selectedOSdmgFreeSpace)
            --Log Action
            set logMe to "Used space on " & quoted form of selectedOSdmgMountPath & " is around " & selectedOSdmgUsedSpace & "GB"
            logToFile_(me)
            -- Set NetBoot.dmg's size
            set netBootDmgRequiredSize to selectedOSdmgUsedSpace + 1
            --Log Action
            set logMe to "The NetBoot.dmg will need to be around " & netBootDmgRequiredSize & "GB"
            logToFile_(me)
            
            ----- SIZE OF VOLUME ON WHICH WE'RE CREATING THE NBI ----
            -- Set netBootSelectedLocation to path of location given
            set variableVariable to netBootSelectedLocation
            tell application "Finder"
                set my variableVariable to variableVariable as text
            end tell
            -- If it's an external volume
            if variableVariable begins with "/Volumes/" then
                -- Store delimiters for resetting later
                set applescriptsDelims to AppleScript's text item delimiters
                -- Set delimiters to forwardslash
                set AppleScript's text item delimiters to "/"
                -- Get Volume
                set my selectedVolume to text item 3 of variableVariable
                -- Reset delimiters
                set AppleScript's text item delimiters to applescriptsDelims
                set selectedVolume to "/Volumes/" & selectedVolume
            else
                -- Get volume name of startup disk
                tell application "Finder" to set my volname to name of startup disk
                -- If an internal volume, check
                set my fullPath to variableVariable as POSIX file
                set my fullPath to fullPath as text
                -- If location is on the startup disk
                if my fullPath begins with volname then
                    set my selectedVolume to "/"
                else
                    -- Store delimiters for resetting later
                    set applescriptsDelims to AppleScript's text item delimiters
                    -- Set delimiters to colon
                    set AppleScript's text item delimiters to ":"
                    -- Get Volume
                    set my selectedVolume to text item 1 of fullPath
                    -- Reset delimiters
                    set AppleScript's text item delimiters to applescriptsDelims
                end if
            end if
            --Log Action
            set logMe to "Checking for free space on " & selectedVolume
            logToFile_(me)
            -- Get free space of destination volume
            set freeSpaceOnVolume to do shell script "/usr/sbin/diskutil info " & quoted form of selectedVolume & " | grep \"Volume Free Space\" | awk '{ print $4 }'"
            -- Round value, resolves issue with non full stop decimals used in some langauges
            set freeSpaceOnVolume to (round freeSpaceOnVolume rounding down)
            -- Get unit of free space
            set freeSpaceOnVolumeUnit to do shell script "/usr/sbin/diskutil info " & quoted form of selectedVolume & " | grep \"Volume Free Space\" | awk '{ print $5 }'"
            -- If destination volume is has a TB or more free space
            if freeSpaceOnVolumeUnit is equal to "TB" then
                set freeSpaceOnVolume to freeSpaceOnVolume * 1000
            end if
            --Log Action
            set logMe to "The volume " & selectedVolume & " has " & freeSpaceOnVolume & "GB free, rounding down"
            logToFile_(me)
            -- Get the space needed
            set spaceNeeded to netBootDmgRequiredSize
            -- Set to boolean of values
            set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
            set netBootImageExpandEnabled to netBootImageExpandEnabled as boolean
            set createReadOnlyDMG to createReadOnlyDMG as boolean
            -- If we're resizing the NetBoot Image
            if netBootImageReduceEnabled is true or createReadOnlyDMG is true then
                -- Set the space needed
                set spaceNeeded to spaceNeeded + netBootDmgRequiredSize
            end if
            -- If we're expanding the NetBoot Image
            if netBootImageExpandEnabled is true
                -- Set to string
                set netBootImageExpandValue to netBootImageExpandValue as string
                -- Set the space needed
                set spaceNeeded to spaceNeeded + netBootImageExpandValue
            end if
            --Log Action
            set logMe to "We need around " & spaceNeeded & "GB free to create the NBI."
            logToFile_(me)
            -- Check that we have enough space needed to proceed, error if not
            if spaceNeeded is greater than freeSpaceOnVolume or spaceNeeded is equal to freeSpaceOnVolume then
                --Log Action
                set logMe to "Error: About " & spaceNeeded & "GB needed to create NBI. Only " & freeSpaceOnVolume & "GB free on " & variableVariable
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: About " & spaceNeeded & "GB needed to create NBI. Only " & freeSpaceOnVolume & "GB free on " & variableVariable
                -- Notify of errors or success
                userNotify_(me)
            else
                -- Check that selected files exist
                checkFiles_(me)
            end if
        on error
            --Log Action
            set logMe to "Error: Calculating space needed"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Calculating space needed"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end getNetBootDmgRequiredSize_

    -- Check that selected files exist
    on checkFiles_(sender)
        -- Reset variable
        set my buildPreCheckPassed to true
        -- If custom desktop image is selected
        if customDesktopImageEnabled is true
            -- Bound to "Use a custom desktop image" checkbox, sets plist
            customDesktopImageSelected_(me)
            -- If a custom desktop is selected
            if customDesktopImagePath is missing value then
                -- Set to false
                set customDesktopImageEnabled to false
                -- Bound to "Use a custom desktop image" checkbox, sets plist
                customDesktopImageSelected_(me)
                -- True if file exists
                set desktopImageExists to false
            else
                try
                    -- Set customDesktopImagePath to value as text
                    set customDesktopImagePath to customDesktopImagePath as text
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Checking that custom Desktop Image exists"
                    -- Log selected desktop image
                    set logMe to "Selected Desktop Image: " & customDesktopImagePath
                    logToFile_(me)
                    -- Check for file
                    do shell script "ls " & quoted form of customDesktopImagePath
                    -- True as file exists
                    set desktopImageExists to true
                    -- Update label
                    set my customDesktopImageLabel to "Image Selected: " & customDesktopImagePath
                    -- Create the .nbi folder
                    --netBootLocationCreate_(me)
                on error
                    -- Update label
                    set my customDesktopImageLabel to "Cannot Find: " & customDesktopImagePath
                    display dialog "Cannot Find: " & customDesktopImagePath & ". Do you wish to proceed?" with icon 2 buttons {"No", "Yes"}
                    -- If user selected no
                    if button returned of the result is "No" then
                        --Log Action
                        set logMe to "User chose not to proceed as missing Desktop Image"
                        logToFile_(me)
                        -- Set to false
                        set my buildPreCheckPassed to false
                        -- Detach mounted volumes
                        --tidyUpTimeKids_(me)
                    else
                        --Log Action
                        set logMe to "User chose to proceed with a missing Desktop Image"
                        logToFile_(me)
                        -- True if file exists
                        set desktopImageExists to false
                        -- Create the .nbi folder
                        --netBootLocationCreate_(me)
                    end if
                end try
            end if
        end if
        -- Check additional pkgs array, & amend accordingly
        checkAdditionalPKGs_(me)
        -- Check additional Certs array, & amend accordingly
        checkAdditionalCerts_(me)
        -- Check that we're not missing any additional certs or pkgs
        if certsMissing is true and pkgsMissing is true then
            --Log Action
            set logMe to "Error: One or more additional Certificates & Packages are missing."
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: One or more additional Certificates & Packages are missing."
            -- Notify of errors or success
            userNotify_(me)
            -- Set to false
            set my buildPreCheckPassed to false
        else if certsMissing is true then
            --Log Action
            set logMe to "Error: One or more additional Certificates are missing."
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: One or more additional Certificates are missing."
            -- Notify of errors or success
            userNotify_(me)
            -- Set to false
            set my buildPreCheckPassed to false
        else if pkgsMissing is true then
            --Log Action
            set logMe to "Error: One or more additional Packages are missing."
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: One or more additional Packages are missing."
            -- Notify of errors or success
            userNotify_(me)
            -- Set to false
            set my buildPreCheckPassed to false
        else
        end if
    -- Build pre check is has been passed.
    if buildPreCheckPassed is true then
        -- Create the .nbi folder
        netBootLocationCreate_(me)
    else
        -- Detach mounted volumes
        tidyUpTimeKids_(me)
    end if
    end checkFiles_

----- BUILD -----

    -- Create the .nbi folder
    on netBootLocationCreate_(sender)
        -- To stop looping
        if netBootCreationSuccessful is not equal to true
            try
                
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
                logToFile_(me)
                
                -- Create .nbi folder
                do shell script "/bin/mkdir " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log action
                set logMe to "Successfully created " & quoted form of netBootDirectory
                logToFile_(me)
                
                -- Create the NetBoot.dmg
                createNetbootDmg_(me)
                
            on error number 1
                
                -- Error to user prompting for what to do next
                display dialog "There is already a folder called: " & quoted form of netBootNameTextField & " in " & quoted form of netBootSelectedLocation & return & return & "Do you want to select another folder or delete the existing?" with icon 2 buttons {"Delete Existing", "New Folder"}
                
                -- If user selected "Delete Existing"
                if button returned of the result is "Delete Existing" then
                    
                    --Log action
                    set logMe to "Trying to delete " & quoted form of netBootDirectory
                    logToFile_(me)
                    
                    -- Delete existing folder
                    do shell script "/bin/rm -rf " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log action
                    set logMe to "Deleted " & quoted form of netBootDirectory
                    logToFile_(me)
                    
                    -- Create the .nbi folder
                    netBootLocationCreate_(me)
                    
                else
                    
                    --Log action
                    set logMe to "Reselecting path to create .nbi"
                    logToFile_(me)
                    
                    -- Prompt user for location to create the .nbi
                    netBootLocation_(me)
                    
                end if
            end try
        end if
    end netBootLocationCreate_

    -- Create the NetBoot.dmg
    on createNetbootDmg_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 20
            
            --Log action
            set logMe to "Trying to create NetBoot.dmg in " & netBootDirectory
            logToFile_(me)
            
            -- Set to text value, to avoid an issue when name changed
            set netBootNameTextField to netBootNameTextField as text
            
            -- If we're building an OS newer than 10.9
           -- if selectedOSdmgVersionMajor is greater than 9
            
                -- Create the NetBoot.dmg
                do shell script "/usr/bin/hdiutil create " & quoted form of netBootDirectory & "/NetBoot -size " & netBootDmgRequiredSize & "g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"GPTSPUD\" -fs \"HFS+\" -stretch 500g" user name adminUserName password adminUsersPassword with administrator privileges
            
            --else
            
                -- Create the NetBoot.dmg
              --  do shell script "/usr/bin/hdiutil create " & quoted form of netBootDirectory & "/NetBoot -size " & netBootDmgRequiredSize & "g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"SPUD\" -fs \"HFS+\" -stretch 500g" user name adminUserName password adminUsersPassword with administrator privileges
            
            
           -- end if
            
            --Log action
            set logMe to "Successfully created NetBoot.dmg in " & quoted form of netBootDirectory
            logToFile_(me)
            
            -- Mount the NetBoot.dmg
            mountNetBootDmg_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Failed to create NetBoot.dmg"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Failed to create NetBoot.dmg"
            
            -- Notify of errors or success
            userNotify_(me)

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
            logToFile_(me)
            
            -- Mount the NetBoot.dmg & get the mount path
            set netBootDmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Mounted to: " & netBootDmgMountPath
            logToFile_(me)

            -- Copy OS.dmg's content to NetBoot.dmg
            copyOSDmgToNetBootDmg_(me)

        on error
        
            --Log Action
            set logMe to "Error: Cannot mount NetBoot.dmg"
            logToFile_(me)

            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Cannot mount NetBoot.dmg"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end mountNetBootDmg_

    -- Copy OS.dmg's content to NetBoot.dmg
    on copyOSDmgToNetBootDmg_(sender)
        
        try
            
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
            logToFile_(me)
            
            -- Copy contents of the SelectedOSdmg to NetBootdmg
            do shell script "/usr/bin/ditto " & quoted form of selectedOSdmgMountPath & " " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully copied " & quoted form of selectedOSdmgPath & " to " & quoted form of netBootDirectory & "/NetBoot.dmg"
            logToFile_(me)
            
            -- Reduce NetBoot Image if ticked
            reduceNetBootImage_(me)
                    
        on error
        
            --Log Action
            set logMe to "Error: Cannot copy contents of " & selectedOSdmgMountPath & " to " & quoted form of netBootDmgMountPath
            logToFile_(me)

            -- Set to false to display
            set my userNotifyErrorHidden to false

            -- Set Error message
            set my userNotifyError to "Error: Cannot copy contents of " & selectedOSdmgMountPath & " to " & quoted form of netBootDmgMountPath

            -- Notify of errors or success
            userNotify_(me)
        
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
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing NetBoot size by deleting unneeded Applications"
                
                delay 0.1
                
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/Applications/* -maxdepth 0 -not -path \"*Launchpad.app*\" -not -path \"*Safari.app*\" -not -path \"*System Preferences.app*\" -not -path \"*TextEdit.app*\"  -not -path \"*Utilities*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Deleted Applications from: " & netBootDmgMountPath & "/Applications/"
                logToFile_(me)
                
                ---- Utilities ----
                --Log Action
                set logMe to  "Deleting unwanted Utilities from: " & netBootDmgMountPath
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
                logToFile_(me)
                
                ---- PreferencePanes ----
                --Log Action
                set logMe to "Deleting unwanted PreferencesPanes from: " & netBootDmgMountPath
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Reducing NetBoot size by deleting unneeded Preference Panes"
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 54
                
                delay 0.1
                
                -- Delete all in the location except those that are given below \"*DateAndTime.prefPane*\" -not -path
                do shell script "find " & quoted form of netBootDmgMountPath & "/System/Library/PreferencePanes/* -maxdepth 0 -not -path  \"*Displays.prefPane*\" -not -path \"*Network.prefPane*\" -not -path \"*SharingPref.prefPane*\" -not -path \"*StartupDisk.prefPane*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Deleted Preference Panes from: " & netBootDmgMountPath & "/System/Library/PreferencePanes/"
                logToFile_(me)
                
                ---- Directories ----
                --- /Library/ ---
                --Log Action
                set logMe to "Trying to empty directories in " & netBootDmgMountPath & "/Library/"
                logToFile_(me)
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 56
                
                delay 0.1
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Application Support/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Application\\ Support/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Application Support/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Audio/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Audio/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Audio/"
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Caches/"

                delay 0.1

                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Caches/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Caches/"
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Desktop Pictures/"

                delay 0.1

                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Desktop\\ Pictures/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Desktop Pictures/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Dictionaries/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Dictionaries/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Dictionaries/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Documentation/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Documentation/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Documentation/"
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Fonts/"

                delay 0.1

                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Fonts/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Fonts/"
                --logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Logs/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Logs/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Logs/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Modem Scripts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Modem\\ Scripts/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Modem Scripts/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Printers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Printers/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Printers/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Receipts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Receipts/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Receipts/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Screen\\ Savers/*" user name adminUserName password adminUsersPassword with administrator privileges
    
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Screen Savers/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/Updates/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Updates/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/Updates/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/User Pictures/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/User\\ Pictures/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/User Pictures/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /Library/WebServer/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/WebServer/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/Library/WebServer/"
                logToFile_(me)
                
                --Log Action
                set logMe to "Successfully emptied targeted directories in " & netBootDmgMountPath & "/Library/"
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
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Address\\ Book\\ Plug-Ins/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Address Book Plug-Ins/"
                logToFile_(me)

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Automator/"

                delay 0.1

                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Automator/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Automator/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Caches/"
                
                delay 0.1

                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Caches/*" user name adminUserName password adminUsersPassword with administrator privileges
   
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Caches/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Compositions/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Compositions/*" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Compositions/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                delay 0.1
                
                try
                    
                    -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                    do shell script "unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    -- Delete DefaultDesktop.jpg
                    do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                end try
                
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/LinguisticData/"
                
                delay 0.1
				      
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/LinguisticData/*" user name adminUserName password adminUsersPassword with administrator privileges
				
				--Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/LinguisticData/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Printers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Printers/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Printers/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Screen\\ Savers/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Screen Savers/"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying /System/Library/Speech/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Speech/*" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Emptied " & netBootDmgMountPath & "/System/Library/Speech/"
                logToFile_(me)
                
                --Log Action
                set logMe to "Successfully emptied targeted directories in " & netBootDmgMountPath & "/System/Library/"
                logToFile_(me)
                
                -- Delete swap files from the NetBoot.dmg
                removeSwapFiles_(me)
                
            else
            
                --Log Action
                set logMe to "NetBoot reduction not enabled. Skipping..."
                logToFile_(me)
                
                -- Delete swap files from the NetBoot.dmg
                removeSwapFiles_(me)
                
            end if
        
        on error
        
            --Log Action
            set logMe to "Error: Deleting files"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Deleting files"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/private/var/vm/swapfile*" user name adminUserName password adminUsersPassword with administrator privileges
        
        end try
        
        --Log Action
        set logMe to "Deleted swapfiles in " & netBootDmgMountPath & "/private/var/vm/"
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
        logToFile_(me)

        try
            
            -- Delete the below file, silently error if doesn't exist
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/private/var/vm/sleepimage" user name adminUserName password adminUsersPassword with administrator privileges
        
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
        logToFile_(me)
        
        try

            -- Empty the below folder
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/private/tmp/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/private/tmp/"
            logToFile_(me)
            
            -- Empty /private/var/tmp from the NetBoot.dmg
            emptyPrivateVarTmp_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Emptying /private/tmp"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Emptying /private/tmp"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/private/var/tmp/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/private/var/tmp/"
            logToFile_(me)
            
            -- Empty /Volumes/ from the NetBoot.dmg
            emptyVolumesFolder_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Emptying /private/var/tmp/"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Emptying /private/var/tmp/"
            
            -- Notify of errors or success
            userNotify_(me)
        
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
        logToFile_(me)
        
        try
            
            try
                
                -- Empty the below folder
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Volumes/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            end try
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/Volumes/"
            logToFile_(me)
            
            -- Empty /dev/ from the NetBoot.dmg
            emptyDevFolder_(me)
            
        on error

            --Log Action
            set logMe to "Error: Emptying /Volumes/"
            logToFile_(me)

            -- Set to false to display
            set my userNotifyErrorHidden to false

            -- Set Error message
            set my userNotifyError to "Error: Emptying /Volumes/"

            -- Notify of errors or success
            userNotify_(me)

        end try
        
    end emptyVolumesFolder_

    -- Empty /dev/ from the NetBoot.dmg
    on emptyDevFolder_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Emptying /dev/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 110
        set logMe to "Emptying " & netBootDmgMountPath & "/dev/"
        
        -- Log To file
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/dev/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/dev/"
            logToFile_(me)
            
            -- Empty /var/run/ from the NetBoot.dmg
            emptyVarRunFolder_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Emptying /dev/"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Emptying /dev/"
            
            -- Notify of errors or success
            userNotify_(me)
        
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
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/var/run/*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Emptied " & netBootDmgMountPath & "/var/run/"
            logToFile_(me)
            
            -- Disable Software Update
            disableSoftwareUpdate_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Emptying /var/run/"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Emptying /var/run/"
            
            -- Notify of errors or success
            userNotify_(me)
        
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
        logToFile_(me)
        
        try
            
            -- Empty the below folder
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Software\\ Update.app" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/Software Update.app"
            logToFile_(me)
            
            --Log Action
            set logMe to "Deleting " & netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*"
            logToFile_(me)
            
            -- Empty the below folder
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.softwareupdate*"
            logToFile_(me)
            
            -- Delete plists from SystemConfiguration to rebuild network interfaces
            deleteSystemConfigurationPlists_(me)
    
        on error
        
            --Log Action
            set logMe to "Error: Disabling Software Update"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Disabling Software Update"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
        logToFile_(me)
        
        try
            
            -- Delete the below folder, silently error if doesn't exist
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist" user name adminUserName password adminUsersPassword with administrator privileges
        
        end try
        
        --Log Action
        set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist"
        logToFile_(me)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 130
        
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        logToFile_(me)
        
        try
            
            -- Delete the below folder, silently error if doesn't exist
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
        end try
        
        --Log Action
        set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        logToFile_(me)
        
        -- Bypass the various setup assistants so we're logging in uninterrupted
        bypassSetupAssistants_(me)
            
    end deleteSystemConfigurationPlists_

    -- Bypass the various setup assistants so we're logging in uninterrupted
    on bypassSetupAssistants_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Bypassing Apple Setup Assistant"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 133
            ---- .AppleSetupDone ----
            -- Write .AppleSetupDone file
            do shell script "touch " & quoted form of netBootDmgMountPath & "/var/db/.AppleSetupDone" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to ".AppleSetupDone written to " & netBootDmgMountPath & "/var/db/.AppleSetupDone"
            logToFile_(me)
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
            logToFile_(me)
            ---- com.apple.SetupAssistant----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Bypassing iCloud Setup Assistant"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 140
            -- Write DidSeeCloudSetup to com.apple.SetupAssistant
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist DidSeeCloudSetup -bool true" user name adminUserName password adminUsersPassword with administrator privileges
            -- Write GestureMovieSeen to com.apple.SetupAssistant
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist GestureMovieSeen none" user name adminUserName password adminUsersPassword with administrator privileges
            -- Write LastSeenCloudProductVersion to com.apple.SetupAssistant
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist LastSeenCloudProductVersion " & quoted form of selectedOSdmgVersion user name adminUserName password adminUsersPassword with administrator privileges
            -- Write LastSeenBuddyBuild to com.apple.SetupAssistant
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist LastSeenBuddyBuildVersion " & quoted form of selectedOSdmgVersion user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "iCloud Bypass options written to " & netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist"
            logToFile_(me)
            --Log Action
            set logMe to "Deleting " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app/Contents/SharedSupport/MiniLauncher"
            logToFile_(me)
            --Delete the MiniLauncher
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup\\ Assistant.app/Contents/SharedSupport/MiniLauncher" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Deleted " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app/Contents/SharedSupport/MiniLauncher"
            logToFile_(me)
            -- Stop TimeMachine for prompting to use mounted disks for backup
            disableTimeMachinePrompt_(me)
        on error
            --Log Action
            set logMe to "Error: Bypassing Setup Assistants"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Bypassing Setup Assistants"
            -- Notify of errors or success
            userNotify_(me)
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
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist DoNotOfferNewDisksForBackup -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
            
            -- Log Action
            set logMe to "com.apple.TimeMachine.plist amended at " & netBootDmgMountPath & "/Library/Preferences/com.apple.TimeMachine.plist"
            logToFile_(me)
            
            -- Delete the file delete /Library/Preferences/com.apple.dockfixup.plist
            deleteDockFixUp_(me)
            
        on error

            --Log Action
            set logMe to "Error: Writing to /Library/Preferences/com.apple.TimeMachine.plist"
            logToFile_(me)

            -- Set to false to display
            set my userNotifyErrorHidden to false

            -- Set Error message
            set my userNotifyError to "Error: Writing to /Library/Preferences/com.apple.TimeMachine.plist"

            -- Notify of errors or success
            userNotify_(me)

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
            logToFile_(me)
            
            
            -- If we're building a 10.10 .nbi
            if selectedOSdmgVersionMajor is 10
            
                -- Delete com.apple.dockfixup.plist
                do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Dock.app/Contents/Resources/com.apple.dockfixup.plist" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/Dock.app/Contents/Resources/com.apple.dockfixup.plist"
                logToFile_(me)
            
            else
            
                -- Delete com.apple.dockfixup.plist
                do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
                logToFile_(me)
                
            end if
        
            -- Disable AppNap
            disableAppNap_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Deleting /Library/Preferences/com.apple.dockfixup.plist"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Deleting com.apple.dockfixup.plist"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end deleteDockFixUp_

    -- Disable AppNap
    on disableAppNap_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling App Nap"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 165
            
            --Log Action
            set logMe to "Trying to disable App Nap"
            logToFile_(me)
            
            -- Set Language
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/.GlobalPreferences.plist NSAppSleepDisabled -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "App Nap disabled"
            logToFile_(me)
            
            -- Disable Screen Saver
            disableScreenSaver_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Disabling App Nap"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Disabling App Nap"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end disableAppNap_

    -- Disable Screen Saver
    on disableScreenSaver_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling screensaver"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 170
        
        try
           
            --Log Action
            set logMe to "Disabling screensaver"
            logToFile_(me)

            set variableVariable to netBootDmgMountPath & "/Library/Preferences/com.apple.screensaver.plist"

            -- Write encoded ARD Username to plist
            do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " idleTime -int 0"  user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Screensaver disabled"
            logToFile_(me)

            -- Create the ARD user
            createARDUser_(me)

        on error
        
            --Log Action
            set logMe to "Error: Disabling Screensaver"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Disabling Screensaver"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
                set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Settings/ARDUser.plist"
                
                -- Encode ardUsername
                set ardUsernameEncoded to do shell script "/bin/echo " & quoted form of ardUsername & " | openssl base64 "
                
                --Log Action
                set logMe to "ARD Username encoded"
                logToFile_(me)
                
                -- Write encoded ARD Username to plist
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " ARDUsername "  & ardUsernameEncoded  user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Written ARD Username to " & variableVariable
                logToFile_(me)
                
                -- Encode ardPassword
                set ardPasswordEncoded to do shell script "/bin/echo " & quoted form of ardPassword & " | openssl base64 "
                
                --Log Action
                set logMe to "ARD Password encoded"
                logToFile_(me)
                
                -- Write encoded ARD Password to plist
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " ARDPassword "  & ardPasswordEncoded  user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Written ARD Password to " & variableVariable
                logToFile_(me)

                -- Writes vncPassword to com.apple.VNCSettings.txt
                enableVNC_(me)
                
            on error
            
                --Log Action
                set logMe to "Error: Creating ARD User"
                logToFile_(me)
            
                -- Set to false to display
                set my userNotifyErrorHidden to false
                
                -- Set Error message
                set my userNotifyError to "Error: Creating ARD User"
                
                -- Notify of errors or success
                userNotify_(me)
                
            end try
            
        -- If ARD option has not been enabled
        else
            
            --Log Action
            set logMe to "Skipping creation of ARD user as ARD not enabled"
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
                logToFile_(me)
                
                -- Write hashed vncPassword to /Library/Preferences/com.apple.VNCSettings.txt on .nbi
                do shell script "/bin/echo " & quoted form of vncPassword & " | perl -we 'BEGIN { @k = unpack \"C*\", pack \"H*\", \"1734516E8BA8C5E2FF1C39567390ADCA\"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack \"C*\", $_; foreach (@k) { printf \"%02X\", $_ ^ (shift @p || 0) }; print \"
                \"' | sudo tee " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "VNC password written to " & variableVariable
                
                -- Log To file
                logToFile_(me)
                
                -- Set Time Server & Zone if enabled
                setTimeServerAndZone_(me)
                
            on error
            
                --Log Action
                set logMe to "Error: Wrting VNC Settings"
                logToFile_(me)
            
                -- Set to false to display
                set my userNotifyErrorHidden to false
                
                -- Set Error message
                set my userNotifyError to "Error: Writing VNC Settings"
                
                -- Notify of errors or success
                userNotify_(me)
                
            end try
            
        -- If VNC option has not been enabled
        else
            
            --Log Action
            set logMe to "Skipping writing VNC password as VNC option not enabled"
            logToFile_(me)
            
            -- Set Time Server & Zone if enabled
            setTimeServerAndZone_(me)
            
        end if
        
    end enableVNC_

    -- Set Time Server & Zone if enabled
    on setTimeServerAndZone_(sender)
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Writing Time Server & Zone Settings"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 185
                -- JSS Plist location on mounted volume
                set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Settings/TimeSettings.plist"
                -- Write Time Server to plist
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " timeServer "  & timeServerSelected  user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Written Time Server " & timeServerSelected & " to " & variableVariable
                logToFile_(me)
                -- Write encoded Time Zone to plist
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " timeZone "  & timeZoneSelected  user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Written Time Zone " & timeZoneSelected & " to " & variableVariable
                logToFile_(me)
                -- Install AutoCasperNBIStartup.pkg
                installAutoCasperNBIStartup_(me)
            on error
                --Log Action
                set logMe to "Error: Writing Time Server & Zone Settings"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Writing Time Server & Zone Settings"
                -- Notify of errors or success
                userNotify_(me)
            end try
        
    end setTimeServerAndZone_

    -- Install AutoCasperNBIStartup.pkg
    on installAutoCasperNBIStartup_(sender)
        try
            -- JSS Plist location on mounted volume
            set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI"
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing AutoCasperNBI LaunchDaemon & required files"
            delay 0.1
            --Log Action
            set logMe to "Trying to install AutoCasperNBIStartup files"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 190
            --Log Action
            set logMe to "Trying to copy Boot.sh"
            logToFile_(me)
            -- Install Boot.sh
            do shell script "ditto " & quoted form of pathToResources & "/Boot.sh " &  quoted form of variableVariable & "/Scripts/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Boot.sh copied"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 192
            --Log Action
            set logMe to "Trying to create " & quoted form of variableVariable & "/Certificates/"
            logToFile_(me)
            -- Make certficates directory
            do shell script "mkdir " & quoted form of variableVariable & "/Certificates/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Created " & quoted form of variableVariable & "/Certificates/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 193
            --Log Action
            set logMe to "Trying to create " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 194
            --Log Action
            set logMe to "Trying to set ownership to root:wheel on " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown -R root:wheel " & quoted form of variableVariable & "/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of variableVariable & "/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 195
            --Log Action
            set logMe to "Trying to set permissions to 755 on " & quoted form of variableVariable & "/"
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod -R 755 " & quoted form of variableVariable & "/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissions to 755 on " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 196
            --Log Action
            set logMe to "Trying to copy com.AutoCasperNBI.boot.plist"
            logToFile_(me)
            -- Install Boot.sh
            do shell script "ditto " & quoted form of pathToResources & "/com.AutoCasperNBI.boot.plist " & quoted form of netBootDmgMountPath & "/Library/LaunchDaemons/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "com.AutoCasperNBI.boot.plist copied"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 197
            --Log Action
            set logMe to "Trying to set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/LaunchDaemons/com.AutoCasperNBI.boot.plist"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/LaunchDaemons/com.AutoCasperNBI.boot.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/LaunchDaemons/com.AutoCasperNBI.boot.plist"
            logToFile_(me)
            --Log Action
            set logMe to "AutoCasperNBIStartup files installed successfully"
            logToFile_(me)
            -- Install RootUser.pkg
            installRootUserpkg_(me)
        on error
            --Log Action
            set logMe to "Error: Installing AutoCasperNBI LaunchDaemon & required files"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Installing AutoCasperNBI LaunchDaemon & required files"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end installAutoCasperNBIStartup_

    -- Install RootUser.pkg
    on installRootUserpkg_(sender)
        try
            considering numeric strings
                -- If we're building a pre 10.8.nbi
                if selectedOSdmgVersionMajor is less than 8
                     --Log Action
                     set logMe to "Trying to copy Lion Root user plist"
                     logToFile_(me)
                     -- Update Build Process Window's Text Field
                     set my buildProcessTextField to "Copying Lion Root User plist"
                     delay 0.1
                     -- Update build Process ProgressBar
                     set my buildProccessProgressBar to 200
                     -- Copy the root.plist
                     do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/root.plist " & quoted form of netBootDmgMountPath & "/private/var/db/dslocal/nodes/Default/users/" user name adminUserName password adminUsersPassword with administrator privileges
                     --Log Action
                     set logMe to "Successfully copied Lion Root user plist"
                     logToFile_(me)
                else
                    --Log Action
                    set logMe to "Trying to copy Root user plist"
                    logToFile_(me)
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Root User plist"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 200
                    -- Copy the root.plist
                    do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/10.8+root.plist " & quoted form of netBootDmgMountPath & "/private/var/db/dslocal/nodes/Default/users/root.plist" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Successfully copied Root user plist"
                    logToFile_(me)
                end if
            end considering
            --Set variableVariable
            set variableVariable to netBootDmgMountPath & "/private/var/db/dslocal/nodes/Default/users/root.plist"
            --Log Action
            set logMe to "Trying to set ownership to root on " & quoted form of variableVariable
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown root:wheel " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of variableVariable
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set permissions to 600 on "  & quoted form of variableVariable
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod 600 "  & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissions to 600 on "  & quoted form of variableVariable
            logToFile_(me)
            --Log Action
            set logMe to "Trying to copy /etc/kcpassword"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying Root User /etc/kcpassword"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 202
            -- Copy kcpassword
            do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/kcpassword " & quoted form of netBootDmgMountPath & "/etc/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully copied /etc/kcpassword"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Correcting permissions on /etc/kcpassword"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 204
            --Log Action
            set logMe to "Trying to set ownership to root on " & quoted form of netBootDmgMountPath & "/etc/kcpassword"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/etc/kcpassword" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/etc/kcpassword"
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set permissions to 600 on " & quoted form of netBootDmgMountPath & "/etc/kcpassword"
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod 600 " & quoted form of netBootDmgMountPath & "/etc/kcpassword" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissions to 600 on " & quoted form of netBootDmgMountPath & "/etc/kcpassword"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting Root User auto login"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 206
            --Log Action
            set logMe to "Trying to set Root User auto login"
            logToFile_(me)
            -- Write JSS URL to plist,
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist autoLoginUser -string root" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully set Root User auto login"
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist"
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set permissions to 644 on " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist"
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod 644 " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissions to 644 on " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist"
            logToFile_(me)
            --Log Action
            set logMe to "Trying to copy Root user dock.plist"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying Root User dock.plist"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 208
            -- Copy the root.plist
            do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/com.apple.dock.plist " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully copied Root user dock.plist"
            logToFile_(me)
            -- Install rc.netboot.pkg
            installRCNetboot_(me)
        on error
            --Log Action
            set logMe to "Error: Installing Root User"
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Installing Root User"
            -- Notify of errors or success
            userNotify_(me)
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
                set my buildProcessTextField to "Copying modified /etc/rc.netboot"
                
                delay 0.1
                
                --Log Action
                set logMe to "Trying to copy /etc/rc.netboot"
                logToFile_(me)
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 210
                
                -- Copy the root.plist
                do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/rc.netboot " & quoted form of netBootDmgMountPath & "/etc/" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Successfully copied /etc/rc.netboot"
                logToFile_(me)
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Correcting permissions on /etc/rc.netboot"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 215
                
                --Log Action
                set logMe to "Trying to set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/etc/rc.netboot"
                logToFile_(me)
                
                -- Correct ownership
                do shell script "/usr/sbin/chown -R root:wheel " & quoted form of netBootDmgMountPath & "/etc/rc.netboot" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/etc/rc.netboot"
                logToFile_(me)
                
                --Log Action
                set logMe to "Trying to set permissions to 755 on "  & quoted form of netBootDmgMountPath & "/etc/rc.netboot"
                logToFile_(me)
                
                -- Making writable
                do shell script "/bin/chmod -R 755 "  & quoted form of netBootDmgMountPath & "/etc/rc.netboot" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set permissions to 755 on "  & quoted form of netBootDmgMountPath & "/etc/rc.netboot"
                logToFile_(me)
                
                -- Set Desktop Image to selected
                copyDesktopImage_(me)
                
            on error
            
                --Log Action
                set logMe to "Error: Installing modified rc.netboot file"
                logToFile_(me)
            
                -- Set to false to display
                set my userNotifyErrorHidden to false
                
                -- Set Error message
                set my userNotifyError to "Error: Installing modified rc.netboot file"
                
                -- Notify of errors or success
                userNotify_(me)
                
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
                logToFile_(me)
                try
                    -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                    do shell script "unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                end try
                -- Set to text
                set customDesktopImagePath to customDesktopImagePath as text
                --Log Action
                set logMe to "Trying to copy " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                logToFile_(me)
                -- Copy selected image
                do shell script "cp -r " & quoted form of customDesktopImagePath & " " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Copied " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                logToFile_(me)
                -- Copy Casper Imaging.app selected earlier
                copyCasperImagingApp_(me)
            on error
                --Log Action
                set logMe to "Error: Copying Desktop Image"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Copying Desktop Image"
                -- Notify of errors or success
                userNotify_(me)
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
            set selectedAppPathToCopy to do shell script "/bin/echo " & quoted form of selectedAppPath & " | rev | cut -c 2- | rev"
            
            --Log Action
            set logMe to "Casper Imaging.app to copy resides " & selectedAppPathToCopy
            logToFile_(me)
            
            -- Copy location for Casper Imaging.app
            set variableVariable to netBootDmgMountPath & "/Applications/"
            
            -- Copy path of Casper Imaging.app
            set copiedAppPath to netBootDmgMountPath & "/Applications/Casper Imaging.app"
            
            --Log Action
            set logMe to "Casper Imaging.app to be copied to " & copiedAppPath
            logToFile_(me)
            
            -- Copy Casper Imaging.app & log
            do shell script "cp -r " & quoted form of selectedAppPathToCopy & " " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

            --Log action
            set logMe to "Copied " & selectedAppPath & " to " & variableVariable
            logToFile_(me)
            
            -- Try as errors if not found (i think)
            try
                
                -- Delete Quaratine flag
                do shell script "xattr -d com.apple.quarantine " & quoted form of copiedAppPath user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Quarantine flag removed from " & copiedAppPath
                logToFile_(me)
            
            end try
        
            -- Write the Casper Imaging plist
            writeCasperImagingPlist_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: There was an issue copying  " & selectedAppPath & " to " & variableVariable
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: There was an issue copying  " & selectedAppPath & " to " & variableVariable
            
            -- Notify of errors or success
            userNotify_(me)
        
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
            do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " allowInvalidCertificate -bool true" user name adminUserName password adminUsersPassword with administrator privileges
            -- Log Action
            set logMe to "com.jamfsoftware.jss.plist created & allow invalid certificate set"
            logToFile_(me)
            -- If a JSS URL is specified
            if jssURL is not ""
                -- Write JSS URL to plist,
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " url -string " & jssURL user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "plist updated with JSS url"
                logToFile_(me)
            end if
            -- Install CasperImagingLaunchAgent
            installCasperImagingLaunchAgent_(me)
        on error
            --Log Action
            set logMe to "Error: Writing the Casper Imaging plist"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Writing the Casper Imaging plist"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end writeCasperImagingPlist_

    -- Install CasperImagingLaunchAgent
    on installCasperImagingLaunchAgent_(sender)
        
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing Casper Imaging LaunchAgent"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 250
            --Log Action
            set logMe to "Trying to install Casper Imaging LaunchAgent"
            logToFile_(me)
            -- Install com.AutoCasperNBI.CasperImaging.plist from rescources
            do shell script "ditto " & quoted form of pathToResources & "/com.AutoCasperNBI.CasperImaging.plist " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Casper Imaging LaunchAgent plist installed"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 253
            --Log Action
            set logMe to "Correcting ownership on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 256
            --Log Action
            set logMe to "Trying to correct permissions on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist"
            logToFile_(me)
            -- Making  writable
            do shell script "/bin/chmod 644 " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissons on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist to 644"
            logToFile_(me)
            -- Get JSS CA Cert if JSS URL given
            importJSSCACert_(me)
        on error
            --Log Action
            set logMe to "Error: Installing Casper Imaging LaunchAgent"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Installing Casper Imaging LaunchAgent"
            -- Notify of errors or success
            userNotify_(me)
        end try
        
    end installCasperImagingLaunchAgent_

    -- Get JSS CA Cert if JSS URL given
    on importJSSCACert_(sender)
        -- If a JSS URL is specified
        if jssURL is not equal to "" then
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
                logToFile_(me)
                -- Download CA Cert from JSS to /Library/Application Support/AutoCasperNBI/Certificates/UUID
                do shell script "curl -k -o " & quoted form of variableVariable & tempUUID & ".cer " & jssURL & "/CA/SCEP?operation=getcacert" user name adminUserName password adminUsersPassword with administrator privileges
                -- Log Action
                set logMe to "Downloaded JSS CA Cert to " & quoted form of variableVariable
                logToFile_(me)
                -- Add any additional certs if specified
                importAdditionalCerts_(me)
            on error
                --Log Action
                set logMe to "Error: Importing JSS CA Cert"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Importing JSS CA Cert"
                -- Notify of errors or success
                userNotify_(me)
            end try
        else
            -- Add any additional certs if specified
            importAdditionalCerts_(me)
        end if
    end importJSSCACert_

    -- Add any additional certs if specified
    on importAdditionalCerts_(sender)
        -- If we're importing certs
        --if additionalCerts is not {}
        if my additionalCerts as string is not equal to "" then
                try
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Additional Certs"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 265
                    -- Set variable to list
                    set additionalCerts to additionalCerts as list
                    -- For each item in array
                    repeat with selectedCertsPath in additionalCerts
                        -- Application Support location on TempOSdmg for installing at boot
                        set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Certificates/"
                        -- Copy Cert
                        do shell script "cp -r " & quoted form of selectedCertsPath & " " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                        -- Log Action
                        set logMe to "Copied additional Cert " & quoted form of selectedCertsPath  & " to " & quoted form of variableVariable
                        logToFile_(me)
                    end repeat
                    -- Enable Simple Finder if selected
                    enableSimpleFinder_(me)
                on error
                    --Log Action
                    set logMe to "Error: Copying Additional Cert(s)"
                    logToFile_(me)
                    
                    -- Set to false to display
                    set my userNotifyErrorHidden to false
                    
                    -- Set Error message
                    set my userNotifyError to "Error: Copying Additional Cert(s)"
                    
                    -- Notify of errors or success
                    userNotify_(me)
                end try
        else
            -- Enable Simple Finder if selected
            enableSimpleFinder_(me)
        end if
    end importAdditionalCerts_

    -- Enable Simple Finder if selected
    on enableSimpleFinder_(sender)
        -- Set to boolean of value
        set simpleFinderEnabled to simpleFinderEnabled as boolean
        -- If we're enabling simple Finder
        if simpleFinderEnabled is true
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Enabling Simple Finder"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 270
                --Log Action
                set logMe to "Trying enable Simple Finder"
                logToFile_(me)
                -- Enable Simple Finder
                do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.finder.plist InterfaceLevel simple" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Simple Finder enabled"
                logToFile_(me)
                -- Disable Fast User Switching
                disableFastUserSwitching_(me)
            on error
                --Log Action
                set logMe to "Error: Enabling Simple Finder"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Enabling Simple Finder"
                -- Notify of errors or success
                userNotify_(me)
            end try
        else
            -- Disable Fast User Switching
            disableFastUserSwitching_(me)
        end if
    end enableSimpleFinder_

    -- Disable Fast User Switching
    on disableFastUserSwitching_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling Fast User Switching"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 275
            --Log Action
            set logMe to "Trying disable Fast User Switching"
            logToFile_(me)
            -- Enable Simple Finder
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool NO" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Fast User Switching disabled"
            logToFile_(me)
            -- Set the language of the .nbi
            setNetBootLanguage_(me)
            on error
            --Log Action
            set logMe to "Error: Disabling Fast User Switching"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Disabling Fast User Switching"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end disableFastUserSwitching_

    -- Set the language of the .nbi
    on setNetBootLanguage_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NetBoot's OS Language"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 280
            --Log Action
            set logMe to "Getting language code for selected language " & languageSelected
            logToFile_(me)
            -- Language codes taken from /System/Library/PrivateFrameworks/IntlPreferences.framework/Versions/A/Resources/Languages.strings
            -- Set to text of value
            set languageSelected to languageSelected as text
            -- Get Language code from languages selected (code is after : in the drop down).
            set languageCode to text ((offset of ":" in languageSelected) + 2) thru -1 of languageSelected
            --Log Action
            set logMe to "Language Code is: " & languageCode
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set NetBoot's OS Language"
            logToFile_(me)
            -- Set Language
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/.GlobalPreferences.plist AppleLanguages -array " & quoted form of languageCode & " en fr de \"zh-Hans\" \"zh-Hant\" ja es it nl ko pt \"pt-PT\" da fi nb sv ru pl tr ar th cs hu ca hr el he ro sk uk id ms vi" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "NetBoot's OS Language set"
            logToFile_(me)
            -- Set the NetBoot's Input Language
            setNetBootInputLanguage_(me)
        on error
            --Log Action
            set logMe to "Error: Setting NetBoot's Language"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Setting NetBoot's Language"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end setNetBootLanguage_

    -- Set the NetBoot's Input Language
    on setNetBootInputLanguage_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NetBoot's Input Language"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 285
            --Log Action
            set logMe to "Trying to get input layout id for: " & inputLanguageSelected
            logToFile_(me)
            -- Set to text of value
            set inputLanguageSelected to inputLanguageSelected as text
            -- Set Keyboard ID depending on Input Language.
            if inputLanguageSelected is equal to "Afghan Dari" then
                set inputLayoutID to "-2092"
                else if inputLanguageSelected is equal to "Afghan Pashto" then
                set inputLayoutID to "-2094"
                else if inputLanguageSelected is equal to "Afghan Uzbek" then
                set inputLayoutID to "-2093"
                else if inputLanguageSelected is equal to "Arabic" then
                set inputLayoutID to "-17920"
                else if inputLanguageSelected is equal to "Arabic PC" then
                set inputLayoutID to "-17921"
                else if inputLanguageSelected is equal to "Arabic-QWERTY" then
                set inputLayoutID to "-18000"
                else if inputLanguageSelected is equal to "Armenian-HM QWERTY" then
                set inputLayoutID to "-28161"
                else if inputLanguageSelected is equal to "Armenian-Western QWERTY" then
                set inputLayoutID to "-28164"
                else if inputLanguageSelected is equal to "Australian" then
                set inputLayoutID to "15"
                else if inputLanguageSelected is equal to "Austrian" then
                set inputLayoutID to "92"
                else if inputLanguageSelected is equal to "Azeri" then
                set inputLayoutID to "-49"
                else if inputLanguageSelected is equal to "Bangla" then
                set inputLayoutID to "-22528"
                else if inputLanguageSelected is equal to "Bangla-QWERTY" then
                set inputLayoutID to "-22529"
                else if inputLanguageSelected is equal to "Belgian" then
                set inputLayoutID to "6"
                else if inputLanguageSelected is equal to "Brazilian" then
                set inputLayoutID to "71"
                else if inputLanguageSelected is equal to "British" then
                set inputLayoutID to "2"
                else if inputLanguageSelected is equal to "British-PC" then
                set inputLayoutID to "250"
                else if inputLanguageSelected is equal to "Bulgarian" then
                set inputLayoutID to "19528"
                else if inputLanguageSelected is equal to "Bulgarian - Phonetic" then
                set inputLayoutID to "19529"
                else if inputLanguageSelected is equal to "Byelorussian" then
                set inputLayoutID to "19517"
                else if inputLanguageSelected is equal to "Canadian" then
                set inputLayoutID to "29"
                else if inputLanguageSelected is equal to "Canadian - CSA" then
                set inputLayoutID to "80"
                else if inputLanguageSelected is equal to "Cherokee-Nation" then
                set inputLayoutID to "-26112"
                else if inputLanguageSelected is equal to "Cherokee-QWERTY" then
                set inputLayoutID to "-26113"
                else if inputLanguageSelected is equal to "Czech-QWERTY" then
                set inputLayoutID to "30778"
                else if inputLanguageSelected is equal to "Devanagari" then
                set inputLayoutID to "20480"
                else if inputLanguageSelected is equal to "Devanagari-QWERTY" then
                set inputLayoutID to "-20481"
                else if inputLanguageSelected is equal to "Dutch" then
                set inputLayoutID to "26"
                else if inputLanguageSelected is equal to "Dvorak" then
                set inputLayoutID to "16300"
                else if inputLanguageSelected is equal to "Dvorak - Left" then
                set inputLayoutID to "16302"
                else if inputLanguageSelected is equal to "DVORAK - QWERTY CMD" then
                set inputLayoutID to "16301"
                else if inputLanguageSelected is equal to "Dvorak - Right" then
                set inputLayoutID to "16303"
                else if inputLanguageSelected is equal to "Estonian" then
                set inputLayoutID to "30764"
                else if inputLanguageSelected is equal to "Faroese" then
                set inputLayoutID to "-47"
                else if inputLanguageSelected is equal to "Finnish" then
                set inputLayoutID to "17"
                else if inputLanguageSelected is equal to "FinnishExtended" then
                set inputLayoutID to "-17"
                else if inputLanguageSelected is equal to "FinnishSami-PC" then
                set inputLayoutID to "-18"
                else if inputLanguageSelected is equal to "French" then
                set inputLayoutID to "1"
                else if inputLanguageSelected is equal to "French-numerical" then
                set inputLayoutID to "1111"
                else if inputLanguageSelected is equal to "Georgian-QWERTY" then
                set inputLayoutID to "-27650"
                else if inputLanguageSelected is equal to "German" then
                set inputLayoutID to "3"
                else if inputLanguageSelected is equal to "Greek" then
                set inputLayoutID to "-18944"
                else if inputLanguageSelected is equal to "Greek Polytonic" then
                set inputLayoutID to "-18945"
                else if inputLanguageSelected is equal to "Gujarati" then
                set inputLayoutID to "-21504"
                else if inputLanguageSelected is equal to "Gujarati-QWERTY" then
                set inputLayoutID to "-21505"
                else if inputLanguageSelected is equal to "Gurmukhi" then
                set inputLayoutID to "-20992"
                else if inputLanguageSelected is equal to "Gurmukhi-QWERTY" then
                set inputLayoutID to "-20993"
                else if inputLanguageSelected is equal to "Hawaiian" then
                set inputLayoutID to "-50"
                else if inputLanguageSelected is equal to "Hebrew" then
                set inputLayoutID to "-18432"
                else if inputLanguageSelected is equal to "Hebrew-PC" then
                set inputLayoutID to "-18433"
                else if inputLanguageSelected is equal to "Hebrew-QWERTY" then
                set inputLayoutID to "-18500"
                else if inputLanguageSelected is equal to "Hungarian" then
                set inputLayoutID to "30763"
                else if inputLanguageSelected is equal to "Icelandic" then
                set inputLayoutID to "-21"
                else if inputLanguageSelected is equal to "Inuktitut-Nunavut" then
                set inputLayoutID to "-30604"
                else if inputLanguageSelected is equal to "Inuktitut-Nutaaq" then
                set inputLayoutID to "-30602"
                else if inputLanguageSelected is equal to "Inuktitut-QWERTY" then
                set inputLayoutID to "-30600"
                else if inputLanguageSelected is equal to "Inuttitut Nunavik" then
                set inputLayoutID to "-30603"
                else if inputLanguageSelected is equal to "Irish" then
                set inputLayoutID to "50"
                else if inputLanguageSelected is equal to "Irish Extended" then
                set inputLayoutID to "-500"
                else if inputLanguageSelected is equal to "Italian" then
                set inputLayoutID to "4"
                else if inputLanguageSelected is equal to "Italian - Pro" then
                set inputLayoutID to "223"
                else if inputLanguageSelected is equal to "Jawi-QWERTY" then
                set inputLayoutID to "-19000"
                else if inputLanguageSelected is equal to "Kannada" then
                set inputLayoutID to "-24064"
                else if inputLanguageSelected is equal to "Kannada-QWERTY" then
                set inputLayoutID to "-24065"
                else if inputLanguageSelected is equal to "Kazakh" then
                set inputLayoutID to "-19501"
                else if inputLanguageSelected is equal to "Khmer" then
                set inputLayoutID to "-26114"
                else if inputLanguageSelected is equal to "Kurdish-Sorani" then
                set inputLayoutID to "-17926"
                else if inputLanguageSelected is equal to "Latvian" then
                set inputLayoutID to "30765"
                else if inputLanguageSelected is equal to "Lithuanian" then
                set inputLayoutID to "30761"
                else if inputLanguageSelected is equal to "Macedonian" then
                set inputLayoutID to "19523"
                else if inputLanguageSelected is equal to "Malayalam" then
                set inputLayoutID to "-24576"
                else if inputLanguageSelected is equal to "Malayalam-QWERTY" then
                set inputLayoutID to "-24577"
                else if inputLanguageSelected is equal to "Maltese" then
                set inputLayoutID to "-501"
                else if inputLanguageSelected is equal to "Maori" then
                set inputLayoutID to "-51"
                else if inputLanguageSelected is equal to "Myanmar-QWERTY" then
                set inputLayoutID to "-25601"
                else if inputLanguageSelected is equal to "Nepali" then
                set inputLayoutID to "-20484"
                else if inputLanguageSelected is equal to "Northern Sami" then
                set inputLayoutID to "-1200"
                else if inputLanguageSelected is equal to "Norwegian" then
                set inputLayoutID to "12"
                else if inputLanguageSelected is equal to "Norwegian Extended" then
                set inputLayoutID to "-12"
                else if inputLanguageSelected is equal to "NorwegianSami-PC" then
                set inputLayoutID to "-13"
                else if inputLanguageSelected is equal to "Oriya" then
                set inputLayoutID to "-22016"
                else if inputLanguageSelected is equal to "Oriya-QWERTY" then
                set inputLayoutID to "-22017"
                else if inputLanguageSelected is equal to "Persian" then
                set inputLayoutID to "--17960"
                else if inputLanguageSelected is equal to "Persian-ISIRI 2901" then
                set inputLayoutID to "-2901"
                else if inputLanguageSelected is equal to "Persian-QWERTY" then
                set inputLayoutID to "-1959"
                else if inputLanguageSelected is equal to "Polish" then
                set inputLayoutID to "30762"
                else if inputLanguageSelected is equal to "Polish Pro" then
                set inputLayoutID to "30788"
                else if inputLanguageSelected is equal to "Portuguese" then
                set inputLayoutID to "10"
                else if inputLanguageSelected is equal to "Romanian" then
                set inputLayoutID to "-39"
                else if inputLanguageSelected is equal to "Romanian-Standard" then
                set inputLayoutID to "-38"
                else if inputLanguageSelected is equal to "Russian" then
                set inputLayoutID to "19456"
                else if inputLanguageSelected is equal to "RussianWin" then
                set inputLayoutID to "19458"
                else if inputLanguageSelected is equal to "Russian - Phonetic" then
                set inputLayoutID to "19457"
                else if inputLanguageSelected is equal to "Sami-PC" then
                set inputLayoutID to "-1201"
                else if inputLanguageSelected is equal to "Serbian" then
                set inputLayoutID to "19521"
                else if inputLanguageSelected is equal to "Serbian-Latin" then
                set inputLayoutID to "-19521"
                else if inputLanguageSelected is equal to "Sinhala" then
                set inputLayoutID to "-25088"
                else if inputLanguageSelected is equal to "Sinhala-QWERTY" then
                set inputLayoutID to "-25089"
                else if inputLanguageSelected is equal to "Slovak" then
                set inputLayoutID to "30777"
                else if inputLanguageSelected is equal to "Slovak-QWERTY" then
                set inputLayoutID to "30779"
                else if inputLanguageSelected is equal to "Slovenian" then
                set inputLayoutID to "-66"
                else if inputLanguageSelected is equal to "Spanish" then
                set inputLayoutID to "8"
                else if inputLanguageSelected is equal to "Spanish - ISO" then
                set inputLayoutID to "87"
                else if inputLanguageSelected is equal to "Swedish" then
                set inputLayoutID to "224"
                else if inputLanguageSelected is equal to "Swedish - Pro" then
                set inputLayoutID to "7"
                else if inputLanguageSelected is equal to "SwedishSami-PC" then
                set inputLayoutID to "-15"
                else if inputLanguageSelected is equal to "Swiss French" then
                set inputLayoutID to "18"
                else if inputLanguageSelected is equal to "Swiss German" then
                set inputLayoutID to "19"
                else if inputLanguageSelected is equal to "Telugu" then
                set inputLayoutID to "-23552"
                else if inputLanguageSelected is equal to "Telugu-QWERTY" then
                set inputLayoutID to "-23553"
                else if inputLanguageSelected is equal to "Thai" then
                set inputLayoutID to "-26624"
                else if inputLanguageSelected is equal to "Thai-PattaChote" then
                set inputLayoutID to "-226626"
                else if inputLanguageSelected is equal to "TibetanOtaniUS" then
                set inputLayoutID to "-26628"
                else if inputLanguageSelected is equal to "Tibetan-QWERTY" then
                set inputLayoutID to "-26625"
                else if inputLanguageSelected is equal to "Tibetan-Wylie" then
                set inputLayoutID to "-2398"
                else if inputLanguageSelected is equal to "Turkish" then
                set inputLayoutID to "-24"
                else if inputLanguageSelected is equal to "Turkish-QWERTY" then
                set inputLayoutID to "-35"
                else if inputLanguageSelected is equal to "Turkish-QWERTY-PC" then
                set inputLayoutID to "-36"
                else if inputLanguageSelected is equal to "Ukrainian" then
                set inputLayoutID to "19518"
                else if inputLanguageSelected is equal to "UnicodeHexInput" then
                set inputLayoutID to "-1"
                else if inputLanguageSelected is equal to "Urdu" then
                set inputLayoutID to "--17925"
                else if inputLanguageSelected is equal to "U.S." then
                set inputLayoutID to "0"
                else if inputLanguageSelected is equal to "US Extended" then
                set inputLayoutID to "-2"
                else if inputLanguageSelected is equal to "USInternational-PC" then
                set inputLayoutID to "15000"
                else if inputLanguageSelected is equal to "Uyghur" then
                set inputLayoutID to "-27000"
                else if inputLanguageSelected is equal to "Vietnamese" then
                set inputLayoutID to "-31232"
                else if inputLanguageSelected is equal to "Welsh" then
                set inputLayoutID to "-790"
            end if
            --Log Action
            set logMe to "Keyboard Layout ID set to " & inputLayoutID
            logToFile_(me)
            --Log Action
            set logMe to "Trying to set NetBoot's Input Language"
            logToFile_(me)
            -- Set variableVariables's value
            set variableVariable to quoted form of ("com.apple.keylayout." & inputLanguageSelected)
            --Remove Spaces from variableVariable
            repeat with letters in variableVariable
                if letters does not contain " " then
                    set my keyboardLayoutInputSourceID to keyboardLayoutInputSourceID & letters
                end if
            end repeat
            -- Set Source ID
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID " & keyboardLayoutInputSourceID user name adminUserName password adminUsersPassword with administrator privileges
            -- Set Ascii Input Source
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.HIToolbox.plist AppleDefaultAsciiInputSource -dict InputSourceKind \"Keyboard Layout\" \"KeyboardLayout ID\" -int " & quoted form of inputLayoutID & " \"KeyboardLayout Name\" " & quoted form of inputLanguageSelected user name adminUserName password adminUsersPassword with administrator privileges
            -- reset variable
            set variableVariable to ""
            -- Add a \ if a space is found
            repeat with letters in inputLanguageSelected
                if letters contains " " then
                    set letters to "\\"
                    set variableVariable to variableVariable & letters
                else
                    set variableVariable to variableVariable & letters
                end if
            end repeat
            -- Set Enabled Input Sources
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.HIToolbox.plist AppleEnabledInputSources -array '{ InputSourceKind = \"Keyboard Layout\"; \"KeyboardLayout ID\" = " & quoted form of inputLayoutID & "; \"KeyboardLayout Name\" = \"" & variableVariable & "\"; }'" user name adminUserName password adminUsersPassword with administrator privileges
            -- Set Input Source History
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.HIToolbox.plist AppleInputSourceHistory -array '{ InputSourceKind = \"Keyboard Layout\"; \"KeyboardLayout ID\" = " & quoted form of inputLayoutID & "; \"KeyboardLayout Name\" = \"" & variableVariable & "\"; }'" user name adminUserName password adminUsersPassword with administrator privileges
            -- Set Selected Input Sources
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources -array '{ InputSourceKind = \"Keyboard Layout\"; \"KeyboardLayout ID\" = " & quoted form of inputLayoutID & "; \"KeyboardLayout Name\" = \"" & variableVariable & "\"; }'" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "NetBoot's Input Language set"
            logToFile_(me)
            -- Add any additional pkgs if specified
            installAdditionalPKGs_(me)
        on error
            --Log Action
            set logMe to "Error: Setting NetBoot's Input Language"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Setting NetBoot's Input Language"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end setNetBootInputLanguage_

    -- Add any additional pkgs if specified
    on installAdditionalPKGs_(sender)
        -- If we're installing additional PKGs
        --if additionalPKGs is not missing value then
        if my additionalCerts as string is not equal to "" then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Installing Additional PKGs"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 290
                -- Set variable to list
                set additionalPKGs to additionalPKGs as list
                -- For each item in array
                repeat with selectedPKGsPath in additionalPKGs
                    -- Install selectedPKGsPath
                    do shell script "installer -pkg " & quoted form of selectedPKGsPath & " -target " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
                    -- Log Action
                    set logMe to "Installed " & quoted form of selectedPKGsPath  & " to " & quoted form of netBootDmgMountPath
                    logToFile_(me)
                end repeat
                -- Get size of NetBoot.dmg
                getNetBootDmgSize_(me)
            on error
                --Log Action
                set logMe to "Error: Copying Additional PKG(s)"
                logToFile_(me)
                
                -- Set to false to display
                set my userNotifyErrorHidden to false
                
                -- Set Error message
                set my userNotifyError to "Error: Copying Additional PKG(s)"
                
                -- Notify of errors or success
                userNotify_(me)
            end try
            else
            -- Get size of NetBoot.dmg
            getNetBootDmgSize_(me)
        end if
    end installAdditionalPKGs_

    -- Get size of NetBoot.dmg
    on getNetBootDmgSize_(sender)
    
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Getting NetBoot.dmg size"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 300
            
            --Log Action
            set logMe to "Trying to get the Total size of " & quoted form of netBootDmgMountPath
            logToFile_(me)
            
            -- Get total size of NetBoot.dmg
            set netBootDmgTotalSize to do shell script "/usr/sbin/diskutil info " & quoted form of netBootDmgMountPath & " | grep \"Total Size\" | awk '{ print $3 }'"
            
            -- Round value, resolves issue with non full stop decimals used in some langauges
            set netBootDmgTotalSize to (round netBootDmgTotalSize rounding up)
            
            --Log Action
            set logMe to "Total size of " & quoted form of netBootDmgMountPath & "is " & netBootDmgTotalSize & "GB, rounded up"
            logToFile_(me)
            
            -- Get the value of the free space available on NetBoot.dmg
            set netBootDmgFreeSpace to do shell script "/usr/sbin/diskutil info " & quoted form of netBootDmgMountPath & " | grep \"Volume Free Space\" | awk '{ print $4 }'"
            
            -- Round value, resolves issue with non full stop decimals used in some langauges
            set netBootDmgFreeSpace to (round netBootDmgFreeSpace rounding down)
            
            --Log Action
            set logMe to "There is " & netBootDmgFreeSpace & "GB space free on " & quoted form of netBootDmgMountPath & " rounded down"
            logToFile_(me)
            
            -- Get the space used on NetBoot.dmg
            set netBootDmgUsedSpace to (netBootDmgTotalSize - netBootDmgFreeSpace)
            
            --Log Action
            set logMe to "Used space on " & quoted form of netBootDmgMountPath & "is around " & netBootDmgUsedSpace & "GB"
            logToFile_(me)
            
            -- Set NetBoot.dmg's size to + 2GB of what is needed
            set netBootDmgResize to netBootDmgUsedSpace + 2
            
            --Log Action
            set logMe to "If we're reducing the .nbi, NetBoot.reduced.dmg will need to be around " & netBootDmgResize & "GB"
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
            
                -- Disable Spotlight Indexing on NetBoot.dmg
                disableSpotlight_(me)
            
            end if
        
        on error
            
            --Log Action
            set logMe to "Error: Calculating space needed"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Calculating space needed"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end getNetBootDmgSize_

    ---- Reduce NetBoot Image
    on createReducedNetBootImage_(sedner)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating a smaller NetBoot.dmg"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 310
            --Log action
            set logMe to "Trying to create NetBoot.reduced.dmg in " & netBootDirectory
            logToFile_(me)
            -- Set to text value, to avoid an issue when name changed
            set netBootNameTextField to netBootNameTextField as text
            -- Create the NetBoot.dmg
            do shell script "/usr/bin/hdiutil create " & quoted form of netBootDirectory & "/NetBoot.reduced -size " & netBootDmgResize & "g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"GPTSPUD\" -fs \"HFS+\" -stretch 500g" user name adminUserName password adminUsersPassword with administrator privileges
            --Log action
            set logMe to "Successfully created NetBoot.reduced.dmg in " & quoted form of netBootDirectory
            logToFile_(me)
            -- Mount the NetBoot.dmg
            mountReducedNetBootDmg_(me)
        on error
            --Log Action
            set logMe to "Error: Failed to create NetBoot.reduced.dmg"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Failed to create NetBoot.reduced.dmg"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end createReducedNetBootImage_

    -- Mount the NetBoot.reduced.dmg
    on mountReducedNetBootDmg_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Mounting NetBoot.reduced.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 320
            
            --Log Action
            set logMe to "Trying to mount: " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg"
            logToFile_(me)
            
            -- Mount the NetBoot.dmg & get the mount path
            set netBootReducedDmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Mounted to: " & netBootReducedDmgMountPath
            logToFile_(me)
            
            -- Copy NetBoot.dmg's content to NetBoot.reduced.dmg
            copyNetBootDmgToNetBootReducedDmg_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Cannot mount NetBoot.reduced.dmg"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Cannot mount NetBoot.reduced.dmg"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end mountReducedNetBootDmg_

    -- Copy NetBoot.dmg's content to NetBoot.reduced.dmg
    on copyNetBootDmgToNetBootReducedDmg_(sender)
        
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying the contents of the NetBoot.dmg to NetBoot.reduced.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 330
            
            --Log action
            set logMe to "Copying contents of " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            logToFile_(me)
            
            -- Copy contents of the SelectedOSdmg to NetBootdmg
            do shell script "/usr/bin/ditto " & quoted form of netBootDmgMountPath & " " & quoted form of netBootReducedDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Successfully copied " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            logToFile_(me)
            
            --Delete NetBoot.dmg
            deleteNetBootDmg_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Cannot copy contents of " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Cannot copy contents of " & quoted form of netBootDmgMountPath & " to " & quoted form of netBootReducedDmgMountPath
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end copyNetBootDmgToNetBootReducedDmg_

    --Delete NetBoot.dmg
    on deleteNetBootDmg_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Unmounting NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 340
            
            ---- Unmount NetBoot.dmg ----
            try
                
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                logToFile_(me)
                
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
                
            end try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting NetBoot.dmg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 345
            
            --Log action
            set logMe to "Deleting " & quoted form of netBootDirectory & "/NetBoot.dmg"
            logToFile_(me)
            
            -- Delete NetBoot.dmg
            do shell script "/bin/rm -f " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log action
            set logMe to "Deleted " & quoted form of netBootDirectory & "/NetBoot.dmg"
            logToFile_(me)
            
            -- Change variables value
            set my netBootDmgMountPath to netBootReducedDmgMountPath
            
            -- Expands the NetBoot.dmg
            expandNetBootDMG_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Failed to delete NetBoot.dmg"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Failed to delete NetBoot.dmg"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
                    set my buildProccessProgressBar to 350
                    
                    -- Set to string
                    set netBootDmgUsedSpace to netBootDmgUsedSpace as string
                    set netBootImageExpandValue to netBootImageExpandValue as string
                    
                    -- Set NetBoot.dmg to required space + selected expansion value
                    set netBootExpandedTotalSize to (netBootDmgUsedSpace + netBootImageExpandValue)
                    
                    --Log Action
                    set logMe to "NetBoot.reduced.dmg will be expanded to around " & netBootExpandedTotalSize & "GB"
                    
                    -- Log To file
                    logToFile_(me)
                    
                    ---- Unmount NetBoot.reduced.dmg ----
                    try
                        
                        --Log Action
                        set logMe to "Trying to detach " & netBootReducedDmgMountPath
                        logToFile_(me)
                        
                        -- Detach Volume
                        do shell script "/usr/bin/hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
                        
                        --Log Action
                        set logMe to "Successfully detached " & netBootDmgMountPath
                        logToFile_(me)
                        
                    end try
                    
                    -- Set to text
                    set netBootExpandedTotalSize to netBootExpandedTotalSize as text
                    set netBootDirectory to netBootDirectory as text
                    
                    --Log Action
                    set logMe to "Trying to expand " & netBootDirectory & "/NetBoot.reduced.dmg to " & netBootExpandedTotalSize & "GB"
                    logToFile_(me)
                    
                    -- Expand NetBoot.reduced.dmg by the value given before
                    do shell script "/usr/bin/hdiutil resize -size " & netBootExpandedTotalSize & "g " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Mounting NetBoot.reduced.dmg"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 355
                    
                    --Log Action
                    set logMe to "Trying to mount: " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg"
                    logToFile_(me)
                    
                    -- Mount the NetBoot.dmg & get the mount path
                    set netBootDmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Mounted to: " & netBootReducedDmgMountPath
                    logToFile_(me)
                    
                    -- Disable Spotlight Indexing on NetBoot.dmg
                    disableSpotlight_(me)
                    
                on error
                    
                    --Log Action
                    set logMe to "Error: Expanding NetBoot.reduced.dmg"
                    logToFile_(me)
                    
                    -- Set to false to display
                    set my userNotifyErrorHidden to false
                    
                    -- Set Error message
                    set my userNotifyError to "Error: Expanding NetBoot.reduced.dmg"
                    
                    -- Notify of errors or success
                    userNotify_(me)
                    
                end try
            
            else
            
                try
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Expanding NetBoot.dmg"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 350
                    
                    -- Set to string
                    set netBootDmgUsedSpace to netBootDmgUsedSpace as string
                    set netBootImageExpandValue to netBootImageExpandValue as string
                        
                    -- Set NetBoot.dmg to required space + selected expansion value
                    set netBootExpandedTotalSize to (netBootDmgUsedSpace + netBootImageExpandValue)
                    
                    --Log Action
                    set logMe to "NetBoot.dmg will be expanded to around " & netBootExpandedTotalSize & "GB"
                    logToFile_(me)
                    
                    ---- Unmount NetBoot.dmg ----
                    try
                        
                        --Log Action
                        set logMe to "Trying to detach " & netBootDmgMountPath
                        logToFile_(me)
                        
                        -- Detach Volume
                        do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
                        
                        --Log Action
                        set logMe to "Successfully detached " & netBootDmgMountPath
                        logToFile_(me)
                        
                    end try
                    
                    -- Set to text
                    set netBootExpandedTotalSize to netBootExpandedTotalSize as text
                    set netBootDirectory to netBootDirectory as text
                    
                    --Log Action
                    set logMe to "Trying to expand " & netBootDirectory & "/NetBoot.dmg to " & netBootExpandedTotalSize & "GB"
                    logToFile_(me)
                    
                    -- Expand NetBoot.dmg by the value given before
                    do shell script "/usr/bin/hdiutil resize -size " & netBootExpandedTotalSize & "g " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Mounting NetBoot.dmg"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 355
                    
                    --Log Action
                    set logMe to "Trying to mount: " & quoted form of netBootDirectory & "/NetBoot.dmg"
                    logToFile_(me)
                    
                    -- Mount the NetBoot.dmg & get the mount path
                    set netBootDmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.dmg -owners on -nobrowse | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Mounted to: " & netBootReducedDmgMountPath
                    logToFile_(me)
                    
                    -- Disable Spotlight Indexing on NetBoot.dmg
                    disableSpotlight_(me)
                    
                on error
                    
                    --Log Action
                    set logMe to "Error: Expanding NetBoot.dmg"
                    logToFile_(me)
                    
                    -- Set to false to display
                    set my userNotifyErrorHidden to false
                    
                    -- Set Error message
                    set my userNotifyError to "Error: Expanding NetBoot.dmg"
                    
                    -- Notify of errors or success
                    userNotify_(me)
                    
                end try
                
            end if
        
        else
        
            -- Disable Spotlight Indexing on NetBoot.dmg
            disableSpotlight_(me)
        
        end if

    end expandNetBootDMG_

    -- Disable Spotlight Indexing on NetBoot.dmg
    on disableSpotlight_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling Spotlight Indexing"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 360
            
            --Log Action
            set logMe to "Trying to disable Spotlight Indexing on " & netBootDmgMountPath
            logToFile_(me)
            
            -- Disable Spotlight Indexing
            do shell script "/usr/bin/mdutil -i off " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Disabled Spotlight Indexing on " & netBootDmgMountPath
            logToFile_(me)
            
            -- Create dlyd shared cache files
            createDlydCaches_(me)
            
        on error
            
            --Log Action
            set logMe to "Error: Disabling Spolight Indexing"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Disabling Spolight Indexing"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try
        
    end disableSpotlight_

    -- Create dlyd shared cache files
    on createDlydCaches_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating dyld shared cache files"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 370
            --Log Action
            set logMe to "Creating dyld shared cache files on: " & netBootDmgMountPath
            logToFile_(me)
            -- Update dylyd cache, this can error on success.
            try
                do shell script "/usr/bin/update_dyld_shared_cache -root " & quoted form of netBootDmgMountPath & " -universal_boot -force" user name adminUserName password adminUsersPassword with administrator privileges
            end try
            --Log Action
            set logMe to "Successfully created dyld caches"
            logToFile_(me)
            -- If we're running on 10.9.0 - .3 then manually reduce kernel cache
            manualKernelCacheReductionCheck_(me)
        on error
            --Log Action
            set logMe to "Error: Creating dyld shared cache files"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Creating dyld shared cache files"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end createDlydCaches

    -- If we're running on 10.9.0 - .3 then manually reduce kernel cache
    on manualKernelCacheReductionCheck_(sender)
        considering numeric strings
            -- If we're creating a 10.9.x netboot
            if selectedOSdmgVersion starts with "10.9" then
                --Log Action
                set logMe to "Manually reducing kernel cache as on 10.9"
                logToFile_(me)
                -- Reduce Kernel cache
                reduceKernelCache_(me)
            else
                --Log Action
                set logMe to "Skipping extension deletion as not needed on this OS"
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
            set my buildProccessProgressBar to 380
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/AMD*"
            logToFile_(me)
            
            -- Delete extensions
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/AMD*"  user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/AMD*"
            logToFile_(me)
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/ATI*"
            logToFile_(me)
            
            -- Delete extesntions
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/ATI*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/ATI*"
            logToFile_(me)
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/ATTO*"
            logToFile_(me)
            
            -- Delete extesntions
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/ATTO*" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/ATTO*"
            logToFile_(me)
            
            --Log Action
            set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/JMicronATA.kext"
            logToFile_(me)
            
            -- Delete extesntions
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/JMicronATA.kext" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/JMicronATA.kext"
            logToFile_(me)
            
            -- Generate the Kernel cache
            generateKernelCache_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Deleting extensions"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Deleting extensions"
            
            -- Notify of errors or success
            userNotify_(me)
            
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
            set my buildProccessProgressBar to 390
            
            --Log Action
            set logMe to "Trying to create folder " & netBootDirectory & "/i386/x86_64"
            logToFile_(me)
            
            -- Create the x86_64 folder
            do shell script "/bin/mkdir -p " & quoted form of netBootDirectory & "/i386/x86_64" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Created folder " & netBootDirectory & "/i386/x86_64"
            logToFile_(me)
            
            ---- UPDATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Updating kernel cache"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 394
            
            --Log Action
            set logMe to "Updating kernel cache on: " & netBootDmgMountPath
            logToFile_(me)
            
            -- Update
            do shell script "/usr/sbin/kextcache -update-volume " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Updated kernel cache on: " & netBootDmgMountPath
            logToFile_(me)
            
            ---- GENERATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Generating kernel cache"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 398
            
            --Log Action
            set logMe to "Generating kernel cache"
            logToFile_(me)
            try
                -- If we're building an OS newer than 10.9
                if selectedOSdmgVersionMajor is greater than 9
                    -- Generate kernel cache, silently error as this will error when on 10.9.4 when skipping extensions. Different location used in 10.10.
                    do shell script "/usr/sbin/kextcache -arch x86_64 -l -n -K " & quoted form of netBootDmgMountPath & "/System/Library/Kernels/kernel -c " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Extensions" user name adminUserName password adminUsersPassword with administrator privileges
                else
                    -- Generate kernel cache, silently error as this will error when on 10.9.4 when skipping extensions. Location used pre 10.10
                    do shell script "/usr/sbin/kextcache -arch x86_64 -l -n -K " & quoted form of netBootDmgMountPath & "/mach_kernel -c " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Extensions" user name adminUserName password adminUsersPassword with administrator privileges
                end if
            end try
        
            --Log Action
            set logMe to "Generated kernel cache on: " & netBootDmgMountPath
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying updated kernel cache"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 401
            --Log Action
            set logMe to "Copying updated kernel cache to: " & netBootDmgMountPath & "/System/Library/Caches/com.apple.kext.caches/Startup/kernelcache"
            logToFile_(me)
            -- Copy the plist
            do shell script "/usr/bin/ditto " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Caches/com.apple.kext.caches/Startup/kernelcache " user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Copied updated kernel cache to: " & netBootDmgMountPath & "/System/Library/Caches/com.apple.kext.caches/Startup/kernelcache"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting bootcaches.plist"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 404
            --Log Action
            set logMe to "Deleting bootcaches.plist from: " & netBootDmgMountPath & "/usr/standalone/bootcaches.plist"
            logToFile_(me)
            -- Copy the plist
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/usr/standalone/bootcaches.plist"  user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Deleting bootcaches.plist from: " & netBootDmgMountPath & "/usr/standalone/bootcaches.plist"
            logToFile_(me)
            considering numeric strings
                if selectedOSdmgVersionMajor is less than 8
                    -- If we're creating a 10.7 .nbi, you the kernelcache to a second location
                    do shell script "/usr/bin/ditto " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDirectory & "/i386/" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Copied kernel cache on as NetBoot is older than 10.8"
                    logToFile_(me)
            end if
            end considering
            -- Copy the boot.efi to the booter shell
            copyBootEfi_(me)
            
        on error
            --Log Action
            set logMe to "Error: Generating kernel cache"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Generating kernel cache"
            -- Notify of errors or success
            userNotify_(me)
        end try
        
    end generateKernelCache_

    -- Copy the boot.efi to the booter shell
    on copyBootEfi_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying boot.efi"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 400
            
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi to " & quoted form of netBootDirectory & "/i386/booter"
            logToFile_(me)
            
            -- Copy the plist
            do shell script "/usr/bin/ditto " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi to " & quoted form of netBootDirectory & "/i386/booter"
            logToFile_(me)
            
            --Log Action
            set logMe to "Unlocking " & quoted form of netBootDirectory & "/i386/booter"
            logToFile_(me)
            
            -- Unlock booter
            do shell script "/usr/bin/chflags nouchg " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Unlocked " & quoted form of netBootDirectory & "/i386/booter"
            logToFile_(me)
            
            -- Correct ownership
            do shell script "/usr/sbin/chown -R root:staff " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Set ownership to root:staff on " & netBootDirectory & "/i386/booter"
            logToFile_(me)
            
            -- Copy PlatformSupport.plist
            copyPlatformSupportPlist_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Copying booter.efi"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Copying booter.efi"
            
            -- Notify of errors or success
            userNotify_(me)
        
        end try
        
    end copyBootEfi_

    -- Copy PlatformSupport.plist
    on copyPlatformSupportPlist_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying PlaformSupport.plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 410
            
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist to " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist"
            logToFile_(me)
            
            -- Copy the plist
            do shell script "/usr/bin/ditto " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist" user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist to " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist"
            logToFile_(me)
            
            -- Copy NBImageInfo.plist
            copyNBImageInfoPlist_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Copying PlatformSupport.plist"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Copying PlatformSupport.plist"
            
            -- Notify of errors or success
            userNotify_(me)
        
        end try
        
    end copyPlatformSupportPlist_

    -- Copy NBImageInfo.plist
    on copyNBImageInfoPlist_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying NBImageInfo.plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 425
        
        try
            
            --Log Action
            set logMe to "Copying NBImageInfo.plist"
            logToFile_(me)
            
            -- Copy the plist
            do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/NBImageInfo.plist " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
            
            --Log Action
            set logMe to "Copied NBImageInfo.plist"
            logToFile_(me)
            
            -- Updates NBImageInfo.plist
            updateNBImageInfoPlist_(me)
            
        on error
        
            --Log Action
            set logMe to "Error: Copying NBImageInfo.plist"
            logToFile_(me)
        
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Copying NBImageInfo.plist"
            
            -- Notify of errors or success
            userNotify_(me)
        
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
                set my buildProccessProgressBar to 428
                
                --Log Action
                set logMe to "Trying to change permissions on " & netBootDirectory & "/NBImageInfo.plist"
                logToFile_(me)
                
                -- Making NBImageInfo.plist writable
                do shell script "/bin/chmod 777 "  & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set permissions on " & netBootDirectory & "/NBImageInfo.plist to 777"
                logToFile_(me)
                
                ---- Description----
                -- If we're looking to set a description for this .nbi
                if netBootDescriptionEnabled is true
                    
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist Description"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 430
                    
                    --Log Action
                    set logMe to "Trying to set .nbi description to " & netBootDescription
                    logToFile_(me)
                    
                    -- Set NetBoot to Description
                    do shell script "/usr/bin/defaults write "& quoted form of netBootDirectory & "/NBImageInfo.plist Description -string " & quoted form of netBootDescription user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi Description"
                    logToFile_(me)
                    
                end if
            
                ---- Index ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist Index"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 432
                
                --Log Action
                set logMe to "Trying to set .nbi Index"
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Index -int " & netBootImageIndexTextField user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi Index"
                logToFile_(me)
                
                ---- IsInstall ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist IsInstall value"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 434
                
                --Log Action
                set logMe to "Trying to set .nbi IsInstall value"
                logToFile_(me)
                
                -- Set IsInstall value
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist IsInstall -bool NO" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi IsInstall value"
                logToFile_(me)
                
                ---- Name ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist Name"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 436
                
                --Log Action
                set logMe to "Trying to set .nbi Name to " & netBootNameTextField
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Name -string " & quoted form of netBootNameTextField user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi Name to " & netBootNameTextField
                logToFile_(me)
            
                ---- Diskless ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist to Diskless"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 438

                --Log Action
                set logMe to "Trying to set .nbi to Diskless"
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist  SupportsDiskless -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to Diskless"
                logToFile_(me)
                
                ---- RootPath ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist RootPath"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 440
                
                --Log Action
                set logMe to "Trying to set .nbi to RootPath"
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist RootPath -string NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to RootPath"
                logToFile_(me)
                
                ---- Serve Over ---
                --Log Action
                set logMe to "Setting NBImageInfo.plist's serve over option"
                logToFile_(me)
                
                ---- ImageType ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist ImageType"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 442
                
                --Log Action
                set logMe to "Trying to set .nbi to ImageType"
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist ImageType -string netboot" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to ImageType"
                logToFile_(me)
                
                ---- osVersion ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist osVersion"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 444
                
                --Log Action
                set logMe to "Trying to set .nbi to osVersion"
                logToFile_(me)
                
                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist osVersion -string 10." & selectedOSdmgVersionMajor user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "Set .nbi to osVersion"
                logToFile_(me)
                
                ---- Serve Over ---
                --Log Action
                set logMe to "Setting NBImageInfo.plist's serve over option"
                logToFile_(me)
                
                -- Set to boolean of value
                set netBootServeOverNFS to netBootServeOverNFS as boolean
                
                -- If NetBoot Serve Over NFS to true
                if netBootServeOverNFS is true
                
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist to being served over NFS"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 446

                    --Log Action
                    set logMe to "Trying to set .nbi to being served over NFS"
                    logToFile_(me)
                    
                    -- Set NetBoot Serve over NFS
                    do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Type -string NFS" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi to being served over NFS"
                    logToFile_(me)
                
                else
                
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist to being served over HTTP"
                    
                    delay 0.1
                    
                    -- Update build Process ProgressBar
                    set my buildProccessProgressBar to 446

                    --Log Action
                    set logMe to "Trying to set .nbi to being served over HTTP"
                    logToFile_(me)
                    
                    -- Set NetBoot Serve over HTTP
                    do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Type -string HTTP" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Set .nbi to being served over NFS"
                    logToFile_(me)
                    
                end if

            ---- Enabled ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NBImageInfo.plist to Enabled"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 448

            --Log Action
            set logMe to "Trying to set .nbi to Enabled"
            logToFile_(me)

            -- Set NetBoot to Diskless
            do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist IsEnabled -bool YES" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set .nbi to Enabled"
            logToFile_(me)

            ---- RootPath ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Updating NBImageInfo.plist RootPath"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 450

            -- If we've resized the NetBoot Image
            if netBootImageReduceEnabled is true

                --Log Action
                set logMe to "Trying to set .nbi to RootPath"
                logToFile_(me)

                -- Set NetBoot to Diskless
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist RootPath -string NetBoot.reduced.dmg" user name adminUserName password adminUsersPassword with administrator privileges

                --Log Action
                set logMe to "Set .nbi to RootPath"
                logToFile_(me)

            end if

            ---- EnabledSystemIdentifiers ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NBImageInfo.plist's to EnabledSystemIdentifiers"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 452

            --Log Action
            set logMe to "Trying to set .nbi's EnabledSystemIdentifiers"
            logToFile_(me)

            -- Get list of supported Macs for NBI
            set variableVariable to do shell script "/usr/bin/defaults read " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist SupportedModelProperties"

            -- Set EnabledSystemIdentifiers
            do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist DisabledSystemIdentifiers " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set .nbi's EnabledSystemIdentifiers"
            logToFile_(me)

            ---- Fix Plist ----
            -- Correct ownership
            do shell script "/usr/sbin/chown -R root:staff " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set ownership to root:staff on " & netBootDirectory & "/NBImageInfo.plist"
            logToFile_(me)

            ---- Revert NBImageInfo.plist permission changes ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Changing permissions on NBImageInfo.plist"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 454

            --Log Action
            set logMe to "Trying to correct permissions on " & netBootDirectory & "/NBImageInfo.plist"
            logToFile_(me)

            -- Making NBImageInfo.plist writable
            do shell script "/bin/chmod 644 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Set permissons on " & netBootDirectory & "/NBImageInfo.plist to 644"
            logToFile_(me)


            ---- Convert NBImageInfo.plist to xml ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Converting NBImageInfo.plist to xml"

            delay 0.1

            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 456

            --Log Action
            set logMe to "Trying to convert " & netBootDirectory & "/NBImageInfo.plist to xml"
            logToFile_(me)

            -- Making NBImageInfo.plist writable
            do shell script "/usr/bin/plutil -convert xml1 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges

            --Log Action
            set logMe to "Converted " & netBootDirectory & "/NBImageInfo.plist to xml"
            logToFile_(me)

            -- Create Read Only DMG
            createReadOnlyDMG_(me)

        on error
            
            --Log Action
            set logMe to "Error: Writing NBImageInfo.plist"
            logToFile_(me)
            
            -- Set to false to display
            set my userNotifyErrorHidden to false
            
            -- Set Error message
            set my userNotifyError to "Error: Writing NBImageInfo.plist"
            
            -- Notify of errors or success
            userNotify_(me)
            
        end try

    end updateNBImageInfoPlist_

    -- Create Read Only DMG
    on createReadOnlyDMG_(sender)
        
        -- If we're creating a Read-Only DMG
        if createReadOnlyDMG is true
        
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating Read-Only DMG"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 460
                
                -- If we resized the NetBoot Image
                if netBootImageReduceEnabled is true then

                    ---- Unmount NetBoot.reduced.dmg ----
                    try
                        --Log Action
                        set logMe to "Trying to detach " & netBootReducedDmgMountPath
                        logToFile_(me)
                        
                        -- Detach Volume
                        do shell script "/usr/bin/hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
                    end try
                    
                    --Log Action
                    set logMe to "Trying create Read-Only DMG of " & netBootDirectory & "/NetBoot.reduced.dmg"
                    logToFile_(me)
                    
                    -- Make a Read-Only copy of NetBoot.reduced.dmg
                    do shell script "/usr/bin/hdiutil convert -format UDZO -o " & quoted form of netBootDirectory & "/NetBoot.readonly.dmg " & quoted form of netBootDirectory & "/NetBoot.reduced.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Created " & netBootDirectory & "/NetBoot.readonly.dmg"
                    logToFile_(me)
                    
                    -- Set netBootCreationSuccessful value, for notifying later
                    set my netBootCreationSuccessful to true
                    
                    -- Detach mounted volumes
                    --unMountDMGs_(me)
                    
            else
            
                ---- Unmount NetBoot.dmg ----
                try
                    --Log Action
                    set logMe to "Trying to detach " & netBootDmgMountPath
                    logToFile_(me)
                    
                    -- Detach Volume
                    do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
                end try
                
                    --Log Action
                    set logMe to "Trying create Read-Only DMG of " & netBootDirectory & "/NetBoot.dmg"
                    logToFile_(me)
                
                    -- Make a Read-Only copy of NetBoot.dmg
                    do shell script "/usr/bin/hdiutil convert -format UDZO -o " & quoted form of netBootDirectory & "/NetBoot.readonly.dmg " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                    
                    --Log Action
                    set logMe to "Created " & netBootDirectory & "/NetBoot.readonly.dmg"
                    logToFile_(me)
            end if
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Scanning Read-Only DMG"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 465
                
                --Log Action
                set logMe to "ASR scanning " & netBootDirectory & "/NetBoot.readonly.dmg"
                logToFile_(me)
                
                -- ASR scan NetBoot.readonly.dmg
                do shell script "/usr/sbin/asr -imagescan " & quoted form of netBootDirectory & "/NetBoot.readonly.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                
                --Log Action
                set logMe to "ASR scanned " & netBootDirectory & "/NetBoot.readonly.dmg"
                logToFile_(me)
                
                -- Set netBootCreationSuccessful value, for notifying later
                set my netBootCreationSuccessful to true
                
                -- Detach mounted volumes
                unMountDMGs_(me)
                
            on error
                --Log Action
                set logMe to "Error: Creating Read-Only DMG"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Creating Read-Only DMG"
                -- Notify of errors or success
                userNotify_(me)
            end try
        else
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to true
            -- Detach mounted volumes
            unMountDMGs_(me)
        end if
    end createReadOnlyDMG_

    -- Detach mounted volumes
    on unMountDMGs_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Detaching any Volumes we mounted"
        -- Reset build Process ProgressBar
        set my buildProccessProgressBar to 0
        delay 0.1
        -- Set build Process ProgressBar to indeterminate & animated
        set my buildProccessProgressBarIndeterminate to true
        set my buildProccessProgressBarAniminate to true
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        ---- Unmount NetBoot.dmg if mounted
        if netBootDmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
            end try
        end if
        ---- Unmount NetBoot.reduced.dmg if mounted
        if netBootReducedDmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & netBootReducedDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
            end try
        end if
        -- If we've created the NetBoot successfully
        if netBootCreationSuccessful is true
            -- Reset build process variables
            tidyUpTimeKids_(me)
        end if
    end unMountDMGs_

    -- Reset build process variables
    on tidyUpTimeKids_(sender)
        -- close build process window
        showBuildProcessWindow's orderOut_(null)
        -- Reset Main Window Text Field & Cog
        resetMainWindowLabel_(me)
        -- Re-enable main windows buttons
        set my optionWindowEnabled to true
        -- activate main window
        activate
        mainWindow's makeKeyAndOrderFront_(null)
        -- Reset build Process ProgressBar
        set my buildProccessProgressBar to 0
        -- High fives all round!
        weDidIt_(me)
    end tidyUpTimeKids_

    -- High fives all round!
    on weDidIt_(sender)
        -- If we were successful
        if netBootCreationSuccessful is true
            --Log Action
            set logMe to "NetBoot successfully created at the following location " & netBootDirectory
            logToFile_(me)
            -- Play complete.aif
            do shell script "/usr/bin/afplay " & quoted form of pathToResources & "/complete.aif"
            -- Set to false to display
            set my userNotifySuccessHidden to false
            -- Set Error message
            set my userNotifySuccess to "NetBoot successfully created at the following location:" & return & return & netBootDirectory
            -- Notify of errors or success
            userNotify_(me)
        end if
    end weDidIt_

    -- Notify of errors or success
    on userNotify_(sender)
        -- activate user notify window
        activate
        userNotifyWindow's makeKeyAndOrderFront_(null)
	end userNotify_

    -- Close User Notify Window
    on userNotifyClose_(sender)
        
        -- close user notify window
        userNotifyWindow's orderOut_(null)
        
        -- Reset variables
        set my netBootCreationSuccessful to false
        set my userNotifyError to missing value
        set my userNotifyErrorHidden to true
        set my userNotifySuccess to missing value
        set my userNotifySuccessHidden to true
        
        -- Proceed if we've passed the admin credentials check
        if isAdminUser is true then
            -- Reset build process variables
            tidyUpTimeKids_(me)
        end if
        
    end userNotifyClose_
    
    -- Insert code here to do any housekeeping before your application quits
	on applicationShouldTerminate_(sender)
        
        -- Disable main windows buttons
        set my optionWindowEnabled to false
        
        -- close main window
        mainWindow's orderOut_(null)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Detaching any Volumes we mounted"
        
        -- Set build Process ProgressBar to indeterminate & animated
        set my buildProccessProgressBarIndeterminate to true
        set my buildProccessProgressBarAniminate to true
        
        delay 0.1
        
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        
        ---- Unmount NetBoot.dmg if mounted
        if netBootDmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force"
            end try
        end if
        
        ---- Unmount NetBoot.reduced.dmg if mounted
        if netBootReducedDmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & netBootReducedDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootReducedDmgMountPath & " -force"
            end try
        end if
        
        ---- Unmount OS.dmg if mounted
        if selectedOSdmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & selectedOSdmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of selectedOSdmgMountPath & " -force"
            end try
        end if
        
        -- Update buildProcessLogTextField to show path to todays log
        set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
        
        --Log Action
        set logMe to "Goodbye for now!"
        logToFile_(me)
        
        -- Terminate App
		return current application's NSTerminateNow
        
	end applicationShouldTerminate_
	
end script
