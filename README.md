# Setup dotfiles

These dotfiles use [Stow](https://www.gnu.org/software/stow/manual/stow.html) to manage the symlinks in your home directory.

These dotfiles assume you are using fish and starship (and kitty instead of tmux)

### Initial Setup

Checkout the git repository into ~/.dotfiles

```
git clone git@github.com:imothee/dotfiles.git .dotfiles
```

### Stow the packages

By default to the parent of the current folder so within ~/.dotfiles run

```
stow -t ~/.config starship
stow -t ~/.config/fish fish
```
