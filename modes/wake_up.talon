#defines the commands that sleep/wake Talon
mode: all
-
^talon on$:
    speech.enable()
    user.mouse_wake()
   # user.history_enable()
    user.talon_mode()

^talon off$:
    user.switcher_hide_running()
   # user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
#^zero mode [<phrase>]$: speech.disable()
#^one mode$ : speech.enable()
