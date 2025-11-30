# save in ~/.config/sublime-text/Packages/User
# then in /home/nff/.config/sublime-text/Packages/User/Default (Linux).sublime-keymap
# use:
#	{"keys": ["ctrl+alt+d"], "command": "today_flow"},
#
# created 2025j20-1051
# version 2025j20-1100

import sublime, sublime_plugin
from time import strftime

def now():
  month = strftime("%m")
  if month=="01":
    monthLetter = "a"
  elif month=="02":
    monthLetter = "b"
  elif month=="03":
    monthLetter = "c"
  elif month=="04":
    monthLetter = "d"
  elif month=="05":
    monthLetter = "e"
  elif month=="06":
    monthLetter = "f"
  elif month=="07":
    monthLetter = "g"
  elif month=="08":
    monthLetter = "h"
  elif month=="09":
    monthLetter = "i"
  elif month=="10":
    monthLetter = "j"
  elif month=="11":
    monthLetter = "k"
  elif month=="12":
    monthLetter = "w"
  # return strftime("%Y-%m-%dT%H:%M:%S")
  return strftime("%Y") + monthLetter + strftime("%d-%H%M")

class TodayFlowCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # You can change this string to whatever you want
        flowDateTime = now()

        # For every cursor/selection, insert the string
        for region in self.view.sel():
            self.view.insert(edit, region.begin(), flowDateTime)
