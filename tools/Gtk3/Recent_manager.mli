open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val get_default :
  unit -> t
val add_full :
  t -> string -> Recent_data.t structure ptr -> bool
val add_item :
  t -> string -> bool
val get_items :
  t -> List.t structure (* Recent_info.t structure *) ptr
val has_item :
  t -> string -> bool
val lookup_item :
  t -> string -> (Recent_info.t structure ptr option, Error.t structure ptr option) result
val move_item :
  t -> string -> string option -> (bool, Error.t structure ptr option) result
val purge_items :
  t -> (int32, Error.t structure ptr option) result
val remove_item :
  t -> string -> (bool, Error.t structure ptr option) result
