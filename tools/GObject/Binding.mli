open Ctypes

type t
val t_typ : t typ

val get_flags :
  t -> Binding_flags.t_list
val get_source :
  t -> Object.t
val get_source_property :
  t -> string option
val get_target :
  t -> Object.t
val get_target_property :
  t -> string option
val unbind :
  t -> unit
