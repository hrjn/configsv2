brew_version := `(brew --version | cut -f2 -d ' ')`
bat_theme_dir := `(bat --config-dir)` + "/themes"
git_config := "$HOME/.gitconfig"
zsh_config := "$HOME/.zshrc"

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
  test -e {{zsh_config}} || ln -s $(pwd)/zsh/zshrc {{zsh_config}}

fzf:
  test -e $HOME/.fzf.zsh || $(brew --prefix)/opt/fzf/install

build: bat git zsh fzf