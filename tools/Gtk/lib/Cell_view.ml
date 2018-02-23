open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_view_new" (void @-> returning (Widget.t_typ))
let create_with_context =
  foreign "gtk_cell_view_new_with_context" (Cell_area.t_typ @-> Cell_area_context.t_typ @-> returning (Widget.t_typ))
let create_with_markup =
  foreign "gtk_cell_view_new_with_markup" (string @-> returning (Widget.t_typ))
let create_with_pixbuf =
  foreign "gtk_cell_view_new_with_pixbuf" (Pixbuf.t_typ @-> returning (Widget.t_typ))
let create_with_text =
  foreign "gtk_cell_view_new_with_text" (string @-> returning (Widget.t_typ))
let get_displayed_row =
  foreign "gtk_cell_view_get_displayed_row" (t_typ @-> returning (ptr_opt Tree_path.t_typ))
let get_draw_sensitive =
  foreign "gtk_cell_view_get_draw_sensitive" (t_typ @-> returning (bool))
let get_fit_model =
  foreign "gtk_cell_view_get_fit_model" (t_typ @-> returning (bool))
(*Not implemented gtk_cell_view_get_model return type interface not handled*)
let get_size_of_row self path =
  let requisition_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_size_of_row_raw =
    foreign "gtk_cell_view_get_size_of_row" (t_typ @-> ptr Tree_path.t_typ @-> ptr (Requisition.t_typ) @-> returning bool)
  in
  let ret = get_size_of_row_raw self path requisition_ptr in
  let requisition = !@ requisition_ptr in
  (ret, requisition)
let set_background_color =
  foreign "gtk_cell_view_set_background_color" (t_typ @-> ptr Color.t_typ @-> returning (void))
let set_background_rgba =
  foreign "gtk_cell_view_set_background_rgba" (t_typ @-> ptr RGBA.t_typ @-> returning (void))
let set_displayed_row =
  foreign "gtk_cell_view_set_displayed_row" (t_typ @-> ptr_opt Tree_path.t_typ @-> returning (void))
let set_draw_sensitive =
  foreign "gtk_cell_view_set_draw_sensitive" (t_typ @-> bool @-> returning (void))
let set_fit_model =
  foreign "gtk_cell_view_set_fit_model" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_cell_view_set_model type interface not implemented*)
