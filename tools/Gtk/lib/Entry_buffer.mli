open Ctypes

type t
val t_typ : t typ

val create :
  string option -> int32 -> t
val delete_text :
  t -> Unsigned.uint32 -> int32 -> Unsigned.uint32
val emit_deleted_text :
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val emit_inserted_text :
  t -> Unsigned.uint32 -> string -> Unsigned.uint32 -> unit
val get_bytes :
  t -> Unsigned.uint64
val get_length :
  t -> Unsigned.uint32
val get_max_length :
  t -> int32
val get_text :
  t -> string option
val insert_text :
  t -> Unsigned.uint32 -> string -> int32 -> Unsigned.uint32
val set_max_length :
  t -> int32 -> unit
val set_text :
  t -> string -> int32 -> unit
