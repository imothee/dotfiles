# Add Paths
fish_add_path "/opt/homebrew/bin/"

# Set env variables
set -U fish_greeting ""

if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
end

# Init starship
starship init fish | source