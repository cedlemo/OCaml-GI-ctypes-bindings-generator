open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_frame_new return type object not handled*)
let get_label =
  foreign "gtk_frame_get_label" (ptr t_typ @-> returning (string_opt))
let get_label_align self =
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let get_label_align_raw =
    foreign "gtk_frame_get_label_align" (ptr t_typ @-> ptr (float) @-> ptr (float) @-> returning void)
  in
  let ret = get_label_align_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
(*Not implemented gtk_frame_get_label_widget return type object not handled*)
let get_shadow_type =
  foreign "gtk_frame_get_shadow_type" (ptr t_typ @-> returning (Shadow_type.t_view))
let set_label =
  foreign "gtk_frame_set_label" (ptr t_typ @-> string_opt @-> returning (void))
let set_label_align =
  foreign "gtk_frame_set_label_align" (ptr t_typ @-> float @-> float @-> returning (void))
(*Not implemented gtk_frame_set_label_widget type object not implemented*)
let set_shadow_type =
  foreign "gtk_frame_set_shadow_type" (ptr t_typ @-> Shadow_type.t_view @-> returning (void))
