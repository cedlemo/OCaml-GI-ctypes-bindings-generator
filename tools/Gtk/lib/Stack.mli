open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_stack_new return type object not handled*)
(*Not implemented gtk_stack_add_named type object not implemented*)
(*Not implemented gtk_stack_add_titled type object not implemented*)
(*Not implemented gtk_stack_get_child_by_name return type object not handled*)
val get_hhomogeneous:
  t structure ptr -> bool
val get_homogeneous:
  t structure ptr -> bool
val get_interpolate_size:
  t structure ptr -> bool
val get_transition_duration:
  t structure ptr -> Unsigned.uint32
val get_transition_running:
  t structure ptr -> bool
val get_transition_type:
  t structure ptr -> Stack_transition_type.t
val get_vhomogeneous:
  t structure ptr -> bool
(*Not implemented gtk_stack_get_visible_child return type object not handled*)
val get_visible_child_name:
  t structure ptr -> string option
val set_hhomogeneous:
  t structure ptr -> bool -> unit
val set_homogeneous:
  t structure ptr -> bool -> unit
val set_interpolate_size:
  t structure ptr -> bool -> unit
val set_transition_duration:
  t structure ptr -> Unsigned.uint32 -> unit
val set_transition_type:
  t structure ptr -> Stack_transition_type.t -> unit
val set_vhomogeneous:
  t structure ptr -> bool -> unit
(*Not implemented gtk_stack_set_visible_child type object not implemented*)
val set_visible_child_full:
  t structure ptr -> string -> Stack_transition_type.t -> unit
val set_visible_child_name:
  t structure ptr -> string -> unit
