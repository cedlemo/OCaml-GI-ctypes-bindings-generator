open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_object_new_with_properties type gType not implemented*)
(*Not implemented g_object_newv type gType not implemented*)
let compat_control =
  foreign "g_object_compat_control" (uint64_t @-> ptr_opt void @-> returning (uint64_t))
let interface_find_property =
  foreign "g_object_interface_find_property" (ptr Type_interface.t_typ @-> string @-> returning (ptr Param_spec.t_typ))
let interface_install_property =
  foreign "g_object_interface_install_property" (ptr Type_interface.t_typ @-> ptr Param_spec.t_typ @-> returning (void))
(*Not implemented g_object_interface_list_properties return type C Array type for Types.Array tag not handled*)
let bind_property =
  foreign "g_object_bind_property" (t_typ @-> string @-> ptr t_typ @-> string @-> Binding_flags.t_list_view @-> returning (ptr Binding.t_typ))
let bind_property_full =
  foreign "g_object_bind_property_with_closures" (t_typ @-> string @-> ptr t_typ @-> string @-> Binding_flags.t_list_view @-> ptr Closure.t_typ @-> ptr Closure.t_typ @-> returning (ptr Binding.t_typ))
let force_floating =
  foreign "g_object_force_floating" (t_typ @-> returning (void))
let freeze_notify =
  foreign "g_object_freeze_notify" (t_typ @-> returning (void))
let get_data =
  foreign "g_object_get_data" (t_typ @-> string @-> returning (ptr_opt void))
let get_property =
  foreign "g_object_get_property" (t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let get_qdata =
  foreign "g_object_get_qdata" (t_typ @-> uint32_t @-> returning (ptr_opt void))
(*Not implemented g_object_getv type C Array type for Types.Array tag not implemented*)
let is_floating =
  foreign "g_object_is_floating" (t_typ @-> returning (bool))
let notify =
  foreign "g_object_notify" (t_typ @-> string @-> returning (void))
let notify_by_pspec =
  foreign "g_object_notify_by_pspec" (t_typ @-> ptr Param_spec.t_typ @-> returning (void))
let incr_ref =
  foreign "g_object_ref" (t_typ @-> returning (ptr t_typ))
let ref_sink =
  foreign "g_object_ref_sink" (t_typ @-> returning (ptr t_typ))
let run_dispose =
  foreign "g_object_run_dispose" (t_typ @-> returning (void))
let set_data =
  foreign "g_object_set_data" (t_typ @-> string @-> ptr_opt void @-> returning (void))
let set_property =
  foreign "g_object_set_property" (t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let steal_data =
  foreign "g_object_steal_data" (t_typ @-> string @-> returning (ptr_opt void))
let steal_qdata =
  foreign "g_object_steal_qdata" (t_typ @-> uint32_t @-> returning (ptr_opt void))
let thaw_notify =
  foreign "g_object_thaw_notify" (t_typ @-> returning (void))
let unref =
  foreign "g_object_unref" (t_typ @-> returning (void))
let watch_closure =
  foreign "g_object_watch_closure" (t_typ @-> ptr Closure.t_typ @-> returning (void))
