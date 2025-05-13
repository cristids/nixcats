return {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    event = "VeryLazy",
    config = function()
        local dap_python = require("dap-python")
        dap_python.setup(vim.fn.getcwd() .. '/.venv/bin/python')
    end,
}
