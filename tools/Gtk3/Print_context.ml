open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_pango_context =
  foreign "gtk_print_context_create_pango_context" (t_typ @-> returning (Context.t_typ))
let create_pango_layout =
  foreign "gtk_print_context_create_pango_layout" (t_typ @-> returning (Layout.t_typ))
let get_cairo_context =
  foreign "gtk_print_context_get_cairo_context" (t_typ @-> returning (ptr Context.t_typ))
let get_dpi_x =
  foreign "gtk_print_context_get_dpi_x" (t_typ @-> returning (double))
let get_dpi_y =
  foreign "gtk_print_context_get_dpi_y" (t_typ @-> returning (double))
let get_hard_margins self =
  let get_hard_margins_raw =
    foreign "gtk_print_context_get_hard_margins" (t_typ @-> ptr (double) @-> ptr (double) @-> ptr (double) @-> ptr (double) @-> returning (bool))
  in
  let top_ptr = allocate double 0.0 in
  let bottom_ptr = allocate double 0.0 in
  let left_ptr = allocate double 0.0 in
  let right_ptr = allocate double 0.0 in
  let ret = get_hard_margins_raw self top_ptr bottom_ptr left_ptr right_ptr in
  let top = !@ top_ptr in
  let bottom = !@ bottom_ptr in
  let left = !@ left_ptr in
  let right = !@ right_ptr in
  (ret, top, bottom, left, right)
let get_height =
  foreign "gtk_print_context_get_height" (t_typ @-> returning (double))
let get_page_setup =
  foreign "gtk_print_context_get_page_setup" (t_typ @-> returning (Page_setup.t_typ))
let get_pango_fontmap =
  foreign "gtk_print_context_get_pango_fontmap" (t_typ @-> returning (Font_map.t_typ))
let get_width =
  foreign "gtk_print_context_get_width" (t_typ @-> returning (double))
let set_cairo_context =
  foreign "gtk_print_context_set_cairo_context" (t_typ @-> ptr Context.t_typ @-> double @-> double @-> returning (void))
