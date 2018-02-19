open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_theming_engine_load return type object not handled*)
val get_background_color :
  t structure ptr -> State_flags.t_list -> (RGBA.t structure)
val get_border :
  t structure ptr -> State_flags.t_list -> (Border.t structure)
val get_border_color :
  t structure ptr -> State_flags.t_list -> (RGBA.t structure)
val get_color :
  t structure ptr -> State_flags.t_list -> (RGBA.t structure)
val get_direction:
  t structure ptr -> Text_direction.t
val get_font:
  t structure ptr -> State_flags.t_list -> Font_description.t structure ptr
val get_junction_sides:
  t structure ptr -> Junction_sides.t_list
val get_margin :
  t structure ptr -> State_flags.t_list -> (Border.t structure)
val get_padding :
  t structure ptr -> State_flags.t_list -> (Border.t structure)
val get_path:
  t structure ptr -> Widget_path.t structure ptr
val get_property :
  t structure ptr -> string -> State_flags.t_list -> (Value.t structure)
(*Not implemented gtk_theming_engine_get_screen return type object not handled*)
val get_state:
  t structure ptr -> State_flags.t_list
val get_style_property :
  t structure ptr -> string -> (Value.t structure)
val has_class:
  t structure ptr -> string -> bool
val has_region :
  t structure ptr -> string -> (bool * Region_flags.t_list)
val lookup_color :
  t structure ptr -> string -> (bool * RGBA.t structure)
val state_is_running :
  t structure ptr -> State_type.t -> (bool * float)
