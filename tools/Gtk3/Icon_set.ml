open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Icon_set"

let create =
  foreign "gtk_icon_set_new" (void @-> returning (ptr t_typ))
let create_from_pixbuf =
  foreign "gtk_icon_set_new_from_pixbuf" (ptr Pixbuf.t_typ @-> returning (ptr t_typ))
let add_source =
  foreign "gtk_icon_set_add_source" (ptr t_typ @-> ptr Icon_source.t_typ @-> returning (void))
let copy =
  foreign "gtk_icon_set_copy" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
let incr_ref =
  foreign "gtk_icon_set_ref" (ptr t_typ @-> returning (ptr t_typ))
let render_icon =
  foreign "gtk_icon_set_render_icon" (ptr t_typ @-> ptr_opt Style.t_typ @-> Text_direction.t_view @-> State_type.t_view @-> int32_t @-> ptr_opt Widget.t_typ @-> string_opt @-> returning (ptr Pixbuf.t_typ))
let render_icon_pixbuf =
  foreign "gtk_icon_set_render_icon_pixbuf" (ptr t_typ @-> ptr Style_context.t_typ @-> int32_t @-> returning (ptr Pixbuf.t_typ))
let render_icon_surface =
  foreign "gtk_icon_set_render_icon_surface" (ptr t_typ @-> ptr Style_context.t_typ @-> int32_t @-> int32_t @-> ptr_opt Window.t_typ @-> returning (ptr Surface.t_typ))
let unref =
  foreign "gtk_icon_set_unref" (ptr t_typ @-> returning (void))
