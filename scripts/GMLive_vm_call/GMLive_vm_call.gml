// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.

if(live_enabled)
function vm_group_call_check_func_args(l_th,l_act,l_argChecks,l_restCheck,l_array1,l_arrOffset,l_argc){
	var l_argChecks_len=array_length(l_argChecks);
	var l_i=0;
	for(var l__g1=l_argc;l_i<l__g1;l_i++){
		var l_err,l_ac;
		if(l_i<l_argChecks_len){
			l_ac=l_argChecks[l_i];
			l_err=l_ac(l_array1[l_arrOffset+l_i]);
		} else l_err=l_restCheck(l_array1[l_arrOffset+l_i]);
		if(l_err!="")return l_th.h_proc_error(l_err,l_act);
	}
	return true;
}

if(live_enabled)
function vm_group_call_call_func(l_th,l_act,l_func,l_instFlags,l_array1,l_arrOffset,l_argc){
	var l_inst=l_th.h_scope.h_inst;
	var l_v1=undefined;
	var l_notFound;
	var l_status=gml_thread_proc_result_ok;
	var l_qn0,l_qn1;
	switch(l_instFlags){
		case 3:
			l_qn0=l_inst[l_inst[0]];
			l_qn1=l_inst[l_inst[0]-1];
			l_notFound=true;
			with (l_qn1) {
				with (l_qn0) {
					var l_sf;
					if(l_argc<81){
						l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
						l_v1=l_sf(l_func,l_array1,l_arrOffset);
					} else l_v1=vm_gml_thread_exec_slice_error();
					l_notFound=false;
					break;
				}
				break;
			}
			if(l_notFound)return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case 2:
			l_qn0=l_inst[l_inst[0]];
			l_qn1=l_inst[l_inst[0]-1];
			l_notFound=true;
			with (l_qn1) {
				with (l_qn0) {
					var l_sf;
					if(l_argc<81){
						l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
						l_v1=l_sf(l_func,l_array1,l_arrOffset);
					} else l_v1=vm_gml_thread_exec_slice_error();
					l_notFound=false;
					break;
				}
				break;
			}
			if(l_notFound)return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case 1:
			l_qn0=l_inst[l_inst[0]];
			l_notFound=true;
			with (l_qn0) {
				var l_sf;
				if(l_argc<81){
					l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
					l_v1=l_sf(l_func,l_array1,l_arrOffset);
				} else l_v1=vm_gml_thread_exec_slice_error();
				l_notFound=false;
				break;
			}
			if(l_notFound)return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case -5:
			l_th.h_result=undefined;
			l_status=l_func(l_array1,l_arrOffset,l_argc);
			break;
		case -6:
			l_notFound=true;
			with (l_inst[l_inst[0]]) {
				if(l_argc<81)l_v1=vm_impl_gml_thread_construct_funcs[l_argc](l_func,l_array1,l_arrOffset); else l_v1=vm_impl_gml_thread_construct_error();
				l_notFound=false;
			}
			if(l_notFound){
				if(l_argc<81)l_v1=vm_impl_gml_thread_construct_funcs[l_argc](l_func,l_array1,l_arrOffset); else l_v1=vm_impl_gml_thread_construct_error();
			}
			break;
		default:
			var l_sf;
			if(l_argc<81){
				l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
				l_v1=l_sf(l_func,l_array1,l_arrOffset);
			} else l_v1=vm_gml_thread_exec_slice_error();
	}
	if(l_th.h_status!=gml_thread_status_error){
		vm_group_call_call_func_result=l_v1;
		vm_group_call_call_func_status=l_status;
		return true;
	} else return false;
}

if(live_enabled)
function vm_group_call_call_value(l_th,l_act,l_v1,l_argArray,l_argOffset,l_n){
	if(is_method(l_v1)){
		if(vm_group_call_call_func(l_th,l_act,l_v1,3,l_argArray,l_argOffset,l_n)){
			l_th.h_result=vm_group_call_call_func_result;
			return vm_group_call_call_func_status;
		} else return gml_thread_proc_result_error;
	} else if(is_numeric(l_v1)){
		if(script_exists(l_v1)){
			if(vm_group_call_call_func(l_th,l_act,l_v1,3,l_argArray,l_argOffset,l_n)){
				l_th.h_result=vm_group_call_call_func_result;
				return vm_group_call_call_func_status;
			} else return gml_thread_proc_result_error;
		} else return l_th.h_proc_error2("Trying to call invalid script index "+gml_value_print(l_v1),l_act);
	} else return l_th.h_proc_error2("Script index must be a number, got "+gml_value_dump(l_v1),l_act);
}

