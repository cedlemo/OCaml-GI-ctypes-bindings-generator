open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

