open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_zlib_compressor_new" (Zlib_compressor_format.t_view @-> int32_t @-> returning (ptr t_typ))
let get_file_info =
  foreign "g_zlib_compressor_get_file_info" (t_typ @-> returning (ptr File_info.t_typ))
let set_file_info =
  foreign "g_zlib_compressor_set_file_info" (t_typ @-> ptr_opt File_info.t_typ @-> returning (void))
