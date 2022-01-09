question [mark]: "?"  
(downscore | underscore): "_"
double dash: "--"
(brace | left brace): "{"
(rbrack | are brace | right brace): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
shaft: "->"
dub shaft: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
(inside parent):
	insert("()")
	key(left)
inside (bracket):
	insert("[]")
	key(left)
inside (brace):
	insert("{}")
	key(left)
inside percent:
	insert("%%")
	key(left)
inside (quote):
	insert("''")
	key(left)
inside (dubquote):
    insert('""')
	key(left)
inside (back ticks):
	insert("``")
	key(left)

inside sterisk:
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
(dubquote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(grave | back tick) that:
    text = edit.selected_text()
    user.paste('`{text}`')

