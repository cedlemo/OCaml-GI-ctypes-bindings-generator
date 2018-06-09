open Ctypes
open Foreign

type t = Not_found | Invalid_uri | Invalid_encoding | Not_registered | Read | Write | Unknown

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Not_found
  else if v = Unsigned.UInt32.of_int 1 then Invalid_uri
  else if v = Unsigned.UInt32.of_int 2 then Invalid_encoding
  else if v = Unsigned.UInt32.of_int 3 then Not_registered
  else if v = Unsigned.UInt32.of_int 4 then Read
  else if v = Unsigned.UInt32.of_int 5 then Write
  else if v = Unsigned.UInt32.of_int 6 then Unknown
  else raise (Invalid_argument "Unexpected Recent_manager_error value")

let to_value = function
  | Not_found -> Unsigned.UInt32.of_int 0
  | Invalid_uri -> Unsigned.UInt32.of_int 1
  | Invalid_encoding -> Unsigned.UInt32.of_int 2
  | Not_registered -> Unsigned.UInt32.of_int 3
  | Read -> Unsigned.UInt32.of_int 4
  | Write -> Unsigned.UInt32.of_int 5
  | Unknown -> Unsigned.UInt32.of_int 6

let t_view = view ~read:of_value ~write:to_value uint32_t

