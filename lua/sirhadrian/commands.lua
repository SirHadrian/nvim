-- It works only like this for some reason
vim.cmd("inoremap <C-l> <Right>")
vim.cmd("inoremap <C-h> <Left>")
vim.cmd("inoremap <C-j> <Down>")
vim.cmd("inoremap <C-k> <Up>")

-- Visual delimiter
vim.cmd("set colorcolumn=80")
vim.cmd("highlight ColorColumn ctermbg=grey guibg=grey")
