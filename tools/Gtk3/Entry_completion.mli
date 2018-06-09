open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val create_with_area :
  Cell_area.t -> t
val complete :
  t -> unit
val compute_prefix :
  t -> string -> string option
val delete_action :
  t -> int32 -> unit
val get_completion_prefix :
  t -> string option
val get_entry :
  t -> Widget.t
val get_inline_completion :
  t -> bool
val get_inline_selection :
  t -> bool
val get_minimum_key_length :
  t -> int32
(*Not implemented gtk_entry_completion_get_model return type interface not handled*)
val get_popup_completion :
  t -> bool
val get_popup_set_width :
  t -> bool
val get_popup_single_match :
  t -> bool
val get_text_column :
  t -> int32
val insert_action_markup :
  t -> int32 -> string -> unit
val insert_action_text :
  t -> int32 -> string -> unit
val insert_prefix :
  t -> unit
val set_inline_completion :
  t -> bool -> unit
val set_inline_selection :
  t -> bool -> unit
(*Not implemented gtk_entry_completion_set_match_func type callback not implemented*)
val set_minimum_key_length :
  t -> int32 -> unit
(*Not implemented gtk_entry_completion_set_model type interface not implemented*)
val set_popup_completion :
  t -> bool -> unit
val set_popup_set_width :
  t -> bool -> unit
val set_popup_single_match :
  t -> bool -> unit
val set_text_column :
  t -> int32 -> unit
