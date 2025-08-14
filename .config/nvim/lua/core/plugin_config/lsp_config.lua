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

local util = require("lspconfig/util")
require("lspconfig").gopls.setup {
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  capabilities = capabilities,  -- required for completion
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = { unusedparams = true },
    },
  },
}

require("lspconfig").yamlls.setup {
  settings = {
	yaml = {
	  format = { enable = true },
	  validate = true,
	  hover = true,
	  completion = true,
	  schemas = {
        -- Example: Kubernetes schemas
        ["https://json.schemastore.org/kustomization.json"] = "kustomization.yaml",
        ["https://json.schemastore.org/github-workflow.json"] = ".github/workflows/*",
      },
      schemaStore = {
        enable = true, -- Auto-download schemas
        url = "https://www.schemastore.org/api/json/catalog.json",
	  },
      customTags = {
        "!And scalar", "!And mapping", "!And sequence",
        "!If scalar", "!If mapping", "!If sequence",
        "!Not scalar", "!Not mapping", "!Not sequence",
        "!Equals scalar", "!Equals mapping", "!Equals sequence",
        "!Or scalar", "!Or mapping", "!Or sequence",
        "!FindInMap scalar", "!FindInMap mapping", "!FindInMap sequence",
        "!Base64 scalar", "!Cidr scalar", "!Ref scalar",
        "!Ref mapping", "!Ref sequence",
        "!Sub scalar", "!Sub mapping", "!Sub sequence",
        "!GetAtt scalar", "!GetAtt mapping", "!GetAtt sequence",
        "!GetAZs scalar", "!ImportValue scalar",
        "!Select scalar", "!Select mapping", "!Select sequence",
        "!Split scalar", "!Split mapping", "!Split sequence",
        "!Join scalar", "!Join mapping", "!Join sequence"
      }
	}
  }
}

require("lspconfig").helm_ls.setup {
  settings = {
	["helm-ls"] = {
	  yamlls = {
		enabled = true,
	  }
    }
  }
}
