open Ctypes

type t
val t_typ : t typ

val get_connection :
  t -> DBus_connection.t
val get_interface_name :
  t -> string option
val get_message :
  t -> DBus_message.t
val get_method_info :
  t -> DBus_method_info.t structure ptr
val get_method_name :
  t -> string option
val get_object_path :
  t -> string option
val get_parameters :
  t -> Variant.t structure ptr
val get_property_info :
  t -> DBus_property_info.t structure ptr
val get_sender :
  t -> string option
val return_dbus_error :
  t -> string -> string -> unit
val return_error_literal :
  t -> Unsigned.uint32 -> int32 -> string -> unit
val return_gerror :
  t -> Error.t structure ptr -> unit
val return_value :
  t -> Variant.t structure ptr option -> unit
val return_value_with_unix_fd_list :
  t -> Variant.t structure ptr option -> Unix_fdlist.t -> unit
