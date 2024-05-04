// Generated at 04.07.2022 14:29:01
:script_execute(script, ...args):
:script_execute_ext(script, args:array):
script_get_name(script:index):
script_get_index(script_name:string):

/// Types
is_number(v):#
is_real(val):#
is_string(val):#
is_undefined(val):#
is_int32(val):#
is_int64(val):#
is_bool(val):#
is_nan(val):#
is_infinity(val):#
is_struct(val):#
is_method(val):#
is_array(val):#
// (same as is_struct)
is_object(val):#
method(self, func):
real(val):#
bool(val):#
string(val):#
int64(val):#

/// Math
abs(x:number):#
round(x:number):#
floor(x:number):#
ceil(x:number):#
sign(x:number):#
frac(x:number):#
sqrt(x:number):#
sqr(x:number):#
exp(x:number):#
ln(x:number):#
log2(x:number):#
log10(x:number):#
logn(n:number, x:number):#
sin(x:number):#
cos(x:number):#
tan(x:number):#
arcsin(x:number):#
arccos(x:number):#
arctan(x:number):#
arctan2(y:number, x:number):#
dsin(x:number):#
dcos(x:number):#
dtan(x:number):#
darcsin(x:number):#
darccos(x:number):#
darctan(x:number):#
darctan2(y:number, x:number):#
degtorad(x:number):#
radtodeg(x:number):#
min(...):#
max(...):#
clamp(v:number, min:number, max:number):#
lerp(v1:number, v2:number, amt:number):#
dot_product(x1:number, y1:number, x2:number, y2:number):#
angle_difference(src:number, dst:number):#
point_distance(x1:number, y1:number, x2:number, y2:number):#
point_direction(x1:number, y1:number, x2:number, y2:number):#
lengthdir_x(len:number, dir:number):#
lengthdir_y(len:number, dir:number):#

point_in_rectangle(px,py,x1,y1,x2,y2):#
point_in_triangle(px,py,x1,y1,x2,y2,x3,y3):#
point_in_circle(px,py,cx,cy,rad):#
rectangle_in_rectangle(sx1,sy1,sx2,sy2,dx1,dy1,dx2,dy2):#
rectangle_in_triangle(sx1,sy1,sx2,sy2,x1,y1,x2,y2,x3,y3):#
rectangle_in_circle(sx1,sy1,sx2,sy2,cx,cy,rad):#


/// String
chr(val):#
ansi_char(val):#
ord(char):#
string_length(str):#
string_byte_length(str):#
string_pos(substr,str):#
string_pos_ext(substr,str,startpos):#
string_last_pos(substr,str):#
string_last_pos_ext(substr,str,startpos):#
string_copy(str,index,count):#
string_char_at(str,index):#
string_ord_at(str,index):#
string_byte_at(str,index):#
string_set_byte_at(str,index,val):#
string_delete(str,index,count):#
string_insert(substr,str,index):#
string_lower(str):#
string_upper(str):#
string_repeat(str,count):#
string_letters(str):#
string_digits(str):#
string_lettersdigits(str):#
string_replace(str,substr,newstr):#
string_replace_all(str,substr,newstr):#
string_count(substr,str):#
string_hash_to_newline(str):#
base64_encode(str):
base64_decode(str):
string_pos_ext(substr,str,startpos):#
string_last_pos(substr,str):#
string_last_pos_ext(substr, str, startpos):#
pi = 3.1415926535897931159979634685442
infinity = inf
NaN = "nan"

/// Array
array_create(size:int, val=0)
array_copy(dest:array, dest_index:int, source:array, source_index:int, length:int)
array_length(val):
// Alias for array_length
array_length_1d(val):
array_equals(a:array, b:array)
array_get(arr:array, ind:int)
array_set(arr:array, ind:int, val)
array_push(arr:array, ...values)
array_pop(arr:array):
array_insert(arr:array, index:int, ...values)
array_delete(arr:array, index:int, count:int)
array_resize(arr:array, newSize:int)
/// non-standard:
array_clone(arr:array):
array_clear(arr:array, val)
array_slice(arr:array, start:int, length:int):
array_find_index(arr:array, val):
array_find_index_ext(arr:array, val, start:int):
array_find_last_index(arr:array, val):
array_find_last_index_ext(arr:array, val, start:int):
array_sort(arr:array, ascend:bool)
array_sort_sub(arr:array, sub_index:int, ascend:bool)
array_join(:array, :string):
ds_list_create():
ds_list_destroy(list)
ds_list_valid(list):
ds_list_clear(id)
ds_list_copy(id,source)
ds_list_size(id):
ds_list_empty(id):
ds_list_add(list, ...values)
ds_list_delete(list, index:int, count:int=1)
ds_list_insert(id,pos,value)
ds_list_replace(id,pos,value)
ds_list_find_index(id,value):
ds_list_find_value(id,pos):
ds_list_sort(id,ascending)
ds_list_write(id)
ds_list_read(id,str,...)
ds_list_set(id,pos,value)
ds_list_shuffle(list)
ds_list_sort(list, ascend:bool)
/// non-standard:
ds_list_add_array(list, arr:array)
ds_list_remove(list, value)
ds_list_join(list, sep:string)
ds_list_to_array(list)
ds_map_create():
ds_map_destroy(map)
ds_map_valid(map):
ds_map_clear(id)
ds_map_copy(id, source)
ds_map_size(id):
ds_map_empty(id):
ds_map_add(id, key, value)
ds_map_replace(id, key, value):
ds_map_set(id, key, value)
ds_map_delete(id, key):
ds_map_exists(id, key):
ds_map_find_value(id, key):
ds_map_find_previous(id, key):
ds_map_find_next(id, key):
ds_map_find_first(id):
ds_map_find_last(id):
ds_map_keys_to_array(map)
ds_map_values_to_array(map)
/// non-standard:
/// deprecated:
// use ds_map_keys_to_array
ds_map_keys(map)
// use ds_map_values_to_array
ds_map_values(map)
ds_grid_create(width:int, height:int):
ds_grid_destroy(grid)
ds_grid_valid(grid):
ds_grid_copy(grid,source)
ds_grid_resize(grid,w,h)
ds_grid_width(grid):
ds_grid_height(grid):
ds_grid_clear(grid,val)
ds_grid_add(grid,x,y,val)
ds_grid_multiply(grid,x,y,val)
ds_grid_set_region(grid,x1,y1,x2,y2,val)
ds_grid_add_region(grid,x1,y1,x2,y2,val)
ds_grid_multiply_region(grid,x1,y1,x2,y2,val)
ds_grid_set_disk(grid,xm,ym,r,val)
ds_grid_add_disk(grid,xm,ym,r,val)
ds_grid_multiply_disk(grid,xm,ym,r,val)
ds_grid_set_grid_region(grid,source,x1,y1,x2,y2,xpos,ypos)
ds_grid_add_grid_region(grid,source,x1,y1,x2,y2,xpos,ypos)
ds_grid_multiply_grid_region(grid,source,x1,y1,x2,y2,xpos,ypos)
ds_grid_get_sum(grid,x1,y1,x2,y2):
ds_grid_get_max(grid,x1,y1,x2,y2):
ds_grid_get_min(grid,x1,y1,x2,y2):
ds_grid_get_mean(grid,x1,y1,x2,y2):
ds_grid_get_disk_sum(grid,xm,ym,r):
ds_grid_get_disk_min(grid,xm,ym,r):
ds_grid_get_disk_max(grid,xm,ym,r):
ds_grid_get_disk_mean(grid,xm,ym,r):
ds_grid_value_exists(grid,x1,y1,x2,y2,val):
ds_grid_value_x(grid,x1,y1,x2,y2,val):
ds_grid_value_y(grid,x1,y1,x2,y2,val):
ds_grid_value_disk_exists(grid,xm,ym,r,val):
ds_grid_value_disk_x(grid,xm,ym,r,val):
ds_grid_value_disk_y(grid,xm,ym,r,val):
ds_grid_shuffle(grid)
ds_grid_sort(grid,column,ascending)
ds_grid_set(grid,x,y,value)
ds_grid_get(grid,x,y):
ds_grid_join(grid, rowSep:string, colSep:string)
vertex_create_buffer():
vertex_create_buffer_ext(size:int):
vertex_delete_buffer(vbuf)
vertex_valid(vbuf):
vertex_begin(vbuf, vfmt)
vertex_end(vbuff)
vertex_position(vbuff,x,y)
vertex_position_3d(vbuff,x,y,z)
vertex_colour(vbuff,colour,alpha)£
vertex_color(vbuff,color,alpha)$
vertex_argb(vbuff,argb)
vertex_texcoord(vbuff,u,v)
vertex_normal(vbuff,nx,ny,nz)
vertex_float1(vbuff,f1)
vertex_float2(vbuff,f1,f2)
vertex_float3(vbuff,f1,f2,f3)
vertex_float4(vbuff,f1,f2,f3,f4)
vertex_ubyte4(vbuff,b1,b2,b3,b4)
vertex_submit(vbuff,prim,texture)
vertex_freeze(vbuff)
vertex_get_number(vbuff)
vertex_get_buffer_size(vbuff)
vertex_create_buffer_from_buffer(buf, format):
vertex_create_buffer_from_buffer_ext(buf, format, src_offset:int, num_vertices:int):
buffer_create_from_vertex_buffer(vertex_buffer, kind, alignment:int):
buffer_create_from_vertex_buffer_ext(vertex_buffer, kind, alignment:int, start_vertex:int, num_vertices:int):
buffer_copy_from_vertex_buffer(vertex_buffer, kind, alignment:int, start_vertex:int, num_vertices:int, dest_buffer, dest_offset:int)
vertex_format_begin()
vertex_format_end():
vertex_format_delete(vfmt)
vertex_format_valid(vfmt):
vertex_format_add_position()
vertex_format_add_position_3d()
vertex_format_add_colour()£
vertex_format_add_color()$
vertex_format_add_normal()
vertex_format_add_texcoord()
vertex_format_add_custom(type,usage)
vertex_usage_position = 1
vertex_usage_colour = 2
vertex_usage_color = 2
vertex_usage_normal = 3
vertex_usage_texcoord = 4
vertex_usage_textcoord = 4
vertex_usage_blendweight = 5
vertex_usage_blendindices = 6
vertex_usage_psize = 7
vertex_usage_tangent = 8
vertex_usage_binormal = 9
vertex_usage_fog = 12
vertex_usage_depth = 13
vertex_usage_sample = 14
vertex_type_float1 = 1
vertex_type_float2 = 2
vertex_type_float3 = 3
vertex_type_float4 = 4
vertex_type_colour = 5
vertex_type_color = 5
vertex_type_ubyte4 = 6
variable_struct_get(ctx, varname:string):
variable_struct_set(ctx, varname:string, value)
variable_struct_exists(ctx, varname:string)
variable_struct_remove(ctx, varname:string)
variable_struct_get_names(ctx)
variable_struct_names_count(ctx)
variable_instance_get(inst, varname:string, ?defvalue):
variable_instance_set(ctx, varname:string, value)
variable_instance_exists(ctx, varname:string)
variable_instance_remove(ctx, varname:string)
variable_instance_get_names(inst, ?outList):
instance_create_depth(x, y, depth, obj):
instance_create_layer(x, y, layer, obj):
instance_create(x, y, obj):
${raw}instance_destroy(?inst, ?perform_destroy)
collision_point(x, y, obj_or_array, prec, notme):
collision_point_list(x, y, obj_or_array, prec, notme, list, ordered):
collision_circle(x, y, rad, obj_or_array, prec, notme):
collision_circle_list(x, y, rad, obj_or_array, prec, notme, list, ordered):
collision_line(x1, y1, x2, y2, obj_or_array, prec, notme):
collision_line_list(x1, y1, x2, y2, obj_or_array, prec, notme, list, ordered):
collision_rectangle(x1, y1, x2, y2, obj_or_array, prec, notme):
collision_rectangle_list(x1, y1, x2, y2, obj_or_array, prec, notme, list, ordered):
collision_ellipse(x1, y1, x2, y2, obj_or_array, prec, notme):
collision_ellipse_list(x1, y1, x2, y2, obj_or_array, prec, notme, list, ordered):
object_add(?name):
object_delete(obj)
object_exists(obj):
object_get_name(obj):
object_get_depth(obj):
object_get_sprite(obj):
object_get_solid(obj):
object_get_visible(obj):
object_get_persistent(obj):
object_get_mask(obj):
object_get_parent(obj):
object_is_ancestor(child, parent):
object_set_name(obj):
object_set_depth(obj):
object_set_sprite(obj, sprite_index)
object_set_solid(obj, solid)
object_set_visible(obj, visible)
object_set_persistent(obj, persistent)
object_set_mask(obj, mask_index)
object_set_parent(obj, parent_object_index)
surface_create(width:int, height:int):
surface_destroy(surf)
// alt.
surface_free(surf)
surface_valid(surf):
// deprecated
surface_exists(surf):
surface_get_width(surf):
surface_get_height(surf):
surface_get_texture(surf):
surface_resize(surf, newWidth:int, newHeight:int)
surface_set_target(surf)
surface_set_target_ext(surf, index:int)
surface_get_target():
surface_get_target_ext(i:int):
surface_reset_target()
surface_depth_disable(disable)
surface_get_depth_disable():
draw_surface(surf,x,y)
draw_surface_stretched(surf,x,y,w,h)
draw_surface_tiled(surf,x,y)
draw_surface_part(surf,left,top,width,height,x,y)
draw_surface_ext(surf,x,y,xscale,yscale,rot,col,alpha)
draw_surface_stretched_ext(surf,x,y,w,h,col,alpha)
draw_surface_tiled_ext(surf,x,y,xscale,yscale,col,alpha)
draw_surface_part_ext(surf,left,top,width,height,x,y,xscale,yscale,col,alpha)
draw_surface_general(surf, left, top, width, height, x, y, xscale, yscale, rot, c1, c2, c3, c4, alpha)
surface_save(surf, fname)
surface_save_part(surf, fname, x, y, w, h)
surface_copy(dest, x, y, source)
surface_copy_part(dest, x, y, source, xs, ys, ws, hs)
surface_screenshot(dest)
buffer_create(size, kind, alignment)
buffer_base64_decode(string)
buffer_base64_decode_ext(buffer, string, offset)
buffer_destroy(buf)
// alt.
buffer_delete(buf)
buffer_valid(buf):
// alt.
buffer_exists(buf):
buffer_write(buffer, data_type, value)
buffer_read(buffer, data_type):
buffer_seek(buffer, base, offset)
buffer_set_used_size(buffer,size)
buffer_get_type(buffer):
buffer_get_alignment(buffer):
buffer_poke(buffer, offset, data_type, value)
buffer_peek(buffer, offset, data_type):
buffer_copy(src_buffer, src_offset, size, dest_buffer, dest_offset)
buffer_fill(buffer, offset, data_type, value, size)
buffer_get_size(buffer):
buffer_tell(buffer):
buffer_resize(buffer, newsize)
buffer_md5(buffer, offset, size):
buffer_sha1(buffer, offset, size):
buffer_crc32(buffer, offset, size):
buffer_base64_encode(buffer, offset, size):
buffer_get_address(buffer):
buffer_compress(bufferid,offset,size):
buffer_decompress(bufferId):
buffer_load(path):
buffer_load_ext(buffer, path, offset:int)
buffer_load_partial(buffer, path, src_offset:int, src_len:int, dest_offset:int)
buffer_save(buffer, path)
buffer_save_ext(buffer, path, offset, size)
buffer_get_surface(dst_buffer, src_surface, offset)
buffer_set_surface(src_buffer, dst_surface, offset)
buffer_read_u8(buf):
buffer_read_s8(buf):
buffer_read_u16(buf):
buffer_read_s16(buf):
buffer_read_u32(buf):
buffer_read_s32(buf):
buffer_read_u64(buf):
buffer_read_bool(buf):
buffer_read_string(buf):
buffer_read_text(buf):
buffer_write_u8(buf, value):
buffer_write_s8(buf, value):
buffer_write_u16(buf, value):
buffer_write_s16(buf, value):
buffer_write_u32(buf, value):
buffer_write_s32(buf, value):
buffer_write_u64(buf, value):
buffer_write_bool(buf, value):
buffer_write_string(buf, value):
buffer_write_text(buf, value):
buffer_peek_u8(buf, pos):
buffer_peek_s8(buf, pos):
buffer_peek_u16(buf, pos):
buffer_peek_s16(buf, pos):
buffer_peek_u32(buf, pos):
buffer_peek_s32(buf, pos):
buffer_peek_u64(buf, pos):
buffer_peek_bool(buf, pos):
buffer_peek_string(buf, pos):
buffer_peek_text(buf, pos):
buffer_poke_u8(buf, pos, value):
buffer_poke_s8(buf, pos, value):
buffer_poke_u16(buf, pos, value):
buffer_poke_s16(buf, pos, value):
buffer_poke_u32(buf, pos, value):
buffer_poke_s32(buf, pos, value):
buffer_poke_u64(buf, pos, value):
buffer_poke_bool(buf, pos, value):
buffer_poke_string(buf, pos, value):
buffer_poke_text(buf, pos, value):
buffer_sizeof(data_type):#
buffer_fixed = 0
buffer_grow = 1
buffer_wrap = 2
buffer_fast = 3
buffer_vbuffer = 4
buffer_u8 = 1
buffer_s8 = 2
buffer_u16 = 3
buffer_s16 = 4
buffer_u32 = 5
buffer_s32 = 6
buffer_u64 = 12
buffer_f16 = 7
buffer_f32 = 8
buffer_f64 = 9
buffer_bool = 10
buffer_text = 13
buffer_string = 11
buffer_seek_start = 0
buffer_seek_relative = 1
buffer_seek_end = 2

/// cmnChat
chat_comp_add(command:string, ...args_n_help:string):
chat_comp_remove(command:string):
chat_comp_add_arg(command:string, arg:int, value:string, help:string=""):
chat_comp_remove_arg(command:string, arg:int, value:string):
chat_comp_clear_arg(command:string, arg:int):
mouse_lock()
mouse_unlock()
/// Returns whether mouse is effectively locked (e.g. never rlocked on pause)
mouse_is_locked():

