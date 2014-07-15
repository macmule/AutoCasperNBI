
The idea of this app is to take an OS.dmg either from AutoDMG or an OS.dmg captured from a never booted Mac (use case is forked builds).

Once you have an OS.dmg & Casper Imaging app selected, you should be able to build an .nbi.

The JSS URL & options under the options tab, are optional.

The advanced tabs functions are to come when I figure out how to tie the GUI elements in.

Any options you set, should be written to a plist ~/Library/Preferences/com.macmule.AutoCasperNBI.plist.

GitHub repo is here: https://github.com/macmule/AutoCasperNBI

Latest built beta can be downloaded from:  https://pentland-brands.box.com/shared/static/mppkb45edd5fxp1s8sv4.dmg

ISSUES

Currently, AutoCasperNBI checks that 20GB of space is free.. But i’ll amend later to actually size needed.

Please tun from /Applications (I’ll make a check for that later).

Tracking an issue with some NFS served .nbi’s hanging on restart.

Casper Imaging 9.3-1 should not be used due to a bug that stops OS restart

VERSIONS

0.7
— Uncommented out /Library/Fonts/*
— Amended log to ~/Library/Log/AutoCasperNBI/AutoCasperNBI-date.log
— Added tee command to log NetBoot creation
— Added more info of OS build & app version to log
— Added prompt to select location to save .nbi to

0.6
— Removed pmset commands from Boot.sh
— Commented out /Library/Fonts/*
— Added logging to ~/Library/Log/AutoCasperNBI.log (at some point we’ll add LoginLog)
— Added prompt to select location to created NBI

0.5 
— Commented out rc.netboot install to fix Casper Imaging hang

0.4
— Changed base SDK to 10.7 for creating images on 10.7+ macs
— Corrected Desktop image path reference so it works with spaces.

0.3
—Added TimeMachine option to not prompt for new disks.
—Changed deployment target to see if the app will run nicer.
—Amended the netBootCreatedPath variable to use quoted form, this should fix those pesky names with spaces.
—Removed some extra empty lines from code to tidy

0.2
—Amended required space to 20GB throughout

0.1
— Initial beta
