tag: terminal
#app.exe: git-bash.exe
-
# tags should be activated for each specific terminal in the respective talon file

lisa|liza|(list): 
    user.terminal_list_directories()
lisa all: 
    user.terminal_list_all_directories()
(cidi [<user.text>])|(cd [<user.text>]): user.terminal_change_directory(text or "")
cidi root: user.terminal_change_directory_root()
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
	
grep [<user.text>] [pipe]:
    user.grep(text or "") 
	
find by name [<user.text>] [pipe]:
    user.find_by_name(text or "") 
	
script copy last line: 
	user.script_copy_last_line()