/// d3d
d3d_start()
d3d_end()
d3d_set_culling(enable:bool)
d3d_set_hidden(enable:bool)
d3d_set_zwriteenable(enable:bool)
d3d_set_perspective(enable:bool)
d3d_set_projection(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number, xup:number, yup:number, zup:number)
d3d_set_projection_ext(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number, xup:number, yup:number, zup:number, fov:number, aspect:number, znear:number, zfar:number)
d3d_set_projection_ortho(x:number, y:number, w:number, h:number, angle:number)
d3d_transform_set_identity()
d3d_transform_stack_push()
d3d_transform_stack_pop()
d3d_transform_set_translation(dx:number, dy:number, dz:number)
d3d_transform_set_scaling(mx:number, my:number, mz:number)
d3d_transform_set_rotation_axis(vx:number, vy:number, vz:number, d:number)
d3d_transform_set_rotation_x(d:number)
d3d_transform_set_rotation_y(d:number)
d3d_transform_set_rotation_z(d:number)
d3d_transform_add_translation(dx:number, dy:number, dz:number)
d3d_transform_add_scaling(mx:number, my:number, mz:number)
d3d_transform_add_rotation_axis(vx:number, vy:number, vz:number, d:number)
d3d_transform_add_rotation_x(d:number)
d3d_transform_add_rotation_y(d:number)
d3d_transform_add_rotation_z(d:number)
:alarm_get(:index):
:alarm_set(:index, value:number)
//{ Instance
instance_exists(obj:index):
instance_number(obj:index):
instance_position(x:number, y:number, obj:index):
instance_nearest(x:number, y:number, obj:index):
instance_furthest(x:number, y:number, obj:index):
instance_place(x:number, y:number, obj:index):
instance_find(obj:index, n:index);
//}
//{ event_
::event_perform(etype:int, enumb:int)
ev_create = 0
ev_destroy = 1
ev_alarm = 2
ev_step = 3
ev_collision = 4
ev_keyboard = 5
ev_mouse = 6
ev_other = 7
ev_draw = 8
ev_keypress = 9
ev_keyrelease = 10
ev_animation_end = 7
ev_boundary = 1
ev_close_button = 30
ev_draw_begin = 72
ev_draw_end = 73
ev_draw_post = 77
ev_draw_pre = 76
ev_end_of_path = 8
ev_game_end = 3
ev_game_start = 2
ev_global_left_button = 50
ev_global_left_press = 53
ev_global_left_release = 56
ev_global_middle_button = 52
ev_global_middle_press = 55
ev_global_middle_release = 58
ev_global_press = 12
ev_global_release = 13
ev_global_right_button = 51
ev_global_right_press = 54
ev_global_right_release = 57
ev_gui = 64
ev_gui_begin = 74
ev_gui_end = 75
ev_left_button = 0
ev_left_press = 4
ev_left_release = 7
ev_middle_button = 2
ev_middle_press = 6
ev_middle_release = 9
ev_mouse_enter = 10
ev_mouse_leave = 11
ev_mouse_wheel_down = 61
ev_mouse_wheel_up = 60
ev_no_button = 3
ev_no_more_health = 9
ev_no_more_lives = 6
ev_outside = 0
ev_right_button = 1
ev_right_press = 5
ev_right_release = 8
ev_room_end = 5
ev_room_start = 4
ev_step_begin = 1
ev_step_end = 2
ev_step_normal = 0
ev_trigger = 11
ev_user0 = 10
ev_user1 = 11
ev_user10 = 20
ev_user11 = 21
ev_user12 = 22
ev_user13 = 23
ev_user14 = 24
ev_user15 = 25
ev_user2 = 12
ev_user3 = 13
ev_user4 = 14
ev_user5 = 15
ev_user6 = 16
ev_user7 = 17
ev_user8 = 18
ev_user9 = 19
//}
//{ Motion
:motion_set(dir:number, speed:number)
:motion_add(dir:number, speed:number)
:place_free(x:number, y:number):
:place_empty(x:number, y:number):
:place_meeting(x:number, y:number, obj:index):
:place_snapped(hsnap:number, vsnap:number):
:move_snap(hsnap:number, vsnap:number)
:move_towards_point(x:number, y:number, sp:number)
:move_contact_solid(dir:number, maxdist:number)
:move_contact_all(dir:number, maxdist:number)
:move_outside_solid(dir:number, maxdist:number)
:move_outside_all(dir:number, maxdist:number)
:move_bounce_solid(advanced:bool)
:move_bounce_all(advanced:bool)
:move_wrap(hor:bool, vert:bool, margin:number)
:distance_to_point(x:number, y:number):
:distance_to_object(obj:index):
:position_empty(x:number, y:number):
:position_meeting(x:number, y:number, obj:index):
//}
//{ Collision helpers
point_in_rectangle(px, py, x1:number, y1:number, x2:number, y2:number):
point_in_triangle(px, py, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number):
point_in_circle(px, py, cx, cy, rad):
rectangle_in_rectangle(sx1:number, sy1:number, sx2:number, sy2:number, dx1:number, dy1:number, dx2:number, dy2:number):
rectangle_in_triangle(sx1:number, sy1:number, sx2:number, sy2:number, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number):
rectangle_in_circle(sx1:number, sy1:number, sx2:number, sy2:number, cx:number, cy:number, rad:number):
//}
//{ Math
abs(x:number):
round(x:number):
floor(x:number):
ceil(x:number):
sign(x:number):
frac(x:number):
sqrt(x:number):
sqr(x:number):
exp(x:number):
ln(x:number):
log2(x:number):
log10(x:number):
sin(radian_angle:number):
cos(radian_angle:number):
tan(radian_angle:number):
arcsin(x:number):
arccos(x:number):
arctan(x:number):
arctan2(y:number, x:number):
dsin(degree_angle:number):
dcos(degree_angle:number):
dtan(degree_angle:number):
darcsin(x:number):
darccos(x:number):
darctan(x:number):
darctan2(y:number, x:number):
degtorad(x:number):
radtodeg(x:number):
power(x:number, n:number):
logn(n:number, x:number):
min(...:number):
max(...:number):
mean(...:number):
median(...:number):
clamp(val:number, min:number, max:number):
lerp(val1:number, val2:number, amount:number):
dot_product(x1:number, y1:number, x2:number, y2:number):
dot_product_3d(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number):
dot_product_normalised(x1:number, y1:number, x2:number, y2:number):
dot_product_3d_normalised(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number):
angle_difference(src:number, dest:number):
point_distance_3d(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number):
point_distance(x1:number, y1:number, x2:number, y2:number):
point_direction(x1:number, y1:number, x2:number, y2:number):
lengthdir_x(len:number, dir:number):
lengthdir_y(len:number, dir:number):
//}
//{ Conversions
real(val):
string(val):
int64(val):
string_format(val:number,total:number,dec:number):
chr(val):
ansi_char(val):
ord(char):
//}
//{ String operations
string_length(str:string):
string_byte_length(str:string):
string_pos(substr:string, str:string):
string_copy(str:string, index:number, count:number):
string_char_at(str:string, index:number):
string_ord_at(str:string, index:number):
string_byte_at(str:string, index:number):
string_set_byte_at(str:string, index:number, val:number):
string_delete(str:string, index:number, count:number):
string_insert(substr:string, str:string, index:number):
string_lower(str:string):
string_upper(str:string):
string_repeat(str:string, count:number):
string_letters(str:string):
string_digits(str:string):
string_lettersdigits(str:string):
string_replace(str:string, substr:string, newstr:string):
string_replace_all(str:string, substr:string, newstr:string):
string_count(substr:string, str:string):
string_sha1(str:string):
string_sha1_utf8(str:string):
string_md5(str:string):
string_md5_utf8(str:string):
string_lpad(str:string, c:string, len:int):
string_rpad(str:string, c:string, len:int):
string_auto(:number):
string_trim(str:string):
string_ltrim(str:string):
string_rtrim(str:string):
string_split(str:string, delim:string):
string_split_list(str:string, delim:string, ?list):
string_save(str:string, path:string):
string_load(path:string):
//}
//{ Color constants
c_aqua = 16776960
c_black = 0
c_blue = 16711680
c_dkgray = 4210752
c_fuchsia = 16711935
c_gray = 8421504
c_green = 32768
c_lime = 65280
c_ltgray = 12632256
c_maroon = 128
c_navy = 8388608
c_olive = 32896
c_purple = 8388736
c_red = 255
c_silver = 12632256
c_teal = 8421376
c_white = 16777215
c_yellow = 65535
c_orange = 4235519
//}
//{ Color functions
make_colour_rgb(red:number, green:number, blue:number):
make_color_rgb(red:number, green:number, blue:number):
make_colour_hsv(hue:number, saturation:number, value:number):
make_color_hsv(hue:number, saturation:number, value:number):
colour_get_red(col):
color_get_red(col):
colour_get_green(col):
color_get_green(col):
colour_get_blue(col):
color_get_blue(col):
colour_get_hue(col):
color_get_hue(col):
colour_get_saturation(col):
color_get_saturation(col):
colour_get_value(col):
color_get_value(col):
merge_colour(col1, col2, amount:number):
merge_color(col1, col2, amount:number):
//}
//{ Drawing - state
draw_set_colour(col:number)
draw_set_color(col:number)
draw_set_alpha(alpha:number)
draw_get_colour():
draw_get_color():
draw_get_alpha():
draw_set_font(font:index)
draw_set_halign(halign:int)
draw_get_halign():
fa_left = 0
fa_center = 1
fa_right = 2
draw_set_valign(valign:int)
draw_get_valign():
fa_top = 0
fa_middle = 1
fa_bottom = 2
string_width(:string):
string_height(:string):
string_width_ext(string:string, sep:number, w:number):
string_height_ext(string:string, sep:number, w:number):
//}
//{ Drawing - texture state
sprite_get_uvs(spr:index, subimg:number):
background_get_uvs(back:index):
font_get_uvs(font:index):
sprite_get_texture(spr:index, subimg:number):
background_get_texture(back:index):
font_get_texture(font:index):
texture_get_width(texid):
texture_get_height(texid):
pr_pointlist = 1
pr_linelist = 2
pr_linestrip = 3
pr_trianglelist = 4
pr_trianglestrip = 5
pr_trianglefan = 6
texture_set_interpolation(linear)
texture_set_blending(blend)
texture_set_repeat(repeat)
//}
//{ Drawing - blend modes
draw_set_blend_mode(mode:int)
bm_normal = 0
bm_add = 1
bm_max = 2
bm_subtract = 3
draw_set_blend_mode_ext(src:int, dest:int)
bm_zero = 1
bm_one = 2
bm_src_color = 3
bm_src_colour = 3
bm_inv_src_color = 4
bm_inv_src_colour = 4
bm_src_alpha = 5
bm_inv_src_alpha = 6
bm_dest_alpha = 7
bm_inv_dest_alpha = 8
bm_dest_color = 9
bm_dest_colour = 9
bm_inv_dest_color = 10
bm_inv_dest_colour = 10
bm_src_alpha_sat = 11
draw_set_colour_write_enable(red:bool, green:bool, blue:bool, alpha:bool)
draw_set_color_write_enable(red:bool, green:bool, blue:bool, alpha:bool)
draw_set_alpha_test(enable:bool)
draw_set_alpha_test_ref_value(value:number)
draw_get_alpha_test():
draw_get_alpha_test_ref_value():
//}
//{ Asset
asset_get_index(name:string):
asset_get_type(name:string):
asset_object = 0
asset_unknown = -1
asset_sprite = 1
asset_sound = 2
asset_room = 3
asset_path = 5
asset_script = 6
asset_font = 7
asset_timeline = 8
//}
//{ Sprite
sprite_exists(ind:index):
sprite_get_number(ind:index):
sprite_get_width(ind:index):
sprite_get_height(ind:index):
sprite_get_xoffset(ind:index):
sprite_get_yoffset(ind:index):
sprite_get_bbox_left(ind:index):
sprite_get_bbox_right(ind:index):
sprite_get_bbox_top(ind:index):
sprite_get_bbox_bottom(ind:index):
sprite_get_speed_type(ind):
sprite_get_speed(ind):
spritespeed_framespersecond = 0
spritespeed_framespergameframe = 1
sprite_get_info(ind):
sprite_get_nineslice(ind):
sprite_nineslice_create():
//}
//{ Object
object_max = 574
object_exists(ind:index):
object_get_name(ind:index):
object_get_sprite(ind:index):
object_get_solid(ind:index):
object_get_visible(ind:index):
object_get_depth(ind:index):
object_get_persistent(ind:index):
object_get_mask(ind:index):
object_get_parent(ind:index):
object_is_ancestor(ind_child:index, ind_parent:index):
//}
//{ Motion planning
:mp_linear_step(x:number, y:number, speed:number, checkall:bool)
:mp_potential_step(x:number, y:number, speed:number, checkall:bool)
:mp_linear_step_object(x:number, y:number, speed:number, obj:index)
:mp_potential_step_object(x:number, y:number, speed:number, obj:index)
//}
//{ Raw audio
audio_play_sound(soundid:index,priority:number,loops:bool):
audio_play_sound_at(soundid:index, x:number,y:number,z:number, falloff_ref_dist:number,falloff_max_dist:number,falloff_factor:number,loops:bool, priority:number):
audio_stop_sound(soundid:index)
audio_resume_sound(soundid:index)
audio_pause_sound(soundid:index)
audio_sound_length_nonsync(soundid:index):
audio_get_type(soundid:index):
audio_sound_gain(soundid:index,volume:number,time:number):
audio_sound_pitch(soundid:index,pitch:number):
audio_stop_all()
audio_resume_all()
audio_pause_all()
audio_is_playing(soundid:index):
audio_is_paused(soundid:index):
audio_exists(soundid:index):
audio_sound_get_gain(soundid:index):
audio_sound_get_pitch(soundid:index):
audio_get_name(soundid:index):
audio_sound_set_track_position(soundid:index, time:number)
audio_sound_get_track_position_nonsync(soundid:index):
//}
//{
matrix_view = 0
matrix_projection = 1
matrix_world = 2
matrix_get(type:int):
matrix_set(type:int,matrix:array)
matrix_build(x:number,y:number,z:number,xrotation:number,yrotation:number,zrotation:number,xscale:number,yscale:number,zscale:number):
matrix_multiply(matrix:array,matrix:array):
//}
/**
 * Creates a copy of the current pseudo-thread that will execute
 * 	the current script (from the current position) before terminating. Returns
 * 	`true` to the copy-thread and `false` to the original thread. For example,
 * 	if (fork()) trace("fork"); else trace("base");
 * 	will display "fork" in copy-thread and "base" in the original thread.
 * 	Combined with `wait` instruction, fork() function can be used to implement
 * 	branching/multi-part behaviours.
 */
fork():
/// Displays value(s) in chat. Intended for debugging.
trace(...values):
trace_time(?caption)
trace_color(text:string, :color)
typeof(value):
room_speed
/// input and network delay, in frames
current_delay*
game_set_seed(seed:int)
/// this is actually is_number for compatibility purposes
is_real(value):
/// 2.3 version of real(), throws an error if value cannot be converted
double(value):
real(value):
/// the REAL is_real (which won't return true for int64/bools) if you need it for some reason
is_double(value):
game_restart()
sleep(ms:number)
game_width:real
game_height:real
game_set_size(w:real, h:real)
game_screen_get_width_nonsync():real
game_screen_get_height_nonsync():real
game_letterbox:bool
fntM*
fntBigName*
random(x:number):
irandom(x:number):
random_range(min:number, max:number):
irandom_range(min:number, max:number):
choose(...values):
game_set_seed(seed:int)
random_set_seed(seed:int)
random_get_seed():
/// Removes an instance without triggering it's Destroy-event (same as instance_destroy(inst, false)).
instance_delete(instance:id)
//{ Instance API
:instance_change(_:object, performevents:bool)
:instance_copy(performevents:bool):
/// Returns whether an instance belongs to given object type
instance_is(instance:id, object:object):
/// Returns array of instances that have varname equal to any of values.
instances_matching(object_or_array, varname:string, ...values):
/// Returns array of instances that have varname not equal to any of values
instances_matching_ne(object_or_array, varname:string, ...values):
/// Returns array of instances that have varname numeric and < the set threshold
instances_matching_lt(object_or_array, varname:string, value:number):
/// Returns array of instances that have varname numeric and > the set threshold
instances_matching_gt(object_or_array, varname:string, value:number):
/// Returns array of instances that have varname numeric and <= the set threshold
instances_matching_le(object_or_array, varname:string, value:number):
/// Returns array of instances that have varname numeric and >= the set threshold
instances_matching_ge(object_or_array, varname:string, value:number):
/// Returns an array of instances with their XY within rectangle
instances_in_rectangle(object_or_array, x1, y1, x2, y2):
/// Returns an array of instances with their XY within circle
instances_in_circle(object_or_array, x, y, rad):
/// Like instance_nearest, but takes an array of instances
instance_nearest_from(x, y, array_of_instances)
instance_nearest_bbox(x, y, obj_or_array)

:motion_add_raw(direction, speed);
:motion_add(direction, speed);
:motion_add_ct(direction, speed);
:motion_set_raw(direction, speed);
:motion_set(direction, speed);

