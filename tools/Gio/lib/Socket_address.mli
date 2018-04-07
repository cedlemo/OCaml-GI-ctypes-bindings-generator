open Ctypes

type t
val t_typ : t typ

val create_from_native :
  unit ptr -> Unsigned.uint64 -> t
val get_family :
  t -> Socket_family.t
val get_native_size :
  t -> int64
val to_native :
  t -> unit ptr option -> Unsigned.uint64 -> (bool, Error.t structure ptr option) result
