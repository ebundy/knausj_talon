hello talon: "h29ello world"
#^bin$: key(enter)
boygirlmen	edogdog: 
	key(ralt:down)
	key(-)
	key(ralt:up)

#workaround for Git bash
pipe: 
	key(ralt:down - ralt:up)
	
brace: 
	key(ralt:down ' ralt:up)

end brace: 
	key(ralt:down = ralt:up)

bracket: 
	key(ralt:down ( ralt:up)

(end bracket): 
	key(ralt:down)
	user.press_end_parent()
	key(ralt:up)

backslash: 
	key(ralt:down _ ralt:up)

hash key | hashkey: 
	key(ralt:down " ralt:up)
	
	
#end workaround for Git bash
	
hold <user.modifiers> :
	key("{modifiers}:down")
	
hold off :
	key("alt:up")
	key("ralt:up")
	key("shift:up")
	key("ctrl:up")

run repl:
	user.run_repl()
	
open downloads:
	user.open_downloads()

open usb key:
	user.open_usb_key()

out gmail David:
    insert("davidhaccoun999@gmail.com")

out gmail ebundy :
    insert("ebundy@gmail.com")