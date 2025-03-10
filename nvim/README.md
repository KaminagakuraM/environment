#### Neovim

- Install Neovim using your prefered method, I use brew in this config:

  - `brew install neovim`

- Download these required packages to your system using `brew install`:

  - `node`, `npm`, `ripgrep`, `pngpaste`, `luarocks`, `fd`

- Copy the `nvim` repo folder into your `~/.config` folder.

#### Important

- Copilot and Copilot-cmp are installed in this configuration. Make sure to \
  run `:Copilot auth` to link your account; otherwise, remove both copilot \
  plugins and all copilot mentions throghout the config files (you can do so \
  easily with telescope).
