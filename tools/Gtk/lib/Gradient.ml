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
let resolve self props =
  let resolved_gradient_ptr = allocate (ptr_opt Pattern.t_typ) None in
  let resolve_raw =
    foreign "gtk_gradient_resolve" (ptr t_typ @-> Style_properties.t_typ @-> ptr (ptr Pattern.t_typ) @-> returning bool)
  in
  let ret = resolve_raw self props resolved_gradient_ptr in
  let resolved_gradient = !@ resolved_gradient_ptr in
  (ret, resolved_gradient)
let resolve_for_context =
  foreign "gtk_gradient_resolve_for_context" (ptr t_typ @-> Style_context.t_typ @-> returning (ptr Pattern.t_typ))
let to_string =
  foreign "gtk_gradient_to_string" (ptr t_typ @-> returning (string_opt))
let unref =
  foreign "gtk_gradient_unref" (ptr t_typ @-> returning (void))
