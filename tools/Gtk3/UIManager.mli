open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val add_ui :
  t -> Unsigned.uint32 -> string -> string -> string option -> UIManager_item_type.t_list -> bool -> unit
val add_ui_from_file :
  t -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_ui_from_resource :
  t -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_ui_from_string :
  t -> string -> int64 -> (Unsigned.uint32, Error.t structure ptr option) result
val ensure_update :
  t -> unit
val get_accel_group :
  t -> Accel_group.t ptr
val get_action :
  t -> string -> Action.t ptr
val get_action_groups :
  t -> List.t structure (* Not implemented : interface *) ptr
val get_add_tearoffs :
  t -> bool
val get_toplevels :
  t -> UIManager_item_type.t_list -> SList.t structure (* Not implemented : interface *) ptr
val get_ui :
  t -> string option
val get_widget :
  t -> string -> Widget.t ptr
val insert_action_group :
  t -> Action_group.t ptr -> int32 -> unit
val create_merge_id :
  t -> Unsigned.uint32
val remove_action_group :
  t -> Action_group.t ptr -> unit
val remove_ui :
  t -> Unsigned.uint32 -> unit
val set_add_tearoffs :
  t -> bool -> unit
