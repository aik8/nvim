return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      -- Use Tab to confirm selection
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),

      -- Disable Enter key confirmation
      ["<CR>"] = cmp.mapping(function(fallback)
        fallback()
      end),
    })
  end,
}
