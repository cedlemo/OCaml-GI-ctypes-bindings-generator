open Ctypes

type t
val t_typ : t structure typ

val create_from_data :
  Bytes.t structure ptr -> (t structure ptr option, Error.t structure ptr option) result
val _register :
  t structure ptr -> unit
val _unregister :
  t structure ptr -> unit
(*Not implemented g_resource_enumerate_children return type C Array type for Types.Array tag not handled*)
val get_info :
  t structure ptr -> string -> Resource_lookup_flags.t_list -> (bool * Unsigned.uint64 * Unsigned.uint32, Error.t structure ptr option) result
val lookup_data :
  t structure ptr -> string -> Resource_lookup_flags.t_list -> (Bytes.t structure ptr option, Error.t structure ptr option) result
val open_stream :
  t structure ptr -> string -> Resource_lookup_flags.t_list -> (Input_stream.t, Error.t structure ptr option) result
val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
val load :
  string -> (t structure ptr option, Error.t structure ptr option) result
