open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let allocate =
  foreign "gtk_cell_area_context_allocate" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let get_allocation self =
  let get_allocation_raw =
    foreign "gtk_cell_area_context_get_allocation" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let ret = get_allocation_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_area =
  foreign "gtk_cell_area_context_get_area" (t_typ @-> returning (ptr Cell_area.t_typ))
let get_preferred_height self =
  let get_preferred_height_raw =
    foreign "gtk_cell_area_context_get_preferred_height" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_height_raw self minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_height_for_width self width =
  let get_preferred_height_for_width_raw =
    foreign "gtk_cell_area_context_get_preferred_height_for_width" (t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_height_for_width_raw self width minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_width self =
  let get_preferred_width_raw =
    foreign "gtk_cell_area_context_get_preferred_width" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_width_raw self minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_preferred_width_for_height self height =
  let get_preferred_width_for_height_raw =
    foreign "gtk_cell_area_context_get_preferred_width_for_height" (t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_width_for_height_raw self height minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let push_preferred_height =
  foreign "gtk_cell_area_context_push_preferred_height" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let push_preferred_width =
  foreign "gtk_cell_area_context_push_preferred_width" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let reset =
  foreign "gtk_cell_area_context_reset" (t_typ @-> returning (void))
