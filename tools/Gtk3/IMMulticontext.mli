open Ctypes

type t
val t_typ : t typ

val create :
  unit -> IMContext.t
val append_menuitems :
  t -> Menu_shell.t -> unit
val get_context_id :
  t -> string option
val set_context_id :
  t -> string -> unit
