open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val append :
  t -> string option -> string option -> unit
val append_item :
  t -> Menu_item.t -> unit
val append_section :
  t -> string option -> Menu_model.t -> unit
val append_submenu :
  t -> string option -> Menu_model.t -> unit
val freeze :
  t -> unit
val insert :
  t -> int32 -> string option -> string option -> unit
val insert_item :
  t -> int32 -> Menu_item.t -> unit
val insert_section :
  t -> int32 -> string option -> Menu_model.t -> unit
val insert_submenu :
  t -> int32 -> string option -> Menu_model.t -> unit
val prepend :
  t -> string option -> string option -> unit
val prepend_item :
  t -> Menu_item.t -> unit
val prepend_section :
  t -> string option -> Menu_model.t -> unit
val prepend_submenu :
  t -> string option -> Menu_model.t -> unit
val remove :
  t -> int32 -> unit
val remove_all :
  t -> unit
