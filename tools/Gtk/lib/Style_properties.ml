open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_style_properties_new return type object not handled*)
let clear =
  foreign "gtk_style_properties_clear" (ptr t_typ @-> returning (void))
let get_property self property state =
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let get_property_raw =
    foreign "gtk_style_properties_get_property" (ptr t_typ @-> string @-> State_flags.t_list_view @-> ptr (Value.t_typ) @-> returning bool)
  in
  let ret = get_property_raw self property state value_ptr in
  let value = !@ value_ptr in
  (ret, value)
let lookup_color =
  foreign "gtk_style_properties_lookup_color" (ptr t_typ @-> string @-> returning (ptr Symbolic_color.t_typ))
let map_color =
  foreign "gtk_style_properties_map_color" (ptr t_typ @-> string @-> ptr Symbolic_color.t_typ @-> returning (void))
(*Not implemented gtk_style_properties_merge type object not implemented*)
let set_property =
  foreign "gtk_style_properties_set_property" (ptr t_typ @-> string @-> State_flags.t_list_view @-> ptr Value.t_typ @-> returning (void))
let unset_property =
  foreign "gtk_style_properties_unset_property" (ptr t_typ @-> string @-> State_flags.t_list_view @-> returning (void))
