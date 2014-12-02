" VIM Configuration - Samuel Dolt

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -- Tabulation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 " Un charactère tab fait 4 espaces de long
set softtabstop=4 " Utilise 4 espace au lieu d'une tab en édition
set expandtab " Utilise softtab au lieu des tabs

" -- Affichage
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set title " Met a jour le titre de votre fenetre ou de
" votre terminal

set number " Affiche le numero des lignes
set ruler " Affiche la position actuelle du curseur
set wrap " Affiche les lignes trop longues sur plusieurs
" lignes
set cc=80 " Affiche une règle à la colonne 80

nnoremap j gj
nnoremap k gk
" Saut de ligne visuel, en cas de wrap, le passage à la ligne suivante
" saute pas la partie wrappée

set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur
" (pour le scroll)

set showcmd " Affiche la dernière commande en bas

set cursorline " Met en évidence la ligne en cours

set wildmenu " Autocompletition de commande

set showmatch " Met en évidence les symboles [{()}] correspondant

" show whitespace
set listchars=tab:»\ ,trail:·
set list

" Correction orthographique
set spelllang=fr
let g:languagetool_jar='~/.vim/LanguageTool-2.6/languagetool-commandline.jar'
" -- Recherche
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase " Ignore la casse lors d'une recherche
set smartcase " Si une recherche contient une majuscule,
" re-active la sensibilite a la casse
set incsearch " Surligne les resultats de recherche pendant la
" saisie
set hlsearch " Surligne les resultats de recherche

" -- Beep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set visualbell " Empeche Vim de beeper
set noerrorbells " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable

" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on " Load specific filetype indent information

" Utilise la version sombre de Solarized
set background=dark
colorscheme solarized

" Change la police
set guifont=Droid\ Sans\ Mono\ 10
set antialias

" Active la sauvegarde automatique
let g:auto_save = 1  " enable AutoSave on Vim startup

" Désactivation de la sauvegarde dans les fichiers temporaires
set nobackup
set noswapfile

" Copier coller depuis le presse papier système
if has("win32unix")
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set mouse=a

" GVim Option
:set guioptions-=T " Remove toolbar
" :set guioptions-=m "Remove menu bar
:set guioptions-=r " RIgh-hand scroll bar
:set guioptions-=L " Left scroll bar
":let g:solarized_hitrail=(abs(g:solarized_hitrail-1)) | colorscheme solarized
