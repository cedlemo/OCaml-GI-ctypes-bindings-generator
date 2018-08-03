open Ctypes

type t
val t_typ : t typ

val create :
  unit -> IMContext.t ptr
val append_menuitems :
  t -> Menu_shell.t ptr -> unit
val get_context_id :
  t -> string option
val set_context_id :
  t -> string -> unit
