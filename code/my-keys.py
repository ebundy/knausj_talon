from typing import Set

from talon import Module, Context, actions, app
import sys

default_alphabet = ("atos black clyde dany eric fox glen hank ivan jack kent " 
					"luka mac nix opi pat quack rob smith tex "
					"usher vick west xi yugi zoko"
                    ).split(" ")

letters_string = "abcdefghijklmnopqrstuvwxyz"

default_digits = "zero one two three four five six seven eight nine".split(" ")
numbers = [str(i) for i in range(10)]
numbers_one_to_nine = "zero one two three four five six seven eight nine".split(" ")
default_f_digits = "one two three four five six seven eight nine decade eleven twelve".split(
    " "
)

mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol_key", desc="All symbols from the keyboard")
mod.list("arrow_key", desc="All arrow keys")
mod.list("number_key", desc="All number keys")
mod.list("numbers_one_to_nine", desc="numbers from 1 to 9")
mod.list("modifier_key", desc="All modifier keys")
mod.list("function_key", desc="All function keys")
mod.list("special_key", desc="All special keys")
mod.list("punctuation", desc="words for inserting punctuation into text")



ctx = Context()
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet

#
~p
for NoneNonefor while :
self
while
	import class """"""""":
