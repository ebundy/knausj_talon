from talon import ctrl, ui, Module, Context, actions, clip, app
from typing import Optional, Tuple, Literal, Sequence

ctx = Context()
mod = Module()


@mod.action_class
class Actions:
    # first : We need to define  a user action function 
	# second:  either we define the implementation here or we can define it 
	#  or override it  in the context  (see below)
#    def move_cursor_dav(position: Tuple[int,int]):   
	def move_cursor_before_word(word: str):    
	    """to do 
		"""
	def insert_text(servers: Tuple[str]):
		"""to do  
		"""

@ctx.action_class("user")
class user_actions:

	def move_cursor_before_word(word: str):        
		print(f'length={len(word)}')
		for _ in range(len(word)):
			actions.key("left")
		
	def insert_text(servers: Tuple[str]):
		print('args'+str(text))		  
		
		