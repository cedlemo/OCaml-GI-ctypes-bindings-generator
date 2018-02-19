open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_viewport_new type object not implemented*)
(*Not implemented gtk_viewport_get_bin_window return type object not handled*)
(*Not implemented gtk_viewport_get_hadjustment return type object not handled*)
let get_shadow_type =
  foreign "gtk_viewport_get_shadow_type" (ptr t_typ @-> returning (Shadow_type.t_view))
(*Not implemented gtk_viewport_get_vadjustment return type object not handled*)
(*Not implemented gtk_viewport_get_view_window return type object not handled*)
(*Not implemented gtk_viewport_set_hadjustment type object not implemented*)
let set_shadow_type =
  foreign "gtk_viewport_set_shadow_type" (ptr t_typ @-> Shadow_type.t_view @-> returning (void))
(*Not implemented gtk_viewport_set_vadjustment type object not implemented*)
