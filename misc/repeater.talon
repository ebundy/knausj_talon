# -1 because we are repeating, so the initial command counts as one
#<user.ordinals>: core.repeat_command(ordinals-1)
#<number_small> (time): core.repeat_command(number_small)

<number_small> time: core.repeat_command(number_small)
#tree time: core.repeat_command(3)
twice: core.repeat_command(1)
onetime|one time: core.repeat_command(1)
totime|twotime|two time: core.repeat_command(2)
threetime|three time: core.repeat_command(3)
fourtime|four time: core.repeat_command(4)
fivetime|five time: core.repeat_command(5)
sixtime| six time: core.repeat_command(6)
seventime| seven time: core.repeat_command(7)
eighttime| eight time: core.repeat_command(8)
ninetime| nine time: core.repeat_command(9)
tentime| ten time: core.repeat_command(10)
manytime: core.repeat_command(30)


#repeat that <number_small> [times]: core.repeat_command(number_small)





