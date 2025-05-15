return {
	settings = {
		["rust-analyzer"] = {
			rustfmt = { extraArgs = { "+nightly" } },
			check = { command = "clippy" },
		}
	}
}
