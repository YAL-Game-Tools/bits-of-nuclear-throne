#event properties
parent_index = Pickup;
uses_physics = false;

#event create
/// "boxy" pickups will push each other around, unlike rads and weapons
event_inherited();

#event collision:PickupBox
motion_add_ct(point_direction(other.x, other.y, x, y) + random_w(20) - 10, 0.4);
