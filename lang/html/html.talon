mode: user.html
mode: user.auto_lang
and code.language: html
-

#settings():
 
# Types Commands
{user.section_heading_elements}: 
	insert("<{section_heading_elements}>") 
#	user.insert_text("bore","anymore")

bit {user.section_heading_elements}: 
    insert("<{section_heading_elements}>") 
	insert("</{section_heading_elements}>") 
	user.move_cursor_before_word("</{section_heading_elements}>")
	
	