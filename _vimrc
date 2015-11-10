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
set incsearch

" Make search case insensitive
set hlsearch
set ignorecase
"set smartcase

" U�atwia poruszanie po �amanych liniach
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk
"nmap 0 g0
"nmap $ g$
"vmap 0 $0
"vmap $ g$

" Poruszanie si� pomi�dzy zak�adkami
map <c-tab> :tabn<CR>
map <c-s-tab> :tabp<CR>
map <c-n> :tabnew<CR>
imap <c-tab> <ESC>:tabn<CR>
imap <c-s-tab> <ESC>:tabp<CR>
imap <c-n> <ESC>:tabnew<CR>

" Poka� pasuj�ce nawiasy
"set showmatch
" Ukryj pasuj�ce nawiasy
let loaded_matchparen = 1

" Odleg�o�� od numer�w lini
set numberwidth=1

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
"set mouse=a
" Dzia�a tylko scroll od myszy
set mouse=c

" ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set textwidth=0

"wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze
set wildmode=longest,list

" Vim nie bedzie zostawial kopii zapisywanych plikow
set nobackup

" zapis aktualnej sesji i wszystkich plik�w
imap <F9> <ESC>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>
map <F9> :wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>

" To jest skopiowany kod, wygl�da jak kolorowanie sk�adni do python,
" �adne to zostawi� :D
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
set nospell

" Fullscreen
" http://www.vim.org/scripts/script.php?script_id=2596
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Taby i wci�cia
set tabstop=2
set cindent
set smartindent
set autoindent
" zamienia tabulatory na spacje
set expandtab
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

" Przewijanie z podgl�dem kilku linii
set scrolloff=2

" Ustawia publiczny schowek na schowek z pust� nazw�
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
    set guioptions=gaciet
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

