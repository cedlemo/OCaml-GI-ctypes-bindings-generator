open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_table_new return type object not handled*)
(*Not implemented gtk_table_attach type object not implemented*)
(*Not implemented gtk_table_attach_defaults type object not implemented*)
let get_col_spacing =
  foreign "gtk_table_get_col_spacing" (ptr t_typ @-> uint32_t @-> returning (uint32_t))
let get_default_col_spacing =
  foreign "gtk_table_get_default_col_spacing" (ptr t_typ @-> returning (uint32_t))
let get_default_row_spacing =
  foreign "gtk_table_get_default_row_spacing" (ptr t_typ @-> returning (uint32_t))
let get_homogeneous =
  foreign "gtk_table_get_homogeneous" (ptr t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_table_get_row_spacing" (ptr t_typ @-> uint32_t @-> returning (uint32_t))
let get_size self =
  let rows_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let columns_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let get_size_raw =
    foreign "gtk_table_get_size" (ptr t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning void)
  in
  let ret = get_size_raw self rows_ptr columns_ptr in
  let rows = !@ rows_ptr in
  let columns = !@ columns_ptr in
  (rows, columns)
let resize =
  foreign "gtk_table_resize" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_col_spacing =
  foreign "gtk_table_set_col_spacing" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_col_spacings =
  foreign "gtk_table_set_col_spacings" (ptr t_typ @-> uint32_t @-> returning (void))
let set_homogeneous =
  foreign "gtk_table_set_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_table_set_row_spacing" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let set_row_spacings =
  foreign "gtk_table_set_row_spacings" (ptr t_typ @-> uint32_t @-> returning (void))
