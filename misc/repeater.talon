# -1 because we are repeating, so the initial command counts as one
#<user.ordinals>: core.repeat_command(ordinals-1)
<number_small> (times|time): core.repeat_command(number_small)
(twice): core.repeat_command(1)
#repeat that <number_small> [times]: core.repeat_command(number_small)
