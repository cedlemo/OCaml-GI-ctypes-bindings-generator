open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val attach:
  t -> Widget.t -> int32 -> int32 -> int32 -> int32 -> unit
val attach_next_to:
  t -> Widget.t -> Widget.t -> Position_type.t -> int32 -> int32 -> unit
val get_baseline_row:
  t -> int32
val get_child_at:
  t -> int32 -> int32 -> Widget.t
val get_column_homogeneous:
  t -> bool
val get_column_spacing:
  t -> Unsigned.uint32
val get_row_baseline_position:
  t -> int32 -> Baseline_position.t
val get_row_homogeneous:
  t -> bool
val get_row_spacing:
  t -> Unsigned.uint32
val insert_column:
  t -> int32 -> unit
val insert_next_to:
  t -> Widget.t -> Position_type.t -> unit
val insert_row:
  t -> int32 -> unit
val remove_column:
  t -> int32 -> unit
val remove_row:
  t -> int32 -> unit
val set_baseline_row:
  t -> int32 -> unit
val set_column_homogeneous:
  t -> bool -> unit
val set_column_spacing:
  t -> Unsigned.uint32 -> unit
val set_row_baseline_position:
  t -> int32 -> Baseline_position.t -> unit
val set_row_homogeneous:
  t -> bool -> unit
val set_row_spacing:
  t -> Unsigned.uint32 -> unit
