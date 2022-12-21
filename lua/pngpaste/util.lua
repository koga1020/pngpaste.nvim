local M = {}

function M.uuid()
  local command = "uuidgen | tr '[:upper:]' '[:lower:]'"

  local handle, error = io.popen(command)

  if not handle then
    return nil, error
  end

  local result = handle:read("*a"):gsub("%s", "")
  handle:close()
  return result
end

return M
