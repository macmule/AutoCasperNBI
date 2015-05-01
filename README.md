
<b>MORE INFORMATION</b>

<url>https://macmule.com/AutoCasperNBI</url>

<b>KNOWN ISSUES</b>
 Yosemite DMGs are around 1GB larger than 10.7-10.9

<b>VERSIONS</b>

**1.2.0

Contains fixes from pre-releases 1.1.5 - 1.1.8, many thanks for those of you whom tested those for me.

--	Completely disable Spotlight [#48](https://github.com/macmule/AutoCasperNBI/issues/48 "Completely disable Spotlight")
--	Correct Progress Bar logging [#47](https://github.com/macmule/AutoCasperNBI/issues/47 "Correct Progress Bar logging")
--	Unsigned Kernel Extensions error when creating 10.9 NBI on 10.10 [#46](https://github.com/macmule/AutoCasperNBI/issues/46 "Unsigned Kernel Extensions error when creating 10.9 NBI on 10.10")
--	Add more buttons to success/error window [#45](https://github.com/macmule/AutoCasperNBI/issues/45 "Add more buttons to success/error window")
--	Options greyed out when Imaging.app selected before OS.dmg [#43](https://github.com/macmule/AutoCasperNBI/issues/43 "Options greyed out when Imaging.app selected before OS.dmg")
--	Hidden content in success popup [#42](https://github.com/macmule/AutoCasperNBI/issues/42 "Hidden content in success popup")
--	Replace inputLayoutID with XIB's Tag ID (Again, thanks Frogor) [#31](https://github.com/macmule/AutoCasperNBI/issues/31 "Replace inputLayoutID with XIB's Tag ID")
--	Sort out the bloody progress bar, proper like! [#32](https://github.com/macmule/AutoCasperNBI/issues/32 "Sort out the bloody progress bar, proper like!")
--	JSS URL not written to plist in 1.1.6 [#38](https://github.com/macmule/AutoCasperNBI/issues/38 "JSS URL not written to plist in 1.1.6")
--	1.1.6 Permissions incorrect on NBImage.plist post NetSUS DMG amendment [#39](https://github.com/macmule/AutoCasperNBI/issues/39 "1.1.6 Permissions incorrect on NBImage.plist post NetSUS DMG amendment")
--	Correct typo in proccess variables [#40](https://github.com/macmule/AutoCasperNBI/issues/40 "Correct typo in proccess variables")
--	Add refresh button for JSS URL [#41](https://github.com/macmule/AutoCasperNBI/issues/41 "Add refresh button for JSS URL")
--	Removed Setup Assistant.app to stop Diagnostics Prompt. [#37](https://github.com/macmule/AutoCasperNBI/issues/37 "Diagnostics setup assistant showing on 10.10")
--	Changed mount points to plist (thanks Frogor!!)
--	Moved free space & total size calculations to bytes via plist of diskutil info, which should resolve a few issues.
--	Amended size calculation as moved to sparse image requires 1/3 less space in some situations.
--	Removed 1k of un-needed code [#30](https://github.com/macmule/AutoCasperNBI/issues/30 "So much un-unused Code.. me thinks it's time to delete!")
--	Fixed behaviour when cancelling build. [#36](https://github.com/macmule/AutoCasperNBI/issues/36 "Re-enable build buttons when trying to build & out of space")
--	Renamed "Read-Only DMG" to "Restorable DMG" in GUI & logs, kept old key in plist for compatibility.
--	Corrected OS Version variable, so should behave correctly.
--	Enhancement: Reduce DMG size further by using .sparseimage [#4](https://github.com/macmule/AutoCasperNBI/issues/4 "Enhancement: Reduce DMG size further by using .sparseimage")
--	Enhancement: Check for updates before creds [#10](https://github.com/macmule/AutoCasperNBI/issues/10 "Enhancement: Check for updates before creds")
--	Enable Disk Utilities debug mode [#13](https://github.com/macmule/AutoCasperNBI/issues/13 "Enable Disk Utilities debug mode")
--	NetBoot Image Description does not get written to NBImageInfo.plist [#15](https://github.com/macmule/AutoCasperNBI/issues/15 "NetBoot Image Description does not get written to NBImageInfo.plist")
--	10.9.x NBI created in 10.10.x won't boot [#16](https://github.com/macmule/AutoCasperNBI/issues/16 "10.9.x NBI created in 10.10.x won't boot")
--	Put Casper Imaging into Debug mode [#17](https://github.com/macmule/AutoCasperNBI/issues/17 "Put Casper Imaging into Debug mode")
--	AutoCasperNBI reading MB as GB when calculating space [#18](https://github.com/macmule/AutoCasperNBI/issues/18 "AutoCasperNBI reading MB as GB when calculating space")
--	Correct typo in TimeMachine ToolTip [#19](https://github.com/macmule/AutoCasperNBI/issues/19 "Correct typo in TimeMachine ToolTip")
--	Change Add Packages/Certs to remember last location & not always change. [#20](https://github.com/macmule/AutoCasperNBI/issues/20 "Change Add Packages/Certs to remember last location & not always change.")
--	"Cannot Read OS Version" from Composer captured OS.dmg's [#22](https://github.com/macmule/AutoCasperNBI/issues/22 ""Cannot Read OS Version" from Composer captured OS.dmg's")
--	Add timeout for JSS URL [#23](https://github.com/macmule/AutoCasperNBI/issues/23 "Add timeout for JSS URL")
--	Automatically Compact NetBoot Image [#24](https://github.com/macmule/AutoCasperNBI/issues/24 "Automatically Compact NetBoot Image")--   Automatically Expand Image [#25](https://github.com/macmule/AutoCasperNBI/issues/25 "Automatically Expand Image")
--	Update Icons for JSS 9.5 [#26](https://github.com/macmule/AutoCasperNBI/issues/26 "Update Icons for JSS 9.5")
--	Remove status blobs [#27](https://github.com/macmule/AutoCasperNBI/issues/27 "Remove status blobs")
--	Detail everything in "Always Set" section [#28](https://github.com/macmule/AutoCasperNBI/issues/28 "Detail everything in "Always Set" section")
--	Move to GitHub releases page & big button on [https://macmule.com/AutoCasperNBI](https://macmule.com/AutoCasperNBI) [#29](https://github.com/macmule/AutoCasperNBI/issues/29 "Move to GitHub releases page & big button on https://macmule.com/AutoCasperNBI")
--	With additional PKG's & Cert's don't revert window [#33](https://github.com/macmule/AutoCasperNBI/issues/33 "With additional PKG's & Cert's don't revert window")
--	Some PKG's cannot be added [#34](https://github.com/macmule/AutoCasperNBI/issues/34 "Some PKG's cannot be added ")

**1.1.4
--	Fixes an where changing the NetBoot Image Index field. Results in the error "Maximum Exceeded - Please provide a valid value "https://github.com/macmule/AutoCasperNBI/issues/12"

**1.1.3
--	Fixes an issue where additional PKG’s are only installed if certs are added too.
--	Corrects the Error message when failing during installing Additional PKGs.

**1.1.2
--	Version number structure changed from 1.xx.x to 1.x.xx. In future x.x releases will be major changes, x.x.x will be minor or bug fixes.
--	Added “LastSeenBuddyBuildVersion” to skip diagnostics prompt on 10.10.1 https://github.com/macmule/AutoCasperNBI/issues/8

**1.0.1
--	Fixes an issue with a blank value added to the additionalPKGs array.
--	https://github.com/macmule/AutoCasperNBI/issues/1
--	Fixes the invalid declaration of the additionalCerts array
--	https://github.com/macmule/AutoCasperNBI/issues/5
--	Fixes an issue where ARD password would not be written correctly if
--	some characters are used
--	https://github.com/macmule/AutoCasperNBI/issues/2
--	NBImageInfo.plist is now converted to xml for use on non-OSX NetBoot
--	servers https://github.com/macmule/AutoCasperNBI/issues/3

**1.0
--	Full Yosemite support.
--	Sparkle Updater added.
--	Help menubar item added.
--	Changed all DMG layouts to GPTSPUD.
--	Added checking of JSS URL when opening options window, to stop it being forgot.
--	Icons change if 10.10 DMG selected or run on 10.10.

**0.22-0.24
--	Internal test releases, additions/changes have been included in v1.0's notes.

**0.21
--	Corrected logic when cancelling folder creation
--	Added deletion of /usr/standalone/bootcaches.plist to resolve hang on reboot (@neil.martin83)
--	Corrected NBImageInfo.plist, so it's not restricted by default (@mfcfadmin)

**0.20
--	Corrected an issue where AutoCasperNBI would try re-run (@fritz.schlapbach, @neil.martin83, @willpolley & @mfcfadmin)
--	Changed what's deleted to try & stop the hang when creating a reduced NBI (@neil.martin83)

**0.19
--	Build & Options buttons are no longer disabled after clicking "Build"
--	hdiutil commands verify the volumes being mounted again.
--	kernelcache reduction always happens on 10.9 NBI's.
--	Fixed an issue with creating read-only 10.8.x NBI's & auto login. (The User Templates folder is no longer emptied).
--	Should no longer try to re-run on completion (@neil.martin83 & @willpolley)
--	Size calculations should now correctly get the volume selected to create the NBI on, including FSTAB mounted paths (@neil.martin83)
--	Size calculations now reads terabytes, not just gigabytes (@neil.martin83)
--	Fixed issue with a blank cert value added to the additional certs array (@neil.martin83, @smith.kyle, @MikeF, @mfcfadmin, @boberito)
--	Fixed an issue with ARD not correctly being enabled (@neil.martin83, @Jimmymac641)

**0.18
--	Corrected size calculation, sorry about that.

**0.17
--	New App Icon.
--	Changed status icons to OSX's in built.
--	Now approximately calculates there is enough space needed to create the NBI (including if we're expanding & creating readonly or reduced) errors if not.
--	Serve over options now hidden until OS.dmg & Casper Imaging.app successfully added.
--	Changed order of additional items check, to avoid hang on launching AutoCasperNBI.
--	Resized tableviews, so can scroll to see long paths of additional certs & pkgs.
--	Added pre-check, to alert if any additional certs or pkgs are missing.
--	Moved from installing PKGs for launchagent etc to flat file copy.
--	Amended powermanagement.plist to displaysleep after 3 hours, removed from boot.sh
--	Corrected setting input source for selections with spaces in names. Such as, Swiss German for example. (@fritz.schlapbach)
--	Enabled copy & paste. (@RHammen)
--	Disables screen saver. (@neil.martin83)
--	Disables app nap. (@neil.martin83)
--	On successful build, volumes are now unmounted. (@neil.martin83, @mfcfadmin, @Harsdorff)
--	Always reducing cache now, to help with hang on restart (I hope! 1 more thing to try if not). (@neil.martin83, @mfcfadmin, @smith.kyle & @Zvordauk)
--	Set attaching of OS.dmg to --noverify, to see if this helps in those cases where it's failed. (@smith.kyle, @boberito)
--	Removed check OS version as no longer needed & may have caused false positives erroring as not being able to mount dmg. (@smith.kyle, @boberito)
--	Populates NBIImageInfo.plist's EnabledSystemIdentifiers array, to allow model filtering (@evanmellichampe)

**0.16
--	Enabled adding additional pkgs & certs.
--	Amended kernel cache generation to see try & stop the hang on restart.
--	Changed root user environment back to Apple defaultsish. (Dock is stripped to Finder, Casper Imaging & Trash). Use PKGs to customise

**0.15
--	Round all the sizing! (yep i missed some, should work on non-english macs)
--	Corrected Admin check behaviour
--	Removed a few hundred lines to get over the stack error.
--	Changed behaviour so only build process window is shown during build.
--	Correct the logging so shouldn’t rollover when writing past 00:00 on a day, & will start a new line on launch
--	Corrected an issue when expanding the NetBoot.dmg

**0.14
--	Added touching of /System/Library/Extensions/ to try & resolve hang on reboot
--	Corrected some logging 

**0.13
--	Resolved an issue calculating space on non-English language Macs.
--	Added checkbox for hosting on NetSUS, this removes spaces from the NetBoot’s Name.

**0.12
--	Added OS & Input Language selection
--	Added simple Finder selection
--	Added pre-checks to correctly write to plist when needed.
--	Corrected behaviour when progress window showing so it doesn’t disappear.
--	Added 10.10 NBI creation support (Full 10.10 support to come)
--	Changed root users dock, adding Casper Imaging to it.
--	Changed AutoCasperNBI LaunchDaemon to launch once, to try & resolve issues with hanging on restart

**0.11
--	Can now create 10.7.x NBI’s & run on 10.7.x
--	Amended sequence order

**0.10
--	Changed User Notification dialogs from AppleScript display dialogs to XIBs to stop timeout errors with dialogs
--	Added checkJSSURL function to build-precheck.
--	Added return command completion to a some windows
--	Added complete.aif to play when complete

**0.9
--	Added Time Server & Zone options
--	Added option to create a Read-only dmg which has been imagescanned for ASRing to removable media
--	Added error logging.
--	Removed OS version check so now should be able to create .nbi’s from 10.7+ (have only tested 10.8.x & 10.9.x)

**0.8
--	Reverse engineered Apple’s createNetBoot.sh (found: /System/Library/CoreServices/System Image Utility.app/Contents/Frameworks/SIUFoundation.framework/Versions/A/XPCServices/com.apple.SIUAgent.xpc/Contents)
--	Stopped repeated password prompt
--	Added rc.netboot as optional
--	Added custom desktop image deselect
--	Added resizing of finished DMG, (reduction & expansion)
--	Changed power management to the same plist as Apple use

**0.7
--	Uncommented out /Library/Fonts/*
--	Amended log to ~/Library/Log/AutoCasperNBI/AutoCasperNBI-date.log
--	Added tee command to log NetBoot creation
--	Added more info of OS build & app version to log
--	Added prompt to select location to save .nbi to

**0.6
--	Removed pmset commands from Boot.sh
--	Commented out /Library/Fonts/*
--	Added logging to ~/Library/Log/AutoCasperNBI.log (at some point we’ll add LoginLog)
--	Added prompt to select location to created NBI

**0.5 
--	Commented out rc.netboot install to fix Casper Imaging hang

**0.4
--	Changed base SDK to 10.7 for creating images on 10.7+ macs
--	Corrected Desktop image path reference so it works with spaces.

**0.3
--	Added TimeMachine option to not prompt for new disks.
--	Changed deployment target to see if the app will run nicer.
--	Amended the netBootCreatedPath variable to use quoted form, this should fix those pesky names with spaces.
--	Removed some extra empty lines from code to tidy

**0.2
--	Amended required space to 20GB throughout

**0.1
--	Initial beta
