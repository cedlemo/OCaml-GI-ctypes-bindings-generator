open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val add_action_widget:
  t -> Widget.t -> unit
val append_page:
  t -> Widget.t -> int32
val commit:
  t -> unit
val get_current_page:
  t -> int32
val get_n_pages:
  t -> int32
val get_nth_page:
  t -> int32 -> Widget.t
val get_page_complete:
  t -> Widget.t -> bool
val get_page_has_padding:
  t -> Widget.t -> bool
val get_page_header_image:
  t -> Widget.t -> Pixbuf.t
val get_page_side_image:
  t -> Widget.t -> Pixbuf.t
val get_page_title:
  t -> Widget.t -> string option
val get_page_type:
  t -> Widget.t -> Assistant_page_type.t
val insert_page:
  t -> Widget.t -> int32 -> int32
val next_page:
  t -> unit
val prepend_page:
  t -> Widget.t -> int32
val previous_page:
  t -> unit
val remove_action_widget:
  t -> Widget.t -> unit
val remove_page:
  t -> int32 -> unit
val set_current_page:
  t -> int32 -> unit
(*Not implemented gtk_assistant_set_forward_page_func type callback not implemented*)
val set_page_complete:
  t -> Widget.t -> bool -> unit
val set_page_has_padding:
  t -> Widget.t -> bool -> unit
val set_page_header_image:
  t -> Widget.t -> Pixbuf.t -> unit
val set_page_side_image:
  t -> Widget.t -> Pixbuf.t -> unit
val set_page_title:
  t -> Widget.t -> string -> unit
val set_page_type:
  t -> Widget.t -> Assistant_page_type.t -> unit
val update_buttons_state:
  t -> unit
