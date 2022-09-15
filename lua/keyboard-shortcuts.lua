local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<esc>')
map('n', '<S-u>', ':redo<cr>')
map('n', ',<space>', ':nohlsearch<CR>')

map('n', '<M-Right>', ':vertical resize +1<CR>')
map('n', '<M-Left>', ':vertical resize -1<CR>')
map('n', '<M-Down>', ':resize +1<CR>')
map('n', '<M-Up>', ':resize -1<CR>')

map('n', '<C-k>', '<C-w><up>', {noremap = false})
map('n', '<C-j>', '<C-w><down>', {noremap = false})
map('n', '<C-h>', '<C-w><left>', {noremap = false})
map('n', '<C-l>', '<C-w><right>', {noremap = false})

map('n', '<C-t>c', ':tabnew<CR>')
map('n', '<C-t>n', ':tabnext<CR>')
map('n', '<C-t>p', ':tabprevious<CR>')
map('n', '<C-t>d', ':tabclose<CR>')
map('n', '<C-t>l', ':tablast<CR>')
map('n', '<C-t>f', ':tabfirst<CR>')

-- map('n', '<C-f>r', ':e .<CR>')

map('n', '<C-b>n', ':bnext<CR>')
map('n', '<C-b>p', ':bprevious<CR>')
map('n', '<C-b>d', ':bdelete<CR>')
map('n', '<C-b>f', ':bfirst<CR>')
map('n', '<C-b>l', ':blast<CR>')
map('n', '<C-b>b', ':b ')

map('n', '<C-f>t', ':RangerTab<cr>', {noremap = false})
map('n', '<C-f>v', ':RangerVSplit<cr>', {noremap = false})
map('n', '<C-f>s', ':RangerSplit<cr>', {noremap = false})
map('n', '<C-f>V', ':RangerVSplit<cr>options.lua', {noremap = false})
map('n', '<C-f>r', ':RangerEdit<cr>', {noremap = false})

map('v', '<C-h>', '<Plug>(MvVisLeft)', {silent = true, noremap = true})
map('v', '<C-j>', '<Plug>(MvVisDown)', {silent = true, noremap = true})
map('v', '<C-k>', '<Plug>(MvVisUp)', {silent = true, noremap = true})
map('v', '<C-l>', '<Plug>(MvVisRight)', {silent = true, noremap = true})

map('n', '<C-s>s', ':split<CR>', {noremap = false})
map('n', '<C-s>v', ':vsplit<CR>', {noremap = false})

map('n', '<C-t>t', '<CMD>lua require("FTerm").toggle()<CR>', {noremap = false})
map('t', '<C-t>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', {noremap = false})

map('', 'ff', ":HopChar1<cr>", {})
map('', 'fF', ":HopChar2<cr>", {})
map('', 'fl', ":HopLineStart<cr>", {})
map('', 'fv', ":HopVertical<cr>", {})
map('', 'fp', ":HopPattern<cr>", {})
map('', 'fw', ":HopWord<cr>", {})

map('n', '<C-s>a', ':Lspsaga code_action<cr>', {noremap = false})
map('n', '<C-s>s', ':Lspsaga signature_help<CR>', {noremap = false})
map('n', '<C-s>h', ':Lspsaga hover_doc<CR>', {noremap = false})
map('n', '<C-s>r', ':Lspsaga rename<CR>', {noremap = false})



