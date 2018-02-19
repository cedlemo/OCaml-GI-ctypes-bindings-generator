open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Binding_set"

let f_set_name = field t_typ "set_name" (string)
let f_priority = field t_typ "priority" (int32_t)
let f_widget_path_pspecs = field t_typ "widget_path_pspecs" (ptr SList.t_typ)
let f_widget_class_pspecs = field t_typ "widget_class_pspecs" (ptr SList.t_typ)
let f_class_branch_pspecs = field t_typ "class_branch_pspecs" (ptr SList.t_typ)
let f_entries = field t_typ "entries" (ptr Binding_entry.t_typ)
let f_current = field t_typ "current" (ptr Binding_entry.t_typ)
let f_parsed = field t_typ "parsed" (uint32_t)
let _ = seal t_typ

(*Not implemented gtk_binding_set_activate type object not implemented*)
let add_path =
  foreign "gtk_binding_set_add_path" (ptr t_typ @-> Path_type.t_view @-> string @-> Path_priority_type.t_view @-> returning (void))
let find =
  foreign "gtk_binding_set_find" (string @-> returning (ptr_opt t_typ))
