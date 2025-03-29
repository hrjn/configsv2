#!/bin/bash

# Add non-default repositories
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt-add-repository -y ppa:fish-shell/release-4
sudo apt update
apt_packages=(
    "pkg-config"
    "libssl-dev"
    "tailscale"
    "git"
    "curl"
    "build-essential"
    "cmake"
    "fish"
    "fzf"
    "tmux"
)
for package in "${apt_packages[@]}"; do
    sudo apt -y install "$package"
done
