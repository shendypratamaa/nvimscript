 let g:rainbow_active = 1

let s:rainbow_conf = {
\'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\'guis': [''],
\'cterms': [''],
\'operators': '_,_',
\'contains_prefix': 'TOP',
\'parentheses_options': '',
\'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\'separately': {
\ '*': {},
\ 'markdown': {
\ 'parentheses_options': 'containedin=markdownCode contained',
\ },
\ 'lisp': {
\ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\ },
\ 'haskell': {
\ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
\ },
\ 'ocaml': {
\ 'parentheses': ['start=/(\ze[^*]/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\[|/ end=/|\]/ fold', 'start=/{/ end=/}/ fold'],
\ },
\ 'tex': {
\ 'parentheses_options': 'containedin=texDocZone',
\ 'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\ },
\ 'vim': {
\ 'parentheses_options': 'containedin=vimFuncBody,vimExecute',
\ 'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold'],
\ },
\ 'xml': {
\ 'syn_name_prefix': 'xmlRainbow',
\ 'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\ },
\ 'xhtml': {
\ 'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\ },
\ 'html': {
\ 'parentheses': ['start=/\v\<((script|style|area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\ },
\ 'lua': {
\ 'parentheses': ["start=/(/ end=/)/", "start=/{/ end=/}/", "start=/\\v\\[\\ze($|[^[])/ end=/\\]/"],
\ },
\ 'perl': {
\ 'syn_name_prefix': 'perlBlockFoldRainbow',
\ },
\ 'php': {
\ 'syn_name_prefix': 'phpBlockRainbow',
\ 'contains_prefix': '',
\ 'parentheses': ['start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold contains_prefix=TOP'],
\ },
\ 'stylus': {
\ 'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
\ },
\ 'css': 0,
\ 'sh': 0,
\ 'vimwiki': 0,
\ }
\}

fun s:eq(x, y)
	return type(a:x) == type(a:y) && a:x == a:y
endfun

fun s:gcd(a, b)
	let [a, b, t] = [a:a, a:b, 0]
	while b != 0
		let t = b
		let b = a % b
		let a = t
	endwhile
	return a
endfun

fun s:lcm(a, b)
	return (a:a / s:gcd(a:a, a:b)) * a:b
endfun
