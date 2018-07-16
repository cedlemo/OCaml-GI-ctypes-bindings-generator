open Ctypes

type t
val t_typ : t structure typ

val f_set_name: (string, t structure) field
val f_priority: (int32, t structure) field
val f_widget_path_pspecs: (SList.t structure (* unit ptr *) ptr, t structure) field
val f_widget_class_pspecs: (SList.t structure (* unit ptr *) ptr, t structure) field
val f_class_branch_pspecs: (SList.t structure (* unit ptr *) ptr, t structure) field
val f_entries: (Binding_entry.t structure ptr, t structure) field
val f_current: (Binding_entry.t structure ptr, t structure) field
val f_parsed: (Unsigned.uint32, t structure) field

val activate :
  t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> Object.t -> bool
val add_path :
  t structure ptr -> Path_type.t -> string -> Path_priority_type.t -> unit
val find :
  string -> t structure ptr option
