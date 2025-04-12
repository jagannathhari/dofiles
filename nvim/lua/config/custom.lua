local M = {}

M.last_compile_command = ""

function M.run_compile_command(cmd)
    if cmd == nil or cmd == "" then
        cmd = M.last_compile_command
    else
        M.last_compile_command = cmd  -- Update the last command
    end
    vim.bo.makeprg = cmd
    vim.cmd('silent make')
    if not vim.tbl_isempty(vim.fn.getqflist()) then
        vim.cmd('cwindow')
        return false
    end
    return true
end

return M

