#event properties
parent_index = CustomScript;
uses_physics = false;

#event draw
mod_type_update_all(1, id);
mod_tagrefcall(id, script);

