open Ctypes

type t = Normal | Active | Prelight | Selected | Insensitive | Inconsistent | Focused | Backdrop | Dir_ltr | Dir_rtl | Link | Visited | Checked | Drop_active
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
