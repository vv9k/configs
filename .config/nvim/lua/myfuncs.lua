local function dump(o)
   if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
     if type(k) ~= 'number' then k = '"'..k..'"' end
     s = s .. '['..k..'] = ' .. dump(v) .. ','
    end
    return s .. '} '
   else
    return tostring(o)
   end
end

function SynStack()
  if vim.fn.exists('*synstack') == 0 then return end
  local out = vim.api.nvim_eval([[map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')]])
  print(dump(out))
end

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function SmartTab()
    print(vim.fn.pumvisible())
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

function FormatPython()
  vim.fn.system('black .')
  vim.cmd('e')
end

function CreateAugroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.api.nvim_command('augroup '..group_name)
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      vim.api.nvim_command(command)
    end
    vim.api.nvim_command('augroup END')
  end
end

