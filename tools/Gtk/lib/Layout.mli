open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_layout_new type object not implemented*)
(*Not implemented gtk_layout_get_bin_window return type object not handled*)
(*Not implemented gtk_layout_get_hadjustment return type object not handled*)
val get_size :
  t structure ptr -> (Unsigned.uint32 * Unsigned.uint32)
(*Not implemented gtk_layout_get_vadjustment return type object not handled*)
(*Not implemented gtk_layout_move type object not implemented*)
(*Not implemented gtk_layout_put type object not implemented*)
(*Not implemented gtk_layout_set_hadjustment type object not implemented*)
val set_size:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
(*Not implemented gtk_layout_set_vadjustment type object not implemented*)
