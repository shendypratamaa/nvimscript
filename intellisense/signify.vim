let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '_'
let g:signify_sign_change            = '~'
let g:signify_sign_change_delete     = g:signify_sign_change . g:signify_sign_delete_first_line

let g:signify_sign_show_count = 0
let g:signify_line_highlight = 0
let g:signify_sign_show_text = 1
let g:signify_difftool = 'gnudiff'

nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

highlight SignifySignAdd                  ctermbg=Green  guifg=Green
highlight SignifySignDelete ctermfg=black ctermbg=Red    guifg=Red
highlight SignifySignChange ctermfg=black ctermbg=Yellow guifg=Orange

nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
