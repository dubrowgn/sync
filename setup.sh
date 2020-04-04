#! /bin/bash

root="$(realpath -L "$(dirname "$0")")"
echo $root

ln -fs "$root/bash" "$HOME/.bash"
ln -fs "$root/gitconfig" "$HOME/.gitconfig"
