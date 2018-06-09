open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val clear :
  t -> unit
val get_property :
  t -> string -> State_flags.t_list -> (bool * Value.t structure)
val lookup_color :
  t -> string -> Symbolic_color.t structure ptr
val map_color :
  t -> string -> Symbolic_color.t structure ptr -> unit
val merge :
  t -> t -> bool -> unit
val set_property :
  t -> string -> State_flags.t_list -> Value.t structure ptr -> unit
val unset_property :
  t -> string -> State_flags.t_list -> unit
