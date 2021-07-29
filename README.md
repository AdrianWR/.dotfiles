# Dotfiles

Simple UNIX systems configuration

## About

If not everyone, most of the people like to customize their settings according to personal preferences. When you start to set up your own configurations, it becomes hard to go back to a vanilla plain system, harming your workflow by hours just to readapt a new system to your most comfortable settings.

---

Usually I work with at least three diferent machines: one at work, another one at my home (both running some kind of Linux distribution) and a last one at my programming school (with MacOS). It's expected that each one has some sort of default configuration, far from the ideal one to my necessities. This way, the creation of a Dotfiles repo is useful for tracking the record of every vim, tmux or aliases configuration that I'd implement for myself. More importantly, it becomes easier to get the same (or at least the most of) settings that I could use on all different locations.

This setup is based on clonging the git repository into a `~/.dotfiles` directory. After that, we may be able to run GNU `stow` to symlink the dotfiles on the `$HOME` directory.


## Getting Started

```shell
git clone git@github.com:AdrianWR/Dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow git zsh nvim ...
```
