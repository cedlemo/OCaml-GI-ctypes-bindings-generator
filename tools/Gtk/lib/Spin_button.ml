open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_spin_button_new type object not implemented*)
(*Not implemented gtk_spin_button_new_with_range return type object not handled*)
(*Not implemented gtk_spin_button_configure type object not implemented*)
(*Not implemented gtk_spin_button_get_adjustment return type object not handled*)
let get_digits =
  foreign "gtk_spin_button_get_digits" (ptr t_typ @-> returning (uint32_t))
let get_increments self =
  let step_ptr = allocate double 0.0 in
  let page_ptr = allocate double 0.0 in
  let get_increments_raw =
    foreign "gtk_spin_button_get_increments" (ptr t_typ @-> ptr (double) @-> ptr (double) @-> returning void)
  in
  let ret = get_increments_raw self step_ptr page_ptr in
  let step = !@ step_ptr in
  let page = !@ page_ptr in
  (step, page)
let get_numeric =
  foreign "gtk_spin_button_get_numeric" (ptr t_typ @-> returning (bool))
let get_range self =
  let min_ptr = allocate double 0.0 in
  let max_ptr = allocate double 0.0 in
  let get_range_raw =
    foreign "gtk_spin_button_get_range" (ptr t_typ @-> ptr (double) @-> ptr (double) @-> returning void)
  in
  let ret = get_range_raw self min_ptr max_ptr in
  let min = !@ min_ptr in
  let max = !@ max_ptr in
  (min, max)
let get_snap_to_ticks =
  foreign "gtk_spin_button_get_snap_to_ticks" (ptr t_typ @-> returning (bool))
let get_update_policy =
  foreign "gtk_spin_button_get_update_policy" (ptr t_typ @-> returning (Spin_button_update_policy.t_view))
let get_value =
  foreign "gtk_spin_button_get_value" (ptr t_typ @-> returning (double))
let get_value_as_int =
  foreign "gtk_spin_button_get_value_as_int" (ptr t_typ @-> returning (int32_t))
let get_wrap =
  foreign "gtk_spin_button_get_wrap" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_spin_button_set_adjustment type object not implemented*)
let set_digits =
  foreign "gtk_spin_button_set_digits" (ptr t_typ @-> uint32_t @-> returning (void))
let set_increments =
  foreign "gtk_spin_button_set_increments" (ptr t_typ @-> double @-> double @-> returning (void))
let set_numeric =
  foreign "gtk_spin_button_set_numeric" (ptr t_typ @-> bool @-> returning (void))
let set_range =
  foreign "gtk_spin_button_set_range" (ptr t_typ @-> double @-> double @-> returning (void))
let set_snap_to_ticks =
  foreign "gtk_spin_button_set_snap_to_ticks" (ptr t_typ @-> bool @-> returning (void))
let set_update_policy =
  foreign "gtk_spin_button_set_update_policy" (ptr t_typ @-> Spin_button_update_policy.t_view @-> returning (void))
let set_value =
  foreign "gtk_spin_button_set_value" (ptr t_typ @-> double @-> returning (void))
let set_wrap =
  foreign "gtk_spin_button_set_wrap" (ptr t_typ @-> bool @-> returning (void))
let spin =
  foreign "gtk_spin_button_spin" (ptr t_typ @-> Spin_type.t_view @-> double @-> returning (void))
let update =
  foreign "gtk_spin_button_update" (ptr t_typ @-> returning (void))
