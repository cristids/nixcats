return {
    'theHamsta/nvim-dap-virtual-text',
    event = 'VeryLazy',
    config = function()
        local dapvt = require('nvim-dap-virtual-text')
        local dap = require('dap')

        dapvt.setup {
            commented = true,
            highlight_changed_variables = true,
            highlight_new_as_changed = true,
            show_stop_reason = true,
        }

        -- Keybinding to toggle virtual text
        vim.keymap.set('n', '<F6>', function()
            dapvt.toggle()
        end, { desc = 'DAP: Toggle Virtual Text' })

        -- Auto-enable virtual text on debug start
        dap.listeners.after.event_initialized['dap_virtual_text'] = function()
            dapvt.enable()
        end

        -- Auto-disable on session end
        dap.listeners.before.event_terminated['dap_virtual_text'] = function()
            dapvt.disable()
        end

        dap.listeners.before.event_exited['dap_virtual_text'] = function()
            dapvt.disable()
        end
    end,
}
