set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'henrik/vim-indexed-search'
Plugin 'VisIncr'
Plugin 'cskeeters/vim-calutil'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/calendar.vim'
" Plugin 'KabbAmine/vCoolor.vim'
Plugin 'tpope/vim-abolish'
Plugin 'christoomey/vim-system-copy'
  let g:system_copy#copy_command='xclip -sel clipboard'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'gcmt/taboo.vim'
Plugin 'sk1418/HowMuch'
Plugin 'vimwiki/vimwiki'
" Plugin 'mattn/calendar-vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Bundle 'https://github.com/neilagabriel/vim-geeknote'
Bundle 'kshenoy/vim-signature'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
set rtp+=~/.fzf                   "fuzzy finder

syntax on                           " kolorowanie składni
set hidden			    " hidden buffer
:let php_sql_query=1                " kolorowanie sql w kodzie php
:let php_htmlInStrings=1            " kolorowanie html w kodzie php
set autoindent                      " dodawaj wcięcia inteligentne
set expandtab
set tabstop=2
set softtabstop=2                   " ilość spacji wstawianych zamiast TAB
set shiftwidth=2                    " o ile pozycji przesunie nadmiarowych pustych liniiwać wcięcie bloku
set listchars=tab:▸\ ,eol:¬,trail:_
set wildmenu                        " podpowiedzi dla komend systemowych i uzupełnianie nazw plików
set confirm                       " pytaj o potwierdzenie zamiast odmawiać wykonania operacji
set relativenumber                " relatywne numerowanie wierszy
set nowrap                        " nie zawijaj wierszy
set showmode                      " pokazuje w jakim trybie jesteś
set ruler                         " liniu z informacjami o otwartym pliku
set mouse=a                       " obsługa myszy
" au BufWinLeave ?* mkview          
" au BufWinEnter ?* silent loadview 
autocmd BufWinLeave .* mkview
autocmd BufWinEnter .* silent loadview

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"colors
set cursorline                   "podświetlanie linii kursora
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
hi StatusLine ctermbg=white ctermfg=blue
set background=dark              "ciemne tło
hi Visual term=reverse cterm=reverse guibg=Grey
":hi Pmenu ctermbg=yellow  "kolor menu popup
set t_Co=256
hi Comment ctermfg=Gray           "kolor komentarzy

set spelllang=pl_pl,en_us        "sprawdzanie pisowni
set showmatch                    "pokazuj dopasowanie nawiasów, klamr
set scrolloff=5                  "minimalna ilość wierszy zawsze widoczna przed i za kursorem

let mapleader = "\<Space>"
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nmap <leader>vim ;e ~/.vimrc<CR>
nmap <leader>hl ;set hls<CR>
nmap <leader>nhl ;set nohls<CR>
nmap <leader>wrap ;set wrap linebreak nocursorline<CR>
nmap <leader>a ggVG
nmap <leader>d ;bd<CR>
nmap <leader>o ;FZF<CR>
nmap <leader>O ;tabnew<CR>:FZF<CR>
nmap <leader>b ;CtrlPBuffer<CR>
nnoremap <leader>p ;set list!<cr> " pokazywanie znaków niedrukowanych
nnoremap <leader>tu ?^--<cr>V/^--/-1<cr>d?^--<cr>Pj
nnoremap <leader>td ?^--<cr>V/^--/-1<cr>d/^--<cr>Pj
nnoremap <leader>jw G90i=<ESC>:bn<CR>ggVGy:bd<CR>p

set is
set ignorecase
set smartcase
set nohlsearch

"ignorowanie niektórych plików
set wildignore+=*.bmp,*.jpg,*.zip,*.gz,*.pdf,*.PDF,*.gpg,*.xcf,*.png
set wildignore+=*.doc,*.docx,*.xls,*.xlsx,*.odt,*.ods
set wildignore+=*.swp,*.tmp,*~

"wyśrodkowanie
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"makro
nnoremap Q @q
vmap Q ;norm @q<CR>

"nawigacja w zawijanych wierszach
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
imap gq <C-G>u<ESC>gw}| " Easy line wrapping

