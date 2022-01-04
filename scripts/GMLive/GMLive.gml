// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.
// Generated at 2021-11-29 15:37:40 (10663ms) for v2.3.7+
/// @lint nullToAny true
globalvar gml_std_haxe_type_markerValue;if(live_enabled)gml_std_haxe_type_markerValue=[];
globalvar mt_gml_std_Date;if(live_enabled)mt_gml_std_Date=new gml_std_haxe_class(-1,"gml_std_Date");
globalvar mt_gml_builder;if(live_enabled)mt_gml_builder=new gml_std_haxe_class(-1,"gml_builder");
globalvar mt_gml_program;if(live_enabled)mt_gml_program=new gml_std_haxe_class(-1,"gml_program");
globalvar mt_gml_enum;if(live_enabled)mt_gml_enum=new gml_std_haxe_class(-1,"gml_enum");
globalvar mt_gml_enum_ctr;if(live_enabled)mt_gml_enum_ctr=new gml_std_haxe_class(-1,"gml_enum_ctr");
globalvar mt_gml_macro;if(live_enabled)mt_gml_macro=new gml_std_haxe_class(-1,"gml_macro");
globalvar mt_gml_node;if(live_enabled)mt_gml_node=new gml_std_haxe_enum(-1,"gml_node",["undefined","number","cstring","other_const","enum_ctr","array_decl","object_decl","ensure_array_for_local","ensure_array_for_global","ensure_array_for_field","ensure_array_for_index","ensure_array_for_index2d","ident","self","other","global_ref","script","native_script","const","arg_const","arg_index","arg_count","call","call_script","call_script_at","call_script_id","call_script_with_array","call_field","call_func","call_func_at","construct","func_literal","prefix","postfix","un_op","bin_op","set_op","to_bool","from_bool","in","local","local_set","local_aop","global","global_set","global_aop","field","field_set","field_aop","env","env_set","env_aop","env_fd","env_fd_set","env_fd_aop","env1d","env1d_set","env1d_aop","alarm","alarm_set","alarm_aop","index","index_set","index_aop","index_prefix","index_postfix","index2d","index2d_set","index2d_aop","index2d_prefix","index2d_postfix","raw_id","raw_id_set","raw_id_aop","raw_id_prefix","raw_id_postfix","raw_id2d","raw_id2d_set","raw_id2d_aop","raw_id2d_prefix","raw_id2d_postfix","ds_list","ds_list_set","ds_list_aop","ds_list_prefix","ds_list_postfix","ds_map","ds_map_set","ds_map_aop","ds_map_prefix","ds_map_postfix","ds_grid","ds_grid_set","ds_grid_aop","ds_grid_prefix","ds_grid_postfix","key_id","key_id_set","key_id_aop","key_id_prefix","key_id_postfix","var_decl","block","if_then","ternary","switch","wait","fork","while","do_until","do_while","repeat","for","with","once","return","exit","break","continue","debugger","try_catch","throw","comment_line","comment_line_pre","comment_line_post","comment_line_sep","comment_block","comment_block_pre","comment_block_post"]);
globalvar mt_gml_pos;if(live_enabled)mt_gml_pos=new gml_std_haxe_class(-1,"gml_pos");
globalvar mt_gml_script;if(live_enabled)mt_gml_script=new gml_std_haxe_class(-1,"gml_script");
globalvar mt_gml_source;if(live_enabled)mt_gml_source=new gml_std_haxe_class(-1,"gml_source");
globalvar mt_gml_token;if(live_enabled)mt_gml_token=new gml_std_haxe_enum(-1,"gml_token",["header","macro","hash","semico","comma","period","colon","qmark","at_sign","dollar_sign","keyword","ident","undefined","number","cstring","un_op","adjfix","bin_op","set_op","par_open","par_close","sqb_open","sqb_close","cub_open","cub_close","arg_const"]);
globalvar mt_gml_std_haxe_class;if(live_enabled)mt_gml_std_haxe_class=new gml_std_haxe_class(-1,"gml_std_haxe_class");
globalvar mt_gml_std_haxe_enum;if(live_enabled)mt_gml_std_haxe_enum=new gml_std_haxe_class(-1,"gml_std_haxe_enum");
globalvar mt_gml_std_haxe_Exception;if(live_enabled)mt_gml_std_haxe_Exception=new gml_std_haxe_class(-1,"gml_std_haxe_Exception");
globalvar mt_haxe_ds_basic_map;if(live_enabled)mt_haxe_ds_basic_map=new gml_std_haxe_class(-1,"haxe_ds_basic_map");
globalvar mt_haxe_ds_string_map;if(live_enabled)mt_haxe_ds_string_map=new gml_std_haxe_class(-1,"haxe_ds_string_map");
if(live_enabled)mt_haxe_ds_string_map.h_superClass=mt_haxe_ds_basic_map;
globalvar mt_gml_action;if(live_enabled)mt_gml_action=new gml_std_haxe_enum(-1,"gml_action",["discard","dup","dup2x","dup3x","dup_in","undefined","number","cstring","array_decl","object_decl","const","self","other","local","local_set","local_aop","global","global_set","global_aop","field","field_set","field_aop","index","index_set","index_aop","index2d","index2d_set","index2d_aop","env","env_set","env_aop","env1d","env1d_set","env1d_aop","ds_aop","arg_const","arg_const_set","arg_const_aop","arg_index","arg_index_set","arg_index_aop","arg_count","add_int","equ_op","neq_op","concat","bin_op","un_op","in","call_script","call_script_id","call_script_with_array","call_func","call_field","construct","func_literal","jump","jump_if","jump_unless","bool_and","bool_or","switch","switch_case","repeat_jump","repeat_pre","with_pre","with_next","with_post","break","continue","return","result","try","catch","finally","throw","wait","fork","ensure_array_for_local","ensure_array_for_global","ensure_array_for_field","ensure_array_for_index","ensure_array_for_index2d","alarm","alarm_set","alarm_aop"]);
globalvar mt_gml_thread_scope;if(live_enabled)mt_gml_thread_scope=new gml_std_haxe_class(-1,"gml_thread_scope");
globalvar mt_gml_with_scope;if(live_enabled)mt_gml_with_scope=new gml_std_haxe_class(-1,"gml_with_scope");
globalvar mt_gml_thread_proc_result;if(live_enabled)mt_gml_thread_proc_result=new gml_std_haxe_enum(-1,"gml_thread_proc_result",["ok","error","sync_pos","sync_scope"]);
if(live_enabled)function gml_std_enum_toString(){
	return gml_std_Std_stringify(self);
}
if(live_enabled)function gml_std_enum_getIndex(){
	return __enumIndex__;
}
enum gml_thread_status{none,running,waiting,done,error}

if(live_enabled)
function gml_std_Date(l_year,l_month,l_day,l_hour,l_min1,l_sec)constructor{
	static h_date=undefined; /// @is {date}
	static h_getTime=function(){
		return (self.h_date-25569)*86400000;
	}
	self.h_date=date_create_datetime(l_year,l_month+1,l_day,l_hour,l_min1,l_sec);
	static __class__=mt_gml_std_Date;
}

