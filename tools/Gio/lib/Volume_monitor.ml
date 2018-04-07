open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_volume_monitor_adopt_orphan_mount type interface not implemented*)
let get =
  foreign "g_volume_monitor_get" (void @-> returning (t_typ))
let get_connected_drives =
  foreign "g_volume_monitor_get_connected_drives" (t_typ @-> returning (ptr List.t_typ))
(*Not implemented g_volume_monitor_get_mount_for_uuid return type interface not handled*)
let get_mounts =
  foreign "g_volume_monitor_get_mounts" (t_typ @-> returning (ptr List.t_typ))
(*Not implemented g_volume_monitor_get_volume_for_uuid return type interface not handled*)
let get_volumes =
  foreign "g_volume_monitor_get_volumes" (t_typ @-> returning (ptr List.t_typ))
