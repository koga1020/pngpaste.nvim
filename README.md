# pngpaste.nvim

plugin for [`pngpaste`](https://github.com/jcsalterego/pngpaste)

![pngpaste](https://user-images.githubusercontent.com/11972942/208886272-2dd06b75-f72e-4aab-b40b-5b09b26470f5.gif)

## Feature

- Provide `:PngPaste` command
- Generate filename with `uuidgen`
- Exec `pngpaste`, save png file to `image_path`
- Set vim line with markdown image syntax

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "koga1020/pngpaste.nvim",
  config = function()
    require("pngpaste").setup()
  end,
})
```

## Required dependencies

- uuidgen
- [pngpaste](https://github.com/jcsalterego/pngpaste)

