open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_accel_label_new" (string @-> returning (ptr Widget.t_typ))
let get_accel self =
  let get_accel_raw =
    foreign "gtk_accel_label_get_accel" (t_typ @-> ptr (uint32_t) @-> ptr (Modifier_type.t_list_view) @-> returning (void))
  in
  let accelerator_key_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let accelerator_mods_ptr = allocate Modifier_type.t_view (Modifier_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = get_accel_raw self accelerator_key_ptr accelerator_mods_ptr in
  let accelerator_key = !@ accelerator_key_ptr in
  let accelerator_mods = (!@ accelerator_mods_ptr) in
  (accelerator_key, accelerator_mods)
let get_accel_widget =
  foreign "gtk_accel_label_get_accel_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_accel_width =
  foreign "gtk_accel_label_get_accel_width" (t_typ @-> returning (uint32_t))
let refetch =
  foreign "gtk_accel_label_refetch" (t_typ @-> returning (bool))
let set_accel =
  foreign "gtk_accel_label_set_accel" (t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))
let set_accel_closure =
  foreign "gtk_accel_label_set_accel_closure" (t_typ @-> ptr_opt Closure.t_typ @-> returning (void))
let set_accel_widget =
  foreign "gtk_accel_label_set_accel_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
