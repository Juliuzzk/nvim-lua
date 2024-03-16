set clipboard=unnamedplus

" Better copy, paste and cut
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <Esc>"+pi
vnoremap <C-x> "+x

" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.focusActiveEditorGroup')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.focusActiveEditorGroup')<CR>

nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

nnoremap <silent> <Tab> :call VSCodeNotify('workbench.action.nextEditor')<CR>
nnoremap <silent> <S-Tab> :call VSCodeNotify('workbench.action.previousEditor')<CR>

