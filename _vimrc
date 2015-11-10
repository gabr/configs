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
set incsearch

" Make search case insensitive
set hlsearch
set ignorecase
"set smartcase

" U³atwia poruszanie po ³amanych liniach
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk
"nmap 0 g0
"nmap $ g$
"vmap 0 $0
"vmap $ g$

" Poruszanie siê pomiêdzy zak³adkami
map <c-tab> :tabn<CR>
map <c-s-tab> :tabp<CR>
map <c-n> :tabnew<CR>
imap <c-tab> <ESC>:tabn<CR>
imap <c-s-tab> <ESC>:tabp<CR>
imap <c-n> <ESC>:tabnew<CR>

" Poka¿ pasuj¹ce nawiasy
"set showmatch
" Ukryj pasuj¹ce nawiasy
let loaded_matchparen = 1

" Odleg³oœæ od numerów lini
set numberwidth=1

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
"set mouse=a
" Dzia³a tylko scroll od myszy
set mouse=c

" ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set textwidth=0

"wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze
set wildmode=longest,list

" Vim nie bedzie zostawial kopii zapisywanych plikow
set nobackup

" zapis aktualnej sesji i wszystkich plików
imap <F9> <ESC>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>
map <F9> :wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>

" To jest skopiowany kod, wygl¹da jak kolorowanie sk³adni do python,
" ³adne to zostawiê :D
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
set nospell

" Fullscreen
" http://www.vim.org/scripts/script.php?script_id=2596
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Taby i wciêcia
set tabstop=2
set cindent
set smartindent
set autoindent
" zamienia tabulatory na spacje
set expandtab
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

" Przewijanie z podgl¹dem kilku linii
set scrolloff=2

" Ustawia publiczny schowek na schowek z pust¹ nazw¹
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
    set guioptions=gaciet
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