if(live_enabled)
function gml_std_Date_now(){
	var l_d=new gml_std_Date(2000,0,1,0,0,0);
	l_d.h_date=date_current_datetime();
	return l_d;
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameter(l_q,l_i){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		return variable_struct_get(l_q,l_params[l_i]);
	} else if(is_array(l_q)){
		return l_q[l_i+1];
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameterCount(l_q){
	if(is_struct(l_q)){
		return array_length(l_q.__enumParams__);
	} else if(is_array(l_q)){
		return array_length(l_q)-1;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setParameter(l_q,l_i,l_value){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		variable_struct_set(l_q,l_params[l_i],l_value);
	} else if(is_array(l_q)){
		l_q[@l_i+1]=l_value;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setTo(l_q,l_v){
	if(is_struct(l_q)){
		var l_qp=l_q.__enumParams__;
		var l_vp=l_v.__enumParams__;
		var l_n=array_length(l_qp);
		var l_i=-1;
		while(++l_i<l_n){
			variable_struct_set(l_q,l_qp[l_i],undefined);
		}
		l_i=-1;
		l_n=array_length(l_vp);
		while(++l_i<l_n){
			variable_struct_set(l_q,l_vp[l_i],variable_struct_get(l_v,l_vp[l_i]));
		}
		l_q.__enumParams__=l_vp;
		l_q.__enumIndex__=l_v.__enumIndex__;
	} else if(is_array(l_q)){
		var l_qx=l_q;
		var l_vx=l_v;
		var l_n=array_length(l_vx);
		if(array_length(l_qx)!=l_n)array_resize(l_qx,l_n);
		array_copy(l_qx,0,l_vx,0,l_n);
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_Std_stringify(l_value){
	if(l_value==undefined)return "null";
	if(is_string(l_value))return l_value;
	var l_n,l_i,l_s;
	if(is_struct(l_value)){
		var l_e=variable_struct_get(l_value,"__enum__");
		if(l_e==undefined)return string(l_value);
		var l_ects=l_e.h_constructors;
		if(l_ects!=undefined){
			l_i=l_value.__enumIndex__;
			if(l_i>=0&&l_i<array_length(l_ects))l_s=l_ects[l_i]; else l_s="?";
		} else {
			l_s=instanceof(l_value);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_n=string_length(l_e.h_name);
			if(string_copy(l_s,1,l_n)==l_e.h_name)l_s=string_delete(l_s,1,l_n+1);
		}
		l_s+="(";
		var l_fields=l_value.__enumParams__;
		l_n=array_length(l_fields);
		for(l_i=-1;++l_i<l_n;l_s+=gml_std_Std_stringify(variable_struct_get(l_value,l_fields[l_i]))){
			if(l_i>0)l_s+=", ";
		}
		return l_s+")";
	}
	if(is_real(l_value)){
		l_s=string_format(l_value,0,16);
		if(os_browser!=browser_not_a_browser){
			l_n=string_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_ord_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		} else {
			l_n=string_byte_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_byte_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		}
		return string_copy(l_s,1,l_i);
	}
	return string(l_value);
}

if(live_enabled)
function gml_std_Std_parseFloat(l_s){
	var l_l=string_length(l_s);
	var l_n=string_length(string_digits(l_s));
	var l_p=string_pos(".",l_s);
	var l_e=string_pos("e",l_s);
	if(l_e==0)l_e=string_pos("E",l_s);
	switch(l_e){
		case 0:break;
		case 1:return NaN;
		case 2:if(l_p>0)return NaN;break;
		default:if(l_p>0&&l_e<l_p)return NaN;
	}
	if(l_e!=0&&l_e<l_l-1)switch(string_ord_at(l_s,l_e+1)){
		case 43:case 45:l_l--;break;
	}
	if(l_n&&l_n==l_l-(string_ord_at(l_s,1)==45)-(l_p!=0)-(l_e!=0))return real(l_s); else return NaN;
}

if(live_enabled)
function gml_std_Std_parseInt(l_value){
	var l_n=string_length(string_digits(l_value));
	if(l_n&&l_n==string_length(l_value)-(string_ord_at(l_value,1)==45))return real(l_value); else return undefined;
}

if(live_enabled)
function gml_std_string_pos_ext_haxe(l_this,l_sub,l_startPos){
	if(l_startPos==undefined)l_startPos=0;
	if(false)show_debug_message(argument[1]);
	var l_out=string_pos(l_sub,(l_startPos>0?string_delete(l_this,1,l_startPos):l_this));
	if(l_out>0)return l_out+l_startPos-1; else return -1;
}

if(live_enabled)
function gml_std_string_pos_last(l_this,l_sub,l_startPos){
	if(false)show_debug_message(argument[1]);
	var l_out=-1;
	if(l_startPos==undefined)l_startPos=string_length(l_this);
	while(true){
		var l_p=gml_std_string_pos_ext_haxe(l_this,l_sub,l_out+1);
		if(l_p==-1||l_p>l_startPos)break;
		l_out=l_p;
	}
	return l_out;
}

if(live_enabled)
function gml_std_string_split(l_this,l_del){
	var l_str=l_this;
	var l_num=0;
	var l_arr=array_create(string_count(l_del,l_str)+1);
	for(var l_pos=string_pos(l_del,l_str);l_pos>0;l_pos=string_pos(l_del,l_str)){
		l_arr[@l_num]=string_copy(l_str,1,l_pos-1);
		l_num++;
		l_str=string_delete(l_str,1,l_pos);
	}
	l_arr[@l_num]=l_str;
	return l_arr;
}

if(live_enabled)
function gml_std_string_substr(l_this,l_pos,l_len){
	if(false)show_debug_message(argument[1]);
	if(l_pos<0)l_pos+=string_length(l_this);
	if(l_len==undefined)return string_delete(l_this,1,l_pos); else return string_copy(l_this,1+l_pos,l_len);
}

if(live_enabled)
function gml_std_string_substring(l_this,l_start,l_end){
	if(false)show_debug_message(argument[1]);
	if(l_end==undefined){
		if(l_start>0)return string_delete(l_this,1,l_start); else return l_this;
	}
	if(l_start<0)l_start=0;
	if(l_end<0)l_end=0;
	if(l_start>l_end){
		var l_tmp=l_start;
		l_start=l_end;
		l_end=l_tmp;
	}
	var l_len=string_length(l_this);
	if(l_start>=l_len){
		return "";
	} else if(l_end>=l_len){
		if(l_start>0)return string_delete(l_this,1,l_start); else return l_this;
	} else return string_copy(l_this,l_start+1,l_end-l_start);
}

if(live_enabled)
function gml_std_StringTools_startsWith(l_s,l_start){
	var l_n=string_length(l_start);
	return string_length(l_s)>=l_n&&string_copy(l_s,1,l_n)==l_start;
}

if(live_enabled)
function gml_std_StringTools_trim(l_s){
	var l_char;
	var l_len=string_length(l_s);
	var l_till=l_len;
	while(l_till>0){
		l_char=string_ord_at(l_s,l_till);
		if(l_char==32||l_char>8&&l_char<14)l_till--; else break;
	}
	if(l_till<l_len)l_s=string_copy(l_s,1,l_till);
	var l_start=1;
	while(l_start<=l_till){
		l_char=string_ord_at(l_s,l_start);
		if(l_char==32||l_char>8&&l_char<14)l_start++; else break;
	}
	if(l_start>1)l_s=string_delete(l_s,1,l_start-1);
	return l_s;
}

if(live_enabled)
function gml_std_Type_getEnumConstructs(l_e){
	return gml_std_gml_internal_ArrayImpl_copy(l_e.h_constructors);
}

if(live_enabled)
function gml_std_Type_enumConstructor(l_e){
	var l_et,l_i;
	var l_isStruct1=is_struct(l_e);
	if(l_isStruct1){
		l_et=l_e.__enum__;
		l_i=l_e.__enumIndex__;
	} else return string(l_e);
	var l_cs=l_et.h_constructors;
	if(l_cs!=undefined&&l_i>=0&&l_i<array_length(l_cs)){
		return l_cs[l_i];
	} else {
		if(l_isStruct1){
			var l_s=instanceof(l_e);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_i=string_length(l_et.h_name);
			if(string_copy(l_s,1,l_i)==l_et.h_name&&string_ord_at(l_s,l_i+1)==95)l_s=string_delete(l_s,1,l_i+1);
			return l_s;
		}
		return string(l_e);
	}
}

if(live_enabled)
function gml_std_Type_enumIndex(l_e){
	if(is_struct(l_e)){
		return l_e.__enumIndex__;
	} else if(is_array(l_e)){
		return l_e[0];
	} else return l_e;
}

if(live_enabled)
function gml_enum(l_name,l_pos)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_ctr_list=undefined; /// @is {array<gml_enum_ctr>}
	static h_ctr_map=undefined; /// @is {tools_Dictionary<gml_enum_ctr>}
	static h_has_values=undefined; /// @is {bool}
	static h_add=function(l_name,l_val){
		var l_ctr=new gml_enum_ctr(l_name,self.h_pos,gml_node_number(self.h_pos,l_val,string(l_val)));
		l_ctr.h_value=l_val;
		gml_std_gml_internal_ArrayImpl_push(self.h_ctr_list,l_ctr);
		variable_struct_set(self.h_ctr_map.h_obj,l_name,l_ctr);
	}
	static h_print=function(){
		var l_r="(enum "+self.h_name+" { ";
		var l_z=false;
		var l__g=0;
		var l__g1=self.h_ctr_list;
		while(l__g<array_length(l__g1)){
			var l_ctr=l__g1[l__g];
			l__g++;
			if(l_z)l_r+=", "; else l_z=true;
			l_r+=l_ctr.h_name+" = "+gml_std_Std_stringify(l_ctr.h_value);
		}
		return l_r+" })";
	}
	self.h_has_values=false;
	self.h_ctr_map=new haxe_ds_string_map();
	self.h_ctr_list=[];
	self.h_name=l_name;
	self.h_pos=l_pos;
	static __class__=mt_gml_enum;
}

if(live_enabled)
function gml_enum_create_builtin(l_name){
	var l_e=new gml_enum(l_name,new gml_pos(new gml_source("built-in",""),0,0));
	variable_struct_set(gml_enum_map.h_obj,l_name,l_e);
	return l_e;
}

if(live_enabled)
function gml_enum_ctr(l_name,l_pos,l_node)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_value=undefined; /// @is {int?}
	self.h_value=undefined;
	self.h_name=l_name;
	self.h_pos=l_pos;
	self.h_node=l_node;
	static __class__=mt_gml_enum_ctr;
}

function gml_macro(l_name,l_node,l_isExpr,l_isStat)constructor{
	static h_name=undefined; /// @is {string}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_is_expr=undefined; /// @is {bool}
	static h_is_stat=undefined; /// @is {bool}
	if(live_enabled){
		self.h_name=l_name;
		self.h_node=l_node;
		self.h_is_expr=l_isExpr;
		self.h_is_stat=l_isStat;
	}
	static __class__=mt_gml_macro;
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_iter(l_q,l_st){
	gml_std_haxe_enum_tools_setParameter(l_q,0,gml_std_haxe_enum_tools_getParameter(l_q,0).h_concat(ast_gml_node_tools_ni_concat_pos_pos));
	return gml_node_tools_seek(l_q,undefined,ast_gml_node_tools_ni_concat_pos_iter);
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_rec(l_q,l_p){
	ast_gml_node_tools_ni_concat_pos_pos=l_p;
	ast_gml_node_tools_ni_concat_pos_iter(l_q,undefined);
}

if(live_enabled)
function gml_op_get_priority(l_op){
	return (l_op>>4);
}

if(live_enabled)
function gml_op_get_name(l_this1){
	switch(l_this1){
		case 1:return "Div";
		case 2:return "Mod";
		case 7:return "priorities";
		case 16:return "Add";
		case 17:return "Sub";
		case 18:return "Cct";
		case 32:return "Shl";
		case 33:return "Shr";
		case 48:return "Or";
		case 49:return "And";
		case 64:return "EQ";
		case 65:return "NE";
		case 66:return "LT";
		case 67:return "LE";
		case 68:return "GT";
		case 69:return "GE";
		case 80:return "BAnd";
		case 96:return "BOr";
		case 50:return "Xor";
		case 3:return "IDiv";
		case 0:return "Mul";
		case -1:return "Set";
		default:return undefined;
	}
}

if(live_enabled)
function gml_pos(l_src,l_row,l_col)constructor{
	static h_src=undefined; /// @is {gml_source}
	static h_row=undefined; /// @is {int}
	static h_col=undefined; /// @is {int}
	static h_next=undefined; /// @is {gml_pos}
	static h_copy=function(){
		var l_r=new gml_pos(self.h_src,self.h_row,self.h_col);
		if(self.h_next!=undefined)l_r.h_next=self.h_next.h_copy();
		return l_r;
	}
	static h_concat=function(l_p){
		var l_r=l_p.h_copy();
		var l_l=l_r;
		while(l_l.h_next!=undefined){
			l_l=l_l.h_next;
		}
		l_l.h_next=self;
		return l_r;
	}
	static h_to_string=function(){
		var l_r=self.h_src.h_name+("[L"+string(self.h_row)+",c"+string(self.h_col)+"]");
		if(self.h_next!=undefined)l_r+=">"+self.h_next.h_to_string();
		return l_r;
	}
	self.h_next=undefined;
	self.h_src=l_src;
	self.h_row=l_row;
	self.h_col=l_col;
	static __class__=mt_gml_pos;
}

if(live_enabled)
function gml_script(l_src,l_name,l_pos)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_index=undefined; /// @is {int}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_source=undefined; /// @is {gml_source}
	static h_local_map=undefined; /// @is {tools_Dictionary<int>}
	static h_locals=undefined; /// @is {int}
	static h_arguments=undefined; /// @is {int}
	static h_named_args=undefined; /// @is {tools_Dictionary<int>}
	static h_actions=undefined; /// @is {gml_action_list}
	static h_destroy=function(){
		if(self.h_actions!=undefined){
			var l_this1=self.h_actions;
			var l_i=0;
			for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
				var l_q=ds_list_find_value(l_this1,l_i);
				if(l_q.__enumIndex__==61)ds_map_destroy(l_q.h_jumptable);
			}
			ds_list_destroy(l_this1);
		}
	}
	static h_seek=function(l_iter,l_stack){
		var l__scr=gml_program_seek_script;
		gml_program_seek_script=self;
		l_iter(self.h_node,l_stack);
		gml_program_seek_script=l__scr;
	}
	self.h_actions=undefined;
	self.h_named_args=undefined;
	self.h_arguments=0;
	self.h_locals=0;
	self.h_local_map=new haxe_ds_string_map();
	self.h_source=l_src;
	self.h_name=l_name;
	self.h_pos=l_pos;
	static __class__=mt_gml_script;
}

function gml_source(l_name,l_code,l_main,l_opt)constructor{
	static h_name=undefined; /// @is {string}
	static h_code=undefined; /// @is {string}
	static h_main=undefined; /// @is {string}
	static h_length=undefined; /// @is {int}
	static h_opt=undefined; /// @is {bool}
	static h_tokens=undefined; /// @is {array<gml_token>}
	static h_token_count=undefined; /// @is {int}
	static h___eof=undefined; /// @is {gml_pos}
	static h_get_eof=function(){
		if(live_enabled){
			if(self.h___eof==undefined)self.h___eof=new gml_pos(self,string_count("\n",self.h_code)+2,1);
			return self.h___eof;
		}else return undefined;
	}
	static h_to_string=function(){
		if(live_enabled){
			return "GmlSource(\""+self.h_name+"\")";
		}else return undefined;
	}
	if(l_opt==undefined)l_opt=false;
	if(false)show_debug_message(argument[3]);
	if(live_enabled){
		self.h___eof=undefined;
		self.h_token_count=0;
		self.h_tokens=undefined;
		self.h_name=l_name;
		self.h_code=l_code;
		self.h_opt=l_opt;
		if(l_main==undefined){
			l_main=l_name;
			var l_i=gml_std_string_pos_last(l_main,"/");
			var l_k=gml_std_string_pos_last(l_main,"\\");
			if(l_i<0||l_k>l_i)l_i=l_k;
			l_i=gml_std_string_pos_ext_haxe(l_main,".");
			if(l_i>=0)l_main=gml_std_string_substring(l_main,0,l_i);
		}
		self.h_main=l_main;
		self.h_length=string_length(l_code);
	}
	static __class__=mt_gml_source;
}

if(live_enabled)
function gml_parse_name(l_s,l_i){
	var l_c=string_ord_at(l_s,l_i+1);
	if(l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c==95){
		var l_k=l_i;
		while(true){
			l_i++;
			l_c=string_ord_at(l_s,l_i+1);
			if(!(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57))break;
		}
		return gml_std_string_substring(l_s,l_k,l_i);
	} else throw gml_std_haxe_Exception_thrown("API.parseName: wrong format in "+l_s);
}

if(live_enabled)
function gml_func_add(l_signature,l_func){
	var l_s=l_signature;
	var l_p0=gml_std_string_pos_ext_haxe(l_s,"(")+1;
	var l_p1=gml_std_string_pos_ext_haxe(l_s,")");
	var l_argv=gml_std_StringTools_trim(gml_std_string_substring(l_s,l_p0,l_p1));
	var l_flags=gml_std_string_substring(l_s,l_p1+1);
	var l_argc,l_arg1;
	var l_arg0=-1;
	var l_argt;
	var l_rest=gml_type_check_any;
	if(l_argv==""){
		l_argc=0;
		l_arg1=0;
		l_argt=array_create(0);
	} else {
		var l_args1=gml_std_string_split(l_argv,",");
		l_argc=array_length(l_args1);
		l_arg1=l_argc;
		l_argt=array_create(l_argc);
		var l_tmap=gml_type_check_map;
		var l_isJS=gml_std_haxe_boot_isJS;
		var l_i=0;
		for(var l__g1=l_argc;l_i<l__g1;l_i++){
			var l_arg=l_args1[l_i];
			var l_pos=gml_std_string_pos_ext_haxe(l_arg,"=");
			var l_opt=false;
			if(l_pos>=0){
				l_opt=true;
				l_arg=gml_std_string_substring(l_arg,0,l_pos);
			} else if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0){
				l_arg1=81;
				l_argc=-1;
				l_opt=true;
			}
			l_pos=gml_std_string_pos_ext_haxe(l_arg,":");
			if(l_pos>=0){
				if(gml_std_string_pos_ext_haxe(gml_std_string_substring(l_arg,0,l_pos),"?")>=0)l_opt=true;
				var l_type=gml_std_StringTools_trim(gml_std_string_substring(l_arg,l_pos+1));
				if(l_isJS&&l_type=="id")l_type="index";
				if(variable_struct_exists(l_tmap.h_obj,l_type)){
					var l_tfun=variable_struct_get(l_tmap.h_obj,l_type);
					if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0)l_rest=l_tfun;
					l_argt[@l_i]=l_tfun;
				} else throw gml_std_haxe_Exception_thrown("\""+l_type+"\" is not a known type (in argument["+string(l_i)+"] \""+l_arg+"\" in \""+l_signature+"\")");
			} else l_argt[@l_i]=gml_type_check_any;
			if(l_opt&&l_arg0<0)l_arg0=l_i;
		}
		if(gml_std_string_pos_ext_haxe(l_argv,"...")>=0||gml_std_string_pos_ext_haxe(l_argv,"?")>=0||gml_std_string_pos_ext_haxe(l_argv,"=")>=0)l_argc=-1;
	}
	if(l_argc<0){
		if(l_arg0<0)l_arg0=0;
	} else {
		l_arg1=l_argc;
		l_arg0=l_argc;
	}
	var l_i=0;
	var l_inst=0;
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==36&&string_ord_at(l_s,l_i+1+1)==123){
		var l_k=gml_std_string_pos_ext_haxe(l_s,"}",l_i+2);
		if(l_k<0)throw gml_std_haxe_Exception_thrown("Unclosed $(meta)");
		if(gml_std_string_substring(l_s,l_i+2,l_k)=="raw")l_inst=-5; else throw gml_std_haxe_Exception_thrown("Unknown meta $("+gml_std_string_substring(l_s,l_i+2,l_k)+")");
		l_i=l_k+1;
	}
	var l_name=gml_parse_name(l_s,l_i);
	if(l_inst!=0)variable_struct_set(gml_inst_data.h_obj,l_name,l_inst);
	variable_struct_set(gml_func_eval.h_obj,l_name,(gml_std_string_pos_ext_haxe(l_flags,"#")>=0));
	variable_struct_set(gml_func_args.h_obj,l_name,l_argt);
	variable_struct_set(gml_func_rest.h_obj,l_name,l_rest);
	variable_struct_set(gml_func_arg0.h_obj,l_name,l_arg0);
	variable_struct_set(gml_func_arg1.h_obj,l_name,l_arg1);
	variable_struct_set(gml_func_script.h_obj,l_name,l_func);
	variable_struct_set(gml_func_sig.h_obj,l_name,l_s);
}

if(live_enabled)
function gml_func_copy(l_to,l_from){
	if(!variable_struct_exists(gml_func_script.h_obj,l_from))throw gml_std_haxe_Exception_thrown("Can't find "+l_from);
	variable_struct_set(gml_func_eval.h_obj,l_to,variable_struct_get(gml_func_eval.h_obj,l_from));
	variable_struct_set(gml_func_args.h_obj,l_to,variable_struct_get(gml_func_args.h_obj,l_from));
	variable_struct_set(gml_func_rest.h_obj,l_to,variable_struct_get(gml_func_rest.h_obj,l_from));
	variable_struct_set(gml_func_arg0.h_obj,l_to,variable_struct_get(gml_func_arg0.h_obj,l_from));
	variable_struct_set(gml_func_arg1.h_obj,l_to,variable_struct_get(gml_func_arg1.h_obj,l_from));
	variable_struct_set(gml_func_script.h_obj,l_to,variable_struct_get(gml_func_script.h_obj,l_from));
	variable_struct_set(gml_func_sig.h_obj,l_to,variable_struct_get(gml_func_sig.h_obj,l_from));
}

if(live_enabled)
function gml_remove_func(l_name){
	if(!variable_struct_exists(gml_func_script.h_obj,l_name))return false;
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_script.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_eval.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_args.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_arg0.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_arg1.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_func_sig.h_obj,l_name);
	return true;
}

if(live_enabled)
function gml_var_add(l_s,l_func){
	var l_flags=0;
	if(string_ord_at(l_s,1)==58){
		l_s=gml_std_string_substring(l_s,1);
		l_flags|=4;
	}
	var l_type=gml_type_check_any;
	var l_pos=gml_std_string_pos_ext_haxe(l_s,":");
	if(l_pos>=0){
		var l_tstr=gml_std_string_substring(l_s,l_pos+1);
		if(variable_struct_exists(gml_type_check_map.h_obj,l_tstr)){
			l_type=variable_struct_get(gml_type_check_map.h_obj,l_tstr);
			l_s=gml_std_string_substring(l_s,0,l_pos);
		} else throw gml_std_haxe_Exception_thrown("`"+l_tstr+"` is not a known type.");
	}
	var l_name=gml_parse_name(l_s,0);
	if(gml_std_string_pos_ext_haxe(l_s,"[")>=0)l_flags|=2;
	if(gml_std_string_pos_ext_haxe(l_s,"*")>=0)l_flags|=1;
	variable_struct_set(gml_var_flags.h_obj,l_name,l_flags);
	variable_struct_set(gml_var_refs.h_obj,l_name,l_func);
	variable_struct_set(gml_var_types.h_obj,l_name,l_type);
}

if(live_enabled)
function gml_remove_var(l_name){
	if(!variable_struct_exists(gml_var_refs.h_obj,l_name))return false;
	haxe__dynamic_access_dynamic_access_impl__remove(gml_var_refs.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_var_flags.h_obj,l_name);
	haxe__dynamic_access_dynamic_access_impl__remove(gml_var_types.h_obj,l_name);
	return true;
}

if(live_enabled)
function gml_const_add(l_name,l_value){
	variable_struct_set(gml_const_map.h_obj,l_name,true);
	variable_struct_set(gml_const_val.h_obj,l_name,l_value);
}

if(live_enabled)
function gml_remove_const(l_name){
	if(variable_struct_exists(gml_const_map.h_obj,l_name)){
		haxe__dynamic_access_dynamic_access_impl__remove(gml_const_map.h_obj,l_name);
		haxe__dynamic_access_dynamic_access_impl__remove(gml_const_val.h_obj,l_name);
		return true;
	} else return false;
}

if(live_enabled)
function gml_asset_add(l_name,l_index){
	variable_struct_set(gml_asset_index.h_obj,l_name,l_index);
}

if(live_enabled)
function gml_std_haxe_class(l_id,l_name)constructor{
	static h_superClass=undefined; /// @is {haxe_class<any>}
	static h_marker=undefined; /// @is {any}
	static h_index=undefined; /// @is {int}
	static h_name=undefined; /// @is {string}
	self.h_superClass=undefined;
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	static __class__="class";
}

if(live_enabled)
function gml_std_haxe_enum(l_id,l_name,l_constructors)constructor{
	static h_constructors=undefined; /// @is {array<string>}
	static h_marker=undefined; /// @is {any}
	static h_index=undefined; /// @is {int}
	static h_name=undefined; /// @is {string}
	if(false)show_debug_message(argument[2]);
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	self.h_constructors=l_constructors;
	static __class__="enum";
}

if(live_enabled)
function gml_seek_adjfix_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 33:
			var l_d=l__g.h_d;
			var l_x=l__g.h_x;
			var l_b=l__g.h_inc;
			var l_pre;
			if(l_q.__enumIndex__==32)l_pre=true; else l_pre=false;
			var l_o;
			var l_inBlock=gml_node_tools_is_in_block(l_x,ds_list_find_value(l_st,0));
			if(l_pre||l_inBlock){
				var l__g=l_x;
				switch(l__g.__enumIndex__){
					case 86:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_map_aop(l_d,l__g.h_lx,l__g.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 81:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_list_aop(l_d,l__g.h_lx,l__g.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 91:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_grid_aop(l_d,l__g.h_lx,l__g.h_i1,l__g.h_i2,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 96:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_key_id_aop(l_d,l__g.h_x,l__g.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					default:
						if(l_inBlock){
							l_o=(l_b?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,gml_node_set_op(l_d,l_o,l_x,gml_node_number(l_d,1,undefined)));
						}
				}
			}
			break;
		case 32:
			var l_d=l__g.h_d;
			var l_x=l__g.h_x;
			var l_pre;
			if(l_q.__enumIndex__==32)l_pre=true; else l_pre=false;
			var l_o;
			var l_inBlock=gml_node_tools_is_in_block(l_x,ds_list_find_value(l_st,0));
			if(l_pre||l_inBlock){
				var l__g1=l_x;
				switch(l__g1.__enumIndex__){
					case 86:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_map_aop(l_d,l__g1.h_lx,l__g1.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 81:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_list_aop(l_d,l__g1.h_lx,l__g1.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 91:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_grid_aop(l_d,l__g1.h_lx,l__g1.h_i1,l__g1.h_i2,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 96:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_key_id_aop(l_d,l__g1.h_x,l__g1.h_id,l_o,gml_node_number(l_d,1,undefined)));
						break;
					default:
						if(l_inBlock){
							l_o=(l__g.h_inc?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,gml_node_set_op(l_d,l_o,l_x,gml_node_number(l_d,1,undefined)));
						}
				}
			}
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_alarms_check(l_x){
	var l__g=l_x;
	if(l__g.__enumIndex__==46){
		if(l__g.h_fd=="alarm")return l__g.h_x; else return undefined;
	} else return undefined;
}

if(live_enabled)
function gml_seek_alarms_proc(l_q,l_st){
	var l_r;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 71:
			l_r=gml_seek_alarms_check(l__g.h_x);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,gml_node_alarm(l__g.h_d,l_r,l__g.h_id));
			break;
		case 61:
			l_r=gml_seek_alarms_check(l__g.h_x);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,gml_node_alarm(l__g.h_d,l_r,l__g.h_id));
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_arguments_proc(l_q,l_st){
	gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
	var l__g=l_q;
	if(l__g.__enumIndex__==19){
		var l_i=l__g.h_id;
		if(gml_program_seek_script.h_arguments<=l_i)gml_program_seek_script.h_arguments=l_i+1;
	}
	return false;
}

if(live_enabled)
function gml_seek_calls_proc(l_q,l_st){
	var l_n,l_s;
	var l__g=l_q;
	if(l__g.__enumIndex__==22){
		var l_d=l__g.h_d;
		var l_x=l__g.h_x;
		var l_w=l__g.h_args;
		var l__g=l_x;
		switch(l__g.__enumIndex__){
			case 16:
				var l_o=l__g.h_ref;
				l_n=l_o.h_arguments;
				l_s=l_o.h_name;
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script(l_d,l_s,l_w));
				break;
			case 46:
				var l_s=l__g.h_fd;
				if(variable_struct_exists(gml_func_arg0.h_obj,l_s)){
					if(variable_struct_exists(gml_inst_data.h_obj,l_s))gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_func_at(l_d,l__g.h_x,l_s,l_w)); else return gml_program_seek_inst.h_error("`"+l_s+"` cannot be called on an instance",l__g.h_d);
				} else if(variable_struct_exists(gml_program_seek_inst.h_script_map.h_obj,l_s)){
					l_n=variable_struct_get(gml_program_seek_inst.h_script_map.h_obj,l_s).h_arguments;
					if(l_n<=0||array_length(l_w)==l_n)gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_at(l_d,l__g.h_x,l_s,l_w)); else return gml_program_seek_inst.h_error("Wrong number of arguments for `"+l_s+"`",l_d);
				} else gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_field(l_d,l__g.h_x,l_s,l_w));
				break;
			case 17:
				var l_s=l__g.h_name;
				var l_n0=variable_struct_get(gml_func_arg0.h_obj,l_s);
				if(l_n0!=undefined){
					var l_n1=variable_struct_get(gml_func_arg1.h_obj,l_s);
					var l_wn=array_length(l_w);
					if(l_wn<l_n0||l_wn>l_n1){
						if(l_n0==l_n1){
							l_s="`"+l_s+"` takes "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s+="s";
						} else if(l_wn<l_n0){
							l_s="`"+l_s+"` requires at least "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s+="s";
						} else {
							l_s="`"+l_s+"` takes no more than "+gml_std_Std_stringify(l_n1)+" argument";
							if(l_n1!=1)l_s+="s";
						}
						l_s+=", got "+string(l_wn);
						return gml_program_seek_inst.h_error(l_s,gml_std_haxe_enum_tools_getParameter(l_x,0));
					} else gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_func(l_d,l_s,l_w));
				} else if(gml_parser_gml23){
					gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_w));
				} else return gml_program_seek_inst.h_error("`"+l_s+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				break;
			case 12:
				var l_s1=l__g.h_id;
				var l_n0=variable_struct_get(gml_func_arg0.h_obj,l_s1);
				if(l_n0!=undefined){
					var l_n1=variable_struct_get(gml_func_arg1.h_obj,l_s1);
					var l_wn=array_length(l_w);
					if(l_wn<l_n0||l_wn>l_n1){
						if(l_n0==l_n1){
							l_s1="`"+l_s1+"` takes "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s1+="s";
						} else if(l_wn<l_n0){
							l_s1="`"+l_s1+"` requires at least "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s1+="s";
						} else {
							l_s1="`"+l_s1+"` takes no more than "+gml_std_Std_stringify(l_n1)+" argument";
							if(l_n1!=1)l_s1+="s";
						}
						l_s1+=", got "+string(l_wn);
						return gml_program_seek_inst.h_error(l_s1,gml_std_haxe_enum_tools_getParameter(l_x,0));
					} else gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_func(l_d,l_s1,l_w));
				} else if(gml_parser_gml23){
					gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_w));
				} else return gml_program_seek_inst.h_error("`"+l_s1+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				break;
			default:if(gml_parser_gml23)gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_w)); else return gml_program_seek_inst.h_error("Expression is not callable",gml_std_haxe_enum_tools_getParameter(l_x,0));
		}
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_enum_fields_proc_one(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==46){
		var l_d=l__g.h_d;
		var l_x=l__g.h_x;
		var l_f=l__g.h_fd;
		var l__g=l_x;
		if(l__g.__enumIndex__==12){
			var l_s=l__g.h_id;
			var l_e=variable_struct_get(gml_program_seek_inst.h_enum_map.h_obj,l_s);
			if(l_e==undefined)l_e=variable_struct_get(gml_enum_map.h_obj,l_s);
			if(l_e!=undefined){
				if(!l_e.h_has_values)gml_seek_enum_values_proc_one(l_e);
				var l_c=variable_struct_get(l_e.h_ctr_map.h_obj,l_f);
				if(l_c!=undefined){
					if(l_c.h_value==undefined)return gml_program_seek_inst.h_error("Recursive enum reference to "+l_s+"."+l_f,l_d);
					gml_std_haxe_enum_tools_setTo(l_q,gml_node_number(l_d,l_c.h_value,undefined));
					return false;
				} else return gml_program_seek_inst.h_error("Enum `"+l_s+"` does not contain field `"+l_f+"`",l_d);
			}
		}
		var l_flags=variable_struct_get(gml_var_flags.h_obj,l_f);
		if(l_flags!=undefined){
			if((l_flags&4)==0)return gml_program_seek_inst.h_error("`"+l_f+"` is not an instance-specific variable.",l_d);
		}
	}
	return gml_node_tools_seek(l_q,l_st,gml_seek_enum_fields_proc_one);
}

