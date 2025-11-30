import sublime
import sublime_plugin

class ToggleTabScrollingCommand(sublime_plugin.ApplicationCommand):
    def run(self):
        settings = sublime.load_settings("Preferences.sublime-settings")
        current = settings.get("enable_tab_scrolling", False)
        settings.set("enable_tab_scrolling", not current)
        sublime.save_settings("Preferences.sublime-settings")
        sublime.status_message(
            "Tab scrolling: {}".format("enabled" if not current else "disabled")
        )
