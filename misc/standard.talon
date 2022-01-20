#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
move up | movup : edit.page_up()
move down | movdown: edit.page_down()
copy it: edit.copy()
copyit: edit.copy()
cudit: edit.cut()

paste it: edit.paste()
pastit: edit.paste()
undo it: edit.undo()
redo it: edit.redo()
paste match: edit.paste_match_style()
^save$: edit.save()
trash: key(backspace)    
(indent): 
	insert("  ") 
	key(left)  
#slap: edit.line_insert_down()      