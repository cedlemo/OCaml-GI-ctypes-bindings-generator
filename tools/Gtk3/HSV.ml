open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_hsv_new" (void @-> returning (ptr Widget.t_typ))
let to_rgb h s v =
  let to_rgb_raw =
    foreign "gtk_hsv_to_rgb" (double @-> double @-> double @-> ptr (double) @-> ptr (double) @-> ptr (double) @-> returning (void))
  in
  let r_ptr = allocate double 0.0 in
  let g_ptr = allocate double 0.0 in
  let b_ptr = allocate double 0.0 in
  let ret = to_rgb_raw h s v r_ptr g_ptr b_ptr in
  let r = !@ r_ptr in
  let g = !@ g_ptr in
  let b = !@ b_ptr in
  (r, g, b)
let get_color self =
  let get_color_raw =
    foreign "gtk_hsv_get_color" (t_typ @-> ptr (double) @-> ptr (double) @-> ptr (double) @-> returning (void))
  in
  let h_ptr = allocate double 0.0 in
  let s_ptr = allocate double 0.0 in
  let v_ptr = allocate double 0.0 in
  let ret = get_color_raw self h_ptr s_ptr v_ptr in
  let h = !@ h_ptr in
  let s = !@ s_ptr in
  let v = !@ v_ptr in
  (h, s, v)
let get_metrics self =
  let get_metrics_raw =
    foreign "gtk_hsv_get_metrics" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let size_ptr = allocate int32_t Int32.zero in
  let ring_width_ptr = allocate int32_t Int32.zero in
  let ret = get_metrics_raw self size_ptr ring_width_ptr in
  let size = !@ size_ptr in
  let ring_width = !@ ring_width_ptr in
  (size, ring_width)
let is_adjusting =
  foreign "gtk_hsv_is_adjusting" (t_typ @-> returning (bool))
let set_color =
  foreign "gtk_hsv_set_color" (t_typ @-> double @-> double @-> double @-> returning (void))
let set_metrics =
  foreign "gtk_hsv_set_metrics" (t_typ @-> int32_t @-> int32_t @-> returning (void))
