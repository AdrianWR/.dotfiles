# Dotfiles
Simple UNIX systems configuration

## About
I think everybody likes to customize your settings according to personal preferences. When you start to set up your own configurations, it becomes hard to go back to a vanilla plain system, harming your workflow by hours just to readapt a new system to your most comfortable settings.

---

Usually I work with at least three diferent machines: one at work, another one at my home (both running some kind of Linux distrubution) and a last one at my programming school (with MacOS). It's expected that each one has some sort of default configuration, far from the ideal one to my necessities. This way, the creation of a Dotfiles repo is useful for tracking the record of every vim, tmux or aliases configuration that I'd implement for myself. More importantly, it becomes easier to get the same (or at least the most of) settings that I could use on all different locations.

This repository setup is hugely based on [this article](https://www.atlassian.com/git/tutorials/dotfiles) by [@durdn](https://twitter.com/durdn). If you want to make someting similar, his article is one of the the best starting points to beginners on dotfiles management, along with [this compilation](https://github.com/webpro/awesome-dotfiles). My setup's major distinction is the use of submodules to get my vim repository and plugins track, which is considered in the installation process.

## Getting Started
This setup is built based solely on the git version control system, using the bare reposity `.cfg` on your `$HOME` directory. A new git alias command, `config`, is used to track your files and folders, like any git reposity. A new config file tracking would be done by something like this:

```shell
config status
config add [.some-new-config-file]
config commit
config push -u origin [your-system-os-branch]
```


## Installation
```shell
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
