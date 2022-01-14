from talon import Context, Module, actions, settings

ctx = Context()
mod = Module()
ctx.matches = r"""
mode: user.html
mode: user.auto_lang
and code.language: html
"""
ctx.tags = ["user.code_operators", "user.code_generic"]

mod.list("section_heading_elements", desc="Java Generic Data Structures")
#ctx.lists["self.java_generic_data_structures"] = java_generic_data_structures
 
ctx.lists["self.section_heading_elements"] = { 
    "heading one": "h1",
	"heading two": "h2",
	"heading three": "h3",
    "bold": "b",
}
	# , <a href="#shell-args">Shell Args</a>
	
	