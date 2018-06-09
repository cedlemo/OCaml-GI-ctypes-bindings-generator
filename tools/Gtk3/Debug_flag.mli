open Ctypes

type t = Misc | Plugsocket | Text | Tree | Updates | Keybindings | Multihead | Modules | Geometry | Icontheme | Printing | Builder | Size_request | No_css_cache | Baselines | Pixel_cache | No_pixel_cache | Interactive | Touchscreen | Actions | Resize | Layout
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

