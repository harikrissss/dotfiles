# dotfiles

My dotfiles for:

- [kitty - terminal emulator](https://sw.kovidgoyal.net/kitty/)
- [Zsh - shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Oh My Posh - prompt theme](https://ohmyposh.dev/)
- [tmux - terminal multiplexer](https://github.com/tmux/tmux)
- [Kanata - keyboard remapper](https://github.com/jtroo/kanata)

## Installation

Install GNU Stow using any package manager.

Clone this repo.

Create symlinks using stow.
```
cd dotfiles
stow .
```

### tmux dependencies

[Tmux plugin manager](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

`Prefix + Shift + I` to load tmux environment.

### Zsh dependencies

[Zap - Zsh plugin manager](https://github.com/zap-zsh/zap)
[Zoxide - as `cd` alternative](https://github.com/ajeetdsouza/zoxide)
