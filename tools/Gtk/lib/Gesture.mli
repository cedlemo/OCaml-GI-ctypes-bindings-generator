open Ctypes

type t
val t_typ : t typ

val get_bounding_box :
  t structure ptr -> (bool * Rectangle.t structure)
val get_bounding_box_center :
  t structure ptr -> (bool * float * float)
(*Not implemented gtk_gesture_get_device return type object not handled*)
val get_group:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_gesture_get_last_event return type union not handled*)
val get_last_updated_sequence:
  t structure ptr -> Event_sequence.t structure ptr option
val get_point :
  t structure ptr -> Event_sequence.t structure ptr option -> (bool * float * float)
val get_sequence_state:
  t structure ptr -> Event_sequence.t structure ptr -> Event_sequence_state.t
val get_sequences:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_gesture_get_window return type object not handled*)
(*Not implemented gtk_gesture_group type object not implemented*)
val handles_sequence:
  t structure ptr -> Event_sequence.t structure ptr option -> bool
val is_active:
  t structure ptr -> bool
(*Not implemented gtk_gesture_is_grouped_with type object not implemented*)
val is_recognized:
  t structure ptr -> bool
val set_sequence_state:
  t structure ptr -> Event_sequence.t structure ptr -> Event_sequence_state.t -> bool
val set_state:
  t structure ptr -> Event_sequence_state.t -> bool
(*Not implemented gtk_gesture_set_window type object not implemented*)
val ungroup:
  t structure ptr -> unit
