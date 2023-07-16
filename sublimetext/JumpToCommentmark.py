import sublime, sublime_plugin

class JumpToCommentmarkCommand(sublime_plugin.TextCommand):
	def _select(self):
		self.view.sel().clear()
		self.view.sel().add(self._target_region)

	def run(self, edit):
		TARGET = '/**'

		# if not target or target == "":
		#   return

		content = self.view.substr(sublime.Region(0, self.view.size()))
		begin = content.find(TARGET)
		if begin == -1:
			return
		end = begin + len(TARGET)
		self._target_region = sublime.Region(begin, end)    
		self._select()
		self.view.show(self._target_region) # scroll to selection