if(live_enabled)
function gml_seek_enum_fields_proc(l_q,l_st){
	return gml_seek_enum_fields_proc_one(l_q,l_st);
}

if(live_enabled)
function gml_seek_enum_values_proc_one(l_e){
	l_e.h_has_values=true;
	var l_next=0;
	var l__g=0;
	var l__g1=l_e.h_ctr_list;
	while(l__g<array_length(l__g1)){
		var l_c=l__g1[l__g];
		l__g++;
		if(l_c.h_node!=undefined){
			var l_st=ds_list_create();
			var l__seekFunc=gml_program_seek_func;
			gml_program_seek_func=gml_seek_idents_proc;
			gml_program_seek_script=undefined;
			gml_seek_idents_proc(l_c.h_node,l_st);
			gml_program_seek_func=l__seekFunc;
			ds_list_destroy(l_st);
			gml_seek_enum_fields_proc_one(l_c.h_node,undefined);
			gml_seek_eval_eval(l_c.h_node);
			var l_node=l_c.h_node;
			var l_v=gml_seek_eval_node_to_value(l_node);
			if(is_numeric(l_v)){
				l_c.h_value=floor(l_v);
				l_next=l_c.h_value+1;
			} else if(l_v!=gml_seek_eval_invalid_value){
				return gml_program_seek_inst.h_error("Enum values should be integer",gml_std_haxe_enum_tools_getParameter(l_node,0));
			} else return gml_program_seek_inst.h_error(("Enum values should be constant"+gml_std_Type_enumConstructor(l_node)),gml_std_haxe_enum_tools_getParameter(l_c.h_node,0));
		} else l_c.h_value=l_next++;
	}
	return false;
}

