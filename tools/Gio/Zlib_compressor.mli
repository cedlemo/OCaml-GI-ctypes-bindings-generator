open Ctypes

type t
val t_typ : t typ

val create :
  Zlib_compressor_format.t -> int32 -> t ptr
val get_file_info :
  t -> File_info.t ptr
val set_file_info :
  t -> File_info.t ptr option -> unit
