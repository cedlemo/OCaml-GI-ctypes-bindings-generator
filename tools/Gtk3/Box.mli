open Ctypes

type t
val t_typ : t typ

val create :
  Orientation.t -> int32 -> Widget.t ptr
val get_baseline_position :
  t -> Baseline_position.t
val get_center_widget :
  t -> Widget.t ptr option
val get_homogeneous :
  t -> bool
val get_spacing :
  t -> int32
val pack_end :
  t -> Widget.t ptr -> bool -> bool -> Unsigned.uint32 -> unit
val pack_start :
  t -> Widget.t ptr -> bool -> bool -> Unsigned.uint32 -> unit
val query_child_packing :
  t -> Widget.t ptr -> (bool * bool * Unsigned.uint32 * Pack_type.t)
val reorder_child :
  t -> Widget.t ptr -> int32 -> unit
val set_baseline_position :
  t -> Baseline_position.t -> unit
val set_center_widget :
  t -> Widget.t ptr option -> unit
val set_child_packing :
  t -> Widget.t ptr -> bool -> bool -> Unsigned.uint32 -> Pack_type.t -> unit
val set_homogeneous :
  t -> bool -> unit
val set_spacing :
  t -> int32 -> unit
