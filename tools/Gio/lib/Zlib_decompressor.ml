open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_zlib_decompressor_new return type object not handled*)
(*Not implemented g_zlib_decompressor_get_file_info return type object not handled*)
