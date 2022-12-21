local util = require("png-paste.util")

local M = {}

local default_config = {
	image_path = "images",
	root = "/",
}

function M.paste()
	local filename = util.uuid() .. ".png"
	local image_path = table.concat({ M.config.image_path, filename }, "/")
	local repl = string.format("![%s](%s%s)", filename, M.config.root, image_path)

	os.execute("pngpaste" .. " " .. image_path)
	vim.fn.setline(".", repl)
end

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", default_config, opts or {})
end
return M
