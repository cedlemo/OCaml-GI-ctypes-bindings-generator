open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Gradient"

let create_linear =
  foreign "gtk_gradient_new_linear" (double @-> double @-> double @-> double @-> returning (ptr t_typ))
let create_radial =
  foreign "gtk_gradient_new_radial" (double @-> double @-> double @-> double @-> double @-> double @-> returning (ptr t_typ))
let add_color_stop =
  foreign "gtk_gradient_add_color_stop" (ptr t_typ @-> double @-> ptr Symbolic_color.t_typ @-> returning (void))
let incr_ref =
  foreign "gtk_gradient_ref" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_gradient_resolve type object not implemented*)
(*Not implemented gtk_gradient_resolve_for_context type object not implemented*)
let to_string =
  foreign "gtk_gradient_to_string" (ptr t_typ @-> returning (string_opt))
let unref =
  foreign "gtk_gradient_unref" (ptr t_typ @-> returning (void))
