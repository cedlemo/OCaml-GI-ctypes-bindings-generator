open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_label_new" (string_opt @-> returning (Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_label_new_with_mnemonic" (string_opt @-> returning (Widget.t_typ))
let get_angle =
  foreign "gtk_label_get_angle" (t_typ @-> returning (double))
let get_attributes =
  foreign "gtk_label_get_attributes" (t_typ @-> returning (ptr_opt Attr_list.t_typ))
let get_current_uri =
  foreign "gtk_label_get_current_uri" (t_typ @-> returning (string_opt))
let get_ellipsize =
  foreign "gtk_label_get_ellipsize" (t_typ @-> returning (Ellipsize_mode.t_view))
let get_justify =
  foreign "gtk_label_get_justify" (t_typ @-> returning (Justification.t_view))
let get_label =
  foreign "gtk_label_get_label" (t_typ @-> returning (string_opt))
let get_layout =
  foreign "gtk_label_get_layout" (t_typ @-> returning (Layout.t_typ))
let get_layout_offsets self =
  let x_ptr = allocate int32_t Int32.zero in
  let y_ptr = allocate int32_t Int32.zero in
  let get_layout_offsets_raw =
    foreign "gtk_label_get_layout_offsets" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_layout_offsets_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (x, y)
let get_line_wrap =
  foreign "gtk_label_get_line_wrap" (t_typ @-> returning (bool))
let get_line_wrap_mode =
  foreign "gtk_label_get_line_wrap_mode" (t_typ @-> returning (Wrap_mode.t_view))
let get_lines =
  foreign "gtk_label_get_lines" (t_typ @-> returning (int32_t))
let get_max_width_chars =
  foreign "gtk_label_get_max_width_chars" (t_typ @-> returning (int32_t))
let get_mnemonic_keyval =
  foreign "gtk_label_get_mnemonic_keyval" (t_typ @-> returning (uint32_t))
let get_mnemonic_widget =
  foreign "gtk_label_get_mnemonic_widget" (t_typ @-> returning (Widget.t_typ))
let get_selectable =
  foreign "gtk_label_get_selectable" (t_typ @-> returning (bool))
let get_selection_bounds self =
  let start_ptr = allocate int32_t Int32.zero in
  let _end_ptr = allocate int32_t Int32.zero in
  let get_selection_bounds_raw =
    foreign "gtk_label_get_selection_bounds" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning bool)
  in
  let ret = get_selection_bounds_raw self start_ptr _end_ptr in
  let start = !@ start_ptr in
  let _end = !@ _end_ptr in
  (ret, start, _end)
let get_single_line_mode =
  foreign "gtk_label_get_single_line_mode" (t_typ @-> returning (bool))
let get_text =
  foreign "gtk_label_get_text" (t_typ @-> returning (string_opt))
let get_track_visited_links =
  foreign "gtk_label_get_track_visited_links" (t_typ @-> returning (bool))
let get_use_markup =
  foreign "gtk_label_get_use_markup" (t_typ @-> returning (bool))
let get_use_underline =
  foreign "gtk_label_get_use_underline" (t_typ @-> returning (bool))
let get_width_chars =
  foreign "gtk_label_get_width_chars" (t_typ @-> returning (int32_t))
let get_xalign =
  foreign "gtk_label_get_xalign" (t_typ @-> returning (float))
let get_yalign =
  foreign "gtk_label_get_yalign" (t_typ @-> returning (float))
let select_region =
  foreign "gtk_label_select_region" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_angle =
  foreign "gtk_label_set_angle" (t_typ @-> double @-> returning (void))
let set_attributes =
  foreign "gtk_label_set_attributes" (t_typ @-> ptr_opt Attr_list.t_typ @-> returning (void))
let set_ellipsize =
  foreign "gtk_label_set_ellipsize" (t_typ @-> Ellipsize_mode.t_view @-> returning (void))
let set_justify =
  foreign "gtk_label_set_justify" (t_typ @-> Justification.t_view @-> returning (void))
let set_label =
  foreign "gtk_label_set_label" (t_typ @-> string @-> returning (void))
let set_line_wrap =
  foreign "gtk_label_set_line_wrap" (t_typ @-> bool @-> returning (void))
let set_line_wrap_mode =
  foreign "gtk_label_set_line_wrap_mode" (t_typ @-> Wrap_mode.t_view @-> returning (void))
let set_lines =
  foreign "gtk_label_set_lines" (t_typ @-> int32_t @-> returning (void))
let set_markup =
  foreign "gtk_label_set_markup" (t_typ @-> string @-> returning (void))
let set_markup_with_mnemonic =
  foreign "gtk_label_set_markup_with_mnemonic" (t_typ @-> string @-> returning (void))
let set_max_width_chars =
  foreign "gtk_label_set_max_width_chars" (t_typ @-> int32_t @-> returning (void))
let set_mnemonic_widget =
  foreign "gtk_label_set_mnemonic_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_pattern =
  foreign "gtk_label_set_pattern" (t_typ @-> string @-> returning (void))
let set_selectable =
  foreign "gtk_label_set_selectable" (t_typ @-> bool @-> returning (void))
let set_single_line_mode =
  foreign "gtk_label_set_single_line_mode" (t_typ @-> bool @-> returning (void))
let set_text =
  foreign "gtk_label_set_text" (t_typ @-> string @-> returning (void))
let set_text_with_mnemonic =
  foreign "gtk_label_set_text_with_mnemonic" (t_typ @-> string @-> returning (void))
let set_track_visited_links =
  foreign "gtk_label_set_track_visited_links" (t_typ @-> bool @-> returning (void))
let set_use_markup =
  foreign "gtk_label_set_use_markup" (t_typ @-> bool @-> returning (void))
let set_use_underline =
  foreign "gtk_label_set_use_underline" (t_typ @-> bool @-> returning (void))
let set_width_chars =
  foreign "gtk_label_set_width_chars" (t_typ @-> int32_t @-> returning (void))
let set_xalign =
  foreign "gtk_label_set_xalign" (t_typ @-> float @-> returning (void))
let set_yalign =
  foreign "gtk_label_set_yalign" (t_typ @-> float @-> returning (void))
