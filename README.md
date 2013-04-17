pidgin-xmonad
=============

Pidgin plugin to notify un-annoyingly in xmonad of unread messages


1. Make sure you have the development packages for gtk2.0 and pidgin installed.
2. run "make" and "make install"
3. turn the plugin on from within pidgin's preferences and configure it
4. add to your .xmobar config:  ' , Run Com "sh ~/.pidginnot.sh" [] "pidginnot" 10' and "%pidginnot%"  in the appropriate places
5. create the appropriate files: you need to copy .pidginnot.sh to your home directory (or wherever you specified above), and .pidginx in the same place (for pidgin to write to)
5. hope that it works ;)

This is exceptionally hacky and by no means an example of the right way to do it, or even an acceptable way to do it. 

Nevertheless, it works, and I use it, so maybe you can too.

The plugin code was largely stolen from a similar plugin to flash lights on a specific laptop brand; and modified to suit this situation.


