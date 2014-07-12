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
    property AutoCasperNBIWindow : missing value
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
    property selectedTempOSdmgMountPath : missing value
    property selectedAppPathToCopy : missing value
    property downloadedJSSCACert : missing value
    property variableVariable : missing value
    property buildDate : missing value
    property ardPasswordEncoded : missing value
    property ardUsernameEncoded : missing value
    property netBootCreatedPath : missing value
    property desktopImageExists : missing value
    property netBootImageResizeValue : missing value
    property selectedCasperImagingAppVersionToDelim : missing value
    property selectedCasperImagingAppVersionMajor : missing value
    property selectedCasperImagingAppVersionMinor : missing value
    property jssVersionToDelim : missing value
    property jssVersionMajor : missing value
    property jssVersionMinor : missing value
    
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
    property netBootImageResizeEnabled : false
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
    
    -- Others
    property requiredSpace : 20
    property buildProccessProgressBar : 0
    
--- HANDLERS ---

    ----- GET REQUIRED DEFAULTS ----
    -- To be run at launch
    on getOSandUsername_(sender)
        
        -- Get OS of host mac to verify that we can create an .nbi from supplied OS.dmg
        set my hostMacOSVersion to (do shell script "sw_vers -productVersion")
        log "Running on OS " & hostMacOSVersion
        
        -- Get username of user running AutoCasperNBI
        set userName to short user name of (system info)
        log "Launched by " & userName
        
        -- Get a UUID for folder path
        set tempUUID to do shell script "uuidgen"
        log "UUID " & tempUUID
        
        -- Get path to resources folder
        set pathToResources to (current application's class "NSBundle"'s mainBundle()'s resourcePath()) as string
        
    end getOSandUsername_

    -- Register plist default settings
    on regDefaults_(sender)
        tell current application's NSUserDefaults to set defaults to standardUserDefaults()
        tell defaults to registerDefaults_({ardEnabled:ardEnabled, ¬
        ardUsername:ardUsername, ¬
        ardPassword:ardPassword, ¬
        customDesktopImagePath:customDesktopImagePath, ¬
        jssURL:jssURL, ¬
        netBootDescriptionEnabled:netBootDescriptionEnabled, ¬
        netBootImageIndexLoadBalanced:netBootImageIndexLoadBalanced, ¬
        netBootImageResizeEnabled:netBootImageResizeEnabled, ¬
        netBootImageResizeValue:netBootImageResizeValue, ¬
        netBootImageReduceEnabled:netBootImageReduceEnabled, ¬
        netBootServeOverNFS:netBootServeOverNFS, ¬
        vncEnabled:vncEnabled, ¬
        vncPassword:vncPassword })
    end regDefaults_
    
    -- Get values from plist
	on retrieveDefaults_(sender)
        tell defaults to set my ardEnabled to objectForKey_("ardEnabled") as boolean
        tell defaults to set my ardUsername to objectForKey_("ardUsername")
        tell defaults to set my ardPassword to objectForKey_("ardPassword")
        tell defaults to set my customDesktopImagePath to objectForKey_("customDesktopImagePath")
        tell defaults to set my jssURL to objectForKey_("jssURL")
        tell defaults to set my netBootDescriptionEnabled to objectForKey_("netBootDescriptionEnabled") as boolean
        tell defaults to set my netBootImageIndexLoadBalanced to objectForKey_("netBootImageIndexLoadBalanced")
        tell defaults to set my netBootImageResizeEnabled to objectForKey_("netBootImageResizeEnabled")
        tell defaults to set my netBootImageResizeValue to objectForKey_("netBootImageResizeValue")
        tell defaults to set my netBootImageReduceEnabled to objectForKey_("netBootImageReduceEnabled")
        tell defaults to set my netBootServeOverNFS to objectForKey_("netBootServeOverNFS")
        tell defaults to set my vncEnabled to objectForKey_("vncEnabled") as boolean
        tell defaults to set my vncPassword to objectForKey_("vncPassword")
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
    
    -- Start Build Process, we chain from from here for each handler passed we progress
    on showBuildProcess_(sender)
        
        -- Disable main windows buttons
        set my optionWindowEnabled to false
        
        -- activate build process window
        activate
        showBuildProcessWindow's makeKeyAndOrderFront_(null)
        
        -- Set NetBoot Description
        enablenetBootDescription_(me)
        
        -- Check free space & then start build
        checkFreeSpace_(me)
        
    end showBuildProcess_
    
    -- Cancel & tidy up
    on cancelBuildProcess_(sender)
        
        --Log Action
        log "Cancelling..."
        
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


----- MAIN WINDOW----

    -- Display a window for the user to select an DMG.
    on selectedOSDMG_(sender)
        
        try
            -- Prompt user to chose OS.dmg
            choose file of type {"public.disk-image"} with prompt "Select an OS.dmg:" default location (path to desktop folder)
            
            -- Set selectedOSdmgPath to path of OS.dmg given
            set selectedOSdmgPath to POSIX path of result
            
            -- Log path of selected DMG
            log "Path: " & selectedOSdmgPath
            
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
            
            -- Do handler:
            doOSDMG_(me)
            
        end
    end selectedOSDMG_
    
    -- Try & get OS version from dropped dmg, error if something is not quite right
    on doOSDMG_(sender)
        
        -- Reset build Process ProgressBar
        set my buildProccessProgressBar to 0
        
        -- Log that we're tryin to mount selected DMG
        log "Trying to mount: " & selectedOSdmgPath
        
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
        log "Mount Path: " & selectedOSdmgMountPath
        
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
            log "Error: Cannot create an .nbi as OS.dmg's OS version (" & selectedOSdmgVersion & ") is newer than this Macs (" & hostMacOSVersion & ")."
            
            -- Display error to user
            display dialog "Error: Cannot create an NetBoot from supplied OS.dmg as it's OS version (" & selectedOSdmgVersion & ") is newer than this Macs OS (" & hostMacOSVersion & ")." with icon 0 buttons {"OK"}
            
            -- Reset OSDMG Icons & hide cog
            doResetOSDMGIcons_(me)
            
            -- Display exclamation icon
            set my exclamationRedOSDMG to true
            
        else
        
            -- Log that we're ok to proceed
            log "We can create a NetBoot from " & selectedOSdmgPath
            
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
            log "Selected App Path: " & selectedAppPath
            
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
            
            log "Pre-Reqs met, Options & Build enabled."
            
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
        log "Bundle Name: " & selectedAppBundleName

        -- If Bundle Name is Casper Imaging, proceed to get version
        if selectedAppBundleName is equal to "Casper Imaging" then
            
            -- If Casper Imaging, return version
            try
                set selectedCasperImagingAppVersion to do shell script "defaults read " & quoted form of selectedAppPath & "/Contents/Info.plist CFBundleGetInfoString"
                
                log "Casper Imaging Version: " & selectedCasperImagingAppVersion
                
                -- Set label to Casper Imaging version
                set my selectedAppTextField to "Casper Imaging " & selectedCasperImagingAppVersion
                
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                
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
                log "Trying to get JSS version"
                
                -- Try & get URL using insecure method, this way it will work with or without a valid SSL cert
                set jssURLHtml to do shell script "curl -k " & jssURL & "/jss.html"

                --Log Action
                log "Received JSS version"
                
                -- Run Handler
                getJSSVersion_(me)
                
            -- Error if we cannot get the JSS version
            on error
            
                    -- Reset JSS URL icons
                    doResetJSSURLIcons_(me)
                    
                    -- Error if cannot get JSS Version
                    log "Cannot get JSS Version 2"
                    set my exclamationRedJSSURL to true
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
        log "Checking JSS Version from " & jssURL
        
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
            log "JSS is: " & jssVersion
            
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
            
            --Error Cannot get JSS Version
            log "Cannot get JSS Version 1"
            set my exclamationRedJSSURL to true
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
            
            log "Major Version Difference"
            
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
                log "Minor Version Difference"
                
                -- Reset Selected App Icons
                doResetSelectedAppIcons_(me)
                
                -- Reset JSS URL icons
                doResetJSSURLIcons_(me)
                
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
            
            -- Error to log
            log "Error: Name required for NetBoot Image"
            
        else
        
            log "Name: " & netBootNameTextField
        
        end if
        
    end netBootName_

    -- Bound to "Will be served from more than one server"
    on netBootImageIndex_(sender)
    
        -- Set netBootImageIndexLoadBalanced to boolean of value
        set netBootImageIndexLoadBalanced to netBootImageIndexLoadBalanced as boolean
        
        -- Set options depending on checkbox
        if netBootImageIndexLoadBalanced is true then
            
            -- If checked...
            log "NetBoot is to be hosted on multiple servers."
            
            -- Set min & max values for Index
            set netBootImageIndexMinValue to 4096 as integer
            set netBootImageIndexMaxValue to 65535 as integer
            
        else
        
            -- If not checked...
            log "NetBoot is to be hosted on a single server."
            
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
        
    end netbootServeOverHTTPSelected_

    -- Bound to NetBoot Serve over NFS radio button
    on netbootServeOverNFSSelected_(sender)
        
        -- Set NetBoot Serve Over NFS to true
        set netBootServeOverNFS to true
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootServeOverNFS, "netBootServeOverNFS")
        
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
    on netBootImageResize_(sender)
        
        -- Set netBootImageResizeEnabled to boolean of value
        set netBootImageResizeEnabled to netBootImageResizeEnabled as boolean
        
        -- Set options depending on checkbox
        if netBootImageResizeEnabled is true then
            -- If checked...
            log "NetBoot resize enabled"
        else
            log "NetBoot resize option unchecked"
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageResizeEnabled, "netBootImageResizeEnabled")
        
    end netBootImageResize_

    -- Bound to NetBoot Image Resize value
    on netBootImageResizeEnteredValue_(sender)
        
        -- If we have a value
        if netBootImageResizeValue is equal to missing value
        
            -- Display error to user
            display dialog "Please select a value to resize the NetBoot Image or deselect Resize by" with icon 0 buttons {"OK"}
            
        end if
        
        -- Update plist with selection
        tell defaults to setObject_forKey_(netBootImageResizeValue, "netBootImageResizeValue")
        
    end netBootImageResizeEnteredValue_

    -- Bound to "Reduce Image Size"
    on netBootImageReduce_(sender)
        
        -- Set netBootImageReduceEnabled to boolean of value
        set netBootImageReduceEnabled to netBootImageReduceEnabled as boolean
        
        -- Set options depending on checkbox
        if netBootImageReduceEnabled is true then
            -- If checked...
            log "NetBoot Reduce by enabled"
        else
            log "NetBoot Reduce option unchecked"
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
                log "NetBoot description not enabled"
                
            else
            
                --Log Action
                log "NetBoot description enabled"
                
                -- Get Build date (should return localised).
                set buildDate to date string of (current date)
            
                -- Get the full name of the user running AutoCasperNBI
                set longUserName to long user name of (system info)

                -- If we don't have a JSS URL set, then omit
                if jssURL is equal to missing value
                
                    -- Set NetBoot Description
                    set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & ". Created by, " & longUserName & " on: " & buildDate & "."
                    
                    --Log Action
                    log "NetBoot description set to " & netBootDescription
                    
                else
                
                    -- Set NetBoot Description
                    set my netBootDescription to selectedOSDMGTextField & " with Casper Imaging " & selectedCasperImagingAppVersion & " pointing to JSS " & jssURL & ". Created by, " & longUserName & " on: " & buildDate & "."
                    
                    --Log Action
                    log "NetBoot description set to " & netBootDescription
                    
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
            
            set my ardDetailsCheck to false
            
        else

            -- Update plist with selection
            tell defaults to setObject_forKey_(ardUsername, "ardUsername")
            
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
    on checkNetBootResizeValue_(sender)
        
        -- reload options from plist
        retrieveDefaults_(me)
        
        -- Set to boolean of value
        set netBootImageResizeEnabled to netBootImageResizeEnabled as boolean
        
        -- If we're looking to Resize the NetBoot Image
        if netBootImageResizeEnabled is true
        
            -- If we do not have a value to Resize the Image by
            if netBootImageResizeValue is equal to missing value
        
                --Log Action
                log "Error: NetBoot resize enabled, but no value given for expansion"
        
                -- Bound to NetBoot Image Resize value
                netBootImageResizeEnteredValue_(me)
                
            else
            
                -- Bound to the Close button on options window
                checkScreenSharingDetails_(me)
        
            end if

        else

            -- Bound to the Close button on options window
            checkScreenSharingDetails_(me)

        end if

    end checkNetBootResizeValue_

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
            log customDesktopImageLabel
            
            -- Update plist with selection
            tell defaults to setObject_forKey_(customDesktopImagePath, "customDesktopImagePath")
        
        end
        
        -- If custom Desktop Image has a value, then check file exists & update error if it does.
        checkDesktopImage_(me)
        
    end selectedDesktopImage_

    -- If custom Desktop Image has a value, then check file exists & update error if it does not.
    on checkDesktopImage_(sender)
        
        -- If a custom desktop is selected
        if customDesktopImagePath is not equal to missing value then
            
            -- reload options from plist
            retrieveDefaults_(me)
            
            try
                
                -- Check for file
                do shell script "ls " & customDesktopImagePath
                
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

    end checkDesktopImage_

