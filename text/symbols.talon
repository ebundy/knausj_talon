question [mark]: "?"  
(downscore | underscore): "_"
double dash: "--"
triple quote: "'''"
(triple grave | triple back tick ):
    insert("```")
#(dot dot | dotdot): ".."
ellipses: "..."
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
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
parent that | paren that | parenthat:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste("'{text}'")
(quote bis) that:
    text = edit.selected_text()
    user.paste('"{text}"')
( back tick) that:
    text = edit.selected_text()
    user.paste('`{text}`')

