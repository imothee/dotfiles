# Add Paths
fish_add_path "/opt/homebrew/bin/"
fish_add_path "$HOME/.local/bin/"

# Set env variables
set -U fish_greeting ""

# Init starship
starship init fish | source

# mise — only where installed, so the base stays portable across machines
if type -q mise
    mise activate fish | source
end

# Machine-specific config (gitignored, per-host) — see ~/.config/fish/local.fish
if test -f ~/.config/fish/local.fish
    source ~/.config/fish/local.fish
end
