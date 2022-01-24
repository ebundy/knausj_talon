import subprocess

from talon import actions, Module

mod = Module()


@mod.action_class
class my_shortcuts:

    def run_repl():
        """Duplicates the current tab."""
        # Popen() is not blocking  while call() is blocking
        subprocess.Popen(["C:\\Program Files\\Talon\\python.exe", "C:\\Program Files\\Talon\\repl.py"])

    # subprocess.call(["C:\\Program Files\\Talon\\python.exe", "C:\\Program Files\\Talon\\repl.py"])
    # subprocess.call(["C:\\Program Files\\Mozilla Firefox\\firefox.exe"])

    def press_end_parent():
        """to do"""
        actions.key(")")

    def open_explorer(path: str):
        """to do"""
        subprocess.Popen(["explorer.exe", path])
        actions.sleep('1s')
        actions.user.move_cursor_dav(677, 425, 1)
