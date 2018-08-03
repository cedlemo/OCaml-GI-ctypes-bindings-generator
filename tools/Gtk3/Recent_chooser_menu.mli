open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_for_manager :
  Recent_manager.t ptr -> Widget.t ptr
val get_show_numbers :
  t -> bool
val set_show_numbers :
  t -> bool -> unit
