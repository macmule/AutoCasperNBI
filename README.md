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
