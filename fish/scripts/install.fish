if functions -q fisher
    echo "Fisher is already installed"
else
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
    fisher install jorgebucaran/fisher
end

# Install plugins
set plugins \
    patrickf1/fzf.fish \
    catppuccin/fish \
    jorgebucaran/nvm.fish

for plugin in $plugins
    fisher install $plugin
end
