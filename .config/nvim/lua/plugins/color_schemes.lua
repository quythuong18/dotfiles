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
    { "kyoz/purify", lazy = false ,name = "purify", priority = 1000},
    { "EdenEast/nightfox.nvim" }, -- night fox
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
