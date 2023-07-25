vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
--TELESCOPE
{
	"nvim-telescope/telescope.nvim",
	version = "0.1.1",
	dependencies = { { "nvim-lua/plenary.nvim" } },
},
--FILE BROWSERS
{
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons", 
	},
},

{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

{
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
},

--TREESITTER
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
},

--CLOSE BUFFERS
-- "moll/vim-bbye"
"famiu/bufdelete.nvim",

--WHICHKEY
"folke/which-key.nvim",

--HARPOON
"ThePrimeagen/harpoon",

--UndoTree
"mbbill/undotree",

-- Vim Fugitive
"tpope/vim-fugitive",
--	LSP STUFF
{
	"williamboman/mason.nvim",
},
{
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
},
--Completion
"hrsh7th/nvim-cmp", -- The completion plugin
"hrsh7th/cmp-buffer", -- buffer completions
"hrsh7th/cmp-path", -- path completions
"hrsh7th/cmp-cmdline", -- cmdline completions
"saadparwaiz1/cmp_luasnip", -- snippet completions
"hrsh7th/cmp-nvim-lsp",
"hrsh7th/cmp-nvim-lua", -- snippets
"L3MON4D3/Luasnip", --snippet engine
"rafamadriz/friendly-snippets", -- a bunch of snippets to 

--WINBAR
{ "fgheng/winbar.nvim" },
--Motions
-- "ggandor/lightspeed.nvim"
{ "folke/flash.nvim" },

--EDITOR STUFF
--autoversion and pair
{
    'windwp/nvim-autopairs',
    --event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
},
"windwp/nvim-ts-autotag",
{
	"kylechui/nvim-surround",
	version = "*", --  for stability; omit to  `main` branch for the latest features
},

-- escape with jk or jj without delay
{
	"max397574/better-escape.nvim",
	opts = {}
},

-- "HiPhish/nvim-ts-rainbow2"
"HiPhish/rainbow-delimiters.nvim",

-- "lukname-reineke/indent-blankline.nvim"

--GITHUB COPILOT
"github/copilot.vim",
--null-ls for formatting
"jose-elias-alvarez/null-ls.nvim",

--comments
"numToStr/Comment.nvim",
"JoosepAlviste/nvim-ts-context-commentstring",
{
	"folke/todo-comments.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	opts={}
},

{
	"folke/trouble.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {}
},

{ "michaelb/sniprun", build = "sh ./install.sh" },

--RUST STUFF
{
	"simrat39/rust-tools.nvim",
},
"mfussenegger/nvim-dap",

--GO STUFF
"fatih/vim-go",
--TMUX navigation
"alexghergh/nvim-tmux-navigation",

"epwalsh/obsidian.nvim",
{
	"iamcco/markdown-preview.nvim",
},

}
	require("lazy").setup(plugins, {})
