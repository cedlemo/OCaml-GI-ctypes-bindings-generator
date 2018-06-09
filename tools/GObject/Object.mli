open Ctypes

type t
val t_typ : t typ

(*Not implemented g_object_new_with_properties type gType not implemented*)
(*Not implemented g_object_newv type gType not implemented*)
val compat_control :
  Unsigned.uint64 -> unit ptr option -> Unsigned.uint64
val interface_find_property :
  Type_interface.t structure ptr -> string -> Param_spec.t
val interface_install_property :
  Type_interface.t structure ptr -> Param_spec.t -> unit
(*Not implemented g_object_interface_list_properties return type C Array type for Types.Array tag not handled*)
val bind_property :
  t -> string -> t -> string -> Binding_flags.t_list -> Binding.t
val bind_property_full :
  t -> string -> t -> string -> Binding_flags.t_list -> Closure.t structure ptr -> Closure.t structure ptr -> Binding.t
val force_floating :
  t -> unit
val freeze_notify :
  t -> unit
val get_data :
  t -> string -> unit ptr option
val get_property :
  t -> string -> Value.t structure ptr -> unit
val get_qdata :
  t -> Unsigned.uint32 -> unit ptr option
(*Not implemented g_object_getv type C Array type for Types.Array tag not implemented*)
val is_floating :
  t -> bool
val notify :
  t -> string -> unit
val notify_by_pspec :
  t -> Param_spec.t -> unit
val incr_ref :
  t -> t
val ref_sink :
  t -> t
val run_dispose :
  t -> unit
val set_data :
  t -> string -> unit ptr option -> unit
val set_property :
  t -> string -> Value.t structure ptr -> unit
val steal_data :
  t -> string -> unit ptr option
val steal_qdata :
  t -> Unsigned.uint32 -> unit ptr option
val thaw_notify :
  t -> unit
val unref :
  t -> unit
val watch_closure :
  t -> Closure.t structure ptr -> unit
