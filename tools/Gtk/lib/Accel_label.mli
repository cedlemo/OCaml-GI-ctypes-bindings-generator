open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
val get_accel :
  t -> (Unsigned.uint32 * Modifier_type.t_list)
val get_accel_widget:
  t -> Widget.t
val get_accel_width:
  t -> Unsigned.uint32
val refetch:
  t -> bool
val set_accel:
  t -> Unsigned.uint32 -> Modifier_type.t_list -> unit
val set_accel_closure:
  t -> Closure.t structure ptr option -> unit
val set_accel_widget:
  t -> Widget.t -> unit
