open Ctypes

type t
val t_typ : t typ

val get_blurb :
  t -> string option
val get_default_value :
  t -> Value.t structure ptr
val get_name :
  t -> string option
val get_name_quark :
  t -> Unsigned.uint32
val get_nick :
  t -> string option
val get_qdata :
  t -> Unsigned.uint32 -> unit ptr option
val get_redirect_target :
  t -> t ptr
val set_qdata :
  t -> Unsigned.uint32 -> unit ptr option -> unit
val sink :
  t -> unit
val steal_qdata :
  t -> Unsigned.uint32 -> unit ptr option
