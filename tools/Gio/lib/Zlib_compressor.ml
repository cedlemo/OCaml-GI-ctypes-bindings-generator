open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_zlib_compressor_new return type object not handled*)
(*Not implemented g_zlib_compressor_get_file_info return type object not handled*)
(*Not implemented g_zlib_compressor_set_file_info type object not implemented*)
