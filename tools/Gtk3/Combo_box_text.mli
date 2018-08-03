open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_entry :
  unit -> Widget.t ptr
val append :
  t -> string option -> string -> unit
val append_text :
  t -> string -> unit
val get_active_text :
  t -> string option
val insert :
  t -> int32 -> string option -> string -> unit
val insert_text :
  t -> int32 -> string -> unit
val prepend :
  t -> string option -> string -> unit
val prepend_text :
  t -> string -> unit
val remove :
  t -> int32 -> unit
val remove_all :
  t -> unit
