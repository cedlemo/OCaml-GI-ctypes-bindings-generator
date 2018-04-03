open Ctypes

type t
val t_typ : t typ

val create :
  string option -> Widget.t
val get_label :
  t -> string option
val get_label_align :
  t -> (float * float)
val get_label_widget :
  t -> Widget.t
val get_shadow_type :
  t -> Shadow_type.t
val set_label :
  t -> string option -> unit
val set_label_align :
  t -> float -> float -> unit
val set_label_widget :
  t -> Widget.t -> unit
val set_shadow_type :
  t -> Shadow_type.t -> unit
