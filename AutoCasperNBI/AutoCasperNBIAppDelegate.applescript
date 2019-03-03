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
    property NSApp  : current application's class "NSApp"
    
--- Objects
    property defaults : ""
    property hostMacOSVersion : ""
    property hostMacOSBuildVersion : ""
    property mainWindow : ""
    property optionsWindow : ""
    property showBuildProcessWindow : ""
    property selectedOSdmgPath : ""
    property selectedOSdmgMountPath : ""
    property selectedOSdmgKind : ""
    property selectedOSdmgVersion : ""
    property selectedOSBuilddmgVersion : ""
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
    property rootDirectory : ""
    property adminUserName : ""
    property adminUsersPassword : ""
    property adminUserWindow : ""
    property netBootDmgTotalSize : ""
    property netBootDmgFreeSpace : ""
    property netBootDmgUsedSpace : ""
    property netBootReducedDmgMountPath : ""
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
    property fullPath : ""
    property volname : ""
    property freeSpaceOnVolumeUnit : ""
    property selectedVolume : ""
    property copiedAppPath : ""
    property selectedOSdmgFreeSpaceOnVolumeUnit : ""
    property mountPlist : ""
    property selectedOSdmgBytesTotal : ""
    property latestNBImageInfo : ""
    property imagingApp : ""
    
    --- Booleans
    property selectedOSDMGTextFieldEnabled : false
    property selectedOSDMGCheckPass : false
    property exclamationRedOSDMG : false
    property cogOSDMG : false
    property cogOSDMGAnimate : true
    property selectedAppCheckPass : false
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
    property netBootImageReduceEnabled : false
    property ardEnabled : false
    property vncEnabled : false
    property ardDetailsCheck : true
    property vncPassCheck : true
    property closeOptionsWindowButton : true
    property netBootDescriptionEnabled : false
    property mainWindowCog : false
    property mainWindowCogAnimate : true
    property buildProcessProgressBarIndeterminate : false
    property buildProcessProgressBarAniminate : false
    property netBootCreationSuccessful : false
    property netBootServeOverNFS : true
    property customDesktopImageEnabled : false
    property installRCNetBootSelected : true
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
    property adminUserWindowCog : false
    property adminUserWindowCogAnimate : false
    property disableAdminUserCheck : false
    property showAlwaysSet : false
    property firstLaunch : true
    property netBootDescriptionSet : false
    property elCapNBImageInfoPlistExists : false
    property useLatestNBImageInfo : false
    
    -- Others
    property buildProcessProgressBarMax : 0
    property buildProcessProgressBar : 0
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
    property NSData: current application's class "NSData"
    property NSString: current application's class "NSString"
    property NSMutableDictionary: current application's class "NSMutableDictionary"
    property NSPropertyListSerialization: current application's class "NSPropertyListSerialization"
    property NSUTF8StringEncoding: current application's NSUTF8StringEncoding
    property NSPropertyListImmutable: current application's NSPropertyListImmutable
    property None : missing value
    property languagePopup : missing value
      
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
        -- Variables to mess with, keeping the orignal with their decimals
        set my hostMacOSVersionToDelim to hostMacOSVersion
        -- Store delimiters for resetting later
        set applescriptsDelims to AppleScript's text item delimiters
        -- Set delimiters to decimal
        set AppleScript's text item delimiters to "."
        -- Set variables to the split versions
        set hostMacOSVersionToDelim to hostMacOSVersionToDelim's text items
        -- Set to major version of OS
        set hostMacOSVersionMajor to text item 2 of hostMacOSVersionToDelim as integer
        -- Reset delimiters
        set AppleScript's text item delimiters to applescriptsDelims
        -- Get host macs Build version for logging/debugging
        set my hostMacOSBuildVersion to (do shell script "/usr/bin/sw_vers -buildVersion")
        -- Log OS version & build of host mac
        set logMe to  "Running on OS " & hostMacOSVersion & " (" & hostMacOSBuildVersion & ")"
        logToFile_(me)
        -- If we're running on 10.10, enable Yosemite icons
        if my hostMacOSVersion begins with "10.10" or my hostMacOSVersion begins with "10.11" then
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
            -- Verify that the description field has a value & reset & prompt if not
            netBootDescriptionCheck_(me)
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
        -- Enable main windows buttons
        set my optionWindowEnabled to true
        -- Detach mounted volumes
        tidyUpTimeKids_(me)
    end cancelBuildProcess_
    
    ----- TIDY ICONS ----
    -- Reset OSDMG Icons, cog & further options
    on doResetOSDMGIcons_(sender)
        set my selectedOSDMGCheckPass to false
        set my cogOSDMG to false
        set my disableOptionsAndBuild to true
    end doResetOSDMGIcons_

    -- Reset SelectedApp Icons, cog & further options
    on doResetSelectedAppIcons_(sender)
        set my selectedAppCheckPass to false
        set my cogSelectedApp to false
    end doResetSelectedAppIcons_
    
    -- Reset JSSURL Icons
    on doResetJSSURLIcons_(sender)
        set my checkGreenJSSURL to false
        set my cogJSSURL to false
    end doResetJSSURLIcons_

    -- Reset Main Window Text Field & Cog
    on resetMainWindowLabel_(sender)
        set my buildProcessTextField to missing value
        set my mainWindowCog to false
    end resetMainWindowLabel_
    
    ---- ADMIN CHECK PANEL ---
    -- Check Administrative credentials
    on adminCredentialPrompt_(sender)
        -- Main Window
        set my disableOptionsAndBuild to true
        -- activate main window
        activate
        adminUserWindow's makeKeyAndOrderFront_(null)
    end adminCredentialPrompt
    
    -- Prompt for Administrative credentials
    on dismissAdminCredentialPrompt_(sender)
        -- reset Main Window's buttons
        set my disableOptionsAndBuild to false
        -- close build process window
        adminUserWindow's orderOut_(null)
    end dismissAdminCredentialPrompt
    
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
        -- Open the Main Window
        openMainWindow_(me)
        -- Set Image Index
        netBootImageIndex_(me)
    end applicationWillFinishLaunching_
    
    -- Open the Main Window
    on openMainWindow_(sender)
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
        -- Write message to log file
        try
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
        -- Log that we're tryin to mount selected DMG
        set logMe to "Trying to mount: " & selectedOSdmgPath
        logToFile_(me)
        -- Update label to show we're doing stuff
        set my selectedOSDMGTextField to "Examining..."
        -- Display the cog to reinforce we're busy
        set my cogOSDMG to true
        -- Delay needed to update label
        delay 0.1
        --  Try & mount OS.dmg
        -- Stolen from frogor on IRC with permission :)
        -- Mount OS.dmh & get mount point
        set mountOutputPlist to do shell script "/usr/bin/hdiutil attach " & quoted form of selectedOSdmgPath & " -nobrowse -owners on -plist"
        -- convert the string into a NSString
        set theString to NSString's stringWithString_(mountOutputPlist)
        -- convert the NSString into NSData
        set theData to theString's dataUsingEncoding_(NSUTF8StringEncoding)
        -- Parse the NSData as a plist
        set thePlist to NSPropertyListSerialization's propertyListFromData_mutabilityOption_format_errorDescription_(theData, NSPropertyListImmutable, None, None)
        -- The returned plist is actually either a NSDictionary or NSArray, depending on the plist root object
        -- In this case, the output of hdiutil is a dict with a single key we care about (which contains an array)
        set theEntities to thePlist's objectForKey_("system-entities")
        --log theEntities
        -- There can be (and usually are) multiple entities. We're looking for the one that contains a "mount-point" key
        -- Start with a default value of None
        set selectedOSdmgMountPath to None
        set selectedOSdmgKind to None
        -- Loop through each entry, looking for the key's value
        repeat with anItem in theEntities
            set selectedOSdmgMountPath to anItem's objectForKey_("mount-point")
            set selectedOSdmgKind to (anItem's objectForKey:"volume-kind")
            -- If we have a value, then check.. if APFS a few new mount-points appear that we need to discard
            if (selectedOSdmgMountPath is not equal to missing value) then
                set selectedOSdmgMountPath to (NSString's stringWithString:selectedOSdmgMountPath) as string
                if (selectedOSdmgMountPath as string is not equal to "/Volumes/Preboot") and (selectedOSdmgMountPath as string is not equal to "/Volumes/Recovery") then
                    set selectedOSdmgMountPath to selectedOSdmgMountPath as text
                    exit repeat
                end if
            end if
            -- Guess we didn't find one, let's check the next ...
        end repeat
        --  Set to text of variable
        set selectedOSdmgMountPath to selectedOSdmgMountPath as text
        -- If APFS source but not 10.13
        if (hostMacOSVersionMajor is less than 13) and ((NSString's stringWithString:selectedOSdmgKind) as string) is equal to "apfs" then
            --Log Action
            set logMe to "APFS source, not a 10.13 host"
            logToFile_(me)
            -- Error advising we cannot mount the DMG
            set my selectedOSDMGTextField to "Cannot Mount DMG"
            display dialog selectedOSdmgPath & " is an APFS Volume, & therefore needs 10.13 to create an NBI from." with icon 0 buttons {"OK"}
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
        -- If we have an value for the OS DMG's mount-point, try & get OS version
        else if selectedOSdmgMountPath is not equal to None then
            set logMe to "Mounted to: " & selectedOSdmgMountPath
            logToFile_(me)
            -- Try & read /System/Library/CoreServices/SystemVersion.plist
            try
                -- Try & get OS version
                set selectedOSdmgVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductVersion"
                -- Try & get build version
                set my selectedOSBuilddmgVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedOSdmgMountPath & "/System/Library/CoreServices/SystemVersion.plist ProductBuildVersion"
                -- If we have both OS & build versions, display them
                set my selectedOSDMGTextField to "Mac OS " & selectedOSdmgVersion & " (" & selectedOSBuilddmgVersion & ")"
                -- Variables to mess with, keeping the orignal with their decimals
                set my selectedOSdmgVersionToDelim to selectedOSdmgVersion
                -- Store delimiters for resetting later
                set applescriptsDelims to AppleScript's text item delimiters
                -- Set delimiters to decimal
                set AppleScript's text item delimiters to "."
                -- Set variables to the split versions of Casper Imaging & JSS versions
                set selectedOSdmgVersionToDelim to selectedOSdmgVersionToDelim's text items
                -- Set to major version of Casper Imaging
                set selectedOSdmgVersionMajor to text item 2 of selectedOSdmgVersionToDelim as integer
                -- Reset delimiters
                set AppleScript's text item delimiters to applescriptsDelims
                -- Reset OSDMG Icons
                doResetOSDMGIcons_(me)
                -- If we're building a 10.10+ NBI, enable Yosemite icons
                if selectedOSdmgVersionMajor greater than 9 then
                    set my yosemiteOS to true
                else
                    set my yosemiteOS to false
                end if
                -- Display green check icon
                set my selectedOSDMGCheckPass to true
                -- Set netBoot Name
                set my netBootNameTextField to selectedOSdmgVersion & " AutoCasperNBI"
                -- See if pre-reqs have been met
                checkIfReadyToProceed_(me)
            on error
                --Log Action
                set logMe to "Cannot read OS Version"
                logToFile_(me)
                -- Error advising we cannot get the OS version from dmg
                set my selectedOSDMGTextField to "Cannot read OS Version"
            end try
        else
            --Log Action
            set logMe to "Cannot Mount DMG"
            logToFile_(me)
            -- Error advising we cannot mount the DMG
            set my selectedOSDMGTextField to "Cannot Mount DMG"
        end if
    end doOSDMG_

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
                set selectedCasperImagingAppVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleShortVersionString"
                --Log Action
                set logMe to "Casper Imaging Version: " & selectedCasperImagingAppVersion
                logToFile_(me)
                -- Set label to Casper Imaging version
                set my selectedAppTextField to "Casper Imaging " & selectedCasperImagingAppVersion
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                -- Display green tick
                set my selectedAppCheckPass to true
                set imagingApp to "Casper"
                -- Compare JSS & Casper Imaging Versions
                checkJSSURL_(me)
            -- Error if cannot get the version number
            on error
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                -- Display Error if cannot get version number
                set my selectedAppTextField to "Cannot Get Version"
                -- Disable options and build
                set my disableOptionsAndBuild to true
            end try
        else if selectedAppBundleName is equal to "Jamf Imaging" then
            try
                -- If Jamf Imaging, return version
                set selectedCasperImagingAppVersion to do shell script "/usr/bin/defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleShortVersionString"
                --Log Action
                set logMe to "Jamf Imaging Version: " & selectedCasperImagingAppVersion
                logToFile_(me)
                -- Set label to Casper Imaging version
                set my selectedAppTextField to "Jamf Imaging " & selectedCasperImagingAppVersion
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                -- Display green tick
                set my selectedAppCheckPass to true
                set imagingApp to "Jamf"
                -- Compare JSS & Casper Imaging Versions
                checkJSSURL_(me)
                -- Error if cannot get the version number
            on error
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                -- Display Error if cannot get version number
                set my selectedAppTextField to "Cannot Get Version"
                -- Disable options and build
                set my disableOptionsAndBuild to true
            end try
        -- If selected app is not Casper Imaging.
        else
            --Log Action
            set logMe to "Select an Imaging.app"
            logToFile_(me)
            -- Reset Selected App Icons
            doResetSelectedAppIcons_(me)
            -- Display message that we have selected Casper Imaging
            set my selectedAppTextField to "Select an Imaging.app"
            -- Disable options and build
            set my disableOptionsAndBuild to true
        end if
        -- See if pre-reqs have been met
        checkIfReadyToProceed_(me)
    end selectedAppCheck_
    
    -- Make sure OS & Imaging.app is specified before proceeding, once checked enable JSS options, as well as Build & Option buttons
    on checkIfReadyToProceed_(sender)
        -- Check to see if we have ticks or minor warning before we proceed
        if (selectedAppCheckPass is equal to true) and (selectedOSDMGCheckPass is equal to true) then
            -- Enable Options & Build
            set my disableOptionsAndBuild to false
            --Log Action
            set logMe to "Pre-Reqs met, Options & Build enabled."
            logToFile_(me)
            -- Get the NetBoot Serve option
            netBootServeOption_(me)
            -- Correct NetBoot Name, removing spaces if to be hosted on a NetSUS
            servedFromNetSUS_(me)
            -- Set Image Index
            netBootImageIndex_(me)
        end if
    end checkIfReadyToProceed_

    -- Check the JSS URL details & try & get version of the JSS
    on checkJSSURL_(sender)
        -- Reset Variable
        set my jssAndCasperImagingVersionCheckTextfield to ""
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
                -- Try & get URL using insecure method, this way it will work with or without a valid SSL cert, timesout after 30 seconds
                set jssURLHtml to do shell script "/usr/bin/curl -k " & jssURL & "/index.cxml -m 30"
                --Log Action
                set logMe to "Checking returned data for JSS version"
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
            set startTag to "<jamfServlet version="
            set endTag to "><epoch>"
            -- Split at the <jamfServlet version= tag
            set AppleScript's text item delimiters to startTag
            set jssVersionCut to text item 2 of jssURLHtml
            -- Split again at ><epoch>
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
            -- Update lable with JSS & Casper Imaging version comparison result
            set my jssAndCasperImagingVersionCheckTextfield to "Major version difference between JSS & " & imagingApp & " Imaging"
            -- See if pre-reqs have been met
            checkIfReadyToProceed_(me)
            -- If major versions match
        else if selectedCasperImagingAppVersionMajor is equal to jssVersionMajor then
            -- Check if minor versions match, alert if not
            if selectedCasperImagingAppVersionMinor is not equal to jssVersionMinor then
                -- Log Minor Version Diff
                set logMe to "Minor Version Difference"
                logToFile_(me)
                -- Reset JSS URL icons
                doResetJSSURLIcons_(me)
                -- Update lable with JSS & Casper Imaging version comparison result
                set my jssAndCasperImagingVersionCheckTextfield to "Minor version difference between JSS & " & imagingApp & " Imaging"
                -- See if pre-reqs have been met
                checkIfReadyToProceed_(me)
            -- If Casper Imaging & JSS are the same version
            else
                -- Show check if version received
                set my checkGreenJSSURL to true
                -- Update lable with JSS & Casper Imaging version comparison result
                set my jssAndCasperImagingVersionCheckTextfield to "JSS & " & imagingApp & " Imaging versions match"
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
        -- Set servedFromNetSUS to boolean of value
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
            set my netBootImageIndexMinValue to 4096 as integer
            set my netBootImageIndexMaxValue to 65535 as integer
        else
            --Log Action
            set logMe to "NetBoot is to be hosted on a single server."
            logToFile_(me)
            -- Set min & max values for Index
            set my netBootImageIndexMinValue to 1 as integer
            set my netBootImageIndexMaxValue to 4095 as integer
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
        if my netBootDescriptionEnabled is false then
            -- Update plist with selection
            tell defaults to setObject_forKey_(netBootDescriptionEnabled, "netBootDescriptionEnabled")
            --Log Action
            set logMe to "NetBoot description not enabled"
            logToFile_(me)
        else
            -- If a description has already been set
            if my netBootDescriptionSet is false then
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
                    set my netBootDescription to selectedOSDMGTextField & " with " & imagingApp & " Imaging " & selectedCasperImagingAppVersion & ". Created by, " & longUserName & " on: " & buildDate & "."
                    --Log Action
                    set logMe to "NetBoot description set to " & quoted form of netBootDescription
                    logToFile_(me)
                else
                    -- Set NetBoot Description
                    set my netBootDescription to selectedOSDMGTextField & " with " & imagingApp & " Imaging " & selectedCasperImagingAppVersion & " pointing to JSS " & jssURL & ". Created by, " & longUserName & " on: " & buildDate & "."
                    --Log Action
                    set logMe to "NetBoot description set to " & quoted form of netBootDescription
                    logToFile_(me)
                end if
            else
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
                -- true for set, false for unset & redo
                set my netBootDescriptionSet to false
            else
                -- Set description to what has been entered
                set my netBootDescription to netBootDescription as text
                -- true for set, false for unset & redo
                set my netBootDescriptionSet to true
                --Log Action
                set logMe to "NetBoot description set to: " & netBootDescription
                logToFile_(me)
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
            else if ardusername is equal to "root" then
                -- Display error to user
                display dialog "Please enter a Username other than root" with icon 0 buttons {"OK"}
                --Log Action
                set logMe to "Error: Please enter a Username other than root"
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
        -- Get Tag of inputLanguageSelected popup item
        set currentCell to (languagePopup's selectedCell)
        set inputLayoutID to (currentCell's tag())
        --Log Action
        set logMe to "Keyboard Layout ID set to : " & inputLayoutID
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

    -- Bound to "Create Restorable DMG" checkbox, sets plist
    on createReadOnlyDMGCheckBox_(sender)
        -- Set to variable to boolean
        set createReadOnlyDMG to createReadOnlyDMG as boolean
        -- Update plist with selection
        tell defaults to setObject_forKey_(createReadOnlyDMG, "createReadOnlyDMG")
        --Log Action
        set logMe to "Create a Restorable DMG set to: " & createReadOnlyDMG
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
        -- Check for Simple Finder on 10.11 & alert
        checkSimpleFinderElCap_(me)
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
            choose file of type {"public.x509-certificate"} with prompt "Select a Certificate to add:"
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
                    --if my selectedPKGsPath as string is not "" then
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
                    --end if
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
            choose file of type {"pkg"} with prompt "Select a .pkg to add:"
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

    -- Check for Simple Finder on 10.11 & alert
    on checkSimpleFinderElCap_(sender)
        -- If we're creating a 10.11 NBI & enabling Simple Finder
        if selectedOSdmgVersionMajor is 11 and simpleFinderEnabled is true
            -- Error to user prompting for what to do next
            display dialog "Simple Finder can be enabled on 10.11 NBI's, but currently cannot be disabled." & return & return & "A bug has been filed with Apple on this." & return & return & "Do you still wish to use Simple Finder?" with icon 2 buttons {"No", "Yes"}
            -- If user selected "No", disable Simple Finder
            if button returned of the result is "No" then
                --Log action
                set logMe to "Disabling Simple Finder"
                logToFile_(me)
                -- Set to variable to boolean
                set simpleFinderEnabled to false
                -- Update plist with selection
                tell defaults to setObject_forKey_(simpleFinderEnabled, "simpleFinderEnabled")
            end if
        end if
    end checkSimpleFinderElCap_

----- CLOSE OPTIONS WINDOW CHECK -----

    -- Make sure all variables are set if enabled, if passed close options window
    on closeOptionsWindowCheck_(sender)
        -- reset value
        set closeButtonPreCheckPassed to true
        -- Verify that the description field has a value & reset & prompt if not
        netBootDescriptionCheck_(me)
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

    -- Ask for administrative credentials & validate
    on adminCheck_(sender)
        -- start cog to show progress
        set my adminUserWindowCog to true
        set my adminUserWindowCogAnimate to true
        -- disable adminuser items
        set my disableAdminUserCheck to true
        -- Checking variable
        set isAdminUser to false
        -- Set to text
        set adminUserName to adminUserName as text
        set adminUsersPassword to adminUsersPassword as text
         -- Perform a check of privileges
        try
            do shell script "/bin/ls " user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Authentication passed for user: " & adminUserName
            logToFile_(me)
            -- Checking variable
            set isAdminUser to true
            -- Make sure all variables are set if enabled
            buildPreCheck_(me)
            -- enable adminuser items
            set my disableAdminUserCheck to false
            -- stop cog
            set my adminUserWindowCog to false
            set my adminUserWindowCogAnimate to false
        on error
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Authentication failed. Please retry the administrative credentials."
            set isAdminUser to false
            -- Notify of errors or success
            userNotify_(me)
            -- enable adminuser items
            set my disableAdminUserCheck to false
            -- stop cog
            set my adminUserWindowCog to false
            set my adminUserWindowCogAnimate to false
            --Log Action
            set logMe to "Authentication failed for user: " & adminUserName
            logToFile_(me)
        end try
    end adminCheck_


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
            -- Check for Simple Finder on 10.11 & alert
            checkSimpleFinderElCap_(me)
            -- Calculate progressbar max length, depending on selection
            calcBuildProgressBarMax_(me)
            -- Prompt user for location to create the .nbi
            netBootLocation_(me)
        end if
    end buildPreCheck_

    -- Calculate progressbar max length, depending on selection
    on calcBuildProgressBarMax_(sender)
        -- Reset
        set my buildProcessProgressBarMax to 76
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to 0
        -- Check if reduce NetBoot Image is ticked
        if netBootImageReduceEnabled is true then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 5
        end if
        -- If ARD option has been enabled
        if ardEnabled is equal to true then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- If VNC option has been enabled
        if vncEnabled is equal to true then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- if we're installing rc.netboot.pkg
        if installRCNetBootSelected is true
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 2
        end if
        -- If we have a desktop selected & we can find it
        if desktopImageExists is true
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- If a JSS URL is specified
        if jssURL is not ""
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 2
        end if
        -- If we're importing certs
        if my additionalCerts as string is not equal to "" then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- If we're enabling simple Finder
        if simpleFinderEnabled is true
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        --if additionalPKGs is not missing value then
        if my additionalPKGs as string is not equal to "" then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- If we're creating on a 10.9.x netboot
        if selectedOSdmgVersionMajor is 9 then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 1
        end if
        -- If we're creating on a 10.13.x netboot
        if selectedOSdmgVersionMajor is 13 then
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 2
        end if
        -- If we're creating a Restorable DMG
        if createReadOnlyDMG is true
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 2
        end if
        -- If true, rename sparseimage
        if servedFromNetSUS is true
            set my buildProcessProgressBarMax to buildProcessProgressBarMax + 2
        end if
        --Log Action
        set logMe to "Progress Bar set to " & buildProcessProgressBarMax
        logToFile_(me)
    end calcBuildProgressBarMax_

    -- Prompt user for location to create the .nbi
    on netBootLocation_(sender)
        --Else open pointing to the desktop folder
        choose folder with prompt "Choose a location to create the .nbi in:" default location (path to desktop folder)
        -- Set netBootSelectedLocation to path of location given
        set netBootSelectedLocation to POSIX path of the result
        --Log Action
        set logMe to "Selected path to create .nbi is: " & netBootSelectedLocation
        logToFile_(me)
        -- close build process window
        if netBootSelectedLocation is not missing value then
            -- Check that we have enough space available to proceed
            getNetBootDmgRequiredSize_(me)
        end if
    end netBootLocation_

    -- Get the space needed for the NetBoot.sparseimage
    on getNetBootDmgRequiredSize_(sender)
        try
            -- Disable main windows buttons
            set my optionWindowEnabled to false
            -- Update buildProcessLogTextField to show path to todays log
            set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to false
            -- Set build Process ProgressBar to indeterminate & animated to false
            set my buildProcessProgressBarIndeterminate to false
            set my buildProcessProgressBarAniminate to false
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Calculating NetBoot.sparseimage size"
            delay 0.1
            -- Close main window
            mainWindow's orderOut_(null)
            -- activate build process window
            activate
            showBuildProcessWindow's makeKeyAndOrderFront_(null)
            -- Show Cog on main window
            set my mainWindowCog to true
            ----- NetBoot.sparseimage Size -----
            --Log Action
            set logMe to "Trying to get the Total size of " & quoted form of selectedOSdmgMountPath
            logToFile_(me)
            -- Path to create plist in /tmp/
            set mountPlist to "/tmp/" & tempUUID & ".plist"
            -- Create a plist with selectedOSdmg's information
            do shell script "/usr/sbin/diskutil info -plist " & quoted form of selectedOSdmgMountPath & " > " & quoted form of mountPlist
            -- Get total size & free space of selectedOSdmg in bytes
            set selectedOSdmgBytesTotal to do shell script "/usr/bin/defaults read " & mountPlist & " TotalSize"
            set selectedOSdmgBytesFree to do shell script "/usr/bin/defaults read " & mountPlist & " FreeSpace"
            -- Calculate total size & free space in GB
            set selectedOSdmgTotalSize to (round (selectedOSdmgBytesTotal / 1000 / 1000 / 1000) rounding up)
            set selectedOSdmgFreeSpace to (round (selectedOSdmgBytesFree / 1000 / 1000 / 1000) rounding down)
            -- Calculate the size used within selectedOSdmg in GB
            set selectedOSdmgUsedSpace to selectedOSdmgTotalSize - selectedOSdmgFreeSpace
            --Log Action
            set logMe to "Total size of " & quoted form of selectedOSdmgMountPath & " is " & selectedOSdmgTotalSize & "GB rounded up"
            logToFile_(me)
            --Log Action
            set logMe to "There is around " & selectedOSdmgFreeSpace & "GB space free on " & quoted form of selectedOSdmgMountPath & " rounded down"
            logToFile_(me)
            --Log Action
            set logMe to "Used space on " & quoted form of selectedOSdmgMountPath & " is around " & selectedOSdmgUsedSpace & "GB"
            logToFile_(me)
            -- Set NetBoot.sparseimage's size
            set netBootDmgRequiredSize to selectedOSdmgUsedSpace
            --Log Action
            set logMe to "The NetBoot.sparseimage will need to be around " & netBootDmgRequiredSize & "GB"
            logToFile_(me)
            ----- SIZE OF VOLUME ON WHICH WE'RE CREATING THE NBI ----
            -- Set netBootSelectedLocation to path of location given
            set variableVariable to netBootSelectedLocation as text
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
                set fileManager to current application's NSFileManager's defaultManager()
                set my volname to (fileManager's displayNameAtPath:"/") as text
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
            -- Create a plist with selectedVolume's information
            do shell script "/usr/sbin/diskutil info -plist " & quoted form of selectedVolume & " > " & quoted form of mountPlist
            -- Get total size & free space of selectedOSdmg in bytes
            set selectedVolumeBytesFree to do shell script "/usr/bin/defaults read " & mountPlist & " FreeSpace"
            -- Calculate free space in GB rounded down
            set freeSpaceOnVolume to (round (selectedVolumeBytesFree / 1000 / 1000 / 1000) rounding down)
            --Log Action
            set logMe to "The volume " & selectedVolume & " has " & freeSpaceOnVolume & "GB free, rounding down"
            logToFile_(me)
            -- Set to boolean of values
            set createReadOnlyDMG to createReadOnlyDMG as boolean
            -- If we're resizing the NetBoot Image
            if createReadOnlyDMG is true then
                -- Set the space needed
                set netBootDmgRequiredSize to netBootDmgRequiredSize * 2
                --Log Action
                set logMe to "We need around " & netBootDmgRequiredSize & "GB free to create the NBI & restorable DMG."
                logToFile_(me)
            end if
            -- Check that we have enough space needed to proceed, error if not
            if netBootDmgRequiredSize is greater than freeSpaceOnVolume or netBootDmgRequiredSize is equal to freeSpaceOnVolume then
                --Log Action
                set logMe to "Error: About " & netBootDmgRequiredSize & "GB needed to create NBI. Only " & freeSpaceOnVolume & "GB free on " & variableVariable
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: About " & netBootDmgRequiredSize & "GB needed to create NBI. Only " & freeSpaceOnVolume & "GB free on " & variableVariable
                -- Notify of errors or success
                userNotify_(me)
            else
                --Log Action
                set logMe to "We have enough space on " & selectedVolume & " to proceed."
                logToFile_(me)
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
            -- stop cog
            set my adminUserWindowCog to false
            set my adminUserWindowCogAnimate to false
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
                    else
                        --Log Action
                        set logMe to "User chose to proceed with a missing Desktop Image"
                        logToFile_(me)
                        -- True if file exists
                        set desktopImageExists to false
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
        -- close admin check window
        adminUserWindow's orderOut_(null)
        -- close Main window
        mainWindow's orderOut_(null)
        -- To stop looping
        if netBootCreationSuccessful is not equal to true
            try
                -- Set build Process ProgressBar to indeterminate & animated to false
                set my buildProcessProgressBarIndeterminate to false
                set my buildProcessProgressBarAniminate to false
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating folder structure"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                -- Set root directory
                set rootDirectory to netBootSelectedLocation & netBootNameTextField
                -- Set to path of NetBoot directory
                set netBootDirectory to rootDirectory & "/" & netBootNameTextField & ".nbi"
                --Log action
                set logMe to "Trying to create root folder " & rootDirectory
                logToFile_(me)
                -- Create .nbi folder
                do shell script "/bin/mkdir " & quoted form of rootDirectory user name adminUserName password adminUsersPassword with administrator privileges
                --Log action
                set logMe to "Successfully created " & quoted form of rootDirectory
                logToFile_(me)
                --Log action
                set logMe to "Trying to create nbi folder " & netBootDirectory
                logToFile_(me)
                -- Create .nbi folder
                do shell script "/bin/mkdir " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
                --Log action
                set logMe to "Successfully created " & quoted form of netBootDirectory
                logToFile_(me)
                -- Create the NetBoot.sparseimage
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
                    netBootLocationCreate_(me)
                end if
            end try
        end if
    end netBootLocationCreate_

    -- Create the NetBoot.sparseimage
    on createNetbootDmg_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating NetBoot.sparseimage"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log action
            set logMe to "Trying to create NetBoot.sparseimage in " & netBootDirectory
            logToFile_(me)
            -- Set to text value, to avoid an issue when name changed
            set netBootNameTextField to netBootNameTextField as text
            -- Create the NetBoot.sparseimage
            do shell script "/usr/bin/hdiutil create " & quoted form of netBootDirectory & "/NetBoot.sparseimage -type SPARSE -size 64g -volname " & quoted form of netBootNameTextField & " -uid 0 -gid 80 -mode 1775 -layout \"GPTSPUD\" -fs \"HFS+J\" -stretch 500g -ov -puppetstrings" user name adminUserName password adminUsersPassword with administrator privileges
            --Log action
            set logMe to "Successfully created NetBoot.sparseimage in " & quoted form of netBootDirectory
            logToFile_(me)
            -- Mount the NetBoot.sparseimage
            mountNetBootDmg_(me)
        on error
            --Log Action
            set logMe to "Error: Failed to create NetBoot.sparseimage"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Failed to create NetBoot.sparseimage"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end createNetbootDmg_

    -- Mount the NetBoot.sparseimage
    on mountNetBootDmg_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Mounting NetBoot.sparseimage"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to mount: " & quoted form of netBootDirectory
            logToFile_(me)
            -- Mount the NetBoot.dmg & get the mount path
            set netBootDmgMountPath to do shell script "/usr/bin/hdiutil attach " & quoted form of netBootDirectory & "/NetBoot.sparseimage -nobrowse -owners on -plist | awk -F\"[<>]\" 'a{print $3; exit}$2==\"key\"&&$3==\"mount-point\"{a=1}'" as quoted form user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Mounted to: " & netBootDmgMountPath
            logToFile_(me)
            -- Copy OS.dmg's content to NetBoot.dmg
            copyOSDmgToNetBootDmg_(me)
        on error
            --Log Action
            set logMe to "Error: Cannot mount NetBoot.sparseimage"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Cannot mount NetBoot.sparseimage"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end mountNetBootDmg_

    -- Copy OS.dmg's content to NetBoot.dmg
    on copyOSDmgToNetBootDmg_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying the contents of the OS.dmg to NetBoot.sparseimage"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log action
            set logMe to "Copying contents of " & quoted form of selectedOSdmgMountPath & " to " & quoted form of netBootDirectory & "/NetBoot.sparseimage"
            logToFile_(me)
            -- Copy contents of the SelectedOSdmg to NetBootdmg
            do shell script "/usr/bin/ditto " & quoted form of selectedOSdmgMountPath & " " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            --Log action
            set logMe to "Successfully copied " & quoted form of selectedOSdmgPath & " to " & quoted form of netBootDirectory & "/NetBoot.sparseimage"
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                delay 0.1
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of netBootDmgMountPath & "/System/Library/PreferencePanes/* -maxdepth 0 -not -path \"*DateAndTime.prefPane*\" -not -path \"*Displays.prefPane*\" -not -path \"*Keyboard.prefPane*\" -not -path \"*Network.prefPane*\" -not -path \"*SharingPref.prefPane*\" -not -path \"*StartupDisk.prefPane*\" -exec rm -rf {} \\;" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Deleted Preference Panes from: " & netBootDmgMountPath & "/System/Library/PreferencePanes/"
                logToFile_(me)
                ---- Directories ----
                --- /Library/ ---
                --Log Action
                set logMe to "Trying to empty directories in " & netBootDmgMountPath & "/Library/"
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                --set my buildProcessTextField to "Emptying /Library/Caches/"
                --delay 0.1
                -- Empty the below folder
                --do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/Library/Caches/*" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                --set logMe to "Emptied " & netBootDmgMountPath & "/Library/Caches/"
                --logToFile_(me)
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
                logToFile_(me)
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                if selectedOSdmgVersionMajor is less than 14 then
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "/System/Library/CoreServices/DefaultDesktop.jpg"
                    delay 0.1
                    try
                        -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                        do shell script "/bin/unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                        -- Delete DefaultDesktop.jpg
                        do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    end try
                    --Log Action
                    set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                    logToFile_(me)
                else
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "/System/Library/CoreServices/DefaultBackground.jpg"
                    delay 0.1
                    try
                        -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                        do shell script "/bin/unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultBackground.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                        -- Delete DefaultDesktop.jpg
                        do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultBackground.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    end try
                    --Log Action
                    set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultBackground.jpg"
                    logToFile_(me)
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "/System/Library/CoreServices/DefaultDesktop.heic"
                    delay 0.1
                    try
                        -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                        do shell script "/bin/unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.heic" user name adminUserName password adminUsersPassword with administrator privileges
                        -- Delete DefaultDesktop.jpg
                        do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.heic" user name adminUserName password adminUsersPassword with administrator privileges
                    end try
                    --Log Action
                    set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.heic"
                    logToFile_(me)
                end if
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
                -- Creates the folder path /Library/Application Support/Apple/Remote Desktop/ as this is needed on 10.11.2
                createRemoteDesktopFolder_(me)
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

    -- Creates the folder path /Library/Application Support/Apple/Remote Desktop/ as this is needed on 10.11.2
    on createRemoteDesktopFolder_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Creating Remote Desktop Folder"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        -- Set variableVariable
        set variableVariable to netBootDmgMountPath & "/Library/Application Support/Apple/Remote Desktop/"
        --Log Action
        set logMe to "Creating " & variableVariable
        -- Log To file
        logToFile_(me)
        try
            -- Make certficates directory
            do shell script "/bin/mkdir -p " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Trying to set ownership to root:wheel on " & quoted form of variableVariable
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown -R root:wheel " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of variableVariable
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set permissions to 755 on " & quoted form of variableVariable
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod -R 755 " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
        on error
            --Log Action
            set logMe to "Error: Creating Remote Desktop Folder"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Creating Remote Desktop Folder"
            -- Notify of errors or success
            userNotify_(me)
        end try
        -- Delete swap files from the NetBoot.dmg
        removeSwapFiles_(me)
    end createRemoteDesktopFolder

    -- Delete swap files from the NetBoot.dmg
    on removeSwapFiles_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Removing swapfiles"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/private/var/vm/sleepimage"
        logToFile_(me)
        -- Delete the below file, silently error if doesn't exist
        try
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
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Emptying /private/tmp"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Emptying " & netBootDmgMountPath & "/private/tmp/*"
            logToFile_(me)
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
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Emptying /private/var/tmp/"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Emptying " & netBootDmgMountPath & "/private/var/tmp/*"
            logToFile_(me)
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
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Emptying /Volumes/"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Emptying " & netBootDmgMountPath & "/Volumes/"
            logToFile_(me)
            -- Empty the below folder
            try
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist"
        logToFile_(me)
        -- Delete the below folder, silently error if doesn't exist
        try
            do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist" user name adminUserName password adminUsersPassword with administrator privileges
        end try
        --Log Action
        set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/preferences.plist"
        logToFile_(me)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        --Log Action
        set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist"
        logToFile_(me)
        -- Delete the below folder, silently error if doesn't exist
        try
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            ---- .SetupRegComplete ----
            -- Write .SetupRegComplete file
            do shell script "touch " & quoted form of netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to ".SetupRegComplete written to " & netBootDmgMountPath & "/Library/Receipts/.SetupRegComplete"
            logToFile_(me)
            ---- com.apple.SetupAssistant----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting Setup Assistant.app"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Deleting " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app"
            logToFile_(me)
            --Deleting Setup Assistant.app
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup\\ Assistant.app" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Deleted " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Setup Assistant.app"
            logToFile_(me)
            -- Enable Disk Utilties Debug Menu
            enableDiskUtilityDebugMenu_(me)
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

    -- Enable Disk Utilties Debug Menu
    on enableDiskUtilityDebugMenu_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Enabling Disk Utilties Debug Menu"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        try
            -- Enable Disk Utilties Debug Menu
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.DiskUtility.plist DUDebugMenuEnabled -bool true" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Disk Utility's Debug Menu enabled"
            logToFile_(me)
            -- Stop TimeMachine for prompting to use mounted disks for backup
            disableTimeMachinePrompt_(me)
        on error
            --Log Action
            set logMe to "Error: Enabling Disk Utilties Debug Menu"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Enabling Disk Utilties Debug Menu"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end enableDiskUtilityDebugMenu_

    -- Stop TimeMachine for prompting to use mounted disks for backup
    on disableTimeMachinePrompt_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling TimeMachine prompts"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
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

    -- Delete the file /Library/Preferences/com.apple.dockfixup.plist
    on deleteDockFixUp_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Deleting com.apple.dockfixup.plist"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        try
            -- If we're building a 10.10+.nbi
            if selectedOSdmgVersionMajor is greater than 9
                --Log Action
                set logMe to "Deleting " & netBootDmgMountPath & "/System/Library/CoreServices/Dock.app/Contents/Resources/com.apple.dockfixup.plist"
                logToFile_(me)
                -- Delete com.apple.dockfixup.plist
                do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/Dock.app/Contents/Resources/com.apple.dockfixup.plist" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/CoreServices/Dock.app/Contents/Resources/com.apple.dockfixup.plist"
                logToFile_(me)
            else
                --Log Action
                set logMe to "Deleting " & netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
                logToFile_(me)
                -- Delete com.apple.dockfixup.plist
                do shell script "/bin/rm " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
                logToFile_(me)
            end if
            -- Deletes launchAgent that triggers "New to Mac?" notification
            deleteTouristd_(sender)
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

    -- Deletes launchAgent that triggers "New to Mac?" notification
    on deleteTouristd_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling touristd"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        try
            set variableVariable to netBootDmgMountPath & "/System/Library/LaunchAgents/com.apple.touristd.plist"
            set file_path to current application's NSString's stringWithString:variableVariable
            set fileManager to current application's NSFileManager's defaultManager()
            if (item 1 of (fileManager's fileExistsAtPath:file_path isDirectory:(reference))) as boolean = true then
                --Log Action
                set logMe to "Found com.apple.touristd.plist: " & file_path
                logToFile_(me)
                -- Delete the below folder, silently error if doesn't exist
                try
                    do shell script "/bin/rm " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                end try
                --Log Action
                set logMe to "Deleted " & file_path
                logToFile_(me)
                -- Disable AppNap
                disableAppNap_(me)
                else
                -- Disable AppNap
                disableAppNap_(me)
            end if
            on error
            --Log Action
            set logMe to "Error: Disabling touristd"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Disabling touristd"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end deleteTouristd_

    -- Disable AppNap
    on disableAppNap_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling App Nap"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to disable App Nap"
            logToFile_(me)
            -- Set Language
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/.GlobalPreferences.plist NSAppSleepDisabled -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "App Nap disabled"
            logToFile_(me)
            -- Disable Persistance
            disablePersistance_(me)
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

    -- Disable Persistance
    on disablePersistance_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling Persistance"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to disable Persistance"
            logToFile_(me)
            -- Set Language
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/.GlobalPreferences.plist ApplePersistence -bool NO" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Persistance disabled"
            logToFile_(me)
            -- Disable Screen Saver
            disableScreenSaver_(me)
        on error
            --Log Action
            set logMe to "Error: Disabling Persistance"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Disabling Persistance"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end disablePersistance_

    -- Disable Screen Saver
    on disableScreenSaver_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Disabling Screen Saver"
        delay 0.1
        -- Update build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        try
            --Log Action
            set logMe to "Disabling Screen Saver"
            logToFile_(me)
            -- Set variablevariable
            set variableVariable to netBootDmgMountPath & "/Library/Preferences/com.apple.screensaver.plist"
            -- Write encoded ARD Username to plist
            do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " idleTime -int 0"  user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Screen Saver disabled"
            logToFile_(me)
            -- Create the ARD user
            createARDUser_(me)
        on error
            --Log Action
            set logMe to "Error: Disabling Screen Saver"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Disabling Screen Saver"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end disableScreenSaver_

    -- Create the ARD user
    on createARDUser_(sender)
        -- If ARD option has been enabled
        if ardEnabled is equal to true then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating ARD User"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to create " & quoted form of variableVariable & "/Scripts/"
            logToFile_(me)
            -- Make certficates directory
            do shell script "/bin/mkdir " & quoted form of variableVariable & "/Scripts/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Created " & quoted form of variableVariable & "/Scripts/"
            logToFile_(me)
            --Log Action
            set logMe to "Trying to copy Boot.sh"
            logToFile_(me)
            -- Install Boot.sh
            do shell script "/bin/cp " & quoted form of pathToResources & "/Boot.sh " &  quoted form of variableVariable & "/Scripts/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Boot.sh copied"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to create " & quoted form of variableVariable & "/Certificates/"
            logToFile_(me)
            -- Make certficates directory
            do shell script "/bin/mkdir " & quoted form of variableVariable & "/Certificates/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Created " & quoted form of variableVariable & "/Certificates/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to create " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set ownership to root:wheel on " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Correct ownership
            do shell script "/usr/sbin/chown -R root:wheel " & quoted form of variableVariable & "/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:wheel on " & quoted form of variableVariable & "/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set permissions to 755 on " & quoted form of variableVariable & "/"
            logToFile_(me)
            -- Making writable
            do shell script "/bin/chmod -R 755 " & quoted form of variableVariable & "/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set permissions to 755 on " & quoted form of variableVariable & "/Settings/"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to copy com.AutoCasperNBI.boot.plist"
            logToFile_(me)
            -- Install Boot.sh
            do shell script "/bin/cp " & quoted form of pathToResources & "/com.AutoCasperNBI.boot.plist " & quoted form of netBootDmgMountPath & "/Library/LaunchDaemons/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "com.AutoCasperNBI.boot.plist copied"
            logToFile_(me)
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                     set my buildProcessProgressBar to buildProcessProgressBar + 1
                     -- Copy the root.plist
                     do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/root.plist " & quoted form of netBootDmgMountPath & "/private/var/db/dslocal/nodes/Default/users/" user name adminUserName password adminUsersPassword with administrator privileges
                     --Log Action
                     set logMe to "Successfully copied Lion Root user plist"
                     logToFile_(me)
                else
                    --Log Action
                    set logMe to "Trying to copy Root user plist (10.8+)"
                    logToFile_(me)
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Root User plist"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            -- Copy kcpassword
            do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/kcpassword " & quoted form of netBootDmgMountPath & "/etc/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully copied /etc/kcpassword"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Correcting permissions on /etc/kcpassword"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set Root User auto login"
            logToFile_(me)
            -- Write autoLoginUID to plist,
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist autoLoginUID -string 0" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully set autoLoginUID"
            logToFile_(me)
            -- Write autoLoginUser to plist,
            do shell script "/usr/bin/defaults write " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist autoLoginUser -string root" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Successfully set autoLoginUser"
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
            try
                -- Making writable
                do shell script "/bin/chmod 644 " & quoted form of netBootDmgMountPath & "/Library/Preferences/com.apple.loginwindow.plist" user name adminUserName password adminUsersPassword with administrator privileges
            end try
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            -- Copy the correct dock.plist
            do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/" & imagingApp & ".com.apple.dock.plist " & quoted form of netBootDmgMountPath & "/private/var/root/Library/Preferences/com.apple.dock.plist" user name adminUserName password adminUsersPassword with administrator privileges
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                -- Copy the root.plist
                do shell script "/usr/bin/ditto " & quoted form of pathToResources & "/rc.netboot " & quoted form of netBootDmgMountPath & "/etc/" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Successfully copied /etc/rc.netboot"
                logToFile_(me)
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Correcting permissions on /etc/rc.netboot"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        -- If we have a desktop selected & we can find it
        if desktopImageExists is true
            if selectedOSdmgVersionMajor is less than 14 then
                -- Set to text
                set customDesktopImagePath to customDesktopImagePath as text
                try
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Desktop Image"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
                    --Log Action
                    set logMe to "Removing symbolic link on " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                    logToFile_(me)
                    try
                        -- Remove DefaultDesktop.jpg's symbolic link, silently error is doesn't exist
                        do shell script "/bin/unlink " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    end try
                    --Log Action
                    set logMe to "Trying to copy " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                    logToFile_(me)
                    -- Copy selected image
                    do shell script "/bin/cp -r " & quoted form of customDesktopImagePath & " " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Copied " & customDesktopImagePath & " to " & netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                    logToFile_(me)
                    --Log Action
                    set logMe to "Trying to set permissions to 755 on " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                    logToFile_(me)
                    -- Making writable
                    do shell script "/bin/chmod -R 755 " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Set permissions to 755 on " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
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
                try
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Desktop Image"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
                    --Log Action
                    set logMe to "Trying to copy " & customDesktopImagePath & " to " & netBootDmgMountPath & "/Library/Desktop Pictures/Mojave.heic"
                    logToFile_(me)
                    -- Copy selected image
                    do shell script "/bin/cp -r " & quoted form of customDesktopImagePath & " " & quoted form of netBootDmgMountPath & "/Library/Desktop\\ Pictures/Mojave.heic" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Copied " & customDesktopImagePath & " to " & netBootDmgMountPath & "/Library/Desktop Pictures/Mojave.heic"
                    logToFile_(me)
                    --Log Action
                    set logMe to "Trying to set permissions to 755 on " & quoted form of netBootDmgMountPath & "/Library/Desktop Pictures/Mojave.heic"
                    logToFile_(me)
                    -- Making writable
                    do shell script "/bin/chmod -R 755 " & quoted form of netBootDmgMountPath & "/Library/Desktop\\ Pictures/Mojave.heic" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Set permissions to 755 on " & quoted form of netBootDmgMountPath & "/Library/Desktop Pictures/Mojave.heic"
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
            end if
        else
            -- Copy Casper Imaging.app selected earlier
            copyCasperImagingApp_(me)
        end if  
    end copyDesktopImage_

    -- Copy Casper Imaging.app selected earlier
    on copyCasperImagingApp_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying " & imagingApp & " Imaging.app"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            -- Cut the trailing /
            set selectedAppPathToCopy to do shell script "/bin/echo " & quoted form of selectedAppPath & " | rev | cut -c 2- | rev"
            --Log Action
            set logMe to imagingApp & " Imaging.app to copy resides " & selectedAppPathToCopy
            logToFile_(me)
            -- Copy location for Casper Imaging.app
            set variableVariable to netBootDmgMountPath & "/Applications/"
            -- Copy path of Casper Imaging.app
            set copiedAppPath to netBootDmgMountPath & "/Applications/" & imagingApp & " Imaging.app"
            --Log Action
            set logMe to imagingApp & " Imaging.app to be copied to " & copiedAppPath
            logToFile_(me)
            -- Copy Casper Imaging.app & log
            do shell script "/bin/cp -r " & quoted form of selectedAppPathToCopy & " " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
            --Log action
            set logMe to "Copied " & selectedAppPath & " to " & variableVariable
            logToFile_(me)
            -- Try as errors if not found
            try
                -- Delete Quaratine flag
                do shell script "xattr -d com.apple.quarantine " & quoted form of copiedAppPath user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Quarantine flag removed from " & quoted form of copiedAppPath
                logToFile_(me)
            on error
                --Log Action
                set logMe to "Quarantine flag already removed from " & quoted form of copiedAppPath
                logToFile_(me)
            end try
            -- Enable Casper Imaging in Debug mode
            enableCasperImagingDebug_(me)
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

    -- Enable Casper Imaging in Debug mode
    on enableCasperImagingDebug_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting " & imagingApp & " Imaging to Debug mode"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            -- Try as errors if found
            try
                -- Make Debug folder
                do shell script "/bin/mkdir " & quoted form of copiedAppPath & "/Contents/Support/debug" user name adminUserName password adminUsersPassword with administrator privileges
                -- Log Action
                set logMe to "Debug folder created in "  & quoted form of copiedAppPath & "/Contents/Support/debug"
                logToFile_(me)
            on error
                -- Log Action
                set logMe to "Debug found at "  & quoted form of copiedAppPath & "/Contents/Support/debug"
                logToFile_(me)
            end try
            -- Write the Casper Imaging plist
            writeCasperImagingPlist_(me)
        on error
            --Log Action
            set logMe to "Error: Setting " & imagingApp & " Imaging to Debug mode"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Setting " & imagingApp & " Imaging to Debug mode"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end enableCasperImagingDebug_
        
    -- Write the Casper Imaging plist
    on writeCasperImagingPlist_(sender)
        try
            -- If a JSS URL is specified
            if my jssURL is not ""
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Writing jamf plist"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                -- JSS Plist location on mounted volume
                set variableVariable to netBootDmgMountPath & "/private/var/root/Library/Preferences/com.jamfsoftware.jss.plist"
                -- Write Casper Imaging plist to allow invalid cert,
                do shell script "/usr/bin/defaults write " & quoted form of variableVariable & " allowInvalidCertificate -bool true" user name adminUserName password adminUsersPassword with administrator privileges
                -- Log Action
                set logMe to "com.jamfsoftware.jss.plist created & allow invalid certificate set"
                logToFile_(me)
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
            set logMe to "Error: Writing the jamf plist"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Writing the jamf plist"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end writeCasperImagingPlist_

    -- Install CasperImagingLaunchAgent
    on installCasperImagingLaunchAgent_(sender)
        if imagingApp is "Casper"
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Installing Casper Imaging LaunchAgent"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to install Casper Imaging LaunchAgent"
                logToFile_(me)
                -- Install com.AutoCasperNBI.CasperImaging.plist from rescources
                do shell script "/bin/cp " & quoted form of pathToResources & "/com.AutoCasperNBI.CasperImaging.plist " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Casper Imaging LaunchAgent plist installed"
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Correcting ownership on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist"
                logToFile_(me)
                -- Correct ownership
                do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.CasperImaging.plist"
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
        else
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Installing Jamf Imaging LaunchAgent"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to install Jamf Imaging LaunchAgent"
                logToFile_(me)
                -- Install com.AutoCasperNBI.JamfImaging.plist from rescources
                do shell script "/bin/cp " & quoted form of pathToResources & "/com.AutoCasperNBI.JamfImaging.plist " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Jamf Imaging LaunchAgent plist installed"
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Correcting ownership on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist"
                logToFile_(me)
                -- Correct ownership
                do shell script "/usr/sbin/chown root:wheel " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Set ownership to root:wheel on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist"
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to correct permissions on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist"
                logToFile_(me)
                -- Making  writable
                do shell script "/bin/chmod 644 " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Set permissons on " & quoted form of netBootDmgMountPath & "/Library/LaunchAgents/com.AutoCasperNBI.JamfImaging.plist to 644"
                logToFile_(me)
                -- Get JSS CA Cert if JSS URL given
                importJSSCACert_(me)
                on error
                --Log Action
                set logMe to "Error: Installing Jamf Imaging LaunchAgent"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Installing Jamf Imaging LaunchAgent"
                -- Notify of errors or success
                userNotify_(me)
            end try
        end if
    end installCasperImagingLaunchAgent_

    -- Get JSS CA Cert if JSS URL given
    on importJSSCACert_(sender)
        -- If a JSS URL is specified
        if jssURL is not equal to "" then
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Downloading JSS CA Cert"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            -- Application Support location on TempOSdmg for installing at boot
            set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Certificates/"
            -- Log Action
            set logMe to "Downloading JSS CA Cert for " & jssURL
            logToFile_(me)
            try
                -- Download CA Cert from JSS to /Library/Application Support/AutoCasperNBI/Certificates/UUID
                do shell script "/usr/bin/curl -k -o " & quoted form of variableVariable & tempUUID & ".cer " & jssURL & "/CA/SCEP?operation=getcacert" user name adminUserName password adminUsersPassword with administrator privileges
                -- Log Action
                set logMe to "Successfully Downloaded JSS CA Cert to " & quoted form of variableVariable
                logToFile_(me)
            on error
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Error: Downloading JSS CA Cert"
                delay 0.1
                --Log Action
                set logMe to "Error: Downloading JSS CA Cert"
                logToFile_(me)
            end try
        end if
        -- Add any additional certs if specified
        importAdditionalCerts_(me)
    end importJSSCACert_

    -- Add any additional certs if specified
    on importAdditionalCerts_(sender)
        -- If we're importing certs
        if my additionalCerts as string is not equal to "" then
                try
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Copying Additional Certs"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
                    -- Set variable to list
                    set additionalCerts to additionalCerts as list
                    -- For each item in array
                    repeat with selectedCertsPath in additionalCerts
                        -- Application Support location on TempOSdmg for installing at boot
                        set variableVariable to netBootDmgMountPath & "/Library/Application Support/AutoCasperNBI/Certificates/"
                        -- Copy Cert
                        do shell script "/bin/cp -r " & quoted form of selectedCertsPath & " " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to get input layout id for: " & inputLanguageSelected
            logToFile_(me)
            -- Set to text of value
            set inputLanguageSelected to inputLanguageSelected as text
            -- Get Tag of inputLanguageSelected popup item
            set currentCell to (languagePopup's selectedCell)
            set inputLayoutID to (currentCell's tag())
            -- Set to variable to text
            set inputLayoutID to inputLayoutID as text
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
        --if additionalPKGs is not missing value then
        if my additionalPKGs as string is not equal to "" then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Installing Additional PKGs"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                -- Disable Spotlight Indexing on NetBoot.sparseimage
                disableSpotlight_(me)
            on error
                --Log Action
                set logMe to "Error: Installing Additional PKG(s)"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Installing Additional PKG(s)"
                -- Notify of errors or success
                userNotify_(me)
            end try
        else
            -- Disable Spotlight Indexing on NetBoot.sparseimage
            disableSpotlight_(me)
        end if
    end installAdditionalPKGs_

    -- Disable Spotlight Indexing on NetBoot.sparseimage
    on disableSpotlight_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Disabling Spotlight"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to disable Spotlight on " & netBootDmgMountPath
            logToFile_(me)
            -- Delete Spotlight LaunchDaemon
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/LaunchDaemons/com.apple.metadata.mds.plist"  user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Disabled Spotlight on " & netBootDmgMountPath
            logToFile_(me)
            -- Create dlyd shared cache files
            createDlydCaches_(me)
        on error
            --Log Action
            set logMe to "Error: Disabling Spolight"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Disabling Spolight"
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Creating dyld shared cache files on: " & netBootDmgMountPath
            logToFile_(me)
            -- Update dylyd cache, this can error on success.
            try
                do shell script quoted form of netBootDmgMountPath & "/usr/bin/update_dyld_shared_cache -root " & quoted form of netBootDmgMountPath & " -universal_boot -force" user name adminUserName password adminUsersPassword with administrator privileges
            end try
            --Log Action
            set logMe to "Successfully created dyld caches"
            logToFile_(me)
            -- Reduce Kernel cache
            reduceKernelCache_(me)
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

    -- Reduce Kernel cache if we're on 10.9.x
    on reduceKernelCache_(sender)
        if selectedOSdmgVersionMajor is 9 then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting extensions to reduce kernel cache size"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to delete " & netBootDmgMountPath & "/System/Library/Extensions/Accusys*"
                logToFile_(me)
                -- Delete extensions
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/Accusys*"  user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/Accusys*"
                logToFile_(me)
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
                -- Delete extentions
                do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/JMicronATA.kext" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Deleted " & netBootDmgMountPath & "/System/Library/Extensions/JMicronATA.kext"
                logToFile_(me)
                -- Delete launchd rebuild caches
                deleteLaunchdRebuildCaches_(me)
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
        else
            -- Delete launchd rebuild caches
            deleteLaunchdRebuildCaches_(me)
        end if
    end reduceKernelCache_

    -- Delete launchd rebuild caches
    on deleteLaunchdRebuildCaches_(sender)
        try
            set variableVariable to netBootDmgMountPath & "/var/db/.launchd_rebuild_caches"
            set file_path to current application's NSString's stringWithString:variableVariable
            set fileManager to current application's NSFileManager's defaultManager()
            if (item 1 of (fileManager's fileExistsAtPath:file_path isDirectory:(reference))) as boolean = true then
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting /var/db/.launchd_rebuild_caches"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Found: " & file_path
                logToFile_(me)
                -- Delete the below file, silently error if doesn't exist
                try
                    do shell script "/bin/rm " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                end try
                --Log Action
                set logMe to "Deleted: " & file_path
                logToFile_(me)
                -- Create xpc extensions cache files
                createXpcExtensionsCaches_(me)
            else
                -- Create xpc extensions cache files
                createXpcExtensionsCaches_(me)
            end if
            on error
            --Log Action
            set logMe to "Error: Creating xpc extensions cache"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: xpc extensions cache"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end deleteLaunchdRebuildCaches

    -- Create xpc extensions cache files
    on createXpcExtensionsCaches_(sender)
        try
            set variableVariable to netBootDmgMountPath & "/usr/libexec/xpccachectl"
            set file_path to current application's NSString's stringWithString:variableVariable
            set fileManager to current application's NSFileManager's defaultManager()
            if (item 1 of (fileManager's fileExistsAtPath:file_path isDirectory:(reference))) as boolean = true then
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating xpc extensions cache"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Creating xpc extensions cache on : " & netBootDmgMountPath
                logToFile_(me)
                -- Update xpc extension caches
                do shell script quoted form of netBootDmgMountPath & "/usr/libexec/xpccachectl --base " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Successfully xpc extensions cache"
                logToFile_(me)
                -- Generate the Kernel cache
                generateKernelCache_(me)
                else
                -- Generate the Kernel cache
                generateKernelCache_(me)
            end if
            on error
            --Log Action
            set logMe to "Error: Creating xpc extensions cache"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: xpc extensions cache"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end createXpcExtensionsCaches

    -- Generate the Kernel cache
    on generateKernelCache_(sender)
        try
            ---- MAKE x86_64 FOLDER ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Creating x84_64 folder"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to create folder " & netBootDirectory & "/i386/x86_64"
            logToFile_(me)
            -- Create the x86_64 folder
            do shell script "/bin/mkdir -p " & quoted form of netBootDirectory & "/i386/x86_64" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Created folder " & netBootDirectory & "/i386/x86_64"
            logToFile_(me)
            ---- TOUCH EXTENSIONS FOLDER ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Touching /System/Library/Extensions/"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Touching " & netBootDmgMountPath & "/System/Library/Extensions/"
            logToFile_(me)
            -- Update
            do shell script "/usr/bin/touch " & quoted form of netBootDmgMountPath & "/System/Library/Extensions/" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Touched " & netBootDmgMountPath & "/System/Library/Extensions/"
            logToFile_(me)
            ---- UPDATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Updating kernel cache"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Updating kernel cache on: " & netBootDmgMountPath
            logToFile_(me)
            -- Update volumes kext-cache
            if not (hostMacOSVersionMajor is less than 14) and (selectedOSdmgVersionMajor is equal to 14)
                do shell script quoted form of netBootDmgMountPath & "/usr/sbin/kextcache -update-volume " & quoted form of netBootDmgMountPath user name adminUserName password adminUsersPassword with administrator privileges
            end if
            --Log Action
            set logMe to "Updated kernel cache on: " & netBootDmgMountPath
            logToFile_(me)
            ---- GENERATE KERNEL CACHE ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Generating kernel cache"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Generating kernel cache"
            --logToFile_(me)
            try
                -- If we're building an OS newer than 10.9
                if selectedOSdmgVersionMajor is greater than 9
                    --Log Action
                    set logMe to "Greater than 9 " & selectedOSdmgVersionMajor
                    logToFile_(me)
                    -- Different location used in 10.10.+
                    do shell script "/usr/sbin/kextcache -arch x86_64 -l -n -K " & quoted form of netBootDmgMountPath & "/System/Library/Kernels/kernel -c " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Extensions" user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "passed"
                    logToFile_(me)
                    
                else
                  try
                    -- Generate kernel cache, silently error as this will error when on 10.9.4 when skipping extensions.
                    do shell script quoted form of netBootDmgMountPath & "/usr/sbin/kextcache -arch x86_64 -l -n -K " & quoted form of netBootDmgMountPath & "/mach_kernel -c " & quoted form of netBootDirectory & "/i386/x86_64/kernelcache " & quoted form of netBootDmgMountPath & "/System/Library/Extensions" user name adminUserName password adminUsersPassword with administrator privileges
                    end try
                end if
            end try
            --Log Action
            set logMe to "Generated kernel cache at: " & netBootDirectory & "/i386/x86_64/kernelcache"
            logToFile_(me)
            -- Update Build Process Window's Text Field
            -- To stop hang on reboot
            set my buildProcessTextField to "Deleting bootcaches.plist"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Deleting bootcaches.plist from: " & netBootDmgMountPath & "/usr/standalone/bootcaches.plist"
            logToFile_(me)
            -- Delete the bootcaches.plist
            do shell script "/bin/rm -rf " & quoted form of netBootDmgMountPath & "/usr/standalone/bootcaches.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Deleted bootcaches.plist from: " & netBootDmgMountPath & "/usr/standalone/bootcaches.plist"
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi to " & quoted form of netBootDirectory & "/i386/booter"
            logToFile_(me)
            -- Copy the plist
            do shell script "/bin/cp " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/boot.efi " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
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
            do shell script "/usr/sbin/chown root:staff " & quoted form of netBootDirectory & "/i386/booter" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set ownership to root:staff on " & netBootDirectory & "/i386/booter"
            logToFile_(me)
            -- Copy Wifi Folder if exists
            copyWifiFolder_(me)
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

    -- Copy Wifi Folder if exists
    on copyWifiFolder_(sender)
        try
            set variableVariable to netBootDmgMountPath & "/usr/share/firmware/wifi/"
            set file_path to current application's NSString's stringWithString:variableVariable
            set fileManager to current application's NSFileManager's defaultManager()
            if (item 1 of (fileManager's fileExistsAtPath:file_path isDirectory:(reference))) as boolean = true then
                --Log Action
                set logMe to "Found wifi folder: " & file_path
                logToFile_(me)
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to create folder " & netBootDirectory & "/i386/wifi"
                logToFile_(me)
                -- Create the wifi folder
                do shell script "/bin/mkdir -p " & quoted form of netBootDirectory & "/i386/wifi" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Created folder " & netBootDirectory & "/i386/wifi"
                logToFile_(me)
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Copying wifi folder"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying to copy wifi folder from" & quoted form of variableVariable
                logToFile_(me)
                set logMe to "command: /bin/cp -R " & quoted form of variableVariable & space & quoted form of netBootDirectory & "/i386/wifi/"
                logToFile_(me)
                -- Create the wifi folder
                do shell script "/bin/cp -R " & quoted form of variableVariable & space & quoted form of netBootDirectory & "/i386/wifi/" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Successfully copied wifi folder"
                logToFile_(me)
                -- Correct ownership
                do shell script "/usr/sbin/chown -R root:staff " & quoted form of netBootDirectory & "/i386/wifi" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Set ownership to root:staff on " & netBootDirectory & "/i386/wifi"
                logToFile_(me)
                -- Copy PlatformSupport.plist
                copyPlatformSupportPlist_(me)
                else
                -- Copy PlatformSupport.plist
                copyPlatformSupportPlist_(me)
            end if
            on error
            --Log Action
            set logMe to "Error: Copying wifi folder"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Copying wifi folder"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end copyWifiFolder_

    -- Copy PlatformSupport.plist
    on copyPlatformSupportPlist_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Copying PlaformSupport.plist"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Copying " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist to " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist"
            logToFile_(me)
            -- Copy the plist
            do shell script "/bin/cp " & quoted form of netBootDmgMountPath & "/System/Library/CoreServices/PlatformSupport.plist " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist" user name adminUserName password adminUsersPassword with administrator privileges
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
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        try
            -- If we're building a 10.11 - 10.11.1 NBI, then copy from 10.11NBImageInfo folder
            if selectedOSdmgVersion is less than "10.11.2" then
                --Log Action
                set logMe to "Copying NBImageInfo.plist for 10.11 - 10.11.1"
                logToFile_(me)
                do shell script "/bin/cp " & quoted form of pathToResources & "/10.11NBImageInfo/NBImageInfo.plist " & quoted form of netBootDirectory & "/" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Copied NBImageInfo.plist"
                logToFile_(me)
                -- Updates NBImageInfo.plist
                updateNBImageInfoPlist_(me)
            else
                --Log Action
                set logMe to "Copying NBImageInfo.plist"
                logToFile_(me)
                -- Copy the plist
                do shell script "/bin/cp " & quoted form of pathToResources & "/NBImageInfo.plist " & quoted form of netBootDirectory user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Copied NBImageInfo.plist"
                logToFile_(me)
                -- Updates NBImageInfo.plist
                updateNBImageInfoPlist_(me)
            end if
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                -- Set to boolean of value
                set netBootDescriptionEnabled to netBootDescriptionEnabled as boolean
                set netBootDescription to netBootDescription as text
                if netBootDescriptionEnabled is true
                    -- Update Build Process Window's Text Field
                    set my buildProcessTextField to "Setting NBImageInfo.plist Description"
                    delay 0.1
                    -- Update build Process ProgressBar
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
                    --Log Action
                    set logMe to "Trying to set .nbi description to " & quoted form of netBootDescription
                    logToFile_(me)
                    -- Set NetBoot to Description
                    do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist Description -string " & quoted form of netBootDescription user name adminUserName password adminUsersPassword with administrator privileges
                    --Log Action
                    set logMe to "Set .nbi Description"
                    logToFile_(me)
                end if
                ---- Index ----
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting NBImageInfo.plist Index"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
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
                    set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set .nbi to Enabled"
            logToFile_(me)
            -- Set NetBoot to Diskless
            do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist IsEnabled -bool YES" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Set .nbi to Enabled"
            logToFile_(me)
            ---- EnabledSystemIdentifiers ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting NBImageInfo.plist's to EnabledSystemIdentifiers"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to set .nbi's EnabledSystemIdentifiers"
            logToFile_(me)
            try
                -- Get list of supported Macs for NBI
                set variableVariable to do shell script "/usr/bin/defaults read " & quoted form of netBootDirectory & "/i386/PlatformSupport.plist SupportedModelProperties"
                -- Set EnabledSystemIdentifiers
                do shell script "/usr/bin/defaults write " & quoted form of netBootDirectory & "/NBImageInfo.plist DisabledSystemIdentifiers " & quoted form of variableVariable user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Set .nbi's EnabledSystemIdentifiers"
                logToFile_(me)
            on error
                --Log Action
                set logMe to "Could not find EnabledSystemIdentifiers array"
                logToFile_(me)
            end try
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
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
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to convert " & netBootDirectory & "/NBImageInfo.plist to xml"
            logToFile_(me)
            -- Making NBImageInfo.plist writable
            do shell script "/usr/bin/plutil -convert xml1 " & quoted form of netBootDirectory & "/NBImageInfo.plist" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Converted " & netBootDirectory & "/NBImageInfo.plist to xml"
            logToFile_(me)
            -- Detach mounted volumes
            unMountDMGs_(me)
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

    -- Detach mounted volumes
    on unMountDMGs_(sender)
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Detaching " & netBootDmgMountPath
        -- Reset build Process ProgressBar
        set my buildProcessProgressBar to buildProcessProgressBar + 1
        delay 0.1
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        ---- Unmount NetBoot.sparseimage if mounted
        if netBootDmgMountPath is  not equal to missing value then
            try
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force" user name adminUserName password adminUsersPassword with administrator privileges
            end try
        end if
        -- Compact the NetBoot Image
        compactNetBootImage_(me)
    end unMountDMGs_

    ---- Compact the NetBoot Image
    on compactNetBootImage_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Compacting NetBoot.sparseimage"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log action
            set logMe to "Trying to compact NetBoot.sparseimage in " & netBootDirectory
            logToFile_(me)
            -- Compact the NetBoot.sparseimage
            do shell script "/usr/bin/hdiutil compact " & quoted form of netBootDirectory & "/NetBoot.sparseimage -batteryallowed" user name adminUserName password adminUsersPassword with administrator privileges
            --Log action
            set logMe to "Compacted NetBoot.sparseimage in " & netBootDirectory
            logToFile_(me)
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to true
            -- Create Read Only DMG
            createReadOnlyDMG_(me)
        on error
            --Log Action
            set logMe to "Error: Compacting NetBoot.sparseimage"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Compacting NetBoot.sparseimage"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end compactNetBootImage_

    -- Create Read Only DMG
    on createReadOnlyDMG_(sender)
        -- If we're creating a Restorable DMG
        if createReadOnlyDMG is true
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating Restorable DMG"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "Trying create Restorable DMG of " & netBootDirectory & "/NetBoot.sparseimage"
                logToFile_(me)
                -- Make a Read-Only copy of NetBoot.sparseimage
                do shell script "/usr/bin/hdiutil convert -format UDZO -o " & quoted form of rootDirectory & "/" & quoted form of netBootNameTextField & ".restorable.dmg " & quoted form of netBootDirectory & "/NetBoot.sparseimage" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "Created " & netBootDirectory & "/" & quoted form of netBootNameTextField & ".restorable.dmg"
                logToFile_(me)
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Scanning Restorable DMG"
                delay 0.1
                -- Update build Process ProgressBar
                set my buildProcessProgressBar to buildProcessProgressBar + 1
                --Log Action
                set logMe to "ASR scanning " & quoted form of rootDirectory & "/" & quoted form of netBootNameTextField & ".restorable.dmg"
                logToFile_(me)
                -- ASR scan NetBoot.readonly.dmg
                do shell script "/usr/sbin/asr -imagescan -allowfragmentedcatalog " & quoted form of rootDirectory & "/" & quoted form of netBootNameTextField & ".restorable.dmg" user name adminUserName password adminUsersPassword with administrator privileges
                --Log Action
                set logMe to "ASR scanned " & quoted form of rootDirectory & "/" & quoted form of netBootNameTextField & ".restorable.dmg"
                logToFile_(me)
                -- Rename sparseimage to .DMG
                renameSparseimageToDMG_(me)
            on error
                --Log Action
                set logMe to "Error: Creating Restorable DMG"
                logToFile_(me)
                -- Set to false to display
                set my userNotifyErrorHidden to false
                -- Set Error message
                set my userNotifyError to "Error: Restorable DMG"
                -- Notify of errors or success
                userNotify_(me)
            end try
        else
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to true
            -- Rename sparseimage to .DMG
            renameSparseimageToDMG_(me)
        end if
    end createReadOnlyDMG_

    -- Rename sparseimage to .DMG
    on renameSparseimageToDMG_(sender)
        try
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Renaming NetBoot.sparseimage to NetBoot.dmg"
            delay 0.1
            -- Update build Process ProgressBar
            set my buildProcessProgressBar to buildProcessProgressBar + 1
            --Log Action
            set logMe to "Trying to rename " & netBootDirectory & "/NetBoot.sparseimage to NetBoot.dmg"
            logToFile_(me)
            -- Rename NetBoot.sparseimage
            do shell script "/bin/mv " & quoted form of netBootDirectory & "/NetBoot.sparseimage " & quoted form of netBootDirectory & "/NetBoot.dmg" user name adminUserName password adminUsersPassword with administrator privileges
            --Log Action
            set logMe to "Renamed " & netBootDirectory & "/NetBoot.sparseimage to NetBoot.dmg"
            logToFile_(me)
            -- Reset build process variables
            tidyUpTimeKids_(me)
        on error
            --Log Action
            set logMe to "Error: Renaming NetBoot.sparseimage to NetBoot.dmg"
            logToFile_(me)
            -- Set to false to display
            set my userNotifyErrorHidden to false
            -- Set Error message
            set my userNotifyError to "Error: Renaming NetBoot.sparseimage to NetBoot.dmg"
            -- Notify of errors or success
            userNotify_(me)
        end try
    end renameSparseimageToDMG_

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
        set my buildProcessProgressBar to 0
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
            -- Try to stop errors when no soundcard
            try
                -- Play complete.aif
                do shell script "/usr/bin/afplay " & quoted form of pathToResources & "/complete.aif"
            end try
            -- Set to false to display
            set my userNotifySuccessHidden to false
            -- Set Error message
            set my userNotifySuccess to "NetBoot successfully created at the following location:" & return & return & netBootDirectory
            -- true for set, false for unset & redo
            set my netBootDescriptionSet to false
            -- Notify of errors or success
            userNotify_(me)
        end if
    end weDidIt_

    -- Open Log Location
    on openLogLocation_(sender)
        -- Close User Notify Window
        userNotifyClose_(me)
        --Open log file with console
        do shell script "/usr/bin/open -a /Applications/Utilities/Console.app ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
    end openLogLocation_

    -- Open NBI Location
    on openNBILocation_(sender)
        -- Close User Notify Window
        userNotifyClose_(me)
        -- Open NBI folder in Finder
        do shell script "/usr/bin/open -a /System/Library/CoreServices/Finder.app" & rootDirectory
    end openNBILocation_

    -- Notify of errors or success
    on userNotify_(sender)
        -- Bounce app icon
        current application's NSApp's requestUserAttention:0
        -- activate user notify window
        activate
        userNotifyWindow's makeKeyAndOrderFront_(null)
        -- Enable main windows buttons
        set my disableOptionsAndBuild to false
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
        -- Set build Process ProgressBar to indeterminate & animated
        set my buildProcessProgressBarIndeterminate to true
        set my buildProcessProgressBarAniminate to true
        delay 0.1
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        -- Unmount NetBoot.sparseimage if mounted
        if netBootDmgMountPath is  not equal to missing value then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Trying to detach " & netBootDmgMountPath
                delay 0.1
                --Log Action
                set logMe to "Trying to detach " & netBootDmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of netBootDmgMountPath & " -force" 
            end try
        end if
        -- Unmount OS.dmg if mounted
        if selectedOSdmgMountPath is  not equal to missing value then
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Trying to detach " & selectedOSdmgMountPath
                delay 0.1
                --Log Action
                set logMe to "Trying to detach " & selectedOSdmgMountPath
                logToFile_(me)
                -- Detach Volume
                do shell script "/usr/bin/hdiutil detach " & quoted form of selectedOSdmgMountPath & " -force"
            end try
        end if
        -- Try & delete mount.plist
        try
            do shell script "/bin/rm -rf " & quoted form of mountPlist
        end try
        -- Update buildProcessLogTextField to show path to todays log
        set my buildProcessLogTextField to "Today's Log: ~/Library/Logs/AutoCasperNBI/AutoCasperNBI-" & logDate & ".log"
        --Log Action
        set logMe to "Goodbye for now!"
        logToFile_(me)
        -- Terminate App
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
