open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_table_new return type object not handled*)
(*Not implemented gtk_table_attach type object not implemented*)
(*Not implemented gtk_table_attach_defaults type object not implemented*)
val get_col_spacing:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32
val get_default_col_spacing:
  t structure ptr -> Unsigned.uint32
val get_default_row_spacing:
  t structure ptr -> Unsigned.uint32
val get_homogeneous:
  t structure ptr -> bool
val get_row_spacing:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32
val get_size :
  t structure ptr -> (Unsigned.uint32 * Unsigned.uint32)
val resize:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_col_spacing:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_col_spacings:
  t structure ptr -> Unsigned.uint32 -> unit
val set_homogeneous:
  t structure ptr -> bool -> unit
val set_row_spacing:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_row_spacings:
  t structure ptr -> Unsigned.uint32 -> unit
