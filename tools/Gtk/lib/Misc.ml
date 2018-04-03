open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_alignment self =
  let get_alignment_raw =
    foreign "gtk_misc_get_alignment" (t_typ @-> ptr (float) @-> ptr (float) @-> returning (void))
  in
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let ret = get_alignment_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
let get_padding self =
  let get_padding_raw =
    foreign "gtk_misc_get_padding" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let xpad_ptr = allocate int32_t Int32.zero in
  let ypad_ptr = allocate int32_t Int32.zero in
  let ret = get_padding_raw self xpad_ptr ypad_ptr in
  let xpad = !@ xpad_ptr in
  let ypad = !@ ypad_ptr in
  (xpad, ypad)
let set_alignment =
  foreign "gtk_misc_set_alignment" (t_typ @-> float @-> float @-> returning (void))
let set_padding =
  foreign "gtk_misc_set_padding" (t_typ @-> int32_t @-> int32_t @-> returning (void))
