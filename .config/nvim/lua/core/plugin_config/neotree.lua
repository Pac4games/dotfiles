require("neo-tree").setup {
	filesystem = {
		window = {
			width = 17
		},
		use_libuv_file_watcher = true,
		filtered_items = {
			hide_dotfiles = true,
			hide_gitignored = true,
		},
	},
}
