open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_etag =
  foreign "g_file_io_stream_get_etag" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_file_io_stream_query_info type object not implemented*)
(*Not implemented g_file_io_stream_query_info_async type object not implemented*)
(*Not implemented g_file_io_stream_query_info_finish type interface not implemented*)
