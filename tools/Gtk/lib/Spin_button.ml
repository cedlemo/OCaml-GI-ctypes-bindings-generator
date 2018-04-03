open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_spin_button_new" (Adjustment.t_typ @-> double @-> uint32_t @-> returning (Widget.t_typ))
let create_with_range =
  foreign "gtk_spin_button_new_with_range" (double @-> double @-> double @-> returning (Widget.t_typ))
let configure =
  foreign "gtk_spin_button_configure" (t_typ @-> Adjustment.t_typ @-> double @-> uint32_t @-> returning (void))
let get_adjustment =
  foreign "gtk_spin_button_get_adjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_digits =
  foreign "gtk_spin_button_get_digits" (t_typ @-> returning (uint32_t))
let get_increments self =
  let get_increments_raw =
    foreign "gtk_spin_button_get_increments" (t_typ @-> ptr (double) @-> ptr (double) @-> returning (void))
  in
  let step_ptr = allocate double 0.0 in
  let page_ptr = allocate double 0.0 in
  let ret = get_increments_raw self step_ptr page_ptr in
  let step = !@ step_ptr in
  let page = !@ page_ptr in
  (step, page)let get_numeric =
  foreign "gtk_spin_button_get_numeric" (t_typ @-> returning (bool))
let get_range self =
  let get_range_raw =
    foreign "gtk_spin_button_get_range" (t_typ @-> ptr (double) @-> ptr (double) @-> returning (void))
  in
  let min_ptr = allocate double 0.0 in
  let max_ptr = allocate double 0.0 in
  let ret = get_range_raw self min_ptr max_ptr in
  let min = !@ min_ptr in
  let max = !@ max_ptr in
  (min, max)let get_snap_to_ticks =
  foreign "gtk_spin_button_get_snap_to_ticks" (t_typ @-> returning (bool))
let get_update_policy =
  foreign "gtk_spin_button_get_update_policy" (t_typ @-> returning (Spin_button_update_policy.t_view))
let get_value =
  foreign "gtk_spin_button_get_value" (t_typ @-> returning (double))
let get_value_as_int =
  foreign "gtk_spin_button_get_value_as_int" (t_typ @-> returning (int32_t))
let get_wrap =
  foreign "gtk_spin_button_get_wrap" (t_typ @-> returning (bool))
let set_adjustment =
  foreign "gtk_spin_button_set_adjustment" (t_typ @-> Adjustment.t_typ @-> returning (void))
let set_digits =
  foreign "gtk_spin_button_set_digits" (t_typ @-> uint32_t @-> returning (void))
let set_increments =
  foreign "gtk_spin_button_set_increments" (t_typ @-> double @-> double @-> returning (void))
let set_numeric =
  foreign "gtk_spin_button_set_numeric" (t_typ @-> bool @-> returning (void))
let set_range =
  foreign "gtk_spin_button_set_range" (t_typ @-> double @-> double @-> returning (void))
let set_snap_to_ticks =
  foreign "gtk_spin_button_set_snap_to_ticks" (t_typ @-> bool @-> returning (void))
let set_update_policy =
  foreign "gtk_spin_button_set_update_policy" (t_typ @-> Spin_button_update_policy.t_view @-> returning (void))
let set_value =
  foreign "gtk_spin_button_set_value" (t_typ @-> double @-> returning (void))
let set_wrap =
  foreign "gtk_spin_button_set_wrap" (t_typ @-> bool @-> returning (void))
let spin =
  foreign "gtk_spin_button_spin" (t_typ @-> Spin_type.t_view @-> double @-> returning (void))
let update =
  foreign "gtk_spin_button_update" (t_typ @-> returning (void))
