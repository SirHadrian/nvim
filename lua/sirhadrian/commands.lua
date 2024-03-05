-- [[ Basic Autocommands ]]

vim.api.nvim_create_autocmd("TextYankPost", {
        desc = "Highlight when yanking (copying) text",
        group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
        callback = function()
                vim.highlight.on_yank()
        end,
})

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


function Transparent()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end
Transparent()
