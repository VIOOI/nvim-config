
require'FTerm'.setup({
		border = 'double',
		dimensions  = {
				height = 0.9,
				width = 0.9,
		},
	auto_close = true,
	blend = 30,
})

vim.api.nvim_create_user_command('Cargorun', function()
    require('FTerm').run('cargo run')
end, { bang = true })

vim.api.nvim_create_user_command('Cargobuild', function()
    require('FTerm').run('cargo build')
end, { bang = true })

vim.api.nvim_create_user_command('Yarnrun', function()
    require('FTerm').run('yarn run')
end, { bang = true })

vim.api.nvim_create_user_command('Yarndev', function()
    require('FTerm').run('yarn dev')
end, { bang = true })

