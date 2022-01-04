// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.

// More of a coroutine really
if(live_enabled)
function gml_thread(l_program,l_actions,l_args1,l_locals,l_self1,l_other1,l_offset)constructor{
	static h_result=undefined; /// @is {any}
	static h_status=undefined; /// @is {gml_thread_status}
	static h_callback=undefined; /// @is {function<gml_thread; void>}
	static h_scope=undefined; /// @is {gml_thread_scope}
	static h_wait_time=undefined; /// @is {number}
	static h_time_tag=undefined; /// @is {vm_GmlThreadTimeTag}
	static h_error_text=undefined; /// @is {string}
	static h_error_pos=undefined; /// @is {gml_pos}
	static h_get_error=function(){
		return self.h_error_text;
	}
	static h_get_error_ptr=function(){
		if(self.h_error_pos!=undefined)return self.h_error_pos.h_to_string(); else return "?";
	}
	static h_get_callstack=function(){
		var l_q=self.h_scope;
		var l_n=0;
		for(var l_qn=l_q;l_qn!=undefined;l_qn=l_qn.h_next){
			l_n++;
		}
		var l_arr=array_create(l_n);
		var l_i=0;
		for(var l__g1=l_n;l_i<l__g1;l_i++){
			var l_p=l_q.h_offset-1;
			l_arr[@l_i]=gml_std_haxe_enum_tools_getParameter(ds_list_find_value(l_q.h_actions,(l_p>0?l_p-1:0)),0).h_to_string();
			l_q=l_q.h_next;
		}
		return l_arr;
	}
	static h_stack_error=function(l_pos,l_e){
		var l_text;
		if(is_struct(l_e)&&variable_struct_exists(l_e,"stacktrace")){
			l_text=(variable_struct_exists(l_e,"message")?string(l_e.message):"(error without a message?)");
			var l_st=l_e.stacktrace;
			var l_i=0;
			for(var l__g1=array_length(l_st);l_i<l__g1;l_i++){
				var l_js=l_st[l_i];
				if(is_string(l_js)){
					if(gml_std_StringTools_startsWith(l_js,"gml_Script_vm_group_")){
						l_text+="\n called from vm:"+gml_std_string_substring(l_js,string_length("gml_Script_vm_group_"));
					} else if(gml_std_StringTools_startsWith(l_js,"gml_Script_")||gml_std_StringTools_startsWith(l_js,"gml_Object_")){
						l_text+="\n called from game:"+gml_std_string_substring(l_js,string_length("gml_Script_"));
					} else l_text+="\n called from "+l_js;
				} else l_text+="\n called from "+string(l_js);
			}
		} else l_text=gml_std_Std_stringify(l_e);
		var l_s="[error] "+l_text+"\n called from "+l_pos.h_to_string();
		var l_q=self.h_scope;
		if(l_q!=undefined)for(l_q=self.h_scope.h_next;l_q!=undefined;l_q=l_q.h_next){
			var l_p=l_q.h_offset;
			l_s+="\n called from "+gml_std_haxe_enum_tools_getParameter(ds_list_find_value(l_q.h_actions,(l_p>0?l_p-1:0)),0).h_to_string();
		}
		return l_s;
	}
	static h_proc_error=function(l_text,l_act){
		var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
		self.h_error_text=self.h_stack_error(l_pos,l_text);
		self.h_error_pos=l_pos;
		self.h_status=gml_thread_status_error;
		return false;
	}
	static h_proc_error2=function(l_e,l_act){
		var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
		self.h_error_text=self.h_stack_error(l_pos,l_e);
		self.h_error_pos=l_pos;
		self.h_status=gml_thread_status_error;
		return gml_thread_proc_result_error;
	}
	static h_exec=function(){
		var l__gthis=self;
		var l_previous=gml_thread_current;
		gml_thread_current=self;
		var l_stack;
		var l_scope=self.h_scope;
		var l_actions,l_pos,l_len;
		l_actions=l_scope.h_actions;
		l_len=ds_list_size(l_actions);
		l_stack=l_scope.h_stack;
		var l_allowExceptions=gml_thread_allow_exceptions;
		var l_handler,l__callback;
		self.h_status=gml_thread_status_running;
		while(true){
			var l_proc,l_act;
			while(l_scope.h_offset<l_len){
				var l_pos=l_scope.h_offset;
				l_act=ds_list_find_value(l_actions,l_pos);
				l_scope.h_offset=l_pos+1;
				if(l_allowExceptions){
					l_handler=vm_v2_gml_thread_v2_handlers[l_act.__enumIndex__];
					var l_ar=l_handler(l__gthis,l_act);
					if(l_ar==gml_thread_proc_result_error||l__gthis.h_status==gml_thread_status_error){
						break;
					} else if(l_ar==gml_thread_proc_result_sync_scope){
						l_scope=l__gthis.h_scope;
						l_actions=l_scope.h_actions;
						l_len=ds_list_size(l_actions);
						l_stack=l_scope.h_stack;
					}
				} else try{
					l_handler=vm_v2_gml_thread_v2_handlers[l_act.__enumIndex__];
					var l_ar1=l_handler(l__gthis,l_act);
					if(l_ar1==gml_thread_proc_result_error||l__gthis.h_status==gml_thread_status_error){
						break;
					} else if(l_ar1==gml_thread_proc_result_sync_scope){
						l_scope=l__gthis.h_scope;
						l_actions=l_scope.h_actions;
						l_len=ds_list_size(l_actions);
						l_stack=l_scope.h_stack;
					}
				}catch(l__g){
					self.h_proc_error(gml_std_haxe_Exception_caught(l__g).h_native,l_act);
					break;
				}
			}
			if(self.h_status==gml_thread_status_error){
				l_proc=false;
				while(l_scope!=undefined){
					if(l_scope.h_xhdl!=undefined){
						l_scope.h_offset=l_scope.h_xhdl.h_value;
						self.h_status=gml_thread_status_running;
						break;
					} else {
						l_scope=l_scope.h_next;
						l_proc=true;
					}
				}
				if(l_scope==undefined){
					self.h_result=undefined;
					l__callback=self.h_callback;
					if(l__callback!=undefined)l__callback(self);
					break;
				} else if(l_proc){
					if(l_scope.h_with!=undefined)gml_with_scope_destroy(l_scope.h_with);
					l_actions=l_scope.h_actions;
					l_len=ds_list_size(l_actions);
					l_stack=l_scope.h_stack;
				}
			} else if(l_scope.h_offset>=l_len&&self.h_status==gml_thread_status_running){
				if(l_scope.h_with!=undefined)gml_with_scope_destroy(l_scope.h_with);
				if(l_stack[0]>0)self.h_result=l_stack[l_stack[0]]; else self.h_result=0;
				l_scope=l_scope.h_next;
				if(l_scope!=undefined){
					self.h_scope=l_scope;
					l_actions=l_scope.h_actions;
					l_len=ds_list_size(l_actions);
					l_stack=l_scope.h_stack;
				} else {
					self.h_status=gml_thread_status_done;
					l__callback=self.h_callback;
					if(l__callback!=undefined)l__callback(self);
					break;
				}
			} else break;
		}
		self.h_scope=l_scope;
		gml_thread_current=l_previous;
	}
	static h_fork=function(){
		var l_q=self.h_scope;
		var l_q_inst=l_q.h_inst;
		var l_r=new gml_thread(l_q.h_program,l_q.h_actions,gml_value_list_copy(l_q.h_args),gml_value_list_copy(l_q.h_locals),l_q_inst[l_q_inst[0]],l_q_inst[l_q_inst[0]-1],l_q.h_offset);
		l_r.h_callback=self.h_callback;
		var l_n=l_r.h_scope;
		l_n.h_inst=gml_std_gml_internal_ArrayImpl_copy(l_q_inst);
		l_n.h_stack=gml_std_gml_internal_ArrayImpl_copy(l_q.h_stack);
		l_n.h_with=gml_with_scope_copy(l_q.h_with);
		return l_r;
	}
	if(l_offset==undefined)l_offset=0;
	if(false)show_debug_message(argument[6]);
	self.h_error_pos=undefined;
	self.h_error_text=undefined;
	self.h_time_tag=undefined;
	self.h_callback=undefined;
	self.h_status=gml_thread_status_none;
	self.h_result=undefined;
	if(l_self1==undefined)l_self1=live_custom_self;
	if(l_other1==undefined)l_other1=live_custom_other;
	self.h_scope=new gml_thread_scope(l_actions,l_offset,l_args1,l_locals,l_self1,l_other1,undefined);
	self.h_scope.h_program=l_program;
	//
}

if(live_enabled)
function gml_thread_error(l_text){
	throw gml_std_haxe_Exception_thrown(l_text);
}
