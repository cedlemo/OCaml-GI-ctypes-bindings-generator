open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_app_chooser_dialog_new type interface not implemented*)
val create_for_content_type :
  Window.t ptr option -> Dialog_flags.t_list -> string -> Widget.t ptr
val get_heading :
  t -> string option
val get_widget :
  t -> Widget.t ptr
val set_heading :
  t -> string -> unit
