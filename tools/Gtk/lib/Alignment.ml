open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_alignment_new return type object not handled*)
let get_padding self =
  let padding_top_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let padding_bottom_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let padding_left_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let padding_right_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let get_padding_raw =
    foreign "gtk_alignment_get_padding" (ptr t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning void)
  in
  let ret = get_padding_raw self padding_top_ptr padding_bottom_ptr padding_left_ptr padding_right_ptr in
  let padding_top = !@ padding_top_ptr in
  let padding_bottom = !@ padding_bottom_ptr in
  let padding_left = !@ padding_left_ptr in
  let padding_right = !@ padding_right_ptr in
  (padding_top, padding_bottom, padding_left, padding_right)
let set =
  foreign "gtk_alignment_set" (ptr t_typ @-> float @-> float @-> float @-> float @-> returning (void))
let set_padding =
  foreign "gtk_alignment_set_padding" (ptr t_typ @-> uint32_t @-> uint32_t @-> uint32_t @-> uint32_t @-> returning (void))
