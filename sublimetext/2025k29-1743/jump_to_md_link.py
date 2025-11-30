import sublime
import sublime_plugin
import os
import re

# crea 2025k29-1434

LINK_PATTERN = re.compile(r"\[\[([^\]]+)\]\]")

class JumpToMdLinkCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        sel = view.sel()[0]
        pos = sel.begin()

        # Get the full line to search for [[...]]
        line_region = view.line(pos)
        line_text = view.substr(line_region)

        # Find all [[...]] occurrences in the line
        for match in LINK_PATTERN.finditer(line_text):
            start = line_region.begin() + match.start(1)
            end = line_region.begin() + match.end(1)

            # Cursor must be inside this [[...]]
            if start <= pos <= end:
                inner = match.group(1).strip()
                self.handle_link(inner)
                return

        sublime.status_message("No [[link]] under cursor.")

    def handle_link(self, inner):
        window = self.view.window()

        # CASE A: absolute path [[some/path/file]]
        # (presence of "/" means it's a path)
        if "/" in inner:
            abs_path = inner

            # Open only if file exists
            if os.path.isfile(abs_path):
                window.open_file(abs_path)
            else:
                sublime.status_message(f"File NOT FOUND: {abs_path}")
                window.run_command(
                    "message_dialog",
                    {"message": f"File {abs_path} not found."}
                )
            return

        # CASE B: single-word filename [[file]]
        if " " in inner:
            sublime.status_message("Not a single-word [[link]].")
            return

        filename = inner + ".md"

        current_file = self.view.file_name()
        if not current_file:
            sublime.status_message("Current file must be saved to use this.")
            return

        current_dir = os.path.dirname(current_file)

        # Search current folder first, then project folders
        search_paths = [current_dir]

        if window:
            search_paths.extend(window.folders())

        found_path = self.search_for_file(filename, search_paths)

        if found_path:
            window.open_file(found_path)
            return

        # Not found, ask user to create
        self.ask_create(filename, os.path.join(current_dir, filename))

    def search_for_file(self, filename, paths):
        for folder in paths:
            candidate = os.path.join(folder, filename)
            if os.path.isfile(candidate):
                return candidate
        return None

    def ask_create(self, filename, full_path):
        window = self.view.window()
        msg = f"File {filename} not found; create?"

        def on_done(index):
            if index == 1:  # Yes
                self.create_and_open(full_path)

        # NO preselected
        window.show_quick_panel(
            ["No", "Yes"],
            on_done,
            selected_index=0
        )

    def create_and_open(self, full_path):
        os.makedirs(os.path.dirname(full_path), exist_ok=True)

        with open(full_path, "w", encoding="utf-8") as f:
            pass

        self.view.window().open_file(full_path)
