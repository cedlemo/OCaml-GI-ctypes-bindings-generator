open Ctypes

type t
val t_typ : t typ

val get_etag:
  t structure ptr -> string option
(*Not implemented g_file_io_stream_query_info type object not implemented*)
(*Not implemented g_file_io_stream_query_info_async type object not implemented*)
(*Not implemented g_file_io_stream_query_info_finish type interface not implemented*)
