-- It works only like this for some reason
vim.cmd("inoremap <C-l> <Right>")
vim.cmd("inoremap <C-h> <Left>")
vim.cmd("inoremap <C-j> <Down>")
vim.cmd("inoremap <C-k> <Up>")

vim.cmd("nnoremap Q q")
vim.cmd("nnoremap q <Nop>")
vim.cmd("nnoremap <Leader>b :ls<CR>:b<Space>")

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
