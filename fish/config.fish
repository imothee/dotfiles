# Add Paths
fish_add_path "/opt/homebrew/bin/"
fish_add_path "$HOME/.local/bin/"

# Set env variables
set -U fish_greeting ""

# Init starship
starship init fish | source
# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/tim/.lmstudio/bin
# End of LM Studio CLI section

mise activate fish | source
