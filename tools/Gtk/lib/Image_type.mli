open Ctypes

type t = Empty | Pixbuf | Stock | Icon_set | Animation | Icon_name | Gicon | Surface

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

