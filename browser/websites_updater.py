from talon import Module, Context

mod = Module()
mod.tag("picard", desc="basic commands for working with tabs within a window are available")

cont = Context()

@mod.action_class
# @ctx.action_class("user")
class user_actions:
	def enable_website(name: str, flag: bool):
		""" to document later"""
		print('became')
		if flag:
			print('true')
			#enable_picard_internal.update()
			cont.tags = [name]
		else:
			print('false')
			cont.tags = []
			
		print('tags='+str(cont.tags))