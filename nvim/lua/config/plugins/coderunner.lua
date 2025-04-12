return {
    "CRAG666/code_runner.nvim",
    keys = {
        { "<F5>",       ":w<CR>:RunFile<CR>",  mode = "n", noremap = true, silent = true },
        { "<leader>rf", ":w<CR>:RunFile<CR>",  mode = "n", noremap = true, silent = true },
        { "<leader>rc", ":w<CR>:RunClose<CR>", mode = "n", noremap = true, silent = true },
    },
    config = function()
        require('code_runner').setup({
            mode = 'term',
            focus = true,
            startinsert = true,
            term = {
                position = "bot",
                size = 8,
            },
            filetype = {
                java =
                "cd $dir &&  /home/user/Applications/jdk-19.0.1/bin/javac $fileName && /home/user/Applications/jdk-19.0.1/bin/java $fileNameWithoutExt",
                python = "/home/user/.pyenv/shims/python -u",
                go = "cd $dir && go run $fileName",
                typescript = "deno run",
                rust = "cd $dir && rustc -o $fileNameWithoutExt $fileName && $dir/$fileNameWithoutExt",
                -- c = "cd $dir && gcc -o $fileNameWithoutExt $fileName -O0 -lm && $dir/$fileNameWithoutExt && rm $dir/$fileNameWithoutExt",
                c = function()
                    local file_name = vim.fn.expand("%:t")
                    local file_name_without_ext = vim.fn.expand("%:r")
                    local dir = vim.fn.expand("%:p:h")
                    local compile_command = string.format("cd %s && gcc -o %s %s -O0 -lm", dir, file_name_without_ext,
                        file_name)
                    local success =  require("config.custom").run_compile_command(compile_command)

                    if success then
                        return "cd $dir && $dir/$fileNameWithoutExt && rm $dir/$fileNameWithoutExt"
                    end

                end,
                lua = "lua",
                kivy = "/home/jagannath/.pyenv/shims/python main.py",
                haskell = "cd $dir && ghc -o $fileNameWithoutExt $fileName  && $dir/$fileNameWithoutExt && rm $dir/$fileNameWithoutExt",

            },
        })
    end
}
