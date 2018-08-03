open Ctypes

type t
val t_typ : t typ

val create :
  File_chooser_action.t -> Widget.t ptr
