open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Icon_set"

let create =
  foreign "gtk_icon_set_new" (void @-> returning (ptr t_typ))
(*Not implemented gtk_icon_set_new_from_pixbuf type object not implemented*)
let add_source =
  foreign "gtk_icon_set_add_source" (ptr t_typ @-> ptr Icon_source.t_typ @-> returning (void))
let copy =
  foreign "gtk_icon_set_copy" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
let incr_ref =
  foreign "gtk_icon_set_ref" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_icon_set_render_icon type object not implemented*)
(*Not implemented gtk_icon_set_render_icon_pixbuf type object not implemented*)
(*Not implemented gtk_icon_set_render_icon_surface type object not implemented*)
let unref =
  foreign "gtk_icon_set_unref" (ptr t_typ @-> returning (void))
