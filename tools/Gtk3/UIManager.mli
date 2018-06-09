open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
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
  t -> Accel_group.t
val get_action :
  t -> string -> Action.t
val get_action_groups :
  t -> List.t structure ptr
val get_add_tearoffs :
  t -> bool
val get_toplevels :
  t -> UIManager_item_type.t_list -> SList.t structure ptr
val get_ui :
  t -> string option
val get_widget :
  t -> string -> Widget.t
val insert_action_group :
  t -> Action_group.t -> int32 -> unit
val create_merge_id :
  t -> Unsigned.uint32
val remove_action_group :
  t -> Action_group.t -> unit
val remove_ui :
  t -> Unsigned.uint32 -> unit
val set_add_tearoffs :
  t -> bool -> unit
