open Ctypes

type t
val t_typ : t typ

val load :
  string -> t ptr option
val get_background_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_border :
  t -> State_flags.t_list -> (Border.t structure)
val get_border_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_direction :
  t -> Text_direction.t
val get_font :
  t -> State_flags.t_list -> Font_description.t structure ptr
val get_junction_sides :
  t -> Junction_sides.t_list
val get_margin :
  t -> State_flags.t_list -> (Border.t structure)
val get_padding :
  t -> State_flags.t_list -> (Border.t structure)
val get_path :
  t -> Widget_path.t structure ptr
val get_property :
  t -> string -> State_flags.t_list -> (Value.t structure)
val get_screen :
  t -> Screen.t ptr option
val get_state :
  t -> State_flags.t_list
val get_style_property :
  t -> string -> (Value.t structure)
val has_class :
  t -> string -> bool
val has_region :
  t -> string -> (bool * Region_flags.t_list)
val lookup_color :
  t -> string -> (bool * RGBA.t structure)
val state_is_running :
  t -> State_type.t -> (bool * float)
