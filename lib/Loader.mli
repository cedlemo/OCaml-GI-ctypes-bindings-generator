(*
 * Copyright 2017-2018 Cedric LE MOIGNE, cedlemo@gmx.com
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

(** Loader : type and functions in order to read the GObject-Introspection of
    an instrospectable library and generate Ctypes bindings. *)
open Ctypes
open Foreign
open GObject_introspection

(** Generate file sources for code generator *)
val generate_files :
  string -> string -> Binding_utils.Sources.t

(** Juste write bindings for a list of data structures in the current directory *)
val write_bindings_for :
  string -> ?version:string -> string -> string list -> unit

(** Generate all the bindings for the constants in the Core.ml/mli files
 *  @arg namespace
 *  @arg list of constants to skip. *)
val write_constant_bindings_for :
  string -> ?version:string -> Binding_utils.Sources.t -> string list -> unit

(** Generate all the bindings for enums and flags for a namespace. *)
val write_enum_and_flag_bindings_for :
  string -> ?version:string -> string -> unit -> unit

(** Juste write bindings for a list of functions that are directly accessible
 *  in the namespace. *)
val write_function_bindings_for :
  string -> ?version:string -> Binding_utils.Sources.t -> string list -> unit
