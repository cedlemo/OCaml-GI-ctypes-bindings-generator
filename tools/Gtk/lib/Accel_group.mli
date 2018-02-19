open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_accel_group_new return type object not handled*)
(*Not implemented gtk_accel_group_from_accel_closure return type object not handled*)
(*Not implemented gtk_accel_group_activate type object not implemented*)
val connect:
  t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> Accel_flags.t_list -> Closure.t structure ptr -> unit
val connect_by_path:
  t structure ptr -> string -> Closure.t structure ptr -> unit
val disconnect:
  t structure ptr -> Closure.t structure ptr option -> bool
val disconnect_key:
  t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> bool
(*Not implemented gtk_accel_group_find type callback not implemented*)
val get_is_locked:
  t structure ptr -> bool
val get_modifier_mask:
  t structure ptr -> Modifier_type.t_list
val lock:
  t structure ptr -> unit
(*Not implemented gtk_accel_group_query return type C Array type for Types.Array tag not handled*)
val unlock:
  t structure ptr -> unit
