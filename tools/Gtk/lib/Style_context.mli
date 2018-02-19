open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_style_context_new return type object not handled*)
(*Not implemented gtk_style_context_add_provider_for_screen type object not implemented*)
(*Not implemented gtk_style_context_remove_provider_for_screen type object not implemented*)
(*Not implemented gtk_style_context_reset_widgets type object not implemented*)
val add_class:
  t structure ptr -> string -> unit
(*Not implemented gtk_style_context_add_provider type interface not implemented*)
val add_region:
  t structure ptr -> string -> Region_flags.t_list -> unit
val cancel_animations:
  t structure ptr -> unit ptr option -> unit
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
(*Not implemented gtk_style_context_get_frame_clock return type object not handled*)
val get_junction_sides:
  t structure ptr -> Junction_sides.t_list
val get_margin :
  t structure ptr -> State_flags.t_list -> (Border.t structure)
val get_padding :
  t structure ptr -> State_flags.t_list -> (Border.t structure)
(*Not implemented gtk_style_context_get_parent return type object not handled*)
val get_path:
  t structure ptr -> Widget_path.t structure ptr
val get_property :
  t structure ptr -> string -> State_flags.t_list -> (Value.t structure)
val get_scale:
  t structure ptr -> int32
(*Not implemented gtk_style_context_get_screen return type object not handled*)
val get_section:
  t structure ptr -> string -> Css_section.t structure ptr option
val get_state:
  t structure ptr -> State_flags.t_list
val get_style_property:
  t structure ptr -> string -> Value.t structure ptr -> unit
val has_class:
  t structure ptr -> string -> bool
val has_region :
  t structure ptr -> string -> (bool * Region_flags.t_list)
val invalidate:
  t structure ptr -> unit
val list_classes:
  t structure ptr -> List.t structure ptr
val list_regions:
  t structure ptr -> List.t structure ptr
val lookup_color :
  t structure ptr -> string -> (bool * RGBA.t structure)
val lookup_icon_set:
  t structure ptr -> string -> Icon_set.t structure ptr option
(*Not implemented gtk_style_context_notify_state_change type object not implemented*)
val pop_animatable_region:
  t structure ptr -> unit
val push_animatable_region:
  t structure ptr -> unit ptr option -> unit
val remove_class:
  t structure ptr -> string -> unit
(*Not implemented gtk_style_context_remove_provider type interface not implemented*)
val remove_region:
  t structure ptr -> string -> unit
val restore:
  t structure ptr -> unit
val save:
  t structure ptr -> unit
(*Not implemented gtk_style_context_scroll_animations type object not implemented*)
(*Not implemented gtk_style_context_set_background type object not implemented*)
val set_direction:
  t structure ptr -> Text_direction.t -> unit
(*Not implemented gtk_style_context_set_frame_clock type object not implemented*)
val set_junction_sides:
  t structure ptr -> Junction_sides.t_list -> unit
(*Not implemented gtk_style_context_set_parent type object not implemented*)
val set_path:
  t structure ptr -> Widget_path.t structure ptr -> unit
val set_scale:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_style_context_set_screen type object not implemented*)
val set_state:
  t structure ptr -> State_flags.t_list -> unit
val state_is_running :
  t structure ptr -> State_type.t -> (bool * float)
val to_string:
  t structure ptr -> Style_context_print_flags.t_list -> string option