if(live_enabled)
function gml_seek_enum_values_proc(){
	var l__g=0;
	var l__g1=gml_program_seek_inst.h_enum_array;
	while(l__g<array_length(l__g1)){
		var l_e=l__g1[l__g];
		l__g++;
		if(gml_seek_enum_values_proc_one(l_e))return true;
	}
	return false;
}

if(live_enabled)
function gml_seek_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==46){
		var l_d=l__g.h_d;
		var l_x=l__g.h_x;
		var l_s=l__g.h_fd;
		if(l_x.__enumIndex__==15)gml_std_haxe_enum_tools_setTo(l_q,gml_node_global(l_d,l_s));
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_idents_proc(l_q,l_st){
	var l_d,l_s;
	var l__g=l_q;
	if(l__g.__enumIndex__==12){
		l_d=l__g.h_d;
		l_s=l__g.h_id;
	} else {
		l_d=undefined;
		l_s=undefined;
	}
	if(l_d!=undefined)while(true){
		var l_scr=gml_program_seek_script;
		if(l_scr!=undefined){
			var l_i=variable_struct_get(l_scr.h_named_args.h_obj,l_s);
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_arg_const(l_d,l_i));
				if(true)break; else continue;
			}
			l_i=variable_struct_get(l_scr.h_local_map.h_obj,l_s);
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_local(l_d,l_s));
				if(true)break; else continue;
			}
		}
		var l_mcr=variable_struct_get(gml_program_seek_inst.h_macro_map.h_obj,l_s);
		if(l_mcr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_tools_clone(l_mcr.h_node));
			ast_gml_node_tools_ni_concat_pos_rec(l_q,l_d);
			gml_seek_idents_proc(l_q,l_st);
			if(true)break; else continue;
		}
		if(variable_struct_get(gml_const_map.h_obj,l_s)==true){
			var l_val=variable_struct_get(gml_const_val.h_obj,l_s);
			var l_valNode=gml_seek_eval_value_to_node(l_val,l_d);
			if(l_valNode!=undefined)gml_std_haxe_enum_tools_setTo(l_q,l_valNode); else return gml_program_seek_inst.h_error(("Cannot create a node for `"+l_s+"` ("+typeof(l_val)+")"),l_d);
			if(true)break; else continue;
		}
		var l_flags=variable_struct_get(gml_var_flags.h_obj,l_s);
		if(l_flags!=undefined){
			if((l_flags&4)!=0)gml_std_haxe_enum_tools_setTo(l_q,gml_node_env_fd(l_d,gml_node_self(l_d),l_s)); else gml_std_haxe_enum_tools_setTo(l_q,gml_node_env(l_d,l_s));
			if(ds_list_size(l_st)>0){
				var l__g=ds_list_find_value(l_st,0);
				switch(l__g.__enumIndex__){
					case 61:
						var l_d1=l__g.h_d;
						var l_k=l__g.h_id;
						if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(ds_list_find_value(l_st,0),gml_node_env1d(l_d1,l_s,l_k)); else return gml_program_seek_inst.h_error("`"+l_s+"` is not an array.",l_d1);
						break;
					case 66:return gml_program_seek_inst.h_error("`"+l_s+"` is not a 2d array.",l__g.h_d);
					default:if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(l_q,gml_node_env1d(l_d,l_s,gml_node_number(l_d,0,undefined)));
				}
			}
			if(true)break; else continue;
		}
		var l_scr1=variable_struct_get(gml_program_seek_inst.h_script_map.h_obj,l_s);
		if(l_scr1!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_script(l_d,l_scr1));
			if(true)break; else continue;
		}
		var l_fscr=variable_struct_get(gml_func_script_id.h_obj,l_s);
		if(l_fscr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_native_script(l_d,l_s,l_fscr));
			if(true)break; else continue;
		}
		if(true)break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_locals_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 120:
			var l_s=l__g.h_cap;
			if(!variable_struct_exists(gml_program_seek_script.h_local_map.h_obj,l_s))variable_struct_set(gml_program_seek_script.h_local_map.h_obj,l_s,gml_program_seek_script.h_locals++);
			break;
		case 101:
			var l_s=l__g.h_name;
			if(!variable_struct_exists(gml_program_seek_script.h_local_map.h_obj,l_s))variable_struct_set(gml_program_seek_script.h_local_map.h_obj,l_s,gml_program_seek_script.h_locals++);
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_self_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==12){
		var l_d=l__g.h_d;
		gml_std_haxe_enum_tools_setTo(l_q,gml_node_field(l_d,gml_node_self(l_d),l__g.h_id));
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_push(l_arr,l_val){
	var l_i=array_length(l_arr);
	l_arr[@l_i]=l_val;
	return l_i;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_indexOf(l_arr,l_v,l_i){
	if(l_i==undefined)l_i=0;
	if(false)show_debug_message(argument[2]);
	var l_len=array_length(l_arr);
	if(l_i<0){
		l_i+=l_len;
		if(l_i<0)l_i=0;
	}
	while(l_i<l_len){
		if(l_arr[l_i]==l_v)return l_i;
		l_i++;
	}
	return -1;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_join(l_arr,l_sep){
	var l_len=array_length(l_arr);
	if(l_len==0)return "";
	var l_buf=gml_std_gml_internal_ArrayImpl_join_buf;
	if(l_buf==undefined){
		l_buf=buffer_create(1024,buffer_grow,1);
		gml_std_gml_internal_ArrayImpl_join_buf=l_buf;
	}
	buffer_seek(l_buf,buffer_seek_start,0);
	buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[0]));
	var l_i=1;
	for(var l__g1=l_len;l_i<l__g1;l_i++){
		buffer_write(l_buf,buffer_text,l_sep);
		buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[l_i]));
	}
	buffer_write(l_buf,buffer_u8,0);
	buffer_seek(l_buf,buffer_seek_start,0);
	return buffer_read(l_buf,buffer_string);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_slice(l_arr,l_pos,l_end){
	if(false)show_debug_message(argument[2]);
	var l_len=array_length(l_arr);
	if(l_pos<0){
		l_pos+=l_len;
		if(l_pos<0)l_pos=0;
	}
	if(l_end==undefined||l_end>l_len)l_end=l_len;
	var l_len=l_end-l_pos;
	var l_out=array_create(l_len);
	array_copy(l_out,0,l_arr,l_pos,l_len);
	return l_out;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_copy(l_arr){
	var l_out;
	var l_len=array_length(l_arr);
	if(l_len>0){
		l_out=array_create(l_len);
		array_copy(l_out,0,l_arr,0,l_len);
	} else l_out=[];
	return l_out;
}

if(live_enabled)
function haxe__dynamic_access_dynamic_access_impl__remove(l_this1,l_key){
	var l_result=variable_struct_exists(l_this1,l_key);
	variable_struct_remove(l_this1,l_key);
	return l_result;
}

if(live_enabled)
function haxe__dynamic_access_dynamic_access_impl__copy(l_this1){
	var l_fields=variable_struct_get_names(l_this1);
	var l_r={}
	var l_i=0;
	for(var l__g1=array_length(l_fields);l_i<l__g1;l_i++){
		var l_fd=l_fields[l_i];
		variable_struct_set(l_r,l_fd,variable_struct_get(l_this1,l_fd));
	}
	return l_r;
}

if(live_enabled)
function gml_std_haxe_Exception(l_message,l_previous,l_native)constructor{
	static h_native=undefined; /// @is {any}
	if(false)show_debug_message(argument[2]);
	self.h_native=(l_native!=undefined?l_native:self);
	static __class__=mt_gml_std_haxe_Exception;
}

if(live_enabled)
function gml_std_haxe_Exception_caught(l_value){
	if(is_struct(l_value)&&variable_struct_get(l_value,"__exception__")==true)return l_value;
	var l_e={
		value:l_value,
		message:string(l_value),
		longMessage:"",
		script:"",
		stacktrace:debug_get_callstack(),
		__exception__:true
	}
	l_e.h_native=l_e;
	return l_e;
}

if(live_enabled)
function gml_std_haxe_Exception_thrown(l_value){
	if(is_struct(l_value)&&variable_struct_get(l_value,"__exception__")==true)return l_value;
	var l_e={
		value:l_value,
		message:string(l_value),
		longMessage:"",
		script:"",
		stacktrace:debug_get_callstack(),
		__exception__:true
	}
	l_e.h_native=l_e;
	return l_e;
}

if(live_enabled)
function haxe_ds_basic_map_new(){
	self.h_obj={}
}

if(live_enabled)
function haxe_ds_basic_map()constructor{
	static h_obj=undefined; /// @is {haxe_DynamicAccess<V>}
	static h_clear=method(undefined,haxe_ds_basic_map_h_clear);
	method(self, haxe_ds_basic_map_new)();
	static __class__=mt_haxe_ds_basic_map;
}

if(live_enabled)
function haxe_ds_basic_map_h_clear(){
	var l__g=0;
	var l__g1=variable_struct_get_names(self.h_obj);
	while(l__g<array_length(l__g1)){
		var l_key=l__g1[l__g];
		l__g++;
		haxe__dynamic_access_dynamic_access_impl__remove(self.h_obj,l_key);
	}
}

if(live_enabled)
function haxe_ds_string_map()constructor{
	static h_obj=undefined; /// @is {haxe_DynamicAccess<V>}
	static h_clear=method(undefined,haxe_ds_basic_map_h_clear);
	method(self, haxe_ds_basic_map_new)();
	static __class__=mt_haxe_ds_string_map;
}

if(live_enabled)
function live_gmlive_patcher_add_source(l_name,l_acc,l_found,l_m){
	variable_struct_set(l_found.h_obj,l_name,true);
	var l_tokenCount=l_m.h_token_count;
	if(l_tokenCount<0)return 0;
	var l_tokens=l_m.h_tokens;
	if(l_tokens==undefined){
		l_tokens=gml_parser_run(l_m);
		if(l_tokens==undefined){
			l_m.h_token_count=-1;
			return 0;
		}
		l_tokenCount=gml_parser_tokens_found;
		l_m.h_tokens=l_tokens;
		l_m.h_token_count=l_tokenCount;
	}
	ds_list_add(l_acc,l_m);
	live_gmlive_patcher_index_rec(l_tokens,l_tokenCount,l_acc,l_found);
}

if(live_enabled)
function live_gmlive_patcher_index_rec(l_tokens,l_tokensLen,l_acc,l_found){
	var l_tokensLen1=l_tokensLen-1;
	var l_tokensPos=-1;
	var l_macros=live_live_macros;
	var l_enums=live_live_enums;
	while(++l_tokensPos<l_tokensLen){
		var l_tk=l_tokens[l_tokensPos];
		var l_id;
		if(l_tk.__enumIndex__==11)l_id=l_tk.h_id; else continue;
		if(variable_struct_exists(l_found.h_obj,l_id))continue;
		var l_src=variable_struct_get(l_macros.h_obj,l_id);
		if(l_src!=undefined){
			live_gmlive_patcher_add_source(l_id,l_acc,l_found,l_src);
			continue;
		}
		l_src=variable_struct_get(l_enums.h_obj,l_id);
		if(l_src!=undefined){
			if(l_tokensPos>0){
				var l__g1=l_tokens[l_tokensPos-1];
				var l_tmp;
				if(l__g1.__enumIndex__==5)l_tmp=true; else l_tmp=false;
				if(l_tmp)continue;
			}
			if(l_tokensPos<l_tokensLen1){
				var l__g3=l_tokens[l_tokensPos+1];
				var l_tmp1;
				if(l__g3.__enumIndex__==5)l_tmp1=true; else l_tmp1=false;
				if(l_tmp1)live_gmlive_patcher_add_source(l_id,l_acc,l_found,l_src);
			}
			continue;
		}
		variable_struct_set(l_found.h_obj,l_id,true);
	}
}

if(live_enabled)
function live_gmlive_patcher_compile_ex(l_name,l_code){
	var l_source=new gml_source(l_name,l_code,l_name);
	var l_tokens=gml_parser_run(l_source);
	if(l_tokens==undefined){
		live_gmlive_patcher_error_text=gml_parser_error_text;
		return undefined;
	}
	var l_found=live_async_http_1_found;
	var l_acc=live_async_http_1_acc;
	l_found.h_clear();
	ds_list_clear(l_acc);
	if(live_live_globals!=undefined)ds_list_add(l_acc,live_live_globals);
	l_source.h_tokens=l_tokens;
	l_source.h_token_count=gml_parser_tokens_found;
	live_gmlive_patcher_index_rec(l_tokens,l_source.h_token_count,l_acc,l_found);
	ds_list_add(l_acc,l_source);
	var l_srci=ds_list_size(l_acc);
	var l_srcs=array_create(l_srci);
	while(--l_srci>=0){
		l_srcs[@l_srci]=ds_list_find_value(l_acc,l_srci);
	}
	var l_pg=new gml_program(l_srcs);
	live_gmlive_patcher_error_text=l_pg.h_error_text;
	if(!l_pg.h_is_ready){
		l_pg.h_destroy();
		return undefined;
	}
	l_pg.h_tag=l_name;
	return l_pg;
}

if(live_enabled)
function live_shader_updated_default(){
	throw gml_std_haxe_Exception_thrown("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation");
}

function shader_set_live(l_sh,l_live1){
	if(live_enabled){
		var l_i;
		if(l_live1){
			if(ds_map_exists(live_shader_live_shaders,l_sh))return 0;
			ds_map_set(live_shader_live_shaders,l_sh,true);
			l_i=ds_list_find_index(live_shader_live_shaders_stop,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_stop,l_i);
			ds_list_add(live_shader_live_shaders_start,l_sh);
		} else {
			if(!ds_map_exists(live_shader_live_shaders,l_sh))return 0;
			ds_map_delete(live_shader_live_shaders,l_sh);
			l_i=ds_list_find_index(live_shader_live_shaders_start,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_start,l_i);
			ds_list_add(live_shader_live_shaders_stop,l_sh);
		}
	}
}

function live_validate_scripts(){
	if(live_enabled){
		var l_names=["GMLive_call","live_call","GMLive_tools","live_execute_string","GMLive_token","mc_gml_token","GMLive_parser","gml_parser_run","GMLive_node","mc_gml_node","GMLive_nodeTools","gml_node_tools_seek","GMLive_builder","gml_builder","GMLive_compiler","gml_compile_program","GMLive_seekEval","gml_seek_eval_eval","GMLive_seekSetOp","gml_seek_set_op_proc","GMLive_action","mc_gml_action","GMLive_new","vm_impl_gml_thread_construct_init","GMLive_exec","vm_gml_thread_exec_slice_init","GMLive_program","gml_program","GMLive_thread","gml_thread","GMLive_vm","vm_group_op_impl","GMLive_vm_init","vm_v2_gml_thread_v2_handlers_init","GMLive_vm_call","live_method","GMLiveAPI","live_preinit_api","GMLive_roomLoader","live_room_start","GMLive_http","live_async_http"];
		var l_i=0;
		var l_count=array_length(l_names);
		while(l_i<l_count){
			var l_scr=l_names[l_i++];
			var l_ref=l_names[l_i++];
			if(-1==asset_get_index(l_ref))show_error(("Function `"+l_ref+"` is missing!"+("\nCheck that script resource `"+l_scr+"` exists (Ctrl+T) and is not just a single empty function;")+"\ndelete and re-import if necessary!"),false);
		}
	}
}

if(live_enabled)
function live_cache_data_create(){
	var l_this=array_create(1);
	/// @typedef {tuple<program:gml_program>} live_cache_data
	l_this[@0]=undefined;
	return l_this;
}

if(live_enabled)
function gml_link(l_value,l_next)constructor{
	static h_value=undefined; /// @is {T}
	static h_next=undefined; /// @is {gml_link<T>}
	self.h_value=l_value;
	self.h_next=l_next;
	//
}

if(live_enabled)
function gml_stack_push(l_this1,l_v){
	var l_i=l_this1[0]+1;
	if(l_i>=array_length(l_this1))l_this1[@array_length(l_this1)*2]=0;
	l_this1[@l_i]=l_v;
	l_this1[@0]=l_i;
}

if(live_enabled)
function gml_stack_pop(l_this1){
	var l_i=l_this1[0];
	var l_r=l_this1[l_i];
	l_this1[@l_i]=0;
	l_this1[@0]=l_i-1;
	return l_r;
}

if(live_enabled)
function gml_stack_pop_multi(l_this1,l_n){
	var l_arr=[];
	var l_k=l_this1[0]-l_n;
	array_copy(l_arr,0,l_this1,l_k+1,l_n);
	array_copy(l_this1,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_k;
	return l_arr;
}

if(live_enabled)
function gml_stack_discard(l_this1){
	var l_i=l_this1[0];
	l_this1[@l_i]=0;
	l_this1[@0]=l_i-1;
}

if(live_enabled)
function gml_stack_discard_multi(l_this1,l_n){
	var l_i=l_this1[0]-l_n;
	array_copy(l_this1,l_i+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_i;
}

if(live_enabled)
function gml_action_list_print_action_get_func_name(l_func){
	if(is_method(l_func))return script_get_name(method_get_index(l_func));
	if(is_numeric(l_func)&&script_exists(l_func))return script_get_name(l_func);
	return gml_std_Std_stringify(l_func);
}

if(live_enabled)
function gml_action_list_print_action(l_act){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
	var l_r="L"+string(l_pos.h_row)+"\tc"+string(l_pos.h_col)+"\t"+gml_std_Type_enumConstructor(l_act);
	switch(l_act.__enumIndex__){
		case 49:return l_r+"("+l_act.h_script.h_name+", "+string(l_act.h_argc)+")";
		case 9:return l_r+"("+gml_std_gml_internal_ArrayImpl_join(l_act.h_fields,",")+")";
		case 29:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act.h_f)+"\", \""+gml_action_list_print_action_get_func_name(l_act.h_ch)+"\")";
		case 28:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act.h_f)+"\")";
		case 52:
			var l_args1=l_act.h_args;
			l_r+="(\""+gml_action_list_print_action_get_func_name(l_act.h_func)+"\", "+string(l_act.h_argc)+", [";
			var l_sep=false;
			var l__g=0;
			while(l__g<array_length(l_args1)){
				var l_f=l_args1[l__g];
				l__g++;
				if(l_sep)l_r+=","; else l_sep=true;
				l_r+=script_get_name(l_f);
			}
			l_r+="], "+script_get_name(l_act.h_rest)+(", "+gml_std_Std_stringify(l_act.h_inst)+", "+(string(l_act.h_out))+")");
			return l_r;
	}
	var l_argc=gml_std_haxe_enum_tools_getParameterCount(l_act);
	if(l_argc>1){
		l_r+="(";
		var l_k=1;
		for(var l__g1=l_argc;l_k<l__g1;l_k++){
			if(l_k>1)l_r+=", ";
			var l_v=gml_std_haxe_enum_tools_getParameter(l_act,l_k);
			if(is_numeric(l_v)){
				l_r+=gml_std_Std_stringify(l_v);
			} else if(is_string(l_v)){
				l_r+="\""+gml_std_Std_stringify(l_v)+"\"";
			} else if(l_v==undefined){
				l_r+="null";
			} else l_r+=gml_std_Std_stringify(l_v);
		}
		l_r+=")";
	}
	return l_r;
}

if(live_enabled)
function gml_action_list_print(l_this1){
	var l_r="";
	var l_i=0;
	for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
		var l_act=ds_list_find_value(l_this1,l_i);
		if(l_i>0)l_r+="\n";
		l_r+=string(l_i)+"\t"+gml_action_list_print_action(l_act);
	}
	return l_r;
}