----- BUILD PRE-CHECK -----

    -- Check that we have enough space available to proceed
    on checkFreeSpace_(sender)
        
        -- Set netBootCreationSuccessful value, for notifying later
        set my netBootCreationSuccessful to false
        
        -- Reset required space
        set requiredSpace to 30
        
        -- Show Cog on main window
        set my mainWindowCog to true
  
        -- Get path of AutoCasperNBI
        set libraryPath to (path to library folder) as string
 
        -- Get path of users folder
        set userPath to (path to home folder) as string
        
        -- Store delimiters for resetting later
        set applescriptsDelims to AppleScript's text item delimiters
        
        -- Set delimiters to colon
        set AppleScript's text item delimiters to ":"
        
        -- Get Volume Name that AutoCasperNBI resides
        set libraryVolume to text item 1 of libraryPath
        
        -- Get Volume Name that Users home folder resides
        set usersVolume to text item 1 of userPath
        
        -- Reset delimiters
        set AppleScript's text item delimiters to applescriptsDelims

        -- If we're using the same volume for AutoCasperNBI & home folder
        if libraryVolume is equal to usersVolume then
            
            --Log Action
            log "AutoCasperNBI & this users Home folder reside on the same volume. Getting available space on: " & libraryVolume
            
        else
        
            --Log Action
            log "AutoCasperNBI & this users Home folder reside on the different volumes. Getting available space on both " & libraryVolume & " & " & usersVolume
            
            -- Guesstimate, as we write to both the Home folder & OS HD, half required space to make sure we're ok to proceed.
            set requiredSpace to requiredSpace / 2
            
            --Log Action
            log "There is " & requiredSpace & "GB space required on both " & libraryVolume & " & " & usersVolume
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Checking that we have enough free space"
            
            -- Set build Process ProgressBar to indeterminate & animated
            set my buildProccessProgressBarIndeterminate to true
            set my buildProccessProgressBarAniminate to true
            
            delay 0.1
            
            -- Get free space of Users volume
            set freeSpaceUsersVolume to do shell script "diskutil info " & quoted form of usersVolume & " | grep \"Free Space\" | awk '{ print $4}'"
            
        end if
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Checking that we have enough free space"
        
        -- Set build Process ProgressBar to indeterminate & animated
        set my buildProccessProgressBarIndeterminate to true
        set my buildProccessProgressBarAniminate to true
        
        delay 0.1
        
        -- Get free space of App Volume
        set freeSpacelibraryVolume to do shell script "diskutil info " & quoted form of libraryVolume & " | grep \"Free Space\" | awk '{ print $4}'"
        
        considering numeric strings
            
        -- Make sure we have enough space on the App Volume to proceed
        if freeSpacelibraryVolume is less than requiredSpace then
            
            log "There is " & requiredSpace & "GB of space is needed, only " & freeSpacelibraryVolume & "GB free. Cannot proceed."
            
            -- Display error to user
            display dialog "Error: " & requiredSpace & "GB of space is needed, only " & freeSpacelibraryVolume & "GB free. Cannot proceed." with icon 0 buttons {"OK"}
            
            -- Set requiredSpaceCheckPassed based on if we're ok to proceed
            set my requiredSpaceCheckPassed to false
            
            -- close build process window
            showBuildProcessWindow's orderOut_(null)
            
            -- Re-enable main windows buttons
            set my optionWindowEnabled to true
            
        else
        
            --Log Action
            log "There is " & libraryVolume & " has " & freeSpacelibraryVolume & "GB free. " & requiredSpace & "GB is needed, so we're ok to proceed."
            
            -- Set requiredSpaceCheckPassed based on if we're ok to proceed
            set my requiredSpaceCheckPassed to true
            
        end if
        
        end considering
        
        -- Check to freeSpaceUsersVolume has a value
        if freeSpaceUsersVolume is not equal to missing value then
            
            considering numeric strings
                
            -- Make sure we have enough space on the User Volume to proceed
            if freeSpaceUsersVolume is less than requiredSpace then
                
                --Log Action
                log "There is " & requiredSpace & "GB of space is needed, only " & freeSpaceUsersVolume & "GB free. Cannot proceed."
                
                -- Display error to user
                display dialog "Error: " & requiredSpace & "GB of space is needed, only " & freeSpaceUsersVolume & "GB free. Cannot proceed." with icon 0 buttons {"OK"}
                
                -- Set requiredSpaceCheckPassed based on if we're ok to proceed
                set my requiredSpaceCheckPassed to false
                
                -- close build process window
                showBuildProcessWindow's orderOut_(null)
                
                -- Re-enable main windows buttons
                set my optionWindowEnabled to true
                
            else
            
                --Log Action
                log "The volume " & usersVolume & " has " & freeSpaceUsersVolume & "GB free. " & requiredSpace & "GB is needed, so we're ok to proceed."
                
                -- Set requiredSpaceCheckPassed based on if we're ok to proceed
                set my requiredSpaceCheckPassed to true
                
            end if
            
            end considering
            
        end if
        
        -- If we ok to proceed
        if requiredSpaceCheckPassed to true

            -- Check that selected files exist
            checkFiles_(me)
    
        else
        
            -- Reset Main Window Text Field & Cog
            resetMainWindowLabel_(me)

        end if

    end checkFreeSpace_

    -- Check that selected files exist
    on checkFiles_(sender)
        
        -- If a custom desktop is selected
        if customDesktopImagePath is not equal to missing value then
            
            try
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Checking that " & customDesktopImagePath & " exists"
                
                log "Selected Desktop Image: " & customDesktopImagePath
                
                -- Check for file
                do shell script "ls " & customDesktopImagePath
                
                -- True as file exists
                set desktopImageExists to true
                
                -- Update label
                set my customDesktopImageLabel to "Image Selected: " & customDesktopImagePath
                
                -- temp OS.dmg to /tmp
                createTempOSdmgInTmp_(me)

            on error
                
                -- Update label
                set my customDesktopImageLabel to "Cannot Find: " & customDesktopImagePath
                
                display dialog "Cannot Find: " & customDesktopImagePath & ".Do you wish to proceed?" with icon 2 buttons {"No", "Yes"}
                
                -- If user selected no
                if button returned of the result is "No" then
                    
                    --Log Action
                    log "User chose not to proceed as missing Desktop Image"
                    
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                
                else

                    --Log Action
                    log "User chose to proceed with a missing Desktop Image"
                    
                    -- True as file exists
                    set desktopImageExists to false
                    
                    -- temp OS.dmg to /tmp
                    createTempOSdmgInTmp_(me)

                end if

            end try
            
        else
        
            -- temp OS.dmg to /tmp
            createTempOSdmgInTmp_(me)

        end if
        
    end checkDesktopImage_

