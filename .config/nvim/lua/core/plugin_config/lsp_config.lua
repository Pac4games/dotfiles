require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
	},
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	capabilities = capabilities,
}
require("lspconfig").clangd.setup {
	capabilities = capabilities,
}

require'py_lsp'.setup {
  -- This is optional, but allows to create virtual envs from nvim
  host_python = "/path/to/python/bin",
  default_venv_name = ".venv" -- For local venv
}

-- For the Godot game engine (requires Godot to be running to work)
require ("lspconfig").gdscript.setup {
  on_attach = function (client)
    local _notify = client.notify
    client.notify = function (method, params)
      if method == 'textDocument/didClose' then
          -- Godot doesn't implement didClose yet
          return
      end
      _notify(method, params)
    end
  end
}
