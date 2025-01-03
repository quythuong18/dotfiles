vim.api.nvim_create_user_command(
    'NvimConfig',
    function()
        print("Open neovim config file");
        vim.cmd('edit ' .. vim.fn.stdpath('config'))
    end,
    {}
)
