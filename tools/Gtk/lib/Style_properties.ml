open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_style_properties_new" (void @-> returning (t_typ))
let clear =
  foreign "gtk_style_properties_clear" (t_typ @-> returning (void))
let get_property self property state =
  let get_property_raw =
    foreign "gtk_style_properties_get_property" (t_typ @-> string @-> State_flags.t_list_view @-> ptr (Value.t_typ) @-> returning (bool))
  in
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let ret = get_property_raw self property state value_ptr in
  let value = !@ value_ptr in
  (ret, value)
let lookup_color =
  foreign "gtk_style_properties_lookup_color" (t_typ @-> string @-> returning (ptr Symbolic_color.t_typ))
let map_color =
  foreign "gtk_style_properties_map_color" (t_typ @-> string @-> ptr Symbolic_color.t_typ @-> returning (void))
let merge =
  foreign "gtk_style_properties_merge" (t_typ @-> t_typ @-> bool @-> returning (void))
let set_property =
  foreign "gtk_style_properties_set_property" (t_typ @-> string @-> State_flags.t_list_view @-> ptr Value.t_typ @-> returning (void))
let unset_property =
  foreign "gtk_style_properties_unset_property" (t_typ @-> string @-> State_flags.t_list_view @-> returning (void))
