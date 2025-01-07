return {
    {
        'mradhyaf/floating-terminal.nvim',
        branch = 'main',
        config = function()
            local fterm = require "floating-terminal"
            vim.api.nvim_create_user_command("Fterm", fterm.show, {})
            vim.keymap.set({ "n", "i" }, "<A-t>", fterm.show)
            vim.keymap.set({ "t" }, "<A-t>", fterm.hide)
        end
    }
}
