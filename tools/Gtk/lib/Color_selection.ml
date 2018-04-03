open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_color_selection_new" (void @-> returning (Widget.t_typ))
(*Not implemented gtk_color_selection_palette_from_string type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_color_selection_palette_to_string type C Array type for Types.Array tag not implemented*)
let get_current_alpha =
  foreign "gtk_color_selection_get_current_alpha" (t_typ @-> returning (uint16_t))
let get_current_color self =
  let get_current_color_raw =
    foreign "gtk_color_selection_get_current_color" (t_typ @-> ptr (Color.t_typ) @-> returning (void))
  in
  let color_ptr = allocate Color.t_typ (make Color.t_typ) in
  let ret = get_current_color_raw self color_ptr in
  let color = !@ color_ptr in
  (color)
let get_current_rgba self =
  let get_current_rgba_raw =
    foreign "gtk_color_selection_get_current_rgba" (t_typ @-> ptr (RGBA.t_typ) @-> returning (void))
  in
  let rgba_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = get_current_rgba_raw self rgba_ptr in
  let rgba = !@ rgba_ptr in
  (rgba)
let get_has_opacity_control =
  foreign "gtk_color_selection_get_has_opacity_control" (t_typ @-> returning (bool))
let get_has_palette =
  foreign "gtk_color_selection_get_has_palette" (t_typ @-> returning (bool))
let get_previous_alpha =
  foreign "gtk_color_selection_get_previous_alpha" (t_typ @-> returning (uint16_t))
let get_previous_color self =
  let get_previous_color_raw =
    foreign "gtk_color_selection_get_previous_color" (t_typ @-> ptr (Color.t_typ) @-> returning (void))
  in
  let color_ptr = allocate Color.t_typ (make Color.t_typ) in
  let ret = get_previous_color_raw self color_ptr in
  let color = !@ color_ptr in
  (color)
let get_previous_rgba self =
  let get_previous_rgba_raw =
    foreign "gtk_color_selection_get_previous_rgba" (t_typ @-> ptr (RGBA.t_typ) @-> returning (void))
  in
  let rgba_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = get_previous_rgba_raw self rgba_ptr in
  let rgba = !@ rgba_ptr in
  (rgba)
let is_adjusting =
  foreign "gtk_color_selection_is_adjusting" (t_typ @-> returning (bool))
let set_current_alpha =
  foreign "gtk_color_selection_set_current_alpha" (t_typ @-> uint16_t @-> returning (void))
let set_current_color =
  foreign "gtk_color_selection_set_current_color" (t_typ @-> ptr Color.t_typ @-> returning (void))
let set_current_rgba =
  foreign "gtk_color_selection_set_current_rgba" (t_typ @-> ptr RGBA.t_typ @-> returning (void))
let set_has_opacity_control =
  foreign "gtk_color_selection_set_has_opacity_control" (t_typ @-> bool @-> returning (void))
let set_has_palette =
  foreign "gtk_color_selection_set_has_palette" (t_typ @-> bool @-> returning (void))
let set_previous_alpha =
  foreign "gtk_color_selection_set_previous_alpha" (t_typ @-> uint16_t @-> returning (void))
let set_previous_color =
  foreign "gtk_color_selection_set_previous_color" (t_typ @-> ptr Color.t_typ @-> returning (void))
let set_previous_rgba =
  foreign "gtk_color_selection_set_previous_rgba" (t_typ @-> ptr RGBA.t_typ @-> returning (void))