if(live_enabled)
function gml_thread_scope(l_actions,l_offset,l_args1,l_locals,l_self1,l_other1,l_next)constructor{
	static h_actions=undefined; /// @is {gml_action_list}
	static h_offset=undefined; /// @is {int}
	static h_args=undefined; /// @is {array<any>}
	static h_locals=undefined; /// @is {array<any>}
	static h_stack=undefined; /// @is {gml_stack<any>}
	static h_inst=undefined; /// @is {gml_stack<any>}
	static h_with=undefined; /// @is {gml_with_scope}
	static h_xhdl=undefined; /// @is {gml_link<int>}
	static h_program=undefined; /// @is {gml_program}
	static h_next=undefined; /// @is {gml_thread_scope}
	self.h_xhdl=undefined;
	self.h_with=undefined;
	self.h_stack=array_create(16);
	self.h_actions=l_actions;
	self.h_offset=l_offset;
	self.h_args=l_args1;
	self.h_locals=l_locals;
	self.h_inst=[2,l_other1,l_self1];
	self.h_next=l_next;
	static __class__=mt_gml_thread_scope;
}

if(live_enabled)
function gml_type_check_init(){
	var l_r=new haxe_ds_string_map();
	variable_struct_set(l_r.h_obj,"any",gml_type_check_any);
	variable_struct_set(l_r.h_obj,"bool",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"number",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"?number",gml_type_check_z_number);
	variable_struct_set(l_r.h_obj,"float",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"?float",gml_type_check_z_number);
	variable_struct_set(l_r.h_obj,"real",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"?real",gml_type_check_z_number);
	variable_struct_set(l_r.h_obj,"color",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"date",gml_type_check_number);
	variable_struct_set(l_r.h_obj,"int",gml_type_check_int);
	variable_struct_set(l_r.h_obj,"index",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"id",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"sprite",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"background",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"sound",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"font",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"script",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"shader",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"timeline",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"object",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"room",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"buffer",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"list",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"grid",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"string",gml_type_check_string);
	variable_struct_set(l_r.h_obj,"?string",gml_type_check_z_string);
	variable_struct_set(l_r.h_obj,"array",gml_type_check_array);
	variable_struct_set(l_r.h_obj,"?array",gml_type_check_z_array);
	variable_struct_set(l_r.h_obj,"sprite",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"background",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"sound",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"font",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"path",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"timeline",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"script",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"object",gml_type_check_index);
	variable_struct_set(l_r.h_obj,"room",gml_type_check_index);
	return l_r;
}

