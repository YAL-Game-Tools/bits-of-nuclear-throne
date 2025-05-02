// Generated at 27.04.2025 00:00:22
:script_execute(script, ...args):
:script_execute_ext(script, args:array):
script_get_name(script:index):
script_get_index(script_name:string):

//{ Types
is_number(v):#
is_real(val):##
is_string(val_or_template, ...):##
is_undefined(val):##
is_int32(val):##
is_int64(val):##
is_bool(val):##
is_nan(val):##
is_infinity(val):##
is_struct(val):##
is_method(val):##
is_array(val):##
is_ptr(val):##
is_callable(val):##
is_handle(val):##
/// Like is_struct but returns false for ds/buffers/etc.
is_object(q)
/// Returns true for ds/buffers/etc.
is_builtin(q)
method(self, func):
real(val):#
bool(val):#
string(val_or_template, ...rest):#
int64(val):#
//}

//{ Math
min(...):#
max(...):#
mean(...):#
median(...):#
abs(x):#
round(x):#
floor(x):#
ceil(x):#
sign(x):#
frac(x):#
sqrt(x):#
sqr(x):#
exp(x):#
ln(x):#
log2(x):#
log10(x):#
sin(radian_angle):#
cos(radian_angle):#
tan(radian_angle):#
arcsin(x):#
arccos(x):#
arctan(x):#
arctan2(y,x):#
dsin(degree_angle):#
dcos(degree_angle):#
dtan(degree_angle):#
darcsin(x):#
darccos(x):#
darctan(x):#
darctan2(y,x):#
degtorad(x):#
radtodeg(x):#
power(x,n):#
logn(n,x):#
clamp(val,min,max):#
lerp(val1,val2,amount):#
dot_product(x1,y1,x2,y2):#
dot_product_3d(x1,y1,z1,x2,y2,z2):#
dot_product_normalised(x1,y1,x2,y2)£:#
dot_product_3d_normalised(x1,y1,z1,x2,y2,z2)£:#
dot_product_normalized(x1,y1,x2,y2)$:#
dot_product_3d_normalized(x1,y1,z1,x2,y2,z2)$:#
math_set_epsilon(new_epsilon):#
math_get_epsilon()::#
angle_difference(dest,src):#
point_distance_3d(x1,y1,z1,x2,y2,z2):#
point_distance(x1,y1,x2,y2):#
point_direction(x1,y1,x2,y2):#
lengthdir_x(len,dir):#
lengthdir_y(len,dir):#
//
point_in_rectangle(px,py,x1,y1,x2,y2):#
point_in_triangle(px,py,x1,y1,x2,y2,x3,y3):#
point_in_circle(px,py,cx,cy,rad):#
rectangle_in_rectangle(sx1,sy1,sx2,sy2,dx1,dy1,dx2,dy2):#
rectangle_in_triangle(sx1,sy1,sx2,sy2,x1,y1,x2,y2,x3,y3):#
rectangle_in_circle(sx1,sy1,sx2,sy2,cx,cy,rad):#
//}

//{ String
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

string_ext(format,arg_array)
string_trim_start(str, [substrs])
string_trim_end(str, [substrs])
string_trim(str, [substrs])
string_starts_with(str,substr)
string_ends_with(str,substr)
string_split(str,delim,[remove_empty],[max_splits])
string_split_ext(str,delim_array,[remove_empty],[max_splits])
string_join(delim,arg0,arg1,...)
string_join_ext(delim,val_array)
string_concat(arg0,arg1,arg2,...)
string_concat_ext(val_array)
string_foreach(str,func,[pos],[length])

base64_encode(str):
base64_decode(str):
pi = 3.1415926535897931
infinity = inf
NaN = "@@nan$$"
//}

