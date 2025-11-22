# My dotfiles

> [!CAUTION]
> `./setup` only works on Arch and Gentoo at the moment.

## Setup

To setup everything just run:
```bash
./setup everything
```

This will install all programs and link the configs to `~/.config`.

If you wish to just install or link, you can run:
```bash
./setup install all
# or
./setup link all
```

If you just want to install or link certain programs and their configs, run:
```bash
./setup install # zsh kitty nvim hypr tmux starship fonts extras
# or
./setup link # zsh kitty nvim hypr tmux starship fonts extras
```

> [!NOTE]
> Certain programs depend on other programs, so required dependencies will be installed even if you don't specify. (ie. zsh requires starship). If you choose to install and link only zsh, then you will get a default starship prompt.
