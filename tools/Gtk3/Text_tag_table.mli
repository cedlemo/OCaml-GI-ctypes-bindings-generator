open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val add :
  t -> Text_tag.t ptr -> bool
(*Not implemented gtk_text_tag_table_foreach type callback not implemented*)
val get_size :
  t -> int32
val lookup :
  t -> string -> Text_tag.t ptr option
val remove :
  t -> Text_tag.t ptr -> unit
