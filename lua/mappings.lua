require "nvchad.mappings" -- Keep this if you want to retain existing mappings

-- Create a local reference for convenience
local map = vim.keymap.set

-- Define your custom mappings
local M = {}

M.general = {
    i = {
        ["<S-Tab>"] = { "<ESC><C-w>W", "Cycle active window" },
        ["<S-Left>"] = { "<ESC>v<Left>", "Highlight and move left" },
        ["<S-Right>"] = { "<ESC>v<Right>", "Highlight and move right" },
        ["<S-Up>"] = { "<C-o>vk", "Extend selection up" },
        ["<S-Down>"] = { "<C-o>vj", "Extend selection down" },
        ["<C-Left>"] = { "<C-o>b", "Jump to previous word" },
        ["<C-Right>"] = { "<C-o>w", "Jump to next word" },
        ["<C-z>"] = { "<ESC>ui", "Undo" },
        ["<C-s>"] = { "<ESC>:w<CR>a<ESC>", "Save file" },
        ["<C-a>"] = { "<C-o>ggVG", "Select all text" },
        ["<C-v>"] = { "<ESC>pi", "Paste from clipboard" },
        ["<C-d>"] = { "<ESC>yyP", "Duplicate line downwards" },
        ["<C-S-Up>"] = { "<ESC>ddkPi", "Move line up" },
        ["<C-S-Down>"] = { "<ESC>ddjPi", "Move line down" },
    },

    v = {
        ["<C-d>"] = { "<ESC>yyP", "Duplicate line downwards" },
        ["<C-Tab>"] = { "<ESC>gt", "Cycle to next tab" },
        ["<C-S-Tab>"] = { "<ESC>gT", "Cycle to previous tab" },
        ["<C-z>"] = { "<ESC>ui", "Undo" },
        ["<C-v>"] = { "<ESC>pi", "Paste from clipboard" },
        ["<C-c>"] = { '"+yi', "Copy selection" },
        ["<C-x>"] = { '"+d', "Cut selection" },
        ["<C-a>"] = { "<ESC>ggVG", "Select all text" },
        ["<S-Up>"] = { "k", "Extend selection up" },
        ["<S-Down>"] = { "j", "Extend selection down" },
        ["<S-Left>"] = { "<Left>", "Extend selection to the left" },
        ["<S-Right>"] = { "<Right>", "Extend selection to the right" },
        ["<S-Tab>"] = { "<ESC><C-w>W", "Cycle active window" },
        ["<C-S-Up>"] = { "<ESC>ddkPi", "Move line up" },
        ["<C-S-Down>"] = { "<ESC>ddjPi", "Move line down" },
    },

    n = {
        ["<S-Tab>"] = { "<C-w>W", "Cycle active window" },
        ["<C-h>"] = { "i<C-w>", "Delete til word start" },
        ["<C-BS>"] = { "i<C-w>", "Delete til word start" },
        ["<C-Tab>"] = { "<ESC>gt", "Cycle to next tab" },
        ["<C-S-Tab>"] = { "<ESC>gT", "Cycle to previous tab" },
        ["<BS>"] = { "i<BS>", "Backspace" },
        ["<CR>"] = { "i<Right>", "Enter Insert mode" },
        ["<S-Up>"] = { "vk", "Extend selection up" },
        ["<S-Down>"] = { "vj", "Extend selection down" },
        ["<C-d>"] = { "yyP", "Duplicate line downwards" },
        ["<C-z>"] = { "ui", "Undo" },
        ["<C-v>"] = { "pi", "Paste from clipboard" },
        ["<C-a>"] = { "ggVG", "Select all text" },
        [";"] = { ":", "CMD enter command mode" },
    },
}

-- Register all mappings
for mode, mode_mappings in pairs(M.general) do
    for lhs, mapping in pairs(mode_mappings) do
        map(mode, lhs, mapping[1], { desc = mapping[2] })
    end
end

return M
