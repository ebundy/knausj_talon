from talon import Module, Context

mod = Module()
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
			
