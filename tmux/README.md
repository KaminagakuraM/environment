#### Tmux Configuration

- Install Tmux.

  - `brew install tmux`

- Move `tmux.toml` into your computer's `~/.config/tmux` folder. You can create \
  said folder if it was not automatically created when installing tmux.

- Source tmux config.

  - `tmux source-file ~/.config/tmux/tmux.conf`

- Make sure to install plugins from `tmux.conf` file using `prefix + I`, while \
  in a tmux session.

  - Prefix is set to `control + a`.
