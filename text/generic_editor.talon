find it:
    edit.find()

next one:
    edit.find_next()

move left:
    edit.word_left()

move right:
    edit.word_right()

#move on:
#    user.move_on()

#move off:
#    user.move_off()	

left:
    edit.left()

right:
    edit.right()

up:
    edit.up()

down:
    edit.down()
   
go bottom:
    edit.file_end()
    
go top:
    edit.file_start()


# selecting
select line:
    edit.select_line()
    
select all:
    edit.select_all()

step left:
    edit.extend_left()

step right:
    #actions.find('edit.extend_right')
    edit.extend_right()
 
ex up:
    edit.extend_line_up()

ex down:
    edit.extend_line_down()

select word:
    edit.select_word()

ex left:
    edit.extend_word_left()

ex right:
    edit.extend_word_right()

ex way left:
    edit.extend_line_start()

ex way right: 
    edit.extend_line_end()

ex way up:
    edit.extend_file_start()

ex way down:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()


#clear up:
#    edit.extend_line_up()
#    edit.delete()
#
#clear down:
#    edit.extend_line_down()
#    edit.delete()

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

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy left:
    edit.extend_word_left()
    edit.copy()

copy right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

duplic:
    edit.select_line()
    edit.copy()
	key("end")
	key("enter")
	edit.paste()
	key("home")
	
change word:
    edit.select_word()
    edit.copy()
	key("end")
	key("enter")
	edit.paste()
	key("home")	