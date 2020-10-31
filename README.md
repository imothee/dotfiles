# Setup dotfiles

These dotfiles use [Stow](https://www.gnu.org/software/stow/manual/stow.html) to manage the symlinks in your home directory.

It is expected that you will be using zsh, tmux and zprezto to manage your zshell.

### Initial Setup

Checkout the git repository into ~/.dotfiles

```
git clone git@github.com:imothee/dotfiles.git .dotfiles
```

### Setup or update the submodules (tmux and zprezto)

Do this on first install or regularly to keep them up to date

```
git submodule update --init --recursive
git submodule foreach --recursive git fetch
git submodule foreach git merge origin master
```

### Stow the packages

By default to the parent of the current folder so within ~/.dotfiles run

```
stow tmux zprezto
```
