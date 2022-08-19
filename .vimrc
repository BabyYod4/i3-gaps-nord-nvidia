syntax on

autocmd Filetype tex setl updatetime=750

nmap <F12> :LLPStartPreview<cr>

call plug#begin('~/.vim/plugged')

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'

call plug#end()
