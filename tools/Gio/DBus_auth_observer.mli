open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val allow_mechanism :
  t -> string -> bool
val authorize_authenticated_peer :
  t -> IOStream.t ptr -> Credentials.t ptr option -> bool
