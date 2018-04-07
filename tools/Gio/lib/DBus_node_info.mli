open Ctypes

type t
val t_typ : t structure typ

val f_ref_count: (int32, t structure) field
val f_path: (string, t structure) field
(*Struct field DBus_node_info : C Array type for Types.Array tag tag not implemented*)
(*Struct field DBus_node_info : C Array type for Types.Array tag tag not implemented*)
(*Struct field DBus_node_info : C Array type for Types.Array tag tag not implemented*)

val create_for_xml :
  string -> (t structure ptr option, Error.t structure ptr option) result
val generate_xml :
  t structure ptr -> Unsigned.uint32 -> String.t structure ptr -> unit
val lookup_interface :
  t structure ptr -> string -> DBus_interface_info.t structure ptr
val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
