open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Icon_set"

let create =
  foreign "gtk_icon_set_new" (void @-> returning (ptr t_typ))
let create_from_pixbuf =
  foreign "gtk_icon_set_new_from_pixbuf" (Pixbuf.t_typ @-> returning (ptr t_typ))
let add_source =
  foreign "gtk_icon_set_add_source" (t_typ @-> ptr Icon_source.t_typ @-> returning (void))
let copy =
  foreign "gtk_icon_set_copy" (t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
let incr_ref =
  foreign "gtk_icon_set_ref" (t_typ @-> returning (ptr t_typ))
let render_icon =
  foreign "gtk_icon_set_render_icon" (t_typ @-> Style.t_typ @-> Text_direction.t_view @-> State_type.t_view @-> int32_t @-> Widget.t_typ @-> string_opt @-> returning (Pixbuf.t_typ))
let render_icon_pixbuf =
  foreign "gtk_icon_set_render_icon_pixbuf" (t_typ @-> Style_context.t_typ @-> int32_t @-> returning (Pixbuf.t_typ))
let render_icon_surface =
  foreign "gtk_icon_set_render_icon_surface" (t_typ @-> Style_context.t_typ @-> int32_t @-> int32_t @-> Window.t_typ @-> returning (ptr Surface.t_typ))
let unref =
  foreign "gtk_icon_set_unref" (t_typ @-> returning (void))
