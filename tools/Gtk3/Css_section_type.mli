open Ctypes

type t = Document | Import | Color_definition | Binding_set | Ruleset | Selector | Declaration | Value | Keyframes

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

