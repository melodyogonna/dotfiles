source $HOME/.config/nvim/vims/settings.vim
" Installed plugins
source $HOME/.config/nvim/vims/plugins.vim
source $HOME/.config/nvim/vims/theme.vim

source $HOME/.config/nvim/vims/keybindings.vim

" Settings for conquer of completion
source $HOME/.config/nvim/vims/coc.vim

" Treesitter
source $HOME/.config/nvim/vims/treesitter.vim

" lsp
"source $HOME/.config/nvim/lsp.vim

if executable('rg')
    let g:rg_derive_root='true'
endif
d


let g:coc_filetype_map = {'htmldjango': 'html'}
let test#strategy = "dispatch"


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:omni_sql_default_compl_type = 'syntax'
