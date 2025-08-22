# dotfiles

My dotfiles for:

- [Kanata](https://github.com/jtroo/kanata) - kb remapper
- [kitty](https://sw.kovidgoyal.net/kitty/) - terminal emulator
- [neovim](https://github.com/neovim/neovim/) - text editor
- [Oh My Posh](https://ohmyposh.dev/) - prompt theme
- [tmux](https://github.com/tmux/tmux) - terminal multiplexer
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) - shell

## Installation

Install GNU Stow using any package manager.

Clone this repo using these additional flags:
```
git clone --recurse-submodules --remote-submodules
```

Create symlinks using stow.
```
cd dotfiles
stow .
```

### Dependencies

#### tmux

[Tmux plugin manager](https://github.com/tmux-plugins/tpm) - plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

`Prefix + Shift + I` to load tmux environment.

#### Zsh

- [Zap](https://github.com/zap-zsh/zap) - plugin manager
- [Zoxide](https://github.com/ajeetdsouza/zoxide) - `cd` alternative
