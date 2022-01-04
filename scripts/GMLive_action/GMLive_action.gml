// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.

// VM "instructions"
if(live_enabled)/// @interface {gml_action}
function mc_gml_action()constructor{
	/// @hint {array} gml_action:__enumParams__
	/// @hint {int} gml_action:__enumIndex__
	static getIndex=method(undefined,gml_std_enum_getIndex);
	static toString=method(undefined,gml_std_enum_toString);
	static __enum__=mt_gml_action;
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_discard():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=0;
}

if(live_enabled)
function gml_action_discard(l_h_d){
	var l_this=new mc_gml_action_discard();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_dup():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=1;
}

if(live_enabled)
function gml_action_dup(l_h_d){
	var l_this=new mc_gml_action_dup();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_dup2x():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=2;
}

if(live_enabled)
function gml_action_dup2x(l_h_d){
	var l_this=new mc_gml_action_dup2x();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_dup3x():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=3;
}

if(live_enabled)
function gml_action_dup3x(l_h_d){
	var l_this=new mc_gml_action_dup3x();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_dup_in():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_z
	static __enumParams__=["h_d","h_z"];
	static __enumIndex__=4;
}

if(live_enabled)
function gml_action_dup_in(l_h_d,l_h_z){
	var l_this=new mc_gml_action_dup_in();
	l_this.h_d=l_h_d;
	l_this.h_z=l_h_z;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_undefined():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=5;
}

if(live_enabled)
function gml_action_undefined(l_h_d){
	var l_this=new mc_gml_action_undefined();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_number():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {number} :h_f
	static __enumParams__=["h_d","h_f"];
	static __enumIndex__=6;
}

if(live_enabled)
function gml_action_number(l_h_d,l_h_f){
	var l_this=new mc_gml_action_number();
	l_this.h_d=l_h_d;
	l_this.h_f=l_h_f;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_cstring():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_s
	static __enumParams__=["h_d","h_s"];
	static __enumIndex__=7;
}

if(live_enabled)
function gml_action_cstring(l_h_d,l_h_s){
	var l_this=new mc_gml_action_cstring();
	l_this.h_d=l_h_d;
	l_this.h_s=l_h_s;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_array_decl():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_size
	static __enumParams__=["h_d","h_size"];
	static __enumIndex__=8;
}

if(live_enabled)
function gml_action_array_decl(l_h_d,l_h_size){
	var l_this=new mc_gml_action_array_decl();
	l_this.h_d=l_h_d;
	l_this.h_size=l_h_size;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_object_decl():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {array<any>} :h_fields
	static __enumParams__=["h_d","h_fields"];
	static __enumIndex__=9;
}

if(live_enabled)
function gml_action_object_decl(l_h_d,l_h_fields){
	var l_this=new mc_gml_action_object_decl();
	l_this.h_d=l_h_d;
	l_this.h_fields=l_h_fields;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_const():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_v
	static __enumParams__=["h_d","h_v"];
	static __enumIndex__=10;
}

if(live_enabled)
function gml_action_const(l_h_d,l_h_v){
	var l_this=new mc_gml_action_const();
	l_this.h_d=l_h_d;
	l_this.h_v=l_h_v;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_self():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=11;
}

if(live_enabled)
function gml_action_self(l_h_d){
	var l_this=new mc_gml_action_self();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_other():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=12;
}

if(live_enabled)
function gml_action_other(l_h_d){
	var l_this=new mc_gml_action_other();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_local():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_i"];
	static __enumIndex__=13;
}

if(live_enabled)
function gml_action_local(l_h_d,l_h_i){
	var l_this=new mc_gml_action_local();
	l_this.h_d=l_h_d;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_local_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_i"];
	static __enumIndex__=14;
}

if(live_enabled)
function gml_action_local_set(l_h_d,l_h_i){
	var l_this=new mc_gml_action_local_set();
	l_this.h_d=l_h_d;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_local_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_o","h_i"];
	static __enumIndex__=15;
}

if(live_enabled)
function gml_action_local_aop(l_h_d,l_h_o,l_h_i){
	var l_this=new mc_gml_action_local_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_global():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_fd"];
	static __enumIndex__=16;
}

if(live_enabled)
function gml_action_global(l_h_d,l_h_fd){
	var l_this=new mc_gml_action_global();
	l_this.h_d=l_h_d;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_global_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_fd"];
	static __enumIndex__=17;
}

if(live_enabled)
function gml_action_global_set(l_h_d,l_h_fd){
	var l_this=new mc_gml_action_global_set();
	l_this.h_d=l_h_d;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_global_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_o","h_fd"];
	static __enumIndex__=18;
}

