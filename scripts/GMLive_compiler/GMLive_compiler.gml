// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.

// converts AST to "instructions"!
if(live_enabled)
function gml_compile_error(l_text,l_pos){
	gml_compile_error_text=l_pos.h_to_string()+" "+l_text;
	gml_compile_error_pos=l_pos;
	return true;
}

if(live_enabled)
function gml_compile_prefix_or_postfix(l_d,l_x,l_isPrefix,l_inc,l_r,l_out){
	var l_diff=(l_inc?1:-1);
	var l__g=l_x;
	switch(l__g.__enumIndex__){
		case 40:
			var l_localInd=variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_id);
			ds_list_add(l_r,gml_action_local(l_d,l_localInd));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup(l_d));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_local_set(l_d,l_localInd));
			break;
		case 43:
			var l_s=l__g.h_id;
			ds_list_add(l_r,gml_action_global(l_d,l_s));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup(l_d));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_global_set(l_d,l_s));
			break;
		case 46:
			var l_obj=l__g.h_x;
			var l_field=l__g.h_fd;
			if(gml_compile_node(l_obj,l_r,true))return true;
			ds_list_add(l_r,gml_action_dup(l_d));
			ds_list_add(l_r,gml_action_field(l_d,l_field));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,2));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_field_set(l_d,l_field));
			break;
		case 61:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			ds_list_add(l_r,gml_action_dup2x(l_d));
			ds_list_add(l_r,gml_action_index(l_d));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,3));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_index_set(l_d));
			break;
		case 71:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			ds_list_add(l_r,gml_action_dup2x(l_d));
			ds_list_add(l_r,gml_action_index(l_d));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,3));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_index_set(l_d));
			break;
		case 76:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			ds_list_add(l_r,gml_action_dup3x(l_d));
			ds_list_add(l_r,gml_action_index2d(l_d));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,4));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_index2d_set(l_d));
			break;
		case 66:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			ds_list_add(l_r,gml_action_dup3x(l_d));
			ds_list_add(l_r,gml_action_index2d(l_d));
			if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,4));
			if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_r,gml_action_index2d_set(l_d));
			break;
		case 96:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(variable_struct_exists(gml_func_script.h_obj,"variable_struct_get")&&variable_struct_exists(gml_func_script.h_obj,"variable_struct_set")){
				ds_list_add(l_r,gml_action_dup2x(l_d));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"variable_struct_get"),2,variable_struct_get(gml_func_args.h_obj,"variable_struct_get"),variable_struct_get(gml_func_rest.h_obj,"variable_struct_get"),0,true));
				if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"variable_struct_set"),3,variable_struct_get(gml_func_args.h_obj,"variable_struct_set"),variable_struct_get(gml_func_rest.h_obj,"variable_struct_set"),0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires variable_struct_get and variable_struct_set functions.",l_d);
		case 81:
			if(gml_compile_node(l__g.h_lx,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(variable_struct_exists(gml_func_script.h_obj,"ds_list_find_value")&&variable_struct_exists(gml_func_script.h_obj,"ds_list_set")){
				ds_list_add(l_r,gml_action_dup2x(l_d));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_list_find_value"),2,variable_struct_get(gml_func_args.h_obj,"ds_list_find_value"),variable_struct_get(gml_func_rest.h_obj,"ds_list_find_value"),0,true));
				if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_list_set"),3,variable_struct_get(gml_func_args.h_obj,"ds_list_set"),variable_struct_get(gml_func_rest.h_obj,"ds_list_set"),0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_list_find_value and ds_list_set functions.",l_d);
		case 86:
			if(gml_compile_node(l__g.h_lx,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(variable_struct_exists(gml_func_script.h_obj,"ds_map_find_value")&&variable_struct_exists(gml_func_script.h_obj,"ds_map_set")){
				ds_list_add(l_r,gml_action_dup2x(l_d));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_map_find_value"),2,variable_struct_get(gml_func_args.h_obj,"ds_map_find_value"),variable_struct_get(gml_func_rest.h_obj,"ds_map_find_value"),0,true));
				if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_map_set"),3,variable_struct_get(gml_func_args.h_obj,"ds_map_set"),variable_struct_get(gml_func_rest.h_obj,"ds_map_set"),0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_map_find_value and ds_map_set functions.",l_d);
		case 91:
			if(gml_compile_node(l__g.h_lx,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			if(variable_struct_exists(gml_func_script.h_obj,"ds_grid_get")&&variable_struct_exists(gml_func_script.h_obj,"ds_grid_set")){
				ds_list_add(l_r,gml_action_dup3x(l_d));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_grid_get"),3,variable_struct_get(gml_func_args.h_obj,"ds_grid_get"),variable_struct_get(gml_func_rest.h_obj,"ds_grid_get"),0,true));
				if(l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_r,gml_action_dup_in(l_d,4));
				if(!l_isPrefix)ds_list_add(l_r,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,"ds_grid_set"),4,variable_struct_get(gml_func_args.h_obj,"ds_grid_set"),variable_struct_get(gml_func_rest.h_obj,"ds_grid_set"),0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_grid_get and ds_grid_set functions.",l_d);
		default:return gml_compile_error("Can't apply "+((l_isPrefix?"prefix":"postfix"))+((l_inc?"++":"--"))+" to "+gml_std_Type_enumConstructor(l_x),l_d);
	}
	return false;
}

if(live_enabled)
function gml_compile_node(l_q,l_r,l_out){
	var l_x,l_x2,l_w,l_i,l_k,l_l,l_n,l_p0,l_p1,l_p2,l_p3,l_pc,l_pb,l_s,l_v,l_d,l_o;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 0:if(l_out)ds_list_add(l_r,gml_action_undefined(l__g.h_d));break;
		case 1:
			var l_d1=l__g.h_d;
			var l_f=l__g.h_value;
			if(l_out)ds_list_add(l_r,gml_action_number(l_d1,l_f));
			break;
		case 2:if(l_out)ds_list_add(l_r,gml_action_cstring(l__g.h_d,l__g.h_value));break;
		case 3:if(l_out)ds_list_add(l_r,gml_action_const(l__g.h_d,l__g.h_value));break;
		case 13:ds_list_add(l_r,gml_action_self(l__g.h_d));break;
		case 14:ds_list_add(l_r,gml_action_other(l__g.h_d));break;
		case 15:ds_list_add(l_r,gml_action_number(l__g.h_d,-5));break;
		case 7:ds_list_add(l_r,gml_action_ensure_array_for_local(l__g.h_d,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_name)));break;
		case 8:ds_list_add(l_r,gml_action_ensure_array_for_global(l__g.h_d,l__g.h_name));break;
		case 9:
			if(gml_compile_node(l__g.h_obj,l_r,true))return true;
			ds_list_add(l_r,gml_action_ensure_array_for_field(l__g.h_d,l__g.h_fd));
			break;
		case 10:
			if(gml_compile_node(l__g.h_arr,l_r,true))return true;
			if(gml_compile_node(l__g.h_ind,l_r,true))return true;
			ds_list_add(l_r,gml_action_ensure_array_for_index(l__g.h_d));
			break;
		case 11:
			if(gml_compile_node(l__g.h_arr,l_r,true))return true;
			if(gml_compile_node(l__g.h_ind1,l_r,true))return true;
			if(gml_compile_node(l__g.h_ind2,l_r,true))return true;
			ds_list_add(l_r,gml_action_ensure_array_for_index2d(l__g.h_d));
			break;
		case 39:
			if(gml_compile_node(l__g.h_fd,l_r,true))return true;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_in(l__g.h_d,l__g.h_not));
			break;
		case 16:ds_list_add(l_r,gml_action_func_literal(l__g.h_d,l__g.h_ref.h_name));break;
		case 18:ds_list_add(l_r,gml_action_const(l__g.h_d,variable_struct_get(gml_const_val.h_obj,l__g.h_id)));break;
		case 17:ds_list_add(l_r,gml_action_const(l__g.h_d,l__g.h_id));break;
		case 5:
			l_w=l__g.h_values;
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,gml_action_array_decl(l__g.h_d,l_n));
			break;
		case 6:
			l_w=l__g.h_values;
			l_n=array_length(l_w);
			var l_fields=[];
			for(l_i=0;l_i<l_n;l_i++){
				l_x=l_w[l_i];
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
				var l__g1=l_x;
				var l_bindFunc;
				if(l__g1.__enumIndex__==31)l_bindFunc=true; else l_bindFunc=false;
				gml_std_gml_internal_ArrayImpl_push(l_fields,{name:l__g.h_keys[l_i],bindFunc:l_bindFunc});
			}
			ds_list_add(l_r,gml_action_object_decl(l__g.h_d,l_fields));
			break;
		case 101:
			l_x=l__g.h_value;
			if(l_x!=undefined){
				if(gml_compile_node(l_x,l_r,true))return true;
				ds_list_add(l_r,gml_action_local_set(l__g.h_d,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_name)));
			}
			break;
		case 40:ds_list_add(l_r,gml_action_local(l__g.h_d,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_id)));break;
		case 41:
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_local_set(l__g.h_d,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_id)));
			break;
		case 42:
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_local_aop(l__g.h_d,l__g.h_op,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_id)));
			break;
		case 43:ds_list_add(l_r,gml_action_global(l__g.h_d,l__g.h_id));break;
		case 44:
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_global_set(l__g.h_d,l__g.h_id));
			break;
		case 45:
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_global_aop(l__g.h_d,l__g.h_op,l__g.h_id));
			break;
		case 46:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			ds_list_add(l_r,gml_action_field(l__g.h_d,l__g.h_fd));
			break;
		case 47:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_field_set(l__g.h_d,l__g.h_fd));
			break;
		case 48:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_field_aop(l__g.h_d,l__g.h_op,l__g.h_fd));
			break;
		case 58:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i,l_r,true))return true;
			ds_list_add(l_r,gml_action_alarm(l__g.h_d));
			break;
		case 59:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_alarm_set(l__g.h_d));
			break;
		case 60:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_alarm_aop(l__g.h_d,l__g.h_op));
			break;
		case 61:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			ds_list_add(l_r,gml_action_index(l__g.h_d));
			break;
		case 71:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			ds_list_add(l_r,gml_action_index(l__g.h_d));
			break;
		case 72:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index_set(l__g.h_d));
			break;
		case 62:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index_set(l__g.h_d));
			break;
		case 73:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index_aop(l__g.h_d,l__g.h_o));
			break;
		case 63:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index_aop(l__g.h_d,l__g.h_o));
			break;
		case 66:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d(l__g.h_d));
			break;
		case 76:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d(l__g.h_d));
			break;
		case 77:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d_set(l__g.h_d));
			break;
		case 67:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d_set(l__g.h_d));
			break;
		case 68:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d_aop(l__g.h_d,l__g.h_o));
			break;
		case 78:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			if(gml_compile_node(l__g.h_i1,l_r,true))return true;
			if(gml_compile_node(l__g.h_i2,l_r,true))return true;
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_index2d_aop(l__g.h_d,l__g.h_o));
			break;
		case 49:ds_list_add(l_r,gml_action_env(l__g.h_d,variable_struct_get(gml_var_refs.h_obj,l__g.h_id)));break;
		case 50:
			var l_s1=l__g.h_id;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_env_set(l__g.h_d,variable_struct_get(gml_var_refs.h_obj,l_s1),variable_struct_get(gml_var_types.h_obj,l_s1)));
			break;
		case 51:
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_env_aop(l__g.h_d,l__g.h_op,variable_struct_get(gml_var_refs.h_obj,l__g.h_id)));
			break;
		case 55:
			if(gml_compile_node(l__g.h_k,l_r,true))return true;
			ds_list_add(l_r,gml_action_env1d(l__g.h_d,variable_struct_get(gml_var_refs.h_obj,l__g.h_id)));
			break;
		case 56:
			var l_s1=l__g.h_id;
			if(gml_compile_node(l__g.h_k,l_r,true))return true;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_env1d_set(l__g.h_d,variable_struct_get(gml_var_refs.h_obj,l_s1),variable_struct_get(gml_var_types.h_obj,l_s1)));
			break;
		case 57:
			if(gml_compile_node(l__g.h_k,l_r,true))return true;
			if(gml_compile_node(l__g.h_val,l_r,true))return true;
			ds_list_add(l_r,gml_action_env1d_aop(l__g.h_d,l__g.h_op,variable_struct_get(gml_var_refs.h_obj,l__g.h_id)));
			break;
		case 81:
			l_s="ds_list_find_value";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),2,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 82:
			l_s="ds_list_set";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),3,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 83:
			if(variable_struct_exists(gml_func_script.h_obj,"ds_list_find_value")&&variable_struct_exists(gml_func_script.h_obj,"ds_list_set")){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_ds_aop(l__g.h_d,l__g.h_o,3,variable_struct_get(gml_func_script.h_obj,"ds_list_find_value"),variable_struct_get(gml_func_script.h_obj,"ds_list_set"),l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 86:
			l_s="ds_map_find_value";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),2,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 87:
			l_s="ds_map_set";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),3,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 88:
			if(variable_struct_exists(gml_func_script.h_obj,"ds_map_find_value")&&variable_struct_exists(gml_func_script.h_obj,"ds_map_set")){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_ds_aop(l__g.h_d,l__g.h_o,3,variable_struct_get(gml_func_script.h_obj,"ds_map_find_value"),variable_struct_get(gml_func_script.h_obj,"ds_map_set"),l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 96:
			l_s="variable_struct_get";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_x,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),2,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 97:
			l_s="variable_struct_set";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_x,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),3,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 98:
			if(variable_struct_exists(gml_func_script.h_obj,"variable_struct_get")&&variable_struct_exists(gml_func_script.h_obj,"variable_struct_set")){
				if(gml_compile_node(l__g.h_x,l_r,true))return true;
				if(gml_compile_node(l__g.h_id,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_ds_aop(l__g.h_d,l__g.h_o,3,variable_struct_get(gml_func_script.h_obj,"variable_struct_get"),variable_struct_get(gml_func_script.h_obj,"variable_struct_set"),l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 91:
			l_s="ds_grid_get";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_i1,l_r,true))return true;
				if(gml_compile_node(l__g.h_i2,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),3,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 92:
			l_s="ds_grid_set";
			if(variable_struct_exists(gml_func_script.h_obj,l_s)){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_i1,l_r,true))return true;
				if(gml_compile_node(l__g.h_i2,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_call_func(l__g.h_d,variable_struct_get(gml_func_script.h_obj,l_s),4,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),0,l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 93:
			if(variable_struct_exists(gml_func_script.h_obj,"ds_grid_get")&&variable_struct_exists(gml_func_script.h_obj,"ds_grid_set")){
				if(gml_compile_node(l__g.h_lx,l_r,true))return true;
				if(gml_compile_node(l__g.h_i1,l_r,true))return true;
				if(gml_compile_node(l__g.h_i2,l_r,true))return true;
				if(gml_compile_node(l__g.h_v,l_r,true))return true;
				ds_list_add(l_r,gml_action_ds_aop(l__g.h_d,l__g.h_o,4,variable_struct_get(gml_func_script.h_obj,"ds_grid_get"),variable_struct_get(gml_func_script.h_obj,"ds_grid_set"),l_out));
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
			break;
		case 19:ds_list_add(l_r,gml_action_arg_const(l__g.h_d,l__g.h_id));break;
		case 20:
			if(gml_compile_node(l__g.h_id,l_r,true))return true;
			ds_list_add(l_r,gml_action_arg_index(l__g.h_d));
			break;
		case 21:ds_list_add(l_r,gml_action_arg_count(l__g.h_d));break;
		case 36:
			l_d=l__g.h_d;
			l_o=l__g.h_o;
			l_x=l__g.h_a;
			l_x2=l__g.h_b;
			var l__g1=l_x;
			switch(l__g1.__enumIndex__){
				case 19:
					l_i=l__g1.h_id;
					if(gml_compile_node(l_x2,l_r,true))return true;
					if(l_o!=-1)ds_list_add(l_r,gml_action_arg_const_aop(l_d,l_o,l_i)); else ds_list_add(l_r,gml_action_arg_const_set(l_d,l_i));
					break;
				case 20:
					if(gml_compile_node(l__g1.h_id,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					if(l_o!=-1)ds_list_add(l_r,gml_action_arg_index_aop(l_d,l_o)); else ds_list_add(l_r,gml_action_arg_index_set(l_d));
					break;
				default:return gml_compile_error("Cannot set "+gml_std_Type_enumConstructor(l_x),l_d);
			}
			break;
		case 35:
			l_d=l__g.h_d;
			l_o=l__g.h_o;
			l_x=l__g.h_a;
			l_x2=l__g.h_b;
			switch(l_o){
				case 18:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,gml_action_concat(l_d));
					break;
				case 64:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,gml_action_equ_op(l_d));
					break;
				case 65:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,gml_action_neq_op(l_d));
					break;
				case 80:
					if(gml_compile_node(l_x,l_r,true))return true;
					l_p0=ds_list_size(l_r);
					ds_list_add(l_r,gml_action_bool_and(l_d,0));
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_set(l_r,l_p0,gml_action_bool_and(l_d,ds_list_size(l_r)));
					break;
				case 96:
					if(gml_compile_node(l_x,l_r,true))return true;
					l_p0=ds_list_size(l_r);
					ds_list_add(l_r,gml_action_bool_or(l_d,0));
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_set(l_r,l_p0,gml_action_bool_or(l_d,ds_list_size(l_r)));
					break;
				default:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,gml_action_bin_op(l_d,l_o));
			}
			break;
		case 34:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			ds_list_add(l_r,gml_action_un_op(l__g.h_d,l__g.h_o));
			break;
		case 32:gml_compile_prefix_or_postfix(l__g.h_d,l__g.h_x,true,l__g.h_inc,l_r,l_out);break;
		case 33:gml_compile_prefix_or_postfix(l__g.h_d,l__g.h_x,false,l__g.h_inc,l_r,l_out);break;
		case 23:
			l_d=l__g.h_d;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,gml_action_call_script(l_d,variable_struct_get(gml_compile_curr_program.h_script_map.h_obj,l__g.h_name),l_n));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 25:
			l_d=l__g.h_d;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			if(gml_compile_node(l__g.h_index,l_r,true))return true;
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,gml_action_call_script_id(l_d,l_n));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 29:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				gml_compile_node(l_w[l_i],l_r,true);
			}
			ds_list_add(l_r,gml_action_call_field(l_d,l__g.h_s,l_n));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 27:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_inst,l_r,true))return true;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				gml_compile_node(l_w[l_i],l_r,true);
			}
			ds_list_add(l_r,gml_action_call_field(l_d,l__g.h_prop,l_n));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 30:
			l_d=l__g.h_d;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			if(gml_compile_node(l__g.h_ctr,l_r,true))return true;
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,gml_action_construct(l_d,l_n));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 26:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_index,l_r,true))return true;
			if(gml_compile_node(l__g.h_array,l_r,true))return true;
			ds_list_add(l_r,gml_action_call_script_with_array(l_d));
			if(l_out)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 24:
			l_d=l__g.h_d;
			return gml_compile_error("dot-calls are currently not supported.",l_d);
		case 28:
			var l__d=l__g.h_d;
			l_s=l__g.h_funcName;
			l_d=l__d;
			l_w=l__g.h_args;
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			if(variable_struct_get(gml_func_script.h_obj,l_s)==-1)return gml_compile_error("Function `"+l_s+"` is pointing at an invalid script.",l__d);
			l_i=variable_struct_get(gml_inst_data.h_obj,l_s);
			ds_list_add(l_r,gml_action_call_func(l_d,variable_struct_get(gml_func_script.h_obj,l_s),l_n,variable_struct_get(gml_func_args.h_obj,l_s),variable_struct_get(gml_func_rest.h_obj,l_s),l_i,l_out&&l_i!=-5));
			if(l_out&&l_i==-5)ds_list_add(l_r,gml_action_result(l_d));
			break;
		case 31:ds_list_add(l_r,gml_action_func_literal(l__g.h_d,l__g.h_name));break;
		case 102:
			l_w=l__g.h_nodes;
			l_n=array_length(l_w);
			if(l_n>0){
				l_n--;
				for(l_i=0;l_i<l_n;l_i++){
					if(gml_compile_node(l_w[l_i],l_r,false))return true;
				}
				if(gml_compile_node(l_w[l_i],l_r,l_out))return true;
			}
			break;
		case 103:
			l_d=l__g.h_d;
			l_x=l__g.h_not;
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			l_i=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_jump_unless(l_d,0));
			if(gml_compile_node(l__g.h_then,l_r,false))return true;
			if(l_x!=undefined){
				l_n=ds_list_size(l_r);
				ds_list_add(l_r,gml_action_jump(l_d,0));
				ds_list_set(l_r,l_i,gml_action_jump_unless(l_d,ds_list_size(l_r)));
				if(gml_compile_node(l_x,l_r,false))return true;
				ds_list_set(l_r,l_n,gml_action_jump(l_d,ds_list_size(l_r)));
			} else ds_list_set(l_r,l_i,gml_action_jump_unless(l_d,ds_list_size(l_r)));
			break;
		case 104:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			l_i=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_jump_unless(l_d,0));
			if(gml_compile_node(l__g.h_then,l_r,l_out))return true;
			l_n=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_jump(l_d,0));
			ds_list_set(l_r,l_i,gml_action_jump_unless(l_d,ds_list_size(l_r)));
			if(gml_compile_node(l__g.h_not,l_r,l_out))return true;
			ds_list_set(l_r,l_n,gml_action_jump(l_d,ds_list_size(l_r)));
			break;
		case 111:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_times,l_r,true))return true;
			l_n=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_repeat_pre(l_d,0));
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_repeat_jump(l_d,l_p0));
			l_p2=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_discard(l_d));
			for(l_k=l_p0;l_k<l_p2;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p1));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p2));break;
				}
			}
			ds_list_set(l_r,l_n,gml_action_repeat_pre(l_d,ds_list_size(l_r)));
			break;
		case 108:
			l_d=l__g.h_d;
			l_p0=ds_list_size(l_r);
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_jump_unless(l_d,0));
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			ds_list_add(l_r,gml_action_jump(l_d,l_p0));
			l_p2=ds_list_size(l_r);
			ds_list_set(l_r,l_p1,gml_action_jump_unless(l_d,l_p2));
			for(l_k=l_p1;l_k<l_p2;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p0));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p2));break;
				}
			}
			break;
		case 110:
			l_d=l__g.h_d;
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			var l__g1=l_q;
			var l_tmp;
			if(l__g1.__enumIndex__==109)l_tmp=true; else l_tmp=false;
			if(l_tmp)ds_list_add(l_r,gml_action_jump_unless(l_d,l_p0)); else ds_list_add(l_r,gml_action_jump_if(l_d,l_p0));
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p1));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p2));break;
				}
			}
			break;
		case 109:
			l_d=l__g.h_d;
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			var l__g1=l_q;
			var l_tmp;
			if(l__g1.__enumIndex__==109)l_tmp=true; else l_tmp=false;
			if(l_tmp)ds_list_add(l_r,gml_action_jump_unless(l_d,l_p0)); else ds_list_add(l_r,gml_action_jump_if(l_d,l_p0));
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p1));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p2));break;
				}
			}
			break;
		case 112:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_pre,l_r,false))return true;
			l_p0=ds_list_size(l_r);
			if(gml_compile_node(l__g.h_cond,l_r,true))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_jump_unless(l_d,0));
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_loop,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p2=ds_list_size(l_r);
			if(gml_compile_node(l__g.h_post,l_r,false))return true;
			ds_list_add(l_r,gml_action_jump(l_d,l_p0));
			l_p3=ds_list_size(l_r);
			ds_list_set(l_r,l_p1,gml_action_jump_unless(l_d,l_p3));
			for(l_k=l_p1;l_k<l_p2;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p2));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p3));break;
				}
			}
			break;
		case 105:
			var l__cc=l__g.h_list;
			l_d=l__g.h_d;
			var l_jt=ds_map_create();
			if(gml_compile_node(l__g.h_expr,l_r,true))return true;
			l_p0=ds_list_size(l_r);
			l_n=array_length(l__cc);
			for(l_i=0;l_i<l_n;l_i++){
				var l__cv=l__cc[l_i].values;
				l_l=array_length(l__cv);
				for(l_k=0;l_k<l_l;l_k++){
					if(!gml_node_tools_has_value(l__cv[l_k]))break;
				}
				if(l_k<l_l)break;
			}
			if(l_i<l_n){
				var l_caseLabels=[];
				l_pb=gml_compile_curr_break;
				gml_compile_curr_break=l_p0;
				for(l_i=0;l_i<l_n;l_i++){
					var l__cv=l__cc[l_i].values;
					l_l=array_length(l__cv);
					var l_cl1=[];
					for(l_k=0;l_k<l_l;l_k++){
						if(gml_compile_node(l__cv[l_k],l_r,true))return true;
						l_cl1[@l_k]=ds_list_size(l_r);
						ds_list_add(l_r,gml_action_switch_case(l_d,0));
					}
					l_caseLabels[@l_i]=l_cl1;
				}
				ds_list_add(l_r,gml_action_discard(l_d));
				var l_defCasePos=ds_list_size(l_r);
				ds_list_add(l_r,gml_action_jump(l_d,0));
				for(l_i=0;l_i<l_n;l_i++){
					var l_cl1=l_caseLabels[l_i];
					l_l=array_length(l_cl1);
					for(l_k=0;l_k<l_l;l_k++){
						ds_list_set(l_r,l_cl1[l_k],gml_action_switch_case(l_d,ds_list_size(l_r)));
					}
					if(gml_compile_node(l__cc[l_i].expr,l_r,false))return true;
				}
				ds_list_set(l_r,l_defCasePos,gml_action_jump(l_d,ds_list_size(l_r)));
				l_x=l__g.h_def;
				if(l_x!=undefined&&gml_compile_node(l_x,l_r,false))return true;
				gml_compile_curr_break=l_pb;
			} else {
				ds_list_add(l_r,gml_action_switch(l_d,l_jt,0));
				l_pb=gml_compile_curr_break;
				gml_compile_curr_break=l_p0;
				l_n=array_length(l__cc);
				for(l_i=0;l_i<l_n;l_i++){
					var l__cv=l__cc[l_i].values;
					l_l=array_length(l__cv);
					for(l_k=0;l_k<l_l;l_k++){
						var l_v=gml_node_tools_to_value(l__cv[l_k]);
						ds_map_set(l_jt,l_v[0],ds_list_size(l_r));
					}
					if(gml_compile_node(l__cc[l_i].expr,l_r,false))return true;
				}
				l_p1=ds_list_size(l_r);
				l_x=l__g.h_def;
				if(l_x!=undefined&&gml_compile_node(l_x,l_r,false))return true;
				gml_compile_curr_break=l_pb;
				ds_list_set(l_r,l_p0,gml_action_switch(l_d,l_jt,l_p1));
			}
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p2;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				if(l__g1.__enumIndex__==68){
					var l_d1=l__g1.h_d;
					if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l_d1,l_p2));
				}
			}
			break;
		case 113:
			l_d=l__g.h_d;
			if(gml_compile_node(l__g.h_ctx,l_r,true))return true;
			ds_list_add(l_r,gml_action_with_pre(l_d));
			l_p0=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_with_next(l_d,0));
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			ds_list_add(l_r,gml_action_jump(l_d,l_p0));
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_with_post(l_d));
			ds_list_set(l_r,l_p0,gml_action_with_next(l_d,l_p1));
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=ds_list_find_value(l_r,l_k);
				switch(l__g1.__enumIndex__){
					case 69:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p0));break;
					case 68:if(l__g1.h_lp==l_p0)ds_list_set(l_r,l_k,gml_action_jump(l__g1.h_d,l_p1));break;
				}
			}
			break;
		case 120:
			l_d=l__g.h_d;
			l_p0=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_try(l_d,0));
			if(gml_compile_node(l__g.h_node,l_r,false))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,gml_action_finally(l_d,0));
			ds_list_set(l_r,l_p0,gml_action_try(l_d,ds_list_size(l_r)));
			ds_list_add(l_r,gml_action_catch(l_d,variable_struct_get(gml_compile_curr_script.h_local_map.h_obj,l__g.h_cap)));
			if(gml_compile_node(l__g.h_cat,l_r,false))return true;
			ds_list_set(l_r,l_p1,gml_action_finally(l_d,ds_list_size(l_r)));
			break;
		case 121:
			if(gml_compile_node(l__g.h_x,l_r,true))return true;
			ds_list_add(l_r,gml_action_throw(l__g.h_d));
			break;
		case 117:
			l_d=l__g.h_d;
			l_i=gml_compile_curr_break;
			if(l_i>=0)ds_list_add(l_r,gml_action_break(l_d,l_i)); else return gml_compile_error("Cannot `break` here",l_d);
			break;
		case 118:
			l_d=l__g.h_d;
			l_i=gml_compile_curr_continue;
			if(l_i>=0)ds_list_add(l_r,gml_action_continue(l_d,l_i)); else return gml_compile_error("Cannot `continue` here",l_d);
			break;
		case 115:
			if(gml_compile_node(l__g.h_v,l_r,true))return true;
			ds_list_add(l_r,gml_action_return(l__g.h_d));
			break;
		case 116:
			l_d=l__g.h_d;
			ds_list_add(l_r,gml_action_number(l_d,0));
			ds_list_add(l_r,gml_action_return(l_d));
			break;
		case 106:
			if(gml_compile_node(l__g.h_time,l_r,true))return true;
			ds_list_add(l_r,gml_action_wait(l__g.h_d));
			break;
		case 107:ds_list_add(l_r,gml_action_fork(l__g.h_d,l_out));break;
		default:return gml_compile_error("Cannot compile "+gml_std_Type_enumConstructor(l_q),gml_std_haxe_enum_tools_getParameter(l_q,0));
	}
	return false;
}

if(live_enabled)
function gml_compile_script(l_q){
	var l_r=ds_list_create();
	l_q.h_actions=l_r;
	gml_compile_curr_script=l_q;
	gml_compile_curr_break=-1;
	gml_compile_curr_continue=-1;
	var l_e=gml_compile_node(l_q.h_node,l_r,false);
	gml_compile_curr_script=undefined;
	return l_e;
}

if(live_enabled)
function gml_compile_program(l_p){
	gml_compile_curr_program=l_p;
	var l_arr=l_p.h_script_array;
	var l_i;
	var l_num=array_length(l_arr);
	for(l_i=0;l_i<l_num;l_i++){
		if(gml_compile_script(l_arr[l_i]))break;
	}
	gml_compile_curr_program=undefined;
	return l_i<l_num;
}
