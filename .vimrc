silent! execute pathogen#infect()

set laststatus=2  " Show Status Line

" Airline Theme
let g:airline_theme='molokai'
let g:airline_section_b = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.spell = 'Ꞩ'


let g:promptline_powerline_symbols = 0
let g:promptline_symbols = {
      \ 'left'           : '',
      \ 'right'          : '',
      \ 'left_alt'       : '>',
      \ 'right_alt'      : '<',
      \ 'dir_sep'        : '/',
      \ 'truncation'     : '...',
      \ 'vcs_branch'     : '',
      \ 'battery'        : '',
      \ 'space'          : ' '}

" let g:promptline_theme = 'airline'
let g:promptline_preset = 'clear'

if exists("g:loaded_pathogen") || &cp
  " sections (a, b, c, x, y, z, warn) are optional
  let g:promptline_preset = {
        \'a' : [ promptline#slices#user(), promptline#slices#host({ 'only_if_ssh': 1 }) ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch(), promptline#slices#jobs(), promptline#slices#git_status() ],
        \'z' : [ promptline#slices#battery() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}
endif