if(live_enabled)
function gml_action_global_aop(l_h_d,l_h_o,l_h_fd){
	var l_this=new mc_gml_action_global_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_field():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_fd"];
	static __enumIndex__=19;
}

if(live_enabled)
function gml_action_field(l_h_d,l_h_fd){
	var l_this=new mc_gml_action_field();
	l_this.h_d=l_h_d;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_field_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_fd"];
	static __enumIndex__=20;
}

if(live_enabled)
function gml_action_field_set(l_h_d,l_h_fd){
	var l_this=new mc_gml_action_field_set();
	l_this.h_d=l_h_d;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_field_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {string} :h_fd
	static __enumParams__=["h_d","h_o","h_fd"];
	static __enumIndex__=21;
}

if(live_enabled)
function gml_action_field_aop(l_h_d,l_h_o,l_h_fd){
	var l_this=new mc_gml_action_field_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_fd=l_h_fd;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=22;
}

if(live_enabled)
function gml_action_index(l_h_d){
	var l_this=new mc_gml_action_index();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=23;
}

if(live_enabled)
function gml_action_index_set(l_h_d){
	var l_this=new mc_gml_action_index_set();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	static __enumParams__=["h_d","h_o"];
	static __enumIndex__=24;
}

if(live_enabled)
function gml_action_index_aop(l_h_d,l_h_o){
	var l_this=new mc_gml_action_index_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index2d():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=25;
}

if(live_enabled)
function gml_action_index2d(l_h_d){
	var l_this=new mc_gml_action_index2d();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index2d_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=26;
}

if(live_enabled)
function gml_action_index2d_set(l_h_d){
	var l_this=new mc_gml_action_index2d_set();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_index2d_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	static __enumParams__=["h_d","h_o"];
	static __enumIndex__=27;
}

if(live_enabled)
function gml_action_index2d_aop(l_h_d,l_h_o){
	var l_this=new mc_gml_action_index2d_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_f
	static __enumParams__=["h_d","h_f"];
	static __enumIndex__=28;
}

if(live_enabled)
function gml_action_env(l_h_d,l_h_f){
	var l_this=new mc_gml_action_env();
	l_this.h_d=l_h_d;
	l_this.h_f=l_h_f;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_f
	/// @hint {gml_type_check} :h_ch
	static __enumParams__=["h_d","h_f","h_ch"];
	static __enumIndex__=29;
}

if(live_enabled)
function gml_action_env_set(l_h_d,l_h_f,l_h_ch){
	var l_this=new mc_gml_action_env_set();
	l_this.h_d=l_h_d;
	l_this.h_f=l_h_f;
	l_this.h_ch=l_h_ch;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {any} :h_f
	static __enumParams__=["h_d","h_o","h_f"];
	static __enumIndex__=30;
}

if(live_enabled)
function gml_action_env_aop(l_h_d,l_h_o,l_h_f){
	var l_this=new mc_gml_action_env_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_f=l_h_f;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env1d():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_f
	static __enumParams__=["h_d","h_f"];
	static __enumIndex__=31;
}

if(live_enabled)
function gml_action_env1d(l_h_d,l_h_f){
	var l_this=new mc_gml_action_env1d();
	l_this.h_d=l_h_d;
	l_this.h_f=l_h_f;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env1d_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_f
	/// @hint {gml_type_check} :h_ch
	static __enumParams__=["h_d","h_f","h_ch"];
	static __enumIndex__=32;
}

if(live_enabled)
function gml_action_env1d_set(l_h_d,l_h_f,l_h_ch){
	var l_this=new mc_gml_action_env1d_set();
	l_this.h_d=l_h_d;
	l_this.h_f=l_h_f;
	l_this.h_ch=l_h_ch;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_env1d_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {any} :h_f
	static __enumParams__=["h_d","h_o","h_f"];
	static __enumIndex__=33;
}

if(live_enabled)
function gml_action_env1d_aop(l_h_d,l_h_o,l_h_f){
	var l_this=new mc_gml_action_env1d_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_f=l_h_f;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ds_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {int} :h_argc
	/// @hint {any} :h_get
	/// @hint {any} :h_set
	/// @hint {bool} :h_out
	static __enumParams__=["h_d","h_o","h_argc","h_get","h_set","h_out"];
	static __enumIndex__=34;
}

