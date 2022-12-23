#event properties
parent_index = GameObject;
uses_physics = false;

#event create
event_inherited();
on_destroy = null;
on_step = null;
on_begin_step = null;
on_end_step = null;
on_draw = null;
on_cleanup = null;



#event destroy
mod_refcall(on_destroy);

#event step
mod_refcall(on_step);

#event step_begin
mod_refcall(on_begin_step);

#event step_end
mod_refcall(on_end_step);

#event draw
draw_self_w();
mod_refcall(on_draw);

#event cleanup
mod_refcall(on_cleanup);
