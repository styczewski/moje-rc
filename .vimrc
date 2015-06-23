syntax on                        "kolorowanie składni
:let php_sql_query=1             "kolorowanie sql w kodzie php
:let php_htmlInStrings=1         "kolorowanie html w kodzie php
set autoindent                   "dodawaj wcięcia inteligentne
:se expandtab                    "zamienia wcięcia na spacje
:se shiftwidth=3                 "o ile pozycji przesuwać wcięcie bloku
:se softtabstop=3                "ilość spacji wstawianych zamiast TAB
set list                         "pokazywanie znaków tabulacji i spacji na końcu linii
set listchars=trail:_,tab:>-     "ustawienie pokazywanych znaków zamiast spacji (oraz tabulacji)
set wildmenu                     "podpowiedzi dla komend systemowych i uzupełnianie nazw plików
set confirm                      "pytaj o potwierdzenie zamiast odmawiać wykonania operacji
set number                       "numerowanie wierszy
set nowrap                       "nie zawijaj wierszy
set showmode                     "pokazuje w jakim trybie jesteś
set ruler                        "linia z informacjami o otwartym pliku
set mouse=a                      "obsługa myszy

"kolory
set cursorline                   "podświetlanie linii kursora
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
set background=dark              "ciemne tło
hi Visual term=reverse cterm=reverse guibg=Grey
:hi Pmenu ctermbg=yellow  "kolor menu popup
set t_Co=256

set spelllang=pl_pl,en_us        "sprawdzanie pisowni
set showmatch                    "pokazuj dopasowanie nawiasów, klamr
set scrolloff=5                  "minimalna ilość wierszy zawsze widoczna przed i za kursorem

"wyszukiwanie
set is                           "wyszukiwanie przyrostowe
set ignorecase                   "ignoruj wielkość znaków przy wyszukiwaniu
set smartcase                    "przestań ignorować wielkość znaków jeśli fraza zawiera wielkie litery
set nohlsearch                   "nie podświetlaj wyników wyszukiwania

:cnoremap <c-n> <CR>n/<c-p>

"wyśrodkowanie
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"nawigacja pomiędzy buforami
map <C-h> :bp<cr>
map <C-l> :bn<cr>

"nawigacja pomiędzy kartami
map <C-p> <Esc>:tabprev<CR>
map <C-n> <Esc>:tabnext<CR>

"szybkie wstawianie pomiędzy '"([
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

"przypisanie klawiszy funkcyjnych
:nnoremap <F2> :w<CR>
:inoremap <F2> <ESC>:w<CR>
map <F3> :NERDTree<CR>
:nnoremap <F4> :q<CR>
:inoremap <F4> <ESC>:q<CR>
"kopia pliku ze znacznikiem czasu
map <F5> ggVG:w %-back<C-r>=strftime('%y%m%d-%H%M%S')<CR><CR>
"wstawianie na początku linii daty i godziny
:nnoremap <F6> <ESC>0"=strftime("%c")<CR>PA<tab>
:inoremap <F6> <ESC>0i<C-R>=strftime("%c")<CR><tab>
map <F9> :FufFile<CR>

"strzałki dodają nowe linie lub je przesuwają
no <up> ddkP
no <down> ddp
no <left> O<ESC>
no <right> o<ESC>

"szybkie teksty
:imap =sd Zgłoszenie HelpDesk SD
:imap =sep ===================================================================================================

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
