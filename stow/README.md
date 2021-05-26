# [`Stow`](https://www.gnu.org/software/stow/)

```sh
    ~
    ├── .stow-global-ignore     Ignore files based on dots filenaming scheme
    └── .stowrc                 Set $HOME as default target dir
```

## Install notes

**Important:**
It should be the first package you install as it is reponsible for filtering the
README files and subpackages files trees when you stow a package.  It sets up a
`.stowrc` and `.stow-global-ignore` at `$HOME`. It gets cleaned up after the
dotfiles get installed, if you are using the build script. You will have
to remove them manually, in case you are installing manually.

Edit your $HOME path in [`.stowrc`](.stowrc)
