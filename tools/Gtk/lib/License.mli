open Ctypes

type t = Unknown | Custom | Gpl_2_0 | Gpl_3_0 | Lgpl_2_1 | Lgpl_3_0 | Bsd | Mit_x11 | Artistic | Gpl_2_0_only | Gpl_3_0_only | Lgpl_2_1_only | Lgpl_3_0_only | Agpl_3_0 | Agpl_3_0_only

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

