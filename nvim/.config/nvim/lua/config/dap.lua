local M = {}

local function get_executable()
  return vim.fn.getcwd() .. "/build/main"
end

function M.build_and_debug()
  vim.fn.system("cmake -B build")
  vim.fn.system("cmake --build build")
  local exe = get_executable()
  if exe then
    require("dap").run({
      type = "codelldb",
      request = "launch",
      name = "Debug current file",
      program = exe,
      cwd = vim.fn.getcwd(),
      stopOnEntry = false,
    })
  else
    print("Executable not found!")
  end
end

return M