//{ Arrays
array_create(size, [value]):
array_copy(dest, dest_index, src, src_index, length)
array_resize(variable, newsize)
array_length(val):
// Alias for array_length
array_length_1d(val):
array_equals(a, b):
array_get(variable, index):
array_set(variable, index, val)
array_push(array, ...values)
array_pop(array)
array_insert(array,index,val,...)
array_delete(array,index,number)
array_shift(array):
/// these are the built-in functions:
native_array_sort(array,sortType_or_function)
native_array_contains(array,value,[offset],[length])
native_array_contains_ext(array,values,matchAll,[offset],[length])
native_array_first(array)
native_array_last(array)
native_array_create_ext(size, function):
native_array_any(array,function,[offset],[length]):
native_array_all(array,function,[offset],[length]):
native_array_foreach(array,function,[offset],[length]):
native_array_reduce(array,function,[init_value],[offset],[length]):
native_array_filter(array,function,[offset],[length]):
native_array_filter_ext(array,function,[offset],[length]):
native_array_map(array,function,[offset],[length]):
native_array_map_ext(array,function,[offset],[length]):
native_array_copy_while(array,function,[offset],[length]):
native_array_unique(array,[offset],[length]):
native_array_unique_ext(array,[offset],[length]):
native_array_reverse(array,[offset],[length]):
native_array_reverse_ext(array,[offset],[length]):
native_array_concat(array0,array1,...):
native_array_union(array0,array1,...):
native_array_intersection(array0,array1,...):
array_clone(arr:array):
array_clear(arr:array, val)
array_slice(arr:array, start:int, length:int):
/// these are the original NTT-specific implementations:
array_find_index(arr:array, val):
array_find_index_ext(arr:array, val, start:int):
array_find_last_index(arr:array, val):
array_find_last_index_ext(arr:array, val, start:int):
array_filter(arr:array, fn, copy:bool=true):
array_map(arr:array, fn, copy:bool=true):
array_reverse(array)
array_sort(array, ascending)
array_sort_sub(arr:array, sub_index:int, ascend:bool)
array_join(:array, :string):
//}

//{ Lists
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
//}

//{ Maps
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
ds_map_keys_to_array(map, ?array):
ds_map_values_to_array(map, ?array):
/// deprecated:
// use ds_map_keys_to_array
ds_map_keys(map, ?array):
// use ds_map_values_to_array
ds_map_values(map, ?array):
//}

//{ Grids
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
//}
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

