open Ctypes

type t
val t_typ : t typ

val create:
  unit -> t
(*Not implemented gtk_style_context_add_provider_for_screen type interface not implemented*)
(*Not implemented gtk_style_context_remove_provider_for_screen type interface not implemented*)
val reset_widgets:
  Screen.t -> unit
val add_class:
  t -> string -> unit
(*Not implemented gtk_style_context_add_provider type interface not implemented*)
val add_region:
  t -> string -> Region_flags.t_list -> unit
val cancel_animations:
  t -> unit ptr option -> unit
val get_background_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_border :
  t -> State_flags.t_list -> (Border.t structure)
val get_border_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_color :
  t -> State_flags.t_list -> (RGBA.t structure)
val get_direction:
  t -> Text_direction.t
val get_font:
  t -> State_flags.t_list -> Font_description.t structure ptr
val get_frame_clock:
  t -> Frame_clock.t
val get_junction_sides:
  t -> Junction_sides.t_list
val get_margin :
  t -> State_flags.t_list -> (Border.t structure)
val get_padding :
  t -> State_flags.t_list -> (Border.t structure)
val get_parent:
  t -> t
val get_path:
  t -> Widget_path.t structure ptr
val get_property :
  t -> string -> State_flags.t_list -> (Value.t structure)
val get_scale:
  t -> int32
val get_screen:
  t -> Screen.t
val get_section:
  t -> string -> Css_section.t structure ptr option
val get_state:
  t -> State_flags.t_list
val get_style_property:
  t -> string -> Value.t structure ptr -> unit
val has_class:
  t -> string -> bool
val has_region :
  t -> string -> (bool * Region_flags.t_list)
val invalidate:
  t -> unit
val list_classes:
  t -> List.t structure ptr
val list_regions:
  t -> List.t structure ptr
val lookup_color :
  t -> string -> (bool * RGBA.t structure)
val lookup_icon_set:
  t -> string -> Icon_set.t structure ptr option
val notify_state_change:
  t -> Window.t -> unit ptr option -> State_type.t -> bool -> unit
val pop_animatable_region:
  t -> unit
val push_animatable_region:
  t -> unit ptr option -> unit
val remove_class:
  t -> string -> unit
(*Not implemented gtk_style_context_remove_provider type interface not implemented*)
val remove_region:
  t -> string -> unit
val restore:
  t -> unit
val save:
  t -> unit
val scroll_animations:
  t -> Window.t -> int32 -> int32 -> unit
val set_background:
  t -> Window.t -> unit
val set_direction:
  t -> Text_direction.t -> unit
val set_frame_clock:
  t -> Frame_clock.t -> unit
val set_junction_sides:
  t -> Junction_sides.t_list -> unit
val set_parent:
  t -> t -> unit
val set_path:
  t -> Widget_path.t structure ptr -> unit
val set_scale:
  t -> int32 -> unit
val set_screen:
  t -> Screen.t -> unit
val set_state:
  t -> State_flags.t_list -> unit
val state_is_running :
  t -> State_type.t -> (bool * float)
val to_string:
  t -> Style_context_print_flags.t_list -> string option
