open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_scale_new type object not implemented*)
(*Not implemented gtk_scale_new_with_range return type object not handled*)
let add_mark =
  foreign "gtk_scale_add_mark" (ptr t_typ @-> double @-> Position_type.t_view @-> string_opt @-> returning (void))
let clear_marks =
  foreign "gtk_scale_clear_marks" (ptr t_typ @-> returning (void))
let get_digits =
  foreign "gtk_scale_get_digits" (ptr t_typ @-> returning (int32_t))
let get_draw_value =
  foreign "gtk_scale_get_draw_value" (ptr t_typ @-> returning (bool))
let get_has_origin =
  foreign "gtk_scale_get_has_origin" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_scale_get_layout return type object not handled*)
let get_layout_offsets self =
  let x_ptr = allocate int32_t Int32.zero in
  let y_ptr = allocate int32_t Int32.zero in
  let get_layout_offsets_raw =
    foreign "gtk_scale_get_layout_offsets" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_layout_offsets_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (x, y)
let get_value_pos =
  foreign "gtk_scale_get_value_pos" (ptr t_typ @-> returning (Position_type.t_view))
let set_digits =
  foreign "gtk_scale_set_digits" (ptr t_typ @-> int32_t @-> returning (void))
let set_draw_value =
  foreign "gtk_scale_set_draw_value" (ptr t_typ @-> bool @-> returning (void))
let set_has_origin =
  foreign "gtk_scale_set_has_origin" (ptr t_typ @-> bool @-> returning (void))
let set_value_pos =
  foreign "gtk_scale_set_value_pos" (ptr t_typ @-> Position_type.t_view @-> returning (void))
