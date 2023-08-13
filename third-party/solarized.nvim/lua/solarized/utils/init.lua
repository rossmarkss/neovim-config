local M = {}

---Sets a highlight group
---@param name string
---@param val? table
--- @param opts? table The opts object..
---       - opts.transparent: (boolean) Specifies whether transparency is enabled.
---       - opts.styles: (table) A table of custom styles for various elements.
---@return nil
function M.set_hl(name, val, opts)
  local default_val = { fg = 'NONE', bg = 'NONE' }
  val = val or {}

  if not val.link then
    val = vim.tbl_extend('force', default_val, val)
  end

  if opts then
    if opts.styles then
      val = vim.tbl_extend('force', val, opts.styles)
    end

    if opts.transparent then
      val.bg = 'NONE'
    end
  end

  vim.api.nvim_set_hl(0, name, val)
end

---get highlight group
---@param highlight_name string
---@return table highlight
function M.get_hl(highlight_name)
  local highlight = vim.api.nvim_get_hl(0, { name = highlight_name, link = true })

  if highlight.link then
    return M.get_hl(highlight.link)
  end

  return highlight
end

return M
