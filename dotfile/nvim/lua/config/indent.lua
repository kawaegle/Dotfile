vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 guibg=NONE gui=NONE blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B guibg=NONE gui=NONE blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 guibg=NONE gui=NONE blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 guibg=NONE gui=NONE blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF guibg=NONE gui=NONE blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD guibg=NONE gui=NONE blend=nocombine]]

vim.opt.listchars = {
    space = "⋅",
--    tab = "→",
}

require('indent_blankline').setup {
    space_char_blankline = ' ', 
    buftype_exclude = {'terminal', 'help'}, 
    filetype_exclude = {'dashboard', 'packer'},
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
