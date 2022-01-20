from talon import Module, actions, ctrl

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

    def less():
        """less comment"""
        actions.insert('less -i')

    def grep(args: str, search: str):
        """grep comment. good here for interface"""
        actions.insert(f"grep '{search}' {args} ")
        if not search:
            nb_shift = len(args) + 3
            for _ in range(nb_shift):
                actions.key("left")
            # actions.key("enter")

    def find_by_name(command: str):
        """kills the running command"""
        actions.insert(f"find -name '{command}'")
        if not command:
            for _ in range(1):
                actions.key("left")

    def script_copy_last_line():
        """to document later"""
        actions.user.grid_activate()
        actions.sleep(0.3)
        actions.user.grid_narrow_list([1, 1])
        actions.sleep(0.3)
        actions.user.grid_close()
        ctrl.mouse_click(button=0)
        ctrl.mouse_click(button=0)
        ctrl.mouse_click(button=0)
        actions.sleep(0.3)
        actions.edit.copy()
        # sleep(0.5)
        # key("grid one")
