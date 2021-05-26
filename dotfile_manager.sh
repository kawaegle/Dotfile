#! /bin/bash
DOTDIR=~/GIT/Dotfile/dotfile

if [[ -d $DOTDIR ]];then
	echo "[!] The Dotfile Folder is set at $DOTDIR"
else
	mkdir $DOTDIR
	echo "save your file at $DOTDIR with [rR]estore"
fi

save(){
	printf "[+] Add ZSH config to your dotfile\n" && cp -r $HOME/.zsh $DOTDIR/
	printf "[+] Add Neovim config to your dotfile\n" && cp -r $HOME/.config/nvim $DOTDIR/ && rm -rf $DOTDIR/nvim/plugins
	printf "[+] Add dunst config to your dotfile\n" && cp -r $HOME/.config/dunst $DOTDIR/
	printf "[+] Add i3 config to your dotfile\n" && cp -r $HOME/.config/i3 $DOTDIR/
	printf "[+] Add compositor config to your dotfile\n" && cp -r $HOME/.config/picom $DOTDIR/
	printf "[+] Add Ranger config to your dotfile\n" && cp -r $HOME/.config/ranger $DOTDIR/
	printf "[+] Add Xresources config to your dotfile\n" && cp -r $HOME/.Xresources $DOTDIR/xresources
	printf "[+] Add Vscode config to your dotfile\n" && cp -r $HOME/.config/Code\ -\ OSS/User/settings.json $DOTDIR/vscode_settings.json
	(
		cd ~/GIT/Dotfile/
		git add .
		git commit -m "Add some Dotfile"
		git push origin master
	)
}

restore(){
	printf "[+] Restore ZSH" && cp -r $DOTDIRzsh $HOME/.zsh && ln -sf $HOME/.zsh/zshrc $HOME/.zshrc
	printf "[+] Restore Neovim" && cp -r $DOTDIRnvim $HOME/.config/nvim
	printf "[+] Restore dunst" && cp -r $DOTDIRdunst $HOME/.config/dunst
	printf "[+] Restore i3" && cp -r $DOTDIRi3 $HOME/.config/i3
	printf "[+] Restore compositor" && cp -r $DOTDIRpicom $HOME/.config/picom
	printf "[+] Restore Ranger" && cp -r $DOTDIRranger $HOME/.config/ranger
	printf "[+] Restore Xresources" && cp -r $DOTDIRxresources $HOME/.Xresources
	printf "[+] Restore Vscode" && cp -r $DOTDIRvscode_settings.json $HOME/.config/Code\ -\ OSS/User/settings.json

	printf "[!] Dotfile restored"
}

if [[ $1 == [sS]ave ]] || [[ $1 == [sS] ]];then
	save
elif [[ $1 == [rR]estore ]] || [[ $1 == [rR] ]]; then
	restore
else
	printf "Usage:\n\tTo save: [sS]ave\n\tTo restore: [rR]estore\n"
fi 