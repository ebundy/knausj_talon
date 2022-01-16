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
		
	def open_downloads(): 
		"""to do"""
		subprocess.Popen(["explorer.exe", "C:\\Users\\david\\Downloads"])
		actions.sleep('1s')
		actions.user.move_cursor_dav(677, 425, 1)	   