open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_popover_menu_new return type object not handled*)
val open_submenu:
  t structure ptr -> string -> unit
