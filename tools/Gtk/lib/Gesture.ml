open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_bounding_box self =
  let get_bounding_box_raw =
    foreign "gtk_gesture_get_bounding_box" (t_typ @-> ptr (Rectangle.t_typ) @-> returning (bool))
  in
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_bounding_box_raw self rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let get_bounding_box_center self =
  let get_bounding_box_center_raw =
    foreign "gtk_gesture_get_bounding_box_center" (t_typ @-> ptr (double) @-> ptr (double) @-> returning (bool))
  in
  let x_ptr = allocate double 0.0 in
  let y_ptr = allocate double 0.0 in
  let ret = get_bounding_box_center_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (ret, x, y)
let get_device =
  foreign "gtk_gesture_get_device" (t_typ @-> returning (Device.t_typ))
let get_group =
  foreign "gtk_gesture_get_group" (t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_gesture_get_last_event return type union not handled*)
let get_last_updated_sequence =
  foreign "gtk_gesture_get_last_updated_sequence" (t_typ @-> returning (ptr_opt Event_sequence.t_typ))
let get_point self sequence =
  let get_point_raw =
    foreign "gtk_gesture_get_point" (t_typ @-> ptr_opt Event_sequence.t_typ @-> ptr (double) @-> ptr (double) @-> returning (bool))
  in
  let x_ptr = allocate double 0.0 in
  let y_ptr = allocate double 0.0 in
  let ret = get_point_raw self sequence x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (ret, x, y)
let get_sequence_state =
  foreign "gtk_gesture_get_sequence_state" (t_typ @-> ptr Event_sequence.t_typ @-> returning (Event_sequence_state.t_view))
let get_sequences =
  foreign "gtk_gesture_get_sequences" (t_typ @-> returning (ptr List.t_typ))
let get_window =
  foreign "gtk_gesture_get_window" (t_typ @-> returning (Window.t_typ))
let group =
  foreign "gtk_gesture_group" (t_typ @-> t_typ @-> returning (void))
let handles_sequence =
  foreign "gtk_gesture_handles_sequence" (t_typ @-> ptr_opt Event_sequence.t_typ @-> returning (bool))
let is_active =
  foreign "gtk_gesture_is_active" (t_typ @-> returning (bool))
let is_grouped_with =
  foreign "gtk_gesture_is_grouped_with" (t_typ @-> t_typ @-> returning (bool))
let is_recognized =
  foreign "gtk_gesture_is_recognized" (t_typ @-> returning (bool))
let set_sequence_state =
  foreign "gtk_gesture_set_sequence_state" (t_typ @-> ptr Event_sequence.t_typ @-> Event_sequence_state.t_view @-> returning (bool))
let set_state =
  foreign "gtk_gesture_set_state" (t_typ @-> Event_sequence_state.t_view @-> returning (bool))
let set_window =
  foreign "gtk_gesture_set_window" (t_typ @-> Window.t_typ @-> returning (void))
let ungroup =
  foreign "gtk_gesture_ungroup" (t_typ @-> returning (void))
