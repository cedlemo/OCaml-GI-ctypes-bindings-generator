open Ctypes

type t = Logical_positions | Visual_positions | Words | Display_lines | Display_line_ends | Paragraphs | Paragraph_ends | Pages | Buffer_ends | Horizontal_pages

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

