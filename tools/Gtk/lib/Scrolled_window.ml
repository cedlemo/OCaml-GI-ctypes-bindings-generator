open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_scrolled_window_new" (Adjustment.t_typ @-> Adjustment.t_typ @-> returning (Widget.t_typ))
let add_with_viewport =
  foreign "gtk_scrolled_window_add_with_viewport" (t_typ @-> Widget.t_typ @-> returning (void))
let get_capture_button_press =
  foreign "gtk_scrolled_window_get_capture_button_press" (t_typ @-> returning (bool))
let get_hadjustment =
  foreign "gtk_scrolled_window_get_hadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_hscrollbar =
  foreign "gtk_scrolled_window_get_hscrollbar" (t_typ @-> returning (Widget.t_typ))
let get_kinetic_scrolling =
  foreign "gtk_scrolled_window_get_kinetic_scrolling" (t_typ @-> returning (bool))
let get_max_content_height =
  foreign "gtk_scrolled_window_get_max_content_height" (t_typ @-> returning (int32_t))
let get_max_content_width =
  foreign "gtk_scrolled_window_get_max_content_width" (t_typ @-> returning (int32_t))
let get_min_content_height =
  foreign "gtk_scrolled_window_get_min_content_height" (t_typ @-> returning (int32_t))
let get_min_content_width =
  foreign "gtk_scrolled_window_get_min_content_width" (t_typ @-> returning (int32_t))
let get_overlay_scrolling =
  foreign "gtk_scrolled_window_get_overlay_scrolling" (t_typ @-> returning (bool))
let get_placement =
  foreign "gtk_scrolled_window_get_placement" (t_typ @-> returning (Corner_type.t_view))
let get_policy self =
  let get_policy_raw =
    foreign "gtk_scrolled_window_get_policy" (t_typ @-> ptr (Policy_type.t_view) @-> ptr (Policy_type.t_view) @-> returning (void))
  in
  let hscrollbar_policy_ptr = allocate Policy_type.t_view (Policy_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let vscrollbar_policy_ptr = allocate Policy_type.t_view (Policy_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = get_policy_raw self hscrollbar_policy_ptr vscrollbar_policy_ptr in
  let hscrollbar_policy = (!@ hscrollbar_policy_ptr) in
  let vscrollbar_policy = (!@ vscrollbar_policy_ptr) in
  (hscrollbar_policy, vscrollbar_policy)let get_propagate_natural_height =
  foreign "gtk_scrolled_window_get_propagate_natural_height" (t_typ @-> returning (bool))
let get_propagate_natural_width =
  foreign "gtk_scrolled_window_get_propagate_natural_width" (t_typ @-> returning (bool))
let get_shadow_type =
  foreign "gtk_scrolled_window_get_shadow_type" (t_typ @-> returning (Shadow_type.t_view))
let get_vadjustment =
  foreign "gtk_scrolled_window_get_vadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_vscrollbar =
  foreign "gtk_scrolled_window_get_vscrollbar" (t_typ @-> returning (Widget.t_typ))
let set_capture_button_press =
  foreign "gtk_scrolled_window_set_capture_button_press" (t_typ @-> bool @-> returning (void))
let set_hadjustment =
  foreign "gtk_scrolled_window_set_hadjustment" (t_typ @-> Adjustment.t_typ @-> returning (void))
let set_kinetic_scrolling =
  foreign "gtk_scrolled_window_set_kinetic_scrolling" (t_typ @-> bool @-> returning (void))
let set_max_content_height =
  foreign "gtk_scrolled_window_set_max_content_height" (t_typ @-> int32_t @-> returning (void))
let set_max_content_width =
  foreign "gtk_scrolled_window_set_max_content_width" (t_typ @-> int32_t @-> returning (void))
let set_min_content_height =
  foreign "gtk_scrolled_window_set_min_content_height" (t_typ @-> int32_t @-> returning (void))
let set_min_content_width =
  foreign "gtk_scrolled_window_set_min_content_width" (t_typ @-> int32_t @-> returning (void))
let set_overlay_scrolling =
  foreign "gtk_scrolled_window_set_overlay_scrolling" (t_typ @-> bool @-> returning (void))
let set_placement =
  foreign "gtk_scrolled_window_set_placement" (t_typ @-> Corner_type.t_view @-> returning (void))
let set_policy =
  foreign "gtk_scrolled_window_set_policy" (t_typ @-> Policy_type.t_view @-> Policy_type.t_view @-> returning (void))
let set_propagate_natural_height =
  foreign "gtk_scrolled_window_set_propagate_natural_height" (t_typ @-> bool @-> returning (void))
let set_propagate_natural_width =
  foreign "gtk_scrolled_window_set_propagate_natural_width" (t_typ @-> bool @-> returning (void))
let set_shadow_type =
  foreign "gtk_scrolled_window_set_shadow_type" (t_typ @-> Shadow_type.t_view @-> returning (void))
let set_vadjustment =
  foreign "gtk_scrolled_window_set_vadjustment" (t_typ @-> Adjustment.t_typ @-> returning (void))
let unset_placement =
  foreign "gtk_scrolled_window_unset_placement" (t_typ @-> returning (void))
