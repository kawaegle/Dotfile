#! /bin/bash
DOTDIR=~/.local/share/Dotfile/dotfile
DIR=$DOTDIR/..

if [[ -d $DOTDIR ]];then
	echo "[!] The Dotfile Folder is set at $DOTDIR"
else
	mkdir $DOTDIR
	echo "save your file at $DOTDIR with [Ss]ave"
fi

save(){
	printf "[+] Add ZSH config to your dotfile\n" && cp -r $HOME/.config/zsh $DOTDIR/ && rm -rf $DOTDIR/zsh/hist
	sleep .2
	printf "[+] Add Neovim config to your dotfile\n" && cp -r $HOME/.config/nvim $DOTDIR/ && rm -rf $DOTDIR/nvim/plugins && rm -rf $DOTDIR/nvim/.netrwhist
	sleep .2
	printf "[+] Add dunst config to your dotfile\n" && cp -r $HOME/.config/dunst $DOTDIR/
	sleep .2
	printf "[+] Add i3 config to your dotfile\n" && cp -r $HOME/.config/i3 $DOTDIR/
	sleep .2
	printf "[+] Add compositor config to your dotfile\n" && cp -r $HOME/.config/picom $DOTDIR/
	sleep .2
	printf "[+] Add Ranger config to your dotfile\n" && cp -r $HOME/.config/ranger $DOTDIR/
	sleep .2
	printf "[+] Add Xresources config to your dotfile\n" && cp -r $HOME/.Xresources $DOTDIR/xresources
	sleep .2
	printf "[+] Add Vscode config to your dotfile\n" && cp -r $HOME/.config/Code\ -\ OSS/User/settings.json $DOTDIR/vscode_settings.json
	sleep .2

	printf "[!] Dotfile Saved\n"
	sleep 2
	printf "\n\n[?] Do you want to push your dotfile to your repo ? [Y/n]"
	read yn
	if [[ $yn == "Y" || $yn == "y"|| $yn == "yes" || $yn == "YES" || $yn == "Yes" || $yn == "" ]]; then
		update
	fi
}

restore(){
	printf "[+] Restore ZSH\n" && cp -r $DOTDIR/zsh $HOME/.config/zsh && ln -sf $HOME/.config/zsh/zshrc $HOME/.zshrc
	sleep .2
	printf "[+] Restore Neovim\n" && cp -r $DOTDIR/nvim $HOME/.config/nvim
	sleep .2
	printf "[+] Restore dunst\n" && cp -r $DOTDIR/dunst $HOME/.config/dunst
	sleep .2
	printf "[+] Restore i3\n" && cp -r $DOTDIR/i3 $HOME/.config/i3
	sleep .2
	printf "[+] Restore compositor\n" && cp -r $DOTDIR/picom $HOME/.config/picom
	sleep .2
	printf "[+] Restore Ranger\n" && cp -r $DOTDIR/ranger $HOME/.config/ranger
	sleep .2
	printf "[+] Restore Xresources\n" && cp -r $DOTDIR/xresources $HOME/.Xresources
	sleep .2
	printf "[+] Restore Vscode\n" && cp -r $DOTDIR/vscode_settings.json $HOME/.config/Code\ -\ OSS/User/settings.json
	sleep .2

	printf "[!] Dotfile restored"
}

update(){
	(
		cd $DIR
		git add .
		git commit -m "Add some Dotfile"
		git push origin master
	)
}

printf "[!] Press [return] to continue."
read

if [[ $1 == [sS]ave || $1 == [sS] ]];then
	save
elif [[ $1 == [rR]estore || $1 == [rR] ]]; then
	restore
elif [[ $1 == [uU]pdate || $1 == [uU] ]]; then
	update
else
	printf "Usage:\n\t[sS]ave\n\t[rR]estore\n\t[uU]pdate\n"
fi 
