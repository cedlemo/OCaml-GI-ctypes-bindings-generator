open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val allow_mechanism :
  t -> string -> bool
val authorize_authenticated_peer :
  t -> IOStream.t -> Credentials.t -> bool
