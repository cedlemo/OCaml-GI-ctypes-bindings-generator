open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_face:
  t -> Font_face.t
val get_face_list:
  t -> Widget.t
val get_family:
  t -> Font_family.t
val get_family_list:
  t -> Widget.t
val get_font_name:
  t -> string option
val get_preview_entry:
  t -> Widget.t
val get_preview_text:
  t -> string option
val get_size:
  t -> int32
val get_size_entry:
  t -> Widget.t
val get_size_list:
  t -> Widget.t
val set_font_name:
  t -> string -> bool
val set_preview_text:
  t -> string -> unit
