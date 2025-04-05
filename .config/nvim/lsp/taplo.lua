return {
	cmd = { "taplo", "lsp", "stdio" },
	single_file_support = true,
	filetypes = { "toml" },
	root_markers = { ".git" },
	settings = {
		evenBetterToml = {
			schema = {
				catalogs = {
					"https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/api/json/catalog.json",
				},
			},
		},
	},
}
