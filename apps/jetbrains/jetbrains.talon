# Requires https://plugins.jetbrains.com/plugin/10504-voice-code-idea40
app: jetbrains
-
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
# multiple_cursors.py support end

# Refactoring
refactor: user.idea("action Refactorings.QuickListPopupAction")
refactor <user.text>:
    user.idea("action Refactorings.QuickListPopupAction")
    insert(text)
extract variable: user.idea("action IntroduceVariable")
extract field: user.idea("action IntroduceField")
extract constant: user.idea("action IntroduceConstant")
extract parameter: user.idea("action IntroduceParameter")
extract interface: user.idea("action ExtractInterface")
extract method: user.idea("action ExtractMethod")
refactor in line: user.idea("action Inline")
refactor move: user.idea("action Move")
rename:	key("alt-shift-r")
rename file: user.idea("action RenameFile")
reformat: key("ctrl-shift-f")
fix imports: user.idea("action OptimizeImports")
#navigation
(go declaration | follow): user.idea("action GotoDeclaration")
go implementation: user.idea("action GotoImplementation")
go usage: user.idea("action 4Usages")
go type: user.idea("action GotoTypeDeclaration")
go test: user.idea("action GotoTest")
go back: user.idea("action Back")
go forward: user.idea("action Forward")
recent: user.idea("action RecentFiles")

# Folding
expand deep: user.idea("action ExpandRegionRecursively")
expand all: user.idea("action ExpandAllRegions")
collapse deep: user.idea("action CollapseRegionRecursively")
collapse all: user.idea("action CollapseAllRegions")
# miscellaneous
# XXX These might be better than the structural ones depending on language.
go next (method | function): user.idea("action MethodDown")
go last (method | function): user.idea("action MethodUp")
# File Creation
new file| new   file:
    key(ctrl-alt-insert)

# Movement
go next (error | air): user.idea("action GotoNextError")
go last (error | air): user.idea("action GotoPreviousError")
fix next (error | air):
    user.idea("action GotoNextError")
    user.idea("action ShowIntentionActions")
fix last (error | air):
    user.idea("action GotoPreviousError")
    user.idea("action ShowIntentionActions")
# Special Selects
select less: user.idea("action EditorUnSelectWord")
select (more|this): user.idea("action EditorSelectWord")
#jet brains-specific line commands. see line_commands.talon for generic ones
expand <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action ExpandRegion")
collapse <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action CollapseRegion")
paste <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action EditorPaste")
refactor <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action Refactorings.QuickListPopupAction")
clone <number>: user.line_clone(number)

#David
comment it:key("ctrl-shift-c")
dock comment:
    insert("\"\"\"  ")
    edit.left()


#find global commands
find file [<user.text>] :
    key("ctrl-shift-r")
    sleep(500ms)
    insert(text or "")

find action  [<user.text>] :
   	key("ctrl-alt-a")
    sleep(500ms)
    insert(text or "")
find class: user.idea("action GotoClass")
find path: user.idea("action FindInPath")
find symbol: user.idea("action GotoSymbol")
find symbol <user.text>$:
    user.idea("action GotoSymbol")
    insert(text)
    key("enter")

#misc
column mode : key("alt-shift-insert")
#split vertically: key("ctrl-alt-v")
settings: key("ctrl-alt-s")
search history: key("alt-shift-o")
move to opposite: key("alt-shift-g")

maximize: key("ctrl-shift-f1")

#David key selection
find in  [<user.text>] :
    key("ctrl-h")
    sleep(500ms)
    insert(text or "")

find [<user.text>] :
    key("ctrl-f")
    sleep(500ms)
    insert(text or "")

replace : key("ctrl-r")
^next$  :  key("ctrl-l")
previous :  key("ctrl-shift-l")

select next :  key("alt-j")
unselect :  key("shift-alt-j")

#select without the requirement to use the find
next raw: key("ctrl-f3")
move to matching :key("ctrl-shift-m")
#and David key selection

#begin documentation
error info: key("shift-f2")
next error: key("ctrl-e")
previous error: key("ctrl-shift-e")
#end documentation
select camel left: user.extend_camel_left()
select camel right: user.extend_camel_right()
go camel left: user.camel_left()
go camel right: user.camel_right()


# Breakpoints / debugging
go breakpoints: user.idea("action ViewBreakpoints")
toggle [line] breakpoint: user.idea("action ToggleLineBreakpoint")
toggle method breakpoint: user.idea("action ToggleMethodBreakpoint")
run menu: user.idea("action ChooseRunConfiguration")
run test: user.idea("action RunClass")
run test again: user.idea("action Rerun")
debug test: user.idea("action DebugClass")
step over: user.idea("action StepOver")
step into: user.idea("action StepInto")
step smart: user.idea("action SmartStepInto")
step to line: user.idea("action RunToCursor")
continue: user.idea("action Resume")
# Grow / Shrink
(grow | shrink) window right: user.idea("action ResizeToolWindowRight")
(grow | shrink) window left: user.idea("action ResizeToolWindowLeft")
(grow | shrink) window up: user.idea("action ResizeToolWindowUp")
(grow | shrink) window down: user.idea("action ResizeToolWindowDown")
