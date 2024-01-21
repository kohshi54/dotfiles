#!/bin/bash

for dir in *; do
	if [ ! -d "$dir" ]; then
		continue
	fi

	if [[ "$dir" == ".git" || "$dir" == "README.md" ]]; then
		continue
	fi

	stow -t "$HOME" -v "$dir"
done

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

chsh -s $(which zsh)
exec zsh
source ~/.zshrc

