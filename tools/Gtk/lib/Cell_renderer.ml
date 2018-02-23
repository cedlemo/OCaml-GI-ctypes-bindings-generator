open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_renderer_activate type union not implemented*)
let get_aligned_area self widget flags cell_area =
  let aligned_area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_aligned_area_raw =
    foreign "gtk_cell_renderer_get_aligned_area" (t_typ @-> Widget.t_typ @-> Cell_renderer_state.t_list_view @-> ptr Rectangle.t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_aligned_area_raw self widget flags cell_area aligned_area_ptr in
  let aligned_area = !@ aligned_area_ptr in
  (aligned_area)
let get_alignment self =
  let xalign_ptr = allocate float 0.0 in
  let yalign_ptr = allocate float 0.0 in
  let get_alignment_raw =
    foreign "gtk_cell_renderer_get_alignment" (t_typ @-> ptr (float) @-> ptr (float) @-> returning void)
  in
  let ret = get_alignment_raw self xalign_ptr yalign_ptr in
  let xalign = !@ xalign_ptr in
  let yalign = !@ yalign_ptr in
  (xalign, yalign)
let get_fixed_size self =
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_fixed_size_raw =
    foreign "gtk_cell_renderer_get_fixed_size" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_fixed_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_padding self =
  let xpad_ptr = allocate int32_t Int32.zero in
  let ypad_ptr = allocate int32_t Int32.zero in
  let get_padding_raw =
    foreign "gtk_cell_renderer_get_padding" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_padding_raw self xpad_ptr ypad_ptr in
  let xpad = !@ xpad_ptr in
  let ypad = !@ ypad_ptr in
  (xpad, ypad)
let get_preferred_height self widget =
  let minimum_size_ptr = allocate int32_t Int32.zero in
  let natural_size_ptr = allocate int32_t Int32.zero in
  let get_preferred_height_raw =
    foreign "gtk_cell_renderer_get_preferred_height" (t_typ @-> Widget.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_height_raw self widget minimum_size_ptr natural_size_ptr in
  let minimum_size = !@ minimum_size_ptr in
  let natural_size = !@ natural_size_ptr in
  (minimum_size, natural_size)
let get_preferred_height_for_width self widget width =
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let get_preferred_height_for_width_raw =
    foreign "gtk_cell_renderer_get_preferred_height_for_width" (t_typ @-> Widget.t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_height_for_width_raw self widget width minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_size self widget =
  let minimum_size_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let natural_size_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_preferred_size_raw =
    foreign "gtk_cell_renderer_get_preferred_size" (t_typ @-> Widget.t_typ @-> ptr (Requisition.t_typ) @-> ptr (Requisition.t_typ) @-> returning void)
  in
  let ret = get_preferred_size_raw self widget minimum_size_ptr natural_size_ptr in
  let minimum_size = !@ minimum_size_ptr in
  let natural_size = !@ natural_size_ptr in
  (minimum_size, natural_size)
let get_preferred_width self widget =
  let minimum_size_ptr = allocate int32_t Int32.zero in
  let natural_size_ptr = allocate int32_t Int32.zero in
  let get_preferred_width_raw =
    foreign "gtk_cell_renderer_get_preferred_width" (t_typ @-> Widget.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_width_raw self widget minimum_size_ptr natural_size_ptr in
  let minimum_size = !@ minimum_size_ptr in
  let natural_size = !@ natural_size_ptr in
  (minimum_size, natural_size)
let get_preferred_width_for_height self widget height =
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let get_preferred_width_for_height_raw =
    foreign "gtk_cell_renderer_get_preferred_width_for_height" (t_typ @-> Widget.t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_width_for_height_raw self widget height minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_request_mode =
  foreign "gtk_cell_renderer_get_request_mode" (t_typ @-> returning (Size_request_mode.t_view))
let get_sensitive =
  foreign "gtk_cell_renderer_get_sensitive" (t_typ @-> returning (bool))
let get_size self widget cell_area =
  let x_offset_ptr = allocate int32_t Int32.zero in
  let y_offset_ptr = allocate int32_t Int32.zero in
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_size_raw =
    foreign "gtk_cell_renderer_get_size" (t_typ @-> Widget.t_typ @-> ptr_opt Rectangle.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_size_raw self widget cell_area x_offset_ptr y_offset_ptr width_ptr height_ptr in
  let x_offset = !@ x_offset_ptr in
  let y_offset = !@ y_offset_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (x_offset, y_offset, width, height)
let get_state =
  foreign "gtk_cell_renderer_get_state" (t_typ @-> Widget.t_typ @-> Cell_renderer_state.t_list_view @-> returning (State_flags.t_list_view))
let get_visible =
  foreign "gtk_cell_renderer_get_visible" (t_typ @-> returning (bool))
let is_activatable =
  foreign "gtk_cell_renderer_is_activatable" (t_typ @-> returning (bool))
let render =
  foreign "gtk_cell_renderer_render" (t_typ @-> ptr Context.t_typ @-> Widget.t_typ @-> ptr Rectangle.t_typ @-> ptr Rectangle.t_typ @-> Cell_renderer_state.t_list_view @-> returning (void))
let set_alignment =
  foreign "gtk_cell_renderer_set_alignment" (t_typ @-> float @-> float @-> returning (void))
let set_fixed_size =
  foreign "gtk_cell_renderer_set_fixed_size" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_padding =
  foreign "gtk_cell_renderer_set_padding" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_sensitive =
  foreign "gtk_cell_renderer_set_sensitive" (t_typ @-> bool @-> returning (void))
let set_visible =
  foreign "gtk_cell_renderer_set_visible" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_cell_renderer_start_editing type union not implemented*)
let stop_editing =
  foreign "gtk_cell_renderer_stop_editing" (t_typ @-> bool @-> returning (void))
