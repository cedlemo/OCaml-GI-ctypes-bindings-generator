open Ctypes

type t
val t_typ : t typ

val get_bounding_box :
  t -> (bool * Rectangle.t structure)
val get_bounding_box_center :
  t -> (bool * float * float)
val get_device :
  t -> Device.t ptr option
val get_group :
  t -> List.t structure (* Not implemented : interface *) ptr
(*Not implemented gtk_gesture_get_last_event return type union not handled*)
val get_last_updated_sequence :
  t -> Event_sequence.t structure ptr option
val get_point :
  t -> Event_sequence.t structure ptr option -> (bool * float * float)
val get_sequence_state :
  t -> Event_sequence.t structure ptr -> Event_sequence_state.t
val get_sequences :
  t -> List.t structure (* Not implemented : interface *) ptr
val get_window :
  t -> Window.t ptr option
val group :
  t -> t ptr -> unit
val handles_sequence :
  t -> Event_sequence.t structure ptr option -> bool
val is_active :
  t -> bool
val is_grouped_with :
  t -> t ptr -> bool
val is_recognized :
  t -> bool
val set_sequence_state :
  t -> Event_sequence.t structure ptr -> Event_sequence_state.t -> bool
val set_state :
  t -> Event_sequence_state.t -> bool
val set_window :
  t -> Window.t ptr option -> unit
val ungroup :
  t -> unit
