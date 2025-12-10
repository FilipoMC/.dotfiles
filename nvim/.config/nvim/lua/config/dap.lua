local M = {}

local function get_executable()
  return vim.fn.getcwd() .. "/build/main"
end

function M.build_and_debug()
  vim.fn.system("cmake -DCMAKE_BUILD_TYPE=Debug -B build")
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
    vim.notify("Executable not found!")
  end
end

return M
