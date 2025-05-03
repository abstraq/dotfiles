return {
	settings = {
		rustfmt = { extraArgs = { "+nightly" } },
		check = { command = "clippy" },
	}
}
