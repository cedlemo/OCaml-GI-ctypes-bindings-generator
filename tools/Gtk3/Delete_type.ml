open Ctypes
open Foreign

type t = Chars | Word_ends | Words | Display_lines | Display_line_ends | Paragraph_ends | Paragraphs | Whitespace

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Chars
  else if v = Unsigned.UInt32.of_int 1 then Word_ends
  else if v = Unsigned.UInt32.of_int 2 then Words
  else if v = Unsigned.UInt32.of_int 3 then Display_lines
  else if v = Unsigned.UInt32.of_int 4 then Display_line_ends
  else if v = Unsigned.UInt32.of_int 5 then Paragraph_ends
  else if v = Unsigned.UInt32.of_int 6 then Paragraphs
  else if v = Unsigned.UInt32.of_int 7 then Whitespace
  else raise (Invalid_argument "Unexpected Delete_type value")

let to_value = function
  | Chars -> Unsigned.UInt32.of_int 0
  | Word_ends -> Unsigned.UInt32.of_int 1
  | Words -> Unsigned.UInt32.of_int 2
  | Display_lines -> Unsigned.UInt32.of_int 3
  | Display_line_ends -> Unsigned.UInt32.of_int 4
  | Paragraph_ends -> Unsigned.UInt32.of_int 5
  | Paragraphs -> Unsigned.UInt32.of_int 6
  | Whitespace -> Unsigned.UInt32.of_int 7

let t_view = view ~read:of_value ~write:to_value uint32_t

