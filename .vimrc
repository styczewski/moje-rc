execute pathogen#infect()
set rtp+=~/.fzf                   "fuzzy finder
set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax on                        "kolorowanie składni
:let php_sql_query=1             "kolorowanie sql w kodzie php
:let php_htmlInStrings=1         "kolorowanie html w kodzie php
set autoindent                   "dodawaj wcięcia inteligentne
:se expandtab                    "zamienia wcięcia na spacje
:se shiftwidth=2                 "o ile pozycji przesunie nadmiarowych pustych liniiwać wcięcie bloku
:se softtabstop=2                "ilość spacji wstawianych zamiast TAB
set listchars=tab:▸\ ,eol:¬,trail:_
set wildmenu                     "podpowiedzi dla komend systemowych i uzupełnianie nazw plików
set confirm                      "pytaj o potwierdzenie zamiast odmawiać wykonania operacji
set relativenumber               "relatywne numerowanie wierszy
set number
set nowrap                       "nie zawijaj wierszy
set showmode                     "pokazuje w jakim trybie jesteś
set ruler                        "linia z informacjami o otwartym pliku
set mouse=a                      "obsługa myszy
au BufWinLeave ?* mkview          "automatyczne zapisywanie widoku
au BufWinEnter ?* silent loadview "automatyczne ładowanie zapisanego widoku

"kolory znaków niedrukowanych
hi NonText ctermfg=161
hi SpecialKey ctermfg=161
"pokazywanie znaków niedrukowanych
nnoremap <leader>p :set list!<cr>
"kolory
set cursorline                   "podświetlanie linii kursora
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
set background=dark              "ciemne tło
hi Visual term=reverse cterm=reverse guibg=Grey
:hi Pmenu ctermbg=yellow  "kolor menu popup
set t_Co=256
hi Comment ctermfg=Gray           "kolor komentarzy

set spelllang=pl_pl,en_us        "sprawdzanie pisowni
set showmatch                    "pokazuj dopasowanie nawiasów, klamr
set scrolloff=5                  "minimalna ilość wierszy zawsze widoczna przed i za kursorem

"wyszukiwanie
set is                           "wyszukiwanie przyrostowe
set ignorecase                   "ignoruj wielkość znaków przy wyszukiwaniu
set smartcase                    "przestań ignorować wielkość znaków jeśli fraza zawiera wielkie litery
set nohlsearch                   "nie podświetlaj wyników wyszukiwania

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

" nawigacja w zawijanych wierszach
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

"szybkie wstawianie pomiędzy '"([
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

"przypisanie klawiszy funkcyjnych
map <F1> <Esc>:tabprev<CR>
:nnoremap <F2> :w<CR>
:inoremap <F2> <ESC>:w<CR>
map <F3> <Esc>:tabnext<CR>
:nnoremap <F4> :q<CR>
:inoremap <F4> <ESC>:q<CR>
map <F5> ggVG:w %-back<C-r>=strftime('%y%m%d-%H%M%S')<CR><CR>
:nnoremap <F6> <ESC>"=strftime("%c")<CR>PA
:inoremap <F6> <ESC>a<C-R>=strftime("%c")<CR>
map <F7> :tabnew<CR>
map <F8> :tabnew<CR>:FZF<CR>
map <F9> :FufFile<CR>
map <F10> :NERDTree<CR>
vnoremap <C-c> "+y
"usuwanie pustych spacji na końcu linii
map <Leader><Space> :%s/\s\+$//e<cr>

"strzałki dodają nowe linie lub je przesuwają (podobne działanie także dla hjkl)
no <up> ddkP
no <C-k> ddkP
no <down> ddp
no <C-j> ddp
no <left> O<ESC>
no <C-h> O<ESC>
no <right> o<ESC>
no <C-l> o<ESC>

"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

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

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These & works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nmap <leader>d :CtrlP ~/Dokumenty
nmap <leader>b :CtrlPBuffer
nmap <leader>w :CtrlPLine
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'

nmap <leader>f :r !figlet 

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" wymagany moduł: vim-abolish.git
command Bezpolskichlinia :S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g
command Bezpolskichplik :%S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g
command Bezspacji :s/ /-/g


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




set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
