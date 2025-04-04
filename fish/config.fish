# => [START] Theme
fish_config theme choose "Catppuccin Mocha"

if status is-interactive
    atuin init fish | source
end

# => Variables
set -Ux CONFIG_DIR "$HOME/.config/fish"
set -Ux EDITOR "nvim"

# => Bindings
# bind \t accept-autosuggestion # -----------------------------------------> TAB to accept suggested completion

# => Abbreviations
# source $CONFIG_DIR/fish/custom_functions/abbrs.fish

# => Other custom functions
#source $CONFIG_DIR/fish/functions/utils.fish

# => fzf.fish
# - Directory search: Ctrl+F
# - Process search: Ctrl+T
# - Git logs search: Ctrl+G
# fzf_configure_bindings --directory=\cf --processes=\ct --git_log=\cg

# => Path updates
# fish_add_path "/opt/homebrew/bin" # ------------------------------------> Homebrew binaries
# fish_add_path "$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin" # --------> GNU coreutils
# fish_add_path '/usr/local/texlive/2024/bin/universal-darwin' # ---------> TexLive
fish_add_path "$HOME/.cargo/bin" # -------------------------------------> Cargo
# fish_add_path "/Users/harizo/.nvm/versions/node/v22.13.1/bin" # --------> nvm


# => [END] Starship.rs
starship init fish | source
