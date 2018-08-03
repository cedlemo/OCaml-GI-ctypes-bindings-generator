open Ctypes

type t
val t_typ : t typ

(*Not implemented g_settings_backend_flatten_tree type C Array type for Types.Array tag not implemented*)
val get_default :
  unit -> t ptr
val changed :
  t -> string -> unit ptr option -> unit
val changed_tree :
  t -> Tree.t structure ptr -> unit ptr option -> unit
(*Not implemented g_settings_backend_keys_changed type C Array type for Types.Array tag not implemented*)
val path_changed :
  t -> string -> unit ptr option -> unit
val path_writable_changed :
  t -> string -> unit
val writable_changed :
  t -> string -> unit
