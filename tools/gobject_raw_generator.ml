module BG = GI_bindings_generator
module Loader = BG.Loader

let print_infos loader =
  let namespace = Loader.get_namespace loader in
  let version = Loader.get_version loader in
  print_endline (">> " ^ namespace);
  print_endline ("\t - version :" ^ version)

let skip = [ ]

let () =
  let version = "2.0" in
  match Loader.load "GObject" ~version () with
  | None -> print_endline "Please check the namespace, something is wrong"
  | Some loader -> print_infos loader;
    let loader = Loader.set_build_path loader "tools/" in
    Loader.parse loader ~skip ()
