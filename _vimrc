" Wyłącza kompatybilność wsteczną z vi
set nocp

" Ulepszenie działania backspace
" Teraz usuwa nawet przy łamaniu linii i nowych linach
set backspace=indent,eol,start

" Nie lam slow w srodku
set linebreak
set wrap linebreak nolist
set nolist

" reload files changed outside vim
set autoread

" Oznacz łamane linie
:set showbreak=_

" Zwiększ historię
set history=64

" Wyszukuje frazę podczas jej wpisywania
"set incsearch

" Make search case insensitive
set hlsearch
set ignorecase
set smartcase

" Pokazywanie statystyk na dole
set showmode
"set showcmd

" Mapowanie klawiszy strzałek
map <Down> g<Down>
map <Up> g<Up>

" Ułatwia poruszanie po łamanych liniach
nmap j gj
nmap k gk
vmap j gj
vmap k gk
nmap 0 g0
nmap $ g$
vmap 0 $0
vmap $ g$

" Poruszanie się pomiędzy podziałem okien
"map <C-h> <c-w>h
"map <C-j> <c-w>j
"map <C-k> <c-w>k
"map <C-l> <c-w>l
"" To poniżej powoduje problemy w konsoli windowsa.
"" Jest traktowane jako Backspace.
""imap <C-h> <ESC><c-w>h
"imap <C-j> <ESC><c-w>j
"imap <C-k> <ESC><c-w>k
"imap <C-l> <ESC><c-w>l

" Poruszanie się pomiędzy zakładkami
map <tab> :tabn<CR>
map <s-tab> :tabp<CR>
map <c-n> :tabnew<CR>

" Pokaż pasujące nawiasy
set showmatch

" Odległość od numerów lini
set numberwidth=1
"set nu " lub set number, wlacza numerowanie wierszy

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
set mouse=a 

set wrap " zawijanie linii wlaczone
set textwidth=0 " ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set wildmode=longest,list "wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze

" Vim nie bedzie zostawial kopii zapisywanych plikow
set nobackup 

" Klawisz F2 ustawiamy jako przelacznik wyswietlania linii
map <F2> :set number! <Bar>set number?<CR>

" zapis aktualnej sesji i wszystkich plików
imap <F9> <ESC>:w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>
map <F9> :w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>

" przewijanie buforów
map <F5> :ls<CR>
imap <F5> <ESC>:ls<CR>
map <F6> :bn!<CR>
imap <F6> <ESC>:bn!<CR>
map <F7> :bp!<CR>
map <F7> <ESC>:bp!<CR>

" To jest skopiowany kod, wygląda jak kolorowanie składni do python, ładne zostawię :D
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"
" Spellcheck
" Załaduj języki, ale domyślnie wyłącz pokazywanie błędów
setlocal spell spelllang=pl
map <F8> :set spell! <Bar>set spell?<CR>
map <C-p> :setlocal spell spelllang=pl<CR>
map <C-P> :setlocal spell spelllang=en<CR>
set nospell

" Fullscreen
" http://www.vim.org/scripts/script.php?script_id=2596
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" show/hide NERDTree
map <silent> <f1> :NERDTreeToggle<CR>

" Taby i wcięcia
set tabstop=4
set cindent
set smartindent
set autoindent

"set noexpandtab            " nie zamienia tabulatorów na spacje
set expandtab               " zamienia tabulatory na spacje
set softtabstop=4
set shiftwidth=4
set cinkeys=0{,0},0:,0#,!^F,o,O,e

" Linia na długości 80 znaków:
"set colorcolumn=80

" You can control its colour by adding this to your colourscheme file:
"hl ColorColumn guifg=#FF0000 guibg=#444444

" automatyczne wczytywanie pliku .vimrc po dokonaniu w nim zmian i zapisaniu go
"if has("autocmd")
"    autocmd bufwritepost .vimrc source $MYVIMRC
"    autocmd bufwritepost _vimrc source $HOME\_vimrc
"endif

" ustawienia kompilowania i uruchamiania programów
"autocmd BufEnter *.cpp imap <F3> <ESC>:w!<CR>:!g++ %<CR>:!chmod +x a.out<CR>
"autocmd BufEnter *.cpp map <F3> :w!<CR>:!g++ %<CR><ESC>:!chmod +x a.out<CR>
"autocmd BufEnter *.cpp imap <F4> <ESC>:!./a.out<CR>
"autocmd BufEnter *.cpp map <F4> :!./a.out<CR>

" Uruchamianie edytowanego pliku jako skrypt poprzez klawisz F3
"imap <F3> :!./%<CR>
"map  <F3> :!./%<CR>

" Aktualnie używam vima do Pythona więc wrzucam tutaj pythona:
imap <F3> <ESC>:!python %<CR>
map <F3> :!python %<CR>

" Przewijanie z podglądem kilku linii
set scrolloff=3

" Ustawia publiczny schowek na schowek z pustą nazwą
" Pozwala na wygodne korzystanie
set clipboard=unnamed

" Pokazuj białe znaki
set list!
set listchars=tab:>-,trail:~

" Kodowanie
set encoding=utf-8
set fileencoding=utf-8
"set fileencoding=cp1250

 Więcej kolorów
set t_Co=256

" Kolorowanie składni
syntax on

" Domyślne kolory
set background=dark
colo pablo

" Wyłącz dźwięki
set vb t_vb=

" Wyłacz antyaliasting - nie działa na windowsie
"set noantialias

" Oznacz obecną linię
"set cursorline
"hi cursorline ctermfg=NONE ctermbg=1

" Ustawienia lightline plugin
" Musi być włączone więcej kolorów: set t_Co=256
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ }

" Wyłącz status bar - pokaże się dopiero przy podziale okien
set laststatus=1

" Ustawienia dla gVima
if has("gui_running")
    " Kolory
    colo hybrid

    set guifont=DejaVu_Sans_Mono:h8:cEASTEUROPE
    " Wyłączenie wszystkich elementów gui: paska narzędzi, pasków przewijania itd
    set guioptions=egtaci
   " Wyłączenie sygnałów dźwiękowych i świetlnych dla błędów
    autocmd GUIEnter * set vb t_vb=

    " Oznacz obecną linię
    "set cursorline
    "hi CursorLine guibg=gray15

    " Domyślne rozmiary okna
    set lines=22 columns=83

    " Ustawienia lightline plugin
    " Musi być włączone więcej kolorów: set t_Co=256
    let g:lightline = {
        \ 'colorscheme': 'powerline',
        \ }

    " Włącz na stałe status bar
    set laststatus=2

endif

