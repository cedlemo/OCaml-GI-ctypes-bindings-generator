(*
 * Copyright 2018 Cedric LE MOIGNE, cedlemo@gmx.com
 * This file is part of OCaml-GObject-Introspection.
 *
 * OCaml-GObject-Introspection is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * OCaml-GObject-Introspection is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OCaml-GObject-Introspection.  If not, see <http://www.gnu.org/licenses/>.
 *)

(** Bind_object : regroups all functions needed to parse and generate the
    OCaml code for C gobject. *)

open Ctypes
open Foreign
open GObject_introspection

val append_ctypes_object_declaration:
  string -> Binding_utils.Sources.t -> unit

val append_ctypes_object_property_declarations:
  string -> Object_info.t structure ptr -> Binding_utils.Sources.t -> string list -> unit

val parse_object_info :
  Base_info.t structure ptr -> Binding_utils.Sources.t -> string list -> unit
