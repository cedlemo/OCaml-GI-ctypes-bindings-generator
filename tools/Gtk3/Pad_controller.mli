open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_pad_controller_new type interface not implemented*)
val set_action :
  t -> Pad_action_type.t -> int32 -> int32 -> string -> string -> unit
(*Not implemented gtk_pad_controller_set_action_entries type C Array type for Types.Array tag not implemented*)
