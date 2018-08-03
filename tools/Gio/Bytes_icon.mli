open Ctypes

type t
val t_typ : t typ

val create :
  Bytes.t structure ptr -> t ptr
val get_bytes :
  t -> Bytes.t structure ptr
