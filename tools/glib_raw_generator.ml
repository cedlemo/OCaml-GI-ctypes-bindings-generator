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
let version = if n_args = 3 then Some Sys.argv.(1) else None
let sources = Loader.generate_files "Core"

let get_data_structures_and_functions namespace =
  let open GI in
  match Repository.require namespace () with
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
           | Base_info.Function ->
             get_names (index + 1) data_structures (name :: functions)
           | Base_info.Object | Base_info.Boxed | Base_info.Struct ->
             get_names (index + 1) (name :: data_structures) functions
           | Base_info.Enum | Base_info.Flags | Base_info.Constant
           | Base_info.Union | Base_info.Callback | Base_info.Invalid
           | Base_info.Value | Base_info.Signal | Base_info.Vfunc
           | Base_info.Property | Base_info.Field | Base_info.Arg
           | Base_info.Type | Base_info.Unresolved | Base_info.Invalid_0
           | Base_info.Interface ->
             get_names (index + 1) data_structures functions
          end
        | None -> get_names (index + 1) data_structures functions
    end
    in get_names 0 [] []

let () =
  let _ = Loader.write_constant_bindings_for namespace sources [] in
  let _ = Loader.write_enum_and_flag_bindings_for namespace in
  let data_structures, functions = get_data_structures_and_functions namespace in
  let _ = Loader.write_function_bindings_for namespace sources functions in
  let _ = Loader.write_bindings_for namespace data_structures in
  BG.Binding_utils.Sources.close sources
