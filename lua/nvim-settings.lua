local opt = vim.opt
local cmd = vim.api.nvim_command
local g = vim.g

g.python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.10/bin/python3'

opt.number = true 
opt.scrolloff = 7
opt.clipboard = 'unnamed'
opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwx'
opt.showtabline = 2
opt.encoding = 'utf-8'
opt.fileencodings = 'utf8,cp1251'
opt.tags = './tags,tags;$HOME'
opt.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,tabpages,globals'
opt.smarttab = true
opt.linebreak = true
opt.tabstop = 2 
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = false
opt.autoindent = true
opt.colorcolumn = '76'
opt.cursorline = true
-- opt.showtabline = 0
opt.signcolumn = 'yes'
opt.relativenumber = true
opt.foldmethod = 'expr'
opt.termguicolors = true
opt.mouse=
cmd('set foldexpr=nvim_treesitter#foldexpr()')

cmd('set backspace=indent,eol,start whichwrap+=<,>,[,]')
cmd('set visualbell t_vb=')
-- cmd('set list listchars=eol:↲,tab:→\\ ,trail:·,extends:⟩,precedes:⟨,space:·')
cmd('set list listchars=tab:→\\ ,trail:·,extends:⟩,precedes:⟨,space:·')
cmd('let mapleader="\"')
cmd('set laststatus=3')
