let s:cpo_save=&cpo
set cpo&vim
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
"set fileencodings=ucs-bom,utf-8,default,latin1
set history=64
set nomodeline
set printoptions=paper:a4
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Wyszukuje frazę podczas jej wpisywania
"set incsearch

" Pokazywanie statystyk na dole
set showmode
set showcmd

" Kolorowanie składni
syntax on

" Mapowanie klawiszy strzałek
map <Down> g<Down>
map <Up> g<Up>

" Nie lam slow w srodku
set linebreak
set wrap linebreak nolist
set nolist

" Ułatwia poruszanie po łamanych liniach
nmap j gj
nmap k gk
vmap j gj
vmap k gk
nmap 0 g0
nmap $ g$
vmap 0 $0
vmap $ g$

" Oznacz łamane linie
:set showbreak=_

set showmatch
set hls

" Odległość od numerów lini
set numberwidth=1
"set nu " lub set number, wlacza numerowanie wierszy

" Mysz dziala wszedzie przy zaznaczaniu, wklejaniu
set mouse=a 

set wrap " zawijanie linii wlaczone
"set textwidth=0 " ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set wildmode=longest,list "wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze

set nobackup " vim nie bedzie zostawial kopii zapisywanych plikow

" klawisz F2 ustawiamy jako przelacznik wyswietlania linii
map <F2> :set number! <Bar>set number?<CR>

" wyłącza kompatybilność wsteczną z vi
set nocp

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

" Spellcheck
" Załaduj języki, ale domyślnie wyłącz pokazywanie błędów
setlocal spell spelllang=pl
map <F8> :set spell! <Bar>set spell?<CR>
map <C-p> :setlocal spell spelllang=pl<CR>
map <C-P> :setlocal spell spelllang=en<CR>
set nospell

" taby i wcięcia
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
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

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

" Pokazuj białe znaki
set list!
set listchars=tab:>-,trail:~

" Kodowanie
set encoding=utf-8
set fileencoding=cp1250

" Kolory
colo pablo

" Ustawienia dla gVima
if has("gui_running")
    colo murphy
    set guifont=consolas

    " Wyłączenie wszystkich elementów gui: paska narzędzi, pasków przewijania itd
    set guioptions=egtaci
endif
