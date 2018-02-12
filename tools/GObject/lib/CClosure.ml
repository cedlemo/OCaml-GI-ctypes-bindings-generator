open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "CClosure"

let f_closure = field t_typ "closure" (Closure.t_typ)
let f_callback = field t_typ "callback" (ptr void)
let _ = seal t_typ

let marshal_BOOLEAN__BOXED_BOXED =
  foreign "g_cclosure_marshal_BOOLEAN__BOXED_BOXED" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_BOOLEAN__FLAGS =
  foreign "g_cclosure_marshal_BOOLEAN__FLAGS" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_STRING__OBJECT_POINTER =
  foreign "g_cclosure_marshal_STRING__OBJECT_POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__BOOLEAN =
  foreign "g_cclosure_marshal_VOID__BOOLEAN" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__BOXED =
  foreign "g_cclosure_marshal_VOID__BOXED" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__CHAR =
  foreign "g_cclosure_marshal_VOID__CHAR" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__DOUBLE =
  foreign "g_cclosure_marshal_VOID__DOUBLE" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__ENUM =
  foreign "g_cclosure_marshal_VOID__ENUM" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__FLAGS =
  foreign "g_cclosure_marshal_VOID__FLAGS" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__FLOAT =
  foreign "g_cclosure_marshal_VOID__FLOAT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__INT =
  foreign "g_cclosure_marshal_VOID__INT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__LONG =
  foreign "g_cclosure_marshal_VOID__LONG" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__OBJECT =
  foreign "g_cclosure_marshal_VOID__OBJECT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__PARAM =
  foreign "g_cclosure_marshal_VOID__PARAM" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__POINTER =
  foreign "g_cclosure_marshal_VOID__POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__STRING =
  foreign "g_cclosure_marshal_VOID__STRING" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__UCHAR =
  foreign "g_cclosure_marshal_VOID__UCHAR" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__UINT =
  foreign "g_cclosure_marshal_VOID__UINT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__UINT_POINTER =
  foreign "g_cclosure_marshal_VOID__UINT_POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__ULONG =
  foreign "g_cclosure_marshal_VOID__ULONG" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__VARIANT =
  foreign "g_cclosure_marshal_VOID__VARIANT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_VOID__VOID =
  foreign "g_cclosure_marshal_VOID__VOID" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
let marshal_generic =
  foreign "g_cclosure_marshal_generic" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))
