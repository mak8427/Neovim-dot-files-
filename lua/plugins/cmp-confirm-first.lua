return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true }) -- This confirms the first item
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
}
