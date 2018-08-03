open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_viewport_new" (ptr_opt Adjustment.t_typ @-> ptr_opt Adjustment.t_typ @-> returning (ptr Widget.t_typ))
let get_bin_window =
  foreign "gtk_viewport_get_bin_window" (t_typ @-> returning (ptr Window.t_typ))
let get_hadjustment =
  foreign "gtk_viewport_get_hadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_shadow_type =
  foreign "gtk_viewport_get_shadow_type" (t_typ @-> returning (Shadow_type.t_view))
let get_vadjustment =
  foreign "gtk_viewport_get_vadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_view_window =
  foreign "gtk_viewport_get_view_window" (t_typ @-> returning (ptr Window.t_typ))
let set_hadjustment =
  foreign "gtk_viewport_set_hadjustment" (t_typ @-> ptr_opt Adjustment.t_typ @-> returning (void))
let set_shadow_type =
  foreign "gtk_viewport_set_shadow_type" (t_typ @-> Shadow_type.t_view @-> returning (void))
let set_vadjustment =
  foreign "gtk_viewport_set_vadjustment" (t_typ @-> ptr_opt Adjustment.t_typ @-> returning (void))
