open Ctypes
open Foreign

type t = Logical_positions | Visual_positions | Words | Display_lines | Display_line_ends | Paragraphs | Paragraph_ends | Pages | Buffer_ends | Horizontal_pages

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Logical_positions
  else if v = Unsigned.UInt32.of_int 1 then Visual_positions
  else if v = Unsigned.UInt32.of_int 2 then Words
  else if v = Unsigned.UInt32.of_int 3 then Display_lines
  else if v = Unsigned.UInt32.of_int 4 then Display_line_ends
  else if v = Unsigned.UInt32.of_int 5 then Paragraphs
  else if v = Unsigned.UInt32.of_int 6 then Paragraph_ends
  else if v = Unsigned.UInt32.of_int 7 then Pages
  else if v = Unsigned.UInt32.of_int 8 then Buffer_ends
  else if v = Unsigned.UInt32.of_int 9 then Horizontal_pages
  else raise (Invalid_argument "Unexpected Movement_step value")

let to_value = function
  | Logical_positions -> Unsigned.UInt32.of_int 0
  | Visual_positions -> Unsigned.UInt32.of_int 1
  | Words -> Unsigned.UInt32.of_int 2
  | Display_lines -> Unsigned.UInt32.of_int 3
  | Display_line_ends -> Unsigned.UInt32.of_int 4
  | Paragraphs -> Unsigned.UInt32.of_int 5
  | Paragraph_ends -> Unsigned.UInt32.of_int 6
  | Pages -> Unsigned.UInt32.of_int 7
  | Buffer_ends -> Unsigned.UInt32.of_int 8
  | Horizontal_pages -> Unsigned.UInt32.of_int 9

let t_view = view ~read:of_value ~write:to_value uint32_t

