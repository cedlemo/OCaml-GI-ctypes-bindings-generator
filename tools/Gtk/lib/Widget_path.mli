open Ctypes

type t
val t_typ : t structure typ

val create:
  unit -> t structure ptr
(*Not implemented gtk_widget_path_append_for_widget type object not implemented*)
(*Not implemented gtk_widget_path_append_type type gType not implemented*)
val append_with_siblings:
  t structure ptr -> t structure ptr -> Unsigned.uint32 -> int32
val copy:
  t structure ptr -> t structure ptr
val free:
  t structure ptr -> unit
(*Not implemented gtk_widget_path_get_object_type return type gType not handled*)
(*Not implemented gtk_widget_path_has_parent type gType not implemented*)
(*Not implemented gtk_widget_path_is_type type gType not implemented*)
val iter_add_class:
  t structure ptr -> int32 -> string -> unit
val iter_add_region:
  t structure ptr -> int32 -> string -> Region_flags.t_list -> unit
val iter_clear_classes:
  t structure ptr -> int32 -> unit
val iter_clear_regions:
  t structure ptr -> int32 -> unit
val iter_get_name:
  t structure ptr -> int32 -> string option
val iter_get_object_name:
  t structure ptr -> int32 -> string option
(*Not implemented gtk_widget_path_iter_get_object_type return type gType not handled*)
val iter_get_sibling_index:
  t structure ptr -> int32 -> Unsigned.uint32
val iter_get_siblings:
  t structure ptr -> int32 -> t structure ptr
val iter_get_state:
  t structure ptr -> int32 -> State_flags.t_list
val iter_has_class:
  t structure ptr -> int32 -> string -> bool
val iter_has_name:
  t structure ptr -> int32 -> string -> bool
val iter_has_qclass:
  t structure ptr -> int32 -> Unsigned.uint32 -> bool
val iter_has_qname:
  t structure ptr -> int32 -> Unsigned.uint32 -> bool
val iter_has_qregion :
  t structure ptr -> int32 -> Unsigned.uint32 -> (bool * Region_flags.t_list)
val iter_has_region :
  t structure ptr -> int32 -> string -> (bool * Region_flags.t_list)
val iter_list_classes:
  t structure ptr -> int32 -> SList.t structure ptr
val iter_list_regions:
  t structure ptr -> int32 -> SList.t structure ptr
val iter_remove_class:
  t structure ptr -> int32 -> string -> unit
val iter_remove_region:
  t structure ptr -> int32 -> string -> unit
val iter_set_name:
  t structure ptr -> int32 -> string -> unit
val iter_set_object_name:
  t structure ptr -> int32 -> string option -> unit
(*Not implemented gtk_widget_path_iter_set_object_type type gType not implemented*)
val iter_set_state:
  t structure ptr -> int32 -> State_flags.t_list -> unit
val length:
  t structure ptr -> int32
(*Not implemented gtk_widget_path_prepend_type type gType not implemented*)
val incr_ref:
  t structure ptr -> t structure ptr
val to_string:
  t structure ptr -> string option
val unref:
  t structure ptr -> unit
