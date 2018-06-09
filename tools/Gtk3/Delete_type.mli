open Ctypes

type t = Chars | Word_ends | Words | Display_lines | Display_line_ends | Paragraph_ends | Paragraphs | Whitespace

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

