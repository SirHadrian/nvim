-- It works only like this for some reason
vim.cmd("inoremap <C-h> <Left>")
vim.cmd("inoremap <C-j> <Down>")
vim.cmd("inoremap <C-k> <Up>")
vim.cmd("inoremap <C-l> <Right>")

-- vim.cmd("nnoremap <C-h> <C-w><C-h>")
-- vim.cmd("nnoremap <C-j> <C-w><C-j>")
-- vim.cmd("nnoremap <C-k> <C-w><C-k>")
-- vim.cmd("nnoremap <C-l> <C-w><C-l>")

vim.cmd("match ErrorMsg '\\s\\+$'") -- highlight trailing whitespaces
vim.cmd("autocmd BufWritePre * :%s/\\s\\+$//e") -- remove trailing whitespaces

vim.cmd("nnoremap Q q")
vim.cmd("nnoremap q <Nop>")

vim.cmd("nnoremap <Leader>bl :ls<CR>:b<Space>")
vim.cmd("nnoremap <Leader>bk :%bd\\|e#<CR>")

vim.cmd([[
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <Leader>t :call Term_toggle(100)<cr>
tnoremap <Leader>t <C-\><C-n>:call Term_toggle(100)<cr>
]])

-- Visual delimiter
vim.cmd("set colorcolumn=80")

function Transparent()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end
Transparent()
