open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_adjustment_new return type object not handled*)
let changed =
  foreign "gtk_adjustment_changed" (ptr t_typ @-> returning (void))
let clamp_page =
  foreign "gtk_adjustment_clamp_page" (ptr t_typ @-> double @-> double @-> returning (void))
let configure =
  foreign "gtk_adjustment_configure" (ptr t_typ @-> double @-> double @-> double @-> double @-> double @-> double @-> returning (void))
let get_lower =
  foreign "gtk_adjustment_get_lower" (ptr t_typ @-> returning (double))
let get_minimum_increment =
  foreign "gtk_adjustment_get_minimum_increment" (ptr t_typ @-> returning (double))
let get_page_increment =
  foreign "gtk_adjustment_get_page_increment" (ptr t_typ @-> returning (double))
let get_page_size =
  foreign "gtk_adjustment_get_page_size" (ptr t_typ @-> returning (double))
let get_step_increment =
  foreign "gtk_adjustment_get_step_increment" (ptr t_typ @-> returning (double))
let get_upper =
  foreign "gtk_adjustment_get_upper" (ptr t_typ @-> returning (double))
let get_value =
  foreign "gtk_adjustment_get_value" (ptr t_typ @-> returning (double))
let set_lower =
  foreign "gtk_adjustment_set_lower" (ptr t_typ @-> double @-> returning (void))
let set_page_increment =
  foreign "gtk_adjustment_set_page_increment" (ptr t_typ @-> double @-> returning (void))
let set_page_size =
  foreign "gtk_adjustment_set_page_size" (ptr t_typ @-> double @-> returning (void))
let set_step_increment =
  foreign "gtk_adjustment_set_step_increment" (ptr t_typ @-> double @-> returning (void))
let set_upper =
  foreign "gtk_adjustment_set_upper" (ptr t_typ @-> double @-> returning (void))
let set_value =
  foreign "gtk_adjustment_set_value" (ptr t_typ @-> double @-> returning (void))
let value_changed =
  foreign "gtk_adjustment_value_changed" (ptr t_typ @-> returning (void))
