open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_icon_factory_new return type object not handled*)
let lookup_default =
  foreign "gtk_icon_factory_lookup_default" (string @-> returning (ptr Icon_set.t_typ))
let add =
  foreign "gtk_icon_factory_add" (ptr t_typ @-> string @-> ptr Icon_set.t_typ @-> returning (void))
let add_default =
  foreign "gtk_icon_factory_add_default" (ptr t_typ @-> returning (void))
let lookup =
  foreign "gtk_icon_factory_lookup" (ptr t_typ @-> string @-> returning (ptr Icon_set.t_typ))
let remove_default =
  foreign "gtk_icon_factory_remove_default" (ptr t_typ @-> returning (void))