----- BUILD -----

    -- temp OS.dmg to /tmp
    on createTempOSdmgInTmp_(sender)
        
        -- Set build Process ProgressBar to indeterminate & animated to false
        set my buildProccessProgressBarIndeterminate to false
        set my buildProccessProgressBarAniminate to false
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Making a copy of OS.dmg in /private/tmp/AutoCasperNBI/"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 10
        
        --Log action
        log "Trying to copy to /private/tmp/AutoCasperNBI" & tempUUID
        
        try
            
            -- Make a copy of the OS.dmg in /tmp
            do shell script "ditto -rsrc " & quoted form of selectedOSdmgPath & " /private/tmp/AutoCasperNBI/" & tempUUID with administrator privileges

            
            --Log Action
            log "Temp OS.dmg successfully copied to: /private/tmp/AutoCasperNBI/" & tempUUID
            
            -- Mount copied OS.dmg
            mounttempOSDMG_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Cannot copy " & selectedOSdmgPath with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end createTempOSdmgInTmp_

    -- Mount copied OS.dmg
    on mountTempOSDMG_(sender)
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Mounting temp OS.dmg"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 20
        
        try

            --Log Action
            log "Trying to mount: /private/tmp/AutoCasperNBI/" & tempUUID
            
            --  Mount temp 0S.dmg
            set selectedTempOSdmgMountPath to do shell script "hdiutil attach /private/tmp/AutoCasperNBI/" & tempUUID & " -nobrowse -owners on -shadow | grep \"Volumes\" | awk '{print substr($0, index($0,$3))}' " as quoted form
            
            --Log Action
            log "Mounted to: " & selectedTempOSdmgMountPath
            
            -- Reduce NetBoot Image if ticked
            reduceNetBootImage_(me)

        on error
        
            -- Display error to user
            display dialog "Error: Cannot mount temp OS.dmg" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end mountTempOSDMG_

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
                set my buildProccessProgressBar to 30
                
                ---- Applications ----
                --Log Action
                log "Trying to delete Applications from: " & selectedTempOSdmgMountPath & "/Applications/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting unwanted Applications from: " & selectedTempOSdmgMountPath
                
                delay 0.1
                
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of selectedTempOSdmgMountPath & "/Applications/* -maxdepth 0 -not -path \"*Launchpad.app*\" -not -path \"*Safari.app*\" -not -path \"*System Preferences.app*\" -not -path \"*TextEdit.app*\"  -not -path \"*Utilities*\" -exec rm -rf {} \\;" with administrator privileges

                
                --Log Action
                log "Deleted Applications from: " & selectedTempOSdmgMountPath & "/Applications/"
                
                ---- Utilities ----
                --Log Action
                log "Trying to delete Utilities from: " & selectedTempOSdmgMountPath & "/Applications/Utilities/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting unwanted Utilities from: " & selectedTempOSdmgMountPath
                
                delay 0.1

                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of selectedTempOSdmgMountPath & "/Applications/Utilities/* -maxdepth 0 -not -path \"*Activity Monitor.app*\" -not -path \"*Console.app*\" -not -path \"*Disk Utility.app*\" -not -path \"*Grab.app*\" -not -path \"*Keychain Access.app*\" -not -path \"*System Information.app*\" -not -path \"*Terminal.app*\" -exec rm -rf {} \\;" with administrator privileges

                
                --Log Action
                log "Deleted Utilities from: " & selectedTempOSdmgMountPath & "/Applications/Utilities/"
                
                ---- PreferencePanes ----
                --Log Action
                log "Trying to delete Preference Panes from: " & selectedTempOSdmgMountPath & "/System/Library/PreferencePanes/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Deleting unwanted PreferencesPanes from: " & selectedTempOSdmgMountPath
                
                delay 0.1
                
                -- Delete all in the location except those that are given below
                do shell script "find " & quoted form of selectedTempOSdmgMountPath & "/System/Library/PreferencePanes/* -maxdepth 0 -not -path \"*DateAndTime.prefPane*\" -not -path \"*Displays.prefPane*\" -not -path \"*Network.prefPane*\" -not -path \"*SharingPref.prefPane*\" -not -path \"*StartupDisk.prefPane*\" -exec rm -rf {} \\;" with administrator privileges

                
                --Log Action
                log "Deleted Preference Panes from: " & selectedTempOSdmgMountPath & "/System/Library/PreferencePanes/"
                
                ---- Directories ----
                --- /Library/ ---
                --Log Action
                log "Trying to empty directories in " & selectedTempOSdmgMountPath & "/Library/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Application Support/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Application\\ Support/*" with administrator privileges
                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Application Support/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Audio/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Audio/*" with administrator privileges

                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Audio/"

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Caches/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Caches/*" with administrator privileges

                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Caches/"

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Desktop Pictures/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Desktop\\ Pictures/*" with administrator privileges

                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Desktop Pictures/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Dictionaries/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Dictionaries/*" with administrator privileges


                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Dictionaries/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Documentation/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Documentation/*" with administrator privileges


                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Documentation/"

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Fonts/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Fonts/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Fonts/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Modem Scripts/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Modem\\ Scripts/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Modem Scripts/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & " /Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/Library/Screen\\ Savers/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/Library/Screen Savers/"
                
                --Log Action
                log "Successfully emptied targeted directories in " & selectedTempOSdmgMountPath & "/Library/"
                
                --- /System/Library/ ---
                --Log Action
                log "Trying to empty targeted directories in " & selectedTempOSdmgMountPath & "/System/Library/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Address Book Plug-Ins/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Address\\ Book\\ Plug-Ins/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Address Book Plug-Ins/"

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Automator/"

                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Automator/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Automator/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Caches/"
                
                delay 0.1

                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Caches/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Caches/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Compositions/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Compositions/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Compositions/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Printers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Printers/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Printers/"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Screen Savers/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Screen\\ Savers/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Screen Savers/"
                
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Emptying " & selectedTempOSdmgMountPath & "/System/Library/Speech/"
                
                delay 0.1
                
                -- Empty the below folder
                do shell script "rm -rf " & quoted form of selectedTempOSdmgMountPath & "/System/Library/Speech/*" with administrator privileges

                
                --Log Action
                log "Emptied " & selectedTempOSdmgMountPath & "/System/Library/Speech/"
                
                --Log Action
                log "Successfully emptied targeted directories in " & selectedTempOSdmgMountPath & "/System/Library/"

                -- Reduce Kernel cache if we're on 10.9.0 - .3
                reduceKernelCache_(me)
                
            else
            
                log "NetBoot reduction not enabled. Skipping..."
                
                -- Reduce Kernel cache if we're on 10.9.0 - .3
                reduceKernelCache_(me)
                
            end if
        
        on error
        
            -- Display error to user
            display dialog "Error: Deleting files" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end reduceNetBootImage_

    -- Reduce Kernel cache if we're on 10.9.0 - .3
    on reduceKernelCache_(sender)
        
            try
                
                -- Set hostMacOSVersion to numeric string to compare
                considering numeric strings
                    
                    -- If we're running on 10.9.0 - .3 then reduce kernel cache
                    if hostMacOSVersion is greater than "10.8.9" and hostMacOSVersion is less than "10.9.4" then
                
                            -- Update Build Process Window's Text Field
                            set my buildProcessTextField to "Deleting extensions to reduce kernel cache size"
                            
                            delay 0.1
                            
                            -- Update build Process ProgressBar
                            set my buildProccessProgressBar to 40
                            
                            -- Set variableVariable to location of /System/Library/Extensions/
                            set variableVariable to pathToResources & "/System/Library/Extensions/AMD*"
                            
                            --Log Action
                            log "Trying to delete " & variableVariable
                            
                            -- Delete extesntions
                            do shell script "rm -rf " & quoted form of variableVariable with administrator privileges

                            
                            --Log Action
                            log "Deleted " & variableVariable

                            -- Set variableVariable to location of /System/Library/Extensions/
                            set variableVariable to pathToResources & "/System/Library/Extensions/ATI*"
                            
                            --Log Action
                            log "Trying to delete " & variableVariable
                            
                            -- Delete extesntions
                            do shell script "rm -rf " & quoted form of variableVariable with administrator privileges

                            
                            --Log Action
                            log "Deleted " & variableVariable
                            
                            -- Set variableVariable to location of /System/Library/Extensions/
                            set variableVariable to pathToResources & "/System/Library/Extensions/ATTO*"
                            
                            --Log Action
                            log "Trying to delete " & variableVariable
                            
                            -- Delete extesntions
                            do shell script "rm -rf " & quoted form of variableVariable with administrator privileges

                            
                            --Log Action
                            log "Deleted " & variableVariable
                            
                            -- Install rc.netboot.pkg
                            installRCNetboot_(me)
                    
                    else
                            
                            --Log Action
                            log "Skipping extension deleting as not needed on this OS"
                            
                            -- Install rc.netboot.pkg
                            installRCNetboot_(me)
                            
                            
                    end if
                    
            end considering
                    
            on error
            
                -- Display error to user
                display dialog "Error: Deleting extensions" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            end try
        
    end reduceKernelCache_

    -- Install rc.netboot.pkg
    on installRCNetboot_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing modified rc.netboot file"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 50
            
            --Log Action
            log "Trying to install rc.netboot.pkg"
            
            -- Set variableVariable to location of rc.netboot.pkg
            set variableVariable to pathToResources & "/rc.netboot.pkg"
            
            -- Install rc.netboot.pkg from rescources
            do shell script "installer -pkg " & quoted form of variableVariable & " -target " & quoted form of selectedTempOSdmgMountPath with administrator privileges

            
            --Log Action
            log "rc.netboot.pkg installed successfully"
            
            -- Install AutoCasperNBIStartup.pkg
            installAutoCasperNBIStartup_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Installing modified rc.netboot file" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end installRCNetboot_

    -- Install AutoCasperNBIStartup.pkg
    on installAutoCasperNBIStartup_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing AutoCasperNBI LaunchDaemon & required files"
            
            delay 0.1
            
            --Log Action
            log "Trying to install AutoCasperNBIStartup.pkg"
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 60
            
            -- Set variableVariable to location of AutoCasperNBILaunchDaemon.pkg
            set variableVariable to pathToResources & "/AutoCasperNBIStartup.pkg"
            
            -- Install CasperImagingLaunchAgent.pkg from rescources
            do shell script "installer -pkg " & quoted form of variableVariable & " -target " & quoted form of selectedTempOSdmgMountPath with administrator privileges

            
            --Log Action
            log "AutoCasperNBIStartup.pkg installed successfully"
            
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
        
        try
            
            --Log Action
            log "Trying to install Root user via pkg"
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Installing Root User via pkg"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 70
            
            -- Set variableVariable to location to location of RootUser.pkg
            set variableVariable to pathToResources & "/RootUser.pkg"
            
            -- Install RootUser.pkg from rescources
            do shell script "installer -pkg " & quoted form of variableVariable & " -target " & quoted form of selectedTempOSdmgMountPath with administrator privileges

            
            --Log Action
            log "Root user installed via pkg"
            
            -- Set Desktop Image to selected
            copyDesktopImage_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Installing Root User" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end installRootUserpkg_

    -- Set Desktop Image to selected
    on copyDesktopImage_(sender)
        
        -- If we have a desktop selected & we can found it
        if desktopImageExists is true
        
            try
                
                --Log Action
                log "Trying to copy Desktop Image"
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Copying Desktop Image"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 80
                
                -- Set variableVariable to path of DefaultDesktop.jpg
                set variableVariable to selectedTempOSdmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                --Log Action
                log "Deleting " & selectedTempOSdmgMountPath & "/System/Library/CoreServices/DefaultDesktop.jpg"
                
                -- Remove DefaultDesktop.jpg's symbolic link
                do shell script "unlink " & quoted form of variableVariable with administrator privileges

                
                --Log Action
                log "Trying to copy " & customDesktopImagePath & " to " & variableVariable
                
                -- Copy selected image
                do shell script "cp -r " & customDesktopImagePath & " " & quoted form of variableVariable with administrator privileges

                
                -- Correct ownership
                do shell script "chown root:wheel " & quoted form of variableVariable with administrator privileges

                
                --Log Action
                log "Set ownership to root:wheel on " & variableVariable
                
                -- Correct permissions
                do shell script "chmod 755 " & quoted form of variableVariable with administrator privileges

                
                --Log Action
                log "Set permissions to 755 on " & variableVariable
                
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
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Copying Casper Imaging.app"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 90
        
        -- Cut the trailing /
        set selectedAppPathToCopy to do shell script "echo " & quoted form of selectedAppPath & " | rev | cut -c 2- | rev"
        
        --Log Action
        log "Casper Imaging.app to copy resides " & selectedAppPathToCopy
        
        -- Copy location for Casper Imaging.app
        set variableVariable to selectedTempOSdmgMountPath & "/Applications/"
        
        -- Copy path of Casper Imaging.app
        set copiedAppPath to selectedTempOSdmgMountPath & "/Applications/Casper Imaging.app"

        --Log Action
        log "Casper Imaging.app to be copied to " & copiedAppPath
        
        try
            
            -- Copy Casper Imaging.app & log
            do shell script "cp -r " & quoted form of selectedAppPathToCopy & " " & quoted form of variableVariable with administrator privileges

            
            --Log action
            log "Copied " & selectedAppPath & " to " & variableVariable
        
            -- Correct ownership on copied Casper Imaging.app
            do shell script "chown -R root:wheel " & quoted form of copiedAppPath with administrator privileges

            
            --Log Action
            log "Set ownership to root:wheel on " & copiedAppPath
            
            -- Correct permissions on copied Casper Imaging.app
            do shell script "chmod -R 755 " & quoted form of copiedAppPath with administrator privileges

            
            --Log Action
            log "Set permissions to 755 on " & copiedAppPath
            
            -- Try as errors if not found (i think)
            try
                
                -- Delete Quaratine flag
                do shell script "xattr -d com.apple.quarantine " & quoted form of copiedAppPath with administrator privileges

                
                --Log Action
                log "Quarantine flag removed from " & copiedAppPath
            
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
        
        -- Update Build Process Window's Text Field
        set my buildProcessTextField to "Writing Casper Imaging plist"
        
        delay 0.1
        
        -- Update build Process ProgressBar
        set my buildProccessProgressBar to 100
        
        try
            
            -- JSS Plist location on mounted volume
            set variableVariable to selectedTempOSdmgMountPath & "/private/var/root/Library/Preferences/com.jamfsoftware.jss.plist"
            
            -- Write Casper Imaging plist to allow invalid cert,
            do shell script "defaults write " & quoted form of variableVariable & " allowInvalidCertificate -bool true" with administrator privileges

            
            -- Log Action
            log "com.jamfsoftware.jss.plist created & allow invalid certificate set"
            
                -- If a JSS URL is specified
                if jssURL is not equal missing value
                
                    -- Write JSS URL to plist,
                    do shell script "defaults write " & quoted form of variableVariable & " url -string " & jssURL with administrator privileges

                    
                    --Log Action
                    log "plist updated with JSS url"
            
            end if

            -- Correct ownership
            do shell script "chown -R root:wheel " & quoted form of variableVariable with administrator privileges


            --Log Action
            log "Set ownership to root:wheel on " & variableVariable

            -- Correct permissions
            do shell script "chmod -R 700 " & quoted form of variableVariable with administrator privileges


            --Log Action
            log "Set permissions to 700 on " & variableVariable
            
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
            set my buildProccessProgressBar to 110
            
            --Log Action
            log "Trying to install Casper Imaging LaunchAgent via pkg"
            
            -- Set variableVariable to location to location of CasperImagingLaunchAgent.pkg
            set variableVariable to pathToResources & "/CasperImagingLaunchAgent.pkg"
            
            -- Install CasperImagingLaunchAgent.pkg from rescources
            do shell script "installer -pkg " & quoted form of variableVariable & " -target " & quoted form of selectedTempOSdmgMountPath with administrator privileges

            
            --Log Action
            log "Casper Imaging LaunchAgent plist installed via pkg"
            
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
            set my buildProccessProgressBar to 120
            
            -- Application Support location on TempOSdmg for installing at boot
            set variableVariable to selectedTempOSdmgMountPath & "/Library/Application Support/AutoCasperNBI/Certificates/"
            
            -- Log Action
            log "Downloading JSS CA Cert for " & jssURL
            
            -- Download CA Cert from JSS to /private/tmp/AutoCasperNBI/
            do shell script "curl -k -o /private/tmp/AutoCasperNBI/" & tempUUID & ".cer " & jssURL & "/CA/SCEP?operation=getcacert" with administrator privileges

            
            -- Log Action
            log "Copying JSS CA Cert to " & variableVariable
            
            -- Copy to Temp OS dmg for import at startup
            do shell script "cp -r /private/tmp/AutoCasperNBI/" & tempUUID & ".cer " & quoted form of variableVariable with administrator privileges

            
            -- Log Action
            log "JSS CA Cert downloaded to " & variableVariable
            
            -- Bypass the various setup assistants so we're logging in uninterrupted
            bypassSetupAssistants_(me)
            
        on error
        
            -- Display error to user
            display dialog "Error: Importing JSS CA Cert" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
        else
        
            -- Bypass the various setup assistants so we're logging in uninterrupted
            bypassSetupAssistants_(me)
        
        end if

    end importJSSCACert_

    -- Bypass the various setup assistants so we're logging in uninterrupted
    on bypassSetupAssistants_(sender)
        
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Bypassing Setup Assistants"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 130
            
            -- Set variableVariable to location to write .AppleSetupDone
            set variableVariable to selectedTempOSdmgMountPath & "/var/db/.AppleSetupDone"
            
        ---- .AppleSetupDone ----
            
            -- Write .AppleSetupDone file
            do shell script "touch " & quoted form of variableVariable with administrator privileges

            
            --Log Action
            log ".AppleSetupDone written to " & variableVariable
        
            -- Correct ownership
            do shell script "chown -R root:wheel " & quoted form of variableVariable with administrator privileges

            
            --Log Action
            log "Set ownership to root:wheel on " & variableVariable
            
            -- Correct permissions
            do shell script "chmod -R 644 " & quoted form of variableVariable with administrator privileges

            
            --Log Action
            log "Set permissions to 644 on " & variableVariable
            
        ---- com.apple.SetupAssistant----
            
            -- com.apple.SetupAssistant Plist location on mounted volume
            set variableVariable to selectedTempOSdmgMountPath & "/private/var/root/Library/Preferences/com.apple.SetupAssistant.plist"
            
            -- Write DidSeeCloudSetup to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of variableVariable & " DidSeeCloudSetup -bool TRUE" with administrator privileges

            
            -- Write GestureMovieSeen to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of variableVariable & " GestureMovieSeen none" with administrator privileges

            
            -- Write LastSeenCloudProductVersion to com.apple.SetupAssistant
            do shell script "defaults write " & quoted form of variableVariable & " LastSeenCloudProductVersion " & selectedOSdmgVersion  with administrator privileges

            
            --Log Action
            log "Bypass options written to " & variableVariable
            
            -- Correct ownership
            do shell script "chown -R root:wheel " & quoted form of variableVariable with administrator privileges


            --Log Action
            log "Set ownership to root:wheel on " & variableVariable

            -- Correct permissions
            do shell script "chmod -R 700 " & quoted form of variableVariable with administrator privileges


            --Log Action
            log "Set permissions to 700 on " & variableVariable
            
            -- com.apple.SetupAssistant Plist location on mounted volume
            set variableVariable to selectedTempOSdmgMountPath & "/System/Library/CoreServices/Setup Assistant.app/Contents/SharedSupport/MiniLauncher"
            
            -- Delete the MiniLauncher
            do shell script "rm -rf " & quoted form of variableVariable with administrator privileges

            
            --Log Action
            log "Deleted MiniLauncher"
            
            -- Delete the file delet /Library/Preferences/com.apple.dockfixup.plist
            deleteDockFixUp_(me)

        on error
        
            -- Display error to user
            display dialog "Error: Bypassing Setup Assistants" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end bypassSetupAssistants_

    -- Delete the file delet /Library/Preferences/com.apple.dockfixup.plist
    on deleteDockFixUp_(sender)
        
        try
            
            -- Set variableVariable to location to write .AppleSetupDone
            set variableVariable to selectedTempOSdmgMountPath & "/Library/Preferences/com.apple.dockfixup.plist"
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Deleting com.apple.dockfixup.plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 140
            
            do shell script "rm -rf " & quoted form of variableVariable with administrator privileges

            --Log Action
            log "Deleted " & variableVariable
            
            -- Create the ARD user
            createARDUser_(me)
            
        on error
            
            -- Display error to user
            display dialog "Error: Deleting /Library/Preferences/com.apple.dockfixup.plist" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
        end try
        
    end deleteDockFixUp_
            
            
    -- Create the ARD user
    on createARDUser_(sender)

        -- If ARD option has been enabled
        if ardEnabled is equal to true then
                
            try
                    
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating ARD User"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 150
                
                -- JSS Plist location on mounted volume
                set variableVariable to selectedTempOSdmgMountPath & "/Library/Application Support/AutoCasperNBI/ScreenSharing/ARDUser.plist"
                
                -- Encode ardUsername
                set ardUsernameEncoded to do shell script "echo " & ardUsername & " | openssl base64 "
                
                --Log Action
                log "ARD Username encoded"
                
                -- Write encoded ARD Username to plist
                do shell script "defaults write " & quoted form of variableVariable & " ARDUsername "  & ardUsernameEncoded  with administrator privileges
                
                --Log Action
                log "Written ARD Username to " & variableVariable
                
                -- Encode ardPassword
                set ardPasswordEncoded to do shell script "echo " & ardPassword & " | openssl base64 "
                
                --Log Action
                log "ARD Password encoded"

                -- Write encoded ARD Password to plist
                do shell script "defaults write " & quoted form of variableVariable & " ARDPassword "  & ardPasswordEncoded  with administrator privileges

                --Log Action
                log "Written ARD Password to " & variableVariable

                -- Correct ownership on copied com.apple.PowerManagement.plist
                do shell script "chown -R root:wheel " & quoted form of variableVariable with administrator privileges


                --Log Action
                log "Set ownership to root:wheel on " & quoted form of variableVariable

                -- Correct permissions on copied Casper Imaging.app
                do shell script "chmod -R 755 " & quoted form of variableVariable with administrator privileges


                --Log Action
                log "Set permissions to 755 on " & quoted form of variableVariable
                
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
            log "Skipping creation of ARD user as ARD not enabled"
        
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
                set my buildProcessTextField to "Writing VNC password to " & variableVariable
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 160
                
                -- Set variableVariable to location of com.apple.VNCSettings.txt
                set variableVariable to selectedTempOSdmgMountPath & "/Library/Preferences/com.apple.VNCSettings.txt"
                
                --Log Action
                log "Trying to write VNC password to " & variableVariable
                
                -- Write hashed vncPassword to /Library/Preferences/com.apple.VNCSettings.txt on .nbi
                do shell script "echo " & vncPassword & " | perl -we 'BEGIN { @k = unpack \"C*\", pack \"H*\", \"1734516E8BA8C5E2FF1C39567390ADCA\"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack \"C*\", $_; foreach (@k) { printf \"%02X\", $_ ^ (shift @p || 0) }; print \"
                \"' | sudo tee " & quoted form of variableVariable with administrator privileges
                
                --Log Action
                log "VNC password written to " & variableVariable
                
                -- Correct Ownership
                do shell script "chown root:wheel " & quoted form of variableVariable with administrator privileges
                
                --Log Action
                log "Set ownership to root:wheel on " & variableVariable
                
                -- Correct Permissions
                do shell script "chmod 400 " & quoted form of variableVariable with administrator privileges

                --Log Action
                log "Set permissions to 400 on " & variableVariable
                
                -- The bit we've all been waiting for
                createNetboot_(me)
                
                on error
                
                    -- Display error to user
                    display dialog "Error: Wrting VNC Settings" with icon 0 buttons {"OK"}
                
                    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                    tidyUpTimeKids_(me)
                
                end try
                
            -- If VNC option has not been enabled
            else
                
                --Log Action
                log "Skipping writing VNC password as VNC option not enabled"
                
                -- The bit we've all been waiting for
                createNetboot_(me)
                
            end if
            
    end enableVNC_

    -- The bit we've all been waiting for
    on createNetboot_(sender)
        
        -- Set netBootNameTextField's variable to text
        set my netBootNameTextField to my netBootNameTextField as text
            
            try
                
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Creating NetBoot"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 170
                
                --Log Action
                log "Trying to create NBI of " & selectedTempOSdmgMountPath
                
                -- Create NBI using imagetool
                set netBootCreatedPath to do shell script "/System/Library/CoreServices/System\\ Image\\ Utility.app/Contents/MacOS/imagetool --netboot --destination ~/Desktop/" & quoted form of netBootNameTextField & " --source " & quoted form of selectedTempOSdmgMountPath & " --name " & quoted form of netBootNameTextField & " --index " & netBootImageIndexTextField & "| grep \"Successfully\" | awk '{print substr($0, index($0,$3))}' " with administrator privileges
                
                -- Log Action
                log "NetBoot created & can be found at " & netBootCreatedPath
                
                -- Updates NBImageInfo.plist
                setNetbootImageOptions_(me)
                
            on error
            
                log "Trying " & quoted form of netBootNameTextField
            
                -- Display error to user
                display dialog "Error: Creating NetBoot" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
            
            end try
        
    end createNetboot_

    -- Updates NBImageInfo.plist
    on setNetbootImageOptions_(sender)
        
        try
            ---- Make NBImageInfo.plist writable ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Changing permissions on NBImageInfo.plist"
            
            delay 0.1
            
            -- Update build Process ProgressBar
            set my buildProccessProgressBar to 180
            
            -- Set variableVariable to location to write NetBoot Values
            set variableVariable to netBootCreatedPath & "/NBImageInfo.plist"

            --Log Action
            log "Trying to change permissions on " & variableVariable
            
            -- Making NBImageInfo.plist writable
            do shell script "chmod 777 " & variableVariable with administrator privileges

            
            --Log Action
            log "Set permissons on " & variableVariable & " to 777"
            
            ---- Description----
            -- If we're looking to set a description for this .nbi
            if netBootDescriptionEnabled is true
            
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting .nbi to Description"

                delay 0.1

                --Log Action
                log "Trying to set .nbi to Description"

                log netBootDescription

                -- Set NetBoot to Diskless
                do shell script "defaults write " & variableVariable & " Description -string " & quoted form of netBootDescription with administrator privileges


                --Log Action
                log "Set .nbi to Description"
                

           end if
        
            ---- Diskless ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting .nbi to Diskless"
            
            delay 0.1
            
            --Log Action
            log "Trying to set .nbi to Diskless"
            
            -- Set NetBoot to Diskless
            do shell script "defaults write " & variableVariable & " SupportsDiskless -bool YES" with administrator privileges

            
            --Log Action
            log "Set .nbi to Diskless"
            
            ---- Serve Over ---
            --Log Action
            log "Setting .nbi's serve over option"
            
            -- If NetBoot Serve Over NFS to true
            if netBootServeOverNFS is true
            
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting .nbi to being served over NFS"
            
                delay 0.1
                
                --Log Action
                log "Trying to set .nbi to being served over NFS"
                
                -- Set NetBoot Serve over NFS
                do shell script "defaults write " & variableVariable & " Type -string NFS" with administrator privileges

                
                --Log Action
                log "Set .nbi to being served over NFS"
                
            else
            
                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Setting .nbi to being served over HTTP"
            
                delay 0.1
                
                --Log Action
                log "Trying to set .nbi to being served over HTTP"
            
                -- Set NetBoot Serve over HTTP
                do shell script "defaults write " & variableVariable & " Type -string HTTP" with administrator privileges

                
                --Log Action
                log "Set .nbi to being served over NFS"
                
            end if
        
            ---- Enabled ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Setting .nbi to Enabled"
            
            delay 0.1
            
            --Log Action
            log "Trying to set .nbi to Enabled"
            
            -- Set NetBoot to Diskless
            do shell script "defaults write " & variableVariable & " IsEnabled -bool YES" with administrator privileges

            
            --Log Action
            log "Set .nbi to Enabled"
            
            ---- Fix Plist ----
            -- Correct ownership
            do shell script "chown -R root:wheel " & variableVariable with administrator privileges

            
            --Log Action
            log "Set ownership to root:wheel on " & variableVariable
            
            -- Correct permissions
            do shell script "chmod -R 755 " & variableVariable with administrator privileges

            
            --Log Action
            log "Set permissions to 755 on " & variableVariable
            
            ---- Revert NBImageInfo.plist permissionchanges ----
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Changing permissions on NBImageInfo.plist"

            delay 0.1

            --Log Action
            log "Trying to correct permissions on " & variableVariable

            -- Making NBImageInfo.plist writable
            do shell script "chmod 644 " & variableVariable with administrator privileges


            --Log Action
            log "Set permissons on " & variableVariable & " to 644"

            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to true

            -- Resize NetBoot Image
           resizeNetBootImage_(me)

        on error
            
            -- Display error to user
            display dialog "Error: Writing NetBoot Options" with icon 0 buttons {"OK"}
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)
            
            
        end try
        
    end setNetbootImageOptions_

    -- Resize NetBoot Image
    on resizeNetBootImage_(sedner)
        
        -- Set to boolean of value
        set netBootImageResizeEnabled to netBootImageResizeEnabled as boolean
        
        -- If we're resizing the NetBoot Image
        if netBootImageResizeEnabled is true then
            
            try

                -- Update Build Process Window's Text Field
                set my buildProcessTextField to "Resizing NetBoot Image by " & netBootImageResizeValue & "GB"
                
                delay 0.1
                
                -- Update build Process ProgressBar
                set my buildProccessProgressBar to 190
                
                -- Set variableVariable to location to write NetBoot Values
                set variableVariable to netBootCreatedPath & "/NetBoot.dmg"
                
                --Log Action
                log "Trying to resize " & variableVariable & " to around " & netBootImageResizeValue & "GB"
                
                -- Resize NetBoot.dmg to value given
                do shell script "hdiutil resize -size " & netBootImageResizeValue & "g " & variableVariable with administrator privileges

                
                --Log Action
                log "Sucessfully resized " & variableVariable
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
            on error
                
                -- Display error to user
                display dialog "Error: Resizing NetBoot.dmg" with icon 0 buttons {"OK"}
                
                -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
                tidyUpTimeKids_(me)
                
                -- Set netBootCreationSuccessful value, for notifying later
                set my netBootCreationSuccessful to false
                
            end try
        
        else
        
            --Log Action
            log "Skipping resizing NetBoot as not selected"
            
            -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
            tidyUpTimeKids_(me)

        end if

    end resizeNetBootImage_

    -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
    on tidyUpTimeKids_(sender)
      
      ---- Unmount OS.dmg ----
        try
              
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Detaching " & selectedOSdmgMountPath
            
            -- Set build Process ProgressBar to indeterminate & animated
            set my buildProccessProgressBarIndeterminate to true
            set my buildProccessProgressBarAniminate to true
            
            delay 0.1
        
            --Log Action
            log "Trying to detach " & selectedOSdmgMountPath
            
            -- Detach Volume
            do shell script "hdiutil detach " & quoted form of selectedOSdmgMountPath & " -force"
            
        end try
      
      ---- Unmount Temp OS.dmg ----
        try
          
          -- Update Build Process Window's Text Field
          set my buildProcessTextField to "Detaching " & selectedTempOSdmgMountPath
          
          delay 0.1
          
          --Log Action
          log "Trying to detach " & selectedTempOSdmgMountPath
          
          -- Detach Volume
          do shell script "hdiutil detach " & quoted form of selectedTempOSdmgMountPath & " -force"
          
        end try

      ---- Empty /private/tmp/AutoCasperNBI/ ----
        try
            
            -- Update Build Process Window's Text Field
            set my buildProcessTextField to "Emptying /private/tmp/AutoCasperNBI/"
            
            delay 0.1
            
            --Log Action
            log "Trying to empty /private/tmp/AutoCasperNBI/"
            
            -- Detach Volume
            do shell script "rm -rf /private/tmp/AutoCasperNBI/*"
            
        end try
        
        -- Reset Main Window Text Field & Cog
        resetMainWindowLabel_(me)
        
        -- close build process window
        showBuildProcessWindow's orderOut_(null)
        
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
        
            -- Notify on completion
            display dialog "NetBoot successfully created at the following location:" & return & return & netBootCreatedPath with icon 1 buttons {"OK"}
            
            --Log Action
            log "NetBoot successfully created at the following location " & netBootCreatedPath
            
            -- Set netBootCreationSuccessful value, for notifying later
            set my netBootCreationSuccessful to false
        
        end if
        
    end weDitIt_

    -- Insert code here to initialize your application before any files are opened
	on applicationWillFinishLaunching_(aNotification)
        
        -- Get OS of host mac & user running the app
        getOSandUsername_(me)
        
        -- populate plist file with defaults (will not overwrite non-default settings))
        regDefaults_(me)
        
        -- retrieve plist values
        retrieveDefaults_(me)
        
        -- check for passwords, enable check boxes if found in plist
        checkPasswords_(me)
        
        checkDesktopImage_(me)
        
	end applicationWillFinishLaunching_
	
    -- Insert code here to do any housekeeping before your application quits
	on applicationShouldTerminate_(sender)
        
        -- Detach mounted volumes & empty /private/tmp/AutoCasperNBI/
        tidyUpTimeKids_(me)
        
        -- Terminate App
		return current application's NSTerminateNow
        
	end applicationShouldTerminate_
	
end script