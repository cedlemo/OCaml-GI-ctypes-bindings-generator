open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let delete_surrounding =
  foreign "gtk_im_context_delete_surrounding" (t_typ @-> int32_t @-> int32_t @-> returning (bool))
let filter_keypress =
  foreign "gtk_im_context_filter_keypress" (t_typ @-> ptr Event_key.t_typ @-> returning (bool))
let focus_in =
  foreign "gtk_im_context_focus_in" (t_typ @-> returning (void))
let focus_out =
  foreign "gtk_im_context_focus_out" (t_typ @-> returning (void))
let get_preedit_string self =
  let get_preedit_string_raw =
    foreign "gtk_im_context_get_preedit_string" (t_typ @-> ptr (string) @-> ptr (ptr Attr_list.t_typ) @-> ptr (int32_t) @-> returning (void))
  in
  let str_ptr = allocate string " " in
  let attrs_ptr = allocate (ptr_opt Attr_list.t_typ) None in
  let cursor_pos_ptr = allocate int32_t Int32.zero in
  let ret = get_preedit_string_raw self str_ptr attrs_ptr cursor_pos_ptr in
  let str = !@ str_ptr in
  let attrs = !@ attrs_ptr in
  let cursor_pos = !@ cursor_pos_ptr in
  (str, attrs, cursor_pos)
let get_surrounding self =
  let get_surrounding_raw =
    foreign "gtk_im_context_get_surrounding" (t_typ @-> ptr (string) @-> ptr (int32_t) @-> returning (bool))
  in
  let text_ptr = allocate string " " in
  let cursor_index_ptr = allocate int32_t Int32.zero in
  let ret = get_surrounding_raw self text_ptr cursor_index_ptr in
  let text = !@ text_ptr in
  let cursor_index = !@ cursor_index_ptr in
  (ret, text, cursor_index)
let reset =
  foreign "gtk_im_context_reset" (t_typ @-> returning (void))
let set_client_window =
  foreign "gtk_im_context_set_client_window" (t_typ @-> Window.t_typ @-> returning (void))
let set_cursor_location =
  foreign "gtk_im_context_set_cursor_location" (t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let set_surrounding =
  foreign "gtk_im_context_set_surrounding" (t_typ @-> string @-> int32_t @-> int32_t @-> returning (void))
let set_use_preedit =
  foreign "gtk_im_context_set_use_preedit" (t_typ @-> bool @-> returning (void))
