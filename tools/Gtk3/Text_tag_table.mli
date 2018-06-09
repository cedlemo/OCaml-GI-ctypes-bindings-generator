open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val add :
  t -> Text_tag.t -> bool
(*Not implemented gtk_text_tag_table_foreach type callback not implemented*)
val get_size :
  t -> int32
val lookup :
  t -> string -> Text_tag.t
val remove :
  t -> Text_tag.t -> unit
