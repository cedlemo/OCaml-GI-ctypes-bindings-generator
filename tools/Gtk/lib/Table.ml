open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_table_new" (uint32_t @-> uint32_t @-> bool @-> returning (Widget.t_typ))
let attach =
  foreign "gtk_table_attach" (t_typ @-> Widget.t_typ @-> uint32_t @-> uint32_t @-> uint32_t @-> uint32_t @-> Attach_options.t_list_view @-> Attach_options.t_list_view @-> uint32_t @-> uint32_t @-> returning (void))
let attach_defaults =
  foreign "gtk_table_attach_defaults" (t_typ @-> Widget.t_typ @-> uint32_t @-> uint32_t @-> uint32_t @-> uint32_t @-> returning (void))
let get_col_spacing =
  foreign "gtk_table_get_col_spacing" (t_typ @-> uint32_t @-> returning (uint32_t))
let get_default_col_spacing =
  foreign "gtk_table_get_default_col_spacing" (t_typ @-> returning (uint32_t))
let get_default_row_spacing =
  foreign "gtk_table_get_default_row_spacing" (t_typ @-> returning (uint32_t))
let get_homogeneous =
  foreign "gtk_table_get_homogeneous" (t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_table_get_row_spacing" (t_typ @-> uint32_t @-> returning (uint32_t))
let get_size self =
  let rows_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let columns_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let get_size_raw =
    foreign "gtk_table_get_size" (t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning void)
  in
  let ret = get_size_raw self rows_ptr columns_ptr in
  let rows = !@ rows_ptr in
  let columns = !@ columns_ptr in
  (rows, columns)
let resize =
  foreign "gtk_table_resize" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_col_spacing =
  foreign "gtk_table_set_col_spacing" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_col_spacings =
  foreign "gtk_table_set_col_spacings" (t_typ @-> uint32_t @-> returning (void))
let set_homogeneous =
  foreign "gtk_table_set_homogeneous" (t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_table_set_row_spacing" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_row_spacings =
  foreign "gtk_table_set_row_spacings" (t_typ @-> uint32_t @-> returning (void))
