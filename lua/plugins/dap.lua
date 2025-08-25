return {
  -- Core DAP
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.adapters.cpp = {
        type = "executable",
        command = "gdb",      -- requires GDB with DAP interface
        args = { "-i", "dap" }
      }

      dap.configurations.c = {
        {
          name = "Launch",
          type = "cpp",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }
      dap.configurations.cpp = dap.configurations.c
    end,
  },

  -- UI on top of DAP
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio", -- <-- REQUIRED
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()

      -- auto open/close UI
      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
    end,
  },

  -- Inline virtual text (optional, but handy)
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function() require("nvim-dap-virtual-text").setup() end,
  },
}
