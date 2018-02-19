open Ctypes

type t = None | Spellcheck | No_spellcheck | Word_completion | Lowercase | Uppercase_chars | Uppercase_words | Uppercase_sentences | Inhibit_osk | Vertical_writing | Emoji | No_emoji
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

