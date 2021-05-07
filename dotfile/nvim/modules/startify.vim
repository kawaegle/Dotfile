let g:startify_session_dir='~/.config/nvim/session/'
let g:startify_change_to_dir= 1
let g:startify_sessions_number=9
let g:startify_session_persistence =1
let g:startify_list =[
					\ { 'type': 'files', 'header':['	Files'] },
					\ { 'type': 'dir', 'header': ['		Current Directory'.getcwd()]},
					\ { 'type': 'bookmarks', 'header': ['	BookMarks'] },
					\ ]

let g:startify_bookmarks=[
			\{ 'c': '~/.config/i3/' },
			\{ 'n': '~/.config/nvim/init.vim'},
			\{ 'z': '~/.zsh/zshrc'},
			\{ 's': 'GIT/setup_arch/start.sh'},
			\]
let g:startify_change_to_dir= 1
let g:startify_sessions_number=9
