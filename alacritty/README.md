#### Alacritty Configuration

- Install Alacritty using your prefered method, I use brew in this config:

  - `brew install --cask alacritty`

- Download terminal [nerd font](https://www.nerdfonts.com/font-downloads).

  - "Meslo LG" is the font used in this config.

  - Install chosen font to your computer's font folder.

- Move `alacritty.toml` into your computer's `~/.config/alacritty` folder. You \
  can create said folder if it was not automatically created when installing Alacritty.

  - If needed, change the value of `normal.family` to the font you installed \
    in `alacritty.toml`.

- Configure Alacritty theme.

  - Clone the following repo in the same location as `alacritty.toml`.

    - `git clone https://github.com/alacritty/alacritty-theme themes`

  - Go into `alacritty.toml` and set your theme by uncommentting the `import` \
    line.

    - List of themes can be found in [alacritty-theme's](https://github.com/alacritty/alacritty-theme) repository.

    - "Catppuccin" is the theme used in the config.
