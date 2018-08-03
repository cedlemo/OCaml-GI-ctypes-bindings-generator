open Ctypes

type t
val t_typ : t structure typ

val create :
  unit -> t structure ptr
val create_from_pixbuf :
  Pixbuf.t ptr -> t structure ptr
val add_source :
  t structure ptr -> Icon_source.t structure ptr -> unit
val copy :
  t structure ptr -> t structure ptr
(*Not implemented gtk_icon_set_get_sizes type C Array type for Types.Array tag not implemented*)
val incr_ref :
  t structure ptr -> t structure ptr
val render_icon :
  t structure ptr -> Style.t ptr option -> Text_direction.t -> State_type.t -> int32 -> Widget.t ptr option -> string option -> Pixbuf.t ptr
val render_icon_pixbuf :
  t structure ptr -> Style_context.t ptr -> int32 -> Pixbuf.t ptr
val render_icon_surface :
  t structure ptr -> Style_context.t ptr -> int32 -> int32 -> Window.t ptr option -> Surface.t structure ptr
val unref :
  t structure ptr -> unit
