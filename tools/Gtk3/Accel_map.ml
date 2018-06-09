open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let add_entry =
  foreign "gtk_accel_map_add_entry" (string @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))
let add_filter =
  foreign "gtk_accel_map_add_filter" (string @-> returning (void))
let change_entry =
  foreign "gtk_accel_map_change_entry" (string @-> uint32_t @-> Modifier_type.t_list_view @-> bool @-> returning (bool))
(*Not implemented gtk_accel_map_foreach type callback not implemented*)
(*Not implemented gtk_accel_map_foreach_unfiltered type callback not implemented*)
let get =
  foreign "gtk_accel_map_get" (void @-> returning (t_typ))
let load =
  foreign "gtk_accel_map_load" (string @-> returning (void))
let load_fd =
  foreign "gtk_accel_map_load_fd" (int32_t @-> returning (void))
let load_scanner =
  foreign "gtk_accel_map_load_scanner" (ptr Scanner.t_typ @-> returning (void))
let lock_path =
  foreign "gtk_accel_map_lock_path" (string @-> returning (void))
let lookup_entry accel_path =
  let lookup_entry_raw =
    foreign "gtk_accel_map_lookup_entry" (string @-> ptr (Accel_key.t_typ) @-> returning (bool))
  in
  let key_ptr = allocate Accel_key.t_typ (make Accel_key.t_typ) in
  let ret = lookup_entry_raw accel_path key_ptr in
  let key = !@ key_ptr in
  (ret, key)
let save =
  foreign "gtk_accel_map_save" (string @-> returning (void))
let save_fd =
  foreign "gtk_accel_map_save_fd" (int32_t @-> returning (void))
let unlock_path =
  foreign "gtk_accel_map_unlock_path" (string @-> returning (void))