if(live_enabled)
function vm_group_call_on_call_script(l_th,l_act){
	var l_scr=l_act.h_script;
	var l_n=l_act.h_argc;
	var l_q=l_th.h_scope;
	var l_st=l_q.h_stack;
	var l_arr=[];
	var l_k=l_st[0]-l_n;
	array_copy(l_arr,0,l_st,l_k+1,l_n);
	array_copy(l_st,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_st[@0]=l_k;
	var l_args1=l_arr;
	gml_value_list_pad_to_size_with_null(l_args1,l_scr.h_arguments);
	var l_inst=l_q.h_inst;
	var l_nq=new gml_thread_scope(l_scr.h_actions,0,l_args1,array_create(l_scr.h_locals),l_inst[l_inst[0]],l_inst[l_inst[0]-1],l_q);
	l_nq.h_program=l_q.h_program;
	l_th.h_scope=l_nq;
	return gml_thread_proc_result_sync_scope;
}

if(live_enabled)
function vm_group_call_on_call_script_id(l_th,l_act){
	var l_n=l_act.h_argc;
	var l_stack=l_th.h_scope.h_stack;
	var l_r=vm_group_call_call_value(l_th,l_act,l_stack[l_stack[0]-l_n],l_stack,(l_stack[0]-l_n+1),l_n);
	gml_stack_discard_multi(l_stack,l_n+1);
	return l_r;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_field(l_th,l_act){
	var l_s=l_act.h_field;
	var l_n=l_act.h_argc;
	var l_q=l_th.h_scope;
	var l_stack=l_q.h_stack;
	var l_ctx=l_stack[l_stack[0]-l_n];
	var l_argOffset=l_stack[0]-l_n+1;
	var l_val=undefined;
	var l_notFound=true;
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		l_val=variable_instance_get(l_ctx,l_s);
		if(l_val!=undefined||variable_instance_exists(l_ctx,l_s)){
			l_notFound=false;
		} else if(variable_instance_exists(l_ctx,"id")){
			return l_th.h_proc_error2("`"+gml_std_Std_stringify(l_ctx)+"` ("+object_get_name(l_ctx.object_index)+") does not have a variable `"+l_s+"`",l_act);
		}
	} else with (l_ctx) {
		l_val=variable_instance_get(self,l_s);
		if(l_val!=undefined||variable_instance_exists(self,l_s)){
			l_notFound=false;
			break;
		} else return l_th.h_proc_error2("`"+gml_std_Std_stringify(self)+"` ("+object_get_name(self.object_index)+") does not have a variable `"+l_s+"`",l_act);
	}
	if(l_notFound){
		if(is_numeric(l_ctx)&&object_exists(l_ctx))return l_th.h_proc_error2("Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return l_th.h_proc_error2("Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	}
	if(is_method(l_val)){
		if(method_get_self(l_val)==undefined)l_val=method(l_ctx,l_val);
		var l_this1=l_q.h_inst;
		var l_me=l_this1[l_this1[0]];
		with (l_me) {
			var l_tmp;
			try{
				var l_r=vm_group_call_call_value(l_th,l_act,l_val,l_stack,l_argOffset,l_n);
				gml_stack_discard_multi(l_stack,l_n+1);
				l_tmp=l_r;
			}catch(l__g){
				var l_x=gml_std_haxe_Exception_caught(l__g).h_native;
				gml_stack_discard_multi(l_stack,l_n+1);
				l_tmp=l_th.h_proc_error2(l_x,l_act);
			}
			return l_tmp;
		}
	}
	var l_tmp;
	try{
		var l_r=vm_group_call_call_value(l_th,l_act,l_val,l_stack,l_argOffset,l_n);
		gml_stack_discard_multi(l_stack,l_n+1);
		l_tmp=l_r;
	}catch(l__g){
		var l_x=gml_std_haxe_Exception_caught(l__g).h_native;
		gml_stack_discard_multi(l_stack,l_n+1);
		l_tmp=l_th.h_proc_error2(l_x,l_act);
	}
	return l_tmp;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_construct(l_th,l_act){
	var l__argc=l_act.h_argc;
	var l_args1=gml_stack_pop_multi(l_th.h_scope.h_stack,l__argc+1);
	var l_v1=l_args1[0];
	if(is_numeric(l_v1)){
		if(!script_exists((l_v1|0)))return l_th.h_proc_error2(gml_value_print(l_v1)+" is not a valid script index.",l_act);
	} else if(!is_method(l_v1)){
		return l_th.h_proc_error2(gml_value_print(l_v1)+" ("+gml_value_get_type(l_v1)+") is not a callable type.",l_act);
	}
	if(vm_group_call_call_func(l_th,l_act,l_v1,-6,l_args1,1,l__argc)){
		l_th.h_result=vm_group_call_call_func_result;
		return vm_group_call_call_func_status;
	} else return gml_thread_proc_result_error;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_script_with_array(l_th,l_act){
	var l_stack=l_th.h_scope.h_stack;
	var l_v1,l_arr;
	var l_z=l_stack[0]-1;
	l_stack[@0]=(l_z-1);
	l_v1=l_stack[l_z];
	l_arr=l_stack[l_z+1];
	l_stack[@l_z]=0;
	l_stack[@l_z+1]=0;
	if(is_array(l_arr))return vm_group_call_call_value(l_th,l_act,l_v1,l_arr,0,array_length(l_arr)); else return l_th.h_proc_error2("Expected an array with arguments, got "+gml_value_dump(l_arr),l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_func(l_th,l_act){
	var l__func=l_act.h_func;
	var l__argc=l_act.h_argc;
	var l__argChecks=l_act.h_args;
	var l__restCheck=l_act.h_rest;
	var l__inst=l_act.h_inst;
	var l__out=l_act.h_out;
	var l_stack=l_th.h_scope.h_stack;
	var l_k=l_stack[0]-l__argc;
	l_stack[@0]=l_k;
	l_k++;
	if(vm_group_call_check_func_args(l_th,l_act,l__argChecks,l__restCheck,l_stack,l_k,l__argc)&&vm_group_call_call_func(l_th,l_act,l__func,l__inst,l_stack,l_k,l__argc)){
		if(l__out){
			var l_i=l_stack[0]+1;
			if(l_i>=array_length(l_stack))l_stack[@array_length(l_stack)*2]=0;
			l_stack[@l_i]=vm_group_call_call_func_result;
			l_stack[@0]=l_i;
		}
		return vm_group_call_call_func_status;
	} else return gml_thread_proc_result_error;
	return gml_thread_proc_result_ok;
}

function live_method(l_newSelf,l_func){
	if(live_enabled){
		if(is_method(l_func)){
			var l_meta=method_get_self(l_func);
			if(is_struct(l_meta)&&variable_struct_exists(l_meta,"live:self")){
				var l_nmeta=haxe__dynamic_access_dynamic_access_impl__copy(l_meta);
				variable_struct_set(l_nmeta,"live:self",l_newSelf);
				return method(l_nmeta,l_func);
			}
		}
		return method(l_newSelf,l_func);
	}else return undefined;
}

function live_method_get_self(l_func){
	if(live_enabled){
		var l_fnSelf=method_get_self(l_func);
		if(is_struct(l_fnSelf)&&variable_struct_exists(l_fnSelf,"live:self"))return variable_struct_get(l_fnSelf,"live:self");
		return l_fnSelf;
	}else return undefined;
}

if(live_enabled)
function vm_group_call_on_func_literal_lf(){
	if(false)show_debug_message(argument[argument_count-1]);
	var l_meta=self;
	var l_ctx=variable_struct_get(l_meta,"live:context");
	var l_pg;
	if(l_ctx!=undefined){
		var l_livedata=variable_struct_get(live_live_map.h_obj,l_ctx);
		if(l_livedata==undefined)throw gml_std_haxe_Exception_thrown("Trying to call a nonexistent GMLive program: "+l_ctx);
		l_pg=l_livedata[0];
		if(l_pg==undefined){
			live_log("Trying to call a broken GMLive program "+l_ctx+", returning undefined",2);
			return undefined;
		}
	} else {
		l_pg=variable_struct_get(l_meta,"live:program");
		if(l_pg==undefined)throw gml_std_haxe_Exception_thrown("It would appear that you've re-bound a GMLive function to a different scope. Please use live_method() rather than method() to do so.");
	}
	var l_argc=argument_count;
	var l_args1=array_create(l_argc);
	var l_i=0;
	for(var l__g1=l_argc;l_i<l__g1;l_i++){
		l_args1[@l_i]=argument[l_i];
	}
	live_custom_self=variable_struct_get(l_meta,"live:self");
	live_custom_other=other;
	var l_th=l_pg.h_call_v(variable_struct_get(l_meta,"live:function"),l_args1,false);
	if(l_th==undefined)return undefined;
	if(l_th.h_status==gml_thread_status_done){
		return l_th.h_result;
	} else if(l_th.h_status==gml_thread_status_error){
		live_log("Runtime error: "+l_th.h_get_error(),2);
		return undefined;
	} else return undefined;
}

if(live_enabled)
function vm_group_call_on_func_literal(l_th,l_act){
	var l_q=l_th.h_scope;
	var l_meta={}
	var l_this1=l_q.h_inst;
	var l_funcSelf=l_this1[l_this1[0]];
	if(!is_struct(l_funcSelf)&&instanceof(l_funcSelf)=="instance")l_funcSelf=l_funcSelf.id;
	variable_struct_set(l_meta,"live:self",l_funcSelf);
	if(l_th.h_scope.h_program.h_live_ident!=undefined)variable_struct_set(l_meta,"live:context",l_th.h_scope.h_program.h_live_ident); else variable_struct_set(l_meta,"live:program",l_th.h_scope.h_program);
	variable_struct_set(l_meta,"live:function",l_act.h_name);
	gml_stack_push(l_q.h_stack,method(l_meta,vm_group_call_on_func_literal_lf));
	return gml_thread_proc_result_ok;
}
