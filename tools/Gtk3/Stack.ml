open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_stack_new" (void @-> returning (ptr Widget.t_typ))
let add_named =
  foreign "gtk_stack_add_named" (t_typ @-> ptr Widget.t_typ @-> string @-> returning (void))
let add_titled =
  foreign "gtk_stack_add_titled" (t_typ @-> ptr Widget.t_typ @-> string @-> string @-> returning (void))
let get_child_by_name =
  foreign "gtk_stack_get_child_by_name" (t_typ @-> string @-> returning (ptr_opt Widget.t_typ))
let get_hhomogeneous =
  foreign "gtk_stack_get_hhomogeneous" (t_typ @-> returning (bool))
let get_homogeneous =
  foreign "gtk_stack_get_homogeneous" (t_typ @-> returning (bool))
let get_interpolate_size =
  foreign "gtk_stack_get_interpolate_size" (t_typ @-> returning (bool))
let get_transition_duration =
  foreign "gtk_stack_get_transition_duration" (t_typ @-> returning (uint32_t))
let get_transition_running =
  foreign "gtk_stack_get_transition_running" (t_typ @-> returning (bool))
let get_transition_type =
  foreign "gtk_stack_get_transition_type" (t_typ @-> returning (Stack_transition_type.t_view))
let get_vhomogeneous =
  foreign "gtk_stack_get_vhomogeneous" (t_typ @-> returning (bool))
let get_visible_child =
  foreign "gtk_stack_get_visible_child" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_visible_child_name =
  foreign "gtk_stack_get_visible_child_name" (t_typ @-> returning (string_opt))
let set_hhomogeneous =
  foreign "gtk_stack_set_hhomogeneous" (t_typ @-> bool @-> returning (void))
let set_homogeneous =
  foreign "gtk_stack_set_homogeneous" (t_typ @-> bool @-> returning (void))
let set_interpolate_size =
  foreign "gtk_stack_set_interpolate_size" (t_typ @-> bool @-> returning (void))
let set_transition_duration =
  foreign "gtk_stack_set_transition_duration" (t_typ @-> uint32_t @-> returning (void))
let set_transition_type =
  foreign "gtk_stack_set_transition_type" (t_typ @-> Stack_transition_type.t_view @-> returning (void))
let set_vhomogeneous =
  foreign "gtk_stack_set_vhomogeneous" (t_typ @-> bool @-> returning (void))
let set_visible_child =
  foreign "gtk_stack_set_visible_child" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let set_visible_child_full =
  foreign "gtk_stack_set_visible_child_full" (t_typ @-> string @-> Stack_transition_type.t_view @-> returning (void))
let set_visible_child_name =
  foreign "gtk_stack_set_visible_child_name" (t_typ @-> string @-> returning (void))
