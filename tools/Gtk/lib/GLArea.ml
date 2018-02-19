open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_gl_area_new return type object not handled*)
let attach_buffers =
  foreign "gtk_gl_area_attach_buffers" (ptr t_typ @-> returning (void))
let get_auto_render =
  foreign "gtk_gl_area_get_auto_render" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_gl_area_get_context return type object not handled*)
let get_error =
  foreign "gtk_gl_area_get_error" (ptr t_typ @-> returning (ptr_opt Error.t_typ))
let get_has_alpha =
  foreign "gtk_gl_area_get_has_alpha" (ptr t_typ @-> returning (bool))
let get_has_depth_buffer =
  foreign "gtk_gl_area_get_has_depth_buffer" (ptr t_typ @-> returning (bool))
let get_has_stencil_buffer =
  foreign "gtk_gl_area_get_has_stencil_buffer" (ptr t_typ @-> returning (bool))
let get_required_version self =
  let major_ptr = allocate int32_t Int32.zero in
  let minor_ptr = allocate int32_t Int32.zero in
  let get_required_version_raw =
    foreign "gtk_gl_area_get_required_version" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_required_version_raw self major_ptr minor_ptr in
  let major = !@ major_ptr in
  let minor = !@ minor_ptr in
  (major, minor)
let get_use_es =
  foreign "gtk_gl_area_get_use_es" (ptr t_typ @-> returning (bool))
let make_current =
  foreign "gtk_gl_area_make_current" (ptr t_typ @-> returning (void))
let queue_render =
  foreign "gtk_gl_area_queue_render" (ptr t_typ @-> returning (void))
let set_auto_render =
  foreign "gtk_gl_area_set_auto_render" (ptr t_typ @-> bool @-> returning (void))
let set_error =
  foreign "gtk_gl_area_set_error" (ptr t_typ @-> ptr_opt Error.t_typ @-> returning (void))
let set_has_alpha =
  foreign "gtk_gl_area_set_has_alpha" (ptr t_typ @-> bool @-> returning (void))
let set_has_depth_buffer =
  foreign "gtk_gl_area_set_has_depth_buffer" (ptr t_typ @-> bool @-> returning (void))
let set_has_stencil_buffer =
  foreign "gtk_gl_area_set_has_stencil_buffer" (ptr t_typ @-> bool @-> returning (void))
let set_required_version =
  foreign "gtk_gl_area_set_required_version" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_use_es =
  foreign "gtk_gl_area_set_use_es" (ptr t_typ @-> bool @-> returning (void))
