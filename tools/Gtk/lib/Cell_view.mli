open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_view_new return type object not handled*)
(*Not implemented gtk_cell_view_new_with_context type object not implemented*)
(*Not implemented gtk_cell_view_new_with_markup return type object not handled*)
(*Not implemented gtk_cell_view_new_with_pixbuf type object not implemented*)
(*Not implemented gtk_cell_view_new_with_text return type object not handled*)
val get_displayed_row:
  t structure ptr -> Tree_path.t structure ptr option
val get_draw_sensitive:
  t structure ptr -> bool
val get_fit_model:
  t structure ptr -> bool
(*Not implemented gtk_cell_view_get_model return type interface not handled*)
val get_size_of_row :
  t structure ptr -> Tree_path.t structure ptr -> (bool * Requisition.t structure)
val set_background_color:
  t structure ptr -> Color.t structure ptr -> unit
val set_background_rgba:
  t structure ptr -> RGBA.t structure ptr -> unit
val set_displayed_row:
  t structure ptr -> Tree_path.t structure ptr option -> unit
val set_draw_sensitive:
  t structure ptr -> bool -> unit
val set_fit_model:
  t structure ptr -> bool -> unit
(*Not implemented gtk_cell_view_set_model type interface not implemented*)
