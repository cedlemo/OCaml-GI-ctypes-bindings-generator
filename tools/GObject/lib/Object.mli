open Ctypes

type t
val t_typ : t typ

(*Not implemented g_object_new_with_properties type gType not implemented*)
(*Not implemented g_object_newv type gType not implemented*)
val compat_control:
  Unsigned.uint64 -> unit ptr option -> Unsigned.uint64
(*Not implemented g_object_interface_find_property return type object not handled*)
(*Not implemented g_object_interface_install_property type object not implemented*)
(*Not implemented g_object_interface_list_properties return type C Array type for Types.Array tag not handled*)
(*Not implemented g_object_bind_property type object not implemented*)
(*Not implemented g_object_bind_property_with_closures type object not implemented*)
val force_floating:
  t structure ptr -> unit
val freeze_notify:
  t structure ptr -> unit
val get_data:
  t structure ptr -> string -> unit ptr option
val get_property:
  t structure ptr -> string -> Value.t structure ptr -> unit
val get_qdata:
  t structure ptr -> Unsigned.uint32 -> unit ptr option
(*Not implemented g_object_getv type C Array type for Types.Array tag not implemented*)
val is_floating:
  t structure ptr -> bool
val notify:
  t structure ptr -> string -> unit
(*Not implemented g_object_notify_by_pspec type object not implemented*)
(*Not implemented g_object_ref return type object not handled*)
(*Not implemented g_object_ref_sink return type object not handled*)
(*Not implemented g_object_replace_data type callback not implemented*)
(*Not implemented g_object_replace_qdata type callback not implemented*)
val run_dispose:
  t structure ptr -> unit
val set_data:
  t structure ptr -> string -> unit ptr option -> unit
val set_property:
  t structure ptr -> string -> Value.t structure ptr -> unit
val steal_data:
  t structure ptr -> string -> unit ptr option
val steal_qdata:
  t structure ptr -> Unsigned.uint32 -> unit ptr option
val thaw_notify:
  t structure ptr -> unit
val unref:
  t structure ptr -> unit
val watch_closure:
  t structure ptr -> Closure.t structure ptr -> unit
