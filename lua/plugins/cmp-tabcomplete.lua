return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    local confirm_opts = {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true, -- auto-select top item
    }

    opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm(confirm_opts)
      else
        fallback()
      end
    end, { "i", "s" })
  end,
}
