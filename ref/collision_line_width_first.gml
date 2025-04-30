function collision_line_width_first(x1, y1, x2, y2, obj, width, _out) {
	// by SpazProjects
	var o_x		 = x;
	var o_y		 = y;
	var o_mask	  = mask_index;
	var o_xscale	= image_xscale;
	var o_yscale	= image_yscale;
	var o_iangle	= image_angle;
	
	//set variables needed for hitscan
	var r			= ceil(log2(point_distance(x1, y1, x2, y2))) + 1;
	var dist		= point_distance(x1,y1,x2,y2);
	var dir			= point_direction(x1,y1,x2,y2);
		
	x = x1; 
	y = y1;
	mask_index = mskLaser;
	image_xscale = -dist/2;
	image_yscale = width/2;
	image_angle	= dir;
		
	var _inst = instance_place(x,y,obj);
	var s = -image_xscale/2;
		
	//binary search
	var r_inst, r_x, r_y;
	if _inst {
		repeat r {
			image_xscale += s - 0.5; //check scan, + 1 pixel
			_inst = instance_place(x,y,obj);
			s = (_inst ? abs(s/2) : -abs(s/2));
		}
		r_x = x + lengthdir_x(-image_xscale * 2,image_angle);
		r_y = y + lengthdir_y(-image_xscale * 2,image_angle);
		r_inst = _inst;
	} else {
		r_x = x2;
		r_y = y2;
		r_inst = noone;
	}
		
	//reset variables
	x			   = o_x;
	y			   = o_y;
	mask_index	  = o_mask;
	image_xscale	= o_xscale;
	image_yscale	= o_yscale;
	image_angle	 = o_iangle;
		
	if (_out == undefined) return { inst: r_inst, x: r_x, y: r_y };
	_out.inst = r_inst;
	_out.x = r_x;
	_out.y = r_y;
	return _out;
}