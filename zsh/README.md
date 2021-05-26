# [`Zoomer Shell`](https://www.zsh.org/)

```custom
~
├── .config
│   └── zsh
│       └── .zshrc                      zsh interactive shell conf file 
├── .local
│    └── share  
│        └── zsh
│            └── plugins
│                └── cursor_mode        changes cursor depending on the vi mode
└── .zshenv                             main zsh profile file, used to load env variables
```

## Install notes

If you are installing this manually, remember to clone these 2 repositories:

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)

like shown below:

```sh
# for auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.local/share/zsh/plugins/

# for syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.local/share/zsh/plugins/
```

### And no I don't use `Oh-my-zsh`
