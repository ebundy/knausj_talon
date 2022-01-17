from talon import Module, Context, actions

ctx = Context()
mod = Module()

mod.apps.jetbrains = "app.name: /jetbrains/"
mod.apps.jetbrains = "app.name: IntelliJ IDEA"
mod.apps.jetbrains = "app.name: PyCharm"
mod.apps.jetbrains = "app.name: WebStorm"
mod.apps.jetbrains = "app.name: RubyMine"
mod.apps.jetbrains = "app.name: RubyMine-EAP"
mod.apps.jetbrains = "app.name: DataGrip"
mod.apps.jetbrains = """
os: mac
and app.bundle: com.google.android.studio
"""
# windows
mod.apps.jetbrains = "app.exe: idea64.exe"
mod.apps.jetbrains = "app.exe: PyCharm64.exe"
mod.apps.jetbrains = "app.exe: pycharm64.exe"
mod.apps.jetbrains = "app.exe: webstorm64.exe"
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.pycharm
"""
mod.apps.jetbrains = """
os: windows
and app.name: JetBrains Rider
os: windows
and app.exe: rider64.exe
"""

ctx.matches = r"""
app: jetbrains
"""


@ctx.action_class("app")
class AppActions:
    def tab_next():
        actions.key("ctrl-pagedown")

    def tab_previous():
        actions.key("ctrl-pageup")

    def tab_close():
        actions.key("ctrl-w")

    def tab_reopen():
        actions.key("ctrl-shift-x")


@ctx.action_class("code")
class CodeActions:
    # talon code actions
    def toggle_comment():
        actions.user.idea("action CommentByLineComment")


@ctx.action_class("edit")
class EditActions:
    # talon edit actions

    def find_next():
        actions.user.idea("action FindNext")

    def find_previous():
        actions.user.idea("action FindPrevious")

    def find(text: str = None):
        actions.user.idea("action Find")

        #    def line_clone():
        actions.user.idea("action EditorDuplicate")

    def line_swap_down():
        actions.user.idea("action MoveLineDown")

    def line_swap_up():
        actions.user.idea("action MoveLineUp")

    def indent_more():
        actions.user.idea("action EditorIndentLineOrSelection")

    def indent_less():
        actions.user.idea("action EditorUnindentSelection")

    #    def select_line(n: int = None):
    #        actions.user.idea("action EditorSelectLine")
    #
    #    def select_word():
    #        actions.user.idea("action EditorSelectWord")
    #
    #    def select_all():
    #        actions.user.idea("action $SelectAll")
    #
    #    def file_start():
    #        actions.user.idea("action EditorTextStart")
    #
    # def file_end():
    ##    actions.user.idea("action EditorTextEnd")
    #    def extend_file_start():
    #        actions.user.idea("action EditorTextStartWithSelection")
    #
    #    def extend_file_end():
    #        actions.user.idea("action EditorTextEndWithSelection")
    #
    #    def extend_word_left():
    #        actions.user.idea("action EditorPreviousWordWithSelection")
    #    def extend_word_right():
    #        actions.user.idea("action EditorNextWordWithSelection")

    def jump_line(n: int):
        actions.key("ctrl-g")
        actions.sleep("400ms")
        actions.insert(str(n))
        actions.key("enter")
        actions.sleep("300ms")


@ctx.action_class("win")
class WinActions:
    def filename():
        title = actions.win.title()
        result = title.split(" ")

        # iterate over reversed result
        # to support titles such as
        # Class.Library2 – a.js
        for word in reversed(result):
            if "." in word:
                return word

        return ""


@ctx.action_class("user")
class UserActions:
    def tab_jump(number: int):
        # depends on plugin GoToTabs
        if number < 10:
            actions.user.idea("action GoToTab{}".format(number))

    def extend_until_line(line: int):
        actions.user.idea("extend {}".format(line))

    def extend_camel_left():
        actions.user.idea("action EditorPreviousWordInDifferentHumpsModeWithSelection")

    def extend_camel_right():
        actions.user.idea("action EditorNextWordInDifferentHumpsModeWithSelection")

    def camel_left():
        actions.user.idea("action EditorPreviousWordInDifferentHumpsMode")

    def camel_right():
        actions.user.idea("action EditorNextWordInDifferentHumpsMode")

    def line_clone(line: int):
        actions.user.idea("clone {}".format(line))

    # multi-cursor tag functions
    def multi_cursor_enable():
        actions.skip()

    def multi_cursor_disable():
        actions.key("escape")

    def multi_cursor_add_above():
        actions.user.idea("action EditorCloneCaretAbove")

    def multi_cursor_add_below():
        actions.user.idea("action EditorCloneCaretBelow")

    def multi_cursor_select_fewer_occurrences():
        actions.user.idea("action UnselectPreviousOccurrence")

    def multi_cursor_select_more_occurrences():
        actions.user.idea("action SelectNextOccurrence")

    # def multi_cursor_skip_occurrence():
    def multi_cursor_select_all_occurrences():
        actions.user.idea("action SelectAllOccurrences")

    def multi_cursor_add_to_line_ends():
        actions.user.idea("action EditorAddCaretPerSelectedLine")

    # splits tag functions
    # def split_window_right():
    #     actions.user.idea("action OpenInRightSplit")
    # def split_window_left():
    # def split_window_down():
    # def split_window_up():
    def split_window_vertically():
        actions.user.idea("action SplitVertically")

    def split_window_horizontally():
        actions.user.idea("action SplitHorizontally")

    def split_flip():
        actions.user.idea("action ChangeSplitOrientation")

    # def split_window():
    def split_clear():
        actions.user.idea("action Unsplit")

    def split_clear_all():
        actions.user.idea("action UnsplitAll")

    def split_next():
        actions.user.idea("action NextSplitter")
    # def split_last():
    # def split_number(index: int):
