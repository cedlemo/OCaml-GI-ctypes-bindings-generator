open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_style_new" (void @-> returning (t_typ))
let apply_default_background =
  foreign "gtk_style_apply_default_background" (t_typ @-> ptr Context.t_typ @-> Window.t_typ @-> State_type.t_view @-> int32_t @-> int32_t @-> int32_t @-> int32_t @-> returning (void))
let copy =
  foreign "gtk_style_copy" (t_typ @-> returning (t_typ))
let detach =
  foreign "gtk_style_detach" (t_typ @-> returning (void))
(*Not implemented gtk_style_get_style_property type gType not implemented*)
let has_context =
  foreign "gtk_style_has_context" (t_typ @-> returning (bool))
let lookup_color self color_name =
  let lookup_color_raw =
    foreign "gtk_style_lookup_color" (t_typ @-> string @-> ptr (Color.t_typ) @-> returning (bool))
  in
  let color_ptr = allocate Color.t_typ (make Color.t_typ) in
  let ret = lookup_color_raw self color_name color_ptr in
  let color = !@ color_ptr in
  (ret, color)let lookup_icon_set =
  foreign "gtk_style_lookup_icon_set" (t_typ @-> string @-> returning (ptr Icon_set.t_typ))
let render_icon =
  foreign "gtk_style_render_icon" (t_typ @-> ptr Icon_source.t_typ @-> Text_direction.t_view @-> State_type.t_view @-> int32_t @-> Widget.t_typ @-> string_opt @-> returning (Pixbuf.t_typ))
let set_background =
  foreign "gtk_style_set_background" (t_typ @-> Window.t_typ @-> State_type.t_view @-> returning (void))
