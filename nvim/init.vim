" Basic settings
source $HOME/.config/nvim/settings.vim

" Installed plugins
source $HOME/.config/nvim/plugins.vim
" Theming
source $HOME/.config/nvim/theme.vim

" Keybindings
source $HOME/.config/nvim/keybindings.vim

" Settings for conquer of completion
source $HOME/.config/nvim/coc.vim

" Treesitter
source $HOME/.config/nvim/treesitter.vim

" lsp
" source $HOME/.config/nvim/lsp.vim

if executable('rg')
    let g:rg_derive_root='true'
endif



let g:coc_filetype_map = {'htmldjango': 'html'}
let test#strategy = "dispatch"


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_side = 'right' "left by default
let g:nvim_tree_width = 40 "30 by default

lua << EOF
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"node_modules", "vendor", ".git", "env"}
      }
}

EOF


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
