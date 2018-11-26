set runtimepath+=~/.vim_runtime

set nu
set cursorline
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
hi LineNr term=bold cterm=bold ctermfg=2 guifg=Grey guibg=Grey90
hi CursorLineNr term=bold cterm=bold ctermbg=7* ctermfg=1 gui=bold guifg=DarkRed guibg=White
hi CursorLine   cterm=NONE ctermbg=Black ctermfg=NONE guibg=NONE guifg=white
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
