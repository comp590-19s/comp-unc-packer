# COMP590 VM Builder

Using packer, this repo will build an Ubuntu 18.04 Bionic Virtual Box image for Docker from scratch. It is based on [Phillip Bailey](https://github.com/p0bailey)'s starter setup in his [packer-templates](https://github.com/p0bailey/packer-templates/tree/master/ubuntu-18.04) repository.

Beyond the base ubuntu install, the following customizations are added:

- g++, gcc, gdb, valgrind
- git
- Rust
- vim with plugins
  - YouCompleteMe with rust / c support
  - Syntactic for syntax checking
  - Surround
  - Limelight status bar
  - gruvbox theme
  - gitgutter for git information 
  - NERDTree with Control+o used for toggling sidebar
- latex (texlive), pandoc
- graphviz

Additionally, modest .vimrc and .bash_profile are installed to place cargo/rust tooling in the path and configure a nice starting point for vim.
