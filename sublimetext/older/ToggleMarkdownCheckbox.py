# save in C:\Users\ninja\AppData\Roaming\Sublime Text\Packages\User\
# then in C:\Users\ninja\AppData\Roaming\Sublime Text\Packages\User\Default (Windows).sublime-keymap
# use:
# {"keys": ["shift+enter"], "command": "toggle_markdown_checkbox"},
import sublime, sublime_plugin
import re
from time import strftime

def now():
  return strftime("%Y-%m-%dT%H:%M:%S")

timestampRegex = r"\s*\(\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\)"

def toggleCheckbox(line):
  if "[ ]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[ ]", "[x]") #+ timestamp
  elif "[o]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[o]", "[x]") #+ timestamp
  elif "[~]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[~]", "[x]") #+ timestamp
  elif "[x]" in line:
    unchecked = line.replace("[x]", "[ ]")
    undated = re.sub(timestampRegex, "", unchecked)
    return unchecked #undated
  else:
    return line

def tildeCheckbox(line):
  if "[ ]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[ ]", "[~]") #+ timestamp
  elif "[o]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[o]", "[~]") #+ timestamp
  elif "[~]" in line:
    timestamp = " (" + now() + ")"
    return line.replace("[~]", "[ ]") #+ timestamp
  elif "[x]" in line:
    unchecked = line.replace("[x]", "[~]")
    undated = re.sub(timestampRegex, "", unchecked)
    return unchecked #undated
  else:
    return line

class ToggleMarkdownCheckboxCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    # self.view.insert(edit, 0, "hello world")
    for region in self.view.sel():
      # just look at lines with a cusor, not a selection
      if region.empty():
        line = self.view.line(region)
        lineContents = self.view.substr(line)
        newLineContents = toggleCheckbox(lineContents)
        self.view.replace(edit, line, newLineContents)

class TildeMarkdownCheckboxCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    # self.view.insert(edit, 0, "hello world")
    for region in self.view.sel():
      # just look at lines with a cusor, not a selection
      if region.empty():
        line = self.view.line(region)
        lineContents = self.view.substr(line)
        newLineContents = tildeCheckbox(lineContents)
        self.view.replace(edit, line, newLineContents)
        