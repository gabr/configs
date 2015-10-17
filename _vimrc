" Wy³¹cza kompatybilnoœæ wsteczn¹ z vi
set nocp

" Ulepszenie dzia³ania backspace
" Teraz usuwa nawet przy ³amaniu linii i nowych linach
set backspace=indent,eol,start

" Nie lam slow w srodku
"set linebreak
"set wrap linebreak nolist
"set nolist

" reload files changed outside vim
set autoread

" Oznacz ³amane linie
set showbreak=_

" Zwiêksz historiê
set history=64

" Wyszukuje frazê podczas jej wpisywania
"set incsearch

" Make search case insensitive
set hlsearch
set ignorecase
set smartcase

" Pokazywanie statystyk na dole
set showmode
"set showcmd

" Mapowanie klawiszy strza³ek
map <Down> g<Down>
map <Up> g<Up>

" U³atwia poruszanie po ³amanych liniach
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk
"nmap 0 g0
"nmap $ g$
"vmap 0 $0
"vmap $ g$

" Poruszanie siê pomiêdzy podzia³em okien
"map <C-h> <c-w>h
"map <C-j> <c-w>j
"map <C-k> <c-w>k
"map <C-l> <c-w>l
"" To poni¿ej powoduje problemy w konsoli windowsa.
"" Jest traktowane jako Backspace.
""imap <C-h> <ESC><c-w>h
"imap <C-j> <ESC><c-w>j
"imap <C-k> <ESC><c-w>k
"imap <C-l> <ESC><c-w>l

" Poruszanie siê pomiêdzy zak³adkami
"map <tab> :tabn<CR>
"map <s-tab> :tabp<CR>
"map <c-n> :tabnew<CR>

" Poka¿ pasuj¹ce nawiasy
"set showmatch
" Ukryj pasuj¹ce nawiasy
let loaded_matchparen = 1

" Odleg³oœæ od numerów lini
set numberwidth=1
"set nu " lub set number, wlacza numerowanie wierszy

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
"set mouse=a
" Dzia³a tylko scroll od myszy
set mouse=c

set textwidth=0 " ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set wildmode=longest,list "wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze

" Vim nie bedzie zostawial kopii zapisywanych plikow
set nobackup 

" Klawisz F2 ustawiamy jako przelacznik wyswietlania linii
map <F2>:set relativenumber!<CR>:set number!<CR>

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

" To jest skopiowany kod, wygl¹da jak kolorowanie sk³adni do python,
" ³adne zostawiê :D
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
filetype plugin indent on

" Spellcheck
" Za³aduj jêzyki, ale domyœlnie wy³¹cz pokazywanie b³êdów
setlocal spell spelllang=pl
map <F8> :set spell! <Bar>set spell?<CR>
map <C-p> :setlocal spell spelllang=pl<CR>
map <C-P> :setlocal spell spelllang=en<CR>
set nospell

" Fullscreen
" http://www.vim.org/scripts/script.php?script_id=2596
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Taby i wciêcia
set tabstop=2
set cindent
set smartindent
set autoindent

"set noexpandtab            " nie zamienia tabulatorów na spacje
set expandtab               " zamienia tabulatory na spacje
set softtabstop=2
set shiftwidth=2
set cinkeys=0{,0},0:,0#,!^F,o,O,e

" Linia na d³ugoœci 80 znaków:
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

" Do pythona
"imap <F3> <ESC>:!python %<CR>
"map <F3> :!python %<CR>

" Przewijanie z podgl¹dem kilku linii
set scrolloff=2

" Ustawia publiczny schowek na schowek z pust¹ nazw¹
" Pozwala na wygodne korzystanie
set clipboard=unnamed

" Pokazuj bia³e znaki
set list!
set listchars=tab:>-,trail:~

" Kodowanie
"set encoding=cp1250
"set fileencoding=cp1250
set encoding=utf8
set fileencoding=utf8

" Wiêcej kolorów
set t_Co=256

" Kolorowanie sk³adni
syntax on

" Domyœlne kolory
set background=dark
colo pablo

" Wy³¹cz dŸwiêki
set vb t_vb=

" Wy³acz antyaliasting - nie dzia³a na windowsie
"set noantialias

" Oznacz obecn¹ liniê
"set cursorline
hi cursorline ctermfg=NONE ctermbg=1

" Ustawienia lightline plugin
" Musi byæ w³¹czone wiêcej kolorów: set t_Co=256
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ }

" Wy³¹cz status bar - poka¿e siê dopiero przy podziale okien
set laststatus=1

" Podœwietlanie sk³adnie na podstawie rozszerzenia pliku
au BufRead,BufNewFile *.iss set syntax=Pascal

" Wy³¹cz zawijanie wierszy
set nowrap

" Ustawienia dla gVima
if has("gui_running")
    " Kolory
    colo hybrid

    set guifont=DejaVu_Sans_Mono:h10:cEASTEUROPE
    " Wy³¹czenie wszystkich elementów gui: paska narzêdzi, pasków przewijania itd
    set guioptions=egtaci
   " Wy³¹czenie sygna³ów dŸwiêkowych i œwietlnych dla b³êdów
    autocmd GUIEnter * set vb t_vb=

    " Oznacz obecn¹ liniê
    set cursorline
    "hi CursorLine guibg=gray15

    " Domyœlne rozmiary okna
    set lines=22 columns=83

    " W³¹cz status bar dopiero przy podziale okna
    set laststatus=1

endif