"fast insert between '"([
imap ''' ''<ESC>i
"imap """ ""<ESC>i
imap ((( ()<ESC>i
"imap [[[ []<ESC>i
"imap {{{ {}<ESC>i

nmap <tab> gt
nmap <s-tab> gT
map <F5> ggVG:w %-back<C-r>=strftime('%y%m%d-%H%M%S')<CR><CR> " backup file with date in filename
map <F7> ;FZF<CR>
map <F8> ;tabnew<CR>:FZF<CR>
"map <F9> ;FufFile<CR>
map <F9> ;CtrlPBuffer<CR>
map <F10> ;NERDTree<CR>
vnoremap <C-c> "+y
map <Leader>1 ;%s/\s\+$//e<cr> "usuwanie pustych spacji na końcu linii
map <Leader>2 ;g/^$/,/./-j<cr> "usuwanie wielu pustych linni i zastępowanie jedną

" H1 - H6 headers for makdown
nnoremap <leader>h1 yypv$r-
nnoremap <leader>h2 yypv$r=
nnoremap <leader>h3 ^i###
nnoremap <leader>h4 ^i####
nnoremap <leader>h5 ^i#####
nnoremap <leader>h6 ^i######

"searching vimgrep
command! -nargs=1 Ngrep noautocmd vimgrep "<args>" **/*.*
nnoremap <leader>[ ;Ngrep
nnoremap [q ;cprev<CR>
nnoremap ]q ;cnext<CR>
nnoremap [Q ;cfirst<CR>
nnoremap ]Q ;clast<CR>

"moving line and adding empty line Ctrl+ ...
no <C-k> ddkP
no <C-j> ddp
no <C-h> O<ESC>j
no <C-l> o<ESC>k

"resizing split window
nmap <left>  ;3wincmd <<cr>
nmap <right> ;3wincmd ><cr>
nmap <up>    ;3wincmd +<cr>
nmap <down>  ;3wincmd -<cr>

" statusline
" format markers:
"   %t File name (tail) of file in the buffer
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off.
"   %r Read only flag, text is " [RO]".
"   %y Type of file in the buffer, e.g., " [vim]".
"   %= Separation point between left and right aligned items.
"   %l Line number.
"   %L Number of lines in buffer.
"   %c Column number.
"   %P percentage through buffer
set statusline=%t\ %m%r%y%=\ (%l/%L,%c)\ (%P)
set laststatus=2
" change highlighting based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=yellow ctermbg=blue
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=yellow
endif

" ================ easymotion ============================================================================
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" s{char} to move to {char}
nmap s <Plug>(easymotion-s)
" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-s2)

" JK motions: Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
map  <leader>f <Plug>(easymotion-sn)
omap <leader>f <Plug>(easymotion-tn)
" These & works fine. (These mappings just provide
" different highlight method and have some other features )
map  <leader>n <Plug>(easymotion-next)
map  <leader>N <Plug>(easymotion-prev)
" ================ easymotion ==== end ===================================================================

let g:vimwiki_list = [{'path': '$HOME/Dropbox/notes/wiki'}]
let g:vimwiki_folding = ''
let g:vimwiki_table_mappings = 0
let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1
hi VimwikiHeader1 ctermfg=210
hi VimwikiHeader2 ctermfg=176
hi VimwikiHeader3 ctermfg=229
hi VimwikiHeader4 ctermfg=111
hi VimwikiHeader5 ctermfg=83
hi VimwikiHeader6 ctermfg=253


" settings for  'itchyny/calendar.vim'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 0
let g:calendar_task=0
let g:calendar_first_day = "monday"
nmap <leader>cal ;Calendar -view=year -split=vertical -width=27<CR>

" settings for 'mattn/calendar-vim' calendar for vimwiki
" nmap <LocalLeader>wcaL; Horizontally-split calendar
" nmap <LocalLeader>wcal; Vertically-split calendar

" Vcolor
" let g:vcoolor_disable_mappings = 1
" let g:vcoolor_map = '<leader>i'

let g:ctrlp_switch_buffer = 'et'

"supertab
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'

nmap <leader>g ;r !figlet

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so ;OpenSession
nnoremap <leader>ss ;SaveSession
nnoremap <leader>sd ;DeleteSession<CR>
nnoremap <leader>sc ;CloseSession<CR>

"require module: vim-abolish.git
command Bezpolskichlinia ;S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g
command Bezpolskichplik ;%S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g
command Bezspacji ;s/ /-/g

" paste without explicitly turning paste mode on/off
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" END paste without explicitly turning paste mode on/off

" read PDF files
" http://vim.wikia.com/wiki/Open_PDF_files
:command! -complete=file -nargs=1 Rpdf ;r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf ;r !pdftotext -nopgbrk <q-args> - |fmt -csw78


" https://github.com/dhruvasagar/vim-table-mode
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
