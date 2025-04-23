-- lua/plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "go", "python"},
            highlight = {
                enable = true,              -- Включить подсветку синтаксиса
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },     -- Включить автоотступы
        })
    end,
}

