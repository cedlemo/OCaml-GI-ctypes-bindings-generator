open Ctypes
open Foreign

type t = None | Spellcheck | No_spellcheck | Word_completion | Lowercase | Uppercase_chars | Uppercase_words | Uppercase_sentences | Inhibit_osk | Vertical_writing | Emoji | No_emoji
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Spellcheck
  else if v = Unsigned.UInt32.of_int 2 then No_spellcheck
  else if v = Unsigned.UInt32.of_int 4 then Word_completion
  else if v = Unsigned.UInt32.of_int 8 then Lowercase
  else if v = Unsigned.UInt32.of_int 16 then Uppercase_chars
  else if v = Unsigned.UInt32.of_int 32 then Uppercase_words
  else if v = Unsigned.UInt32.of_int 64 then Uppercase_sentences
  else if v = Unsigned.UInt32.of_int 128 then Inhibit_osk
  else if v = Unsigned.UInt32.of_int 256 then Vertical_writing
  else if v = Unsigned.UInt32.of_int 512 then Emoji
  else if v = Unsigned.UInt32.of_int 1024 then No_emoji
  else raise (Invalid_argument "Unexpected Input_hints value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Spellcheck -> Unsigned.UInt32.of_int 1
  | No_spellcheck -> Unsigned.UInt32.of_int 2
  | Word_completion -> Unsigned.UInt32.of_int 4
  | Lowercase -> Unsigned.UInt32.of_int 8
  | Uppercase_chars -> Unsigned.UInt32.of_int 16
  | Uppercase_words -> Unsigned.UInt32.of_int 32
  | Uppercase_sentences -> Unsigned.UInt32.of_int 64
  | Inhibit_osk -> Unsigned.UInt32.of_int 128
  | Vertical_writing -> Unsigned.UInt32.of_int 256
  | Emoji -> Unsigned.UInt32.of_int 512
  | No_emoji -> Unsigned.UInt32.of_int 1024

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 0 , None ); ( 1 , Spellcheck ); ( 2 , No_spellcheck ); ( 4 , Word_completion ); ( 8 , Lowercase ); ( 16 , Uppercase_chars ); ( 32 , Uppercase_words ); ( 64 , Uppercase_sentences ); ( 128 , Inhibit_osk ); ( 256 , Vertical_writing ); ( 512 , Emoji ); ( 1024 , No_emoji )]
  in
  let rec build_flags_list allf acc =
    match allf with
    | [] -> acc
    | (i, f) :: q -> if ((logand v (of_int i )) <> zero) then build_flags_list q (f :: acc)
      else build_flags_list q acc
  in build_flags_list all_flags []

let list_to_value flags =
  let open Unsigned.UInt32 in
  let rec logor_flags l acc =
    match l with
    | [] -> acc
    | f :: q -> let v = to_value f in
      let acc' = logor acc v in
      logor_flags q acc'
  in
  logor_flags flags zero

let t_list_view = view ~read:list_of_value ~write:list_to_value uint32_t
