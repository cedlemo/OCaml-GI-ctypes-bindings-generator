open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_frame_new" (string_opt @-> returning (Widget.t_typ))
let get_label =
  foreign "gtk_frame_get_label" (t_typ @-> returning (string_opt))
let get_label_align self =
  let get_label_align_raw =
    foreign "gtk_frame_get_label_align" (t_typ @-> ptr (float) @-> ptr (float) @-> returning (void))
  in
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let ret = get_label_align_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)let get_label_widget =
  foreign "gtk_frame_get_label_widget" (t_typ @-> returning (Widget.t_typ))
let get_shadow_type =
  foreign "gtk_frame_get_shadow_type" (t_typ @-> returning (Shadow_type.t_view))
let set_label =
  foreign "gtk_frame_set_label" (t_typ @-> string_opt @-> returning (void))
let set_label_align =
  foreign "gtk_frame_set_label_align" (t_typ @-> float @-> float @-> returning (void))
let set_label_widget =
  foreign "gtk_frame_set_label_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_shadow_type =
  foreign "gtk_frame_set_shadow_type" (t_typ @-> Shadow_type.t_view @-> returning (void))
