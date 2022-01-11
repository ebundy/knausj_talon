from talon import Context, actions, ui, Module, app
import subprocess

mod = Module()

@mod.action_class
class my_shortcuts:
   
    def run_repl():
        """Duplicates the current tab."""
        #Popen() is not blocking  while call() is blocking
        subprocess.Popen(["C:\\Program Files\\Talon\\python.exe", "C:\\Program Files\\Talon\\repl.py"])
        #subprocess.call(["C:\\Program Files\\Talon\\python.exe", "C:\\Program Files\\Talon\\repl.py"])
        #subprocess.call(["C:\\Program Files\\Mozilla Firefox\\firefox.exe"]) 
		

    def press_end_parent():
        """to do"""
        actions.key(")")
		