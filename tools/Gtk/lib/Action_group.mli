open Ctypes

type t
val t_typ : t typ

val create:
  string -> t
val add_action:
  t -> Action.t -> unit
val add_action_with_accel:
  t -> Action.t -> string option -> unit
val get_accel_group:
  t -> Accel_group.t
val get_action:
  t -> string -> Action.t
val get_name:
  t -> string option
val get_sensitive:
  t -> bool
val get_visible:
  t -> bool
val list_actions:
  t -> List.t structure ptr
val remove_action:
  t -> Action.t -> unit
val set_accel_group:
  t -> Accel_group.t -> unit
val set_sensitive:
  t -> bool -> unit
(*Not implemented gtk_action_group_set_translate_func type callback not implemented*)
val set_translation_domain:
  t -> string option -> unit
val set_visible:
  t -> bool -> unit
val translate_string:
  t -> string -> string option
