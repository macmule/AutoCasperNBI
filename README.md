<br>
<b>MORE INFORMATION</b><br>
<br>
<url>https://macmule.com/AutoCasperNBI</url><br>
<br>
<b>KNOWN ISSUES</b><br>
 Yosemite DMGs are around 1GB larger than 10.7-10.9<br>
<br>
<b>VERSIONS</b><br>
<br>
1.2.0<br>
<br>
Contains fixes from pre-releases 1.1.5 - 1.1.8, many thanks for those of you whom tested those for me.<br>
<br>
--	Completely disable Spotlight [#48](https://github.com/macmule/AutoCasperNBI/issues/48 "Completely disable Spotlight")<br>
--	Correct Progress Bar logging [#47](https://github.com/macmule/AutoCasperNBI/issues/47 "Correct Progress Bar logging")<br>
--	Unsigned Kernel Extensions error when creating 10.9 NBI on 10.10 [#46](https://github.com/macmule/AutoCasperNBI/issues/46 "Unsigned Kernel Extensions error when creating 10.9 NBI on 10.10")<br>
--	Add more buttons to success/error window [#45](https://github.com/macmule/AutoCasperNBI/issues/45 "Add more buttons to success/error window")<br>
--	Options greyed out when Imaging.app selected before OS.dmg [#43](https://github.com/macmule/AutoCasperNBI/issues/43 "Options greyed out when Imaging.app selected before OS.dmg")<br>
--	Hidden content in success popup [#42](https://github.com/macmule/AutoCasperNBI/issues/42 "Hidden content in success popup")<br>
--	Replace inputLayoutID with XIB's Tag ID (Again, thanks Frogor) [#31](https://github.com/macmule/AutoCasperNBI/issues/31 "Replace inputLayoutID with XIB's Tag ID")<br>
--	Sort out the bloody progress bar, proper like! [#32](https://github.com/macmule/AutoCasperNBI/issues/32 "Sort out the bloody progress bar, proper like!")<br>
--	JSS URL not written to plist in 1.1.6 [#38](https://github.com/macmule/AutoCasperNBI/issues/38 "JSS URL not written to plist in 1.1.6")<br>
--	1.1.6 Permissions incorrect on NBImage.plist post NetSUS DMG amendment [#39](https://github.com/macmule/AutoCasperNBI/issues/39 "1.1.6 Permissions incorrect on NBImage.plist post NetSUS DMG amendment")<br>
--	Correct typo in proccess variables [#40](https://github.com/macmule/AutoCasperNBI/issues/40 "Correct typo in proccess variables")<br>
--	Add refresh button for JSS URL [#41](https://github.com/macmule/AutoCasperNBI/issues/41 "Add refresh button for JSS URL")<br>
--	Removed Setup Assistant.app to stop Diagnostics Prompt. [#37](https://github.com/macmule/AutoCasperNBI/issues/37 "Diagnostics setup assistant showing on 10.10")<br>
--	Changed mount points to plist (thanks Frogor!!)<br>
--	Moved free space & total size calculations to bytes via plist of diskutil info, which should resolve a few issues.<br>
--	Amended size calculation as moved to sparse image requires 1/3 less space in some situations.<br>
--	Removed 1k of un-needed code [#30](https://github.com/macmule/AutoCasperNBI/issues/30 "So much un-unused Code.. me thinks it's time to delete!")<br>
--	Fixed behaviour when cancelling build. [#36](https://github.com/macmule/AutoCasperNBI/issues/36 "Re-enable build buttons when trying to build & out of space")<br>
--	Renamed "Read-Only DMG" to "Restorable DMG" in GUI & logs, kept old key in plist for compatibility.<br>
--	Corrected OS Version variable, so should behave correctly.<br>
--	Enhancement: Reduce DMG size further by using .sparseimage [#4](https://github.com/macmule/AutoCasperNBI/issues/4 "Enhancement: Reduce DMG size further by using .sparseimage")<br>
--	Enhancement: Check for updates before creds [#10](https://github.com/macmule/AutoCasperNBI/issues/10 "Enhancement: Check for updates before creds")<br>
--	Enable Disk Utilities debug mode [#13](https://github.com/macmule/AutoCasperNBI/issues/13 "Enable Disk Utilities debug mode")<br>
--	NetBoot Image Description does not get written to NBImageInfo.plist [#15](https://github.com/macmule/AutoCasperNBI/issues/15 "NetBoot Image Description does not get written to NBImageInfo.plist")<br>
--	10.9.x NBI created in 10.10.x won't boot [#16](https://github.com/macmule/AutoCasperNBI/issues/16 "10.9.x NBI created in 10.10.x won't boot")<br>
--	Put Casper Imaging into Debug mode [#17](https://github.com/macmule/AutoCasperNBI/issues/17 "Put Casper Imaging into Debug mode")<br>
--	AutoCasperNBI reading MB as GB when calculating space [#18](https://github.com/macmule/AutoCasperNBI/issues/18 "AutoCasperNBI reading MB as GB when calculating space")<br>
--	Correct typo in TimeMachine ToolTip [#19](https://github.com/macmule/AutoCasperNBI/issues/19 "Correct typo in TimeMachine ToolTip")<br>
--	Change Add Packages/Certs to remember last location & not always change. [#20](https://github.com/macmule/AutoCasperNBI/issues/20 "Change Add Packages/Certs to remember last location & not always change.")<br>
--	"Cannot Read OS Version" from Composer captured OS.dmg's [#22](https://github.com/macmule/AutoCasperNBI/issues/22 ""Cannot Read OS Version" from Composer captured OS.dmg's")<br>
--	Add timeout for JSS URL [#23](https://github.com/macmule/AutoCasperNBI/issues/23 "Add timeout for JSS URL")<br>
--	Automatically Compact NetBoot Image [#24](https://github.com/macmule/AutoCasperNBI/issues/24 "Automatically Compact NetBoot Image")--   Automatically Expand Image [#25](https://github.com/macmule/AutoCasperNBI/issues/25 "Automatically Expand Image")<br>
--	Update Icons for JSS 9.5 [#26](https://github.com/macmule/AutoCasperNBI/issues/26 "Update Icons for JSS 9.5")<br>
--	Remove status blobs [#27](https://github.com/macmule/AutoCasperNBI/issues/27 "Remove status blobs")<br>
--	Detail everything in "Always Set" section [#28](https://github.com/macmule/AutoCasperNBI/issues/28 "Detail everything in "Always Set" section")<br>
--	Move to GitHub releases page & big button on [https://macmule.com/AutoCasperNBI](https://macmule.com/AutoCasperNBI) [#29](https://github.com/macmule/AutoCasperNBI/issues/29 "Move to GitHub releases page & big button on https://macmule.com/AutoCasperNBI")<br>
--	With additional PKG's & Cert's don't revert window [#33](https://github.com/macmule/AutoCasperNBI/issues/33 "With additional PKG's & Cert's don't revert window")<br>
--	Some PKG's cannot be added [#34](https://github.com/macmule/AutoCasperNBI/issues/34 "Some PKG's cannot be added ")<br>
<br>
1.1.4<br>
--	Fixes an where changing the NetBoot Image Index field. Results in the error "Maximum Exceeded - Please provide a valid value "https://github.com/macmule/AutoCasperNBI/issues/12"<br>
<br>
1.1.3<br>
--	Fixes an issue where additional PKG’s are only installed if certs are added too.<br>
--	Corrects the Error message when failing during installing Additional PKGs.<br>
<br>
1.1.2<br>
--	Version number structure changed from 1.xx.x to 1.x.xx. In future x.x releases will be major changes, x.x.x will be minor or bug fixes.<br>
--	Added “LastSeenBuddyBuildVersion” to skip diagnostics prompt on 10.10.1 https://github.com/macmule/AutoCasperNBI/issues/8<br>
<br>
1.0.1<br>
--	Fixes an issue with a blank value added to the additionalPKGs array.<br>
--	https://github.com/macmule/AutoCasperNBI/issues/1<br>
--	Fixes the invalid declaration of the additionalCerts array<br>
--	https://github.com/macmule/AutoCasperNBI/issues/5<br>
--	Fixes an issue where ARD password would not be written correctly if<br>
--	some characters are used<br>
--	https://github.com/macmule/AutoCasperNBI/issues/2<br>
--	NBImageInfo.plist is now converted to xml for use on non-OSX NetBoot<br>
--	servers https://github.com/macmule/AutoCasperNBI/issues/3<br>
<br>
1.0<br>
--	Full Yosemite support.<br>
--	Sparkle Updater added.<br>
--	Help menubar item added.<br>
--	Changed all DMG layouts to GPTSPUD.<br>
--	Added checking of JSS URL when opening options window, to stop it being forgot.<br>
--	Icons change if 10.10 DMG selected or run on 10.10.<br>
<br>
0.22-0.24<br>
--	Internal test releases, additions/changes have been included in v1.0's notes.<br>
<br>
0.21<br>
--	Corrected logic when cancelling folder creation<br>
--	Added deletion of /usr/standalone/bootcaches.plist to resolve hang on reboot (@neil.martin83)<br>
--	Corrected NBImageInfo.plist, so it's not restricted by default (@mfcfadmin)<br>
<br>
0.20<br>
--	Corrected an issue where AutoCasperNBI would try re-run (@fritz.schlapbach, @neil.martin83, @willpolley & @mfcfadmin)<br>
--	Changed what's deleted to try & stop the hang when creating a reduced NBI (@neil.martin83)<br>
<br>
0.19<br>
--	Build & Options buttons are no longer disabled after clicking "Build"<br>
--	hdiutil commands verify the volumes being mounted again.<br>
--	kernelcache reduction always happens on 10.9 NBI's.<br>
--	Fixed an issue with creating read-only 10.8.x NBI's & auto login. (The User Templates folder is no longer emptied).<br>
--	Should no longer try to re-run on completion (@neil.martin83 & @willpolley)<br>
--	Size calculations should now correctly get the volume selected to create the NBI on, including FSTAB mounted paths (@neil.martin83)<br>
--	Size calculations now reads terabytes, not just gigabytes (@neil.martin83)<br>
--	Fixed issue with a blank cert value added to the additional certs array (@neil.martin83, @smith.kyle, @MikeF, @mfcfadmin, @boberito)<br>
--	Fixed an issue with ARD not correctly being enabled (@neil.martin83, @Jimmymac641)<br>
<br>
0.18<br>
--	Corrected size calculation, sorry about that.<br>
<br>
0.17<br>
--	New App Icon.<br>
--	Changed status icons to OSX's in built.<br>
--	Now approximately calculates there is enough space needed to create the NBI (including if we're expanding & creating readonly or reduced) errors if not.<br>
--	Serve over options now hidden until OS.dmg & Casper Imaging.app successfully added.<br>
--	Changed order of additional items check, to avoid hang on launching AutoCasperNBI.<br>
--	Resized tableviews, so can scroll to see long paths of additional certs & pkgs.<br>
--	Added pre-check, to alert if any additional certs or pkgs are missing.<br>
--	Moved from installing PKGs for launchagent etc to flat file copy.<br>
--	Amended powermanagement.plist to displaysleep after 3 hours, removed from boot.sh<br>
--	Corrected setting input source for selections with spaces in names. Such as, Swiss German for example. (@fritz.schlapbach)<br>
--	Enabled copy & paste. (@RHammen)<br>
--	Disables screen saver. (@neil.martin83)<br>
--	Disables app nap. (@neil.martin83)<br>
--	On successful build, volumes are now unmounted. (@neil.martin83, @mfcfadmin, @Harsdorff)<br>
--	Always reducing cache now, to help with hang on restart (I hope! 1 more thing to try if not). (@neil.martin83, @mfcfadmin, @smith.kyle & @Zvordauk)<br>
--	Set attaching of OS.dmg to --noverify, to see if this helps in those cases where it's failed. (@smith.kyle, @boberito)<br>
--	Removed check OS version as no longer needed & may have caused false positives erroring as not being able to mount dmg. (@smith.kyle, @boberito)<br>
--	Populates NBIImageInfo.plist's EnabledSystemIdentifiers array, to allow model filtering (@evanmellichampe)<br>
<br>
0.16<br>
--	Enabled adding additional pkgs & certs.<br>
--	Amended kernel cache generation to see try & stop the hang on restart.<br>
--	Changed root user environment back to Apple defaultsish. (Dock is stripped to Finder, Casper Imaging & Trash). Use PKGs to customise<br>
<br>
0.15<br>
--	Round all the sizing! (yep i missed some, should work on non-english macs)<br>
--	Corrected Admin check behaviour<br>
--	Removed a few hundred lines to get over the stack error.<br>
--	Changed behaviour so only build process window is shown during build.<br>
--	Correct the logging so shouldn’t rollover when writing past 00:00 on a day, & will start a new line on launch<br>
--	Corrected an issue when expanding the NetBoot.dmg<br>
<br>
0.14<br>
--	Added touching of /System/Library/Extensions/ to try & resolve hang on reboot<br>
--	Corrected some logging <br>
<br>
0.13<br>
--	Resolved an issue calculating space on non-English language Macs.<br>
--	Added checkbox for hosting on NetSUS, this removes spaces from the NetBoot’s Name.<br>
<br>
0.12<br>
--	Added OS & Input Language selection<br>
--	Added simple Finder selection<br>
--	Added pre-checks to correctly write to plist when needed.<br>
--	Corrected behaviour when progress window showing so it doesn’t disappear.<br>
--	Added 10.10 NBI creation support (Full 10.10 support to come)<br>
--	Changed root users dock, adding Casper Imaging to it.<br>
--	Changed AutoCasperNBI LaunchDaemon to launch once, to try & resolve issues with hanging on restart<br>
<br>
0.11<br>
--	Can now create 10.7.x NBI’s & run on 10.7.x<br>
--	Amended sequence order<br>
<br>
0.10<br>
--	Changed User Notification dialogs from AppleScript display dialogs to XIBs to stop timeout errors with dialogs<br>
--	Added checkJSSURL function to build-precheck.<br>
--	Added return command completion to a some windows<br>
--	Added complete.aif to play when complete<br>
<br>
0.9<br>
--	Added Time Server & Zone options<br>
--	Added option to create a Read-only dmg which has been imagescanned for ASRing to removable media<br>
--	Added error logging.<br>
--	Removed OS version check so now should be able to create .nbi’s from 10.7+ (have only tested 10.8.x & 10.9.x)<br>
<br>
0.8<br>
--	Reverse engineered Apple’s createNetBoot.sh (found: /System/Library/CoreServices/System Image Utility.app/Contents/Frameworks/SIUFoundation.framework/Versions/A/XPCServices/com.apple.SIUAgent.xpc/Contents)<br>
--	Stopped repeated password prompt<br>
--	Added rc.netboot as optional<br>
--	Added custom desktop image deselect<br>
--	Added resizing of finished DMG, (reduction & expansion)<br>
--	Changed power management to the same plist as Apple use<br>
<br>
0.7<br>
--	Uncommented out /Library/Fonts/*<br>
--	Amended log to ~/Library/Log/AutoCasperNBI/AutoCasperNBI-date.log<br>
--	Added tee command to log NetBoot creation<br>
--	Added more info of OS build & app version to log<br>
--	Added prompt to select location to save .nbi to<br>
<br>
0.6<br>
--	Removed pmset commands from Boot.sh<br>
--	Commented out /Library/Fonts/*<br>
--	Added logging to ~/Library/Log/AutoCasperNBI.log (at some point we’ll add LoginLog)<br>
--	Added prompt to select location to created NBI<br>
<br>
0.5 <br>
--	Commented out rc.netboot install to fix Casper Imaging hang<br>
<br>
0.4<br>
--	Changed base SDK to 10.7 for creating images on 10.7+ macs<br>
--	Corrected Desktop image path reference so it works with spaces.<br>
<br>
0.3<br>
--	Added TimeMachine option to not prompt for new disks.<br>
--	Changed deployment target to see if the app will run nicer.<br>
--	Amended the netBootCreatedPath variable to use quoted form, this should fix those pesky names with spaces.<br>
--	Removed some extra empty lines from code to tidy<br>
<br>
0.2<br>
--	Amended required space to 20GB throughout<br>
<br>
0.1<br>
--	Initial beta<br>
