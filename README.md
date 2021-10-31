<p align="center">
  <img alt="header image" src="https://raw.githubusercontent.com/caarlos0/dotfiles.fish/master/docs/header.svg" height="350" />
  <h2 align="center">lucasmelin's dotfiles</h2>
  <p align="center">Config files for Fish, Editors, Terminals and more.</p>
</p>

---

## Installation

### Dependencies

First, make sure you have all those things installed:

- `git`: to clone the repo
- `curl`: to download some stuff
- `tar`: to extract downloaded stuff
- `fish`: the shell
- `sudo`: some configs may need that

### Install

Then, run these steps:

```console
$ git clone https://github.com/lucasmelin/dotfiles.fish.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./script/bootstrap.fish
```

> All changed files will be backed up with a `.backup` suffix.

#### Update

To update, you just need to `git pull` and run the bootstrap script again:

```console
$ cd ~/.dotfiles
$ git pull origin master
$ ./script/bootstrap.fish
```

## Revert

Reverting is not totally automated, but it pretty much consists in removing
the fish config and dotfiles folder, as well as moving back some config files.

**Remove the folders:**

```console
$ rm -rf ~/.dotfiles ~/.config/fish
```

**Some config files were changed, you can find them using `fd`:**

```console
$ fd -e backup -e local -H -E Library -d 3 .
```

And then manually inspect/revert them.

## Recommended Software

For macOS, I recommend:

- iTerm: a better terminal emulator;

For both Linux and macOS:

- [`bat`](https://github.com/sharkdp/bat) a `cat` with wings;
- [`delta`](https://github.com/dandavison/delta) for better git diffs;
- [`dog`](https://dns.lookup.dog) the command-line DNS client;
- [`exa`](https://the.exa.website) a modern replacement for `ls`;
- [`fd`](https://github.com/sharkdp/fd) a simple, fast and user-friendly alternative to `find`;
- [`fzf`](https://github.com/junegunn/fzf) for a fuzzy-finder, used in `,t` on vim, for example;
- [`gh`](https://github.com/cli/cli) for more GitHub integration with the terminal;
- [`grc`](https://github.com/garabik/grc) to colorize command's outputs;
- [`starship.rs`](https://starship.rs) the shell we are using;
- [`kubectx`](https://github.com/ahmetb/kubectx) for better Kubernetes context and namespace switch;
- [`ripgrep`](https://github.com/BurntSushi/ripgrep) a faster `grep`;
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) a smarter `cd` command;

To install them all with `brew`:

```console
$ brew install fish bat git-delta dog exa fd fzf gh grc kubectx ripgrep starship zoxide
```

On Ubuntu:

```console
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install unzip fish grc fzf bat delta exa gh fd-find ripgrep zoxide
```

## Windows Terminal

Add the Dracula theme to the Windows Terminal `settings.json` in the `schema` section:

```json
{
  "background": "#282A36",
  "black": "#21222C",
  "blue": "#BD93F9",
  "brightBlack": "#6272A4",
  "brightBlue": "#D6ACFF",
  "brightCyan": "#A4FFFF",
  "brightGreen": "#69FF94",
  "brightPurple": "#FF92DF",
  "brightRed": "#FF6E6E",
  "brightWhite": "#FFFFFF",
  "brightYellow": "#FFFFA5",
  "cursorColor": "#F8F8F2",
  "cyan": "#8BE9FD",
  "foreground": "#F8F8F2",
  "green": "#50FA7B",
  "name": "Dracula",
  "purple": "#FF79C6",
  "red": "#FF5555",
  "selectionBackground": "#44475A",
  "white": "#F8F8F2",
  "yellow": "#F1FA8C"
},
```

then set the font and theme as the defaults:

```json
"defaults": {
            "colorScheme": "Dracula",
            "fontFace": "JetBrainsMono NF"
        },
```

## Themes and fonts being used

Theme is **[Dracula](https://draculatheme.com)** and font is **Jetbrains Mono**.

## Screenshots

![screenshot 1][scrn1]

![screenshot 2][scrn2]

[scrn1]: /docs/screenshot1.png
[scrn2]: /docs/screenshot2.png
