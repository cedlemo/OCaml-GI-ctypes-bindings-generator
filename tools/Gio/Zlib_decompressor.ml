open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_zlib_decompressor_new" (Zlib_compressor_format.t_view @-> returning (ptr t_typ))
let get_file_info =
  foreign "g_zlib_decompressor_get_file_info" (t_typ @-> returning (ptr File_info.t_typ))
