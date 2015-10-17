" Wy��cza kompatybilno�� wsteczn� z vi
set nocp

" Ulepszenie dzia�ania backspace
" Teraz usuwa nawet przy �amaniu linii i nowych linach
set backspace=indent,eol,start

" Nie lam slow w srodku
"set linebreak
"set wrap linebreak nolist
"set nolist

" reload files changed outside vim
set autoread

" Oznacz �amane linie
set showbreak=_

" Zwi�ksz histori�
set history=64

" Wyszukuje fraz� podczas jej wpisywania
"set incsearch

" Make search case insensitive
set hlsearch
set ignorecase
set smartcase

" Pokazywanie statystyk na dole
set showmode
"set showcmd

" Mapowanie klawiszy strza�ek
map <Down> g<Down>
map <Up> g<Up>

" U�atwia poruszanie po �amanych liniach
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk
"nmap 0 g0
"nmap $ g$
"vmap 0 $0
"vmap $ g$

" Poruszanie si� pomi�dzy podzia�em okien
"map <C-h> <c-w>h
"map <C-j> <c-w>j
"map <C-k> <c-w>k
"map <C-l> <c-w>l
"" To poni�ej powoduje problemy w konsoli windowsa.
"" Jest traktowane jako Backspace.
""imap <C-h> <ESC><c-w>h
"imap <C-j> <ESC><c-w>j
"imap <C-k> <ESC><c-w>k
"imap <C-l> <ESC><c-w>l

" Poruszanie si� pomi�dzy zak�adkami
"map <tab> :tabn<CR>
"map <s-tab> :tabp<CR>
"map <c-n> :tabnew<CR>

" Poka� pasuj�ce nawiasy
"set showmatch
" Ukryj pasuj�ce nawiasy
let loaded_matchparen = 1

" Odleg�o�� od numer�w lini
set numberwidth=1
"set nu " lub set number, wlacza numerowanie wierszy

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
"set mouse=a
" Dzia�a tylko scroll od myszy
set mouse=c

set textwidth=0 " ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set wildmode=longest,list "wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze

" Vim nie bedzie zostawial kopii zapisywanych plikow
set nobackup 

" Klawisz F2 ustawiamy jako przelacznik wyswietlania linii
map <F2>:set relativenumber!<CR>:set number!<CR>

" zapis aktualnej sesji i wszystkich plik�w
imap <F9> <ESC>:w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>
map <F9> :w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>

" przewijanie bufor�w
map <F5> :ls<CR>
imap <F5> <ESC>:ls<CR>
map <F6> :bn!<CR>
imap <F6> <ESC>:bn!<CR>
map <F7> :bp!<CR>
map <F7> <ESC>:bp!<CR>

" To jest skopiowany kod, wygl�da jak kolorowanie sk�adni do python,
" �adne zostawi� :D
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
filetype plugin indent on

" Spellcheck
" Za�aduj j�zyki, ale domy�lnie wy��cz pokazywanie b��d�w
setlocal spell spelllang=pl
map <F8> :set spell! <Bar>set spell?<CR>
map <C-p> :setlocal spell spelllang=pl<CR>
map <C-P> :setlocal spell spelllang=en<CR>
set nospell

" Fullscreen
" http://www.vim.org/scripts/script.php?script_id=2596
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Taby i wci�cia
set tabstop=2
set cindent
set smartindent
set autoindent

"set noexpandtab            " nie zamienia tabulator�w na spacje
set expandtab               " zamienia tabulatory na spacje
set softtabstop=2
set shiftwidth=2
set cinkeys=0{,0},0:,0#,!^F,o,O,e

" Linia na d�ugo�ci 80 znak�w:
"set colorcolumn=80

" You can control its colour by adding this to your colourscheme file:
"hl ColorColumn guifg=#FF0000 guibg=#444444

" automatyczne wczytywanie pliku .vimrc po dokonaniu w nim zmian i zapisaniu go
"if has("autocmd")
"    autocmd bufwritepost .vimrc source $MYVIMRC
"    autocmd bufwritepost _vimrc source $HOME\_vimrc
"endif

" ustawienia kompilowania i uruchamiania program�w
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

" Przewijanie z podgl�dem kilku linii
set scrolloff=2

" Ustawia publiczny schowek na schowek z pust� nazw�
" Pozwala na wygodne korzystanie
set clipboard=unnamed

" Pokazuj bia�e znaki
set list!
set listchars=tab:>-,trail:~

" Kodowanie
"set encoding=cp1250
"set fileencoding=cp1250
set encoding=utf8
set fileencoding=utf8

" Wi�cej kolor�w
set t_Co=256

" Kolorowanie sk�adni
syntax on

" Domy�lne kolory
set background=dark
colo pablo

" Wy��cz d�wi�ki
set vb t_vb=

" Wy�acz antyaliasting - nie dzia�a na windowsie
"set noantialias

" Oznacz obecn� lini�
"set cursorline
hi cursorline ctermfg=NONE ctermbg=1

" Ustawienia lightline plugin
" Musi by� w��czone wi�cej kolor�w: set t_Co=256
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ }

" Wy��cz status bar - poka�e si� dopiero przy podziale okien
set laststatus=1

" Pod�wietlanie sk�adnie na podstawie rozszerzenia pliku
au BufRead,BufNewFile *.iss set syntax=Pascal

" Wy��cz zawijanie wierszy
set nowrap

" Ustawienia dla gVima
if has("gui_running")
    " Kolory
    colo hybrid

    set guifont=DejaVu_Sans_Mono:h10:cEASTEUROPE
    " Wy��czenie wszystkich element�w gui: paska narz�dzi, pask�w przewijania itd
    set guioptions=egtaci
   " Wy��czenie sygna��w d�wi�kowych i �wietlnych dla b��d�w
    autocmd GUIEnter * set vb t_vb=

    " Oznacz obecn� lini�
    set cursorline
    "hi CursorLine guibg=gray15

    " Domy�lne rozmiary okna
    set lines=22 columns=83

    " W��cz status bar dopiero przy podziale okna
    set laststatus=1

endif

