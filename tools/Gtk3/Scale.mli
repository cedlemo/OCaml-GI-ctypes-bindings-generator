open Ctypes

type t
val t_typ : t typ

val create :
  Orientation.t -> Adjustment.t ptr option -> Widget.t ptr
val create_with_range :
  Orientation.t -> float -> float -> float -> Widget.t ptr
val add_mark :
  t -> float -> Position_type.t -> string option -> unit
val clear_marks :
  t -> unit
val get_digits :
  t -> int32
val get_draw_value :
  t -> bool
val get_has_origin :
  t -> bool
val get_layout :
  t -> Layout.t ptr option
val get_layout_offsets :
  t -> (int32 * int32)
val get_value_pos :
  t -> Position_type.t
val set_digits :
  t -> int32 -> unit
val set_draw_value :
  t -> bool -> unit
val set_has_origin :
  t -> bool -> unit
val set_value_pos :
  t -> Position_type.t -> unit
