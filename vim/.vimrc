" PawelSki - config vim - 2019-03-28
" config fisa-vim-config and my modifications
"
" Fisa-vim-config
" http://fisadev.github.io/fisa-vim-config/
" version: 8.3.1

" ============================================================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" this needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
call plug#begin('~/.vim/plugged')

" Plugins from github repos:

Plug 'vimwiki/vimwiki'
Plug 'sk1418/HowMuch'
Plug 'nixon/vim-vmath'
Plug 'junegunn/fzf' , { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'romainl/Apprentice' "Colorsheme
Plug 'wimstefan/Lightning' "Colorsheme
Plug 'NLKNguyen/papercolor-theme' "Colorsheme
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/VisIncr'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-abolish'
Plug 'christoomey/vim-system-copy'
  let g:system_copy#copy_command='xclip -sel clipboard'
Plug 'scrooloose/nerdtree' " Better file browser
Plug 'majutsushi/tagbar' " Class/module browser
Plug 'ctrlpvim/ctrlp.vim' " Code and files fuzzy finder
Plug 'fisadev/vim-ctrlp-cmdpalette' " Extension to ctrlp, for fuzzy command finder
Plug 'kien/tabman.vim' " Tab list panel
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Airline
Plug 'fisadev/fisa-vim-colorscheme' " Terminal Vim with 256 colors colorscheme
Plug 'tpope/vim-surround' " Surround
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
Plug 't9md/vim-choosewin' " Window chooser
Plug 'godlygeek/tabular' " Window chooser
Plug 'Townk/vim-autoclose' " Autoclose
Plug 'michaeljsmith/vim-indent-object' " Indent text object
Plug 'jeetsukumaran/vim-indentwise' " Indentation based movements
Plug 'mattn/emmet-vim' " Zen coding
Plug 'motemen/git-vim' " Git integration
Plug 'rosenfeld/conque-term' " Consoles as buffers
Plug 'scrooloose/nerdcommenter' " Code commenter
Plug 'arielrossanigo/dir-configs-override.vim' " Override configs by directory 
Plug 'davidhalter/jedi-vim' " Python autocompletion, go to definition.
Plug 'Shougo/neocomplcache.vim' " Better autocompletion
Plug 'scrooloose/syntastic' " Python and other languages code checker
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Plug 'fisadev/vim-isort' " Automatically sort python imports
Plug 'lilydjwg/colorizer' " Paint css colors with the real color
" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
if has('python')
    " YAPF formatter for Python
    Plug 'pignacio/vim-yapf-format'
endif
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
" Plug 'myusuf3/numbers.vim'

" Plugins from vim-scripts repos:

"+ Plug 'vim-scripts/IndexedSearch' " Search results counter
"+ Plug 'vim-scripts/matchit.zip' " XML/HTML tags navigation
"+ Plug 'vim-scripts/Wombat' " Gvim colorscheme
" Plug 'vim-scripts/YankRing.vim' " Yank history navigation

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================
" Install plugins the first time vim runs

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" no vi-compatible
set nocompatible

set hidden

set cm=blowfish2

set listchars=tab:▸\ ,eol:¬,trail:_

" Eliminating delays on ESC in vim and
set timeoutlen=1000 ttimeoutlen=0

set spelllang=pl_pl,en_us        "sprawdzanie pisowni

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" execute pathogen#infect()
set rtp+=~/.fzf                   "fuzzy finder

" always show status bar
set ls=2

" incremental search
set incsearch
" highlighted search results
set nohlsearch
" Ignoring case in a pattern
set ignorecase
set smartcase

" syntax highlight on
syntax on

" show line numbers
set number
set relativenumber

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow
set splitright

let mapleader = "\<Space>"
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap B ^
nnoremap E $
vnoremap . <ESC>v)
vnoremap , (<ESC>v(
vnoremap n j<ESC>V
vnoremap m k<ESC>V

" tab navigation mappings
map tn ;tabn<CR>
map tp ;tabp<CR>
map tm ;tabm 
map tt ;tabnew 
" map ts ;tab split<CR>
map ts ;new<CR>
map tv ;vnew<CR>
map tw <leader>ww

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" save as sudo
ca w!! w !sudo tee "%"

" simple recursive grep
nmap ,r :Ack 
nmap ,wr :Ack <cword><CR>


" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
	let &t_Co = 256
    colorscheme apprentice
else
    colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
" set wildmode=list:longest
set wildmenu       " podpowiedzi dla komend systemowych i uzupełnianie nazw plików
set confirm        " pytaj o potwierdzenie zamiast odmawiać wykonania operacji

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" == [ Tagbar ] ==============================================================

" toggle tagbar display
map <F4> ;TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" == [ NERDTree ] ============================================================

" toggle nerdtree display
map <F3> ;NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" == [ CtrlP ] ===============================================================

" file finder mapping
let g:ctrlp_map = ',e'
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" == [ Syntastic ] ===========================================================

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

" == [ Jedi-vim ] ============================================================

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>

" == [ Neocomplcache ] =======================================================

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'

" == [ Tabman ] ==============================================================
" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'

" == [ Autoclose ] ===========================================================
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
inoremap <C-l> <ESC>la 


" == [ Window Chooser ] ======================================================
" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" == [ Airline ] =============================================================

let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

" == [ Vimwiki ] =============================================================

let g:vimwiki_list = [{'path': '$HOME/encfs/notes/wiki'}]
let g:vimwiki_folding='expr'
let g:vimwiki_hl_headers=1
let g:vimwiki_list_ignore_newline=0
let g:vimwiki_text_ignore_newline=0
let g:vimwiki_hl_cb_checked=1
let g:vimwiki_table_mappings=0
let g:vimwiki_list_ignore_newline=1
" let g:vimwiki_html_header_numbering=1
" let g:vimwiki_html_header_numbering_sym='.'
nmap <tab> <Plug>VimwikiNextLink
nmap <s-tab> <Plug>VimwikiPrevLink
nmap <Leader>dd <Plug>VimwikiDeleteLink
nmap <Leader>rr <Plug>VimwikiRenameLink
nmap <Leader>vv <Plug>VimwikiVSplitLink
nmap <Leader>hh <Plug>VimwikiSplitLink
nmap <leader>dom <leader>wwgg/domozM/tentyzvztk
nmap <leader>teo <leader>wwgg/zborozM/tentyzvztk
nmap <leader>slu <leader>wwgg/sluzbozM/tentyzvztk
nnoremap <leader><Space> za

" == [ itchyny/calendar ] ====================================================

let g:calendar_google_calendar = 1
let g:calendar_google_task = 0
let g:calendar_task=0
let g:calendar_first_day = "monday"
nmap <leader>cal ;Calendar -view=year -split=vertical -width=35<CR>

" == [ Easymotion ] ==========================================================

map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" s{char} to move to {char}
nmap s <Plug>(easymotion-s)
" s{char}{char} to move to {char}{char}
nmap <leader>s <Plug>(easymotion-s2)

" JK motions: Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 1 " keep cursor column when JK motion
" map  <leader>f <Plug>(easymotion-sn)
" omap <leader>f <Plug>(easymotion-tn)
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)
" These & works fine. (These mappings just provide
" different highlight method and have some other features )
" map  <leader>n <Plug>(easymotion-next)
" map  <leader>N <Plug>(easymotion-prev)

" ===[ Mapping to analyse a list of numbers ]====================
"
"" Need to load this early, so we can override its nmapped ++
" runtime plugin/eqalignsimple.vim

xnoremap <expr> ++  VMATH_YankAndAnalyse()
"nmap            ++  vip++ ]

" == [ FZF ] =================================================================
nmap <leader>o ;FZF<CR>
nmap <leader>fv ;FZF /home/pstyczewski/encfs/notes/<CR>
nmap <leader>Fv ;tabnew<CR>;FZF /home/pstyczewski/encfs/notes/<CR>
nmap <leader>O ;tabnew<CR>;FZF<CR>


" == [ Dragvisuals ] =========================================================
vnoremap <S-L>  xpgvlolo
vnoremap <S-H>   xhPgvhoho
vnoremap <S-J>   xjPgvjojo
vnoremap <S-K>     xkPgvkoko
"
" == [ My own mappings ] =====================================================
nmap <leader>vim ;e ~/.vimrc<CR>
inoremap jj <ESC>

"select all
nnoremap <leader>a ggVG         

nmap <leader>x ;close<CR>

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"fast insert between '"([
imap ''' ''<ESC>i
imap """ ""<ESC>i
imap ((( ()<ESC>i
imap [[[ []<ESC>i
imap {{{ {}<ESC>i

nmap <leader>b ;CtrlPBuffer<CR>

" Easy line wrapping
imap gq <C-G>u<ESC>gw}a| 

nmap <leader>wrap ;set wrap linebreak nocursorline<CR>

" remove polish characters
nmap <leader>ą ;S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g<CR>
nmap <leader>Ą ;%S/{ą,ż,ś,ź,ę,ć,ń,ó,ł,Ą,Ż,Ś,Ź,Ę,Ć,Ń,Ó,Ł}/{a,z,s,z,e,c,n,o,l,A,Z,S,Z,E,C,N,O,L}/g<CR>
"change space with -
nmap <leader>- ;s/\s\+/-/g<CR>
nmap <leader>_ ;%s/\s\+/-/g<CR>
"remove spaces on end of line
nmap <Leader>1 ;%s/\s\+$//e<cr> 
"remove many empty lines and insert one
nmap <Leader>2 ;g/^$/,/./-j<cr> 

" search and replace
nnoremap <leader>f /\%V
nnoremap <leader>hl ;set hls<CR>
nnoremap <leader>nhl ;set nohls<CR>
nnoremap <leader>r yiw:%s/\<<C-r>"\>//<left>
nnoremap <leader>R yiw:%s/\<<C-r>"\>//gc<left><left><left>

nnoremap <leader>p :set list!<cr>
nnoremap <leader>pl :setlocal spell spelllang=pl<CR>
nmap <leader>pr ;read /home/pstyczewski/Pobrane/plik<CR>
nmap <leader>pw ;write /home/pstyczewski/Pobrane/plik<CR>

"makro
nnoremap Q @q
vmap Q ;norm @q<CR>

"nawigacja w zawijanych wierszach
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Pretty soft break character.
let &showbreak='↳ '

"searching vimgrep
command! -nargs=1 Ngrep noautocmd vimgrep "<args>" **/*.*
nnoremap <leader>[ :Ngrep
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cfirst<CR>
nnoremap ]Q :clast<CR>

"moving line and adding empty line Ctrl+ ...
no <C-k> ddkP
no <C-j> ddp
no <C-l> o<ESC>k
no <C-h> O<ESC>j

"resizing split window
nmap <left>  ;3wincmd <<cr>
nmap <right> ;3wincmd ><cr>
nmap <up>    ;3wincmd +<cr>
nmap <down>  ;3wincmd -<cr>


"My own SYNTAX
autocmd Syntax * syntax region textred start="lα" end="αl"
autocmd Syntax * syntax region textblue start="lβ" end="βl"
autocmd Syntax * syntax region textgreen start="lγ" end="γl"
autocmd Syntax * syntax region textyellow start="lδ" end="δl"
autocmd Syntax * syntax region textpink start="lε" end="εl"
autocmd Syntax * syntax region textorange start="lη" end="ηl"

hi textgreen ctermfg=green
hi textblue ctermfg=39
hi textred ctermfg=red
hi textyellow ctermfg=yellow
hi textpink ctermfg=98
hi textorange ctermfg=172

"podkreślanie w wimwiki
vnoremap <leader>tr d<Esc>ilα <ESC>pa αl<esc>
vnoremap <leader>tb d<Esc>ilβ <ESC>pa βl<esc>
vnoremap <leader>tg d<Esc>ilγ <ESC>pa γl<esc>
vnoremap <leader>ty d<Esc>ilδ <ESC>pa δl<esc>
vnoremap <leader>tp d<Esc>ilε <ESC>pa εl<esc>
vnoremap <leader>to d<Esc>ilη <ESC>pa ηl<esc>
vnoremap <leader>bb d<Esc>i<b> <ESC>pa </b><esc>
vnoremap <leader>uu d<Esc>i<u> <ESC>pa </u><esc>