if(live_enabled)
function gml_action_ds_aop(l_h_d,l_h_o,l_h_argc,l_h_get,l_h_set,l_h_out){
	var l_this=new mc_gml_action_ds_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_argc=l_h_argc;
	l_this.h_get=l_h_get;
	l_this.h_set=l_h_set;
	l_this.h_out=l_h_out;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_const():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_i"];
	static __enumIndex__=35;
}

if(live_enabled)
function gml_action_arg_const(l_h_d,l_h_i){
	var l_this=new mc_gml_action_arg_const();
	l_this.h_d=l_h_d;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_const_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_i"];
	static __enumIndex__=36;
}

if(live_enabled)
function gml_action_arg_const_set(l_h_d,l_h_i){
	var l_this=new mc_gml_action_arg_const_set();
	l_this.h_d=l_h_d;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_const_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_o","h_i"];
	static __enumIndex__=37;
}

if(live_enabled)
function gml_action_arg_const_aop(l_h_d,l_h_o,l_h_i){
	var l_this=new mc_gml_action_arg_const_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_index():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=38;
}

if(live_enabled)
function gml_action_arg_index(l_h_d){
	var l_this=new mc_gml_action_arg_index();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_index_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=39;
}

if(live_enabled)
function gml_action_arg_index_set(l_h_d){
	var l_this=new mc_gml_action_arg_index_set();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_index_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	static __enumParams__=["h_d","h_o"];
	static __enumIndex__=40;
}

if(live_enabled)
function gml_action_arg_index_aop(l_h_d,l_h_o){
	var l_this=new mc_gml_action_arg_index_aop();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_arg_count():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=41;
}

if(live_enabled)
function gml_action_arg_count(l_h_d){
	var l_this=new mc_gml_action_arg_count();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_add_int():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_i
	static __enumParams__=["h_d","h_i"];
	static __enumIndex__=42;
}

if(live_enabled)
function gml_action_add_int(l_h_d,l_h_i){
	var l_this=new mc_gml_action_add_int();
	l_this.h_d=l_h_d;
	l_this.h_i=l_h_i;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_equ_op():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=43;
}

if(live_enabled)
function gml_action_equ_op(l_h_d){
	var l_this=new mc_gml_action_equ_op();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_neq_op():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=44;
}

if(live_enabled)
function gml_action_neq_op(l_h_d){
	var l_this=new mc_gml_action_neq_op();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_concat():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=45;
}

if(live_enabled)
function gml_action_concat(l_h_d){
	var l_this=new mc_gml_action_concat();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_bin_op():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_o
	static __enumParams__=["h_d","h_o"];
	static __enumIndex__=46;
}

if(live_enabled)
function gml_action_bin_op(l_h_d,l_h_o){
	var l_this=new mc_gml_action_bin_op();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_un_op():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {ast_GmlUnOp} :h_o
	static __enumParams__=["h_d","h_o"];
	static __enumIndex__=47;
}

if(live_enabled)
function gml_action_un_op(l_h_d,l_h_o){
	var l_this=new mc_gml_action_un_op();
	l_this.h_d=l_h_d;
	l_this.h_o=l_h_o;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_in():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {bool} :h_not
	static __enumParams__=["h_d","h_not"];
	static __enumIndex__=48;
}

if(live_enabled)
function gml_action_in(l_h_d,l_h_not){
	var l_this=new mc_gml_action_in();
	l_this.h_d=l_h_d;
	l_this.h_not=l_h_not;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_call_script():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_script} :h_script
	/// @hint {int} :h_argc
	static __enumParams__=["h_d","h_script","h_argc"];
	static __enumIndex__=49;
}

if(live_enabled)
function gml_action_call_script(l_h_d,l_h_script,l_h_argc){
	var l_this=new mc_gml_action_call_script();
	l_this.h_d=l_h_d;
	l_this.h_script=l_h_script;
	l_this.h_argc=l_h_argc;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_call_script_id():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_argc
	static __enumParams__=["h_d","h_argc"];
	static __enumIndex__=50;
}

if(live_enabled)
function gml_action_call_script_id(l_h_d,l_h_argc){
	var l_this=new mc_gml_action_call_script_id();
	l_this.h_d=l_h_d;
	l_this.h_argc=l_h_argc;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_call_script_with_array():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=51;
}

if(live_enabled)
function gml_action_call_script_with_array(l_h_d){
	var l_this=new mc_gml_action_call_script_with_array();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_call_func():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {any} :h_func
	/// @hint {int} :h_argc
	/// @hint {array<gml_type_check>} :h_args
	/// @hint {gml_type_check} :h_rest
	/// @hint {data_GmlFuncFlags} :h_inst
	/// @hint {bool} :h_out
	static __enumParams__=["h_d","h_func","h_argc","h_args","h_rest","h_inst","h_out"];
	static __enumIndex__=52;
}

