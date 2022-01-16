from talon import app, Module, Context, actions, ui, imgui, settings, app, registry, ctrl

mod = Module()

@mod.action_class
class Actions:
    # implements the function from generic_terminal.talon for unix shells

    def terminal_list_directories():
        """Lists directories"""
        
    def terminal_list_all_directories():
        """Lists all directories including hidden"""

    def terminal_change_directory(path: str):
        """Lists change directory"""

    def terminal_change_directory_root():
        """Root of current drive"""

    def terminal_clear_screen():
        """Clear screen"""

    def terminal_run_last():
        """Repeats the last command"""

    def terminal_rerun_search(command: str):
        """Searches through the previously executed commands"""

    def terminal_kill_all():
        """kills the running command"""
    
    def grep(command: str, args: str): "grep comment. good here for interface"
	
    def find_by_name(command: str): "grep comment. good here for interface"	
	
    def script_copy_last_line() : 
       """to document later"""
       actions.user.grid_activate()
       actions.sleep(0.3) 
       actions.user.grid_narrow_list([1,1])
       actions.sleep(0.3) 
       actions.user.grid_close()	   
       ctrl.mouse_click(button=0)	   
       ctrl.mouse_click(button=0)	   
       ctrl.mouse_click(button=0)	   
       actions.sleep(0.3)  
       actions.edit.copy()
	   #sleep(0.5)
	   #key("grid one") 