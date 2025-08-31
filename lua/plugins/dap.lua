return {
  { "mfussenegger/nvim-dap" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- GDB adapter
      dap.adapters.cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = 'gdb',
        args = { '-i=mi' }, -- GDB machine interface
      }

      -- Config for C / C++
      dap.configurations.c = {
        {
          name = "Launch C with GDB",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }
      dap.configurations.cpp = dap.configurations.c
    end,
  },
  { "theHamsta/nvim-dap-virtual-text", opts = { commented = true } },
  { "stevearc/overseer.nvim", opts = {} },
}
