open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_style_properties_new return type object not handled*)
val clear:
  t structure ptr -> unit
val get_property :
  t structure ptr -> string -> State_flags.t_list -> (bool * Value.t structure)
val lookup_color:
  t structure ptr -> string -> Symbolic_color.t structure ptr
val map_color:
  t structure ptr -> string -> Symbolic_color.t structure ptr -> unit
(*Not implemented gtk_style_properties_merge type object not implemented*)
val set_property:
  t structure ptr -> string -> State_flags.t_list -> Value.t structure ptr -> unit
val unset_property:
  t structure ptr -> string -> State_flags.t_list -> unit
