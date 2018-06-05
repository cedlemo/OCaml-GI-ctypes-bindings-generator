open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Main_loop"

let create =
  foreign "g_main_loop_new" (ptr_opt Main_context.t_typ @-> bool @-> returning (ptr t_typ))
let get_context =
  foreign "g_main_loop_get_context" (ptr t_typ @-> returning (ptr Main_context.t_typ))
let is_running =
  foreign "g_main_loop_is_running" (ptr t_typ @-> returning (bool))
let quit =
  foreign "g_main_loop_quit" (ptr t_typ @-> returning (void))
let incr_ref =
  foreign "g_main_loop_ref" (ptr t_typ @-> returning (ptr t_typ))
let run =
  foreign "g_main_loop_run" (ptr t_typ @-> returning (void))
let unref =
  foreign "g_main_loop_unref" (ptr t_typ @-> returning (void))
