open Ctypes

type t
val t_typ : t typ

val add :
  t -> Widget.t -> unit
val check_resize :
  t -> unit
val child_get_property :
  t -> Widget.t -> string -> Value.t structure ptr -> unit
val child_notify :
  t -> Widget.t -> string -> unit
val child_notify_by_pspec :
  t -> Widget.t -> Param_spec.t -> unit
val child_set_property :
  t -> Widget.t -> string -> Value.t structure ptr -> unit
(*Not implemented gtk_container_child_type return type gType not handled*)
(*Not implemented gtk_container_forall type callback not implemented*)
(*Not implemented gtk_container_foreach type callback not implemented*)
val get_border_width :
  t -> Unsigned.uint32
val get_children :
  t -> List.t structure ptr
val get_focus_chain :
  t -> (bool * List.t structure ptr)
val get_focus_child :
  t -> Widget.t
val get_focus_hadjustment :
  t -> Adjustment.t
val get_focus_vadjustment :
  t -> Adjustment.t
val get_path_for_child :
  t -> Widget.t -> Widget_path.t structure ptr
val get_resize_mode :
  t -> Resize_mode.t
val propagate_draw :
  t -> Widget.t -> Context.t structure ptr -> unit
val remove :
  t -> Widget.t -> unit
val resize_children :
  t -> unit
val set_border_width :
  t -> Unsigned.uint32 -> unit
val set_focus_chain :
  t -> List.t structure ptr -> unit
val set_focus_child :
  t -> Widget.t -> unit
val set_focus_hadjustment :
  t -> Adjustment.t -> unit
val set_focus_vadjustment :
  t -> Adjustment.t -> unit
val set_reallocate_redraws :
  t -> bool -> unit
val set_resize_mode :
  t -> Resize_mode.t -> unit
val unset_focus_chain :
  t -> unit
