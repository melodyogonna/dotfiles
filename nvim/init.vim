" Basic settings
source $HOME/.config/nvim/settings.vim

" Installed plugins
source $HOME/.config/nvim/plugins.vim
" Theming
source $HOME/.config/nvim/theme.vim

" Keybindings
source $HOME/.config/nvim/keybindings.vim

" Settings for conquer of completion
" source $HOME/.config/nvim/coc.vim

" Treesitter
source $HOME/.config/nvim/treesitter.vim

" lsp
source $HOME/.config/nvim/lsp.vim


if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" Automaticaly close nvim if LuaTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:LuaTree") && b:NvimTree.isTabTree()) | q | endif

let g:coc_filetype_map = {'htmldjango': 'html'}
let test#strategy = "dispatch"


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
