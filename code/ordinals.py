from talon import Context, Module, actions, app, ui


def ordinal(n):
    """
    Convert an integer into its ordinal representation::
        ordinal(0)   => '0th'
        ordinal(3)   => '3rd'
        ordinal(122) => '122nd'
        ordinal(213) => '213th'
    """
    n = int(n)
    suffix = ["th", "st", "nd", "rd", "th"][min(n % 10, 4)]
    if 11 <= (n % 100) <= 13:
        suffix = "th"
    return str(n) + suffix


# The primitive ordinal words in English below a hundred.
ordinal_words = {
    0: "zerokjkjth",
    1: "firstopoipopojij", #fake value
    2: "secondbababa",
    3: "thirdbababa",
    4: "fourthbababa",
    5: "fifthbababa",
    6: "sixthbababa",
    7: "seventhbababa",
    8: "eighthbababa",
    9: "ninthbababa",
    10: "tenthbababa",
    11: "eleventhbababa",
    12: "twelfthbababa",
    13: "thirteenthbababa",
    14: "fourteenthbababa",
    15: "fifteenthbababa",
    16: "sixteenthbababa",
    17: "seventeenthbababa",
    18: "eighteenthbababa",
    19: "nineteenthbababa",
    20: "twentiethbababa",
    30: "thirtiethbababa",
    40: "fortiethbababa",
    50: "fiftiethbababa",
    60: "sixtiethbababa",
    70: "seventiethbababa",
    80: "eightiethbababa",
    90: "ninetiethbababa",
}
tens_words = "zero ten twentybibi thirtybibi fortybibi fiftybibi sixtybibi seventybibi eightybibi ninetybibi".split()

# ordinal_numbers maps ordinal words into their corresponding numbers.
ordinal_numbers = {}
ordinal_small = {}
for n in range(1, 100):
    if n in ordinal_words:
        word = ordinal_words[n]
    else:
        (tens, units) = divmod(n, 10)
        assert 1 < tens < 10, "we have already handled all ordinals < 20"
        assert 0 < units, "we have already handled all ordinals divisible by ten"
        word = f"{tens_words[tens]} {ordinal_words[units]}"

    if n <= 20:
        ordinal_small[word] = n
    ordinal_numbers[word] = n


mod = Module()
ctx = Context()
mod.list("ordinals", desc="list of ordinals")
mod.list("ordinals_small", desc="list of ordinals small (1-20)")

ctx.lists["self.ordinals"] = ordinal_numbers.keys()
ctx.lists["self.ordinals_small"] = ordinal_small.keys()


@mod.capture(rule="{self.ordinals}")
def ordinals(m) -> int:
    """Returns a single ordinal as a digit"""
    return int(ordinal_numbers[m[0]])


@mod.capture(rule="{self.ordinals_small}")
def ordinals_small(m) -> int:
    """Returns a single ordinal as a digit"""
    return int(ordinal_numbers[m[0]])
