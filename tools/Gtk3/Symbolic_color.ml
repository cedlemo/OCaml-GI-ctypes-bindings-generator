open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Symbolic_color"

let create_alpha =
  foreign "gtk_symbolic_color_new_alpha" (ptr t_typ @-> double @-> returning (ptr t_typ))
let create_literal =
  foreign "gtk_symbolic_color_new_literal" (ptr RGBA.t_typ @-> returning (ptr t_typ))
let create_mix =
  foreign "gtk_symbolic_color_new_mix" (ptr t_typ @-> ptr t_typ @-> double @-> returning (ptr t_typ))
let create_name =
  foreign "gtk_symbolic_color_new_name" (string @-> returning (ptr t_typ))
let create_shade =
  foreign "gtk_symbolic_color_new_shade" (ptr t_typ @-> double @-> returning (ptr t_typ))
let create_win32 =
  foreign "gtk_symbolic_color_new_win32" (string @-> int32_t @-> returning (ptr t_typ))
let incr_ref =
  foreign "gtk_symbolic_color_ref" (ptr t_typ @-> returning (ptr t_typ))
let resolve self props =
  let resolve_raw =
    foreign "gtk_symbolic_color_resolve" (ptr t_typ @-> ptr_opt Style_properties.t_typ @-> ptr (RGBA.t_typ) @-> returning (bool))
  in
  let resolved_color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = resolve_raw self props resolved_color_ptr in
  let resolved_color = !@ resolved_color_ptr in
  (ret, resolved_color)
let to_string =
  foreign "gtk_symbolic_color_to_string" (ptr t_typ @-> returning (string_opt))
let unref =
  foreign "gtk_symbolic_color_unref" (ptr t_typ @-> returning (void))
