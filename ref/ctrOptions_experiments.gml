function ctrOptions_experiments() : ctrOptions_base() constructor {
	struct_set(self, "$warning", "These may come and go");
	cuz_swap_mode = CuzSwapMode.None;
	cuz_show_swap_for = 20;
	show_swap_for_everyone = false;
}
enum CuzSwapMode { None = 0, Swap, Fixed }