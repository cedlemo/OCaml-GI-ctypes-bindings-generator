open Ctypes

type t = No_svg | Force_svg | Use_builtin | Generic_fallback | Force_size | Force_regular | Force_symbolic | Dir_ltr | Dir_rtl
type t_list = t list

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val list_of_value:
  Unsigned.uint32 -> t_list

val list_to_value:
  t_list -> Unsigned.uint32

val t_list_view : t_list typ

