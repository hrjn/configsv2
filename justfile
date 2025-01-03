brew_version := `(brew --version | cut -f2 -d ' ')`
bat_theme_dir := `(bat --config-dir)` + "/themes"
git_config := "$HOME/.gitconfig"
zsh_config := "$HOME/.zshrc"
espanso_config_dir := `(espanso path | head -n 1 | grep -o '/Users.*')`
starship_config := "$HOME/.config/starship.toml"
tmux_config := "$HOME/.tmux.conf"
nvim_config_dir := "$HOME/.config/nvim"
fish_config_dir := "$HOME/.config/fish"
ghostty_config_dir := "$HOME/.config/ghostty"

ghostty:
    test -d {{ghostty_config_dir}} || ln -s $(pwd)/ghostty {{ghostty_config_dir}}

fish: fisher
    #!/opt/homebrew/bin/fish
    if type -q atuin
        echo "Setting up atuin..."
        atuin init fish | source
    else
        echo "atuin is not installed"
    end


fisher:
    test -d {{fish_config_dir}} || ln -s $(pwd)/fish {{fish_config_dir}}
    fish -c {{fish_config_dir}}/scripts/install_fisher.fish
    fish -c 'fisher install PatrickF1/fzf.fish'
    fish -c 'fisher install catppuccin/fish'

info:
  @echo "Homebrew" {{brew_version}}

brew:
  brew bundle --force cleanup
  brew bundle install

bat:
  test -d {{bat_theme_dir}} ||  git clone https://github.com/catppuccin/bat {{bat_theme_dir}}
  test -e $(bat --config-file) || @ln -s $(pwd)/bat/config $HOME/.config/bat/config
  cd {{bat_theme_dir}} && git fetch && git pull origin main && cd -
  bat cache --build

git:
  test -e {{git_config}} || ln -s $(pwd)/git/gitconfig {{git_config}}

zsh:
  test -e {{zsh_config}} || ln -s $(pwd)/zsh/zshrc {{zsh_config}}

fzf:
  test -e $HOME/.fzf.zsh || $(brew --prefix)/opt/fzf/install

espanso:
  rm -f "{{espanso_config_dir}}/config/default.yml"
  rm -rf "{{espanso_config_dir}}/match/"
  test -e "{{espanso_config_dir}}/config/default.yml" || ln -s "$(pwd)/espanso/config/default.yml" "{{espanso_config_dir}}/config/default.yml"
  test -d "{{espanso_config_dir}}/match" || ln -s "$(pwd)/espanso/match" "{{espanso_config_dir}}/match"

starship:
  test -e {{starship_config}} || ln -s $(pwd)/starship/starship.toml {{starship_config}}

tmux:
  test -e {{tmux_config}} || ln -s $(pwd)/tmux/tmux.conf {{tmux_config}}

nvim:
  test -d {{nvim_config_dir}} || ln -s $(pwd)/nvim {{nvim_config_dir}}

build: bat git zsh fzf espanso
