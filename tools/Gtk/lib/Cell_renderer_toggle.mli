open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Cell_renderer.t
val get_activatable :
  t -> bool
val get_active :
  t -> bool
val get_radio :
  t -> bool
val set_activatable :
  t -> bool -> unit
val set_active :
  t -> bool -> unit
val set_radio :
  t -> bool -> unit
