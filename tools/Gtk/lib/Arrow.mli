open Ctypes

type t
val t_typ : t typ

val create :
  Arrow_type.t -> Shadow_type.t -> Widget.t
val set :
  t -> Arrow_type.t -> Shadow_type.t -> unit
