open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_icon_factory_new return type object not handled*)
val lookup_default:
  string -> Icon_set.t structure ptr
val add:
  t structure ptr -> string -> Icon_set.t structure ptr -> unit
val add_default:
  t structure ptr -> unit
val lookup:
  t structure ptr -> string -> Icon_set.t structure ptr
val remove_default:
  t structure ptr -> unit
