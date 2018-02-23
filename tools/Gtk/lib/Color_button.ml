open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_color_button_new" (void @-> returning (Widget.t_typ))
let create_with_color =
  foreign "gtk_color_button_new_with_color" (ptr Color.t_typ @-> returning (Widget.t_typ))
let create_with_rgba =
  foreign "gtk_color_button_new_with_rgba" (ptr RGBA.t_typ @-> returning (Widget.t_typ))
let get_alpha =
  foreign "gtk_color_button_get_alpha" (t_typ @-> returning (uint16_t))
let get_color self =
  let color_ptr = allocate Color.t_typ (make Color.t_typ) in
  let get_color_raw =
    foreign "gtk_color_button_get_color" (t_typ @-> ptr (Color.t_typ) @-> returning void)
  in
  let ret = get_color_raw self color_ptr in
  let color = !@ color_ptr in
  (color)
let get_title =
  foreign "gtk_color_button_get_title" (t_typ @-> returning (string_opt))
let get_use_alpha =
  foreign "gtk_color_button_get_use_alpha" (t_typ @-> returning (bool))
let set_alpha =
  foreign "gtk_color_button_set_alpha" (t_typ @-> uint16_t @-> returning (void))
let set_color =
  foreign "gtk_color_button_set_color" (t_typ @-> ptr Color.t_typ @-> returning (void))
let set_title =
  foreign "gtk_color_button_set_title" (t_typ @-> string @-> returning (void))
let set_use_alpha =
  foreign "gtk_color_button_set_use_alpha" (t_typ @-> bool @-> returning (void))
