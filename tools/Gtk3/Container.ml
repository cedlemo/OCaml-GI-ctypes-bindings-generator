open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let add =
  foreign "gtk_container_add" (t_typ @-> Widget.t_typ @-> returning (void))
let check_resize =
  foreign "gtk_container_check_resize" (t_typ @-> returning (void))
let child_get_property =
  foreign "gtk_container_child_get_property" (t_typ @-> Widget.t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let child_notify =
  foreign "gtk_container_child_notify" (t_typ @-> Widget.t_typ @-> string @-> returning (void))
let child_notify_by_pspec =
  foreign "gtk_container_child_notify_by_pspec" (t_typ @-> Widget.t_typ @-> Param_spec.t_typ @-> returning (void))
let child_set_property =
  foreign "gtk_container_child_set_property" (t_typ @-> Widget.t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
(*Not implemented gtk_container_child_type return type gType not handled*)
(*Not implemented gtk_container_forall type callback not implemented*)
(*Not implemented gtk_container_foreach type callback not implemented*)
let get_border_width =
  foreign "gtk_container_get_border_width" (t_typ @-> returning (uint32_t))
let get_children =
  foreign "gtk_container_get_children" (t_typ @-> returning (ptr List.t_typ))
let get_focus_chain self =
  let get_focus_chain_raw =
    foreign "gtk_container_get_focus_chain" (t_typ @-> ptr (ptr List.t_typ) @-> returning (bool))
  in
  let focusable_widgets_ptr = allocate (ptr_opt List.t_typ) None in
  let ret = get_focus_chain_raw self focusable_widgets_ptr in
  let focusable_widgets = !@ focusable_widgets_ptr in
  (ret, focusable_widgets)
let get_focus_child =
  foreign "gtk_container_get_focus_child" (t_typ @-> returning (Widget.t_typ))
let get_focus_hadjustment =
  foreign "gtk_container_get_focus_hadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_focus_vadjustment =
  foreign "gtk_container_get_focus_vadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_path_for_child =
  foreign "gtk_container_get_path_for_child" (t_typ @-> Widget.t_typ @-> returning (ptr Widget_path.t_typ))
let get_resize_mode =
  foreign "gtk_container_get_resize_mode" (t_typ @-> returning (Resize_mode.t_view))
let propagate_draw =
  foreign "gtk_container_propagate_draw" (t_typ @-> Widget.t_typ @-> ptr Context.t_typ @-> returning (void))
let remove =
  foreign "gtk_container_remove" (t_typ @-> Widget.t_typ @-> returning (void))
let resize_children =
  foreign "gtk_container_resize_children" (t_typ @-> returning (void))
let set_border_width =
  foreign "gtk_container_set_border_width" (t_typ @-> uint32_t @-> returning (void))
let set_focus_chain =
  foreign "gtk_container_set_focus_chain" (t_typ @-> ptr List.t_typ @-> returning (void))
let set_focus_child =
  foreign "gtk_container_set_focus_child" (t_typ @-> Widget.t_typ @-> returning (void))
let set_focus_hadjustment =
  foreign "gtk_container_set_focus_hadjustment" (t_typ @-> Adjustment.t_typ @-> returning (void))
let set_focus_vadjustment =
  foreign "gtk_container_set_focus_vadjustment" (t_typ @-> Adjustment.t_typ @-> returning (void))
let set_reallocate_redraws =
  foreign "gtk_container_set_reallocate_redraws" (t_typ @-> bool @-> returning (void))
let set_resize_mode =
  foreign "gtk_container_set_resize_mode" (t_typ @-> Resize_mode.t_view @-> returning (void))
let unset_focus_chain =
  foreign "gtk_container_unset_focus_chain" (t_typ @-> returning (void))
