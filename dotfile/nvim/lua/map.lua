local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end

   -- if list of keys provided then run set for all of them
   if type(lhs) == "table" then
      for _, key in ipairs(lhs) do
         vim.api.nvim_set_keymap(mode, key, rhs, options)
      end
   else
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
   end
end

local opt, M = {}, {}

map('n', '<leader>pu', ':PackerUpdate<CR>', opt) -- update plugin
map('n', '<leader>ps', ':PackerSync<CR>', opt) -- sync packer folder with plugin  init

map("n", '<C-x>', ':tabclose <CR>', opt) -- close  tab
map("n", '<C-t>', ':tabnew <CR>', opt) -- new tabs
map("n", '<leader>ww', ':w <CR>', opt) -- save file
map('n', '<leader>qq', ':q! <CR>', opt) -- quit without saving
map('n', '<leader>wq', ':wq <CR>', opt) -- quit and save
map('n', '<leader><leader>', ':noh<CR>', opt) -- clear highlight search
map("n", '<S-Tab>', ":tabNext <CR>", opt) -- go to next tab
map("n", '<C-Tab>', ":bNext <CR>", opt) -- go to next buffer
map('n', '<leader>h', ':help<CR>', opt) -- open help page

map('n', '<leader>c', 'ColorizerToggle<CR>', opt) -- toggle ON/OFF highlight color

map("n", '<leader>bm', ":Clap marks <CR>", opt) -- show file marks with fuzzy finder
map("n", '<leader>fn', ":DashboardNewFile <CR>", opt) -- create a new file

map("n", '<leader>nt', ":NvimTreeToggle <CR>", opt) -- toggle Ntree file manager

map('n', '<leader>m', ':Glow<CR>', opt) -- generate markdown render

map('n', '<leader>t', ':TagbarsToggle<CR>', opt) -- show your ctags
