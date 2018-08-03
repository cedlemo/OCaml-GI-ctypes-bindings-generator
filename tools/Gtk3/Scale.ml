open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_scale_new" (Orientation.t_view @-> ptr_opt Adjustment.t_typ @-> returning (ptr Widget.t_typ))
let create_with_range =
  foreign "gtk_scale_new_with_range" (Orientation.t_view @-> double @-> double @-> double @-> returning (ptr Widget.t_typ))
let add_mark =
  foreign "gtk_scale_add_mark" (t_typ @-> double @-> Position_type.t_view @-> string_opt @-> returning (void))
let clear_marks =
  foreign "gtk_scale_clear_marks" (t_typ @-> returning (void))
let get_digits =
  foreign "gtk_scale_get_digits" (t_typ @-> returning (int32_t))
let get_draw_value =
  foreign "gtk_scale_get_draw_value" (t_typ @-> returning (bool))
let get_has_origin =
  foreign "gtk_scale_get_has_origin" (t_typ @-> returning (bool))
let get_layout =
  foreign "gtk_scale_get_layout" (t_typ @-> returning (ptr_opt Layout.t_typ))
let get_layout_offsets self =
  let get_layout_offsets_raw =
    foreign "gtk_scale_get_layout_offsets" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let x_ptr = allocate int32_t Int32.zero in
  let y_ptr = allocate int32_t Int32.zero in
  let ret = get_layout_offsets_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (x, y)
let get_value_pos =
  foreign "gtk_scale_get_value_pos" (t_typ @-> returning (Position_type.t_view))
let set_digits =
  foreign "gtk_scale_set_digits" (t_typ @-> int32_t @-> returning (void))
let set_draw_value =
  foreign "gtk_scale_set_draw_value" (t_typ @-> bool @-> returning (void))
let set_has_origin =
  foreign "gtk_scale_set_has_origin" (t_typ @-> bool @-> returning (void))
let set_value_pos =
  foreign "gtk_scale_set_value_pos" (t_typ @-> Position_type.t_view @-> returning (void))
