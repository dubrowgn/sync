#! /bin/bash

root="$(realpath -L "$(dirname "$0")")"

# setup .bash imports
ln -fsT "$root/bash" "$HOME/.bash"
if ! grep -q '/\.bash/\*\.sh' "$HOME/.bashrc"; then
	cat "$root/snippets/bash-import.sh" >> "$HOME/.bashrc";
fi

ln -fs "$root/gitconfig" "$HOME/.gitconfig"
