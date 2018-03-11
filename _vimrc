source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


"��ʾ�к�
set nu

"����ʱ��ȥԮ����ʾ
set shortmess=atI

"�﷨����
syntax on

"ʹ��vim�ļ���ģʽ
"set nocompatible

"����Ҫ����
set nobackup

"û�б�����ļ�ֻ��ʱ����ȷ��
set confirm

"������
set mouse=a

"tab����
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"�ļ��Զ�����ⲿ����
set autoread

"c�ļ��Զ�����
set cindent

"�Զ�����
set autoindent

set diffopt=context:1

"��������
set smartindent

"��������ƥ��
set hlsearch

"����ɫ
"set background=dark
colorscheme murphy

"��ʾƥ��
set showmatch

"��ʾ��ߣ����������½���ʾ���λ��
set ruler

"ȥ��vi��һ����
set nocompatible

"�����۵�
set foldenable
"""""""""""""""""�����۵�"""""""""""""""""""""
"
"�����﷨�۵�
"set fdm=syntax

"���������۵�
set fdm=indent

"�ֶ��۵�
"set fdm=manual

"���ü���ӳ�䣬ͨ���ո������۵�
"nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
""""""""""""""""""""""""""""""""""""""""""""""
"��Ҫ��˸
set novisualbell

"������ʾ״̬��
set laststatus=2

"ǳɫ��ʾ��ǰ��
autocmd InsertLeave * se nocul

"��ǳɫ������ǰ��
autocmd InsertEnter * se cul

"��ʾ���������
set showcmd

"���ָ��֮����ʾ�հ�
set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/




""""""""""""""""""""""""""""""""""""""""""""""""""
" => �������vundle����
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" windowsϵͳ·��
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" ԭ�ļ������ã��ʺ�linux��mac
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" ��װmarkdown���
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

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

filetype off  
" �˴��涨Vundle��·��  
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
Bundle 'gmarik/vundle'  
filetype plugin indent on  
  
" original repos on github<br>Bundle 'mattn/zencoding-vim'  
Bundle 'drmingdrmer/xptemplate'  
   
" vim-scripts repos  
Bundle 'L9'  
Bundle 'FuzzyFinder'  
Bundle 'bufexplorer.zip'  
Bundle 'taglist.vim'  
Bundle 'Mark'  
Bundle 'The-NERD-tree'  
Bundle 'matrix.vim'  
Bundle 'closetag.vim'  
Bundle 'The-NERD-Commenter'  
Bundle 'matchit.zip'  
Bundle 'AutoComplPop'  
Bundle 'jsbeautify'  
Bundle 'YankRing.vim'  
   
filetype plugin indent on     " required!   