//{ Reflection
// shorter:
struct_get(ctx, varname:string):
struct_set(ctx, varname:string, value)
struct_exists(ctx, varname:string):
struct_remove(ctx, varname:string)
struct_get_names(struct):
struct_names_count(struct):
// longer:
variable_struct_get(ctx, varname:string):
variable_struct_set(ctx, varname:string, value)
variable_struct_exists(ctx, varname:string):
variable_struct_remove(ctx, varname:string)
variable_struct_get_names(struct):
variable_struct_names_count(struct):
// non-standard:
variable_struct_filter(obj, fn, copy:bool=true):
variable_struct_map(obj, fn, copy:bool=true):
/// --
variable_instance_get(inst, varname:string, ?defvalue):
variable_instance_set(ctx, varname:string, value)
variable_instance_exists(ctx, varname:string):
variable_instance_remove(ctx, varname:string)
variable_instance_get_names(inst, ?outList):
//}
instance_create_depth(x, y, depth, obj, ?var_struct):
instance_create_layer(x, y, layer, obj, ?var_struct):
instance_create(x, y, obj, ?var_struct):
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
surface_create(width:int, height:int, ?format:int):
surface_destroy(surf)
/// GMLv1 mods call this - returns `false` on invalid inputs instead of erroring
surface_destroy_soft(surf):
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
surface_format_is_supported(format):
surface_rgba8unorm = 6
surface_r16float = 9
surface_r32float = 10
surface_rgba4unorm = 11
surface_r8unorm = 12
surface_rg8unorm = 13
surface_rgba16float = 14
surface_rgba32float = 15
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
buffer_base64_decode_ext(buffer, string, offset)
buffer_get_address(buffer):
buffer_compress(bufferid,offset,size):
buffer_decompress(bufferId):
buffer_load(path):
buffer_load_ext(buffer, path, offset:int)
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
:instance_place(x:number, y:number, obj:index):
instance_find(obj:index, n:index);
//}
//{ event_
::event_perform(etype:int, enumb:int)
::event_perform_object(obj:index, etype:int, enumb:int)
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
//{ Conversions
real(val):
int64(val):
string(val):
native_string=string(val_or_template, ...):
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
asset_path = 4
asset_script = 5
asset_font = 6
asset_timeline = 7
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
object_max = 555
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
object_has_event(ind:index, event_type, event_number):
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
gc_collect()
gc_enable(enable)
gc_is_enabled()
gc_get_stats()
gc_target_frame_time(time)
gc_get_target_frame_time()
fork():
/// Displays value(s) in chat. Intended for debugging.
trace(...values):
trace_time(?caption)
trace_color(text:string, :color)
typeof(value):
room_speed
// input and network delay, in frames
current_delay*
game_set_seed(seed:int)
// this is actually is_number for compatibility purposes
is_real(value):
/// 2.3 version of real(), throws an error if value cannot be converted
double(value):
real(value):
// the REAL is_real (which won't return true for int64/bools) if you need it for some reason
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
random_set_seed(seed:int)
random_get_seed():
/// Removes an instance without triggering it's Destroy-event (same as instance_destroy(inst, false)).
instance_delete(instance:id)
//{ Instance API
:instance_change(_:object, performevents:bool)
:instance_copy(performevents:bool):
/// Returns whether an instance belongs to given object type
instance_is(instance:id, object:object):
/// Returns an array of instances that have varname equal to any of values.
instances_matching(object_or_array, varname:string, ...values):
/// Returns an array of instances that have varname not equal to any of values
instances_matching_ne(object_or_array, varname:string, ...values):
/// Returns an array of instances that have varname numeric and < the set threshold
instances_matching_lt(object_or_array, varname:string, value:number):
/// Returns an array of instances that have varname numeric and > the set threshold
instances_matching_gt(object_or_array, varname:string, value:number):
/// Returns an array of instances that have varname numeric and <= the set threshold
instances_matching_le(object_or_array, varname:string, value:number):
/// Returns an array of instances that have varname numeric and >= the set threshold
instances_matching_ge(object_or_array, varname:string, value:number):
/// Returns an array of instances that have varname numeric and within the range
instances_matching_range(object_or_array, varname, minValue, maxValue, minValueIsInclusive, maxValueIsInclusive):
/// Returns an array of instances with their XY within rectangle
instances_in_rectangle(object_or_array, x1, y1, x2, y2):
/// Returns an array of instances with their XY within circle
instances_in_circle(object_or_array, x, y, rad):
/// Like instance_nearest, but takes an array of instances
instance_nearest_from(x, y, array_of_instances)
instance_nearest_bbox(x, y, obj_or_array)
//
:motion_add_raw(direction, speed);
:motion_add(direction, speed);
:motion_add_ct(direction, speed);
:motion_set_raw(direction, speed);
:motion_set(direction, speed);
//
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
spritespeed_framespergameframe = 1
spritespeed_framespersecond = 0
:sprite_skin(bskin, ...sprites:sprite):
font_add_sprite(:sprite, first:int, prop:bool, sep:number):
font_add_sprite_ext(:sprite, chars:string, prop:bool, sep:number):
font_delete(:font)
current_time*
current_frame*
current_time_scale
current_time_scale_squared*
current_frame_is_active():
current_frame_get_repeat():
lq_get(struct, field)
lq_defget(struct, field, defvalue):
lq_set(ctx, varname:string, value)
lq_exists(ctx, varname:string):
lq_delete(ctx, varname:string)
lq_size(struct):
lq_get_key(struct, fd_index):
lq_get_value(struct, fd_index):
lq_clone(struct):
//{ JSON functions
// These actually use TJSON (https://yal.cc/gamemaker-tjson/)
// and therefore work with arrays/structs instead of data structures
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
// Draws text with @tags (see doc)
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
// Changes whether subsequently drawn graphics should be visible to given player
draw_set_visible(player:int, visible:bool)
// Same as above, but applies to all players
draw_set_visible_all(visible:bool)
// Returns state set via above two
draw_get_visible(player:int):
// Has subsequently drawn graphics visible to player if a rectangle is within local view bounds
draw_set_visible_bbox(player:int, left:number, top:number, right:number, bottom:number)
// Has subsequently drawn graphics visible to all players if a rectangle is within local view bounds
draw_set_visible_bbox_all(left:number, top:number, right:number, bottom:number)
//}
//{
d3d_set_fog(enable:bool, color:color, start:number, end:number)
draw_set_fog(enable:bool, color:color, start:number, end:number)
//}
// Changes the transformation matrix for subsequently drawn graphics. Mode can be one of following:
// 0: No offset
// 1: View offset
// 2: Player HUD (index specifies player)
draw_set_projection(mode:int, ?index:int)
draw_reset_projection()
/// Shaders:
// Old/non-descriptive names:
// aka shader_kind_hlsl_9
shader_kind_hlsl_legacy = 0
// aka shader_kind_hlsl_11_es
shader_kind_hlsl = 1
// aka shader_kind_hlsl_11_gms2
shader_kind_hlsl_gms2 = 2

