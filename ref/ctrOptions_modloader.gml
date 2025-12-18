function ctrOptions_modloader() : ctrOptions_base() constructor {
	root_directory = "";
	show_mod_list = true;
	static sync = (o) => {
		if (o) {
			cwd = root_directory;
		} else {
			root_directory = cwd;
		}
	}
}