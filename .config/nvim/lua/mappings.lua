require "nvchad.mappings"

-- start below

local map = vim.keymap.set

-- general mappings

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- github copilot mappings

-- <C-l> is used to accept the suggestion
map(
  'i',
  '<C-l>',
  function ()
    vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
  end,
  {
    desc = 'Copilot Accept',
    noremap = true,
    silent = true
  }
)


-- telescope mappings

-- find files looks through hidden files
map(
  'n',
  '<leader>ff',
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
  {
    desc = 'Find ALL files',
    noremap = true
  }
)

-- map({ "n", "i", "v" }, "<sC-s>", "<cmd> w <cr>")
