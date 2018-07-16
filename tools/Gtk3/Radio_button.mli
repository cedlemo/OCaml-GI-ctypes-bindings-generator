open Ctypes

type t
val t_typ : t typ

val create :
  SList.t structure (* t *) ptr option -> Widget.t
val create_from_widget :
  t -> Widget.t
val create_with_label :
  SList.t structure (* t *) ptr option -> string -> Widget.t
val create_with_label_from_widget :
  t -> string -> Widget.t
val create_with_mnemonic :
  SList.t structure (* t *) ptr option -> string -> Widget.t
val create_with_mnemonic_from_widget :
  t -> string -> Widget.t
val get_group :
  t -> SList.t structure (* t *) ptr
val join_group :
  t -> t -> unit
val set_group :
  t -> SList.t structure (* t *) ptr option -> unit
