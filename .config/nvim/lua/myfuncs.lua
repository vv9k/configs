function dump(o)
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

function syn_stack()
  if vim.fn.exists('*synstack') == 0 then return end
  local out = vim.api.nvim_eval([[map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')]])
  print(dump(out))
end

