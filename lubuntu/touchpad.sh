xinput list #and fint your device ID (slave pointer)
xinput list-props 12 #to show options, look for: libinput Tapping Enabled (291): 0
xinput set-prop 12 291 1 # activate it!
