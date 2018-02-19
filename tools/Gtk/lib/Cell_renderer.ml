open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_renderer_activate type union not implemented*)
(*Not implemented gtk_cell_renderer_get_aligned_area type object not implemented*)
let get_alignment self =
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let get_alignment_raw =
    foreign "gtk_cell_renderer_get_alignment" (ptr t_typ @-> ptr (float) @-> ptr (float) @-> returning void)
  in
  let ret = get_alignment_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
let get_fixed_size self =
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_fixed_size_raw =
    foreign "gtk_cell_renderer_get_fixed_size" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_fixed_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_padding self =
  let xpad_ptr = allocate int32_t Int32.zero in
  let ypad_ptr = allocate int32_t Int32.zero in
  let get_padding_raw =
    foreign "gtk_cell_renderer_get_padding" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_padding_raw self xpad_ptr ypad_ptr in
  let xpad = !@ xpad_ptr in
  let ypad = !@ ypad_ptr in
  (xpad, ypad)
(*Not implemented gtk_cell_renderer_get_preferred_height type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_height_for_width type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_size type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_width type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_width_for_height type object not implemented*)
let get_request_mode =
  foreign "gtk_cell_renderer_get_request_mode" (ptr t_typ @-> returning (Size_request_mode.t_view))
let get_sensitive =
  foreign "gtk_cell_renderer_get_sensitive" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_cell_renderer_get_size type object not implemented*)
(*Not implemented gtk_cell_renderer_get_state type object not implemented*)
let get_visible =
  foreign "gtk_cell_renderer_get_visible" (ptr t_typ @-> returning (bool))
let is_activatable =
  foreign "gtk_cell_renderer_is_activatable" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_cell_renderer_render type object not implemented*)
let set_alignment =
  foreign "gtk_cell_renderer_set_alignment" (ptr t_typ @-> float @-> float @-> returning (void))
let set_fixed_size =
  foreign "gtk_cell_renderer_set_fixed_size" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_padding =
  foreign "gtk_cell_renderer_set_padding" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_sensitive =
  foreign "gtk_cell_renderer_set_sensitive" (ptr t_typ @-> bool @-> returning (void))
let set_visible =
  foreign "gtk_cell_renderer_set_visible" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_cell_renderer_start_editing type union not implemented*)
let stop_editing =
  foreign "gtk_cell_renderer_stop_editing" (ptr t_typ @-> bool @-> returning (void))
