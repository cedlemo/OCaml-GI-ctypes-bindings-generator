open Ctypes

type t
val t_typ : t typ

(*Not implemented g_volume_monitor_adopt_orphan_mount type interface not implemented*)
val get :
  unit -> t
val get_connected_drives :
  t -> List.t structure ptr
(*Not implemented g_volume_monitor_get_mount_for_uuid return type interface not handled*)
val get_mounts :
  t -> List.t structure ptr
(*Not implemented g_volume_monitor_get_volume_for_uuid return type interface not handled*)
val get_volumes :
  t -> List.t structure ptr
