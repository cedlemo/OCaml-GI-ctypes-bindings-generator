open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Time_val"

let f_tv_sec = field t_typ "tv_sec" (int64_t)
let f_tv_usec = field t_typ "tv_usec" (int64_t)
let _ = seal t_typ

let add =
  foreign "g_time_val_add" (ptr t_typ @-> int64_t @-> returning (void))
let to_iso8601 =
  foreign "g_time_val_to_iso8601" (ptr t_typ @-> returning (string_opt))
(* Not implemented g_time_val_from_iso8601 - out argument not handled

(* string -> (bool, t structure)*)
let from_iso8601 iso_date =
  let time__ptr = allocate Time_val.t_typ None in
  let from_iso8601_raw g_time_val_from_iso8601 =
    foreign (string @ -> t_typ @-> returning bool)
  in
  let ret = from_iso8601_raw iso_date time__ptr in
  let time_ = @!time__ptr in
  (ret, time_)
*)
