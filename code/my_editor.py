from talon import Module, actions

mod = Module()


@mod.action_class
class Actions:

    def extend_line_down(count: int):
        """Press"""
        # Clear any existing drags
        #  self.mouse_drag_end()
        for i in range(0, 3):

            pass
        # Start drag
        # ctrl.key_press(ctrl=True, down=True)
        actions.key('shift-ctrl-down')

    def move_off():
        """ Releases"""

        # ctrl.key_press(ctrl=True, up=True)
