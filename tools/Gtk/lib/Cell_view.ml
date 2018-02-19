open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_view_new return type object not handled*)
(*Not implemented gtk_cell_view_new_with_context type object not implemented*)
(*Not implemented gtk_cell_view_new_with_markup return type object not handled*)
(*Not implemented gtk_cell_view_new_with_pixbuf type object not implemented*)
(*Not implemented gtk_cell_view_new_with_text return type object not handled*)
let get_displayed_row =
  foreign "gtk_cell_view_get_displayed_row" (ptr t_typ @-> returning (ptr_opt Tree_path.t_typ))
let get_draw_sensitive =
  foreign "gtk_cell_view_get_draw_sensitive" (ptr t_typ @-> returning (bool))
let get_fit_model =
  foreign "gtk_cell_view_get_fit_model" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_cell_view_get_model return type interface not handled*)
let get_size_of_row self path =
  let requisition_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_size_of_row_raw =
    foreign "gtk_cell_view_get_size_of_row" (ptr t_typ @-> ptr Tree_path.t_typ @-> ptr (Requisition.t_typ) @-> returning bool)
  in
  let ret = get_size_of_row_raw self path requisition_ptr in
  let requisition = !@ requisition_ptr in
  (ret, requisition)
let set_background_color =
  foreign "gtk_cell_view_set_background_color" (ptr t_typ @-> ptr Color.t_typ @-> returning (void))
let set_background_rgba =
  foreign "gtk_cell_view_set_background_rgba" (ptr t_typ @-> ptr RGBA.t_typ @-> returning (void))
let set_displayed_row =
  foreign "gtk_cell_view_set_displayed_row" (ptr t_typ @-> ptr_opt Tree_path.t_typ @-> returning (void))
let set_draw_sensitive =
  foreign "gtk_cell_view_set_draw_sensitive" (ptr t_typ @-> bool @-> returning (void))
let set_fit_model =
  foreign "gtk_cell_view_set_fit_model" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_cell_view_set_model type interface not implemented*)
