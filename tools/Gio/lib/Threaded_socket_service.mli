open Ctypes

type t
val t_typ : t typ

val create :
  int32 -> Socket_service.t
