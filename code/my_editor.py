from talon import Module, screen, ui, cron, app, actions, ctrl
from talon.canvas import Canvas
from typing import Optional
from datetime import datetime
import os

mod = Module()


@mod.action_class
class Actions:

    def move_on():
        """Press"""
        # Clear any existing drags
        #  self.mouse_drag_end()

        # Start drag
        #ctrl.key_press(ctrl=True, down=True)
        actions.key('shift-ctrl-down')


    def move_off():
        """ Releases"""
        #ctrl.key_press(ctrl=True, up=True)



