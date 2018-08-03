open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_color :
  Color.t structure ptr -> Widget.t ptr
val create_with_rgba :
  RGBA.t structure ptr -> Widget.t ptr
val get_alpha :
  t -> Unsigned.uint16
val get_color :
  t -> (Color.t structure)
val get_title :
  t -> string option
val get_use_alpha :
  t -> bool
val set_alpha :
  t -> Unsigned.uint16 -> unit
val set_color :
  t -> Color.t structure ptr -> unit
val set_title :
  t -> string -> unit
val set_use_alpha :
  t -> bool -> unit
