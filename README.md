The idea of this app is to take an OS.dmg either from AutoDMG or an OS.dmg captured from a never booted Mac (use case is forked builds).<br>
<br>
Then select a copy of Casper Imaging.app<br>
Once you have an OS.dmg & Casper Imaging app selected, you should be able to build an .nbi.<br>
<br>
The JSS URL & options under the options tab, are optional.<br>
<br>
The additionals tabs functions are to come when I figure out how to tie the GUI elements in<br>
<br>
Any options you set, should be written to a plist ~/Library/Preferences/com.macmule.AutoCasperNBI.plist.<br>
<br>
GitHub repo is here: https://github.com/macmule/AutoCasperNBI<br>
<br>
Latest built beta can be downloaded from:  https://pentland-brands.box.com/shared/static/mppkb45edd5fxp1s8sv4.dmg<br>
<br>
Please post questions or issues in the following thread: https://jamfnation.jamfsoftware.com/discussion.html?id=11356<br>
<br>
If you wish to contact me direct, please use: http://macmule.com/contact/<br>
<br>
ISSUES<br>
<br>
There will be some i'm sure<br>
<br>
VERSIONS<br>
<br>
0.18<br>
-- Corrected size calculation, sorry about that.<br>
<br>
0.17<br>
-- New App Icon.<br>
-- Changed status icons to OSX's in built.<br>
-- Now approximately calculates there is enough space needed to create the NBI (including if we're expanding & creating readonly or reduced) errors if not.<br>
-- Serve over options now hidden until OS.dmg & Casper Imaging.app successfully added.<br>
-- Changed order of additional items check, to avoid hang on launching<br>
AutoCasperNBI.<br>
-- Resized tableviews, so can scroll to see long paths of additional certs & pkgs.<br>
-- Added pre-check, to alert if any additional certs or pkgs are missing.<br>
-- Moved from installing PKGs for launchagent etc to flat file copy.<br>
-- Amended powermanagement.plist to displaysleep after 3 hours, removed from boot.sh<br>
-- Corrected setting input source for selections with spaces in names. Such as, Swiss German for example. (@fritz.schlapbach)<br>
-- Enabled copy & paste. (@RHammen)<br>
-- Disables screen saver. (@neil.martin83)<br>
-- Disables app nap. (@neil.martin83)<br>
-- On successful build, volumes are now unmounted. (@neil.martin83, @mfcfadmin, @Harsdorff)<br>
-- Always reducing cache now, to help with hang on restart (I hope! 1 more thing to try if not). (@neil.martin83, @mfcfadmin, @smith.kyle & @Zvordauk)<br>
-- Set attaching of OS.dmg to --noverify, to see if this helps in those cases where it's failed. (@smith.kyle, @boberito)<br>
-- Removed check OS version as no longer needed & may have caused false positives erroring as not being able to mount dmg. (@smith.kyle, @boberito)<br>
-- Populates NBIImageInfo.plist's EnabledSystemIdentifiers array, to allow model filtering (@evanmellichampe)<br>
<br>
<br>
0.16<br>
— Enabled adding additional pkgs & certs.<br>
— Amended kernel cache generation to see try & stop the hang on restart.<br>
— Changed root user environment back to Apple defaultsish. (Dock is stripped to Finder, Casper Imaging & Trash). Use PKGs to customise<br>
<br>
0.15<br>
— Round all the sizing! (yep i missed some, should work on non-english
macs)<br>
— Corrected Admin check behaviour<br>
— Removed a few hundred lines to get over the stack error.<br>
— Changed behaviour so only build process window is shown during build.<br>
— Correct the logging so shouldn’t rollover when writing past 00:00 on
a day, & will start a new line on launch<br>
— Corrected an issue when expanding the NetBoot.dmg<br>
<br>
0.14<br>
— Added touching of /System/Library/Extensions/ to try & resolve hang
on reboot<br>
— Corrected some logging <br>
<br>
0.13<br>
—Resolved an issue calculating space on non-English language Macs.<br>
—Added checkbox for hosting on NetSUS, this removes spaces from the NetBoot’s Name.<br>
<br>
0.12<br>
— Added OS & Input Language selection<br>
— Added simple Finder selection<br>
— Added pre-checks to correctly write to plist when needed.<br>
— Corrected behaviour when progress window showing so it doesn’t disappear.<br>
— Added 10.10 NBI creation support (Full 10.10 support to come)<br>
— Changed root users dock, adding Casper Imaging to it.<br>
— Changed AutoCasperNBI LaunchDaemon to launch once, to try & resolve issues with hanging on restart<br>
<br>
0.11<br>
— Can now create 10.7.x NBI’s & run on 10.7.x<br>
— Amended sequence order<br>
<br>
0.10<br>
— Changed User Notification dialogs from AppleScript display dialogs to
XIBs to stop timeout errors with dialogs<br>
—Added checkJSSURL function to build-precheck.<br>
— Added return command completion to a some windows<br>
— Added complete.aif to play when complete<br>
<br>
0.9<br>
— Added Time Server & Zone options<br>
— Added option to create a Read-only dmg which has been imagescanned
for ASRing to removable media<br>
— Added error logging.<br>
— Removed OS version check so now should be able to create .nbi’s from
10.7+ (have only tested 10.8.x & 10.9.x)<br>
<br>
0.8<br>
—Reverse engineered Apple’s createNetBoot.sh (found:
/System/Library/CoreServices/System Image
Utility.app/Contents/Frameworks/SIUFoundation.framework/Versions/A/XPCSe
rvices/com.apple.SIUAgent.xpc/Contents)<br>
—Stopped repeated password prompt<br>
— Added rc.netboot as optional<br>
— Added custom desktop image deselect<br>
— Added resizing of finished DMG, (reduction & expansion)<br>
— Changed power management to the same plist as Apple use<br>
<br>
0.7<br>
Uncommented out /Library/Fonts/*<br>
Amended log to ~/Library/Log/AutoCasperNBI/AutoCasperNBI-date.log<br>
Added tee command to log NetBoot creation<br>
Added more info of OS build & app version to log<br>
Added prompt to select location to save .nbi to<br>
<br>
0.6<br>
Removed pmset commands from Boot.sh<br>
Commented out /Library/Fonts/*<br>
Added logging to ~/Library/Log/AutoCasperNBI.log (at some point we’ll add LoginLog)<br>
Added prompt to select location to created NBI<br>
<br>
0.5 <br>
Commented out rc.netboot install to fix Casper Imaging hang<br>
<br>
0.4<br>
Changed base SDK to 10.7 for creating images on 10.7+ macs<br>
Corrected Desktop image path reference so it works with spaces.<br>
<br>
0.3<br>
Added TimeMachine option to not prompt for new disks.<br>
Changed deployment target to see if the app will run nicer.<br>
Amended the netBootCreatedPath variable to use quoted form, this should fix those pesky names with spaces.<br>
Removed some extra empty lines from code to tidy<br>
<br>
0.2<br>
Amended required space to 20GB throughout<br>
<br>
0.1<br>
Initial beta<br>
