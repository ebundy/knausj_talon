tag: user.tabs
-
tep prev | teprev: app.tab_previous()
tep nex | tepnex  | tepnix | tep nix: app.tab_next()
tep new: app.tab_open()		
tep close: user.tab_close_wrapper()
tep (reopen): app.tab_reopen()
go tep <number>: user.tab_jump(number)
go tep final: user.tab_final()
tep duplicate: user.tab_duplicate()
