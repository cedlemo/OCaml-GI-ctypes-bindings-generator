open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gl_area_new" (void @-> returning (Widget.t_typ))
let attach_buffers =
  foreign "gtk_gl_area_attach_buffers" (t_typ @-> returning (void))
let get_auto_render =
  foreign "gtk_gl_area_get_auto_render" (t_typ @-> returning (bool))
let get_context =
  foreign "gtk_gl_area_get_context" (t_typ @-> returning (GLContext.t_typ))
let get_error =
  foreign "gtk_gl_area_get_error" (t_typ @-> returning (ptr_opt Error.t_typ))
let get_has_alpha =
  foreign "gtk_gl_area_get_has_alpha" (t_typ @-> returning (bool))
let get_has_depth_buffer =
  foreign "gtk_gl_area_get_has_depth_buffer" (t_typ @-> returning (bool))
let get_has_stencil_buffer =
  foreign "gtk_gl_area_get_has_stencil_buffer" (t_typ @-> returning (bool))
let get_required_version self =
  let get_required_version_raw =
    foreign "gtk_gl_area_get_required_version" (t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let major_ptr = allocate int32_t Int32.zero in
  let minor_ptr = allocate int32_t Int32.zero in
  let ret = get_required_version_raw self major_ptr minor_ptr in
  let major = !@ major_ptr in
  let minor = !@ minor_ptr in
  (major, minor)let get_use_es =
  foreign "gtk_gl_area_get_use_es" (t_typ @-> returning (bool))
let make_current =
  foreign "gtk_gl_area_make_current" (t_typ @-> returning (void))
let queue_render =
  foreign "gtk_gl_area_queue_render" (t_typ @-> returning (void))
let set_auto_render =
  foreign "gtk_gl_area_set_auto_render" (t_typ @-> bool @-> returning (void))
let set_error =
  foreign "gtk_gl_area_set_error" (t_typ @-> ptr_opt Error.t_typ @-> returning (void))
let set_has_alpha =
  foreign "gtk_gl_area_set_has_alpha" (t_typ @-> bool @-> returning (void))
let set_has_depth_buffer =
  foreign "gtk_gl_area_set_has_depth_buffer" (t_typ @-> bool @-> returning (void))
let set_has_stencil_buffer =
  foreign "gtk_gl_area_set_has_stencil_buffer" (t_typ @-> bool @-> returning (void))
let set_required_version =
  foreign "gtk_gl_area_set_required_version" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_use_es =
  foreign "gtk_gl_area_set_use_es" (t_typ @-> bool @-> returning (void))
