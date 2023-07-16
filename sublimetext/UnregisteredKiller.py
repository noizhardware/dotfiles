import sublime
import sublime_plugin

import time


class UnregisteredKillerCommand(sublime_plugin.EventListener):
    SLEEP_DURATION = 0.1
    LOOP_CHECK_COUNT = 30
    UNREG_WINDOW_TITLE = 'This is an unregistered copy'
    MAIN_WINDOW_TITLE = ' - Sublime Text (UNREGISTERED)'

    windows_ctypes = None

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        if sublime.platform() == 'windows':
            import ctypes
            self.windows_ctypes = ctypes

    def on_pre_save_async(self, *args):
        for i in range(0, self.LOOP_CHECK_COUNT):
            active_windows = self.get_active_windows()
            unreg_window = None
            sublime_window = None

            for window in active_windows:
                if window['title'] == self.UNREG_WINDOW_TITLE:
                    unreg_window = window['hwnd']
                elif self.MAIN_WINDOW_TITLE in window['title']:
                    sublime_window = window['hwnd']

                if unreg_window and sublime_window:
                    break

            if unreg_window and sublime_window:
                self.activate_window(sublime_window)
                self.close_window(unreg_window)
                break
            else:
                time.sleep(self.SLEEP_DURATION)


    def get_active_windows(self):
        windows = []

        if sublime.platform() == 'windows':
            EnumWindows = self.windows_ctypes.windll.user32.EnumWindows
            EnumWindowsProc = self.windows_ctypes.WINFUNCTYPE(
                self.windows_ctypes.c_bool,
                self.windows_ctypes.POINTER(self.windows_ctypes.c_int),
                self.windows_ctypes.POINTER(self.windows_ctypes.c_int),
            )
            GetWindowText = self.windows_ctypes.windll.user32.GetWindowTextW
            GetWindowTextLength = self.windows_ctypes.windll.user32.GetWindowTextLengthW
            IsWindowVisible = self.windows_ctypes.windll.user32.IsWindowVisible

            def foreach_window(hwnd, lParam):
                if IsWindowVisible(hwnd):
                    length = GetWindowTextLength(hwnd)
                    buff = self.windows_ctypes.create_unicode_buffer(length + 1)
                    GetWindowText(hwnd, buff, length + 1)
                    windows.append({
                        'hwnd': hwnd,
                        'title': buff.value,
                    })
                return True
            EnumWindows(EnumWindowsProc(foreach_window), 0)

        return windows

    def close_window(self, hwnd):
        if sublime.platform() == 'windows':
            # DestroyWindow = self.windows_ctypes.windll.user32.DestroyWindow
            # DestroyWindow(hwnd)

            SendMessage = self.windows_ctypes.windll.user32.SendMessageW
            WM_SYSCOMMAND = self.windows_ctypes.c_int(0x0112)
            SC_CLOSE = self.windows_ctypes.c_int(0xF060)
            SendMessage(hwnd,  WM_SYSCOMMAND, SC_CLOSE, 0)

    def activate_window(self, hwnd):
        if sublime.platform() == 'windows':
            SetForegroundWindow = self.windows_ctypes.windll.user32.SetForegroundWindow
            SetForegroundWindow(hwnd)