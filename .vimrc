if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=pl
set history=64
set nomodeline
set printoptions=paper:a4
set ruler
"set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

"wyszukuje frazę podczas jej wpisywania
set incsearch
"pokazywanie statystyk na dole
set showmode
set showcmd
"kolorowanie składni
syntax on
map <Down> g<Down>
map <Up> g<Up>

" Ustawienia zawijanych lini
set wrap
" Nie lam slow w srodku
set linebreak
nmap j gj
nmap k gk
vmap j gj
vmap k gk
nmap 0 g0
nmap $ g$
vmap 0 $0
vmap $ g$
:set showbreak=_
set showmatch
set hls

" odległość od numerów lini
set numberwidth=1
set nu " lub set number, wlacza numerowanie wierszy
set mouse=a " mysz dziala wszedzie przy zaznaczaniu, wklejaniu

colo desert

set wrap " zawijanie linii wlaczone
set textwidth=0 " ustawia dlugosc linii na zero, nie bedzie automatycznie robil wciec
set wildmode=longest,list "wyswietla liste mozliwosci przy dopasowaniu, oraz dopasowuje najdluzsze

set nobackup " vim nie bedzie zostawial kopii zapisywanych plikow

" klawisz F2 ustawiamy jako przelacznik wyswietlania linii
map <F2> :set number! <Bar>set number?<CR>
" wyłącza kompatybilność wsteczną z vi
set nocp

" zapis aktualnej sesji i wszystkich
" edytowanych obecnie plików
imap <F9> <ESC>:w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>
map <F9> :w!<CR>:wa!<CR>:mks!<CR>:bufdo w!<CR>:wa!<CR>

" przewijanie buforów
map <F5> :ls<CR>
imap <F5> <ESC>:ls<CR>
map <F6> :bn!<CR>
imap <F6> <ESC>:bn!<CR>
map <F7> :bp!<CR>
map <F7> <ESC>:bp!<CR>

" ustawienia kompilowania i uruchamiania programów
"autocmd BufEnter *.cpp imap <F3> <ESC>:w!<CR>:!g++ %<CR>:!chmod +x a.out<CR>
"autocmd BufEnter *.cpp map <F3> :w!<CR>:!g++ %<CR><ESC>:!chmod +x a.out<CR>
"autocmd BufEnter *.cpp imap <F4> <ESC>:!./a.out<CR>
"autocmd BufEnter *.cpp map <F4> :!./a.out<CR>

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"spellcheck
setlocal spell spelllang=pl
map <F8> :set spell! <Bar>set spell?<CR>
map <C-p> :setlocal spell spelllang=pl<CR>
map <C-e> :setlocal spell spelllang=en<CR>

syntax enable
set nospell
runtime ftplugin/man.vim

" pokazywanie białych znaków
set list!
set listchars=tab:▸\ ,eol:¬

" taby i wcięcia
set tabstop=8
set cindent
set smartindent
set autoindent
"set noexpandtab            " nie zamienia tabulatorów na spacje
set expandtab               " zamienia tabulatory na spacje
set softtabstop=4
set shiftwidth=4
set cinkeys=0{,0},0),:,0#,!^F,o,O,e

"linia na długości 80 znaków:
set colorcolumn=80
"You can control its colour by adding this to your colourscheme file:
"hl ColorColumn guifg=#FF0000 guibg=#444444

" automatyczne wczytywanie pliku .vimrc po dokonaniu w nim zmian i zapisaniu go
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" uruchamianie edytowanego pliku jako skrypt poprzez klawisz F3
imap <F3> :!./%<CR>
map  <F3> :!./%<CR>
