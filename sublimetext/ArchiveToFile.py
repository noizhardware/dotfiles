# save in C:\Users\ninja\AppData\Roaming\Sublime Text\Packages\User\
# then in C:\Users\ninja\AppData\Roaming\Sublime Text\Packages\User\Default (Windows).sublime-keymap
# use:
#	{"keys": ["alt+a"], "command": "archive_to_file"},
#	{"keys": ["alt+q"], "command": "delete_and_archive_to_file"},
#	{"keys": ["alt+w"], "command": "delete_and_archive_to_file_no_date"},
#
# 2022j03-1615

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

def prependToFile(file, content):
  fileContent = file.read()
  file.seek(0)
  file.write(content + fileContent)

class ArchiveToFileCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    for region in self.view.sel():
      # just look at lines with a cusor, not a selection
      if region.empty():
        line = self.view.line(region)
        lineContents = self.view.substr(line)
        lineContents = lineContents.strip()
        archiveFile = open(r"H:\LOGS\archive.md", "r+")
        timestamp = now() + " "
        # archiveFile.write(timestamp + lineContents + '\n')
        prependToFile(archiveFile, timestamp + lineContents + '\n')
        archiveFile.close()

class DeleteAndArchiveToFileCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    for region in self.view.sel():
      # just look at lines with a cusor, not a selection
      if region.empty():
        line = self.view.line(region)
        lineContents = self.view.substr(line)
        lineContents = lineContents.strip()
        archiveFile = open(r"H:\LOGS\archive.md", "r+")
        timestamp = now() + " "
        # archiveFile.write(timestamp + lineContents + '\n')
        prependToFile(archiveFile, timestamp + lineContents + '\n')
        archiveFile.close()
        lines = self.view.full_line(region)
        self.view.erase(edit, lines)

class DeleteAndArchiveToFileNoDateCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    for region in self.view.sel():
      # just look at lines with a cusor, not a selection
      if region.empty():
        line = self.view.line(region)
        lineContents = self.view.substr(line)
        lineContents = lineContents.strip()
        archiveFile = open(r"H:\LOGS\archive.md", "r+")
        prependToFile(archiveFile, lineContents + '\n')
        archiveFile.close()
        lines = self.view.full_line(region)
        self.view.erase(edit, lines)
