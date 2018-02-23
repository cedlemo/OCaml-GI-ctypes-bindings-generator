open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_with_context:
  Cell_area.t -> Cell_area_context.t -> Widget.t
val create_with_markup:
  string -> Widget.t
val create_with_pixbuf:
  Pixbuf.t -> Widget.t
val create_with_text:
  string -> Widget.t
val get_displayed_row:
  t -> Tree_path.t structure ptr option
val get_draw_sensitive:
  t -> bool
val get_fit_model:
  t -> bool
(*Not implemented gtk_cell_view_get_model return type interface not handled*)
val get_size_of_row :
  t -> Tree_path.t structure ptr -> (bool * Requisition.t structure)
val set_background_color:
  t -> Color.t structure ptr -> unit
val set_background_rgba:
  t -> RGBA.t structure ptr -> unit
val set_displayed_row:
  t -> Tree_path.t structure ptr option -> unit
val set_draw_sensitive:
  t -> bool -> unit
val set_fit_model:
  t -> bool -> unit
(*Not implemented gtk_cell_view_set_model type interface not implemented*)
