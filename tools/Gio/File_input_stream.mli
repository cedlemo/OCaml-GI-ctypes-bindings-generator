open Ctypes

type t
val t_typ : t typ

val query_info :
  t -> string -> Cancellable.t ptr option -> (File_info.t ptr option, Error.t structure ptr option) result
(*Not implemented g_file_input_stream_query_info_async type callback not implemented*)
(*Not implemented g_file_input_stream_query_info_finish type interface not implemented*)
