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

function Transparent()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end
-- Transparent()
