return {
  -- Formatter: use tofu fmt
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.terraform = { "tofu_fmt" }
      opts.formatters_by_ft.tf = { "tofu_fmt" }
      opts.formatters_by_ft["terraform-vars"] = { "tofu_fmt" }
      opts.formatters = opts.formatters or {}
      opts.formatters.tofu_fmt = opts.formatters.tofu_fmt or { command = "tofu", args = { "fmt", "-" }, stdin = true }
    end,
  },

  -- Linter: tflint works with OpenToFu, and drop terraform_validate
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.terraform = { "tflint" }
      opts.linters_by_ft.tf = { "tflint" }
    end,
  },

  -- LSP: OpenTofu's own language server instead of terraform-ls
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = { enabled = false },
        tofu_ls = {
          filetypes = { "tf", "terraform", "terraform-vars" },
        },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "tofu-ls" } },
  },
}
