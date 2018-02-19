open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_level_bar_new return type object not handled*)
(*Not implemented gtk_level_bar_new_for_interval return type object not handled*)
let add_offset_value =
  foreign "gtk_level_bar_add_offset_value" (ptr t_typ @-> string @-> double @-> returning (void))
let get_inverted =
  foreign "gtk_level_bar_get_inverted" (ptr t_typ @-> returning (bool))
let get_max_value =
  foreign "gtk_level_bar_get_max_value" (ptr t_typ @-> returning (double))
let get_min_value =
  foreign "gtk_level_bar_get_min_value" (ptr t_typ @-> returning (double))
let get_mode =
  foreign "gtk_level_bar_get_mode" (ptr t_typ @-> returning (Level_bar_mode.t_view))
let get_offset_value self name =
  let value_ptr = allocate double 0.0 in
  let get_offset_value_raw =
    foreign "gtk_level_bar_get_offset_value" (ptr t_typ @-> string_opt @-> ptr (double) @-> returning bool)
  in
  let ret = get_offset_value_raw self name value_ptr in
  let value = !@ value_ptr in
  (ret, value)
let get_value =
  foreign "gtk_level_bar_get_value" (ptr t_typ @-> returning (double))
let remove_offset_value =
  foreign "gtk_level_bar_remove_offset_value" (ptr t_typ @-> string_opt @-> returning (void))
let set_inverted =
  foreign "gtk_level_bar_set_inverted" (ptr t_typ @-> bool @-> returning (void))
let set_max_value =
  foreign "gtk_level_bar_set_max_value" (ptr t_typ @-> double @-> returning (void))
let set_min_value =
  foreign "gtk_level_bar_set_min_value" (ptr t_typ @-> double @-> returning (void))
let set_mode =
  foreign "gtk_level_bar_set_mode" (ptr t_typ @-> Level_bar_mode.t_view @-> returning (void))
let set_value =
  foreign "gtk_level_bar_set_value" (ptr t_typ @-> double @-> returning (void))
