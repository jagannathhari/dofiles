local builtin_plugs= {
    -- put every built-in plugin you wanna disable here
    '2html_plugin',
     'getscript',
     'getscriptPlugin',
     'gzip',
     'tutor',
    }
    for i=1,#builtin_plugs do
      vim.g['loaded_'.. builtin_plugs[i]]=true
    end
vim.g.do_filetype_lua = true
vim.g.loaded_python3_provider = false
-- vim.g.did_load_filetypes = true 
