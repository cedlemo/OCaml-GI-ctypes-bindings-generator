open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_button_new return type object not handled*)
(*Not implemented gtk_button_new_from_icon_name return type object not handled*)
(*Not implemented gtk_button_new_from_stock return type object not handled*)
(*Not implemented gtk_button_new_with_label return type object not handled*)
(*Not implemented gtk_button_new_with_mnemonic return type object not handled*)
let clicked =
  foreign "gtk_button_clicked" (ptr t_typ @-> returning (void))
let enter =
  foreign "gtk_button_enter" (ptr t_typ @-> returning (void))
let get_alignment self =
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let get_alignment_raw =
    foreign "gtk_button_get_alignment" (ptr t_typ @-> ptr (float) @-> ptr (float) @-> returning void)
  in
  let ret = get_alignment_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
let get_always_show_image =
  foreign "gtk_button_get_always_show_image" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_button_get_event_window return type object not handled*)
let get_focus_on_click =
  foreign "gtk_button_get_focus_on_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_button_get_image return type object not handled*)
let get_image_position =
  foreign "gtk_button_get_image_position" (ptr t_typ @-> returning (Position_type.t_view))
let get_label =
  foreign "gtk_button_get_label" (ptr t_typ @-> returning (string_opt))
let get_relief =
  foreign "gtk_button_get_relief" (ptr t_typ @-> returning (Relief_style.t_view))
let get_use_stock =
  foreign "gtk_button_get_use_stock" (ptr t_typ @-> returning (bool))
let get_use_underline =
  foreign "gtk_button_get_use_underline" (ptr t_typ @-> returning (bool))
let leave =
  foreign "gtk_button_leave" (ptr t_typ @-> returning (void))
let pressed =
  foreign "gtk_button_pressed" (ptr t_typ @-> returning (void))
let released =
  foreign "gtk_button_released" (ptr t_typ @-> returning (void))
let set_alignment =
  foreign "gtk_button_set_alignment" (ptr t_typ @-> float @-> float @-> returning (void))
let set_always_show_image =
  foreign "gtk_button_set_always_show_image" (ptr t_typ @-> bool @-> returning (void))
let set_focus_on_click =
  foreign "gtk_button_set_focus_on_click" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_button_set_image type object not implemented*)
let set_image_position =
  foreign "gtk_button_set_image_position" (ptr t_typ @-> Position_type.t_view @-> returning (void))
let set_label =
  foreign "gtk_button_set_label" (ptr t_typ @-> string @-> returning (void))
let set_relief =
  foreign "gtk_button_set_relief" (ptr t_typ @-> Relief_style.t_view @-> returning (void))
let set_use_stock =
  foreign "gtk_button_set_use_stock" (ptr t_typ @-> bool @-> returning (void))
let set_use_underline =
  foreign "gtk_button_set_use_underline" (ptr t_typ @-> bool @-> returning (void))
