"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundle')
  call dein#begin('~/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " スニペット機能を提供
  "call dein#add('Shougo/neosnippet.vim')
  " スニペット集
  "call dein#add('Shougo/neosnippet-snippets')
  " 自動補完プラグイン
  call dein#add('Shougo/neocomplete.vim')
  " ツリー型エクスプローラ
  call dein#add('scrooloose/nerdtree')
  " NERDTreeを共有
  call dein#add('jistr/vim-nerdtree-tabs')
  " gitファイル変更時にNERDTreeアイコン表示
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  " gitファイル変更時にVim行番号に+/-表示
  call dein#add('airblade/vim-gitgutter')
  " ステータスバーやタブバーをカスタマイズ
  call dein#add('vim-airline/vim-airline')
  " ファイル末尾の余分なスペースをハイライト表示
  call dein#add('bronson/vim-trailing-whitespace')
  " インデントの深さを視覚表示
  call dein#add('Yggdroot/indentLine')
  " プロジェクト内のファイルやバッファ、履歴からファイルを検索
  call dein#add('ctrlpvim/ctrlp.vim')
  " ソースコードを実行と結果表示
  call dein#add('thinca/vim-quickrun')
  " ドキュメントコメントの追加・削除
  call dein#add('tyru/caw.vim')
  " カーソル下のURLをブラウザで開く、単語検索
  call dein#add('tyru/open-browser.vim')
  " j/k移動速度アップ
  call dein#add('rhysd/accelerated-jk')
  " vim-airlineにgitブランチ情報を表示
  call dein#add('tpope/vim-fugitive')
  " 自動補完
  call dein#add('tpope/vim-endwise')
  " カッコを自動で閉じる
  call dein#add('Townk/vim-autoclose')
  " カレントディレクトリのファイルなど一覧表示と操作
  call dein#add('Shougo/unite.vim')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Option-----------------------------------
" <Leader>プレフィックス設定
let mapleader = "\<Space>"

" 改行時に自動でインデントを行なう
set autoindent

" ファイルが外部で変更された際に自動で読み込む
set autoread

" バックスペースの影響範囲を設定する
set backspace=indent,eol,start

" OSとクリップボードを共有する
set clipboard=unnamed,autoselect

" 強調表示する列を設定する
set colorcolumn=80

" 未保存ファイルの終了時に保存確認を行なう
set confirm

" カーソル行を強調表示する
set cursorline

" 文字コードを設定する
set encoding=utf8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" タブの代わりにスペースを挿入する
set expandtab

" ファイル変更中に他のファイルを表示可能にする
set hidden

" コマンドラインモードで保存する履歴数を設定する
set history=1000

" 検索結果をハイライト表示する
set hlsearch

" 大文字と小文字を区別せず検索する
set ignorecase

" インクリメンタルサーチを有効にする
set incsearch

" ステータスバーを常に表示する
set laststatus=2

" 不可視文字を表示する
set list

" 不可視文字の表示方法を設定する
set listchars=eol:¬

" マウスを有効にする
"set mouse=a

" ファイル上書き時にバックアップをとらない
set nobackup
set nowritebackup

" スワップファイルを作成しない
set noswapfile

" 行番号を表示する
set number

" ルーラーを表示する
set ruler

" カーソル行の上下へのオフセットを設定する
set scrolloff=4

" インデントでずれる幅を設定する
set shiftwidth=4

" 入力中のコマンドを表示する
set showcmd

" 対応するカッコを強調表示する
set showmatch

" タブバーを常に表示する
set showtabline=2

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 改行入力行の末尾にあわせてインデントを増減する
set smartindent

" コンテキストに応じたタブの処理を行なう
set smarttab

" タブやバックスペースで処理するスペースの数を設定する
set softtabstop=4

" 新しいウィンドウを下/右に開く
set splitbelow
set splitright

" タブ幅を設定する
set tabstop=4

