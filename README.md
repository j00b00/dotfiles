# dotfiles
These are my dotfiles. There are many like them, but these ones are mine.

# Notes

These are my dotfiles for vim, tmux and bash. 

I am using plugin managers for both vim and tmux.

For vim I am using plug:

https://github.com/junegunn/vim-plug

.vimrc should automagically install plug upon first run of vim. To install the plugins specificed in .vimrc, run:

```
:PlugInstall
```

For tmux, you'll need to install TPM:

https://github.com/tmux-plugins/tpm

```$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm```

Then run tmux and install plugins with *C-a + I* (installs plugins) and *C-a + R* (reload .tmux.conf).

Happy Hacking!
