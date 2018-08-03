open Ctypes

type t
val t_typ : t typ

val create :
  string option -> Widget.t ptr
val create_with_mnemonic :
  string option -> Widget.t ptr
val get_angle :
  t -> float
val get_attributes :
  t -> Attr_list.t structure ptr option
val get_current_uri :
  t -> string option
val get_ellipsize :
  t -> Ellipsize_mode.t
val get_justify :
  t -> Justification.t
val get_label :
  t -> string option
val get_layout :
  t -> Layout.t ptr
val get_layout_offsets :
  t -> (int32 * int32)
val get_line_wrap :
  t -> bool
val get_line_wrap_mode :
  t -> Wrap_mode.t
val get_lines :
  t -> int32
val get_max_width_chars :
  t -> int32
val get_mnemonic_keyval :
  t -> Unsigned.uint32
val get_mnemonic_widget :
  t -> Widget.t ptr option
val get_selectable :
  t -> bool
val get_selection_bounds :
  t -> (bool * int32 * int32)
val get_single_line_mode :
  t -> bool
val get_text :
  t -> string option
val get_track_visited_links :
  t -> bool
val get_use_markup :
  t -> bool
val get_use_underline :
  t -> bool
val get_width_chars :
  t -> int32
val get_xalign :
  t -> float
val get_yalign :
  t -> float
val select_region :
  t -> int32 -> int32 -> unit
val set_angle :
  t -> float -> unit
val set_attributes :
  t -> Attr_list.t structure ptr option -> unit
val set_ellipsize :
  t -> Ellipsize_mode.t -> unit
val set_justify :
  t -> Justification.t -> unit
val set_label :
  t -> string -> unit
val set_line_wrap :
  t -> bool -> unit
val set_line_wrap_mode :
  t -> Wrap_mode.t -> unit
val set_lines :
  t -> int32 -> unit
val set_markup :
  t -> string -> unit
val set_markup_with_mnemonic :
  t -> string -> unit
val set_max_width_chars :
  t -> int32 -> unit
val set_mnemonic_widget :
  t -> Widget.t ptr option -> unit
val set_pattern :
  t -> string -> unit
val set_selectable :
  t -> bool -> unit
val set_single_line_mode :
  t -> bool -> unit
val set_text :
  t -> string -> unit
val set_text_with_mnemonic :
  t -> string -> unit
val set_track_visited_links :
  t -> bool -> unit
val set_use_markup :
  t -> bool -> unit
val set_use_underline :
  t -> bool -> unit
val set_width_chars :
  t -> int32 -> unit
val set_xalign :
  t -> float -> unit
val set_yalign :
  t -> float -> unit
