open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_adjustment_new" (double @-> double @-> double @-> double @-> double @-> double @-> returning (t_typ))
let changed =
  foreign "gtk_adjustment_changed" (t_typ @-> returning (void))
let clamp_page =
  foreign "gtk_adjustment_clamp_page" (t_typ @-> double @-> double @-> returning (void))
let configure =
  foreign "gtk_adjustment_configure" (t_typ @-> double @-> double @-> double @-> double @-> double @-> double @-> returning (void))
let get_lower =
  foreign "gtk_adjustment_get_lower" (t_typ @-> returning (double))
let get_minimum_increment =
  foreign "gtk_adjustment_get_minimum_increment" (t_typ @-> returning (double))
let get_page_increment =
  foreign "gtk_adjustment_get_page_increment" (t_typ @-> returning (double))
let get_page_size =
  foreign "gtk_adjustment_get_page_size" (t_typ @-> returning (double))
let get_step_increment =
  foreign "gtk_adjustment_get_step_increment" (t_typ @-> returning (double))
let get_upper =
  foreign "gtk_adjustment_get_upper" (t_typ @-> returning (double))
let get_value =
  foreign "gtk_adjustment_get_value" (t_typ @-> returning (double))
let set_lower =
  foreign "gtk_adjustment_set_lower" (t_typ @-> double @-> returning (void))
let set_page_increment =
  foreign "gtk_adjustment_set_page_increment" (t_typ @-> double @-> returning (void))
let set_page_size =
  foreign "gtk_adjustment_set_page_size" (t_typ @-> double @-> returning (void))
let set_step_increment =
  foreign "gtk_adjustment_set_step_increment" (t_typ @-> double @-> returning (void))
let set_upper =
  foreign "gtk_adjustment_set_upper" (t_typ @-> double @-> returning (void))
let set_value =
  foreign "gtk_adjustment_set_value" (t_typ @-> double @-> returning (void))
let value_changed =
  foreign "gtk_adjustment_value_changed" (t_typ @-> returning (void))
