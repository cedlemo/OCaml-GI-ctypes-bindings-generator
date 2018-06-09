open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Binding_entry"

let f_keyval = field t_typ "keyval" (uint32_t)
let f_modifiers = field t_typ "modifiers" (Modifier_type.t_list_view)
let f_binding_set = field t_typ "binding_set" (ptr Binding_set.t_typ)
let f_destroyed = field t_typ "destroyed" (uint32_t)
let f_in_emission = field t_typ "in_emission" (uint32_t)
let f_marks_unbound = field t_typ "marks_unbound" (uint32_t)
let f_set_next = field t_typ "set_next" (ptr t_typ)
let f_hash_next = field t_typ "hash_next" (ptr t_typ)
let f_signals = field t_typ "signals" (ptr Binding_signal.t_typ)
let _ = seal t_typ

let add_signal_from_string =
  foreign "gtk_binding_entry_add_signal_from_string" (ptr Binding_set.t_typ @-> string @-> returning (Token_type.t_view))
let add_signall =
  foreign "gtk_binding_entry_add_signall" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> string @-> ptr SList.t_typ @-> returning (void))
let remove =
  foreign "gtk_binding_entry_remove" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))
let skip =
  foreign "gtk_binding_entry_skip" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))
