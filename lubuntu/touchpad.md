#xinput list #and find your device ID (slave pointer or "AlpsPS/2 ALPS GlidePoint" on SonyVaio)
#xinput list-props 12 #to show options, look for: libinput Tapping Enabled (290): 0
`xinput set-prop 12 290 1` activate it!

`synclient -l` to display settings
edit a setting: `synclient HorizTwoFingerScroll=1`
