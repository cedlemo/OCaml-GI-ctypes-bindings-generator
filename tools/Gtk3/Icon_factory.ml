open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_icon_factory_new" (void @-> returning (ptr t_typ))
let lookup_default =
  foreign "gtk_icon_factory_lookup_default" (string @-> returning (ptr Icon_set.t_typ))
let add =
  foreign "gtk_icon_factory_add" (t_typ @-> string @-> ptr Icon_set.t_typ @-> returning (void))
let add_default =
  foreign "gtk_icon_factory_add_default" (t_typ @-> returning (void))
let lookup =
  foreign "gtk_icon_factory_lookup" (t_typ @-> string @-> returning (ptr Icon_set.t_typ))
let remove_default =
  foreign "gtk_icon_factory_remove_default" (t_typ @-> returning (void))
