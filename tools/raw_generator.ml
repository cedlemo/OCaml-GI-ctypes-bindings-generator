module BG = GI_bindings_generator
module Loader = BG.Loader
module GI = GObject_introspection

let n_args = Array.length Sys.argv

let () =
  if n_args == 1 || n_args > 3 then begin
    let message =
      "Please provide a GObject Introspection namespace and optionnaly a \
       version number." in
    print_endline message;
    exit 1;
  end

let namespace = Sys.argv.(1)
let version = if n_args = 3 then Some Sys.argv.(2) else None
let sources = Loader.generate_files "Core"

let get_data_structures_and_functions namespace ?version () =
  let open GI in
  match Repository.require namespace ?version () with
  | Error message -> ([], [])
  | Ok typelib ->
    let n = Repository.get_n_infos namespace in
    let rec get_names index data_structures functions =
      if index >= n then (data_structures, functions)
      else begin
        let info = Repository.get_info namespace index in
        match Base_info.get_name info with
        | Some name -> begin
          match Base_info.get_type info with
           | Bindings.Base_info.Function ->
             get_names (index + 1) data_structures (name :: functions)
           | Bindings.Base_info.Object | Bindings.Base_info.Boxed | Bindings.Base_info.Struct ->
             get_names (index + 1) (name :: data_structures) functions
           | Bindings.Base_info.Enum | Bindings.Base_info.Flags | Bindings.Base_info.Constant
           | Bindings.Base_info.Union | Bindings.Base_info.Callback | Bindings.Base_info.Invalid
           | Bindings.Base_info.Value | Bindings.Base_info.Signal | Bindings.Base_info.Vfunc
           | Bindings.Base_info.Property | Bindings.Base_info.Field | Bindings.Base_info.Arg
           | Bindings.Base_info.Type | Bindings.Base_info.Unresolved | Bindings.Base_info.Invalid_0
           | Bindings.Base_info.Interface ->
             get_names (index + 1) data_structures functions
          end
        | None -> get_names (index + 1) data_structures functions
    end
    in get_names 0 [] []

let () =
  let _ = Loader.write_constant_bindings_for namespace ?version sources [] in
  let _ = Loader.write_enum_and_flag_bindings_for namespace ?version () in
  let data_structures, functions =
    get_data_structures_and_functions namespace ?version () in
  let _ = Loader.write_function_bindings_for namespace ?version sources functions in
  let _ = Loader.write_bindings_for namespace ?version data_structures in
  BG.Binding_utils.Sources.close sources
