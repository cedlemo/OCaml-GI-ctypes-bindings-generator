open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val attach_buffers :
  t -> unit
val get_auto_render :
  t -> bool
val get_context :
  t -> GLContext.t
val get_error :
  t -> Error.t structure ptr option
val get_has_alpha :
  t -> bool
val get_has_depth_buffer :
  t -> bool
val get_has_stencil_buffer :
  t -> bool
val get_required_version :
  t -> (int32 * int32)
val get_use_es :
  t -> bool
val make_current :
  t -> unit
val queue_render :
  t -> unit
val set_auto_render :
  t -> bool -> unit
val set_error :
  t -> Error.t structure ptr option -> unit
val set_has_alpha :
  t -> bool -> unit
val set_has_depth_buffer :
  t -> bool -> unit
val set_has_stencil_buffer :
  t -> bool -> unit
val set_required_version :
  t -> int32 -> int32 -> unit
val set_use_es :
  t -> bool -> unit
