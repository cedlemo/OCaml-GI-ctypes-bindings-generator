open Ctypes

type t
val t_typ : t typ

val create :
  string -> t
val export :
  t -> DBus_object_skeleton.t -> unit
val export_uniquely :
  t -> DBus_object_skeleton.t -> unit
val get_connection :
  t -> DBus_connection.t
val is_exported :
  t -> DBus_object_skeleton.t -> bool
val set_connection :
  t -> DBus_connection.t -> unit
val unexport :
  t -> string -> bool
