local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Space><Space>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<Space>f", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<C-f>", ":Neotree focus<CR>",{desc = "Focus Neo-Tree"})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "typescript" },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true, additional_vim_regex_highlighting = false },
  indent = { enable = true },
})