if(live_enabled)
function gml_type_check_any(l_v){
	return "";
}

if(live_enabled)
function gml_type_check_number(l_v){
	if(is_numeric(l_v))return "";
	return "Expected a number";
}

if(live_enabled)
function gml_type_check_int(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an integer";
}

if(live_enabled)
function gml_type_check_index(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an index";
}

if(live_enabled)
function gml_type_check_string(l_v){
	if(is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string";
}

if(live_enabled)
function gml_type_check_array(l_v){
	if(is_array(l_v))return "";
	return "Expected an array";
}

if(live_enabled)
function gml_type_check_z_number(l_v){
	if(l_v==undefined||is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected a number or null";
}

if(live_enabled)
function gml_type_check_z_string(l_v){
	if(l_v==undefined||is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string or null";
}

if(live_enabled)
function gml_type_check_z_array(l_v){
	if(l_v==undefined||is_array(l_v))return "";
	return "Expected an array or null";
}

if(live_enabled)
function gml_value_get_type(l_this1){
	if(l_this1==undefined){
		return "undefined";
	} else if(is_numeric(l_this1)){
		return "number";
	} else if(is_string(l_this1)){
		return "string";
	} else if(is_struct(l_this1)){
		return "struct";
	} else if(is_array(l_this1)){
		return "array";
	} else return typeof(l_this1);
}

if(live_enabled)
function gml_value_print_rec(l_v,l_z){
	var l_r,l_i,l_n;
	var l_id=gml_value_print_num++;
	if(l_v==undefined){
		return "undefined";
	} else if(is_numeric(l_v)){
		l_r=string_format(l_v,0,15);
		l_n=string_pos(".",l_r);
		if(l_n>0){
			for(l_i=string_byte_length(l_r);l_i>l_n;l_i--){
				if(string_byte_at(l_r,l_i)!=48)return string_copy(l_r,1,l_i);
			}
			return string_copy(l_r,1,l_n-1);
		} else return l_r;
	} else if(is_string(l_v)){
		return "\""+l_v+"\"";
	} else if(is_array(l_v)){
		l_r=ds_map_find_value(gml_value_print_refs,l_v);
		if(l_r!=undefined)return l_r;
		ds_map_set(gml_value_print_refs,l_v,"@"+string(l_id));
		l_n=array_length(l_v);
		if(l_n>0){
			if(++l_z<=8){
				l_r="["+gml_value_print_rec(l_v[0],l_z);
				for(l_i=1;l_i<l_n;l_i++){
					l_r+=", "+gml_value_print_rec(l_v[l_i],l_z);
				}
				return l_r+"]";
			} else return "[...]";
		} else return "[]";
	} else if(instanceof(l_v)=="instance"){
		var l_q=l_v;
		return "instance#"+string(l_q.id)+"("+object_get_name(l_q.object_index)+")";
	} else return gml_std_Std_stringify(l_v);
}

if(live_enabled)
function gml_value_print(l_this1){
	ds_map_clear(gml_value_print_refs);
	gml_value_print_num=0;
	var l_r=gml_value_print_rec(l_this1,0);
	ds_map_clear(gml_value_print_refs);
	return l_r;
}

if(live_enabled)
function gml_value_dump(l_this1){
	return "`"+gml_value_print(l_this1)+"` ("+gml_value_get_type(l_this1)+")";
}

if(live_enabled)
function gml_value_list_copy(l_this1){
	var l_n=array_length(l_this1);
	var l_r=array_create(l_n);
	array_copy(l_r,0,l_this1,0,l_n);
	return l_r;
}

if(live_enabled)
function gml_value_list_pad_to_size_with_null(l_this1,l_newSize){
	var l_curSize=array_length(l_this1);
	if(l_curSize<l_newSize){
		array_resize(l_this1,l_newSize);
		while(l_curSize<l_newSize){
			l_this1[@l_curSize]=undefined;
			l_curSize++;
		}
	}
}

if(live_enabled)
function gml_with_scope(l_data,l_nxt)constructor{
	static h_index=undefined; /// @is {int}
	static h_length=undefined; /// @is {int}
	static h_array=undefined; /// @is {array<any>}
	static h_next=undefined; /// @is {gml_with_scope}
	static h_data=undefined; /// @is {vm_GmlWithData}
	self.h_index=0;
	self.h_data=l_data;
	self.h_length=l_data.length;
	self.h_array=l_data.items;
	self.h_next=l_nxt;
	static __class__=mt_gml_with_scope;
}

if(live_enabled)
function gml_with_scope_copy(l_q){
	if(l_q==undefined)return undefined;
	var l_q_data=l_q.h_data;
	l_q_data.refc++;
	var l_r=new gml_with_scope(l_q_data,gml_with_scope_copy(l_q.h_next));
	l_r.h_index=l_q.h_index;
	return l_r;
}

if(live_enabled)
function gml_with_scope_destroy(l_q){
	while(l_q!=undefined){
		vm__gml_with_data_gml_with_data_impl__destroy(l_q.h_data);
		l_q=l_q.h_next;
	}
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__init(){
	var l_pools=array_create(5,undefined);
	l_pools[@0]=ds_stack_create();
	l_pools[@1]=ds_stack_create();
	l_pools[@2]=ds_stack_create();
	l_pools[@3]=ds_stack_create();
	l_pools[@4]=ds_stack_create();
	return l_pools;
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__alloc(l_size){
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)return array_create(l_size);
	var l_pool=vm__gml_with_data_gml_with_data_impl__pools[l_sln];
	if(ds_stack_empty(l_pool))return array_create((power(10,l_sln)|0)); else return ds_stack_pop(l_pool);
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__destroy(l_this1){
	if(--l_this1.refc!=0)return 0;
	var l_size=l_this1.length;
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)return 0;
	ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln],l_this1.items);
}

if(live_enabled)/// @interface {gml_thread_proc_result}
function mc_gml_thread_proc_result()constructor{
	/// @hint {array} gml_thread_proc_result:__enumParams__
	/// @hint {int} gml_thread_proc_result:__enumIndex__
	static getIndex=method(undefined,gml_std_enum_getIndex);
	static toString=method(undefined,gml_std_enum_toString);
	static __enum__=mt_gml_thread_proc_result;
}

if(live_enabled)/// @implements {gml_thread_proc_result}
function mc_gml_thread_proc_result_ok():mc_gml_thread_proc_result()constructor{
	static __enumParams__=[];
	static __enumIndex__=0;
}
globalvar gml_thread_proc_result_ok;if(live_enabled)gml_thread_proc_result_ok=new mc_gml_thread_proc_result_ok(); /// @is {gml_thread_proc_result}

if(live_enabled)/// @implements {gml_thread_proc_result}
function mc_gml_thread_proc_result_error():mc_gml_thread_proc_result()constructor{
	static __enumParams__=[];
	static __enumIndex__=1;
}
globalvar gml_thread_proc_result_error;if(live_enabled)gml_thread_proc_result_error=new mc_gml_thread_proc_result_error(); /// @is {gml_thread_proc_result}

if(live_enabled)/// @implements {gml_thread_proc_result}
function mc_gml_thread_proc_result_sync_pos():mc_gml_thread_proc_result()constructor{
	static __enumParams__=[];
	static __enumIndex__=2;
}
globalvar gml_thread_proc_result_sync_pos;if(live_enabled)gml_thread_proc_result_sync_pos=new mc_gml_thread_proc_result_sync_pos(); /// @is {gml_thread_proc_result}

if(live_enabled)/// @implements {gml_thread_proc_result}
function mc_gml_thread_proc_result_sync_scope():mc_gml_thread_proc_result()constructor{
	static __enumParams__=[];
	static __enumIndex__=3;
}
globalvar gml_thread_proc_result_sync_scope;if(live_enabled)gml_thread_proc_result_sync_scope=new mc_gml_thread_proc_result_sync_scope(); /// @is {gml_thread_proc_result}

globalvar gml_builder_build_line_is_stat; /// @is {bool}
globalvar gml_builder_build_line_is_expr; /// @is {bool}
globalvar gml_compile_error_text; /// @is {string}
globalvar gml_compile_error_pos; /// @is {gml_pos}
globalvar gml_compile_curr_script; /// @is {gml_script}
globalvar gml_compile_curr_program; /// @is {gml_program}
globalvar gml_compile_curr_break; /// @is {int}
if(live_enabled)gml_compile_curr_break=-1;
globalvar gml_compile_curr_continue; /// @is {int}
if(live_enabled)gml_compile_curr_continue=-1;
globalvar gml_parser_has_func_literal; /// @is {bool}
if(live_enabled)gml_parser_has_func_literal=false;
globalvar gml_parser_has_constructor; /// @is {bool}
if(live_enabled)gml_parser_has_constructor=false;
globalvar gml_parser_has_try_catch; /// @is {bool}
if(live_enabled)gml_parser_has_try_catch=true;
globalvar gml_parser_gml23; /// @is {bool}
if(live_enabled)gml_parser_gml23=false;
globalvar gml_parser_error_text; /// @is {string}
globalvar gml_parser_error_pos; /// @is {gml_pos}
globalvar gml_parser_src_buf; /// @is {buffer}
if(live_enabled)gml_parser_src_buf=buffer_create(1024,buffer_fast,1);
globalvar gml_parser_str_buf; /// @is {buffer}
if(live_enabled)gml_parser_str_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_buf_sub_buf; /// @is {buffer}
if(live_enabled)gml_parser_buf_sub_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_tem_row; /// @is {int}
globalvar gml_parser_tem_row_start; /// @is {int}
globalvar gml_parser_tem_end; /// @is {int}
globalvar gml_parser_tokens_found; /// @is {int}
globalvar gml_program_seek_inst; /// @is {gml_program}
globalvar gml_program_seek_func; /// @is {function<ast_GmlNode; tools_ArrayList<ast_GmlNode>; bool>}
globalvar gml_program_seek_script; /// @is {gml_script}
globalvar ast_gml_node_tools_ni_concat_pos_pos; /// @is {gml_pos}
globalvar gml_script_index_offset; /// @is {int}
if(live_enabled)gml_script_index_offset=0;
globalvar gml_func_sig; /// @is {tools_Dictionary<string>}
if(live_enabled)gml_func_sig=new haxe_ds_string_map();
globalvar gml_func_arg0; /// @is {tools_Dictionary<int>}
if(live_enabled)gml_func_arg0=new haxe_ds_string_map();
globalvar gml_func_arg1; /// @is {tools_Dictionary<int>}
if(live_enabled)gml_func_arg1=new haxe_ds_string_map();
globalvar gml_func_args; /// @is {tools_Dictionary<array<gml_type_check>>}
if(live_enabled)gml_func_args=new haxe_ds_string_map();
globalvar gml_func_rest; /// @is {tools_Dictionary<gml_type_check>}
if(live_enabled)gml_func_rest=new haxe_ds_string_map();
globalvar gml_func_eval; /// @is {tools_Dictionary<bool>}
if(live_enabled)gml_func_eval=new haxe_ds_string_map();
globalvar gml_func_script; /// @is {tools_Dictionary<any>}
if(live_enabled)gml_func_script=new haxe_ds_string_map();
globalvar gml_func_script_id; /// @is {tools_Dictionary<script>}
if(live_enabled)gml_func_script_id=new haxe_ds_string_map();
globalvar gml_inst_data; /// @is {tools_Dictionary<data_GmlFuncFlags>}
if(live_enabled)gml_inst_data=new haxe_ds_string_map();
globalvar gml_var_flags; /// @is {tools_Dictionary<int>}
if(live_enabled)gml_var_flags=new haxe_ds_string_map();
globalvar gml_var_refs; /// @is {tools_Dictionary<any>}
if(live_enabled)gml_var_refs=new haxe_ds_string_map();
globalvar gml_var_types; /// @is {tools_Dictionary<gml_type_check>}
if(live_enabled)gml_var_types=new haxe_ds_string_map();
globalvar gml_const_map; /// @is {tools_Dictionary<bool>}
if(live_enabled)gml_const_map=new haxe_ds_string_map();
globalvar gml_const_val; /// @is {tools_Dictionary<any>}
if(live_enabled)gml_const_val=new haxe_ds_string_map();
globalvar gml_asset_index; /// @is {tools_Dictionary<int>}
if(live_enabled)gml_asset_index=new haxe_ds_string_map();
globalvar gml_enum_map; /// @is {tools_Dictionary<gml_enum>}
if(live_enabled)gml_enum_map=new haxe_ds_string_map();
globalvar gml_seek_eval_error_text; /// @is {string}
globalvar gml_seek_eval_error_pos; /// @is {gml_pos}
globalvar gml_seek_eval_eval_rec; /// @is {bool}
globalvar gml_seek_eval_eval_thread; /// @is {gml_thread}
if(live_enabled)gml_seek_eval_eval_thread=undefined;
globalvar gml_seek_eval_eval_actions; /// @is {gml_action_list}
if(live_enabled)gml_seek_eval_eval_actions=ds_list_create();
globalvar gml_seek_eval_invalid_value; /// @is {any}
if(live_enabled)gml_seek_eval_invalid_value=[];
globalvar gml_seek_set_op_resolve_set_op_safe; /// @is {bool}
globalvar gml_seek_set_op_resolve_set_op_xw; /// @is {ast_GmlNode}
globalvar gml_std_gml_internal_ArrayImpl_join_buf; /// @is {buffer}
if(live_enabled)gml_std_gml_internal_ArrayImpl_join_buf=undefined;
globalvar gml_std_haxe_boot_isJS; /// @is {bool}
if(live_enabled)gml_std_haxe_boot_isJS=os_browser!=browser_not_a_browser;
globalvar live_async_http_1_found; /// @is {tools_Dictionary<bool>}
if(live_enabled)live_async_http_1_found=new haxe_ds_string_map();
globalvar live_async_http_1_acc; /// @is {sf_ds_ArrayList<gml_source>}
if(live_enabled)live_async_http_1_acc=ds_list_create();
globalvar live_gmlive_patcher_error_text; /// @is {string}
globalvar live_shader_updated; /// @is {function<shader; string; string; void>}
if(live_enabled)live_shader_updated=live_shader_updated_default;
globalvar live_shader_live_shaders; /// @is {ds_map<shader; bool>}
if(live_enabled)live_shader_live_shaders=ds_map_create();
globalvar live_shader_live_shaders_start; /// @is {ds_list<shader>}
if(live_enabled)live_shader_live_shaders_start=ds_list_create();
globalvar live_shader_live_shaders_stop; /// @is {ds_list<shader>}
if(live_enabled)live_shader_live_shaders_stop=ds_list_create();
globalvar live_is_ready; /// @is {bool}
if(live_enabled)live_is_ready=false;
globalvar live_request_url; /// @is {string}
if(live_enabled)live_request_url=undefined;
globalvar live_request_guid; /// @is {live_yy_YyGUID}
if(live_enabled)live_request_guid=undefined;
globalvar live_request_id; /// @is {http}
if(live_enabled)live_request_id=undefined;
globalvar live_config; /// @is {string}
if(live_enabled)live_config=undefined;
globalvar live_runtime_version; /// @is {string}
if(live_enabled)live_runtime_version="";
globalvar live_build_date; /// @is {number}
if(live_enabled)live_build_date=0;
globalvar live_request_time; /// @is {number}
if(live_enabled)live_request_time=0;
globalvar live_request_rate; /// @is {number}
if(live_enabled)live_request_rate=1;
globalvar live_request_password; /// @is {string}
if(live_enabled)live_request_password="";
globalvar live_result; /// @is {any}
if(live_enabled)live_result="";
globalvar live_directory; /// @is {string}
globalvar live_live_map; /// @is {tools_Dictionary<live_cache_data>}
if(live_enabled)live_live_map=new haxe_ds_string_map();
globalvar live_live_enums; /// @is {tools_Dictionary<gml_source>}
if(live_enabled)live_live_enums=new haxe_ds_string_map();
globalvar live_live_macros; /// @is {tools_Dictionary<gml_source>}
if(live_enabled)live_live_macros=new haxe_ds_string_map();
globalvar live_live_globals; /// @is {gml_source}
if(live_enabled)live_live_globals=undefined;
globalvar live_live_sprites; /// @is {ds_map<sprite; bool>}
if(live_enabled)live_live_sprites=ds_map_create();
globalvar live_live_sprites_start; /// @is {sf_ds_ArrayList<sprite>}
if(live_enabled)live_live_sprites_start=ds_list_create();
globalvar live_live_sprites_stop; /// @is {sf_ds_ArrayList<sprite>}
if(live_enabled)live_live_sprites_stop=ds_list_create();
globalvar live_live_room; /// @is {room}
if(live_enabled)live_live_room=-1;
globalvar live_live_room_data; /// @is {ds_map<room; string>}
if(live_enabled)live_live_room_data=ds_map_create();
globalvar live_live_rooms; /// @is {ds_map<room; bool>}
if(live_enabled)live_live_rooms=ds_map_create();
globalvar live_live_rooms_start; /// @is {sf_ds_ArrayList<room>}
if(live_enabled)live_live_rooms_start=ds_list_create();
globalvar live_live_rooms_stop; /// @is {sf_ds_ArrayList<room>}
if(live_enabled)live_live_rooms_stop=ds_list_create();
globalvar live_blank_object; /// @is {object}
if(live_enabled)live_blank_object=-1;
globalvar live_blank_room; /// @is {room}
if(live_enabled)live_blank_room=-1;
globalvar live_temp_path; /// @is {string}
if(live_enabled)live_temp_path=live_temp_path_init();
globalvar live_log_script; /// @is {function<string; live_GMLiveLogLevel; void>}
if(live_enabled)live_log_script=live_log_impl;
globalvar live_update_script; /// @is {function<string; string; string; void>}
if(live_enabled)live_update_script=live_update_script_impl;
globalvar live_name; /// @is {string}
if(live_enabled)live_name=undefined;
globalvar live_custom_self; /// @is {any}
if(live_enabled)live_custom_self=undefined;
globalvar live_custom_other; /// @is {any}
if(live_enabled)live_custom_other=undefined;
globalvar live_room_updated; /// @is {function<room; void>}
if(live_enabled)live_room_updated=live_room_updated_impl;
globalvar live_room_loader_object_cache; /// @is {ds_map<string; object>}
if(live_enabled)live_room_loader_object_cache=ds_map_create();
globalvar live_room_loader_sprite_cache; /// @is {ds_map<string; sprite>}
if(live_enabled)live_room_loader_sprite_cache=ds_map_create();
globalvar live_room_loader_use_physics; /// @is {bool}
if(live_enabled)live_room_loader_use_physics=false;
globalvar live_room_loader_room_x; /// @is {number}
if(live_enabled)live_room_loader_room_x=0;
globalvar live_room_loader_room_y; /// @is {number}
if(live_enabled)live_room_loader_room_y=0;
globalvar live_room_loader_apply_backgrounds; /// @is {bool}
if(live_enabled)live_room_loader_apply_backgrounds=true;
globalvar live_room_loader_apply_instances; /// @is {bool}
if(live_enabled)live_room_loader_apply_instances=true;
globalvar live_room_loader_apply_tiles; /// @is {bool}
if(live_enabled)live_room_loader_apply_tiles=true;
globalvar live_room_loader_apply_views; /// @is {bool}
if(live_enabled)live_room_loader_apply_views=true;
globalvar live_room_loader_apply_settings; /// @is {bool}
if(live_enabled)live_room_loader_apply_settings=true;
globalvar live_room_loader_apply_sprites; /// @is {bool}
if(live_enabled)live_room_loader_apply_sprites=true;
globalvar live_room_loader_apply_filters; /// @is {bool}
if(live_enabled)live_room_loader_apply_filters=true;
globalvar live_room_loader_inst_map_gml; /// @is {ds_map<string; instance>}
if(live_enabled)live_room_loader_inst_map_gml=ds_map_create();
globalvar live_room_loader_inst_map_yy; /// @is {ds_map<string; live_yy_YyRoomInstance>}
if(live_enabled)live_room_loader_inst_map_yy=ds_map_create();
globalvar gml_stack_fill_value_arr; /// @is {array<any>}
if(live_enabled)gml_stack_fill_value_arr=array_create(1024,0);
globalvar gml_thread_allow_exceptions; /// @is {bool}
if(live_enabled)gml_thread_allow_exceptions=false;
globalvar gml_thread_current; /// @is {gml_thread}
if(live_enabled)gml_thread_current=undefined;
globalvar vm_gml_thread_exec_slice_funcs; /// @is {array<function<any; array<any>; int; any>>}
/// @typedef {array} gml_thread_status
globalvar gml_thread_status_none;gml_thread_status_none=[gml_thread_status.none]; /// @is {gml_thread_status}
globalvar gml_thread_status_running;gml_thread_status_running=[gml_thread_status.running]; /// @is {gml_thread_status}
globalvar gml_thread_status_waiting;gml_thread_status_waiting=[gml_thread_status.waiting]; /// @is {gml_thread_status}
globalvar gml_thread_status_done;gml_thread_status_done=[gml_thread_status.done]; /// @is {gml_thread_status}
globalvar gml_thread_status_error;gml_thread_status_error=[gml_thread_status.error]; /// @is {gml_thread_status}
globalvar gml_type_check_map; /// @is {tools_Dictionary<gml_type_check>}
if(live_enabled)gml_type_check_map=gml_type_check_init();
globalvar gml_value_print_refs; /// @is {ds_map<any; string>}
if(live_enabled)gml_value_print_refs=ds_map_create();
globalvar gml_value_print_num; /// @is {int}
if(live_enabled)gml_value_print_num=0;
globalvar vm__gml_with_data_gml_with_data_impl__pools; /// @is {array<vm__GmlWithData_GmlWithPool>}
if(live_enabled)vm__gml_with_data_gml_with_data_impl__pools=vm__gml_with_data_gml_with_data_impl__init();
globalvar vm_impl_gml_thread_construct_funcs; /// @is {array<function<any; array<any>; int; any>>}
globalvar vm_group_call_call_func_result; /// @is {any}
globalvar vm_group_call_call_func_status; /// @is {gml_thread_proc_result}
globalvar vm_group_op_funcs; /// @is {array<function<any; any; any>>}
globalvar vm_v2_gml_thread_v2_handlers; /// @is {array<vm_v2_GmlThreadProc>}

if(live_enabled){
	live_validate_scripts();
	gml_parser_set_gml23(true);
	vm_gml_thread_exec_slice_funcs=vm_gml_thread_exec_slice_init();
	vm_impl_gml_thread_construct_funcs=vm_impl_gml_thread_construct_init();
	vm_group_op_funcs=vm_group_op_impl();
	vm_v2_gml_thread_v2_handlers=vm_v2_gml_thread_v2_handlers_init();
	live_preinit_api();
	live_preinit_project();
}

/// @typedef {function<th:gml_thread; act:gml_action; gml_thread_proc_result>} vm_v2_GmlThreadProc
/// @typedef {ds_stack<array<any>>} vm__GmlWithData_GmlWithPool
/// @typedef {any} vm_GmlWithData
/// @typedef {ds_map<K; V>} vm_GmlValueMap
/// @typedef {function<any; string>} gml_type_check
/// @typedef {any} vm_GmlThreadTimeTag
/// @typedef {ds_list<T>} gml_action_list
/// @typedef {array} gml_stack
/// @typedef {haxe_imap<K; V>} tools_Dictionary
/// @typedef {ds_list} tools_ArrayList
/// @typedef {ds_list<T>} sf_ds_ArrayList
/// @typedef {any} live_yy_YyRoomInstance
/// @typedef {string} live_yy_YyGUID
/// @typedef {int} live_GMLiveLogLevel
/// @typedef {int} data_GmlFuncFlags
/// @typedef {int} ast_GmlUnOp
/// @typedef {int} gml_op
/// @typedef {any} ast_GmlNodeCase
/// @typedef {gml_pos} ast_GmlNodeData
/// @typedef {gml_node} ast_GmlNode
/// @typedef {int} ast_GmlKeyword