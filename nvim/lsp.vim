autocmd BufEnter * lua require'completion'.on_attach()
"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert
let g:completion_matchin_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'UltiSnips'

lua << EOF
lspconfig = require "lspconfig"

lspconfig.pyright.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.jsonls.setup{}
lspconfig.vuels.setup{}
lspconfig.tsserver.setup{}
EOF
