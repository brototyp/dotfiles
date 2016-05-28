#!/bin/zsh

if [ -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
else
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

create_symlink_if_not_exists() {
	local source_path=$1
	local destination_path=$2
	if [ -L "$destination_path" ]; then
		#echo "$destination_path is a symlink"
	elif [ -f "$destination_path" ]; then
		#echo "$destination_path is a file"
	else
		echo "> ln -s $source_path $destination_path"
		ln -s "$source_path" "$destination_path"
	fi
}

create_symlink_if_not_exists "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogin" "${ZDOTDIR:-$HOME}/.zlogin"
create_symlink_if_not_exists "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout" "${ZDOTDIR:-$HOME}/.zlogout"

create_symlink_if_not_exists "$PWD/.zpreztorc" "${ZDOTDIR:-$HOME}/.zpreztorc"
create_symlink_if_not_exists "$PWD/.zprofile" "${ZDOTDIR:-$HOME}/.zprofile"
create_symlink_if_not_exists "$PWD/.zshenv" "${ZDOTDIR:-$HOME}/.zshenv"
create_symlink_if_not_exists "$PWD/.zshrc" "${ZDOTDIR:-$HOME}/.zshrc"

create_symlink_if_not_exists "$PWD/prompt_superlinh_setup" "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/prompt_superlinh_setup"