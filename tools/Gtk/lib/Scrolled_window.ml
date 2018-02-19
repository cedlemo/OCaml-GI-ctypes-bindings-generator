open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_scrolled_window_new type object not implemented*)
(*Not implemented gtk_scrolled_window_add_with_viewport type object not implemented*)
let get_capture_button_press =
  foreign "gtk_scrolled_window_get_capture_button_press" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_scrolled_window_get_hadjustment return type object not handled*)
(*Not implemented gtk_scrolled_window_get_hscrollbar return type object not handled*)
let get_kinetic_scrolling =
  foreign "gtk_scrolled_window_get_kinetic_scrolling" (ptr t_typ @-> returning (bool))
let get_max_content_height =
  foreign "gtk_scrolled_window_get_max_content_height" (ptr t_typ @-> returning (int32_t))
let get_max_content_width =
  foreign "gtk_scrolled_window_get_max_content_width" (ptr t_typ @-> returning (int32_t))
let get_min_content_height =
  foreign "gtk_scrolled_window_get_min_content_height" (ptr t_typ @-> returning (int32_t))
let get_min_content_width =
  foreign "gtk_scrolled_window_get_min_content_width" (ptr t_typ @-> returning (int32_t))
let get_overlay_scrolling =
  foreign "gtk_scrolled_window_get_overlay_scrolling" (ptr t_typ @-> returning (bool))
let get_placement =
  foreign "gtk_scrolled_window_get_placement" (ptr t_typ @-> returning (Corner_type.t_view))
let get_policy self =
  let hscrollbar_policy_ptr = allocate Policy_type.t_view (Policy_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let vscrollbar_policy_ptr = allocate Policy_type.t_view (Policy_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_policy_raw =
    foreign "gtk_scrolled_window_get_policy" (ptr t_typ @-> ptr (Policy_type.t_view) @-> ptr (Policy_type.t_view) @-> returning void)
  in
  let ret = get_policy_raw self hscrollbar_policy_ptr vscrollbar_policy_ptr in
  let hscrollbar_policy = (!@ hscrollbar_policy_ptr) in
  let vscrollbar_policy = (!@ vscrollbar_policy_ptr) in
  (hscrollbar_policy, vscrollbar_policy)
let get_propagate_natural_height =
  foreign "gtk_scrolled_window_get_propagate_natural_height" (ptr t_typ @-> returning (bool))
let get_propagate_natural_width =
  foreign "gtk_scrolled_window_get_propagate_natural_width" (ptr t_typ @-> returning (bool))
let get_shadow_type =
  foreign "gtk_scrolled_window_get_shadow_type" (ptr t_typ @-> returning (Shadow_type.t_view))
(*Not implemented gtk_scrolled_window_get_vadjustment return type object not handled*)
(*Not implemented gtk_scrolled_window_get_vscrollbar return type object not handled*)
let set_capture_button_press =
  foreign "gtk_scrolled_window_set_capture_button_press" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_scrolled_window_set_hadjustment type object not implemented*)
let set_kinetic_scrolling =
  foreign "gtk_scrolled_window_set_kinetic_scrolling" (ptr t_typ @-> bool @-> returning (void))
let set_max_content_height =
  foreign "gtk_scrolled_window_set_max_content_height" (ptr t_typ @-> int32_t @-> returning (void))
let set_max_content_width =
  foreign "gtk_scrolled_window_set_max_content_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_min_content_height =
  foreign "gtk_scrolled_window_set_min_content_height" (ptr t_typ @-> int32_t @-> returning (void))
let set_min_content_width =
  foreign "gtk_scrolled_window_set_min_content_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_overlay_scrolling =
  foreign "gtk_scrolled_window_set_overlay_scrolling" (ptr t_typ @-> bool @-> returning (void))
let set_placement =
  foreign "gtk_scrolled_window_set_placement" (ptr t_typ @-> Corner_type.t_view @-> returning (void))
let set_policy =
  foreign "gtk_scrolled_window_set_policy" (ptr t_typ @-> Policy_type.t_view @-> Policy_type.t_view @-> returning (void))
let set_propagate_natural_height =
  foreign "gtk_scrolled_window_set_propagate_natural_height" (ptr t_typ @-> bool @-> returning (void))
let set_propagate_natural_width =
  foreign "gtk_scrolled_window_set_propagate_natural_width" (ptr t_typ @-> bool @-> returning (void))
let set_shadow_type =
  foreign "gtk_scrolled_window_set_shadow_type" (ptr t_typ @-> Shadow_type.t_view @-> returning (void))
(*Not implemented gtk_scrolled_window_set_vadjustment type object not implemented*)
let unset_placement =
  foreign "gtk_scrolled_window_unset_placement" (ptr t_typ @-> returning (void))
