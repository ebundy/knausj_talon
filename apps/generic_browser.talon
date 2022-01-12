tag: browser
-
go address: browser.focus_address()
copy address | copyaddress:
    browser.focus_address()
    sleep(50ms)
    edit.copy()
go home: browser.go_home()
go forward | goforward: browser.go_forward() 
go back | goback: browser.go_back()
go to {user.website}: browser.go(website)
go private: browser.open_private_window()

bookmark it: browser.bookmark()
bookmark tabs: browser.bookmark_tabs()
(refresh | reload) it: browser.reload()
(refresh | reload) it hard: browser.reload_hard()

bookmark show: browser.bookmarks()
bookmark bar [show]: browser.bookmarks_bar()
downloads show: browser.show_downloads()
extensions show: browser.show_extensions()
history show: browser.show_history()
cache show: browser.show_clear_cache()
dev tools [show]: browser.toggle_dev_tools()

# Legacy [verb noun] commands to be removed at a later time
show downloads: browser.show_downloads()
show extensions: browser.show_extensions()
show history: browser.show_history()
show cache: browser.show_clear_cache()

#todo - port to apps
# navigating current nave
# help: key(?)
# scroll tiny down: key(j)
# scroll tiny up: key(k)
# scroll left: key(h)
# scroll right: key(l)
# scroll (pop | spring): key(z H)
# scroll push: key(z L)
# scroll top: key(gg)
# scroll (bottom | end): key(G)
# (scroll half down | mini nave): key(d)
# scroll half up: key(u)
# [open] link: key(f)
# [open] link new: key(F)
# copy link: key(y f)
# copy (address | url): key(escape y y)
# (refresh | reload): browser.reload()
# view source: key(g s)
# insert mode: key(i)
# next frame: key(g f)
# main frame: key(g F)
# navigating to new naves
# (open | go) (url | history): key(o)
# (open | go) (url | history) new: key(O)
# (open | go) bookmark: key(b)
# (open | go) bookmark new: key(B)
# using find
# find mode: key(/)
# next match: key(n)
# previous match: key(N)
# navigating history
# history back: key(H)
# history forward: key(L)
# manipulating tabs
# last visited: key(^)
# dupe tab: key(y t)
# restore: key(X)
# search tabs: key(T)
# move to window: key(W)

nave gitlab talon: 
	browser.focus_address()
	sleep(200ms)
	insert("https://github.com/knausj85/knausj_talon/")
	key(enter)
	
nave gitlab my talon: 
	browser.go("https://github.com/ebundy/knausj_talon/")
	
nave blog: 
	browser.go("http://myjavaadventures.com/blog/wp-admin/")
	
nave blog articles: 
	browser.go("http://myjavaadventures.com/blog/wp-admin/edit.php")
	user.move_cursor()
	
nave picard: 
	browser.go("https://www.picard.fr/")
		
nave talon doc: 
	browser.go("https://talon.wiki/unofficial_talon_docs/")
	sleep(3s)
	user.move_cursor_dav(202, 731, 0)	   

	
	
nave gmail David: 
	browser.go("https://mail.google.com/mail/data/u/1/")
	
nave gmail ebundy: 
	browser.go("https://mail.google.com/mail/data/u/0/")
	
nave boursorama : 
	browser.go("https://clients.boursorama.com/connexion/")
