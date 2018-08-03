open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val changed :
  t -> unit
val get_index :
  t -> int32
val is_selected :
  t -> bool
