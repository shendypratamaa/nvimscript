" airline settings
let g:airline#extensions#tabline#enabled = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  '
let g:airline_symbols.whitespace = 'Ξ'

" let g:airline_section_z = '%{strftime("%H:%M  %D  %Y")}'
"
let g:airline_theme = 'tokyonight'
