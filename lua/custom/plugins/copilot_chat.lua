return {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main", -- Updated from 'canary' to 'main'
    dependencies = {
        { "nvim-lua/plenary.nvim" }, -- Required dependency
    },
    event = "VeryLazy",
    config = function()
        local chat = require("CopilotChat")

        chat.setup({
            show_help = true,
            prompts = {
                explain = "Explain this code",
                fix = "Fix this code",
                optimize = "Optimize this code",
                doc = "Add documentation for this code",
                tests = "Generate tests for this code",
                refactor = "Refactor this code",
                translate = "Translate this code",
            },
        })

        -- Keybindings
        vim.keymap.set("n", "<leader>cc", function()
            chat.toggle()
        end, { desc = "CopilotChat: Toggle Chat Panel" })

        vim.keymap.set("v", "<leader>ce", function()
            chat.explain()
        end, { desc = "CopilotChat: Explain Selection" })

        vim.keymap.set("v", "<leader>cf", function()
            chat.fix()
        end, { desc = "CopilotChat: Fix Selection" })

        vim.keymap.set("v", "<leader>ct", function()
            chat.translate()
        end, { desc = "CopilotChat: Translate Selection" })

        vim.keymap.set("v", "<leader>cd", function()
            chat.doc()
        end, { desc = "CopilotChat: Document Selection" })

        vim.keymap.set("v", "<leader>cr", function()
            chat.refactor()
        end, { desc = "CopilotChat: Refactor Selection" })
    end,
}
