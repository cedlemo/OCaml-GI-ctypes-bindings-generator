open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_object_new_with_properties type gType not implemented*)
(*Not implemented g_object_newv type gType not implemented*)
let compat_control =
  foreign "g_object_compat_control" (uint64_t @-> ptr_opt void @-> returning (uint64_t))
(*Not implemented g_object_interface_find_property return type object not handled*)
(*Not implemented g_object_interface_install_property type object not implemented*)
(*Not implemented g_object_interface_list_properties return type C Array type for Types.Array tag not handled*)
(*Not implemented g_object_bind_property type object not implemented*)
(*Not implemented g_object_bind_property_with_closures type object not implemented*)
let force_floating =
  foreign "g_object_force_floating" (ptr t_typ @-> returning (void))
let freeze_notify =
  foreign "g_object_freeze_notify" (ptr t_typ @-> returning (void))
let get_data =
  foreign "g_object_get_data" (ptr t_typ @-> string @-> returning (ptr_opt void))
let get_property =
  foreign "g_object_get_property" (ptr t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let get_qdata =
  foreign "g_object_get_qdata" (ptr t_typ @-> uint32_t @-> returning (ptr_opt void))
(*Not implemented g_object_getv type C Array type for Types.Array tag not implemented*)
let is_floating =
  foreign "g_object_is_floating" (ptr t_typ @-> returning (bool))
let notify =
  foreign "g_object_notify" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_object_notify_by_pspec type object not implemented*)
(*Not implemented g_object_ref return type object not handled*)
(*Not implemented g_object_ref_sink return type object not handled*)
(*Not implemented g_object_replace_data type callback not implemented*)
(*Not implemented g_object_replace_qdata type callback not implemented*)
let run_dispose =
  foreign "g_object_run_dispose" (ptr t_typ @-> returning (void))
let set_data =
  foreign "g_object_set_data" (ptr t_typ @-> string @-> ptr_opt void @-> returning (void))
let set_property =
  foreign "g_object_set_property" (ptr t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let steal_data =
  foreign "g_object_steal_data" (ptr t_typ @-> string @-> returning (ptr_opt void))
let steal_qdata =
  foreign "g_object_steal_qdata" (ptr t_typ @-> uint32_t @-> returning (ptr_opt void))
let thaw_notify =
  foreign "g_object_thaw_notify" (ptr t_typ @-> returning (void))
let unref =
  foreign "g_object_unref" (ptr t_typ @-> returning (void))
let watch_closure =
  foreign "g_object_watch_closure" (ptr t_typ @-> ptr Closure.t_typ @-> returning (void))
