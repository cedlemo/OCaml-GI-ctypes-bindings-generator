open Ctypes

type t
val t_typ : t structure typ

val f_closure: (Closure.t structure, t structure) field
val f_callback: (unit ptr, t structure) field

val marshal_BOOLEAN__BOXED_BOXED :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_BOOLEAN__FLAGS :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_STRING__OBJECT_POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__BOOLEAN :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__BOXED :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__CHAR :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__DOUBLE :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__ENUM :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__FLAGS :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__FLOAT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__INT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__LONG :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__OBJECT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__PARAM :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__STRING :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__UCHAR :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__UINT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__UINT_POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__ULONG :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__VARIANT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_VOID__VOID :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
val marshal_generic :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit
