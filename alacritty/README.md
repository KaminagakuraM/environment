#### Alacritty terminal

- install alacritty

  - `brew install --cask alacritty`

- download terminal [nerd font](https://www.nerdfonts.com/font-downloads)

  - "Meslo LG" is the font pre-included in this file
  - install chosen font to your computer's font folder

- copy alacritty's repo folder into `~/.config/`

  - uncomment and change the value of `normal.family` to the font you installed \
    in `alacritty.toml`

- install alacritty theme

  - clone the following repo in the same location as `alacritty.toml`
    - `git clone https://github.com/alacritty/alacritty-theme themes`
  - go into `alacritty.toml` and set your theme by uncommentting the `import` \
    line
    - list of themes can be found in `alacritty-theme`'s repo
    - "catppuccin" is the theme included in the file

- install terminal theme
  - `brew install powerlevel10k`
  - to enable p10k include it in `.zshrc` with:
    - `echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc`
      - now `source ~/.zshrc`
    - `p10k configure`
