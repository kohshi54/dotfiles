#!/bin/bash

for dir in *; do
	if [ ! -d "$dir" ]; then
		continue
	fi

	if [[ "$dir" == ".git" || "$dir" == "README.md" ]]; then
		continue
	fi

	stow -t "$HOME" -D -v "$dir"
done
