open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val from_accel_closure :
  Closure.t structure ptr -> t ptr option
val activate :
  t -> Unsigned.uint32 -> Object.t ptr -> Unsigned.uint32 -> Modifier_type.t_list -> bool
val connect :
  t -> Unsigned.uint32 -> Modifier_type.t_list -> Accel_flags.t_list -> Closure.t structure ptr -> unit
val connect_by_path :
  t -> string -> Closure.t structure ptr -> unit
val disconnect :
  t -> Closure.t structure ptr option -> bool
val disconnect_key :
  t -> Unsigned.uint32 -> Modifier_type.t_list -> bool
(*Not implemented gtk_accel_group_find type callback not implemented*)
val get_is_locked :
  t -> bool
val get_modifier_mask :
  t -> Modifier_type.t_list
val lock :
  t -> unit
(*Not implemented gtk_accel_group_query return type C Array type for Types.Array tag not handled*)
val unlock :
  t -> unit
