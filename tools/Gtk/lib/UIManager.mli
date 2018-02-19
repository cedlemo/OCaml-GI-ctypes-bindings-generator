open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_ui_manager_new return type object not handled*)
val add_ui:
  t structure ptr -> Unsigned.uint32 -> string -> string -> string option -> UIManager_item_type.t_list -> bool -> unit
val add_ui_from_file:
  t structure ptr -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_ui_from_resource:
  t structure ptr -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_ui_from_string:
  t structure ptr -> string -> int64 -> (Unsigned.uint32, Error.t structure ptr option) result
val ensure_update:
  t structure ptr -> unit
(*Not implemented gtk_ui_manager_get_accel_group return type object not handled*)
(*Not implemented gtk_ui_manager_get_action return type object not handled*)
val get_action_groups:
  t structure ptr -> List.t structure ptr
val get_add_tearoffs:
  t structure ptr -> bool
val get_toplevels:
  t structure ptr -> UIManager_item_type.t_list -> SList.t structure ptr
val get_ui:
  t structure ptr -> string option
(*Not implemented gtk_ui_manager_get_widget return type object not handled*)
(*Not implemented gtk_ui_manager_insert_action_group type object not implemented*)
val create_merge_id:
  t structure ptr -> Unsigned.uint32
(*Not implemented gtk_ui_manager_remove_action_group type object not implemented*)
val remove_ui:
  t structure ptr -> Unsigned.uint32 -> unit
val set_add_tearoffs:
  t structure ptr -> bool -> unit
