brew_version := `(brew --version | cut -f2 -d ' ')`
bat_theme_dir := `(bat --config-dir)` + "/themes"
git_config := "$HOME/.gitconfig"

info:
  @echo "Homebrew" {{brew_version}}

brew:
  brew bundle

bat:
  test -d {{bat_theme_dir}} ||  git clone https://github.com/catppuccin/bat {{bat_theme_dir}}
  test -e $(bat --config-file) || @ln -s $(pwd)/bat/config $HOME/.config/bat/config
  cd {{bat_theme_dir}} && git fetch && git pull origin main && cd -
  bat cache --build

git:
  test -e {{git_config}} || ln -s $(pwd)/git/gitconfig {{git_config}}
  
zsh:
  @ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

fzf:
  @$(brew --prefix)/opt/fzf/install