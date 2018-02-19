open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_container_add type object not implemented*)
let check_resize =
  foreign "gtk_container_check_resize" (ptr t_typ @-> returning (void))
(*Not implemented gtk_container_child_get_property type object not implemented*)
(*Not implemented gtk_container_child_notify type object not implemented*)
(*Not implemented gtk_container_child_notify_by_pspec type object not implemented*)
(*Not implemented gtk_container_child_set_property type object not implemented*)
(*Not implemented gtk_container_child_type return type gType not handled*)
(*Not implemented gtk_container_forall type callback not implemented*)
(*Not implemented gtk_container_foreach type callback not implemented*)
let get_border_width =
  foreign "gtk_container_get_border_width" (ptr t_typ @-> returning (uint32_t))
let get_children =
  foreign "gtk_container_get_children" (ptr t_typ @-> returning (ptr List.t_typ))
let get_focus_chain self =
  let focusable_widgets_ptr = allocate (ptr_opt List.t_typ) None in
  let get_focus_chain_raw =
    foreign "gtk_container_get_focus_chain" (ptr t_typ @-> ptr (ptr List.t_typ) @-> returning bool)
  in
  let ret = get_focus_chain_raw self focusable_widgets_ptr in
  let focusable_widgets = !@ focusable_widgets_ptr in
  (ret, focusable_widgets)
(*Not implemented gtk_container_get_focus_child return type object not handled*)
(*Not implemented gtk_container_get_focus_hadjustment return type object not handled*)
(*Not implemented gtk_container_get_focus_vadjustment return type object not handled*)
(*Not implemented gtk_container_get_path_for_child type object not implemented*)
let get_resize_mode =
  foreign "gtk_container_get_resize_mode" (ptr t_typ @-> returning (Resize_mode.t_view))
(*Not implemented gtk_container_propagate_draw type object not implemented*)
(*Not implemented gtk_container_remove type object not implemented*)
let resize_children =
  foreign "gtk_container_resize_children" (ptr t_typ @-> returning (void))
let set_border_width =
  foreign "gtk_container_set_border_width" (ptr t_typ @-> uint32_t @-> returning (void))
let set_focus_chain =
  foreign "gtk_container_set_focus_chain" (ptr t_typ @-> ptr List.t_typ @-> returning (void))
(*Not implemented gtk_container_set_focus_child type object not implemented*)
(*Not implemented gtk_container_set_focus_hadjustment type object not implemented*)
(*Not implemented gtk_container_set_focus_vadjustment type object not implemented*)
let set_reallocate_redraws =
  foreign "gtk_container_set_reallocate_redraws" (ptr t_typ @-> bool @-> returning (void))
let set_resize_mode =
  foreign "gtk_container_set_resize_mode" (ptr t_typ @-> Resize_mode.t_view @-> returning (void))
let unset_focus_chain =
  foreign "gtk_container_unset_focus_chain" (ptr t_typ @-> returning (void))
