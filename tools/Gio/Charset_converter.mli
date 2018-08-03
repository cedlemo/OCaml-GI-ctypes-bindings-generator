open Ctypes

type t
val t_typ : t typ

val create :
  string -> string -> (t ptr option, Error.t structure ptr option) result
val get_num_fallbacks :
  t -> Unsigned.uint32
val get_use_fallback :
  t -> bool
val set_use_fallback :
  t -> bool -> unit
