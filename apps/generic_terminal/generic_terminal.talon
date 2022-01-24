tag: terminal
#app.exe: git-bash.exe
-
# tags should be activated for each specific terminal in the respective talon file

liza: 
    user.terminal_list_directories()
liza all: 
    user.terminal_list_all_directories()
#1(cidi [<user.text>])|(cd [<user.text>]): user.terminal_change_directory(text or "")
dir root: user.terminal_change_directory_root()
run cidi:
    insert("cd ")
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
run cat:
    insert("cat ")
less:
	user.less()
grep  [<user.text>]:
    user.grep("-rni", text or "")

grep perl [<user.text>]:
    user.grep("-rni", text or "")

grep include  [<user.text>]:
    user.grep("--include='*.' -rni", text or "")

grep base  [<user.text>]:
    user.grep("-i", text or "")
	
find by name [<user.text>] [pipe]:
    user.find_by_name(text or "") 
	
script copy last line: 
	user.script_copy_last_line()