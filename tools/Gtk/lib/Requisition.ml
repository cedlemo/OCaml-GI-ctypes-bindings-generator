open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Requisition"

let f_width = field t_typ "width" (int32_t)
let f_height = field t_typ "height" (int32_t)
let _ = seal t_typ

let create =
  foreign "gtk_requisition_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_requisition_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_requisition_free" (ptr t_typ @-> returning (void))
