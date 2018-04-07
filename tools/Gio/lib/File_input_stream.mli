open Ctypes

type t
val t_typ : t typ

val query_info :
  t -> string -> Cancellable.t -> (File_info.t, Error.t structure ptr option) result
(*Not implemented g_file_input_stream_query_info_async type callback not implemented*)
(*Not implemented g_file_input_stream_query_info_finish type interface not implemented*)
