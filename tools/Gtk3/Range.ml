open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_adjustment =
  foreign "gtk_range_get_adjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_fill_level =
  foreign "gtk_range_get_fill_level" (t_typ @-> returning (double))
let get_flippable =
  foreign "gtk_range_get_flippable" (t_typ @-> returning (bool))
let get_inverted =
  foreign "gtk_range_get_inverted" (t_typ @-> returning (bool))
let get_lower_stepper_sensitivity =
  foreign "gtk_range_get_lower_stepper_sensitivity" (t_typ @-> returning (Sensitivity_type.t_view))
let get_min_slider_size =
  foreign "gtk_range_get_min_slider_size" (t_typ @-> returning (int32_t))
let get_range_rect self =
  let get_range_rect_raw =
    foreign "gtk_range_get_range_rect" (t_typ @-> ptr (Rectangle.t_typ) @-> returning (void))
  in
  let range_rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_range_rect_raw self range_rect_ptr in
  let range_rect = !@ range_rect_ptr in
  (range_rect)
let get_restrict_to_fill_level =
  foreign "gtk_range_get_restrict_to_fill_level" (t_typ @-> returning (bool))
let get_round_digits =
  foreign "gtk_range_get_round_digits" (t_typ @-> returning (int32_t))
let get_show_fill_level =
  foreign "gtk_range_get_show_fill_level" (t_typ @-> returning (bool))
let get_slider_range self =
  let get_slider_range_raw =
    foreign "gtk_range_get_slider_range" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let slider_start_ptr = allocate int32_t Int32.zero in
  let slider_end_ptr = allocate int32_t Int32.zero in
  let ret = get_slider_range_raw self slider_start_ptr slider_end_ptr in
  let slider_start = !@ slider_start_ptr in
  let slider_end = !@ slider_end_ptr in
  (slider_start, slider_end)
let get_slider_size_fixed =
  foreign "gtk_range_get_slider_size_fixed" (t_typ @-> returning (bool))
let get_upper_stepper_sensitivity =
  foreign "gtk_range_get_upper_stepper_sensitivity" (t_typ @-> returning (Sensitivity_type.t_view))
let get_value =
  foreign "gtk_range_get_value" (t_typ @-> returning (double))
let set_adjustment =
  foreign "gtk_range_set_adjustment" (t_typ @-> ptr Adjustment.t_typ @-> returning (void))
let set_fill_level =
  foreign "gtk_range_set_fill_level" (t_typ @-> double @-> returning (void))
let set_flippable =
  foreign "gtk_range_set_flippable" (t_typ @-> bool @-> returning (void))
let set_increments =
  foreign "gtk_range_set_increments" (t_typ @-> double @-> double @-> returning (void))
let set_inverted =
  foreign "gtk_range_set_inverted" (t_typ @-> bool @-> returning (void))
let set_lower_stepper_sensitivity =
  foreign "gtk_range_set_lower_stepper_sensitivity" (t_typ @-> Sensitivity_type.t_view @-> returning (void))
let set_min_slider_size =
  foreign "gtk_range_set_min_slider_size" (t_typ @-> int32_t @-> returning (void))
let set_range =
  foreign "gtk_range_set_range" (t_typ @-> double @-> double @-> returning (void))
let set_restrict_to_fill_level =
  foreign "gtk_range_set_restrict_to_fill_level" (t_typ @-> bool @-> returning (void))
let set_round_digits =
  foreign "gtk_range_set_round_digits" (t_typ @-> int32_t @-> returning (void))
let set_show_fill_level =
  foreign "gtk_range_set_show_fill_level" (t_typ @-> bool @-> returning (void))
let set_slider_size_fixed =
  foreign "gtk_range_set_slider_size_fixed" (t_typ @-> bool @-> returning (void))
let set_upper_stepper_sensitivity =
  foreign "gtk_range_set_upper_stepper_sensitivity" (t_typ @-> Sensitivity_type.t_view @-> returning (void))
let set_value =
  foreign "gtk_range_set_value" (t_typ @-> double @-> returning (void))
