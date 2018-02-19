open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_style_new return type object not handled*)
(*Not implemented gtk_style_apply_default_background type object not implemented*)
(*Not implemented gtk_style_copy return type object not handled*)
let detach =
  foreign "gtk_style_detach" (ptr t_typ @-> returning (void))
(*Not implemented gtk_style_get_style_property type gType not implemented*)
let has_context =
  foreign "gtk_style_has_context" (ptr t_typ @-> returning (bool))
let lookup_color self color_name =
  let color_ptr = allocate Color.t_typ (make Color.t_typ) in
  let lookup_color_raw =
    foreign "gtk_style_lookup_color" (ptr t_typ @-> string @-> ptr (Color.t_typ) @-> returning bool)
  in
  let ret = lookup_color_raw self color_name color_ptr in
  let color = !@ color_ptr in
  (ret, color)
let lookup_icon_set =
  foreign "gtk_style_lookup_icon_set" (ptr t_typ @-> string @-> returning (ptr Icon_set.t_typ))
(*Not implemented gtk_style_render_icon type object not implemented*)
(*Not implemented gtk_style_set_background type object not implemented*)
