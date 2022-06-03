set nocompatible
filetype plugin on


call plug#begin('~/.config/nvim/plugged')

Plug 'chxuan/vimplus-startify'                 " 启动界面
Plug 'preservim/nerdtree'                     " 目录树
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " 目录树美化
Plug 'vim-airline/vim-airline'                 " 状态栏美化
Plug 'vim-airline/vim-airline-themes'          " 状态栏美化主题
Plug 'tpope/vim-commentary'                    " 快速注释
Plug 'scrooloose/syntastic'                    " 语法错误提示
Plug 'Lokaltog/vim-easymotion'                 " 快速跳转
Plug 'luochen1990/rainbow'                     " 彩虹括号
Plug 'yianwillis/vimcdoc'                      " HELP文档中文
Plug 'sjl/gundo.vim'                           " 撤销树
Plug 'ayu-theme/ayu-vim'                       " Ayu
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format',
Plug 'kana/vim-operator-user'
Plug 'djoshea/vim-autoread'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'


call plug#end()
