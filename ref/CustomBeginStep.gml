#event properties
parent_index = CustomScript;
visible = false;
uses_physics = false;

#event step_begin
mod_type_update_all(1, id);
mod_tagrefcall(id, script);

