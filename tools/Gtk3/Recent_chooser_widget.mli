open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_for_manager :
  Recent_manager.t ptr -> Widget.t ptr
