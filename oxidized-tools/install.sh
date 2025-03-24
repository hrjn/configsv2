#!/bin/bash

force=false

# Update Rust toolchain (requires rustup to be installed)
rustup install stable
rustup default stable

# Install additional dependencies (Ubuntu)
apt_packages=(
    "libxcb1-dev"
    "libxcb-render0-dev"
    "libxcb-shape0-dev"
    "libxcb-xfixes0-dev"
)
for package in "${apt_packages[@]}"; do
    sudo apt install "$package"
done

# Install tools
tools=(
    "atuin" # -----------------------------> Shell history
    "bat" # -------------------------------> A better cat
    "bottom" # ----------------------------> A better top
    "du-dust" # ---------------------------> A better du
    "eza" # -------------------------------> A better ls
    "hexyl" # -----------------------------> Hex viewer
    "jless" # -----------------------------> JSON exploration (/!\ requires additional deps)
    "just" # ------------------------------> Command runner
    "procs" # -----------------------------> A better ps
    "ripgrep" # ---------------------------> A better grep
    "starship" # --------------------------> Terminal prompt
)
while [[ "$1" == "--force" ]]; do
    force=true
    shift
done
for tool in "${tools[@]}"; do
    if $force; then
        cargo install "$tool" --force
    else
        cargo install "$tool"
    fi
done
