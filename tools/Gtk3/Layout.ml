open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_layout_new" (ptr_opt Adjustment.t_typ @-> ptr_opt Adjustment.t_typ @-> returning (ptr Widget.t_typ))
let get_bin_window =
  foreign "gtk_layout_get_bin_window" (t_typ @-> returning (ptr Window.t_typ))
let get_hadjustment =
  foreign "gtk_layout_get_hadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_size self =
  let get_size_raw =
    foreign "gtk_layout_get_size" (t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning (void))
  in
  let width_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let height_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = get_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_vadjustment =
  foreign "gtk_layout_get_vadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let move =
  foreign "gtk_layout_move" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))
let put =
  foreign "gtk_layout_put" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_hadjustment =
  foreign "gtk_layout_set_hadjustment" (t_typ @-> ptr_opt Adjustment.t_typ @-> returning (void))
let set_size =
  foreign "gtk_layout_set_size" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_vadjustment =
  foreign "gtk_layout_set_vadjustment" (t_typ @-> ptr_opt Adjustment.t_typ @-> returning (void))