point_seen(x:number, y:number, player:int):
point_seen_ext(x:number, y:number, borderx:number, bordery:number, player:int):
instance_animation_end_expected(inst):
instance_is_on_animation_frame(inst, frame):
//}
sprite_get_name(:sprite):
sprite_add(path:string, subimages:int, x:number, y:number):
sprite_add_base64(base64:string, subimages:int, x:number, y:number):
sprite_add_weapon(path:string, xorig:number, yorig:number):
sprite_add_weapon_base64(base64:string, xorig:number, yorig:number):
sprite_replace(:sprite, path:string, subimages:int, ?x:number, ?y:number)
sprite_replace_base64(:sprite, base64:string, subimages:int, ?x:number, ?y:number)
sprite_replace_image(:sprite, path:string, subimage:int, ?x:number, ?y:number)
sprite_replace_image_base64(:sprite, base64:string, subimages:int, ?x:number, ?y:number)
sprite_duplicate(:sprite):
sprite_duplicate_ext(:sprite, subimg_start:number, subimg_count:number):
sprite_restore(:sprite):
sprite_delete(:sprite):
sprite_collision_mask(:sprite, sepmasks:bool, bboxmode:int, bbleft:number, bbtop:number, bbright:number, bbbottom:number, kind:int, tolerance:number):
sprite_set_bbox_mode(ind,mode)
sprite_set_bbox(ind,left,top,right,bottom)
sprite_set_speed(sprite,speed,type)
sprite_set_nineslice(sprite,nineslice)
sprite_skin(bskin, ...sprites:sprite):
font_add_sprite(:sprite, first:int, prop:bool, sep:number):
font_add_sprite_ext(:sprite, chars:string, prop:bool, sep:number):
font_delete(:font)
current_time*
current_frame*
current_time_scale
current_time_scale_squared*
current_frame_is_active():
current_frame_get_repeat():
lq_get(obj, field)
lq_defget(obj, field, defvalue):
lq_size(obj):
lq_get_key(obj, fd_index):
lq_get_value(obj, fd_index):
lq_clone(obj):
//{ JSON functions
/// These actually use TJSON (https://yal.cc/gamemaker-tjson/)
/// and therefore work with arrays/lightweight objects instead of data structures
json_decode(json:string):
json_encode(value, ?indent:string):
json_true*
json_false*
json_error*
json_error_text
//}
/// Drawing:
:draw_self()
//{ draw_sprite
:draw_sprite(sprite:index, subimg:number, x:number, y:number)
:draw_sprite_pos(sprite:index, subimg:number, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, x4:number, y4:number, alpha:number)
:draw_sprite_ext(sprite:index, subimg:number, x:number, y:number, xscale:number, yscale:number, rot:number, :color, alpha:number)
:draw_sprite_ext(sprite:index, subimg:number, x:number, y:number, xscale:number, yscale:number, rot:number, :color, alpha:number)
:draw_sprite_stretched(sprite:index, subimg:number, x:number, y:number, w:number, h:number)
:draw_sprite_stretched_ext(sprite:index, subimg:number, x:number, y:number, w:number, h:number, :color, alpha:number)
:draw_sprite_tiled(sprite:index, subimg:number, x:number, y:number)
:draw_sprite_tiled_ext(sprite:index, subimg:number, x:number, y:number, xscale:number, yscale:number, :color, alpha:number)
:draw_sprite_part(sprite:index, subimg:number, left:number, top:number, width:number, height:number, x:number, y:number)
:draw_sprite_part_ext(sprite:index, subimg:number, left:number, top:number, width:number, height:number, x:number, y:number, xscale:number, yscale:number, :color, alpha:number)
:draw_sprite_general(sprite:index, subimg:number, left:number, top:number, width:number, height:number, x:number, y:number, xscale:number, yscale:number, rot:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
//}
//{ draw_background
draw_background(back:index, x:number, y:number)
draw_background_ext(back:index, x:number, y:number, xscale:number, yscale:number, rot:number, :color, alpha:number)
draw_background_stretched(back:index, x:number, y:number, w:number, h:number)
draw_background_stretched_ext(back:index, x:number, y:number, w:number, h:number, :color, alpha:number)
draw_background_tiled(back:index, x:number, y:number)
draw_background_tiled_ext(back:index, x:number, y:number, xscale:number, yscale:number, :color, alpha:number)
draw_background_part(back:index, left:number, top:number, width:number, height:number, x:number, y:number)
draw_background_part_ext(back:index, left:number, top:number, width:number, height:number, x:number, y:number, xscale:number, yscale:number, :color, alpha:number)
draw_background_general(back:index, left:number, top:number, width:number, height:number, x:number, y:number, xscale:number, yscale:number, rot:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
//}
//{ draw_ basics
draw_clear(:color)
draw_clear_alpha(:color, alpha:number)
draw_point(x:number, y:number)
draw_line(x1:number, y1:number, x2:number, y2:number)
draw_line_width(x1:number, y1:number, x2:number, y2:number, w:number)
draw_rectangle(x1:number, y1:number, x2:number, y2:number, outline:bool)
draw_roundrect(x1:number, y1:number, x2:number, y2:number, outline:bool)
draw_roundrect_ext(x1:number, y1:number, x2:number, y2:number, radiusx:number, radiusy:number, outline:bool)
draw_triangle(x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, outline:bool)
draw_circle(x:number, y:number, r:number, outline:bool)
draw_ellipse(x1:number, y1:number, x2:number, y2:number, outline:bool)
draw_set_circle_precision(precision:number)
draw_arrow(x1:number, y1:number, x2:number, y2:number, size:number)
draw_button(x1:number, y1:number, x2:number, y2:number, up:bool)
:draw_path(path:index, x:number, y:number, absolute:bool)
draw_healthbar(x1:number, y1:number, x2:number, y2:number, amount:number, backcol, mincol:color, maxcol:color, direction:number, showback:bool, showborder:bool)
//}
//{ draw_text
draw_text(x:number, y:number, string:string)
draw_text_ext(x:number, y:number, string, sep:number, w:number)
draw_text_transformed(x:number, y:number, string:string, xscale:number, yscale:number, angle:number)
draw_text_ext_transformed(x:number, y:number, string:string, sep, w:number, xscale:number, yscale:number, angle:number)
draw_text_colour(x:number, y:number, string:string, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_color(x:number, y:number, string:string, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_ext_colour(x:number, y:number, string:string, sep, w:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_ext_color(x:number, y:number, string:string, sep, w:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_transformed_colour(x:number, y:number, string:string, xscale:number, yscale:number, angle:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_transformed_color(x:number, y:number, string:string, xscale:number, yscale:number, angle:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_ext_transformed_colour(x:number, y:number, string:string, sep, w:number, xscale:number, yscale:number, angle:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
draw_text_ext_transformed_color(x:number, y:number, string:string, sep, w:number, xscale:number, yscale:number, angle:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
/// Draws text with @tags (see doc)
draw_text_nt(x:number, y:number, :string)
draw_tooltip(x:number, y:number, :string)
draw_text_shadow(x:number, y:number, :string)
//}
//{ draw_ advanced
draw_point_colour(x:number, y:number, col1:color)
draw_point_color(x:number, y:number, col1:color)
draw_line_colour(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color)
draw_line_color(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color)
draw_line_width_colour(x1:number, y1:number, x2:number, y2:number, w:number, col1:color, col2:color)
draw_line_width_color(x1:number, y1:number, x2:number, y2:number, w:number, col1:color, col2:color)
draw_rectangle_colour(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, col3:color, col4:color, outline:bool)
draw_rectangle_color(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, col3:color, col4:color, outline:bool)
draw_roundrect_colour(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, outline:bool)
draw_roundrect_color(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, outline:bool)
draw_roundrect_colour_ext(x1:number, y1:number, x2:number, y2:number, radiusx:number, radiusy:number, col1:color, col2:color, outline:bool)
draw_roundrect_color_ext(x1:number, y1:number, x2:number, y2:number, radiusx:number, radiusy:number, col1:color, col2:color, outline:bool)
draw_triangle_colour(x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, col1:color, col2:color, col3:color, outline:bool)
draw_triangle_color(x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, col1:color, col2:color, col3:color, outline:bool)
draw_circle_colour(x:number, y:number, r:number, col1:color, col2:color, outline:bool)
draw_circle_color(x:number, y:number, r:number, col1:color, col2:color, outline:bool)
draw_ellipse_colour(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, outline:bool)
draw_ellipse_color(x1:number, y1:number, x2:number, y2:number, col1:color, col2:color, outline:bool)
draw_rect_ext(x:number, y:number, width:number, height:number, :color, alpha:number)
//}
//{ draw_primitive
draw_primitive_begin(kind:int)
draw_vertex(x:number, y:number)
draw_vertex_colour(x:number, y:number, col:color, alpha:number)
draw_vertex_color(x:number, y:number, col:color, alpha:number)
draw_primitive_end()
draw_primitive_begin_texture(kind:int, texid)
draw_vertex_texture(x:number, y:number, xtex:number, ytex:number)
draw_vertex_texture_colour(x:number, y:number, xtex:number, ytex:number, col:color, alpha:number)
draw_vertex_texture_color(x:number, y:number, xtex:number, ytex:number, col:color, alpha:number)
//}
//{ Visibility API
/// Changes whether subsequently drawn graphics should be visible to given player
draw_set_visible(player:int, visible:bool)
/// Same as above, but applies to all players
draw_set_visible_all(visible:bool)
/// Returns state set via above two
draw_get_visible(player:int):
/// Has subsequently drawn graphics visible to player if a rectangle is within local view bounds
draw_set_visible_bbox(player:int, left:number, top:number, right:number, bottom:number)
/// Has subsequently drawn graphics visible to all players if a rectangle is within local view bounds
draw_set_visible_bbox_all(left:number, top:number, right:number, bottom:number)
//}
//{
d3d_set_fog(enable:bool, color:color, start:number, end:number)
draw_set_fog(enable:bool, color:color, start:number, end:number)
//}
/// Changes the transformation matrix for subsequently drawn graphics. Mode can be one of following:
/// 0: No offset
/// 1: View offset
/// 2: Player HUD (index specifies player)
draw_set_projection(mode:int, ?index:int)
draw_reset_projection()
/// Shaders:
shader_kind_hlsl_legacy = 0
shader_kind_hlsl = 1
shader_kind_hlsl_gms2 = 2
shader_create(vertex_code:string, fragment_code:string, ?kind):
shader_destroy(shader):
shader_is_compiled(shader):
shader_set(shader)
shader_reset()
shader_get_sampler_index(shader, uniform_name:string):
shader_get_uniform(shader, uniform_name:string):
shader_get_uniform_at(shader, type:int, index:int):
texture_set_stage(sampler:index, tex)
shader_set_uniform_i(uniform:index, ...values:int)
shader_set_uniform_i_array(uniform:index, values:array)
shader_set_uniform_f(uniform:index, ...values:number)
shader_set_uniform_f_array(uniform:index, values:array)
shader_set_uniform_matrix(uniform:index)
shader_set_uniform_matrix_array(uniform:index, mtx:array)
shader_set_vertex_constant_f(start_register:int, :array)
shader_set_vertex_constant_i(start_register:int, :array)
shader_set_vertex_constant_b(start_register:int, :array)
shader_set_fragment_constant_f(start_register:int, :array)
shader_set_fragment_constant_i(start_register:int, :array)
shader_set_fragment_constant_b(start_register:int, :array)
background_color
//{ Mod API
/// NTT mod version
game_version = 100003
mod_exists(type:string, name:string):
/// Returns an array containing names of loaded mods of given type.
mod_get_names(type:string):
mod_variable_exists(type:string, name:string, varName:string):
mod_variable_get(type:string, name:string, varName:string):
mod_variable_set(type:string, name:string, varName:string, value):
mod_script_exists(type:string, name:string, scrName:string):
${raw}mod_script_call(type:string, name:string, scrName:string, ...args):
/// mod_script_call but without passing self/other.
/// as result, self/other in called script can be very arbitrary, especially after `wait`.
${raw}mod_script_call_nc(type:string, name:string, scrName:string, ...args):
/// mod_script_call but only passing self - akin to above.
${raw}mod_script_call_self(type:string, name:string, scrName:string, ...args):
//{
mod_sideload():
mod_load(path:string):
mod_loadlive(path:string):
mod_loadtext(path:string):
mod_unload(path:string):
//}
//}
//{
script_ref_create(script:index, ...args):
script_ref_create_ext(type:string, name:string, script:string, ...args):
${raw}script_ref_call(ref, ...args):
script_bind_begin_step(script, depth:number, ...args):
script_bind_step(script, depth:number, ...args):
script_bind_end_step(script, depth:number, ...args):
script_bind_draw(script, depth:number, ...args):
//}
//{ Audio API
sound_loop(:sound):
sound_play(:sound):
sound_play_pitch(:sound, pitch:number):
sound_play_pitchvol(:sound, pitch:number, volume:number):
/// Plays a sound for gunshot.
/// The way audio system works in Nuclear Throne is that non-gun audio is temporarily
/// faded (to `fade` volume) for a few moments after each shot.
/// Regular guns use fade=0.3, small guns use fade=0.6, large guns use fade=-0.5
sound_play_gun(:sound, pitch_spread:number, fade:number):
:sound_play_hit(:sound, pitch_spread:number):
:sound_play_hit_big(:sound, pitch_spread:number):
sound_stop(:sound)
sound_stop_all()
sound_set_track_position(:sound, seconds:number)
sound_pitch(:sound, pitch:number)
sound_volume(:sound, volume:number)
sound_exists(:sound):
sound_get_name(:sound):
sound_play_music(:sound)
sound_play_ambient(:sound)
sound_add(path:string):
sound_delete(:sound)
/// note: you can't replace sounds loaded by mods - change variables for that.
sound_assign(original:sound, replace:sound):
sound_replace(original:sound, path:string):
sound_restore(original:sound)
//}
//{ Player API
/**
 * A constant that holds the number of player slots (4) used in player functions. 
 * 	Intended to be used instead of hardcoding `4` everywhere.
 * 	e.g. for (var p = 0; p < maxp; p++) { ... }
 */
maxp = 4
button_check(player:int, button:string):
button_pressed(player:int, button:string):
button_released(player:int, button:string):
mouse_x[player]*
mouse_y[player]*
mouse_delta_x[player]*
mouse_delta_y[player]*
view_xview[player]*
view_yview[player]*
view_object[player]:id
view_pan_factor[player]
view_shake[player]:number
view_shake_at(x:number, y:number, amount:number)
view_shake_max_at(x:number, y:number, amount:number)
/// Finds a player instance by player index
player_find(player:int):
player_get_color(player:int):
player_is_active(player:int):
player_get_alias(player:int):
player_get_outlines(player:int):
player_get_uid(player:int):
player_get_race(player:int):
player_get_race_id(player:int):
player_set_race(player:int, race)
player_get_race_pick(player:int):
player_get_race_pick_id(player:int):
player_set_race_pick(player:int, race)
player_get_skin(player:int):
player_set_skin(player:int, skin)
player_count_race(race):
player_get_show_cursor(of_player:int, to_player:int):
player_set_show_cursor(of_player:int, to_player:int, show:bool)
player_get_show_marker(of_player:int, to_player:int):
player_set_show_marker(of_player:int, to_player:int, show:bool)
player_get_show_hud(of_player:int, to_player:int):
player_set_show_hud(of_player:int, to_player:int, show:bool)
player_get_show_prompts(of_player:int, to_player:int)
player_set_show_prompts(of_player:int, to_player:int, show:bool)
player_get_show_skills(to_player:int):
player_set_show_skills(to_player:int, show:bool)
:player_fire(?direction:number)
:player_fire_ext(?direction:number, ?wep, ?x:number, ?y:number, ?team:number, ?creator:id, ...):
//{ non-sync functions (BE CAREFUL)
player_is_local_nonsync(player:int):
player_find_local_nonsync(local_index:int=0):
button_check_nonsync(player:int, button:string):
button_pressed_nonsync(player:int, button:string):
button_released_nonsync(player:int, button:string):
/// Local mouse coordinates (note: currently gamepads have no effect on these)
mouse_x_nonsync*
mouse_y_nonsync*
/// Local view coordinates
view_xview_nonsync*
view_yview_nonsync*
/// Used by audio functions, does not modify primary RNG state.
random_nonsync(x:number):
get_timer_nonsync():
//}
//}
//{ Weapon API
weapon_get_name(wep):
weapon_get_area(wep):
weapon_get_sprt(wep):
weapon_get_sprite(wep):
weapon_get_sprt_hud(wep):
weapon_get_auto(wep):
weapon_get_load(wep):
weapon_get_type(wep):
weapon_get_cost(wep):
weapon_get_rads(wep):
weapon_get_swap(wep):
weapon_get_text(wep):
weapon_is_melee(wep):
weapon_get_gold(wep):
weapon_get_laser_sight(wep):
/// setters - only work for built-in weapons:
weapon_set_name(wep:index, :string)
weapon_set_area(wep:index, :number)
weapon_set_sprt(wep:index, :sprite)
weapon_set_sprite(wep:index, :sprite)
weapon_set_auto(wep:index, :bool)
weapon_set_load(wep:index, :number)
weapon_set_type(wep:index, :index)
weapon_set_cost(wep:index, :number)
weapon_set_swap(wep:index, :sound)
weapon_set_text(wep:index, :string)
weapon_set_rads(wep:index, :number)
/// Can be used in weapon_fire for common weapon effects
:weapon_post(wkick:number, shift:number, shake:number)
/// Adds all weapons (regular and modded) within the given area range to a list.
/// Returns the number of weapons found.
:weapon_get_list(list, ?minarea:number, ?maxarea:number):
//}
//{ Projectile helpers
/// Sets projectile's team,creator
/// Also adjusts position based on direction,speed if current_time_scale < 1
/// (to make sure that projectiles are always on the right spot when first seen)
:projectile_init(team:id, creator:id)
/// Checks if a bullet can hit the given target (team comparison)
:projectile_canhit(hitme:id):
/// Checks if a swing can hit the given target (team and iframe comparison)
:projectile_canhit_melee(hitme:id):
/// Checks if a non-player attack can hit the given target (team and hp; iframes for players)
:projectile_canhit_np(hitme:id):
/// Deals damage to given entity, pushing it in given direction if needed.
:projectile_hit(hitme:id, damage:number, ?knockback:number, ?kb_dir:number)
/// Deals damage to given entity, pushing it away from the projectile.
:projectile_hit_push(hitme:id, damage:number, knockback:number)
/// Deals damage to given entity as enemy projectiles would (freeze frames for player hits).
:projectile_hit_np(hitme:id, damage:number, knockback:number, freeze_ms:number)
/// Deals damage to given entity as if by global source (mutations/active/lightning/...)
/// hurt_snd is 0 for no sound, 1 for regular sound, 2 for 'hit by large object' sound
:projectile_hit_raw(hitme:id, damage:number, hurt_snd:int)
//}
:pickup_drop(pickupChancePercent:number, weaponChancePercent:number, ?attemptNumber:int)

pickup_chance_multiplier*
//{ Skill API
skill_get(skill):
skill_set(skill, value:number):
skill_get_at(index:int):
/// returns an array if called without an array, otherwise returns items written to start of array
skill_get_array(?out_array):
skill_clear()
skill_get_active(skill):
skill_set_active(skill, active:bool)
skill_get_name(skill)
skill_get_text(skill)
/// Returns [sprite, subimg] pair if known, undefined otherwise
skill_get_icon(skill):
ultra_get(race, index:int)
ultra_set(race, index:int, active:bool)
ultra_count(race):
//}
//{ Skill API
crown_get_name(crown):
crown_get_text(crown):
crown_current:any
//}
crown_get_pick():
crown_set_pick(newcrown)
//{ Race API
race_get_active(race):
race_set_active(race, active:bool)
race_get_id(race)
race_get_name(race)
race_get_alias(race)
race_get_avail(race):
//}
//{ Level API
area_get_background_color(area:int)
area_get_shadow_color(area:int)
area_get_name(area, subarea, loops, ?victory, ?hardmode):
area_can_spawn_portal():
//}
collision_line_point(x1, y1, x2, y2, obj, prec, notme, ?out_struct):
:collision_line_width_first(x1, y1, x2, y2, obj, width, ?out_struct):
:alarm_run(alarm_ind):
method_tree_blocks*
method_tree_build(block):
file_load(...paths):
file_unload(...paths)
file_loaded(path:string):
file_exists(path:string):
file_size(path:string):
file_md5(path:string):
file_sha1(path:string):
file_delete(path:string):
file_download(url_to_get_from:string, path:string)
file_upload(path_to_upload:string, url_to_post_to:string, ?path_for_response:string)
http_request(url:string, method:string, headers_map, body:string, ?path_for_response:string)
file_load_bytes(path:string):
file_save_bytes(path:string, bytes):
file_save_bytes_ext(path:string, bytes, start:int, length:int):
file_find_all(path:string, result:array, ?depth:int):
//{ Translation API
loc(key:string, defvalue:string):
loc_set(key:string, value:string)
//}
wep_none = 0
wep_revolver = 1
wep_triple_machinegun = 2
wep_wrench = 3
wep_machinegun = 4
wep_shotgun = 5
wep_crossbow = 6
wep_grenade_launcher = 7
wep_double_shotgun = 8
wep_minigun = 9
wep_auto_shotgun = 10
wep_auto_crossbow = 11
wep_super_crossbow = 12
wep_shovel = 13
wep_bazooka = 14
wep_sticky_launcher = 15
wep_smg = 16
wep_assault_rifle = 17
wep_disc_gun = 18
wep_laser_pistol = 19
wep_laser_rifle = 20
wep_slugger = 21
wep_gatling_slugger = 22
wep_assault_slugger = 23
wep_energy_sword = 24
wep_super_slugger = 25
wep_hyper_rifle = 26
wep_screwdriver = 27
wep_laser_minigun = 28
wep_blood_launcher = 29
wep_splinter_gun = 30
wep_toxic_bow = 31
wep_sentry_gun = 32
wep_wave_gun = 33
wep_plasma_gun = 34
wep_plasma_cannon = 35
wep_energy_hammer = 36
wep_jackhammer = 37
wep_flak_cannon = 38
wep_golden_revolver = 39
wep_golden_wrench = 40
wep_golden_machinegun = 41
wep_golden_shotgun = 42
wep_golden_crossbow = 43
wep_golden_grenade_launcher = 44
wep_golden_laser_pistol = 45
wep_chicken_sword = 46
wep_nuke_launcher = 47
wep_ion_cannon = 48
wep_quadruple_machinegun = 49
wep_flamethrower = 50
wep_dragon = 51
wep_flare_gun = 52
wep_energy_screwdriver = 53
wep_hyper_launcher = 54
wep_laser_cannon = 55
wep_rusty_revolver = 56
wep_lightning_pistol = 57
wep_lightning_rifle = 58
wep_lightning_shotgun = 59
wep_super_flak_cannon = 60
wep_sawed_off_shotgun = 61
wep_splinter_pistol = 62
wep_super_splinter_gun = 63
wep_lightning_smg = 64
wep_smart_gun = 65
wep_heavy_crossbow = 66
wep_blood_hammer = 67
wep_lightning_cannon = 68
wep_pop_gun = 69
wep_plasma_rifle = 70
wep_pop_rifle = 71
wep_toxic_launcher = 72
wep_flame_cannon = 73
wep_lightning_hammer = 74
wep_flame_shotgun = 75
wep_double_flame_shotgun = 76
wep_auto_flame_shotgun = 77
wep_cluster_launcher = 78
wep_grenade_shotgun = 79
wep_grenade_rifle = 80
wep_rogue_rifle = 81
wep_party_gun = 82
wep_double_minigun = 83
wep_gatling_bazooka = 84
wep_auto_grenade_shotgun = 85
wep_ultra_revolver = 86
wep_ultra_laser_pistol = 87
wep_sledgehammer = 88
wep_heavy_revolver = 89
wep_heavy_machinegun = 90
wep_heavy_slugger = 91
wep_ultra_shovel = 92
wep_ultra_shotgun = 93
wep_ultra_crossbow = 94
wep_ultra_grenade_launcher = 95
wep_plasma_minigun = 96
wep_devastator = 97
wep_golden_plasma_gun = 98
wep_golden_slugger = 99
wep_golden_splinter_gun = 100
wep_golden_screwdriver = 101
wep_golden_bazooka = 102
wep_golden_assault_rifle = 103
wep_super_disc_gun = 104
wep_heavy_auto_crossbow = 105
wep_heavy_assault_rifle = 106
wep_blood_cannon = 107
wep_dog_spin_attack = 108
wep_dog_missile = 109
wep_incinerator = 110
wep_super_plasma_cannon = 111
wep_seeker_pistol = 112
wep_seeker_shotgun = 113
wep_eraser = 114
wep_guitar = 115
wep_bouncer_smg = 116
wep_bouncer_shotgun = 117
wep_hyper_slugger = 118
wep_super_bazooka = 119
wep_frog_pistol = 120
wep_black_sword = 121
wep_golden_nuke_launcher = 122
wep_golden_disc_gun = 123
wep_heavy_grenade_launcher = 124
wep_gun_gun = 125
wep_eggplant = 126
wep_golden_frog_pistol = 127
mut_none = 0
mut_rhino_skin = 1
mut_extra_feet = 2
mut_plutonium_hunger = 3
mut_rabbit_paw = 4
mut_throne_butt = 5
mut_lucky_shot = 6
mut_bloodlust = 7
mut_gamma_guts = 8
mut_second_stomach = 9
mut_back_muscle = 10
mut_scarier_face = 11
mut_euphoria = 12
mut_long_arms = 13
mut_boiling_veins = 14
mut_shotgun_shoulders = 15
mut_recycle_gland = 16
mut_laser_brain = 17
mut_last_wish = 18
mut_eagle_eyes = 19
mut_impact_wrists = 20
mut_bolt_marrow = 21
mut_stress = 22
mut_trigger_fingers = 23
mut_sharp_teeth = 24
mut_patience = 25
mut_hammerhead = 26
mut_strong_spirit = 27
mut_open_mind = 28
mut_heavy_heart = 29
char_random = 0
char_fish = 1
char_crystal = 2
char_eyes = 3
char_melting = 4
char_plant = 5
char_venuz = 6
char_steroids = 7
char_robot = 8
char_chicken = 9
char_rebel = 10
char_horror = 11
char_rogue = 12
char_bigdog = 13
char_skeleton = 14
char_frog = 15
crwn_random = 0
crwn_none = 1
crwn_death = 2
crwn_life = 3
crwn_haste = 4
crwn_guns = 5
crwn_hatred = 6
crwn_blood = 7
crwn_destiny = 8
crwn_love = 9
crwn_luck = 10
crwn_curses = 11
crwn_risk = 12
crwn_protection = 13
area_campfire = 0
area_desert = 1
area_sewers = 2
area_scrapyard = 3
area_caves = 4
area_frozencity = 5
area_labs = 6
area_palace = 7
area_vault = 100
area_oasis = 101
area_pizza_sewers = 102
area_mansion = 103
area_cursed_caves = 104
area_jungle = 105
area_hq = 106
area_crib = 107
mod_current = "modname"
mod_current_type = "mod"
:raw_<unknown>(...)
:raw_tj_std_Std_stringify(...)
:raw_tj_std_Std_parseFloat(...)
:raw_tj_stringbuf_add_sub(...)
:raw_tj_stringbuf_to_string(...)
:raw_tj_decode_uxchar(...)
:raw_tj_decode_string(...)
:raw_tj_decode_number(...)
:raw____struct___0_tj_decode_value_gml_GlobalScript_TJSON(...)
:raw_tj_decode_value(...)
:raw_tj_decode_main(...)
:raw_tj_encode_string(...)
:raw_tj_encode_number(...)
:raw_tj_encode_value(...)
:raw_tj_encode_main(...)
:raw_tj_decode(...)
:raw_tj_encode(...)
:raw_tj_opt_value_keys(...)
:raw_tj_opt_ident_keys(...)
:raw_tj_source__new(...)
:raw_tj_source_sub(...)
:raw_tj_is_array(...)
:raw_tj_is_object(...)
:raw____struct___1_tj_magic_value_gml_GlobalScript_TJSON(...)
:raw_tj_magic_value(...)
:raw_tj_bool(...)
:raw_tj_is_bool(...)
:raw_tj_typeof(...)
:raw_tj_typeid(...)
:raw____struct___2_tj_object_gml_GlobalScript_TJSON(...)
:raw_tj_object(...)
:raw_tj_array(...)
:raw_tj_get(...)
:raw_tj_set(...)
:raw_tj_delete(...)
:raw_tj_size(...)
:raw_tj_keys(...)
:raw_tj_compare(...)
:raw____struct___3_tj_copy_gml_GlobalScript_TJSON(...)
:raw_tj_copy(...)
:raw_tj_std_haxe_Exception_thrown(...)
:raw_method_tree_build(...)
:raw_MP_Fct_Steam(...)
:raw_dp_enum_toString(...)
:raw_dp_enum_getIndex(...)
:raw_dp_Date(...)
:raw_dp_Date_now(...)
:raw_dp_Std_stringify(...)
:raw_dp_Std_parseFloat(...)
:raw_dp_Std_parseInt(...)
:raw_dp_string_substring(...)
:raw_dp_StringTools_lpad(...)
:raw_dp_StringTools_hex(...)
:raw_dp_debug_get_use_ms_time(...)
:raw_dp_debug_set_use_ms_time(...)
:raw_dp_debug_log_inner_hx(...)
:raw_dp_debug_log_hx(...)
:raw_dp_debug_log_haxe_hx(...)
:raw_dp_debug_init_hx(...)
:raw_dp_net_adapter_new(...)
:raw_dp_net_adapter(...)
:raw_dp_net_adapter_packet(...)
:raw_dp_net_adapters_adp_steam_wrap(...)
:raw_dp_make_array(...)
:raw_dp_func_valid(...)
:raw_dp_make_buffer(...)
:raw_dp_free_buffer(...)
:raw_dp_print_buffer(...)
:raw_dp_crc32(...)
:raw_dp_crc16(...)
:raw_dp_sleep(...)
:raw_dp_get_timer(...)
:raw_dp_core_random(...)
:raw_dp_core_random_set_seed(...)
:raw_dp_core_randomize(...)
:raw_dp_flow_get_can_rollback(...)
:raw_dp_flow_get_should_rollback_save(...)
:raw_dp_flow_reset_hx(...)
:raw_dp_flow_close(...)
:raw_dp_flow_close_inner_hx(...)
:raw_dp_flow_steam_start_hx(...)
:raw_dp_flow_start_hx(...)
:raw_dp_flow_handle_hash_hx(...)
:raw_dp_flow_handle_desyncs_hx(...)
:raw_dp_flow_send_states_hx(...)
:raw_dp_flow_change_delay_hx(...)
:raw_dp_flow_change_delay_post_hx(...)
:raw_dp_flow_handle_events_hx(...)
:raw_dp_flow_next_hx(...)
:raw_dp_flow_can_advance_hx(...)
:raw_dp_flow_timeout_players_hx(...)
:raw_dp_flow_update_sync_hx(...)
:raw_dp_flow_update_hx(...)
:raw_dp_event_create(...)
:raw_dp_event_update(...)
:raw_dp_event_room_start(...)
:raw_dp_event_game_end(...)
:raw_dp_event_network(...)
:raw_dp_event_steam(...)
:raw_dp_hub_holepunch_hx(...)
:raw_dp_hub_holepunch_ext_hx(...)
:raw_dp_hub_find_match(...)
:raw_dp_hub_stop_search(...)
:raw_dp_hub_get_entry_count(...)
:raw_dp_hub_get_entry_uid(...)
:raw_dp_hub_get_entry_title(...)
:raw_dp_hub_get_entry_url(...)
:raw_dp_hub_get_entry_port(...)
:raw_dp_hub_get_entry_rtt(...)
:raw_dp_hub_get_entry_slots_total(...)
:raw_dp_hub_get_entry_slots_taken(...)
:raw_dp_hub_refresh_entries(...)
:raw_dp_hub_is_loading_entries(...)
:raw_dp_hub_ping_entries(...)
:raw_dp_hub_join_public(...)
:raw_dp_hub_host_public(...)
:raw_dp_hub_host_private(...)
:raw_dp_hub_host_stop(...)
:raw_dp_hub_join_private(...)
:raw_dp_hub_update_hx(...)
:raw_dp_hub_handle_hx(...)
:raw_dp_hub_close(...)
:raw_dp_hub_reset_hx(...)
:raw_dp_hub_init_hx(...)
:raw_dp_hub_link(...)
:raw_dp_lobby_open_hx(...)
:raw_dp_lobby_close(...)
:raw_dp_lobby_reset_hx(...)
:raw_dp_lobby_update_auto_delay_hx(...)
:raw_dp_lobby_update_hx(...)
:raw_dp_lobby_init_hx(...)
:raw_dp_lobby_input_delay_sufficient(...)
:raw_dp_lobby_set_input_delay(...)
:raw_dp_lobby_get_slot_count(...)
:raw_dp_lobby_set_slot_count(...)
:raw_dp_lobby_send_message(...)
:raw_dp_lobby_send_buffer(...)
:raw_dp_lobby_send_buffer_to(...)
:raw_dp_lobby_show_invite_overlay(...)
:raw_dp_host(...)
:raw_dp___host_conf_hx(...)
:raw_dp_join(...)
:raw_dp_leave(...)
:raw_dp_join_hub(...)
:raw_dp_start(...)
:raw_dp_reset(...)
:raw_dp_init_func_hx(...)
:raw_dp_net_update_hx(...)
:raw_dp_net_join_hx(...)
:raw_dp_net_host_hx(...)
:raw_dp_net_pre_handle_hx(...)
:raw_dp_net_handle_hx(...)
:raw_dp_net_reset_hx(...)
:raw_dp_net_init_hx(...)
:raw_dp_player(...)
:raw_dp_player_get_haxe_hx(...)
:raw_dp_player_get_active_players(...)
:raw_dp_player_set_count(...)
:raw_dp_player_async_enable(...)
:raw_dp_player_async_disable(...)
:raw_dp_player_reset_hx(...)
:raw_dp_player_init_hx(...)
:raw_dp__player_active_player_iterator(...)
:raw_dp_player_count_total(...)
:raw_dp_player_count_active(...)
:raw_dp_player_count_local(...)
:raw_dp_player_count_remote(...)
:raw_dp_player_count_viewed(...)
:raw_dp_player_count_uid(...)
:raw_dp_player_count_sources(...)
:raw_dp_player_find_active(...)
:raw_dp_player_find_local(...)
:raw_dp_player_find_remote(...)
:raw_dp_player_find_viewed(...)
:raw_dp_player_find_uid(...)
:raw_dp_player_find_source(...)
:raw_dp_player_is_empty(...)
:raw_dp_player_is_active(...)
:raw_dp_player_is_local(...)
:raw_dp_player_is_remote(...)
:raw_dp_player_is_viewed(...)
:raw_dp_player_is_server(...)
:raw_dp_player_get_alias(...)
:raw_dp_player_set_alias(...)
:raw_dp_player_get_uid(...)
:raw_dp_player_get_rtt(...)
:raw_dp_player_get_mtt(...)
:raw_dp_player_get_att(...)
:raw_dp_player_get_wait_time(...)
:raw_dp_player_get_time_since_last_packet(...)
:raw_dp_player_get_steam_id(...)
:raw_dp_player_drop(...)
:raw_dp_player_occupy(...)
:raw_dp_player_release(...)
:raw_dp_player_swap(...)
:raw_dp_player_get_scheme(...)
:raw_dp_player_set_scheme(...)
:raw_dp_player_get_button_node(...)
:raw_dp_player_get_state_count(...)
:raw_dp_player_get_state(...)
:raw_dp_player_get_seed(...)
:raw_dp_player_get_gamepad(...)
:raw_dp_player_set_gamepad(...)
:raw_dp_player_set_delay(...)
:raw_dp_get_players(...)
:raw_dp_get_is_online(...)
:raw_dp_get_is_server(...)
:raw_dp_get_is_playing(...)
:raw_dp_get_is_connecting(...)
:raw_dp_get_delay(...)
:raw_dp_set_delay(...)
:raw_dp_get_delay_ms(...)
:raw_dp_set_delay_ms(...)
:raw_dp_set_deactivation_mode(...)
:raw_dp_set_pause_physics(...)
:raw_dp_copy_path(...)
:raw_dp_collections__dictionary_dictionary_impl__get(...)
:raw_dp_type_vector_clear(...)
:raw_dp_flow_flow_rollback_has_predicted_states_hx(...)
:raw_dp_flow_flow_rollback_save_player_states_hx(...)
:raw_dp_flow_flow_rollback_save_game_state_hx(...)
:raw_dp_flow_flow_rollback_load_game_state_hx(...)
:raw_dp_flow_flow_rollback_start_hx(...)
:raw_dp_flow_flow_rollback_handle_hx(...)
:raw_dp_flow_rollback_balancer_on_start_hx(...)
:raw_dp_flow_rollback_balancer_proc_frame_diff_hx(...)
:raw_dp_flow_rollback_balancer_proc_frame_diff_avg_wait_hx(...)
:raw_dp_flow_rollback_balancer_proc_frame_diff_avg_ffw_hx(...)
:raw_dp_flow_rollback_balancer_proc_frame_diff_avg_hx(...)
:raw_dp_flow_rollback_balancer_on_send_states_hx(...)
:raw_dp_flow_rollback_balancer_on_remote_frame_hx(...)
:raw_dp_flow_rollback_balancer_on_remote_frame_diff_hx(...)
:raw_dp_flow_flow_rollback_state_hash(...)
:raw_dp_flow_flow_rollback_state_hash_ensure_hx(...)
:raw_dp_flow_flow_rollback_state_hash_start_hx(...)
:raw_dp_flow_flow_rollback_state_hash_proc_post_hx(...)
:raw_dp_flow_flow_rollback_state_hash_proc_local_hx(...)
:raw_dp_flow_flow_rollback_state_hash_proc_remote_hx(...)
:raw_dp_flow_flow_rollback_stats_mark_rollback_hx(...)
:raw_dp_flow_flow_rollback_stats_get_count_hx(...)
:raw_dp_flow_flow_rollback_stats_next_hx(...)
:raw_dp_flow_flow_rollback_stats_want_delay_hx(...)
:raw_dp_flow_state(...)
:raw_dp_flow_flow_state_hash_calc_hash_hx(...)
:raw_dp_flow_flow_state_hash_handle_hash_hx(...)
:raw_dp_flow_flow_state_hash_handle_desync_hx(...)
:raw_dp_flow_flow_state_hash_check_for_desyncs_hx(...)
:raw_dp_axis_value(...)
:raw_dp_axis_previous(...)
:raw_dp_axis_value_async(...)
:raw_dp_axis_previous_async(...)
:raw_dp_axis_define(...)
:raw_dp_axis_define_async(...)
:raw_dp_axis_get_index(...)
:raw_dp_axis_get_name(...)
:raw_dp_axis_set_name(...)
:raw_dp_axis_get_input(...)
:raw_dp_axis_set_input(...)
:raw_dp_axis_get_node(...)
:raw_dp_axis_find(...)
:raw_dp_button_check(...)
:raw_dp_button_previous(...)
:raw_dp_button_pressed(...)
:raw_dp_button_released(...)
:raw_dp_button_check_async(...)
:raw_dp_button_previous_async(...)
:raw_dp_button_pressed_async(...)
:raw_dp_button_released_async(...)
:raw_dp_button_define(...)
:raw_dp_button_define_async(...)
:raw_dp_button_get_index(...)
:raw_dp_button_get_name(...)
:raw_dp_button_set_name(...)
:raw_dp_button_get_input(...)
:raw_dp_button_set_input(...)
:raw_dp_button_find(...)
:raw_dp_gamepad_get_count(...)
:raw_dp_gamepad_is_connected_hx(...)
:raw_dp_gamepad_button_hx(...)
:raw_dp_gamepad_axis_hx(...)
:raw_dp_input_key_get_code(...)
:raw_dp_input_key_get_name(...)
:raw_dp_input_key_init_hx(...)
:raw_dp_keyboard_check_hx(...)
:raw_dp_input_adapter(...)
:raw_dp_input_next_hx(...)
:raw_dp_input_update_hx(...)
:raw_dp_input_exec(...)
:raw_dp_input_define(...)
:raw_dp_input_find_buttons(...)
:raw_dp_input_init_hx(...)
:raw_dp_mouse_get_bt_left(...)
:raw_dp_mouse_get_bt_right(...)
:raw_dp_mouse_get_bt_middle(...)
:raw_dp_mouse_next_hx(...)
:raw_dp_mouse_update_hx(...)
:raw_dp_pos_value(...)
:raw_dp_pos_previous(...)
:raw_dp_pos_value_async(...)
:raw_dp_pos_previous_async(...)
:raw_dp_pos_define(...)
:raw_dp_pos_define_async(...)
:raw_dp_pos_get_index(...)
:raw_dp_pos_get_name(...)
:raw_dp_pos_set_name(...)
:raw_dp_pos_get_input(...)
:raw_dp_pos_set_input(...)
:raw_dp_pos_find(...)
:raw_dp_replay_record(...)
:raw_dp_replay_play(...)
:raw_dp_replay_takeover(...)
:raw_dp_replay_handle_takeover_hx(...)
:raw_dp_replay_set_view(...)
:raw_dp_replay_write_next_hx(...)
:raw_dp_replay_read_next_hx(...)
:raw_dp_replay_reset_hx(...)
:raw_dp_scheme(...)
:raw_dp_buffer_count(...)
:raw_dp_buffer_id(...)
:raw_dp_buffer_size(...)
:raw_dp_buffer_send(...)
:raw_dp_state(...)
:raw_dp_state_create_ext_hx(...)
:raw_mc_dp_input_state_event(...)
:raw_mc_dp_input_state_event_leaving(...)
:raw_mc_dp_input_state_event_owner_change(...)
:raw_dp_input_state_event_owner_change(...)
:raw_mc_dp_input_state_event_owner_change_re(...)
:raw_mc_dp_input_state_event_delay_change(...)
:raw_dp_input_state_event_delay_change(...)
:raw_mc_dp_input_state_event_flow_close(...)
:raw_dp_text_get(...)
:raw_dp_text_send(...)
:raw_dp_input_ast_in_func_def_call1_hx(...)
:raw_dp_input_ast_in_func_def_call2_hx(...)
:raw_dp_input_ast_in_func_def_call3_hx(...)
:raw_dp_input_ast_in_func_def_callx_hx(...)
:raw_dp_input_ast_in_func_def_init_hx(...)
:raw_mc_dp_input_leaf(...)
:raw_mc_dp_input_leaf_in_error(...)
:raw_dp_input_leaf_in_error(...)
:raw_mc_dp_input_leaf_in_current(...)
:raw_mc_dp_input_leaf_in_const(...)
:raw_dp_input_leaf_in_const(...)
:raw_mc_dp_input_leaf_in_ternary(...)
:raw_dp_input_leaf_in_ternary(...)
:raw_mc_dp_input_leaf_in_key(...)
:raw_dp_input_leaf_in_key(...)
:raw_mc_dp_input_leaf_in_mouse_button(...)
:raw_dp_input_leaf_in_mouse_button(...)
:raw_mc_dp_input_leaf_in_mouse_axis(...)
:raw_dp_input_leaf_in_mouse_axis(...)
:raw_mc_dp_input_leaf_in_joy_button(...)
:raw_dp_input_leaf_in_joy_button(...)
:raw_mc_dp_input_leaf_in_joy_axis(...)
:raw_dp_input_leaf_in_joy_axis(...)
:raw_mc_dp_input_leaf_in_unop(...)
:raw_dp_input_leaf_in_unop(...)
:raw_mc_dp_input_leaf_in_binop(...)
:raw_dp_input_leaf_in_binop(...)
:raw_mc_dp_input_leaf_in_func(...)
:raw_dp_input_leaf_in_func(...)
:raw_mc_dp_input_leaf_in_func1(...)
:raw_dp_input_leaf_in_func1(...)
:raw_mc_dp_input_leaf_in_func2(...)
:raw_dp_input_leaf_in_func2(...)
:raw_mc_dp_input_leaf_in_func3(...)
:raw_dp_input_leaf_in_func3(...)
:raw_mc_dp_input_leaf_in_func_x(...)
:raw_dp_input_leaf_in_func_x(...)
:raw_dp_input_leaf_equals_hx(...)
:raw_dp_input_leaf_contains_hx(...)
:raw_dp_input_leaf_print_hx(...)
:raw_dp_input_node(...)
:raw_dp_input_node_exec_leaf_hx(...)
:raw_dp_input_node_leaf_uses_gamepad_hx(...)
:raw_dp_input_node_leaf_uses_mouse_pos_hx(...)
:raw_dp_input_parse_get_cond(...)
:raw_dp_input_parse_next_hx(...)
:raw_dp_input_parse_curr_hx(...)
:raw_dp_input_parse_mark_hx(...)
:raw_dp_input_parse_get_error(...)
:raw_dp_input_parse_set_error_hx(...)
:raw_dp_input_parse_value_hx(...)
:raw_dp_input_parse_values_hx(...)
:raw_dp_input_parse_input_hx(...)
:raw_dp_input_parse_init_hx(...)
:raw_dp_net_client_handle_error_hx(...)
:raw_dp_net_client_handle_hx(...)
:raw_dp_net_client_accept_hx(...)
:raw_dp_link_iterator_hx(...)
:raw_dp_link_get_raw_list_hx(...)
:raw_dp_link_send_hx(...)
:raw_dp_link_handle_hx(...)
:raw_dp_link_add_hx(...)
:raw_dp_link_remove_hx(...)
:raw_dp_link_replace_hx(...)
:raw_dp_link_clear_hx(...)
:raw_dp_link_init_hx(...)
:raw_dp_link_get_link_hx(...)
:raw_dp_link_find_endpoint_hx(...)
:raw_dp_link_get_count(...)
:raw_dp_link_get_server_uid(...)
:raw_dp_link_get_uid(...)
:raw_dp_link_get_url(...)
:raw_dp_link_get_port(...)
:raw_dp_link_get_alias(...)
:raw_dp_link_get_rtt(...)
:raw_dp_link_get_att(...)
:raw_dp_link_get_next_out(...)
:raw_dp_link_get_confirmed_out(...)
:raw_dp_link_count_viewers(...)
:raw_dp_link_find_viewer(...)
:raw_dp_link_drop(...)
:raw_dp_net_netlink(...)
:raw_dp_net_netlink_from_steam_id_hx(...)
:raw_dp_link_relpacket(...)
:raw_dp_link_list_remove_hx(...)
:raw_dp_net_error_get_text_hx(...)
:raw_dp_net_error_get_name(...)
:raw_dp_net_game_handle_state_hx(...)
:raw_dp_net_game_handle_error_hx(...)
:raw_dp_net_game_handle_rollback_state_hash_hx(...)
:raw_dp_net_game_handle_desync_dump_hx(...)
:raw_dp_net_game_handle_hx(...)
:raw_dp_net_packet_get_name_hx(...)
:raw_dp_net_packet__rtt_hx(...)
:raw_dp_net_packet__slot_release_hx(...)
:raw_dp_net_packet__slot_update_hx(...)
:raw_dp_net_packet__slot_count_hx(...)
:raw_dp_net_packet__slot_alias_hx(...)
:raw_dp_net_packet__auth_hx(...)
:raw_dp_net_packet__delay_change_write_hx(...)
:raw_dp_net_packet__delay_change_read_hx(...)
:raw_dp_net_packet_printer_proc_hx(...)
:raw_dp_net_queue_update_hx(...)
:raw_dp_net_queue_handle_hx(...)
:raw_dp_net_server_handle_hx(...)
:raw_dp_net_server_accept_hx(...)
:raw_dp_net_shared_handle_rtt_hx(...)
:raw_dp_net_shared_handle_buffer_hx(...)
:raw_dp_net_shared_handle_leaving_hx(...)
:raw_dp_net_shared_handle_chat_hx(...)
:raw_dp_net_shared_handle_hx(...)
:raw_dp_net_adapters_adp_faucet_net(...)
:raw_dp_net_adapters_adp_steam(...)
:raw_dp_steam_set_active(...)
:raw_dp_steam_get_local_user_hx(...)
:raw_dp_steam_init_hx(...)
:raw_dp_steam_update_hx(...)
:raw_dp_steam_cleanup_hx(...)
:raw_dp_steam_set_played_with_hx(...)
:raw_dp_steam_reset_hx(...)
:raw_dp_steam_steam_impl_init_hx(...)
:raw_dp_steam_steam_impl_update_hx(...)
:raw_dp_steam_steam_impl_get_local_alias_hx(...)
:raw_dp_steam_steam_impl_set_played_with_hx(...)
:raw_dp_steam_steam_impl_async_event_hx(...)
:raw_dp_steam_steam_impl_cleanup_hx(...)
:raw_dp_steam_lobby_leave(...)
:raw_dp_steam_lobby_join(...)
:raw_dp_steam_lobby_lobby_joined_hx(...)
:raw_dp_steam_lobby_create_hx(...)
:raw_dp_steam_lobby_lobby_created_hx(...)
:raw_dp_steam_lobby_lobby_join_requested_hx(...)
:raw_dp_steam_lobby_update_start(...)
:raw_dp_steam_lobby_update_submit(...)
:raw_dp_steam_lobby_get_member_count(...)
:raw_dp_steam_lobby_get_data_int(...)
:raw_dp_steam_lobby_set_data(...)
:raw_dp_steam_lobby_set_type(...)
:raw_dp_steam_lobby_is_owner(...)
:raw_dp_steam_lobby_get_owner(...)
:raw_dp_steam_lobby_show_invite_overlay(...)
:raw_dp_steam_steam_lobby_impl_leave_hx(...)
:raw_dp_steam_steam_lobby_impl_join_hx(...)
:raw_dp_steam_steam_lobby_impl_create_hx(...)
:raw_dp_steam_steam_lobby_impl_set_data_hx(...)
:raw_dp_steam_steam_lobby_impl_is_owner_hx(...)
:raw_dp_steam_steam_lobby_impl_get_owner_hx(...)
:raw_dp_steam_steam_lobby_impl_show_invite_overlay_hx(...)
:raw_dp_steam_lobbylist_request(...)
:raw_dp_steam_lobbylist_is_loading(...)
:raw_dp_steam_lobbylist_add_string_filter(...)
:raw_dp_steam_lobbylist_add_numerical_filter(...)
:raw_dp_steam_lobbylist_get_count(...)
:raw_dp_steam_lobbylist_get_data(...)
:raw_dp_steam_lobbylist_get_lobby_id(...)
:raw_dp_steam_lobbylist_join(...)
:raw_dp_steam_lobbylist_get_lobby_member_count(...)
:raw_dp_steam_net_send_packet_hx(...)
:raw_dp_steam_net_receive_packet_hx(...)
:raw_dp_steam_net_get_packet_size_hx(...)
:raw_dp_steam_net_get_packet_data_hx(...)
:raw_dp_steam_steam_networking_impl_send_packet_hx(...)
:raw_dp_steam_steam_networking_impl_receive_packet_hx(...)
:raw_dp_steam_steam_networking_impl_get_packet_size_hx(...)
:raw_dp_steam_steam_networking_impl_get_packet_data_hx(...)
:raw_dp_steam_steam_networking_impl_get_packet_sender_hx(...)
:raw_dp_buffer_read_steam_id(...)
:raw_dp_buffer_read_buffer(...)
:raw_dp_buffer_write_buffer(...)
:raw_dp_type__crc32_crc32_impl__to_string(...)
:raw_dp_uid_create(...)
:raw_dp_type_url_to_int(...)
:raw_dp_type_url_from_int(...)
:raw_dp_haxe_class(...)
:raw_dp_haxe_enum(...)
:raw_gml_ds__array_list_array_list_iterator(...)
:raw_dp_gml_internal_ArrayImpl_push(...)
:raw_dp_gml_internal_ArrayImpl_copy(...)
:raw_dp_gml_io__Buffer_BufferImpl_writeBufferExt(...)
:raw_mc_haxe_stack_item(...)
:raw_mc_haxe_stack_item_cfunction(...)
:raw_mc_haxe_stack_item_module(...)
:raw_haxe_stack_item_module(...)
:raw_mc_haxe_stack_item_file_pos(...)
:raw_haxe_stack_item_file_pos(...)
:raw_mc_haxe_stack_item_method(...)
:raw_haxe_stack_item_method(...)
:raw_mc_haxe_stack_item_local_function(...)
:raw_haxe_stack_item_local_function(...)
:raw_haxe__call_stack_call_stack_impl__call_stack(...)
:raw_dp_init(...)
:raw_cmnMenu(...)
:raw_cmn_menu_create(...)
:raw_cmn_menu_call_funcs_cf(...)
:raw_cmn_menu_call_funcs_cf1(...)
:raw_cmn_menu_call_funcs_cf2(...)
:raw_cmn_menu_call_funcs_cf3(...)
:raw_cmn_menu_call_funcs_cf4(...)
:raw_cmn_menu_call_funcs_cf5(...)
:raw_cmn_menu_call_funcs_cf6(...)
:raw_cmn_menu_call_funcs_cf7(...)
:raw_cmn_menu_call_funcs_cf8(...)
:raw_cmn_menu_dispatch_lf(...)
:raw_cmn_menu_init_select_cache_lf(...)
:raw_cmn_menu_get_height_lf(...)
:raw_cmn_menu_get_height_until_lf(...)
:raw_cmn_menu_update_set_hash(...)
:raw_cmn_menu_input_lf(...)
:raw_cmn_menu_init_select_cache(...)
:raw_cmn_menu_get_count(...)
:raw_cmn_menu_get_script(...)
:raw_cmn_menu_get_height(...)
:raw_cmn_menu_set_height(...)
:raw_cmn_menu_get_height_until(...)
:raw_cmn_menu_get_select(...)
:raw_cmn_menu_set_select(...)
:raw_cmn_menu_can_select(...)
:raw_cmn_menu_shift_select(...)
:raw_cmn_menu_dispatch(...)
:raw_cmn_menu_update(...)
:raw_cmn_menu_input(...)
:raw_cmn_menu_draw(...)
:raw_cmn_menu_get_custom(...)
:raw_cmn_menu_set_custom(...)
:raw_cmn_menu_get_hash(...)
:raw_cmn_menu_add(...)
:raw_cmn_menu_trigger(...)
:raw_cmn_menu_get_current_count(...)
:raw_cmn_menu_get_current_select(...)
:raw_cmn_menu_get_current_custom(...)
:raw_cmn_menu_std_haxe_class(...)
:raw_cmn_menu_std_gml_internal_ArrayImpl_indexOf(...)
:raw_cmn_menu_std_haxe_Exception_new(...)
:raw_cmn_menu_std_haxe_Exception_create(...)
:raw_cmn_menu_std_haxe_Exception_isNativeException(...)
:raw_cmn_menu_std_haxe_Exception_thrown(...)
:raw_cmn_menu_std_haxe_ValueException_create(...)
:raw_anon_9F9CCBCC_19511(...)
:raw_ModAPI(...)
:raw_anon_B2B0DFA6_516(...)
:raw_gml_api_std_enum_toString(...)
:raw_gml_api_std_enum_getIndex(...)
:raw_mod_inst_create(...)
:raw_mod_inst_get_current(...)
:raw_mod_inst_resolve_load(...)
:raw_mod_inst_resolve_save(...)
:raw_mod_inst_init(...)
:raw_mod_inst_cleanup(...)
:raw_gml_api_std_Std_stringify(...)
:raw_gml_api_std_string_split(...)
:raw_gml_api_std_string_substr(...)
:raw_gml_api_std_string_substring(...)
:raw_gml_api_std_StringTools_startsWith(...)
:raw_cmn_chat_update(...)
:raw____struct___8_cmn_chat_add_gml_GlobalScript_ModAPI(...)
:raw_cmn_chat_add(...)
:raw_cmn_chat_clear(...)
:raw_cmn_chat_draw(...)
:raw_cmn_chat_command_history_add(...)
:raw_cmn_chat_command_history_update(...)
:raw____struct___9_cmn_chat_comp_add_ext_gml_GlobalScript_ModAPI(...)
:raw_cmn_chat_comp_add_ext(...)
:raw_cmn_chat_comp_add(...)
:raw_cmn_chat_comp_remove(...)
:raw_cmn_chat_comp_clear(...)
:raw____struct___10_cmn_chat_comp_add_arg_gml_GlobalScript_ModAPI(...)
:raw____struct___11_cmn_chat_comp_add_arg_gml_GlobalScript_ModAPI(...)
:raw_cmn_chat_comp_add_arg(...)
:raw_cmn_chat_comp_remove_arg(...)
:raw_cmn_chat_comp_clear_arg(...)
:raw_cmn_chat_comp_hide(...)
:raw_cmn_chat_comp_show(...)
:raw_cmn_chat_comp_insert_comp(...)
:raw_cmn_chat_comp_update_comp(...)
:raw_cmn_chat_comp_update_args(...)
:raw_cmn_chat_comp_update(...)
:raw_cmn_chat_comp_offset_index(...)
:raw_cmn_chat_comp_get_arg_index(...)
:raw_cmn_chat_comp_get_arg_data(...)
:raw_cmn_chat_comp_draw(...)
:raw_mc_cmn_chat_comp_item_state(...)
:raw_mc_cmn_chat_comp_item_state_cmd_inactive(...)
:raw_mc_cmn_chat_comp_item_state_cmd_active(...)
:raw_mc_cmn_chat_comp_item_state_cmd_active_args(...)
:raw_mc_cmn_chat_comp_item_state_arg_inactive(...)
:raw_mc_cmn_chat_comp_item_state_arg_active(...)
:raw_cmn_chat_input_set(...)
:raw_cmn_chat_input_update_input(...)
:raw_cmn_chat_input_update_delete(...)
:raw_cmn_chat_input_update(...)
:raw_cmn_chat_input_draw(...)
:raw_cmn_chat_input_pan_non_word_init(...)
:raw_cmn_chat_input_pan_update(...)
:raw_cmn_chat_key_can_release_init(...)
:raw_cmn_chat_key_shift_bug_init(...)
:raw____struct___12_cmn_chat_key_pressed_gml_GlobalScript_ModAPI(...)
:raw_cmn_chat_key_pressed(...)
:raw_cmn_chat_key_update_ctrl(...)
:raw_cmn_chat_key_update_repeat(...)
:raw_cmn_chat_key_update(...)
:raw_cmn_chat_log_clear(...)
:raw_cmn_chat_log_draw(...)
:raw_cmn_chat_log_scroll_update_scroll(...)
:raw_cmn_chat_log_scroll_draw(...)
:raw_cmn_chat_parse(...)
:raw_cmn_chat_split(...)
:raw_gml_api_std_haxe_class(...)
:raw_gml_api_std_haxe_enum(...)
:raw_gml_api_std_gml_internal_ArrayImpl_join(...)
:raw_gml_api_std_gml_internal_ArrayImpl_copy(...)
:raw_gml_api_std_haxe_Exception_new(...)
:raw_gml_api_std_haxe_Exception(...)
:raw_gml_api_std_haxe_Exception_isNativeException(...)
:raw_gml_api_std_haxe_Exception_thrown(...)
:raw_gml_api_std_haxe_ValueException(...)
:raw_v2_ref_buffer_init(...)
:raw_v2_ref_collision_init(...)
:raw_v2_ref_grid_init(...)
:raw_v2_ref_list_access(...)
:raw_v2_ref_list_init(...)
:raw_v2_ref_map_access(...)
:raw_v2_ref_map_init(...)
:raw____struct___22_ref_surface_init_gml_GlobalScript_ModAPI(...)
:raw_v2_ref_vertex_init(...)
:raw_v2_ref_vertex_format_init(...)
:raw____struct___31_gml_api_init_gml_GlobalScript_ModAPI(...)
:raw_gml_api_init(...)
:raw_macros(...)
:raw_macrofuncs(...)
:raw_loc(...)
:raw_loc_init(...)
:raw_loc_unload(...)
:raw_loc_reload(...)
:raw_loc_postload(...)
:raw_loc_apply(...)
:raw_loc_send(...)
:rawTips(...)
:rawTipsGet(...)
:rawGetWeapons(...)
:rawPickCrownIcons(...)
:rawPickSkillIcons(...)
:rawDeathCauses(...)
:rawUnlockDeath(...)
:rawUnlockArea(...)
:rawCredits(...)
:rawAchievements(...)
:rawRaceInit(...)
:rawRaces(...)
:rawRaceEnum(...)
:rawRaceId(...)
:rawRaceName(...)
:rawRaceLock(...)
:rawRaceDesc(...)
:rawRaceEnd(...)
:rawRaceWep(...)
:rawRaceSkinCount(...)
:rawRacePortraitIndex(...)
:rawRaceRandomize(...)
:rawRaceCnfm(...)
:rawRaceSlct(...)
:rawRaceBWep(...)
:rawRaceCWep(...)
:rawRaceGetUseGWep(...)
:rawRaceSetUseGWep(...)
:rawRaceGetGWep(...)
:rawRaceSetGWep(...)
:rawSkills(...)
:rawSkillInit(...)
:rawSkillId(...)
:rawSkillSet(...)
:rawSkillName(...)
:rawSkillText(...)
:rawRaceButt(...)
:rawCrowns(...)
:rawCrownInit(...)
:rawCrownId(...)
:rawCrownName(...)
:rawCrownText(...)
:rawHasCrown(...)
:rawWeapons(...)
:rawWepInit(...)
:rawWepDefine(...)
:rawWepHint(...)
:rawWepName(...)
:rawWepIdent(...)
:rawWepType(...)
:rawWepAuto(...)
:rawWepLoad(...)
:rawWepCost(...)
:rawWepRads(...)
:rawWepSond(...)
:rawWepMelee(...)
:rawWepArea(...)
:rawWepText(...)
:rawWepSprt(...)
:rawWepHUD(...)
:rawWepLaserSight(...)
:rawWepValid(...)
:rawWepId(...)
:rawWepFind(...)
:rawWepIsGold(...)
:rawWepIsUltra(...)
:rawFire(...)
:rawFireSpread(...)
:rawFirePost(...)
:rawFireMark(...)
:rawSwapWeps(...)
:rawDecideWep(...)
:rawDecideWepGold(...)
:rawAmmoText(...)
:rawEmpty(...)
:rawPopupText(...)
:rawEmptyRads(...)
:rawEmptyB(...)
:rawShake(...)
:rawShakeAt(...)
:rawShakeMaxAt(...)
:rawFootSteps(...)
:rawMakeFloor(...)
:rawPopulate(...)
:rawPopEnemies(...)
:rawPopProps(...)
:rawPopChests(...)
:rawSetSeed(...)
:rawSafeSpawns(...)
:rawSafeSpawnDebug(...)
:rawAreaSecret(...)
:rawAreaTransitHook(...)
:rawGenGoal(...)
:rawMakeTopSmalls(...)
:rawMakeTopSmallsAll(...)
:rawMakeTopSmall(...)
:raw_joystick_exists2(...)
:raw_joystick_name2(...)
:raw_joystick_axes2(...)
:raw_joystick_buttons2(...)
:raw_joystick_has_pov2(...)
:raw_joystick_direction2(...)
:raw_joystick_check_button2(...)
:raw_joystick_xpos2(...)
:raw_joystick_ypos2(...)
:raw_joystick_zpos2(...)
:raw_joystick_rpos2(...)
:raw_joystick_upos2(...)
:raw_joystick_vpos2(...)
:raw_joystick_pov2(...)
:raw_joy_gmid(...)
:raw_joy_init(...)
:raw_joy_update(...)
:raw_joy_count(...)
:raw_joy_name(...)
:raw_joy_find(...)
:raw_joy_hi(...)
:raw_joy_axes(...)
:raw_joy_buttons(...)
:raw_joy_hats(...)
:raw_joy_balls(...)
:raw_joy_axis(...)
:raw_joy_x(...)
:raw_joy_y(...)
:raw_joy_z(...)
:raw_joy_r(...)
:raw_joy_u(...)
:raw_joy_v(...)
:raw_joy_button(...)
:raw_joy_pressed(...)
:raw_joy_released(...)
:raw_joy_hat(...)
:raw_joy_hat_x(...)
:raw_joy_hat_y(...)
:raw_joy_ball_x(...)
:raw_joy_ball_y(...)
:raw_joy_list(...)
:rawKeyContInit(...)
:rawKeyContStep(...)
:rawKeyContNext(...)
:rawKeyContUpdate(...)
:rawJoyAim(...)
:rawGamepadImages(...)
:rawGamepadGet(...)
:rawKeyboardGet(...)
:raween_init(...)
:raween_begin(...)
:raween_end(...)
:rawDrawHUD(...)
:rawDrawHUDLoop(...)
:rawDrawCoopHUD(...)
:rawDrawPlayerHUD(...)
:rawDrawPlayerFaintedHUD(...)
:rawDrawMutBar(...)
:rawDrawGameOver(...)
:rawDrawMap(...)
:rawDrawMapLoad(...)
:rawDrawLoadScreen(...)
:rawDrawCrosshairs(...)
:rawAddZero(...)
:rawOnOff(...)
:rawShadows(...)
:rawShadowsImpl(...)
:rawDarkness(...)
:rawDrawBloom(...)
:rawDrawSpiral(...)
:rawTime(...)
:rawTimeNoDays(...)
:rawTimeSpeedrun(...)
:rawTimeFrames(...)
:rawLetterBox(...)
:rawDrawLetterbox(...)
:rawTooltip(...)
:raw_draw_text_nt(...)
:raw_draw_text_nt_measure(...)
:raw_draw_text_nt_1(...)
:raw_draw_text_nt_update(...)
:raw_draw_text_nt_gpi(...)
:raw_draw_text_nt_kbi(...)
:rawDrawSlider(...)
:rawDrawEPrompt(...)
:rawDrawPause(...)
:rawDrawPauseImg(...)
:rawDrawQueuePause(...)
:rawDrawMutationScreen(...)
:rawDrawBossIntro(...)
:rawDrawStatMenu(...)
:raw_draw_stat(...)
:raw_draw_stat_header(...)
:raw_draw_stat_sprite(...)
:rawDrawGeneralStats(...)
:rawDrawCharacterStats(...)
:rawMouseOver(...)
:rawProcSlider(...)
:rawProcSliderLocal(...)
:rawAreaName(...)
:rawGameResized(...)
:rawDrawSorted(...)
:rawDrawTutorial(...)
:rawDrawTiled(...)
:rawSideArtText(...)
:rawCrosshairText(...)
:rawDrawCharSelect(...)
:rawDrawGameMode(...)
:rawDrawClock(...)
:rawDrawTimeSpeedrun(...)
:rawDrawPlayerIndicator(...)
:rawKeyName(...)
:rawKey(...)
:rawUberContPause(...)
:rawUberContPause_1(...)
:rawMiscOverrides(...)
:raw_window_store(...)
:raw_window_restore(...)
:raw_window_set_fullscreen_ext(...)
:rawGameContSetLevSeed(...)
:rawTarget(...)
:rawHurt(...)
:rawDrop(...)
:rawDropRads(...)
:rawEnemyHealth(...)
:rawRavenLift(...)
:rawCampChar(...)
:rawCampCharSet(...)
:rawLoadoutSync(...)
:rawUpdateWallBounds(...)
:rawApplyAreaColors(...)
:rawUpdateAreaColors(...)
:rawRecycleGland(...)
:rawBounceSimple(...)
:rawIsOddScreen(...)
:rawKillEnemies(...)
:rawMeleeCanHit(...)
:rawBulletCanHit(...)
:rawEnemyCanHit(...)
:rawPlasmaCanHit(...)
:rawExploCanHit(...)
:rawLaserCanHit(...)
:rawRawHit(...)
:rawBulletHit(...)
:rawPushHit(...)
:rawEnemyHit(...)
:rawLastHit(...)
:rawPowers(...)
:rawPowersSteroids(...)
:rawPowersMelting(...)
:rawPowersVenuz(...)
:rawPowersSkeleton(...)
:rawPlayerSetRace(...)
:rawTangleSeedHit(...)
:rawPlayerCreate(...)
:rawPlayerStoreGolden(...)
:rawPlayerGetStartWep(...)
:rawHasCrystalShield(...)
:rawFindPlayer(...)
:rawDrawPlayerLaserSight(...)
:rawPlayerGrantAmmo(...)
:rawPlayerGrantHealth(...)
:rawPlayerGrantStrike(...)
:rawPlayerSetAmmoMax(...)
:rawCountDeadPlayers(...)
:rawRevivePlayers(...)
:rawCountRace(...)
:rawStalkerProc(...)
:rawPlayerStepSwap(...)
:rawPlayerStep(...)
:rawPlayerStepMovement(...)
:rawPlayerWallBounce(...)
:rawPlayerStepDeath(...)
:rawPlayerStepShoot(...)
:rawPlayerStepShootImpl(...)
:rawPlayerStepLstHealth(...)
:rawInit(...)
:rawSave(...)
:rawShouldSave(...)
:rawLoad(...)
:rawInitStats(...)
:rawInitData(...)
:rawInitOptions(...)
:rawDeleteData(...)
:rawLoadLine(...)
:rawInitConsole(...)
:rawNearestListener(...)
:raw_snd_loop(...)
:raw_snd_play(...)
:raw_snd_stop(...)
:raw_snd_stop_all(...)
:raw_snd_play_hit(...)
:raw_snd_play_hit_big(...)
:raw_snd_play_pitch(...)
:raw_snd_play_pitch_rng(...)
:raw_snd_play_pitchvol(...)
:raw_snd_play_shift(...)
:raw_snd_pitch(...)
:raw_snd_volume(...)
:raw_snd_play_shiftvol(...)
:raw_snd_play_gun(...)
:raw_snd_play_gun_ext(...)
:raw_snd_play_gun_small(...)
:raw_snd_play_gun_big(...)
:rawWallBreakSound(...)
:rawCharSelect(...)
:rawCharSwitch(...)
:rawRestart(...)
:rawQuickRestart(...)
:rawGetLoadoutWep(...)
:rawDrawLoadoutWep(...)
:rawRemoveButtons(...)
:rawMainMenuMake(...)
:rawDailyScoresMake(...)
:rawWeeklyScoresMake(...)
:rawPauseMenuMake(...)
:rawPauseConfirmMake(...)
:rawPauseMenuAction(...)
:rawOptionMenuMake(...)
:rawPlayMenuMake(...)
:rawStatMenuMake(...)
:rawRaceShouldShowInStatMenu(...)
:rawRaceShouldActivateInStatMenu(...)
:rawVisualsMenuMake(...)
:rawAudioMenuMake(...)
:rawGameMenuMake(...)
:rawControlMenuMake(...)
:rawControlsMenuAim(...)
:rawControlMenuAwait(...)
:rawPause(...)
:rawMakeGameover(...)
:rawBossIntro(...)
:rawMakeUnlockScreen(...)
:rawWeeklyProgressMake(...)
:rawDrawDwScores(...)
:rawDrawDwArrow(...)
:rawDwSteam(...)
:rawDwCreate(...)
:rawDwName(...)
:rawAchievement(...)
:rawHasAchievements(...)
:rawCheckUltraAch(...)
:raw_choosetest(...)
:rawBinaryConvert(...)
:rawDataConvert(...)
:raw_Sleep(...)
:rawPlayerParams(...)
:rawBinaryStringCompress(...)
:rawBinaryStringRecover(...)
:rawGetLeaderboardUsername(...)
:rawPSVitaPS3NetCheck(...)
:rawOnlineFeaturesAllowed(...)
:rawGetSaveName(...)
:raw_http_post_string_w(...)
:raw_trace(...)
:raw_instance_destroy_w(...)
:raw_instance_create_w(...)
:raw_instance_create(...)
:raw_instance_create(...)
:raw_variable_instance_set(...)
:raw_variable_instance_set(...)
:raw_variable_instance_get(...)
:raw_variable_instance_get(...)
:raw_variable_instance_exists(...)
:raw_variable_instance_exists(...)
:raw_random_w(...)
:raw_random_set_seed_w(...)
:raw_random_get_seed_w(...)
:raw_irandom_w(...)
:raw_random_range_w(...)
:raw_irandom_range_w(...)
:raw_choose_w(...)
:raw_random_log(...)
:raw_ds_list_shuffle_w(...)
:raw_chance_ft(...)
:raw_random_ns(...)
:raw_tern(...)
:raw_tdiff(...)
:raw_cycle(...)
:raw_slct(...)
:raw_swtc(...)
:raw_sfmt(...)
:raw_sfmti(...)
:raw_either(...)
:raw_approach(...)
:raw_pack(...)
:raw_array_alloc(...)
:raw_array_find_index(...)
:raw_array_join(...)
:raw_array_clear(...)
:raw_array_clone(...)
:raw_array_remove(...)
:raw_lq_defget(...)
:raw_string_startswith(...)
:raw_string_lpad(...)
:raw_string_rpad(...)
:raw_string_auto(...)
:raw_string_ltrim(...)
:raw_string_rtrim(...)
:raw_string_trim(...)
:raw_string_split(...)
:raw_filename_path_w(...)
:raw_filename_noext(...)
:raw_color_find(...)
:raw_color_swap(...)
:raw_date_current_filename(...)
:raw_ds_list_remove(...)
:raw_as_real(...)
:raw_as_sprite(...)
:raw_ds_map_defget_real(...)
:raw_ds_map_defget_id(...)
:raw_string_is_real(...)
:raw_string_to_real(...)
:raw_ini_flush_real(...)
:raw_ini_flush_string(...)
:raw_ini_read_vkey(...)
:raw_ini_read_gpkey(...)
:raw_file_bin_match_string(...)
:raw_file_bin_match_uint(...)
:raw_file_bin_read_uint(...)
:raw_file_text_get_content(...)
:raw_file_text_write_line(...)
:raw_file_exists_w(...)
:raw_buffer_write_buffer(...)
:raw_json_minify(...)
:raw_mouse_in_rect(...)
:raw_point_in_sprite(...)
:raw_mouse_in_sprite(...)
:raw_window_set_cursor_ext_w(...)
:rawMouselockToggle(...)
:rawNativeCursorToggle(...)
:rawSubpixelCycle(...)
:raw_window_set_cursor_w(...)
:raw_window_set_size_w(...)
:raw_window_set_caption_w(...)
:raw_draw_self_scale(...)
:raw_draw_self_right(...)
:raw_draw_self_rmd(...)
:raw_draw_self_fmd(...)
:raw_draw_self_w(...)
:raw_draw_self_wr(...)
:raw_draw_self_offset(...)
:raw_draw_self_gun(...)
:raw_draw_self_rgun(...)
:raw_draw_set_align(...)
:raw_draw_text_shadow(...)
:raw_draw_text_shadow_ext(...)
:raw_draw_text_transformed_bigshadow(...)
:raw_draw_sprite_bigshadow(...)
:raw_draw_rect_ext(...)
:raw_draw_sprite_shadow(...)
:raw_draw_sprite_color(...)
:raw_draw_sprite_part_smart(...)
:raw_draw_sprite_bright_ext(...)
:raw_surface_ensure(...)
:raw_draw_sprite_bt(...)
:raw_sprite_sideload(...)
:raw_sprite_sideload_img(...)
:raw_sprite_assign_image(...)
:raw_sprite_store(...)
:raw_sprite_restore(...)
:raw_sprite_restore_all(...)
:raw_sprite_find(...)
:raw_sprite_save_strip_w(...)
:raw_sprite_save_w(...)
:raw_sprite_notify(...)
:raw_filename_strip(...)
:raw_sprite_skin(...)
:raw_instance_destroy_q(...)
:raw_instance_create_tc(...)
:raw_motion_set_ft(...)
:raw_motion_add_ft(...)
:raw_motion_add_ct(...)
:raw_motion_add_from(...)
:raw_motion_merge(...)
:raw_motion_copy_from(...)
:raw_speed_min(...)
:raw_speed_accel(...)
:raw_speed_max(...)
:raw_speed_set(...)
:raw_friction_set(...)
:raw_image_speed_set(...)
:raw_ft_change(...)
:raw_motion_add_towards(...)
:raw_mp_slide_step(...)
:raw_mp_potential_step_ft(...)
:raw_time_to_reach(...)
:raw_point_seen(...)
:raw_point_seen_ext(...)
:raw_instance_exists_safe(...)
:raw_catch_error_dequeue_auto(...)
:raw_game_end_w(...)
:raw_dp_reset_w(...)
:raw_dp_reset_players(...)
:raw_dp_setup(...)
:raw_dp_setup_pre(...)
:raw_dp_setup_ini(...)
:rawDetectFCS(...)
:raw_dp_player_find_next(...)
:raw_dp_has_mouse(...)
:raw_dp_player_get_corners(...)
:raw_dp_player_get_revcorners(...)
:raw_dp_player_count_gamepads(...)
:raw_dp_player_is_hud_seen(...)
:raw_dp_mouse_x(...)
:raw_dp_mouse_y(...)
:raw_dp_mouseover(...)
:raw_dp_mouseover_in(...)
:raw_dp_mouseover_out(...)
:raw_keyboard_check_pressed_async(...)
:raw_keyboard_check_async(...)
:raw_keyboard_check_w(...)
:raw_keyboard_check_pressed_w(...)
:rawGetKeyMap(...)
:raw_dp_wrap_button(...)
:raw_dp_wrap_button_poll(...)
:raw_dp_wrap_button_poll_switch(...)
:raw_dp_wrap_axis(...)
:raw_dp_wrap_axis_poll(...)
:raw_dp_wrap_pos(...)
:raw_dp_wrap_pos_poll(...)
:raw_dp_handle_ping(...)
:raw_dp_handle_player_dep(...)
:raw_dp_handle_frame(...)
:raw_dp_handle_flow_desync(...)
:raw_dp_handle_flow_frame(...)
:raw_dp_handle_flow_start(...)
:raw_dp_handle_flow_syncreset(...)
:raw_dp_handle_flow_syncreset_ntt(...)
:raw_dp_handle_state_hash(...)
:raw_dp_handle_state_hash_lf1(...)
:raw_dp_handle_state_print(...)
:raw_dp_handle_state_print_lf1(...)
:raw_dp_handle_flow_msg(...)
:raw_dp_handle_flow_msg_sendsprite(...)
:raw_dp_handle_flow_msg_prefetch(...)
:raw_dp_handle_flow_msg_findfiles(...)
:raw_dp_handle_flow_msg_commands(...)
:raw_dp_handle_flow_msg_replace_sprite(...)
:raw_dp_handle_flow_msg_replace_subimg(...)
:raw_dp_handle_flow_msg_loadloc(...)
:raw_dp_handle_lobby_start(...)
:raw_dp_handle_lobby_error(...)
:raw_dp_handle_lobby_message(...)
:raw_dp_handle_lobby_arrival(...)
:raw_dp_handle_lobby_departure(...)
:raw_dp_handle_replay_end(...)
:raw_dp_handle_replay_ui(...)
:raw_dp_handle_replay_bt(...)
:raw_dp_handle_replay_sp(...)
:raw_dp_handle_replay_seen(...)
:raw_dp_handle_replay_takeover(...)
:raw_menu_handle(...)
:raw_menu_init(...)
:raw_menu_cleanup(...)
:raw_menu_proc(...)
:raw_menu_node(...)
:raw_menu_ctrl_map(...)
:raw_menu_input_poll(...)
:raw_menu_input_pressed(...)
:raw_menu_input_released(...)
:raw_menu_exit(...)
:raw_menu_pre(...)
:raw_menu_post(...)
:raw_menu_seen(...)
:raw_menu_curr(...)
:raw_menu_skip(...)
:raw_menu_label(...)
:raw_menu_button(...)
:raw_menu_caro(...)
:raw_menu_carobtn(...)
:raw_menu_remap_button(...)
:raw_menu_input(...)
:raw_mdef_error(...)
:raw_mdef_connecting(...)
:raw_mdef_searching(...)
:raw_mdef_hub(...)
:raw_mdef_lobby(...)
:raw_mdef_host(...)
:raw_mdef_join(...)
:raw_mdef_replays(...)
:raw_mdef_replays_load(...)
:raw_mdef_replays_sub(...)
:raw_chat_init(...)
:raw_chat_update(...)
:raw_chat_update_input(...)
:raw_chat_update_history(...)
:raw_chat_update_pan(...)
:raw_chat_send(...)
:raw_chat_save(...)
:raw_chat_add(...)
:raw_chat_add_if(...)
:raw_chat_sfmt(...)
:raw_chat_handle(...)
:raw_chat_get_state(...)
:raw_chat_set_state(...)
:raw_chat_init_cmd(...)
:raw_chat_reg_cat(...)
:raw_chat_reg(...)
:raw_chat_cmd_help(...)
:raw_chat_cmd_outlines(...)
:raw_chat_cmd_wscale(...)
:raw_chat_cmd_wtips(...)
:raw_chat_cmd_mtips(...)
:raw_chat_cmd_portalfx(...)
:raw_chat_cmd_mouselock(...)
:raw_chat_cmd_mousesens(...)
:raw_chat_cmd_nativecursor(...)
:raw_chat_cmd_subpixel(...)
:raw_chat_cmd_stopaudio(...)
:raw_chat_cmd_stdout(...)
:raw_chat_cmd_debugbc(...)
:raw_chat_cmd_exit(...)
:raw_chat_cmd_gpdeadzone(...)
:raw_chat_cmd_gpnormalize(...)
:raw_chat_cmd_gpexponent(...)
:raw_chat_cmd_autoaim(...)
:raw_chat_cmd_sfxvol(...)
:raw_chat_cmd_musvol(...)
:raw_chat_cmd_hardmode(...)
:raw_chat_cmd_sepview(...)
:raw_chat_cmd_ccrown(...)
:raw_chat_cmd_timeout(...)
:raw_chat_cmd_revmode(...)
:raw_chat_cmd_ultras(...)
:raw_chat_cmd_loadgame(...)
:raw_chat_cmd_savegame(...)
:raw_chat_cmd_tracksync(...)
:raw_chat_cmd_dumpsync(...)
:raw_chat_cmd_delay(...)
:raw_chat_cmd_cwd(...)
:raw_chat_cmd_loadtext(...)
:raw_chat_cmd_sideload(...)
:raw_chat_cmd_loadloc(...)
:raw_chat_cmd_savesprite(...)
:raw_chat_cmd_loadsprite(...)
:raw_chat_cmd_copysprite(...)
:raw_chat_cmd_copyimage(...)
:raw_chat_cmd_unloadsprite(...)
:raw_chat_cmd_gmlapi(...)
:raw_chat_cmd_loadmod(...)
:raw_mod_bridge_magic(...)
:raw_chat_cmd_loadlive(...)
:raw_chat_cmd_unloadmod(...)
:raw_chat_cmd_silencemod(...)
:raw_chat_cmd_ignoremod(...)
:raw_chat_cmd_gml(...)
:raw_chat_cmd_gml_impl(...)
:raw_chat_cmd_gml2(...)
:raw_chat_cmd_savemod(...)
:raw_chat_cmd_checkmods(...)
:raw_chat_cmd_allowmod(...)
:raw_chat_cmd_color(...)
:raw_chat_cmd_wep(...)
:raw_chat_cmd_gamepad(...)
:raw_chat_cmd_die(...)
:raw_chat_cmd_locate(...)
:raw_chat_cmd(...)
:raw_chat_draw(...)
:raw_chat_draw_item(...)
:raw_gml_init_wrap(...)
:raw_gml_object_locks(...)
:raw_gml_init_script_refs(...)
:raw_gml_objects_print(...)
:raw_filename_id(...)
:raw_filename_mt(...)
:raw_gml_program_verify(...)
:raw_gml_program_logcall(...)
:raw_gml_program_logcall_v(...)
:raw_gml_program_rawcall(...)
:raw_gml_program_rawcall_v(...)
:raw_gml_program_get_name(...)
:raw_gml_thread_readonly(...)
:raw_gml_thread_indexerror(...)
:raw_gml_thread_trycatch(...)
:raw_gml_thread_get_script(...)
:raw_gml_const_meta(...)
:raw_mod_type_create(...)
:raw_mod_type_destroy(...)
:raw_mod_type_destroy_all(...)
:raw_mod_type_update_all(...)
:raw_mod_type_call(...)
:raw_mod_type_fnc(...)
:raw_mod_type_get_list(...)
:raw_mod_type_get_names(...)
:raw_mod_program(...)
:raw_mod_call(...)
:raw_mod_rawcall(...)
:raw_mod_defcall(...)
:raw_mod_rnzcall(...)
:raw_mod_rawdefcall(...)
:raw_mod_refcall(...)
:raw_mod_tagrefcall(...)
:raw_mod_has_var(...)
:raw_mod_has_script(...)
:raw_mod_exists(...)
:raw_mod_defget(...)
:rawModGameStart(...)
:raw_mod_load(...)
:raw_mod_unload(...)
:raw_mod_find(...)
:raw_mod_post(...)
:raw_gml_func_ref(...)
:raw_gml_var_ref(...)
:raw_gml_auto_ref(...)
:raw_is_number(...)
:raw_is_array1d(...)
:raw_is_lq(...)
:rawWepSetArea(...)
:raw_snd_silence_10ms(...)
:raw_snd_exists(...)
:raw_snd_play_music(...)
:raw_snd_play_ambient(...)
:raw_snd_get_name(...)
:rawCrownSet(...)
:raw_area_get_background_color(...)
:raw_area_get_shadow_color(...)
:raw___swap__(...)
:raw_action_set_cursor(...)
:raw___init_action(...)
:raw_background_exists(...)
:raw_background_get_name(...)
:raw_background_get_texture(...)
:raw_background_get_uvs(...)
:raw_draw_background(...)
:raw_draw_background_ext(...)
:raw_draw_background_general(...)
:raw_draw_background_part(...)
:raw_draw_background_part_ext(...)
:raw_draw_background_stretched(...)
:raw_draw_background_stretched_ext(...)
:raw_draw_background_tiled(...)
:raw_draw_background_tiled_ext(...)
:raw___background_get_colour(...)
:raw___background_get_colour_element(...)
:raw___background_set_colour(...)
:raw___background_set_element(...)
:raw___init_background(...)
:raw_d3d_end(...)
:raw_d3d_set_culling(...)
:raw_d3d_set_depth(...)
:raw_d3d_set_fog(...)
:raw_d3d_set_hidden(...)
:raw_d3d_set_perspective(...)
:raw_d3d_set_projection(...)
:raw_d3d_set_projection_ext(...)
:raw_d3d_set_projection_ortho(...)
:raw_d3d_set_zwriteenable(...)
:raw_d3d_start(...)
:raw_d3d_transform_add_rotation_axis(...)
:raw_d3d_transform_add_rotation_x(...)
:raw_d3d_transform_add_rotation_y(...)
:raw_d3d_transform_add_rotation_z(...)
:raw_d3d_transform_add_scaling(...)
:raw_d3d_transform_add_translation(...)
:raw_d3d_transform_set_identity(...)
:raw_d3d_transform_set_rotation_axis(...)
:raw_d3d_transform_set_rotation_x(...)
:raw_d3d_transform_set_rotation_y(...)
:raw_d3d_transform_set_rotation_z(...)
:raw_d3d_transform_set_scaling(...)
:raw_d3d_transform_set_translation(...)
:raw_d3d_transform_stack_pop(...)
:raw_d3d_transform_stack_push(...)
:raw___init_d3d(...)
:raw_draw_get_alpha_test(...)
:raw_draw_get_alpha_test_ref_value(...)
:raw_draw_set_alpha_test(...)
:raw_draw_set_alpha_test_ref_value(...)
:raw_draw_set_blend_mode(...)
:raw_draw_set_blend_mode_ext(...)
:raw_draw_set_color_write_enable(...)
:raw_draw_set_colour_write_enable(...)
:raw_object_get_depth(...)
:raw_sound_exists(...)
:raw_sound_get_name(...)
:raw_sound_isplaying(...)
:raw_sound_stop(...)
:raw_sound_volume(...)
:raw_texture_set_blending(...)
:raw_texture_set_interpolation(...)
:raw_texture_set_repeat(...)
:raw_room_set_view(...)
:raw___view_get(...)
:raw___view_set(...)
:raw___view_set_internal(...)
:raw___init_view(...)
:raw___init_global(...)
:raw___global_object_depths(...)
:raw___lf_ref_shader_init_invalid(...)
:raw___lf_ref_shader_init__shader_create(...)
:raw___lf_ref_shader_init__shader_destroy(...)
:raw___lf_ref_shader_init__shader_set(...)
:raw___lf_ref_shader_init__shader_reset(...)
:raw___lf_ref_shader_init__shader_get_sampler_index(...)
:raw___lf_ref_shader_init__shader_get_uniform(...)
:raw___lf_ref_shader_init__shader_set_uniform_i(...)
:raw___lf_ref_shader_init__shader_set_uniform_i_array(...)
:raw___lf_ref_shader_init__shader_is_compiled(...)
:raw___lf_ref_shader_init__shader_set_uniform_f(...)
:raw___lf_ref_shader_init__shader_set_uniform_f_array(...)
:raw___lf_ref_shader_init__shader_set_uniform_matrix(...)
:raw___lf_ref_shader_init__texture_set_stage(...)
:raw___lf_ref_init_objects_f_is_new(...)
:raw___lf_ref_shader_init__shader_set_vertex_constant_f(...)
:raw___lf_ref_shader_init__shader_set_vertex_constant_i(...)
:raw___lf_ref_shader_init__shader_set_vertex_constant_b(...)
:raw___lf_ref_shader_init__shader_set_fragment_constant_f(...)
:raw___lf_ref_shader_init__shader_set_fragment_constant_i(...)
:raw___lf_ref_shader_init__shader_set_fragment_constant_b(...)
:raw___lf_ref_shader_init__shader_get_uniform_at(...)
:raw___lf_ref_shader_init__shader_set_uniform_matrix_array(...)
:raw_camera_set_view_width(...)
:raw_camera_set_view_height(...)
:raw_camera_set_view_x(...)
:raw_camera_set_view_y(...)
:rawAssignControllers(...)
:rawCheckController(...)
:rawCheckLogin(...)
:rawDrawDebugOverlay(...)
:rawInitGameServer(...)
:rawLeaderboardResult(...)
:rawPackScoreData(...)
:rawRequestLeaderboard(...)
:rawStartGame(...)
:rawStopRumble(...)
:rawUpdateLeaderboard(...)
:raw_ModCore(...)
:raw_anon_B352709F_1191(...)
:raw_gml_std_enum_toString(...)
:raw_gml_std_enum_getIndex(...)
:raw_gml_builder(...)
:raw_gml_compile_error(...)
:raw_gml_compile_const_val_of(...)
:raw____struct___42_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___43_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___44_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___45_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___46_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___47_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___48_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___49_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___50_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___51_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___52_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___53_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___54_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___55_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___56_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___57_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___58_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___59_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___60_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___61_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___62_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw____struct___63_gml_compile_node_gml_GlobalScript_ModCore(...)
:raw_gml_compile_node(...)
:raw_gml_compile_add_exit(...)
:raw_gml_compile_script(...)
:raw_gml_compile_program(...)
:raw_api_api_version(...)
:raw_api_api_version_create(...)
:raw_gml_parser_set_version(...)
:raw_gml_parser_error(...)
:raw_gml_parser_buf_sub(...)
:raw_gml_parser_run(...)
:raw_gml_program(...)
:raw_gml_program_call_v(...)
:raw_gml_program_call(...)
:raw_gml_std_haxe_enum_tools_getParameter(...)
:raw_gml_std_haxe_enum_tools_getParameterCount(...)
:raw_gml_std_haxe_enum_tools_setParameter(...)
:raw_gml_std_haxe_enum_tools_setTo(...)
:raw_gml_std_Std_stringify(...)
:raw_gml_std_Std_parseFloat(...)
:raw_gml_std_Std_parseInt(...)
:raw_gml_std_string_pos_ext_haxe(...)
:raw_gml_std_string_last_pos_haxe(...)
:raw_gml_std_string_split(...)
:raw_gml_std_string_substring(...)
:raw_gml_std_StringTools_startsWith(...)
:raw_gml_std_StringTools_endsWith(...)
:raw_gml_std_StringTools_trim(...)
:raw_gml_std_Type_getEnumConstructs(...)
:raw_gml_std_Type_enumConstructor(...)
:raw_gml_fast_field_add(...)
:raw_gml_func(...)
:raw_api_api_var(...)
:raw_gml_enum(...)
:raw_gml_enum_create_builtin(...)
:raw_gml_enum_ctr(...)
:raw_gml_macro(...)
:raw_mc_gml_node(...)
:raw_mc_gml_node_undefined_hx(...)
:raw_gml_node_undefined_hx(...)
:raw_mc_gml_node_boolean(...)
:raw_gml_node_boolean(...)
:raw_mc_gml_node_number(...)
:raw_gml_node_number(...)
:raw_mc_gml_node_cstring(...)
:raw_gml_node_cstring(...)
:raw_mc_gml_node_other_const(...)
:raw_gml_node_other_const(...)
:raw_mc_gml_node_enum_ctr(...)
:raw_gml_node_enum_ctr(...)
:raw_mc_gml_node_array_decl(...)
:raw_gml_node_array_decl(...)
:raw_mc_gml_node_object_decl(...)
:raw_gml_node_object_decl(...)
:raw_mc_gml_node_ensure_array_for_local(...)
:raw_gml_node_ensure_array_for_local(...)
:raw_mc_gml_node_ensure_array_for_global(...)
:raw_gml_node_ensure_array_for_global(...)
:raw_mc_gml_node_ensure_array_for_field(...)
:raw_gml_node_ensure_array_for_field(...)
:raw_mc_gml_node_ensure_array_for_index(...)
:raw_gml_node_ensure_array_for_index(...)
:raw_mc_gml_node_ensure_array_for_index2d(...)
:raw_gml_node_ensure_array_for_index2d(...)
:raw_mc_gml_node_ident(...)
:raw_gml_node_ident(...)
:raw_mc_gml_node_self_hx(...)
:raw_gml_node_self_hx(...)
:raw_mc_gml_node_other_hx(...)
:raw_gml_node_other_hx(...)
:raw_mc_gml_node_global_ref(...)
:raw_gml_node_global_ref(...)
:raw_mc_gml_node_script(...)
:raw_gml_node_script(...)
:raw_mc_gml_node_native_script(...)
:raw_gml_node_native_script(...)
:raw_mc_gml_node_const(...)
:raw_gml_node_const(...)
:raw_mc_gml_node_arg_const(...)
:raw_gml_node_arg_const(...)
:raw_mc_gml_node_arg_index(...)
:raw_gml_node_arg_index(...)
:raw_mc_gml_node_arg_count(...)
:raw_gml_node_arg_count(...)
:raw_mc_gml_node_call(...)
:raw_gml_node_call(...)
:raw_mc_gml_node_call_script(...)
:raw_gml_node_call_script(...)
:raw_mc_gml_node_call_script_at(...)
:raw_gml_node_call_script_at(...)
:raw_mc_gml_node_call_script_id(...)
:raw_gml_node_call_script_id(...)
:raw_mc_gml_node_call_script_with_array(...)
:raw_gml_node_call_script_with_array(...)
:raw_mc_gml_node_call_field(...)
:raw_gml_node_call_field(...)
:raw_mc_gml_node_call_func(...)
:raw_gml_node_call_func(...)
:raw_mc_gml_node_call_func_at(...)
:raw_gml_node_call_func_at(...)
:raw_mc_gml_node_construct(...)
:raw_gml_node_construct(...)
:raw_mc_gml_node_func_literal(...)
:raw_gml_node_func_literal(...)
:raw_mc_gml_node_prefix(...)
:raw_gml_node_prefix(...)
:raw_mc_gml_node_postfix(...)
:raw_gml_node_postfix(...)
:raw_mc_gml_node_un_op(...)
:raw_gml_node_un_op(...)
:raw_mc_gml_node_bin_op(...)
:raw_gml_node_bin_op(...)
:raw_mc_gml_node_set_op(...)
:raw_gml_node_set_op(...)
:raw_mc_gml_node_delete_hx(...)
:raw_gml_node_delete_hx(...)
:raw_mc_gml_node_null_co(...)
:raw_gml_node_null_co(...)
:raw_mc_gml_node_to_bool(...)
:raw_gml_node_to_bool(...)
:raw_mc_gml_node_from_bool(...)
:raw_gml_node_from_bool(...)
:raw_mc_gml_node_in(...)
:raw_gml_node_in(...)
:raw_mc_gml_node_local_hx(...)
:raw_gml_node_local_hx(...)
:raw_mc_gml_node_local_set(...)
:raw_gml_node_local_set(...)
:raw_mc_gml_node_local_aop(...)
:raw_gml_node_local_aop(...)
:raw_mc_gml_node_global_hx(...)
:raw_gml_node_global_hx(...)
:raw_mc_gml_node_global_set(...)
:raw_gml_node_global_set(...)
:raw_mc_gml_node_global_aop(...)
:raw_gml_node_global_aop(...)
:raw_mc_gml_node_field(...)
:raw_gml_node_field(...)
:raw_mc_gml_node_field_set(...)
:raw_gml_node_field_set(...)
:raw_mc_gml_node_field_aop(...)
:raw_gml_node_field_aop(...)
:raw_mc_gml_node_env(...)
:raw_gml_node_env(...)
:raw_mc_gml_node_env_set(...)
:raw_gml_node_env_set(...)
:raw_mc_gml_node_env_aop(...)
:raw_gml_node_env_aop(...)
:raw_mc_gml_node_env_fd(...)
:raw_gml_node_env_fd(...)
:raw_mc_gml_node_env_fd_set(...)
:raw_gml_node_env_fd_set(...)
:raw_mc_gml_node_env_fd_aop(...)
:raw_gml_node_env_fd_aop(...)
:raw_mc_gml_node_env1d(...)
:raw_gml_node_env1d(...)
:raw_mc_gml_node_env1d_set(...)
:raw_gml_node_env1d_set(...)
:raw_mc_gml_node_env1d_aop(...)
:raw_gml_node_env1d_aop(...)
:raw_mc_gml_node_index(...)
:raw_gml_node_index(...)
:raw_mc_gml_node_index_set(...)
:raw_gml_node_index_set(...)
:raw_mc_gml_node_index_aop(...)
:raw_gml_node_index_aop(...)
:raw_mc_gml_node_index_prefix(...)
:raw_gml_node_index_prefix(...)
:raw_mc_gml_node_index_postfix(...)
:raw_gml_node_index_postfix(...)
:raw_mc_gml_node_index2d(...)
:raw_gml_node_index2d(...)
:raw_mc_gml_node_index2d_set(...)
:raw_gml_node_index2d_set(...)
:raw_mc_gml_node_index2d_aop(...)
:raw_gml_node_index2d_aop(...)
:raw_mc_gml_node_index2d_prefix(...)
:raw_gml_node_index2d_prefix(...)
:raw_mc_gml_node_index2d_postfix(...)
:raw_gml_node_index2d_postfix(...)
:raw_mc_gml_node_raw_id(...)
:raw_gml_node_raw_id(...)
:raw_mc_gml_node_raw_id_set(...)
:raw_gml_node_raw_id_set(...)
:raw_mc_gml_node_raw_id_aop(...)
:raw_gml_node_raw_id_aop(...)
:raw_mc_gml_node_raw_id_prefix(...)
:raw_gml_node_raw_id_prefix(...)
:raw_mc_gml_node_raw_id_postfix(...)
:raw_gml_node_raw_id_postfix(...)
:raw_mc_gml_node_raw_id2d(...)
:raw_gml_node_raw_id2d(...)
:raw_mc_gml_node_raw_id2d_set(...)
:raw_gml_node_raw_id2d_set(...)
:raw_mc_gml_node_raw_id2d_aop(...)
:raw_gml_node_raw_id2d_aop(...)
:raw_mc_gml_node_raw_id2d_prefix(...)
:raw_gml_node_raw_id2d_prefix(...)
:raw_mc_gml_node_raw_id2d_postfix(...)
:raw_gml_node_raw_id2d_postfix(...)
:raw_mc_gml_node_ds_list(...)
:raw_gml_node_ds_list(...)
:raw_mc_gml_node_ds_list_set_hx(...)
:raw_gml_node_ds_list_set_hx(...)
:raw_mc_gml_node_ds_list_aop(...)
:raw_gml_node_ds_list_aop(...)
:raw_mc_gml_node_ds_list_prefix(...)
:raw_gml_node_ds_list_prefix(...)
:raw_mc_gml_node_ds_list_postfix(...)
:raw_gml_node_ds_list_postfix(...)
:raw_mc_gml_node_ds_map(...)
:raw_gml_node_ds_map(...)
:raw_mc_gml_node_ds_map_set_hx(...)
:raw_gml_node_ds_map_set_hx(...)
:raw_mc_gml_node_ds_map_aop(...)
:raw_gml_node_ds_map_aop(...)
:raw_mc_gml_node_ds_map_prefix(...)
:raw_gml_node_ds_map_prefix(...)
:raw_mc_gml_node_ds_map_postfix(...)
:raw_gml_node_ds_map_postfix(...)
:raw_mc_gml_node_ds_grid(...)
:raw_gml_node_ds_grid(...)
:raw_mc_gml_node_ds_grid_set_hx(...)
:raw_gml_node_ds_grid_set_hx(...)
:raw_mc_gml_node_ds_grid_aop(...)
:raw_gml_node_ds_grid_aop(...)
:raw_mc_gml_node_ds_grid_prefix(...)
:raw_gml_node_ds_grid_prefix(...)
:raw_mc_gml_node_ds_grid_postfix(...)
:raw_gml_node_ds_grid_postfix(...)
:raw_mc_gml_node_key_id(...)
:raw_gml_node_key_id(...)
:raw_mc_gml_node_key_id_set(...)
:raw_gml_node_key_id_set(...)
:raw_mc_gml_node_key_id_aop(...)
:raw_gml_node_key_id_aop(...)
:raw_mc_gml_node_key_id_prefix(...)
:raw_gml_node_key_id_prefix(...)
:raw_mc_gml_node_key_id_postfix(...)
:raw_gml_node_key_id_postfix(...)
:raw_mc_gml_node_var_decl(...)
:raw_gml_node_var_decl(...)
:raw_mc_gml_node_block(...)
:raw_gml_node_block(...)
:raw_mc_gml_node_if_then(...)
:raw_gml_node_if_then(...)
:raw_mc_gml_node_ternary(...)
:raw_gml_node_ternary(...)
:raw_mc_gml_node_switch_hx(...)
:raw_gml_node_switch_hx(...)
:raw_mc_gml_node_wait(...)
:raw_gml_node_wait(...)
:raw_mc_gml_node_fork(...)
:raw_gml_node_fork(...)
:raw_mc_gml_node_while_hx(...)
:raw_gml_node_while_hx(...)
:raw_mc_gml_node_do_until(...)
:raw_gml_node_do_until(...)
:raw_mc_gml_node_do_while(...)
:raw_gml_node_do_while(...)
:raw_mc_gml_node_repeat_hx(...)
:raw_gml_node_repeat_hx(...)
:raw_mc_gml_node_for_hx(...)
:raw_gml_node_for_hx(...)
:raw_mc_gml_node_with_hx(...)
:raw_gml_node_with_hx(...)
:raw_mc_gml_node_once(...)
:raw_gml_node_once(...)
:raw_mc_gml_node_return_hx(...)
:raw_gml_node_return_hx(...)
:raw_mc_gml_node_exit_hx(...)
:raw_gml_node_exit_hx(...)
:raw_mc_gml_node_break_hx(...)
:raw_gml_node_break_hx(...)
:raw_mc_gml_node_continue_hx(...)
:raw_gml_node_continue_hx(...)
:raw_mc_gml_node_debugger(...)
:raw_gml_node_debugger(...)
:raw_mc_gml_node_try_catch(...)
:raw_gml_node_try_catch(...)
:raw_mc_gml_node_throw_hx(...)
:raw_gml_node_throw_hx(...)
:raw_ast_gml_node_tools_ni_concat_pos_iter(...)
:raw_ast_gml_node_tools_ni_concat_pos_rec(...)
:raw_ast_gml_node_tools_ni_get_pos_string(...)
:raw_gml_op_is_simple(...)
:raw_gml_op_get_priority(...)
:raw_gml_op_to_string(...)
:raw_gml_op_apply_init(...)
:raw_gml_op_get_name(...)
:raw_gml_pos(...)
:raw_gml_script(...)
:raw_gml_source(...)
:raw_mc_gml_token(...)
:raw_mc_gml_token_header(...)
:raw_gml_token_header(...)
:raw_mc_gml_token_macro(...)
:raw_gml_token_macro(...)
:raw_mc_gml_token_hash(...)
:raw_gml_token_hash(...)
:raw_mc_gml_token_semico(...)
:raw_gml_token_semico(...)
:raw_mc_gml_token_comma(...)
:raw_gml_token_comma(...)
:raw_mc_gml_token_period(...)
:raw_gml_token_period(...)
:raw_mc_gml_token_colon(...)
:raw_gml_token_colon(...)
:raw_mc_gml_token_qmark(...)
:raw_gml_token_qmark(...)
:raw_mc_gml_token_at_sign(...)
:raw_gml_token_at_sign(...)
:raw_mc_gml_token_dollar_sign(...)
:raw_gml_token_dollar_sign(...)
:raw_mc_gml_token_keyword(...)
:raw_gml_token_keyword(...)
:raw_mc_gml_token_ident(...)
:raw_gml_token_ident(...)
:raw_mc_gml_token_undefined_hx(...)
:raw_gml_token_undefined_hx(...)
:raw_mc_gml_token_boolean(...)
:raw_gml_token_boolean(...)
:raw_mc_gml_token_number(...)
:raw_gml_token_number(...)
:raw_mc_gml_token_cstring(...)
:raw_gml_token_cstring(...)
:raw_mc_gml_token_un_op(...)
:raw_gml_token_un_op(...)
:raw_mc_gml_token_in(...)
:raw_gml_token_in(...)
:raw_mc_gml_token_adjfix(...)
:raw_gml_token_adjfix(...)
:raw_mc_gml_token_bin_op(...)
:raw_gml_token_bin_op(...)
:raw_mc_gml_token_set_op(...)
:raw_gml_token_set_op(...)
:raw_mc_gml_token_par_open(...)
:raw_gml_token_par_open(...)
:raw_mc_gml_token_par_close(...)
:raw_gml_token_par_close(...)
:raw_mc_gml_token_sqb_open(...)
:raw_gml_token_sqb_open(...)
:raw_mc_gml_token_sqb_close(...)
:raw_gml_token_sqb_close(...)
:raw_mc_gml_token_cub_open(...)
:raw_gml_token_cub_open(...)
:raw_mc_gml_token_cub_close(...)
:raw_gml_token_cub_close(...)
:raw_mc_gml_token_arg_const(...)
:raw_gml_token_arg_const(...)
:raw_mc_gml_token_null_co(...)
:raw_gml_token_null_co(...)
:raw_mc_gml_token_null_co_set(...)
:raw_gml_token_null_co_set(...)
:raw_mc_gml_token_pragma(...)
:raw_gml_token_pragma(...)
:raw_compile_gml_compile_adjfix_proc(...)
:raw_compile_gml_compile_args_get_simple(...)
:raw_compile_gml_compile_args_proc(...)
:raw_compile_gml_compile_bin_op_proc(...)
:raw_compile_gml_compile_call_func_proc(...)
:raw_compile_gml_compile_call_func_proc_ref(...)
:raw_compile_gml_compile_delete_proc(...)
:raw_compile_treevm_gml_tree_compile_bind(...)
:raw_compile_treevm_gml_tree_compile_void(...)
:raw_compile_treevm_gml_tree_compile_error_at(...)
:raw_compile_treevm_gml_tree_compile_node(...)
:raw_compile_treevm_gml_tree_compile_script(...)
:raw_compile_treevm_gml_tree_vm(...)
:raw_compile_treevm_gml_tree_vm_exec(...)
:raw_gml_api_print(...)
:raw_gml_note_add(...)
:raw_gml_parse_name(...)
:raw_gml_func_add(...)
:raw_gml_func_copy(...)
:raw_gml_remove_func(...)
:raw_gml_var_add(...)
:raw_gml_remove_var(...)
:raw_gml_const_add(...)
:raw_gml_remove_const(...)
:raw_gml_asset_add(...)
:raw_data__gml_func_flags_gml_func_flags_impl__uses_self(...)
:raw_gml_std_haxe_class(...)
:raw_gml_std_haxe_enum(...)
:raw_gml_seek_adjfix_proc(...)
:raw_gml_seek_arguments_proc(...)
:raw_gml_seek_buffer_funcs_proc(...)
:raw_gml_seek_buffer_funcs_want(...)
:raw_gml_seek_calls_proc_func(...)
:raw_gml_seek_calls_proc(...)
:raw_gml_seek_enum_fields_proc_one(...)
:raw_gml_seek_enum_fields_proc(...)
:raw_gml_seek_enum_values_proc_one(...)
:raw_gml_seek_enum_values_proc(...)
:raw_gml_seek_eval_node_to_value(...)
:raw_gml_seek_eval_value_to_node(...)
:raw_gml_seek_eval_proc(...)
:raw_gml_seek_eval_eval(...)
:raw_gml_seek_eval_opt(...)
:raw_gml_seek_fields_proc(...)
:raw_gml_seek_idents_proc(...)
:raw_gml_seek_locals_proc(...)
:raw_gml_seek_self_fields_proc(...)
:raw_gml_seek_set_op_resolve_set_op_rfn(...)
:raw_gml_seek_set_op_proc(...)
:raw_gml_std_gml_internal_ArrayImpl_splice(...)
:raw_gml_std_gml_internal_ArrayImpl_indexOf(...)
:raw_gml_std_gml_internal_ArrayImpl_join(...)
:raw_gml_std_gml_internal_ArrayImpl_slice(...)
:raw_gml_std_gml_internal_ArrayImpl_copy(...)
:raw_haxe__dynamic_access_dynamic_access_impl__copy(...)
:raw_gml_std_haxe_Exception_new(...)
:raw_gml_std_haxe_Exception(...)
:raw_gml_std_haxe_Exception_isNativeException(...)
:raw_gml_std_haxe_Exception_caught(...)
:raw_gml_std_haxe_Exception_thrown(...)
:raw_gml_std_haxe_Exception_unwrap(...)
:raw_gml_std_haxe_ValueException(...)
:raw_gml_link(...)
:raw_gml_stack_push(...)
:raw_gml_stack_pop(...)
:raw_gml_stack_pop_multi(...)
:raw_gml_stack_discard(...)
:raw_gml_stack_discard_multi(...)
:raw_gml_stack_get(...)
:raw_gml_stack_print(...)
:raw_mc_gml_action(...)
:raw_mc_gml_action_discard(...)
:raw_gml_action_discard(...)
:raw_mc_gml_action_dup(...)
:raw_gml_action_dup(...)
:raw_mc_gml_action_dup2x(...)
:raw_gml_action_dup2x(...)
:raw_mc_gml_action_dup3x(...)
:raw_gml_action_dup3x(...)
:raw_mc_gml_action_dup_in(...)
:raw_gml_action_dup_in(...)
:raw_mc_gml_action_undefined_hx(...)
:raw_gml_action_undefined_hx(...)
:raw_mc_gml_action_number(...)
:raw_gml_action_number(...)
:raw_mc_gml_action_cstring(...)
:raw_gml_action_cstring(...)
:raw_mc_gml_action_array_decl(...)
:raw_gml_action_array_decl(...)
:raw_mc_gml_action_object_decl(...)
:raw_gml_action_object_decl(...)
:raw_mc_gml_action_const(...)
:raw_gml_action_const(...)
:raw_mc_gml_action_self_hx(...)
:raw_gml_action_self_hx(...)
:raw_mc_gml_action_other_hx(...)
:raw_gml_action_other_hx(...)
:raw_mc_gml_action_local_hx(...)
:raw_gml_action_local_hx(...)
:raw_mc_gml_action_local_set(...)
:raw_gml_action_local_set(...)
:raw_mc_gml_action_local_aop(...)
:raw_gml_action_local_aop(...)
:raw_mc_gml_action_global_hx(...)
:raw_gml_action_global_hx(...)
:raw_mc_gml_action_global_set(...)
:raw_gml_action_global_set(...)
:raw_mc_gml_action_global_aop(...)
:raw_gml_action_global_aop(...)
:raw_mc_gml_action_field(...)
:raw_gml_action_field(...)
:raw_mc_gml_action_field_set(...)
:raw_gml_action_field_set(...)
:raw_mc_gml_action_field_aop(...)
:raw_gml_action_field_aop(...)
:raw_mc_gml_action_fast_field_aop(...)
:raw_gml_action_fast_field_aop(...)
:raw_mc_gml_action_self_field(...)
:raw_gml_action_self_field(...)
:raw_mc_gml_action_self_field_set(...)
:raw_gml_action_self_field_set(...)
:raw_mc_gml_action_self_field_aop(...)
:raw_gml_action_self_field_aop(...)
:raw_mc_gml_action_fast_self_field(...)
:raw_gml_action_fast_self_field(...)
:raw_mc_gml_action_fast_self_field_set(...)
:raw_gml_action_fast_self_field_set(...)
:raw_mc_gml_action_fast_self_field_aop(...)
:raw_gml_action_fast_self_field_aop(...)
:raw_mc_gml_action_local_field(...)
:raw_gml_action_local_field(...)
:raw_mc_gml_action_local_field_set(...)
:raw_gml_action_local_field_set(...)
:raw_mc_gml_action_local_field_aop(...)
:raw_gml_action_local_field_aop(...)
:raw_mc_gml_action_fast_local_field(...)
:raw_gml_action_fast_local_field(...)
:raw_mc_gml_action_fast_local_field_set(...)
:raw_gml_action_fast_local_field_set(...)
:raw_mc_gml_action_fast_local_field_aop(...)
:raw_gml_action_fast_local_field_aop(...)
:raw_mc_gml_action_index(...)
:raw_gml_action_index(...)
:raw_mc_gml_action_index_set(...)
:raw_gml_action_index_set(...)
:raw_mc_gml_action_index_aop(...)
:raw_gml_action_index_aop(...)
:raw_mc_gml_action_index2d(...)
:raw_gml_action_index2d(...)
:raw_mc_gml_action_index2d_set(...)
:raw_gml_action_index2d_set(...)
:raw_mc_gml_action_index2d_aop(...)
:raw_gml_action_index2d_aop(...)
:raw_mc_gml_action_env(...)
:raw_gml_action_env(...)
:raw_mc_gml_action_env_set(...)
:raw_gml_action_env_set(...)
:raw_mc_gml_action_env_aop(...)
:raw_gml_action_env_aop(...)
:raw_mc_gml_action_env1d(...)
:raw_gml_action_env1d(...)
:raw_mc_gml_action_env1d_set(...)
:raw_gml_action_env1d_set(...)
:raw_mc_gml_action_env1d_aop(...)
:raw_gml_action_env1d_aop(...)
:raw_mc_gml_action_ds_aop(...)
:raw_gml_action_ds_aop(...)
:raw_mc_gml_action_arg_const(...)
:raw_gml_action_arg_const(...)
:raw_mc_gml_action_arg_const_set(...)
:raw_gml_action_arg_const_set(...)
:raw_mc_gml_action_arg_const_aop(...)
:raw_gml_action_arg_const_aop(...)
:raw_mc_gml_action_arg_index(...)
:raw_gml_action_arg_index(...)
:raw_mc_gml_action_arg_index_set(...)
:raw_gml_action_arg_index_set(...)
:raw_mc_gml_action_arg_index_aop(...)
:raw_gml_action_arg_index_aop(...)
:raw_mc_gml_action_arg_count(...)
:raw_gml_action_arg_count(...)
:raw_mc_gml_action_add_int(...)
:raw_gml_action_add_int(...)
:raw_mc_gml_action_equ_op(...)
:raw_gml_action_equ_op(...)
:raw_mc_gml_action_neq_op(...)
:raw_gml_action_neq_op(...)
:raw_mc_gml_action_concat(...)
:raw_gml_action_concat(...)
:raw_mc_gml_action_bin_op(...)
:raw_gml_action_bin_op(...)
:raw_mc_gml_action_un_op(...)
:raw_gml_action_un_op(...)
:raw_mc_gml_action_in(...)
:raw_gml_action_in(...)
:raw_mc_gml_action_in_const(...)
:raw_gml_action_in_const(...)
:raw_mc_gml_action_call_script(...)
:raw_gml_action_call_script(...)
:raw_mc_gml_action_call_script_id(...)
:raw_gml_action_call_script_id(...)
:raw_mc_gml_action_call_script_with_array(...)
:raw_gml_action_call_script_with_array(...)
:raw_mc_gml_action_call_script_at(...)
:raw_gml_action_call_script_at(...)
:raw_mc_gml_action_call_func(...)
:raw_gml_action_call_func(...)
:raw_mc_gml_action_call_func0(...)
:raw_gml_action_call_func0(...)
:raw_mc_gml_action_call_func0o(...)
:raw_gml_action_call_func0o(...)
:raw_mc_gml_action_call_func1(...)
:raw_gml_action_call_func1(...)
:raw_mc_gml_action_call_func1o(...)
:raw_gml_action_call_func1o(...)
:raw_mc_gml_action_call_func2(...)
:raw_gml_action_call_func2(...)
:raw_mc_gml_action_call_func2o(...)
:raw_gml_action_call_func2o(...)
:raw_mc_gml_action_call_func3(...)
:raw_gml_action_call_func3(...)
:raw_mc_gml_action_call_func3o(...)
:raw_gml_action_call_func3o(...)
:raw_mc_gml_action_call_func4(...)
:raw_gml_action_call_func4(...)
:raw_mc_gml_action_call_func4o(...)
:raw_gml_action_call_func4o(...)
:raw_mc_gml_action_call_func_with_local0(...)
:raw_gml_action_call_func_with_local0(...)
:raw_mc_gml_action_call_func_with_local0o(...)
:raw_gml_action_call_func_with_local0o(...)
:raw_mc_gml_action_call_func_with_local1(...)
:raw_gml_action_call_func_with_local1(...)
:raw_mc_gml_action_call_func_with_local1o(...)
:raw_gml_action_call_func_with_local1o(...)
:raw_mc_gml_action_call_func_with_local2(...)
:raw_gml_action_call_func_with_local2(...)
:raw_mc_gml_action_call_func_with_local2o(...)
:raw_gml_action_call_func_with_local2o(...)
:raw_mc_gml_action_call_func_with_local3(...)
:raw_gml_action_call_func_with_local3(...)
:raw_mc_gml_action_call_func_with_local3o(...)
:raw_gml_action_call_func_with_local3o(...)
:raw_mc_gml_action_call_func_with_local4(...)
:raw_gml_action_call_func_with_local4(...)
:raw_mc_gml_action_call_func_with_local4o(...)
:raw_gml_action_call_func_with_local4o(...)
:raw_mc_gml_action_call_field(...)
:raw_gml_action_call_field(...)
:raw_mc_gml_action_construct(...)
:raw_gml_action_construct(...)
:raw_mc_gml_action_func_literal(...)
:raw_gml_action_func_literal(...)
:raw_mc_gml_action_jump(...)
:raw_gml_action_jump(...)
:raw_mc_gml_action_jump_if(...)
:raw_gml_action_jump_if(...)
:raw_mc_gml_action_jump_unless(...)
:raw_gml_action_jump_unless(...)
:raw_mc_gml_action_jump_placeholder(...)
:raw_gml_action_jump_placeholder(...)
:raw_mc_gml_action_bool_and(...)
:raw_gml_action_bool_and(...)
:raw_mc_gml_action_bool_or(...)
:raw_gml_action_bool_or(...)
:raw_mc_gml_action_null_co(...)
:raw_gml_action_null_co(...)
:raw_mc_gml_action_switch_hx(...)
:raw_gml_action_switch_hx(...)
:raw_mc_gml_action_switch_case(...)
:raw_gml_action_switch_case(...)
:raw_mc_gml_action_repeat_jump(...)
:raw_gml_action_repeat_jump(...)
:raw_mc_gml_action_repeat_pre(...)
:raw_gml_action_repeat_pre(...)
:raw_mc_gml_action_with_pre(...)
:raw_gml_action_with_pre(...)
:raw_mc_gml_action_with_next(...)
:raw_gml_action_with_next(...)
:raw_mc_gml_action_with_post(...)
:raw_gml_action_with_post(...)
:raw_mc_gml_action_break_hx(...)
:raw_gml_action_break_hx(...)
:raw_mc_gml_action_continue_hx(...)
:raw_gml_action_continue_hx(...)
:raw_mc_gml_action_return_hx(...)
:raw_gml_action_return_hx(...)
:raw_mc_gml_action_return_const(...)
:raw_gml_action_return_const(...)
:raw_mc_gml_action_result(...)
:raw_gml_action_result(...)
:raw_mc_gml_action_try_hx(...)
:raw_gml_action_try_hx(...)
:raw_mc_gml_action_catch_hx(...)
:raw_gml_action_catch_hx(...)
:raw_mc_gml_action_finally_hx(...)
:raw_gml_action_finally_hx(...)
:raw_mc_gml_action_throw_hx(...)
:raw_gml_action_throw_hx(...)
:raw_mc_gml_action_wait(...)
:raw_gml_action_wait(...)
:raw_mc_gml_action_fork(...)
:raw_gml_action_fork(...)
:raw_mc_gml_action_ensure_array_for_local(...)
:raw_gml_action_ensure_array_for_local(...)
:raw_mc_gml_action_ensure_array_for_global(...)
:raw_gml_action_ensure_array_for_global(...)
:raw_mc_gml_action_ensure_array_for_field(...)
:raw_gml_action_ensure_array_for_field(...)
:raw_mc_gml_action_ensure_array_for_index(...)
:raw_gml_action_ensure_array_for_index(...)
:raw_mc_gml_action_ensure_array_for_index2d(...)
:raw_gml_action_ensure_array_for_index2d(...)
:raw_mc_gml_action_closure(...)
:raw_gml_action_closure(...)
:raw_gml_action_print(...)
:raw_gml_action_list_print_action(...)
:raw_gml_action_list_print(...)
:raw_gml_object_init(...)
:raw_gml_object_field(...)
:raw_gml_object_setup(...)
:raw_gml_thread_scope_create(...)
:raw_gml_thread_scope_get_depth(...)
:raw_gml_thread_scope_print(...)
:raw_gml_thread(...)
:raw_gml_thread_act_pos(...)
:raw_gml_thread_error(...)
:raw_vm_gml_thread_exec_slice_error(...)
:raw_vm_gml_thread_exec_slice_init(...)
:raw_vm_gml_thread_exec_slice_with0(...)
:raw_vm_gml_thread_exec_slice_with1(...)
:raw_vm_gml_thread_exec_slice_with2(...)
:raw_vm_gml_thread_exec_slice_with3(...)
:raw_vm_gml_thread_exec_slice_with4(...)
:raw_vm_gml_thread_exec_slice_with5(...)
:raw_vm_gml_thread_exec_slice_with6(...)
:raw_vm_gml_thread_exec_slice_with7(...)
:raw_vm_gml_thread_exec_slice_with8(...)
:raw_vm_gml_thread_exec_slice_with9(...)
:raw_vm_gml_thread_exec_slice_with10(...)
:raw_vm_gml_thread_exec_slice_with11(...)
:raw_vm_gml_thread_exec_slice_with12(...)
:raw_vm_gml_thread_exec_slice_with13(...)
:raw_vm_gml_thread_exec_slice_with14(...)
:raw_vm_gml_thread_exec_slice_with15(...)
:raw_vm_gml_thread_exec_slice_with16(...)
:raw_vm_gml_thread_exec_slice_with17(...)
:raw_vm_gml_thread_exec_slice_with18(...)
:raw_vm_gml_thread_exec_slice_with19(...)
:raw_vm_gml_thread_exec_slice_with20(...)
:raw_vm_gml_thread_exec_slice_with21(...)
:raw_vm_gml_thread_exec_slice_with22(...)
:raw_vm_gml_thread_exec_slice_with23(...)
:raw_vm_gml_thread_exec_slice_with24(...)
:raw_vm_gml_thread_exec_slice_with25(...)
:raw_vm_gml_thread_exec_slice_with26(...)
:raw_vm_gml_thread_exec_slice_with27(...)
:raw_vm_gml_thread_exec_slice_with28(...)
:raw_vm_gml_thread_exec_slice_with29(...)
:raw_vm_gml_thread_exec_slice_with30(...)
:raw_vm_gml_thread_exec_slice_with31(...)
:raw_vm_gml_thread_exec_slice_with32(...)
:raw_vm_gml_thread_exec_slice_with33(...)
:raw_vm_gml_thread_exec_slice_with34(...)
:raw_vm_gml_thread_exec_slice_with35(...)
:raw_vm_gml_thread_exec_slice_with36(...)
:raw_vm_gml_thread_exec_slice_with37(...)
:raw_vm_gml_thread_exec_slice_with38(...)
:raw_vm_gml_thread_exec_slice_with39(...)
:raw_vm_gml_thread_exec_slice_with40(...)
:raw_vm_gml_thread_exec_slice_with41(...)
:raw_vm_gml_thread_exec_slice_with42(...)
:raw_vm_gml_thread_exec_slice_with43(...)
:raw_vm_gml_thread_exec_slice_with44(...)
:raw_vm_gml_thread_exec_slice_with45(...)
:raw_vm_gml_thread_exec_slice_with46(...)
:raw_vm_gml_thread_exec_slice_with47(...)
:raw_vm_gml_thread_exec_slice_with48(...)
:raw_vm_gml_thread_exec_slice_with49(...)
:raw_vm_gml_thread_exec_slice_with50(...)
:raw_vm_gml_thread_exec_slice_with51(...)
:raw_vm_gml_thread_exec_slice_with52(...)
:raw_vm_gml_thread_exec_slice_with53(...)
:raw_vm_gml_thread_exec_slice_with54(...)
:raw_vm_gml_thread_exec_slice_with55(...)
:raw_vm_gml_thread_exec_slice_with56(...)
:raw_vm_gml_thread_exec_slice_with57(...)
:raw_vm_gml_thread_exec_slice_with58(...)
:raw_vm_gml_thread_exec_slice_with59(...)
:raw_vm_gml_thread_exec_slice_with60(...)
:raw_vm_gml_thread_exec_slice_with61(...)
:raw_vm_gml_thread_exec_slice_with62(...)
:raw_vm_gml_thread_exec_slice_with63(...)
:raw_vm_gml_thread_exec_slice_with64(...)
:raw_vm_gml_thread_exec_slice_with65(...)
:raw_vm_gml_thread_exec_slice_with66(...)
:raw_vm_gml_thread_exec_slice_with67(...)
:raw_vm_gml_thread_exec_slice_with68(...)
:raw_vm_gml_thread_exec_slice_with69(...)
:raw_vm_gml_thread_exec_slice_with70(...)
:raw_vm_gml_thread_exec_slice_with71(...)
:raw_vm_gml_thread_exec_slice_with72(...)
:raw_vm_gml_thread_exec_slice_with73(...)
:raw_vm_gml_thread_exec_slice_with74(...)
:raw_vm_gml_thread_exec_slice_with75(...)
:raw_vm_gml_thread_exec_slice_with76(...)
:raw_vm_gml_thread_exec_slice_with77(...)
:raw_vm_gml_thread_exec_slice_with78(...)
:raw_vm_gml_thread_exec_slice_with79(...)
:raw_vm_gml_thread_exec_slice_with80(...)
:raw_gml_type_check_init(...)
:raw_gml_type_check_any(...)
:raw_gml_type_check_number(...)
:raw_gml_type_check_int(...)
:raw_gml_type_check_index(...)
:raw_gml_type_check_string(...)
:raw_gml_type_check_array(...)
:raw_gml_type_check_z_number(...)
:raw_gml_type_check_z_string(...)
:raw_gml_type_check_z_array(...)
:raw_gml_value_get_type(...)
:raw_gml_value_print(...)
:raw_gml_value_dump(...)
:raw_gml_value_list_copy(...)
:raw_gml_value_list_pad_to_size_with_null(...)
:raw_vm__gml_value_map_gml_value_map_impl__print(...)
:raw_gml_with_scope(...)
:raw_gml_with_scope_copy(...)
:raw_gml_with_scope_destroy(...)
:raw_vm__gml_with_data_gml_with_data_impl__init(...)
:raw_vm__gml_with_data_gml_with_data_impl__alloc(...)
:raw_vm__gml_with_data_gml_with_data_impl__destroy(...)
:raw_gml_type_ref(...)
:raw_gml_type_ref_init(...)
:raw_vm_impl_gml_thread_construct_error(...)
:raw_vm_impl_gml_thread_construct_init(...)
:raw_vm_impl_gml_thread_construct_with0(...)
:raw_vm_impl_gml_thread_construct_with1(...)
:raw_vm_impl_gml_thread_construct_with2(...)
:raw_vm_impl_gml_thread_construct_with3(...)
:raw_vm_impl_gml_thread_construct_with4(...)
:raw_vm_impl_gml_thread_construct_with5(...)
:raw_vm_impl_gml_thread_construct_with6(...)
:raw_vm_impl_gml_thread_construct_with7(...)
:raw_vm_impl_gml_thread_construct_with8(...)
:raw_vm_impl_gml_thread_construct_with9(...)
:raw_vm_impl_gml_thread_construct_with10(...)
:raw_vm_impl_gml_thread_construct_with11(...)
:raw_vm_impl_gml_thread_construct_with12(...)
:raw_vm_impl_gml_thread_construct_with13(...)
:raw_vm_impl_gml_thread_construct_with14(...)
:raw_vm_impl_gml_thread_construct_with15(...)
:raw_vm_impl_gml_thread_construct_with16(...)
:raw_vm_impl_gml_thread_construct_with17(...)
:raw_vm_impl_gml_thread_construct_with18(...)
:raw_vm_impl_gml_thread_construct_with19(...)
:raw_vm_impl_gml_thread_construct_with20(...)
:raw_vm_impl_gml_thread_construct_with21(...)
:raw_vm_impl_gml_thread_construct_with22(...)
:raw_vm_impl_gml_thread_construct_with23(...)
:raw_vm_impl_gml_thread_construct_with24(...)
:raw_vm_impl_gml_thread_construct_with25(...)
:raw_vm_impl_gml_thread_construct_with26(...)
:raw_vm_impl_gml_thread_construct_with27(...)
:raw_vm_impl_gml_thread_construct_with28(...)
:raw_vm_impl_gml_thread_construct_with29(...)
:raw_vm_impl_gml_thread_construct_with30(...)
:raw_vm_impl_gml_thread_construct_with31(...)
:raw_vm_impl_gml_thread_construct_with32(...)
:raw_vm_impl_gml_thread_construct_with33(...)
:raw_vm_impl_gml_thread_construct_with34(...)
:raw_vm_impl_gml_thread_construct_with35(...)
:raw_vm_impl_gml_thread_construct_with36(...)
:raw_vm_impl_gml_thread_construct_with37(...)
:raw_vm_impl_gml_thread_construct_with38(...)
:raw_vm_impl_gml_thread_construct_with39(...)
:raw_vm_impl_gml_thread_construct_with40(...)
:raw_vm_impl_gml_thread_construct_with41(...)
:raw_vm_impl_gml_thread_construct_with42(...)
:raw_vm_impl_gml_thread_construct_with43(...)
:raw_vm_impl_gml_thread_construct_with44(...)
:raw_vm_impl_gml_thread_construct_with45(...)
:raw_vm_impl_gml_thread_construct_with46(...)
:raw_vm_impl_gml_thread_construct_with47(...)
:raw_vm_impl_gml_thread_construct_with48(...)
:raw_vm_impl_gml_thread_construct_with49(...)
:raw_vm_impl_gml_thread_construct_with50(...)
:raw_vm_impl_gml_thread_construct_with51(...)
:raw_vm_impl_gml_thread_construct_with52(...)
:raw_vm_impl_gml_thread_construct_with53(...)
:raw_vm_impl_gml_thread_construct_with54(...)
:raw_vm_impl_gml_thread_construct_with55(...)
:raw_vm_impl_gml_thread_construct_with56(...)
:raw_vm_impl_gml_thread_construct_with57(...)
:raw_vm_impl_gml_thread_construct_with58(...)
:raw_vm_impl_gml_thread_construct_with59(...)
:raw_vm_impl_gml_thread_construct_with60(...)
:raw_vm_impl_gml_thread_construct_with61(...)
:raw_vm_impl_gml_thread_construct_with62(...)
:raw_vm_impl_gml_thread_construct_with63(...)
:raw_vm_impl_gml_thread_construct_with64(...)
:raw_vm_impl_gml_thread_construct_with65(...)
:raw_vm_impl_gml_thread_construct_with66(...)
:raw_vm_impl_gml_thread_construct_with67(...)
:raw_vm_impl_gml_thread_construct_with68(...)
:raw_vm_impl_gml_thread_construct_with69(...)
:raw_vm_impl_gml_thread_construct_with70(...)
:raw_vm_impl_gml_thread_construct_with71(...)
:raw_vm_impl_gml_thread_construct_with72(...)
:raw_vm_impl_gml_thread_construct_with73(...)
:raw_vm_impl_gml_thread_construct_with74(...)
:raw_vm_impl_gml_thread_construct_with75(...)
:raw_vm_impl_gml_thread_construct_with76(...)
:raw_vm_impl_gml_thread_construct_with77(...)
:raw_vm_impl_gml_thread_construct_with78(...)
:raw_vm_impl_gml_thread_construct_with79(...)
:raw_vm_impl_gml_thread_construct_with80(...)
:raw_vm_v2_gml_action_closure_bind(...)
:raw_vm_group_arg_on_arg_count(...)
:raw_vm_group_arg_on_arg_const(...)
:raw_vm_group_arg_on_arg_const_set(...)
:raw_vm_group_arg_on_arg_const_aop(...)
:raw_vm_group_arg_on_arg_index(...)
:raw_vm_group_arg_on_arg_index_set(...)
:raw_vm_group_arg_on_arg_index_aop(...)
:raw_vm_group_array_on_index(...)
:raw_vm_group_array_on_index_set(...)
:raw_vm_group_array_on_index_aop(...)
:raw_vm_group_array_on_index2d(...)
:raw_vm_group_array_on_index2d_set(...)
:raw_vm_group_array_on_index2d_aop(...)
:raw_vm_group_call_call_value(...)
:raw_vm_group_call_on_call_script(...)
:raw_vm_group_call_on_call_script_id(...)
:raw_vm_group_call_on_call_field(...)
:raw_vm_group_call_on_construct(...)
:raw_vm_group_call_on_call_script_with_array(...)
:raw_vm_group_call_on_call_func(...)
:raw_vm_value_gml_value_printer_print_rec(...)
:raw_vm_v2_gml_thread_group_call_gml23_init(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_unknown(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_basic(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_self_other_soft(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_self(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_construct(...)
:raw_vm_v2_gml_thread_group_call_gml23_call_raw(...)
:raw_vm_group_ensure_plus_on_ensure_array_for_local(...)
:raw_vm_group_ensure_plus_on_ensure_array_for_global(...)
:raw_vm_group_ensure_plus_on_ensure_array_for_field(...)
:raw_vm_group_ensure_plus_on_ensure_array_for_index(...)
:raw_vm_group_ensure_plus_on_ensure_array_for_index2d(...)
:raw_vm_group_env_on_env(...)
:raw_vm_group_env_on_env_set(...)
:raw_vm_group_env_on_env_aop(...)
:raw_vm_group_env_on_env1d(...)
:raw_vm_group_env_on_env1d_set(...)
:raw_vm_group_env_on_env1d_aop(...)
:raw_vm_group_fast_call_on_call_func0(...)
:raw_vm_group_fast_call_on_call_func0o(...)
:raw_vm_group_fast_call_on_call_func1(...)
:raw_vm_group_fast_call_on_call_func1o(...)
:raw_vm_group_fast_call_on_call_func2(...)
:raw_vm_group_fast_call_on_call_func2o(...)
:raw_vm_group_fast_call_on_call_func3(...)
:raw_vm_group_fast_call_on_call_func3o(...)
:raw_vm_group_fast_call_on_call_func4(...)
:raw_vm_group_fast_call_on_call_func4o(...)
:raw_vm_group_field_on_field(...)
:raw_vm_group_field_on_field_set(...)
:raw_vm_group_field_on_fast_field_aop(...)
:raw_vm_group_field_on_field_aop(...)
:raw_vm_group_field_on_self_field(...)
:raw_vm_group_field_on_self_field_set(...)
:raw_vm_group_field_on_self_field_aop(...)
:raw_vm_group_field_on_fast_self_field(...)
:raw_vm_group_field_on_fast_self_field_set(...)
:raw_vm_group_field_on_fast_self_field_aop(...)
:raw_vm_group_field_on_local_field(...)
:raw_vm_group_field_on_local_field_set(...)
:raw_vm_group_field_on_local_field_aop(...)
:raw_vm_group_field_on_fast_local_field(...)
:raw_vm_group_field_on_fast_local_field_set(...)
:raw_vm_group_field_on_fast_local_field_aop(...)
:raw_vm_group_field_on_in(...)
:raw_vm_group_field_on_in_const(...)
:raw_vm_v2_gml_thread_group_func_literal_rebind(...)
:raw_vm_v2_gml_thread_group_func_literal_on_func_literal(...)
:raw_vm_group_global_on_global(...)
:raw_vm_group_global_on_global_set(...)
:raw_vm_group_global_on_global_aop(...)
:raw_vm_group_jump_on_jump(...)
:raw_vm_group_jump_on_jump_if(...)
:raw_vm_group_jump_on_jump_unless(...)
:raw_vm_group_jump_on_bool_and(...)
:raw_vm_group_jump_on_bool_or(...)
:raw_vm_group_jump_on_switch(...)
:raw_vm_group_jump_on_switch_case(...)
:raw_vm_group_jump_on_null_co(...)
:raw_vm_group_jump_on_repeat_pre(...)
:raw_vm_group_jump_on_repeat_jump(...)
:raw_vm_group_jump_on_break(...)
:raw_vm_group_jump_on_continue(...)
:raw_vm_group_jump_on_return(...)
:raw_vm_group_jump_on_return_const(...)
:raw_vm_group_literal_on_undefined(...)
:raw_vm_group_literal_on_number(...)
:raw_vm_group_literal_on_cstring(...)
:raw_vm_group_literal_on_const(...)
:raw_vm_group_literal_on_self(...)
:raw_vm_group_literal_on_other(...)
:raw_vm_group_literal_on_result(...)
:raw_vm_group_literal_on_array_decl(...)
:raw_vm_group_literal_on_object_decl(...)
:raw_vm_group_local_on_local(...)
:raw_vm_group_local_on_local_set(...)
:raw_vm_group_local_on_local_aop(...)
:raw_vm_group_op_impl(...)
:raw_vm_group_op_on_bin_op(...)
:raw_vm_group_op_on_un_op(...)
:raw_vm_group_op_on_equ_op(...)
:raw_vm_group_op_on_neq_op(...)
:raw_vm_group_op_on_add_int(...)
:raw_vm_group_op_on_concat(...)
:raw_vm_group_op_on_ds_aop(...)
:raw_vm_group_special_on_wait(...)
:raw_vm_group_special_on_fork(...)
:raw_vm_group_special_on_try(...)
:raw_vm_group_special_on_catch(...)
:raw_vm_group_special_on_finally(...)
:raw_vm_group_special_on_throw(...)
:raw_vm_group_stack_on_discard(...)
:raw_vm_group_stack_on_dup(...)
:raw_vm_group_stack_on_dup2x(...)
:raw_vm_group_stack_on_dup3x(...)
:raw_vm_group_stack_on_dup_in(...)
:raw_vm_group_with_on_with_pre(...)
:raw_vm_group_with_on_with_next(...)
:raw_vm_group_with_on_with_post(...)
:raw_vm_v2_gml_thread_v2_handlers_init(...)
:raw_vm_v2_gml_thread_v2_on_unknown(...)
:raw_gml_init(...)
:raw_cmn_menu_tools(...)
:raw_cmn_menu_trigger_w(...)
:raw_cmn_menu_create_w(...)
:raw_cmn_menu_draw_init(...)
:raw_cmn_menu_draw_normal(...)
:raw_cmn_menu_draw_post(...)
:rawDrawMenuHeader(...)
:raw_cmn_menu_set_current_select(...)
:raw_cmn_menu_set_current_deselect(...)
:rawMainMenuBack(...)
:raw____struct___104_scrMainMenuBack_gml_GlobalScript_scrMainMenuBack(...)
:raw_mdef_main(...)
:raw_mdef_blank(...)
:rawHasDailies(...)
:raw_mdef_coop(...)
:raw_mdef_play(...)
:rawSetMenu(...)
:rawMainMenuTools(...)
:rawMainMenuGetX(...)
:rawMainMenuGetY(...)
:rawMenuCanInput(...)
:rawHasMenu(...)
:rawGetMenuScript(...)
:rawMenuButtonHover(...)
:rawMenuButtonEnter(...)
:rawMenuButtonLeave(...)
:rawMenuButtonClicked(...)
:rawMainMenuButton(...)
:rawMainMenuCaption(...)
:rawMainMenuCaption_draw(...)
:raw_mdef_options(...)
:raw_dp_button_pressed_any(...)
:raw_dp_rel_x(...)
:raw_dp_rel_y(...)
:raw_macros_view(...)
:raw_gmedit_meta(...)
:raw___array_length_1d(...)
:rawUberContIndicators(...)
:rawUberContUpdateNote(...)
:rawOptionsBase(...)
:rawOptionMenuButton(...)
:rawOptionMenuToggle(...)
:rawOptionMenuSteppy(...)
:rawOptionMenuSlider(...)
:rawOptionMenuClick(...)
:rawOptionMenuControl(...)
:raw_mdef_game_opt(...)
:rawHasStreamKey(...)
:rawStreamKeyHTTP(...)
:raw_mdef_delete_data(...)
:rawOptionDangerShake(...)
:rawOptionMenuLabel(...)
:raw_mdef_game_opt_ext(...)
:raw_mdef_video_opt(...)
:rawSetGamepadStyle(...)
:rawGetGamepadStyleName(...)
:raw_ft_proc_alarms(...)
:raw_ft_proc_alarms_for(...)
:rawMenuBlank(...)
:rawPlayerApproachWall(...)
:raw_chat_cmd_spawn(...)
:raw_macros_assets(...)
:raw_chat_cmd_goto(...)
:raw_chat_cmd_getset(...)
:raw_chat_cmd_get(...)
:raw_chat_cmd_set(...)
:rawInitDw(...)
:raw_chat_cmd_fps(...)
:raw_macros_system(...)
:raw_xboxone_fileerror_print(...)
:raw_xboxone_savedata_user_is_valid(...)
:raw_AsyncHelper_t(...)
:raw_XboxHelper_t(...)
:rawUberContLisWallsUpdate(...)
:rawUberContPrepareDwGet(...)
:rawProcSteamScreenshot(...)
:rawDispatchButtonHoverEvents(...)
:rawUpdateMouseLockAndSBPx(...)
:rawUpdateMouseMoved(...)
:rawUpdateGamepadBinds(...)
:raw_mdef_pick_user(...)
:raw_mdef_await_data(...)
:raw_xboxone_user_switched(...)
:raw_xboxone_needs_user_switch(...)
:raw_xboxone_user_is_valid(...)
:rawDrawUserInfo(...)
:rawUserSwitchButton(...)
:raw_mrandom(...)
:raw_mrandomize(...)
:raw_mrandom_set_seed(...)
:raw_mrandom_range(...)
:raw_mirandom(...)
:raw_mirandom_range(...)
:raw_mchoose(...)
:raw_macros_colors(...)
:rawShine(...)
:rawWepChestDrop(...)
:rawChestHatred(...)
:raw_asset_from_name(...)
:rawipt_from_name(...)
:raw_gml_scope_tools(...)
:raw_gml_scope_create(...)
:raw_gml_field_get(...)
:raw_gml_field_get2(...)
:raw_filename_is_gml(...)
:raw_dp_handle_flow_msg_loadmod(...)
:raw_mod_bridge_call(...)
:raw_mod_bridge_func(...)
:raw_mod_bridge_var(...)
:raw_ModCore_nodeTools(...)
:raw_gml_node_tools_unpack(...)
:raw_gml_node_tools_is_statement(...)
:raw_gml_node_tools_is_in_block(...)
:raw_gml_node_tools_to_value(...)
:raw_gml_node_tools_has_value(...)
:raw_gml_node_tools_equals_list(...)
:raw_gml_node_tools_equals(...)
:raw_gml_node_tools_clone_opt(...)
:raw_gml_node_tools_clone(...)
:raw_gml_node_tools_seek_all_out(...)
:raw_gml_node_tools_seek_all(...)
:raw_gml_node_tools_seek(...)
:raw_anon_gml_Object_Player_Create_0_1541_gml_Object_Player_Create_0(...)
:raw_steam_gml_init_gml(...)
:raw_steam_gml_check_version(...)
:raw_steam_gml_prepare_buffer(...)
:raw_steam_gml_read_chars(...)
:raw_steam_gml_write_chars(...)
:raw_steam_net_is_available(...)
:raw_steam_net_update(...)
:raw_steam_net_check_version(...)
:raw_steam_lobby_join_id(...)
:raw_steam_lobby_get_lobby_id(...)
:raw_steam_lobby_get_owner_id(...)
:raw_steam_lobby_set_owner_id(...)
:raw_steam_lobby_get_member_id(...)
:raw_steam_lobby_list_get_lobby_id(...)
:raw_steam_lobby_list_get_lobby_owner_id(...)
:raw_steam_lobby_list_get_lobby_member_id(...)
:raw_steam_net_accept_p2p_session(...)
:raw_steam_net_close_p2p_session(...)
:raw_steam_net_packet_get_sender_id(...)
:raw_steam_net_packet_get_data(...)
:raw_steam_net_packet_send(...)
:raw_file_ini_init(...)
:raw_file_ini_array_decl(...)
:raw_file_ini_array_wget(...)
:raw_file_ini_opt_quote_keys(...)
:raw_file_ini_opt_quote_values(...)
:raw_file_ini_opt_trailing_comments(...)
:raw_file_ini_print_rf_trim(...)
:raw_file_ini_parse_unescape(...)
:raw_file_ini_parse(...)
:raw_file_ini_open(...)
:raw_file_ini_create(...)
:raw_file_ini_destroy(...)
:raw_file_ini_close(...)
:raw_file_ini_flush(...)
:raw_file_ini_bind(...)
:raw_file_ini_section_add_raw(...)
:raw_file_ini_section_delete(...)
:raw_file_ini_section_exists(...)
:raw_file_ini_section_names(...)
:raw_file_ini_read_raw(...)
:raw_file_ini_write_raw(...)
:raw_file_ini_key_exists(...)
:raw_file_ini_key_delete(...)
:raw_file_ini_key_names(...)
:raw_file_ini_print(...)
:raw_file_ini_read_string(...)
:raw_file_ini_read_real(...)
:raw_file_ini_read_int(...)
:raw_file_ini_write_string(...)
:raw_file_ini_write_real(...)
:raw_file_ini_write_int(...)
:raw_file_ini_section_create(...)
:raw_file_ini_pair_create(...)
:raw_file_ini_item_sep(...)
:raw_file_ini_item_comment(...)
:raw_file_ini_item_pair(...)
:raw_file_ini_haxe_type_proto(...)
:raw_file_ini_haxe_class_create(...)
:raw_ds_list_find_index_safe(...)
:raw_string_builder_print(...)
:raw_file_ini_string_reader_buf(...)
:raw_file_ini_string_reader_sub(...)
:raw_window_set_cursor_init(...)
:raw_window_set_cursor_normal(...)
:raw_window_set_cursor_surface_part(...)
:raw____struct___115(...)
:raw_anon_F66F69AA_1277(...)
:raw_anon_F66F69AA_1366(...)
:raw_window_set_cursor_surface(...)
:raw_window_set_cursor_sprite(...)
:raw_window_set_cursor_sprite_ext(...)
:raw_buffer_tools_init(...)
:raw_buffer_print(...)
:raw_buffer_write_ua(...)
:raw_buffer_read_ua(...)
:raw_buffer_write_any(...)
:raw_buffer_write_any_rec(...)
:raw_buffer_read_any(...)
:raw_buffer_write_list(...)
:raw_buffer_read_list(...)
:raw_buffer_write_map(...)
:raw_buffer_read_map(...)
:raw_buffer_ignore_variable(...)
:raw_buffer_write_self(...)
:raw_buffer_read_self(...)
:raw_buffer_print_self(...)
:raw_buffer_write_instances(...)
:raw_buffer_read_instances(...)
:raw_buffer_print_instances(...)
:raw_steam_inventory_result_get_status(...)
:raw_steam_inventory_result_get_unix_timestamp(...)
:raw_steam_inventory_result_get_item_property(...)
:raw_steam_inventory_result_get_items(...)
:raw____struct___116(...)
:raw_steam_inventory_result_destroy(...)
:raw_steam_inventory_trigger_item_drop(...)
:raw_steam_inventory_add_promo_item(...)
:raw_steam_inventory_add_promo_items(...)
:raw_steam_inventory_consume_item(...)
:raw_steam_inventory_exchange_items(...)
:raw_steam_inventory_generate_items(...)
:raw_steam_inventory_get_all_items(...)
:raw_steam_inventory_request_eligible_promo_item_defs(...)
:raw_steam_inventory_get_items_by_id(...)
:raw_steam_inventory_start_update_properties(...)
:raw_steam_inventory_set_property_bool(...)
:raw_steam_inventory_set_property_float(...)
:raw_steam_inventory_set_property_int(...)
:raw_steam_inventory_set_property_string(...)
:raw_steam_inventory_remove_property(...)
:raw_steam_inventory_submit_update_properties(...)
:raw_steam_inventory_load_item_definitions(...)
:raw_steam_inventory_get_item_price(...)
:raw_steam_inventory_get_items_with_prices(...)
:raw_steam_inventory_request_prices(...)
:raw_steam_inventory_transfer_item_quantity(...)
:raw_steam_lobby_set_joinable(...)
:raw_steam_get_friends_game_info(...)
:raw____struct___117(...)
:raw_steam_get_user_avatar(...)
:raw_steam_image_get_size(...)
:raw_steam_image_get_rgba(...)
:raw_steam_image_get_bgra(...)
:raw_steam_ugc_delete_item(...)
:raw_steam_get_app_ownership_ticket_data(...)
:raw_steam_user_request_encrypted_app_ticket(...)
:raw_steam_image_create_sprite(...)
:raw_shader_replace_init(...)
:raw_shader_replace_auto(...)
:raw_shader_add(...)
:raw_window_set_cursor_init_dll(...)
:raw_window_set_cursor_impl_1(...)
:raw_window_set_cursor_impl(...)
:raw_display_mouse_lock_init(...)
:raw_display_mouse_bounds(...)
:raw_steam_id_create(...)
:raw_steam_id_get_high(...)
:raw_steam_id_get_low(...)
:raw_steam_id_equals(...)
:raw_steam_id_from_int64(...)
:raw_steam_id_to_int64(...)
