open Ctypes

type t
val t_typ : t structure typ

val create:
  unit -> t structure ptr
val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
val get_direction:
  t structure -> Text_direction.t
val get_direction_wildcarded:
  t structure -> bool
val get_filename:
  t structure -> string option
val get_icon_name:
  t structure -> string option
val get_pixbuf:
  t structure -> Pixbuf.t
val get_size:
  t structure -> int32
val get_size_wildcarded:
  t structure -> bool
val get_state:
  t structure -> State_type.t
val get_state_wildcarded:
  t structure -> bool
val set_direction:
  t structure -> Text_direction.t -> unit
val set_direction_wildcarded:
  t structure -> bool -> unit
val set_filename:
  t structure -> string -> unit
val set_icon_name:
  t structure -> string option -> unit
val set_pixbuf:
  t structure -> Pixbuf.t -> unit
val set_size:
  t structure -> int32 -> unit
val set_size_wildcarded:
  t structure -> bool -> unit
val set_state:
  t structure -> State_type.t -> unit
val set_state_wildcarded:
  t structure -> bool -> unit
