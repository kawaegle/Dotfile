local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

ts_config.setup {
    ensure_installed = {
        'bash',
        'c',
        'cmake',
        'cpp',
        'go',
        'json',
        'lua',
        'python'
    },
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    indent = {
        enable = true
    },
}
