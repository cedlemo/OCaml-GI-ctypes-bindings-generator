open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_stack_new return type object not handled*)
(*Not implemented gtk_stack_add_named type object not implemented*)
(*Not implemented gtk_stack_add_titled type object not implemented*)
(*Not implemented gtk_stack_get_child_by_name return type object not handled*)
let get_hhomogeneous =
  foreign "gtk_stack_get_hhomogeneous" (ptr t_typ @-> returning (bool))
let get_homogeneous =
  foreign "gtk_stack_get_homogeneous" (ptr t_typ @-> returning (bool))
let get_interpolate_size =
  foreign "gtk_stack_get_interpolate_size" (ptr t_typ @-> returning (bool))
let get_transition_duration =
  foreign "gtk_stack_get_transition_duration" (ptr t_typ @-> returning (uint32_t))
let get_transition_running =
  foreign "gtk_stack_get_transition_running" (ptr t_typ @-> returning (bool))
let get_transition_type =
  foreign "gtk_stack_get_transition_type" (ptr t_typ @-> returning (Stack_transition_type.t_view))
let get_vhomogeneous =
  foreign "gtk_stack_get_vhomogeneous" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_stack_get_visible_child return type object not handled*)
let get_visible_child_name =
  foreign "gtk_stack_get_visible_child_name" (ptr t_typ @-> returning (string_opt))
let set_hhomogeneous =
  foreign "gtk_stack_set_hhomogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_homogeneous =
  foreign "gtk_stack_set_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_interpolate_size =
  foreign "gtk_stack_set_interpolate_size" (ptr t_typ @-> bool @-> returning (void))
let set_transition_duration =
  foreign "gtk_stack_set_transition_duration" (ptr t_typ @-> uint32_t @-> returning (void))
let set_transition_type =
  foreign "gtk_stack_set_transition_type" (ptr t_typ @-> Stack_transition_type.t_view @-> returning (void))
let set_vhomogeneous =
  foreign "gtk_stack_set_vhomogeneous" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_stack_set_visible_child type object not implemented*)
let set_visible_child_full =
  foreign "gtk_stack_set_visible_child_full" (ptr t_typ @-> string @-> Stack_transition_type.t_view @-> returning (void))
let set_visible_child_name =
  foreign "gtk_stack_set_visible_child_name" (ptr t_typ @-> string @-> returning (void))
