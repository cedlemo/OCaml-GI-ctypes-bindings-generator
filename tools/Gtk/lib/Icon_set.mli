open Ctypes

type t
val t_typ : t structure typ

val create:
  unit -> t structure ptr
val create_from_pixbuf:
  Pixbuf.t -> t structure ptr
val add_source:
  t structure -> Icon_source.t structure ptr -> unit
val copy:
  t structure -> t structure ptr
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
val incr_ref:
  t structure -> t structure ptr
val render_icon:
  t structure -> Style.t -> Text_direction.t -> State_type.t -> int32 -> Widget.t -> string option -> Pixbuf.t
val render_icon_pixbuf:
  t structure -> Style_context.t -> int32 -> Pixbuf.t
val render_icon_surface:
  t structure -> Style_context.t -> int32 -> int32 -> Window.t -> Surface.t structure ptr
val unref:
  t structure -> unit
