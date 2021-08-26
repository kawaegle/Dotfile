local opt = vim.opt
local g = vim.g

opt.clipboard = 'unnamedplus'
opt.cmdheight = 1
opt.completeopt = { "menuone", "noselect"}
opt.cul = true -- cursor line
opt.encoding = 'utf-8'
vim.cmd [[ colorscheme tokyonight]]
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_style = 'night'

-- Indentline
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

-- disable tilde on end of buffer: https://github.com/  neovim/neovim/pull/8546#issuecomment-643643758
opt.fillchars = { eob = " " }
opt.hidden = false
opt.ignorecase = true
opt.mouse = 'a'

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = true

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>hl"
g.mapleader = ' '

-- disable some builtin vim plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end

