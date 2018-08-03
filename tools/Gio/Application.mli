open Ctypes

type t
val t_typ : t typ

val create :
  string option -> Application_flags.t_list -> t ptr
val get_default :
  unit -> t ptr
val id_is_valid :
  string -> bool
val activate :
  t -> unit
val add_main_option :
  t -> string -> int -> Option_flags.t_list -> Option_arg.t -> string -> string option -> unit
(*Not implemented g_application_add_main_option_entries type C Array type for Types.Array tag not implemented*)
val add_option_group :
  t -> Option_group.t structure ptr -> unit
val bind_busy_property :
  t -> Object.t ptr -> string -> unit
val get_application_id :
  t -> string option
val get_dbus_connection :
  t -> DBus_connection.t ptr
val get_dbus_object_path :
  t -> string option
val get_flags :
  t -> Application_flags.t_list
val get_inactivity_timeout :
  t -> Unsigned.uint32
val get_is_busy :
  t -> bool
val get_is_registered :
  t -> bool
val get_is_remote :
  t -> bool
val get_resource_base_path :
  t -> string option
val hold :
  t -> unit
val mark_busy :
  t -> unit
(*Not implemented g_application_open type C Array type for Types.Array tag not implemented*)
val quit :
  t -> unit
val register :
  t -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val release :
  t -> unit
(*Not implemented g_application_run type C Array type for Types.Array tag not implemented*)
val send_notification :
  t -> string option -> Notification.t ptr -> unit
(*Not implemented g_application_set_action_group type interface not implemented*)
val set_application_id :
  t -> string option -> unit
val set_default :
  t -> unit
val set_flags :
  t -> Application_flags.t_list -> unit
val set_inactivity_timeout :
  t -> Unsigned.uint32 -> unit
val set_option_context_description :
  t -> string option -> unit
val set_option_context_parameter_string :
  t -> string option -> unit
val set_option_context_summary :
  t -> string option -> unit
val set_resource_base_path :
  t -> string option -> unit
val unbind_busy_property :
  t -> Object.t ptr -> string -> unit
val unmark_busy :
  t -> unit
val withdraw_notification :
  t -> string -> unit