if(live_enabled)
function gml_action_call_func(l_h_d,l_h_func,l_h_argc,l_h_args,l_h_rest,l_h_inst,l_h_out){
	var l_this=new mc_gml_action_call_func();
	l_this.h_d=l_h_d;
	l_this.h_func=l_h_func;
	l_this.h_argc=l_h_argc;
	l_this.h_args=l_h_args;
	l_this.h_rest=l_h_rest;
	l_this.h_inst=l_h_inst;
	l_this.h_out=l_h_out;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_call_field():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_field
	/// @hint {int} :h_argc
	static __enumParams__=["h_d","h_field","h_argc"];
	static __enumIndex__=53;
}

if(live_enabled)
function gml_action_call_field(l_h_d,l_h_field,l_h_argc){
	var l_this=new mc_gml_action_call_field();
	l_this.h_d=l_h_d;
	l_this.h_field=l_h_field;
	l_this.h_argc=l_h_argc;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_construct():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_argc
	static __enumParams__=["h_d","h_argc"];
	static __enumIndex__=54;
}

if(live_enabled)
function gml_action_construct(l_h_d,l_h_argc){
	var l_this=new mc_gml_action_construct();
	l_this.h_d=l_h_d;
	l_this.h_argc=l_h_argc;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_func_literal():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_name
	static __enumParams__=["h_d","h_name"];
	static __enumIndex__=55;
}

if(live_enabled)
function gml_action_func_literal(l_h_d,l_h_name){
	var l_this=new mc_gml_action_func_literal();
	l_this.h_d=l_h_d;
	l_this.h_name=l_h_name;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_jump():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=56;
}

if(live_enabled)
function gml_action_jump(l_h_d,l_h_p){
	var l_this=new mc_gml_action_jump();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_jump_if():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=57;
}

if(live_enabled)
function gml_action_jump_if(l_h_d,l_h_p){
	var l_this=new mc_gml_action_jump_if();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_jump_unless():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=58;
}

if(live_enabled)
function gml_action_jump_unless(l_h_d,l_h_p){
	var l_this=new mc_gml_action_jump_unless();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_bool_and():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=59;
}

if(live_enabled)
function gml_action_bool_and(l_h_d,l_h_p){
	var l_this=new mc_gml_action_bool_and();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_bool_or():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=60;
}

if(live_enabled)
function gml_action_bool_or(l_h_d,l_h_p){
	var l_this=new mc_gml_action_bool_or();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_switch():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {vm_GmlValueMap<int>} :h_jumptable
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_jumptable","h_p"];
	static __enumIndex__=61;
}

if(live_enabled)
function gml_action_switch(l_h_d,l_h_jumptable,l_h_p){
	var l_this=new mc_gml_action_switch();
	l_this.h_d=l_h_d;
	l_this.h_jumptable=l_h_jumptable;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_switch_case():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=62;
}

if(live_enabled)
function gml_action_switch_case(l_h_d,l_h_p){
	var l_this=new mc_gml_action_switch_case();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_repeat_jump():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=63;
}

if(live_enabled)
function gml_action_repeat_jump(l_h_d,l_h_p){
	var l_this=new mc_gml_action_repeat_jump();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_repeat_pre():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=64;
}

if(live_enabled)
function gml_action_repeat_pre(l_h_d,l_h_p){
	var l_this=new mc_gml_action_repeat_pre();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_with_pre():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=65;
}

if(live_enabled)
function gml_action_with_pre(l_h_d){
	var l_this=new mc_gml_action_with_pre();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_with_next():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=66;
}

if(live_enabled)
function gml_action_with_next(l_h_d,l_h_p){
	var l_this=new mc_gml_action_with_next();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_with_post():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=67;
}

if(live_enabled)
function gml_action_with_post(l_h_d){
	var l_this=new mc_gml_action_with_post();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_break():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_lp
	static __enumParams__=["h_d","h_lp"];
	static __enumIndex__=68;
}

if(live_enabled)
function gml_action_break(l_h_d,l_h_lp){
	var l_this=new mc_gml_action_break();
	l_this.h_d=l_h_d;
	l_this.h_lp=l_h_lp;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_continue():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_lp
	static __enumParams__=["h_d","h_lp"];
	static __enumIndex__=69;
}

