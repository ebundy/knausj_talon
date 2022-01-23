question [mark]: "?"  
triple quote: "'''"
(triple grave | triple back tick ):
    insert("```")
(comma and | spamma): ", "
plus: "+"
direction: "->"
direction bis: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"

end parent: ")"

bit parent:
	insert("()")
	key(left)
bit (bracket):
	insert("[]")
	key(left)
bit (brace):
	insert("{}")
	key(left)
bit percent:
	insert("%%")
	key(left)
bit (quote):
	insert("''")
	key(left)
bit (quote bis):
    insert('""')
	key(left)
bit (back ticks):
	insert("``")
	key(left)

bit sterisk:
	insert("**")
	key(left)
bit angle:
	insert("<>")
	key(left)

angle (that|dat):
    text = edit.selected_text()
    user.paste("<{text}>")
(bracket) (that|dat):
    text = edit.selected_text()
    user.paste("[{text}]")
(brace) (that|dat):
    text = edit.selected_text()
    user.paste("{{{text}}}")

paren (that|dat) | parenthat | parendat:
    text = edit.selected_text()
    user.paste("({text})")
percen (that|dat) | percenthat| percendat:
    text = edit.selected_text()
    user.paste("%{text}%")
quote (that|dat):
    text = edit.selected_text()
    user.paste("'{text}'")
(quote bis) (that|dat):
    text = edit.selected_text()
    user.paste('"{text}"')
( back tick) (that|dat):
    text = edit.selected_text()
    user.paste('`{text}`')
