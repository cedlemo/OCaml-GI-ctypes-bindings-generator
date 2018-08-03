open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_level_bar_new" (void @-> returning (ptr Widget.t_typ))
let create_for_interval =
  foreign "gtk_level_bar_new_for_interval" (double @-> double @-> returning (ptr Widget.t_typ))
let add_offset_value =
  foreign "gtk_level_bar_add_offset_value" (t_typ @-> string @-> double @-> returning (void))
let get_inverted =
  foreign "gtk_level_bar_get_inverted" (t_typ @-> returning (bool))
let get_max_value =
  foreign "gtk_level_bar_get_max_value" (t_typ @-> returning (double))
let get_min_value =
  foreign "gtk_level_bar_get_min_value" (t_typ @-> returning (double))
let get_mode =
  foreign "gtk_level_bar_get_mode" (t_typ @-> returning (Level_bar_mode.t_view))
let get_offset_value self name =
  let get_offset_value_raw =
    foreign "gtk_level_bar_get_offset_value" (t_typ @-> string_opt @-> ptr (double) @-> returning (bool))
  in
  let value_ptr = allocate double 0.0 in
  let ret = get_offset_value_raw self name value_ptr in
  let value = !@ value_ptr in
  (ret, value)
let get_value =
  foreign "gtk_level_bar_get_value" (t_typ @-> returning (double))
let remove_offset_value =
  foreign "gtk_level_bar_remove_offset_value" (t_typ @-> string_opt @-> returning (void))
let set_inverted =
  foreign "gtk_level_bar_set_inverted" (t_typ @-> bool @-> returning (void))
let set_max_value =
  foreign "gtk_level_bar_set_max_value" (t_typ @-> double @-> returning (void))
let set_min_value =
  foreign "gtk_level_bar_set_min_value" (t_typ @-> double @-> returning (void))
let set_mode =
  foreign "gtk_level_bar_set_mode" (t_typ @-> Level_bar_mode.t_view @-> returning (void))
let set_value =
  foreign "gtk_level_bar_set_value" (t_typ @-> double @-> returning (void))
