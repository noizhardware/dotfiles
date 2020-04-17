#xinput list #and find your device ID (slave pointer)
#xinput list-props 12 #to show options, look for: libinput Tapping Enabled (290): 0
xinput set-prop 12 290 1 # activate it!