// New names:
// pure vs3_0/ps3_0 model that's supposed to be compatible with GMS1 era shaders
shader_kind_hlsl_9 = 0
// pure vs5_0/ps5_0 model
shader_kind_hlsl_11 = 3
// vs5_0/ps5_0 model with GLSL ES compatibility for shaders generated by HLSLCompiler.exe
shader_kind_hlsl_11_es = 1
// vs5_0/ps5_0 model with GLSL ES compatibility and common boilerplate code
shader_kind_hlsl_11_gms2 = 2
// (GLSL ES compatible shader have their native kind set to shader_native_kind_glsl_es)
shader_create(vertex_code:string, fragment_code:string, ?kind):
shader_destroy(shader):
shader_get_native_kind(shader):
shader_set_native_kind(shader, kind):
shader_native_kind_none = 0
shader_native_kind_hlsl_9 = 3
shader_native_kind_hlsl_11 = 4
shader_native_kind_glsl_es = 1
shader_is_compiled(shader):
shader_set(shader)
shader_reset()
shader_get_sampler_index(shader, uniform_name:string):
shader_get_uniform(shader, uniform_name:string):
shader_get_uniform_at(shader, type:int, index:int):
texture_set_stage(sampler:index, texture)
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
game_version = 100022
mod_exists(type:string, name:string):
/// Returns an array containing names of loaded mods of given type.
mod_get_names(type:string):
mod_variable_exists(type:string, name:string, varName:string):
mod_variable_get(type:string, name:string, varName:string):
mod_variable_set(type:string, name:string, varName:string, value):
mod_script_exists(type:string, name:string, scrName:string):
${raw}mod_script_call(type:string, name:string, scrName:string, ...args):
// mod_script_call but without passing self/other.
// as result, self/other in called script can be very arbitrary, especially after `wait`.
${raw}mod_script_call_nc(type:string, name:string, scrName:string, ...args):
// mod_script_call but only passing self - akin to above.
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
// Plays a sound for gunshot.
// The way audio system works in Nuclear Throne is that non-gun audio is temporarily
// faded (to `fade` volume) for a few moments after each shot.
// Regular guns use fade:0.3, small guns use fade:0.6, large guns use fade:-0.5
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
// note: you can't replace sounds loaded by mods - change variables for that.
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
// Local mouse coordinates (note: currently gamepads have no effect on these)
mouse_x_nonsync*
mouse_y_nonsync*
// Local view coordinates
view_xview_nonsync*
view_yview_nonsync*
// Used by audio functions, does not modify primary RNG state.
random_nonsync(x:number):
get_timer_nonsync():
//}
//}
//{ Weapon API
:::weapon_get_name(wep):
:::weapon_get_area(wep):
:::weapon_get_sprt(wep):
:::weapon_get_sprite(wep):
:::weapon_get_sprt_hud(wep):
:::weapon_get_auto(wep):
:::weapon_get_load(wep):
:::weapon_get_type(wep):
:::weapon_get_cost(wep):
:::weapon_get_rads(wep):
:::weapon_get_swap(wep):
:::weapon_get_text(wep):
:::weapon_is_melee(wep):
:::weapon_get_gold(wep):
:::weapon_get_laser_sight(wep):
// setters - only work for built-in weapons:
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
// Can be used in weapon_fire for common weapon effects
:weapon_post(wkick:number, shift:number, shake:number)
// Adds all weapons (regular and modded) within the given area range to a list.
// Returns the number of weapons found.
:weapon_get_list(list, ?minarea:number, ?maxarea:number):
//}
//{ Projectile helpers

// Sets projectile’s team,creator
// Also adjusts position based on direction,speed if current_time_scale < 1
// (to make sure that projectiles are always on the right spot when first seen)
:projectile_init(team:id, creator:id)

// Checks if a bullet can hit the given target (team comparison)
:projectile_canhit(hitme:id):

// Checks if a swing can hit the given target (team and iframe comparison)
:projectile_canhit_melee(hitme:id):

// Checks if a non-player attack can hit the given target (team and hp; iframes for players)
:projectile_canhit_np(hitme:id):

// Deals damage to given entity, pushing it in given direction if needed.
:projectile_hit(hitme:id, damage:number, ?knockback:number, ?kb_dir:number)

// Deals damage to given entity, pushing it away from the projectile.
:projectile_hit_push(hitme:id, damage:number, knockback:number)

// Deals damage to given entity as enemy projectiles would (freeze frames for player hits).
:projectile_hit_np(hitme:id, damage:number, knockback:number, freeze_ms:number)

// Deals damage to given entity as if by global source (mutations/active/lightning/...)
// hurt_snd is 0 for no sound, 1 for regular sound, 2 for "hit by large object" sound
:projectile_hit_raw(hitme:id, damage:number, hurt_snd:int)

//}

:pickup_drop(pickupChancePercent:number, weaponChancePercent:number, ?attemptNumber:int)

//
pickup_chance_multiplier*
//{ Skill API
skill_get(skill):
skill_set(skill, value:number):
skill_get_at(index:int):
// returns an array if called without an array, otherwise returns items written to start of array
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
:collision_line_point(x1, y1, x2, y2, obj, prec, notme, ?out_struct):
:collision_line_width_first(x1, y1, x2, y2, obj, width, ?out_struct):
:alarm_run(alarm_ind):
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
zip_unzip(zip_path_in_data:string, out_path_in_data:string)
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
mod_current_path*
mod_current_dir*
