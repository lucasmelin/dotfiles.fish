#!/usr/bin/env fish
if test -e ~/.local/share/fonts/JetBrainsMono-Regular.ttf ||
	test -e ~/Library/Fonts/JetBrainsMono-Regular.ttf
	exit 0
end

function install
	curl -Lso /tmp/mono.zip "https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip?fromGitHub"
	unzip -j /tmp/mono.zip '*/ttf/*' -d "$1"
end

switch (uname)
case Darwin
	if command -qs brew
		brew tap -q homebrew/cask-fonts
			and brew install --cask font-jetbrains-mono
	else
		install ~/Library/Fonts
	end
case '*'
	mkdir -p ~/.local/share/fonts/
		and install ~/.local/share/fonts/
	if command -qs fc-cache
		fc-cache -fv
	end
end
