open Ctypes

type t
val t_typ : t typ

val activate_item :
  t -> Widget.t -> bool -> unit
val append :
  t -> Menu_item.t -> unit
val bind_model :
  t -> Menu_model.t -> string option -> bool -> unit
val cancel :
  t -> unit
val deactivate :
  t -> unit
val deselect :
  t -> unit
val get_parent_shell :
  t -> Widget.t
val get_selected_item :
  t -> Widget.t
val get_take_focus :
  t -> bool
val insert :
  t -> Widget.t -> int32 -> unit
val prepend :
  t -> Widget.t -> unit
val select_first :
  t -> bool -> unit
val select_item :
  t -> Widget.t -> unit
val set_take_focus :
  t -> bool -> unit
