# dotfiles
Important configuration files for my i3 windows manager, Polybar, Picom and Neovim

## Using the Neovim config
if you're already familiar with Vim or Neovim you can simply copy the parts of the config file that you want and change things appropriately.

If you have not used Neovim before and would like to use this config as a starting point, you will need to install:
- [Neovim](https://neovim.io/)
- Vim-Plug, installation instructions can be found on the [repo](https://github.com/junegunn/vim-plug)

You should want to get familiar with Vim commands, check out the starting section of [vim docs](http://vimdoc.sourceforge.net/htmldoc/usr_02.html)

### Using the config
If you're on Linux or Mac you should create an init file at ```$HOME/.config/nvim/init.vim``` and copy the contents of ```nvim/init.vim``` to this new file. 

If you're editing the file from Neovim, save it - ```ESC``` then ```:w```, source the changes with ```:source %```, then run ```:PlugInstall``` to install the plugins.

If you edited the file from outside Neovim, you'd have to open Neovim. Just type ```nvim``` on the terminal, the configuration will be automatically sourced. then run ```:PlugInstall```

### Important plugins
This config is pretty much tailored to my workflow which means it might contain stuffs that are not relevant to you or miss those you might need, here are some plugins you might want to keep no matter the language you write
- [Fugitive](https://github.com/tpope/vim-fugitive) - A very useful git wrapper
- [ctrlp](https://github.com/kien/ctrlp.vim) - for fuzzy file searching
- [Commentary](https://github.com/tpope/vim-commentary) - A very useful plugin for commenting out code
- [Nerdtree](https://github.com/preservim/nerdtree) - For the sidebar
- [Vim-test](https://github.com/vim-test/vim-test) - Very useful test runner
- [Airline](https://github.com/vim-airline/vim-airline) - The status bar
- [Vim-polyglot](https://github.com/sheerun/vim-polyglot) - For better syntax highlighting
- [COC](https://github.com/neoclide/coc.nvim) - For the intellisense
- [snippets](https://github.com/honza/vim-snippets)- Provides snippets for most languages, integrates well with COC

#### sreenshot
![](https://res.cloudinary.com/melodyogonna/image/upload/v1608161236/Screenshot_from_2020-12-15_14-38-08_wa7guo.png)

BTW you can get the transparency by simply changing the transparency of your terminal.
