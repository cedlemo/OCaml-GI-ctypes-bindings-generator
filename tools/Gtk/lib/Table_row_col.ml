open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Table_row_col"

let f_requisition = field t_typ "requisition" (uint16_t)
let f_allocation = field t_typ "allocation" (uint16_t)
let f_spacing = field t_typ "spacing" (uint16_t)
let f_need_expand = field t_typ "need_expand" (uint32_t)
let f_need_shrink = field t_typ "need_shrink" (uint32_t)
let f_expand = field t_typ "expand" (uint32_t)
let f_shrink = field t_typ "shrink" (uint32_t)
let f_empty = field t_typ "empty" (uint32_t)
let _ = seal t_typ

