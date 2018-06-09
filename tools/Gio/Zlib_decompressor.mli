open Ctypes

type t
val t_typ : t typ

val create :
  Zlib_compressor_format.t -> t
val get_file_info :
  t -> File_info.t
