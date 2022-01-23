            mode: dictation
-
^press <user.keys>$: key("{keys}")

# Everything here should call auto_insert to preserve the state to correctly auto-capitalize/auto-space.
<user.prose>: auto_insert(prose)
enter: "\n"

cap <user.word>:
    result = user.formatted_text(word, "CAPITALIZE_FIRST_WORD")
    auto_insert(result)
    
# Navigation
#go up <number_small> (line|lines):
#    edit.up()
#    repeat(number_small - 1)
#go down <number_small> (line|lines):
#    edit.down()
#    repeat(number_small - 1)
#go left <number_small> (word|words):
#    edit.word_left()
#    repeat(number_small - 1)
#go right <number_small> (word|words):
#    edit.word_right()
#    repeat(number_small - 1)
#go line start: edit.line_start()
#go line end: edit.line_end()
 
# misc
<number_small> (times|time): core.repeat_command(number_small)
twice: core.repeat_command(1)
paste it: edit.paste()
pastit: edit.paste()
undo it: edit.undo()
un do it: edit.undo()
undoit: edit.undo()
redo it: edit.redo()
copy it: edit.copy()
copyit: edit.copy()
cudit: edit.cut()
space: key(space)
trash: key(backspace)    
^escape$: key(escape)

# Selection
ex left :
    edit.extend_word_left()
    
ex right :
    edit.extend_word_right()
     
move left:
    edit.word_left()

move right:
    edit.word_right()

go left:
    edit.left()

go right:
    edit.right()

go up:
    edit.up()

go down:
    edit.down()
	
	
go home: edit.line_start()
go end: edit.line_end()

clear line:
    edit.delete_line()
	
clear word:
    edit.delete_word()

clear left:
    edit.extend_word_left()
    edit.delete()

clear right:
    edit.extend_word_right()
    edit.delete()

clear way left:
    edit.extend_line_start()
    edit.delete()

clear way right:
    edit.extend_line_end()
    edit.delete()

clear way up:
    edit.extend_file_start()
    edit.delete()

clear way down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()
	 
#select left <number_small> (character|characters):
#    edit.extend_left()
#    repeat(number_small - 1)
#select right <number_small> (character|characters):
#    edit.extend_right()
#    repeat(number_small - 1)
#clear left <number_small> (word|words):
#    edit.extend_word_left()
#    repeat(number_small - 1)
#    edit.delete()
#clear right <number_small> (word|words):
#    edit.extend_word_right()
#    repeat(number_small - 1)
#    edit.delete()
#clear left <number_small> (character|characters):
#    edit.extend_left()
#    repeat(number_small - 1)
#    edit.delete()
#clear right <number_small> (character|characters):
#    edit.extend_right()
#    repeat(number_small - 1)
#    edit.delete()

# Formatting
formatted <user.format_text>:
    user.dictation_insert_raw(format_text)
^format selection <user.formatters>$:
    user.formatters_reformat_selection(formatters)

# Corrections 
scratch that: user.clear_last_phrase()
scratch selection: edit.delete()
select that: user.select_last_phrase()
#spell <user.letters>: insert("{letters}") 
#spell that <user.formatters> <user.letters>:
    #result = user.formatted_text(letters, formatters)
 #	#   user.dictation_insert_raw(result)

# Escape, type things that would otherwise be commands
^escape <user.text>$:
    auto_insert(user.text)
