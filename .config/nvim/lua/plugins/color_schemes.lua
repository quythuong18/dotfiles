return {
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
        config = function()
            vim.cmd([[
            colorscheme bluloco
            highlight Normal ctermbg=none guibg=none
            ]])
        end,
    },
    { "EdenEast/nightfox.nvim" }, -- night fox
}
