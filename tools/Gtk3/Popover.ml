open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_popover_new" (ptr_opt Widget.t_typ @-> returning (ptr Widget.t_typ))
let create_from_model =
  foreign "gtk_popover_new_from_model" (ptr_opt Widget.t_typ @-> ptr Menu_model.t_typ @-> returning (ptr Widget.t_typ))
let bind_model =
  foreign "gtk_popover_bind_model" (t_typ @-> ptr_opt Menu_model.t_typ @-> string_opt @-> returning (void))
let get_constrain_to =
  foreign "gtk_popover_get_constrain_to" (t_typ @-> returning (Popover_constraint.t_view))
let get_default_widget =
  foreign "gtk_popover_get_default_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_modal =
  foreign "gtk_popover_get_modal" (t_typ @-> returning (bool))
let get_pointing_to self =
  let get_pointing_to_raw =
    foreign "gtk_popover_get_pointing_to" (t_typ @-> ptr (Rectangle.t_typ) @-> returning (bool))
  in
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_pointing_to_raw self rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let get_position =
  foreign "gtk_popover_get_position" (t_typ @-> returning (Position_type.t_view))
let get_relative_to =
  foreign "gtk_popover_get_relative_to" (t_typ @-> returning (ptr Widget.t_typ))
let get_transitions_enabled =
  foreign "gtk_popover_get_transitions_enabled" (t_typ @-> returning (bool))
let popdown =
  foreign "gtk_popover_popdown" (t_typ @-> returning (void))
let popup =
  foreign "gtk_popover_popup" (t_typ @-> returning (void))
let set_constrain_to =
  foreign "gtk_popover_set_constrain_to" (t_typ @-> Popover_constraint.t_view @-> returning (void))
let set_default_widget =
  foreign "gtk_popover_set_default_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_modal =
  foreign "gtk_popover_set_modal" (t_typ @-> bool @-> returning (void))
let set_pointing_to =
  foreign "gtk_popover_set_pointing_to" (t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let set_position =
  foreign "gtk_popover_set_position" (t_typ @-> Position_type.t_view @-> returning (void))
let set_relative_to =
  foreign "gtk_popover_set_relative_to" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_transitions_enabled =
  foreign "gtk_popover_set_transitions_enabled" (t_typ @-> bool @-> returning (void))
