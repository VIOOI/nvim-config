
require('luasnip.loaders.from_vscode').lazy_load()
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = {behavior = cmp.SelectBehavior.Select}

local lsp_symbols = {
    Text = "   ",
    Method = "  ",
    Function = "  ",
    Constructor = "  ",
    Field = " ﴲ ",
    Variable = "[]",
    Class = "  ",
    Interface = " ﰮ ",
    Module = "  ",
    Property = " 襁",
    Unit = "  ",
    Value = "  ",
    Enum = " 練",
    Keyword = "  ",
    Snippet = "  ",
    Color = "  ",
    File = "  ",
    Reference = "  ",
    Folder = "  ",
    EnumMember = "  ",
    Constant = " ﲀ ",
    Struct = " ﳤ ",
    Event = "  ",
    Operator = "  ",
    TypeParameter = "  ",
}

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{name = 'path'},
		-- {name = 'nvim_lsp', keyword_length = 3},
		{name = 'nvim_lsp'},
		{name = 'buffer'},
		{name = 'luasnip'},
		{ name = 'treesitter' },
		{ name = 'cmp-tw2css' },

	},
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			item.kind = lsp_symbols[item.kind]
			local menu_icon = {
				nvim_lsp = 'λ',
				luasnip = '⋗',
				buffer = 'Ω',
				path = '🖫',
			}

			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	mapping = {

		-- Перемещение между элементами завершения
		['<Up>'] = cmp.mapping.select_prev_item(select_opts), 
		['<Down>'] = cmp.mapping.select_next_item(select_opts),
		['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
		['<C-n>'] = cmp.mapping.select_next_item(select_opts),

		-- Прокрутите текст в окне документации. 
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),

		-- Отменить завершение. 
		['<C-e>'] = cmp.mapping.abort(),

		-- Подтвердить выбор. 
		['<CR>'] = cmp.mapping.confirm({select = true}),

		-- Перейти к следующему заполнителю во фрагменте. 
		['<C-d>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {'i', 's'}),

		-- Перейти к предыдущему заполнителю во фрагменте. 
		['<C-b>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {'i', 's'}),

		-- Автозаполнение с вкладкой. 
		['<Tab>'] = cmp.mapping(function(fallback)
			local col = vim.fn.col('.') - 1

			if cmp.visible() then
				cmp.select_next_item(select_opts)
			elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
				fallback()
			else
				cmp.complete()
			end
		end, {'i', 's'}),

		-- Если отображается меню завершения, перейдите к предыдущему элементу. 
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			else
				fallback()
			end
		end, {'i', 's'}),

	}

})
