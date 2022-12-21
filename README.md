# pngpaste.nvim

plugin for [`pngpaste`](https://github.com/jcsalterego/pngpaste)

## Feature

- Provide `:PngPaste` command
- Generate filename with `uuidgen`
- Exec `pngpaste`, save png file to `image_path`
- Set vim line with markdown image syntax

## Installation

```lua
use({
  "koga1020/pngpaste.nvim",
  config = function()
    require("pngpaste").setup()
  end,
})
```

