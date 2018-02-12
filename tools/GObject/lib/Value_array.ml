open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Value_array"

let f_n_values = field t_typ "n_values" (uint32_t)
let f_values = field t_typ "values" (ptr Value.t_typ)
let f_n_prealloced = field t_typ "n_prealloced" (uint32_t)
let _ = seal t_typ

let create =
  foreign "g_value_array_new" (uint32_t @-> returning (ptr t_typ))
let append =
  foreign "g_value_array_append" (ptr t_typ @-> ptr_opt Value.t_typ @-> returning (ptr t_typ))
let copy =
  foreign "g_value_array_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "g_value_array_free" (ptr t_typ @-> returning (void))
let get_nth =
  foreign "g_value_array_get_nth" (ptr t_typ @-> uint32_t @-> returning (ptr Value.t_typ))
let insert =
  foreign "g_value_array_insert" (ptr t_typ @-> uint32_t @-> ptr_opt Value.t_typ @-> returning (ptr t_typ))
let prepend =
  foreign "g_value_array_prepend" (ptr t_typ @-> ptr_opt Value.t_typ @-> returning (ptr t_typ))
let remove =
  foreign "g_value_array_remove" (ptr t_typ @-> uint32_t @-> returning (ptr t_typ))
(*Not implemented g_value_array_sort_with_data type callback not implemented*)
