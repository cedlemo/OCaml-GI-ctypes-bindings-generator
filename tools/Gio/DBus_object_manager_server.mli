open Ctypes

type t
val t_typ : t typ

val create :
  string -> t ptr
val export :
  t -> DBus_object_skeleton.t ptr -> unit
val export_uniquely :
  t -> DBus_object_skeleton.t ptr -> unit
val get_connection :
  t -> DBus_connection.t ptr
val is_exported :
  t -> DBus_object_skeleton.t ptr -> bool
val set_connection :
  t -> DBus_connection.t ptr option -> unit
val unexport :
  t -> string -> bool
