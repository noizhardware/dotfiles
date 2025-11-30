import sublime
import sublime_plugin
import webbrowser
import re

# crea 2025k29-1742

# Detects http, https and www forms
URL_REGEX = re.compile(
    r"(https?://[^\s<>()\[\]{}]+|www\.[^\s<>()\[\]{}]+)",
    re.IGNORECASE
)

class OpenUrlUnderCursorCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        sel = view.sel()

        if not sel:
            sublime.status_message("No cursor")
            return

        pt = sel[0].begin()

        # Find full URL-like chunk around cursor by expanding left and right
        url_region = self.expand_url_region(view, pt)
        text = view.substr(url_region)

        # Find a URL inside that expanded region
        match = URL_REGEX.search(text)

        if not match:
            sublime.status_message(f"invalid URL: {text}")
            return

        url = match.group(0)

        if url.startswith("www."):
            url = "https://" + url

        try:
            webbrowser.open_new_tab(url)
        except Exception as e:
            sublime.status_message("Error opening URL: {}".format(e))

    def expand_url_region(self, view, pt):
        # Characters allowed inside URLs
        valid_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789:/?&=#._-%+"

        left = pt
        right = pt

        # expand left
        while left > 0:
            c = view.substr(left - 1)
            if c in valid_chars:
                left -= 1
            else:
                break

        # expand right
        size = view.size()
        while right < size:
            c = view.substr(right)
            if c in valid_chars:
                right += 1
            else:
                break

        return sublime.Region(left, right)
