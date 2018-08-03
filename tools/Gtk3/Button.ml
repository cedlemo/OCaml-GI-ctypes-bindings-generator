open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_button_new" (void @-> returning (ptr Widget.t_typ))
let create_from_icon_name =
  foreign "gtk_button_new_from_icon_name" (string_opt @-> int32_t @-> returning (ptr Widget.t_typ))
let create_from_stock =
  foreign "gtk_button_new_from_stock" (string @-> returning (ptr Widget.t_typ))
let create_with_label =
  foreign "gtk_button_new_with_label" (string @-> returning (ptr Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_button_new_with_mnemonic" (string @-> returning (ptr Widget.t_typ))
let clicked =
  foreign "gtk_button_clicked" (t_typ @-> returning (void))
let enter =
  foreign "gtk_button_enter" (t_typ @-> returning (void))
let get_alignment self =
  let get_alignment_raw =
    foreign "gtk_button_get_alignment" (t_typ @-> ptr (float) @-> ptr (float) @-> returning (void))
  in
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let ret = get_alignment_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
let get_always_show_image =
  foreign "gtk_button_get_always_show_image" (t_typ @-> returning (bool))
let get_event_window =
  foreign "gtk_button_get_event_window" (t_typ @-> returning (ptr Window.t_typ))
let get_focus_on_click =
  foreign "gtk_button_get_focus_on_click" (t_typ @-> returning (bool))
let get_image =
  foreign "gtk_button_get_image" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_image_position =
  foreign "gtk_button_get_image_position" (t_typ @-> returning (Position_type.t_view))
let get_label =
  foreign "gtk_button_get_label" (t_typ @-> returning (string_opt))
let get_relief =
  foreign "gtk_button_get_relief" (t_typ @-> returning (Relief_style.t_view))
let get_use_stock =
  foreign "gtk_button_get_use_stock" (t_typ @-> returning (bool))
let get_use_underline =
  foreign "gtk_button_get_use_underline" (t_typ @-> returning (bool))
let leave =
  foreign "gtk_button_leave" (t_typ @-> returning (void))
let pressed =
  foreign "gtk_button_pressed" (t_typ @-> returning (void))
let released =
  foreign "gtk_button_released" (t_typ @-> returning (void))
let set_alignment =
  foreign "gtk_button_set_alignment" (t_typ @-> float @-> float @-> returning (void))
let set_always_show_image =
  foreign "gtk_button_set_always_show_image" (t_typ @-> bool @-> returning (void))
let set_focus_on_click =
  foreign "gtk_button_set_focus_on_click" (t_typ @-> bool @-> returning (void))
let set_image =
  foreign "gtk_button_set_image" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_image_position =
  foreign "gtk_button_set_image_position" (t_typ @-> Position_type.t_view @-> returning (void))
let set_label =
  foreign "gtk_button_set_label" (t_typ @-> string @-> returning (void))
let set_relief =
  foreign "gtk_button_set_relief" (t_typ @-> Relief_style.t_view @-> returning (void))
let set_use_stock =
  foreign "gtk_button_set_use_stock" (t_typ @-> bool @-> returning (void))
let set_use_underline =
  foreign "gtk_button_set_use_underline" (t_typ @-> bool @-> returning (void))
