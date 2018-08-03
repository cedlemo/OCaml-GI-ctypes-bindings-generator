open Ctypes

type t
val t_typ : t typ

val create :
  string -> Variant_type.t structure ptr option -> t ptr
val create_stateful :
  string -> Variant_type.t structure ptr option -> Variant.t structure ptr -> t ptr
val set_enabled :
  t -> bool -> unit
val set_state :
  t -> Variant.t structure ptr -> unit
val set_state_hint :
  t -> Variant.t structure ptr option -> unit
