open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let activate_item =
  foreign "gtk_menu_shell_activate_item" (t_typ @-> ptr Widget.t_typ @-> bool @-> returning (void))
let append =
  foreign "gtk_menu_shell_append" (t_typ @-> ptr Menu_item.t_typ @-> returning (void))
let bind_model =
  foreign "gtk_menu_shell_bind_model" (t_typ @-> ptr_opt Menu_model.t_typ @-> string_opt @-> bool @-> returning (void))
let cancel =
  foreign "gtk_menu_shell_cancel" (t_typ @-> returning (void))
let deactivate =
  foreign "gtk_menu_shell_deactivate" (t_typ @-> returning (void))
let deselect =
  foreign "gtk_menu_shell_deselect" (t_typ @-> returning (void))
let get_parent_shell =
  foreign "gtk_menu_shell_get_parent_shell" (t_typ @-> returning (ptr Widget.t_typ))
let get_selected_item =
  foreign "gtk_menu_shell_get_selected_item" (t_typ @-> returning (ptr Widget.t_typ))
let get_take_focus =
  foreign "gtk_menu_shell_get_take_focus" (t_typ @-> returning (bool))
let insert =
  foreign "gtk_menu_shell_insert" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> returning (void))
let prepend =
  foreign "gtk_menu_shell_prepend" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let select_first =
  foreign "gtk_menu_shell_select_first" (t_typ @-> bool @-> returning (void))
let select_item =
  foreign "gtk_menu_shell_select_item" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let set_take_focus =
  foreign "gtk_menu_shell_set_take_focus" (t_typ @-> bool @-> returning (void))
