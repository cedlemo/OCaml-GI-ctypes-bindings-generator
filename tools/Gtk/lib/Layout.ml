open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_layout_new type object not implemented*)
(*Not implemented gtk_layout_get_bin_window return type object not handled*)
(*Not implemented gtk_layout_get_hadjustment return type object not handled*)
let get_size self =
  let width_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let height_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let get_size_raw =
    foreign "gtk_layout_get_size" (ptr t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning void)
  in
  let ret = get_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
(*Not implemented gtk_layout_get_vadjustment return type object not handled*)
(*Not implemented gtk_layout_move type object not implemented*)
(*Not implemented gtk_layout_put type object not implemented*)
(*Not implemented gtk_layout_set_hadjustment type object not implemented*)
let set_size =
  foreign "gtk_layout_set_size" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
(*Not implemented gtk_layout_set_vadjustment type object not implemented*)
