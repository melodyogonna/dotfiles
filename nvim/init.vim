" Basic settings
source $HOME/.config/nvim/settings.vim

" Installed plugins
source $HOME/.config/nvim/plugins.vim

" Tressiter
source $HOME/.config/nvim/treesitter.vim

" Theming
source $HOME/.config/nvim/theme.vim

" Keybindings
source $HOME/.config/nvim/keybindings.vim

" Settings for conquer of completion
source $HOME/.config/nvim/coc.vim


if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:coc_filetype_map = {'htmldjango': 'html'}
let test#strategy = "dispatch"


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

