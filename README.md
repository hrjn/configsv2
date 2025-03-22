# configsv2

A bunch of config files to make life better on the tools I use.

## Getting started (Ubuntu)

- [x] Clone this repository
- [x] Install ghostty, a proper terminal.
- [-] Instal `apt`-based packages
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
- [ ] Configure the `fish` shell
  - [x] Install the fisher plugin manager
      ```shell
      fish fish/install_fisher.fish
      ```
  - [x] Install fish plugins from file
      ```
      shell
