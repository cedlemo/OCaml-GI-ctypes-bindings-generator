open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_pad_controller_new type object not implemented*)
let set_action =
  foreign "gtk_pad_controller_set_action" (ptr t_typ @-> Pad_action_type.t_view @-> int32_t @-> int32_t @-> string @-> string @-> returning (void))
(*Not implemented gtk_pad_controller_set_action_entries type C Array type for Types.Array tag not implemented*)
