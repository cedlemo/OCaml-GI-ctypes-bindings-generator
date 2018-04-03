open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_box_new" (Orientation.t_view @-> int32_t @-> returning (Widget.t_typ))
let get_baseline_position =
  foreign "gtk_box_get_baseline_position" (t_typ @-> returning (Baseline_position.t_view))
let get_center_widget =
  foreign "gtk_box_get_center_widget" (t_typ @-> returning (Widget.t_typ))
let get_homogeneous =
  foreign "gtk_box_get_homogeneous" (t_typ @-> returning (bool))
let get_spacing =
  foreign "gtk_box_get_spacing" (t_typ @-> returning (int32_t))
let pack_end =
  foreign "gtk_box_pack_end" (t_typ @-> Widget.t_typ @-> bool @-> bool @-> uint32_t @-> returning (void))
let pack_start =
  foreign "gtk_box_pack_start" (t_typ @-> Widget.t_typ @-> bool @-> bool @-> uint32_t @-> returning (void))
let query_child_packing self child =
  let query_child_packing_raw =
    foreign "gtk_box_query_child_packing" (t_typ @-> Widget.t_typ @-> ptr (bool) @-> ptr (bool) @-> ptr (uint32_t) @-> ptr (Pack_type.t_view) @-> returning (void))
  in
  let expand_ptr = allocate bool false in
  let fill_ptr = allocate bool false in
  let padding_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let pack_type_ptr = allocate Pack_type.t_view (Pack_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = query_child_packing_raw self child expand_ptr fill_ptr padding_ptr pack_type_ptr in
  let expand = !@ expand_ptr in
  let fill = !@ fill_ptr in
  let padding = !@ padding_ptr in
  let pack_type = (!@ pack_type_ptr) in
  (expand, fill, padding, pack_type)
let reorder_child =
  foreign "gtk_box_reorder_child" (t_typ @-> Widget.t_typ @-> int32_t @-> returning (void))
let set_baseline_position =
  foreign "gtk_box_set_baseline_position" (t_typ @-> Baseline_position.t_view @-> returning (void))
let set_center_widget =
  foreign "gtk_box_set_center_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_child_packing =
  foreign "gtk_box_set_child_packing" (t_typ @-> Widget.t_typ @-> bool @-> bool @-> uint32_t @-> Pack_type.t_view @-> returning (void))
let set_homogeneous =
  foreign "gtk_box_set_homogeneous" (t_typ @-> bool @-> returning (void))
let set_spacing =
  foreign "gtk_box_set_spacing" (t_typ @-> int32_t @-> returning (void))