if(live_enabled)
function gml_action_continue(l_h_d,l_h_lp){
	var l_this=new mc_gml_action_continue();
	l_this.h_d=l_h_d;
	l_this.h_lp=l_h_lp;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_return():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=70;
}

if(live_enabled)
function gml_action_return(l_h_d){
	var l_this=new mc_gml_action_return();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_result():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=71;
}

if(live_enabled)
function gml_action_result(l_h_d){
	var l_this=new mc_gml_action_result();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_try():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_hdl
	static __enumParams__=["h_d","h_hdl"];
	static __enumIndex__=72;
}

if(live_enabled)
function gml_action_try(l_h_d,l_h_hdl){
	var l_this=new mc_gml_action_try();
	l_this.h_d=l_h_d;
	l_this.h_hdl=l_h_hdl;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_catch():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_v
	static __enumParams__=["h_d","h_v"];
	static __enumIndex__=73;
}

if(live_enabled)
function gml_action_catch(l_h_d,l_h_v){
	var l_this=new mc_gml_action_catch();
	l_this.h_d=l_h_d;
	l_this.h_v=l_h_v;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_finally():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_p
	static __enumParams__=["h_d","h_p"];
	static __enumIndex__=74;
}

if(live_enabled)
function gml_action_finally(l_h_d,l_h_p){
	var l_this=new mc_gml_action_finally();
	l_this.h_d=l_h_d;
	l_this.h_p=l_h_p;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_throw():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=75;
}

if(live_enabled)
function gml_action_throw(l_h_d){
	var l_this=new mc_gml_action_throw();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_wait():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=76;
}

if(live_enabled)
function gml_action_wait(l_h_d){
	var l_this=new mc_gml_action_wait();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_fork():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {bool} :h_out
	static __enumParams__=["h_d","h_out"];
	static __enumIndex__=77;
}

if(live_enabled)
function gml_action_fork(l_h_d,l_h_out){
	var l_this=new mc_gml_action_fork();
	l_this.h_d=l_h_d;
	l_this.h_out=l_h_out;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ensure_array_for_local():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {int} :h_ind
	static __enumParams__=["h_d","h_ind"];
	static __enumIndex__=78;
}

if(live_enabled)
function gml_action_ensure_array_for_local(l_h_d,l_h_ind){
	var l_this=new mc_gml_action_ensure_array_for_local();
	l_this.h_d=l_h_d;
	l_this.h_ind=l_h_ind;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ensure_array_for_global():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_name
	static __enumParams__=["h_d","h_name"];
	static __enumIndex__=79;
}

if(live_enabled)
function gml_action_ensure_array_for_global(l_h_d,l_h_name){
	var l_this=new mc_gml_action_ensure_array_for_global();
	l_this.h_d=l_h_d;
	l_this.h_name=l_h_name;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ensure_array_for_field():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {string} :h_field
	static __enumParams__=["h_d","h_field"];
	static __enumIndex__=80;
}

if(live_enabled)
function gml_action_ensure_array_for_field(l_h_d,l_h_field){
	var l_this=new mc_gml_action_ensure_array_for_field();
	l_this.h_d=l_h_d;
	l_this.h_field=l_h_field;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ensure_array_for_index():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=81;
}

if(live_enabled)
function gml_action_ensure_array_for_index(l_h_d){
	var l_this=new mc_gml_action_ensure_array_for_index();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_ensure_array_for_index2d():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=82;
}

if(live_enabled)
function gml_action_ensure_array_for_index2d(l_h_d){
	var l_this=new mc_gml_action_ensure_array_for_index2d();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_alarm():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=83;
}

if(live_enabled)
function gml_action_alarm(l_h_d){
	var l_this=new mc_gml_action_alarm();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_alarm_set():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	static __enumParams__=["h_d"];
	static __enumIndex__=84;
}

if(live_enabled)
function gml_action_alarm_set(l_h_d){
	var l_this=new mc_gml_action_alarm_set();
	l_this.h_d=l_h_d;
	return l_this
}

if(live_enabled)
/// @implements {gml_action}
function mc_gml_action_alarm_aop():mc_gml_action()constructor{
	/// @hint {gml_pos} :h_d
	/// @hint {gml_op} :h_op
	static __enumParams__=["h_d","h_op"];
	static __enumIndex__=85;
}

if(live_enabled)
function gml_action_alarm_aop(l_h_d,l_h_op){
	var l_this=new mc_gml_action_alarm_aop();
	l_this.h_d=l_h_d;
	l_this.h_op=l_h_op;
	return l_this
}