" 編集中のファイル名を表示する
set title

" ビープを無効にする
set visualbell t_vb=

" 行頭・行末の左右移動で行を移動する
set whichwrap=b,s,h,l,<,>,[,]

" コマンドラインモードでの補完を有効にする
set wildmenu

" コマンドラインモードでの補完方法を設定する
set wildmode=list:longest,full

" 行を折り返す
set wrap

" 検索時に最後まで移動したら最初に戻る
set wrapscan

"End Option-------------------------------

"Key-maps---------------------------------
" 表示行で移動する
noremap j gj
noremap k gk

" 行頭・行末に移動する
noremap <Leader>h ^
noremap <Leader>l $

" 保存・終了する
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" タブを移動する
nnoremap <Leader>t gt
nnoremap <Leader>T gT

" ウィンドウ間を移動する
nnoremap <Leader><Tab> <C-w>w

" 検索によるハイライト表示を解除する
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" インサートモードから抜ける
inoremap jj <ESC>

"End Key-maps-----------------------------

"Shougo/neocomplete.vim-------------------
" 自動補完機能を有効にする
let g:neocomplete#enable_at_startup = 1

"End Shougo/neocomplete.vim---------------

"scrooloose/nerdtree----------------------
" 不可視ファイルを表示する
let NERDTreeShowHidden = 1

" ツリーと編集領域を移動する
nmap <Leader><Tab> <C-w>w

" Ctrl+Nで起動する
"nnoremap <C-n> :NERDTreeToggle<CR>

"End scrooloose/nerdtree-----------------
"
"jistr/vim-nerdtree-tabs-----------------
" ファイルが指定されていなければNERD treeを有効にする
if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
end

" Ctrl+Nで起動する
nnoremap <C-n> :NERDTreeTabsToggle<CR>

"End jistr/vim-nerdtree-tabs-------------

"vim-airline/vim-airline-----------------
" Powerline系フォントを利用する
let g:airline_powerline_fonts = 1

" タブバーのカスタマイズを有効にする
let g:airline#extensions#tabline#enabled = 1

" タブバーの右領域を非表示にする
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

"End vim-airline/vim-airline-------------

"bronson/vim-trailing-whitespace---------
" ファイル保存時に余分なスペースを削除する
autocmd BufWritePre * :FixWhitespace

"End bronson/vim-trailing-whitespace-----

"ctrlpvim/ctrlp.vim----------------------
" 検索モードを開く
nmap <Leader>F :CtrlP<CR>

"End ctrlpvim/ctrlp.vim------------------

"thinca/vim-quickrun---------------------
" エディタの分割方向を設定する
set splitbelow
set splitright

"End thinca/vim-quickrun-----------------

"tyru/caw--------------------------------
" コメントの追加・削除を行なう
nmap <Leader>/ <Plug>(caw:zeropos:toggle)
vmap <Leader>/ <Plug>(caw:zeropos:toggle)

"End tyru/caw----------------------------

"tyru/open-browser-----------------------
" カーソル下のURLや単語をブラウザで開く
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)

"End tyru/open-browser-------------------

"rhysd/accelerated-jk--------------------
" j/kによる移動を速くする
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"End rhysd/accelerated-jk----------------

"tpope/vim-fugitive----------------------
" ブランチ情報を表示する
let g:airline#extensions#branch#enabled = 1

"End tpope/vim-fugitive------------------

"Shougo/unite.vim------------------------
nnoremap <leader>f :<C-u>Unite file<CR>
nnoremap <leader>r :<C-u>Unite file_rec<CR>
nnoremap <leader>b :<C-u>Unite buffer<CR>
nnoremap <leader>g :<C-u>Unite grep<CR>
nnoremap <leader>a :<C-u>UniteBookmarkAdd<CR>
nnoremap <leader>m :<C-u>Unite bookmark<CR>

"End Shougo/unite.vim--------------------
