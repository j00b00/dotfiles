# dotfiles
These are my dotfiles. There are many like them, but these ones are mine.

![screenshot](https://objects-us-east-1.dream.io/joseph/screenshots/dotfiles.screenshot.png "Screenshot")

# Requirements

I am using plugin managers for both vim and tmux.

For vim I am using plug:

https://github.com/junegunn/vim-plug

.vimrc should automagically install plug upon first run of vim. To install the plugins specificed in .vimrc, run:

```
:PlugInstall
```

For tmux, you'll need to install TPM:

https://github.com/tmux-plugins/tpm

```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then run tmux and install plugins with *C-a + I* (installs plugins) and *C-a + R* (reload .tmux.conf).

In my PS1 I call vcprompt:

https://github.com/djl/vcprompt

```
$ sudo curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > /bin/vcprompt
$ sudo chmod 755 /bin/vcprompt
```

Or, on MacOS, use Homebrew:

```
$ brew install vcprompt
```

Last, vim-airline and tmuxline are using patched fonts. Install via GitHub or Homebrew.  I use [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack).


https://github.com/ryanoasis/nerd-fonts


```
$ brew cask install homebrew/cask-fonts/font-hack-nerd-font
```

Happy Hacking!
