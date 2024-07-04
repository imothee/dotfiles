# Add Paths
fish_add_path "/opt/homebrew/bin/"

# Set env variables
set -U fish_greeting ""

# If Interactive
if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q TMUX
        exec tmux
    end
end

if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
end

# Init starship
starship init fish | source