vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

		--> <- --> <- --> <- --> <- Внешний вид NEoVim

	use 'wbthomason/packer.nvim'		-- Загрузка пакетного менаждера
	use 'navarasu/onedark.nvim'			-- Тема OneDark
		require('plugin-settings.UI.theme')
	use 'kyazdani42/nvim-web-devicons'		-- Иконки для плагинов

	use 'ojroques/nvim-hardline' --> statusline / bufferline
		require('plugin-settings.UI.hardline')
	use 'rafaqz/ranger.vim'			--> Ranger

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <- Подсветка синтаксиса

	use 'nvim-treesitter/nvim-treesitter'
		require('plugin-settings.treesitter')

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <- LSP

	use 'neovim/nvim-lspconfig'			-- Конфигурация LSP для NeoVim
	use "williamboman/mason.nvim"			-- Установщик LSP
	use "williamboman/mason-lspconfig.nvim"
		require('plugin-settings.LSP.mason')
	use 'tami5/lspsaga.nvim'
		require('plugin-settings.LSP.lspsaga')
	use 'onsails/lspkind-nvim'
		require('plugin-settings.LSP.lspkind')

	use 'hrsh7th/nvim-cmp'		--> Автозавершения

	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'ray-x/cmp-treesitter'
	use "jcha0713/cmp-tw2css"
	-- use { 'tzachar/cmp-tabnine', 
	-- 	run='./install.sh' }

	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'
		require('plugin-settings.nvim-cmp')

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <-  Вспомогательные

	use 'lewis6991/gitsigns.nvim'		--> GIT статус
		require('plugin-settings.utils.gitsigns')
	use 'chentoast/marks.nvim'		--> Маркеры
		require('plugin-settings.utils.marks')
  use { 'phaazon/hop.nvim', 		--> Перемещение по файлу
		branch = 'v2', }
		require'hop'.setup() 
	use 'numToStr/Comment.nvim'		--> Коментарии
		require('plugin-settings.utils.comment')
	use 'Pocco81/auto-save.nvim'		--> Автосохранения
		require('plugin-settings.utils.autosave')
	use 'jiangmiao/auto-pairs'		--> Добавление скобок
	use 'numToStr/FTerm.nvim'			--> Терминал
		require('plugin-settings.utils.FTerm')

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <- Eslint

		-- use 'jose-elias-alvarez/null-ls.nvim'
		-- use 'MunifTanjim/eslint.nvim'
		-- 	require("plugin-settings.eslint")

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <-  Rust

	use 'simrat39/rust-tools.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
		require('plugin-settings.rust')

		--> <- --> <- --> <- --> <-

		--> <- --> <- --> <- --> <- Название



		--> <- --> <- --> <- --> <-


end)
