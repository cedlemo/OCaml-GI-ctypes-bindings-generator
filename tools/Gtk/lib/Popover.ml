open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_popover_new type object not implemented*)
(*Not implemented gtk_popover_new_from_model type object not implemented*)
(*Not implemented gtk_popover_bind_model type object not implemented*)
let get_constrain_to =
  foreign "gtk_popover_get_constrain_to" (ptr t_typ @-> returning (Popover_constraint.t_view))
(*Not implemented gtk_popover_get_default_widget return type object not handled*)
let get_modal =
  foreign "gtk_popover_get_modal" (ptr t_typ @-> returning (bool))
let get_pointing_to self =
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_pointing_to_raw =
    foreign "gtk_popover_get_pointing_to" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = get_pointing_to_raw self rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let get_position =
  foreign "gtk_popover_get_position" (ptr t_typ @-> returning (Position_type.t_view))
(*Not implemented gtk_popover_get_relative_to return type object not handled*)
let get_transitions_enabled =
  foreign "gtk_popover_get_transitions_enabled" (ptr t_typ @-> returning (bool))
let popdown =
  foreign "gtk_popover_popdown" (ptr t_typ @-> returning (void))
let popup =
  foreign "gtk_popover_popup" (ptr t_typ @-> returning (void))
let set_constrain_to =
  foreign "gtk_popover_set_constrain_to" (ptr t_typ @-> Popover_constraint.t_view @-> returning (void))
(*Not implemented gtk_popover_set_default_widget type object not implemented*)
let set_modal =
  foreign "gtk_popover_set_modal" (ptr t_typ @-> bool @-> returning (void))
let set_pointing_to =
  foreign "gtk_popover_set_pointing_to" (ptr t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let set_position =
  foreign "gtk_popover_set_position" (ptr t_typ @-> Position_type.t_view @-> returning (void))
(*Not implemented gtk_popover_set_relative_to type object not implemented*)
let set_transitions_enabled =
  foreign "gtk_popover_set_transitions_enabled" (ptr t_typ @-> bool @-> returning (void))
