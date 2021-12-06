" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_paste=1

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'

let g:airline_theme='minimalist'

" Always show tabs
set showtabline=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.maxlinenr = '㏑'
