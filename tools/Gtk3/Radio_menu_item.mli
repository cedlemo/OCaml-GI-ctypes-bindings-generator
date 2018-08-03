open Ctypes

type t
val t_typ : t typ

val create :
  SList.t structure (* Not implemented : interface *) ptr option -> Widget.t ptr
val create_from_widget :
  t ptr option -> Widget.t ptr
val create_with_label :
  SList.t structure (* Not implemented : interface *) ptr option -> string -> Widget.t ptr
val create_with_label_from_widget :
  t ptr option -> string option -> Widget.t ptr
val create_with_mnemonic :
  SList.t structure (* Not implemented : interface *) ptr option -> string -> Widget.t ptr
val create_with_mnemonic_from_widget :
  t ptr option -> string option -> Widget.t ptr
val get_group :
  t -> SList.t structure (* Not implemented : interface *) ptr
val join_group :
  t -> t ptr option -> unit
val set_group :
  t -> SList.t structure (* Not implemented : interface *) ptr option -> unit
