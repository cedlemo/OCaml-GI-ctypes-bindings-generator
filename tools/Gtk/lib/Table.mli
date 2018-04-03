open Ctypes

type t
val t_typ : t typ

val create :
  Unsigned.uint32 -> Unsigned.uint32 -> bool -> Widget.t
val attach :
  t -> Widget.t -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Attach_options.t_list -> Attach_options.t_list -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val attach_defaults :
  t -> Widget.t -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val get_col_spacing :
  t -> Unsigned.uint32 -> Unsigned.uint32
val get_default_col_spacing :
  t -> Unsigned.uint32
val get_default_row_spacing :
  t -> Unsigned.uint32
val get_homogeneous :
  t -> bool
val get_row_spacing :
  t -> Unsigned.uint32 -> Unsigned.uint32
val get_size :
  t -> (Unsigned.uint32 * Unsigned.uint32)
val resize :
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_col_spacing :
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_col_spacings :
  t -> Unsigned.uint32 -> unit
val set_homogeneous :
  t -> bool -> unit
val set_row_spacing :
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_row_spacings :
  t -> Unsigned.uint32 -> unit
