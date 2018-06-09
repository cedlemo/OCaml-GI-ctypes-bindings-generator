open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Pad_action_entry"

let f_type = field t_typ "type" (Pad_action_type.t_view)
let f_index = field t_typ "index" (int32_t)
let f_mode = field t_typ "mode" (int32_t)
let f_label = field t_typ "label" (string)
let f_action_name = field t_typ "action_name" (string)
let _ = seal t_typ

