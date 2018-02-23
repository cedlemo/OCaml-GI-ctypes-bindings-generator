open Ctypes

type t
val t_typ : t typ

val add_entry:
  string -> Unsigned.uint32 -> Modifier_type.t_list -> unit
val add_filter:
  string -> unit
val change_entry:
  string -> Unsigned.uint32 -> Modifier_type.t_list -> bool -> bool
(*Not implemented gtk_accel_map_foreach type callback not implemented*)
(*Not implemented gtk_accel_map_foreach_unfiltered type callback not implemented*)
val get:
  unit -> t
val load:
  string -> unit
val load_fd:
  int32 -> unit
val load_scanner:
  Scanner.t structure ptr -> unit
val lock_path:
  string -> unit
val lookup_entry :
  string -> (bool * Accel_key.t structure)
val save:
  string -> unit
val save_fd:
  int32 -> unit
val unlock_path:
  string -> unit
