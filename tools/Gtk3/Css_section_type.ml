open Ctypes
open Foreign

type t = Document | Import | Color_definition | Binding_set | Ruleset | Selector | Declaration | Value | Keyframes

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Document
  else if v = Unsigned.UInt32.of_int 1 then Import
  else if v = Unsigned.UInt32.of_int 2 then Color_definition
  else if v = Unsigned.UInt32.of_int 3 then Binding_set
  else if v = Unsigned.UInt32.of_int 4 then Ruleset
  else if v = Unsigned.UInt32.of_int 5 then Selector
  else if v = Unsigned.UInt32.of_int 6 then Declaration
  else if v = Unsigned.UInt32.of_int 7 then Value
  else if v = Unsigned.UInt32.of_int 8 then Keyframes
  else raise (Invalid_argument "Unexpected Css_section_type value")

let to_value = function
  | Document -> Unsigned.UInt32.of_int 0
  | Import -> Unsigned.UInt32.of_int 1
  | Color_definition -> Unsigned.UInt32.of_int 2
  | Binding_set -> Unsigned.UInt32.of_int 3
  | Ruleset -> Unsigned.UInt32.of_int 4
  | Selector -> Unsigned.UInt32.of_int 5
  | Declaration -> Unsigned.UInt32.of_int 6
  | Value -> Unsigned.UInt32.of_int 7
  | Keyframes -> Unsigned.UInt32.of_int 8

let t_view = view ~read:of_value ~write:to_value uint32_t

