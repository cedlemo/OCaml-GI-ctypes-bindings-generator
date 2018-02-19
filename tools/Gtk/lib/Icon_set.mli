open Ctypes

type t
val t_typ : t structure typ

val create:
  unit -> t structure ptr
(*Not implemented gtk_icon_set_new_from_pixbuf type object not implemented*)
val add_source:
  t structure ptr -> Icon_source.t structure ptr -> unit
val copy:
  t structure ptr -> t structure ptr
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
val incr_ref:
  t structure ptr -> t structure ptr
(*Not implemented gtk_icon_set_render_icon type object not implemented*)
(*Not implemented gtk_icon_set_render_icon_pixbuf type object not implemented*)
(*Not implemented gtk_icon_set_render_icon_surface type object not implemented*)
val unref:
  t structure ptr -> unit
