# configsv2

A bunch of config files to make life better on the tools I use.

## Getting started (Ubuntu)

- [x] Clone this repository
- [x] Install ghostty, a proper terminal.
- [x] Instal `apt`-based packages
  ```shell
  chmod +x ./apt/install.sh
  ./apt/install.sh
  ```
- [x] Install Rust toolchain (`rustup`)
- [x] Install Rust-based tools
  ```shell
  chmod +x ./oxidized-tools/install.sh
  ./oxidized-tools/install.sh
  ```
  To update installed packages, run:
  ```shell
  ./oxidized-tools/install.sh --force
  ```
- [x] Configure the `fish` shell
  ```shell
  just -f justfile-ubuntu fish
  ```
