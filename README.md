[![Build Status](https://travis-ci.org/cedlemo/OCaml-GI-ctypes-bindings-generator.svg?branch=master)](https://travis-ci.org/cedlemo/OCaml-GI-ctypes-bindings-generator)
# OCaml GObject-Introspection Ctypes bindings generator

The idea is to use the gobject-introspection library in order to generate a
configurable loader that will be able to construct automatically most of the
Ctypes bindings of any C GObject libraries (not all but at least a big part).

## gi-bindings-generator and Dune (jbuilder)

Dune allows to easily use a [custom code generator]. Let's take the example
of the [gi-glib2 package : OCaml-GLib2 ctypes bindings](https://github.com/cedlemo/OCaml-GLib2).

Here is the directory tree of the repository:

```
λ › tree                                                                                                                                                                                                  OCaml-c/OCaml-GLib2  dllist_string
.
├── config
│   ├── discover.ml
│   └── jbuild
├── COPYING
├── generator
│   ├── gen.ml
│   └── jbuild
├── gi-glib2.opam
├── gpl-3.0.txt
├── lib
│   ├── Core.ml
│   ├── Dllist.ml
│   ├── dyn_load_constants_stubs.c
│   └── jbuild
├── README.md
├── tests
│   ├── jbuild
│   ├── ...
├── tools
│   ├── jbuild
│   └── list_targets.ml
└── travis
    ├── ...
```

All the code of the bindings will be in the *lib/* directory. The *jbuild* file
of this directory define the rules to construct the lib. In it there is this part:

```sexp
(rule
 ((targets (
	    Ascii_type.ml Ascii_type.mli
	    Bookmark_file_error.ml Bookmark_file_error.mli
	    ; ...
	    ; the names of the files that will be generated
	    ; ...
	    Date_time.ml Date_time.mli
	    Time_val.ml Time_val.mli
	    Time_type.ml Time_type.mli
	    Time_zone.ml Time_zone.mli
	    ))
  (deps    (../generator/gen.exe)) ; the name, path of the generator.
  (action  (run ${<} -o ${@}))))   ; the command to run it.
```

The code of the bindings generator is in the *generator/* directory. And here is
the code:

```OCaml
module BG = GI_bindings_generator
module Loader = BG.Loader

(** The namespace to be loaded: ie. the lib for which the bindings will be
 *  generated. *)
let namespace = "GLib"

(** A suffix for the filenames of the raw bindings of the Core part. For example,
 *  all the constants and functions defined directly in the namespace are defined
 *  in a "Core" module and generated in "Core.ml" and "Core.mli" files. But, in
 *  in order to be able to tweak those automatically generated bindings, a
 *  suffix is added. Here, all the constants and functions of the namespaces
 *  will be found in the module Core_raw. Then in the lib/Core.ml file, I just
 *  load/open the Core_raw. *)
let files_suffix = "Raw"

(** Instead of generate all the data structures (and theirs related methods or
 *  constants), the idea is to choose what is needed. *)
let data_structures =
  ["Error"; "Rand"; "Date"; "DateTime"; "TimeVal"; "TimeZone";]

(** One can choose to skip the bindings of some constants because they are not
 *  needed or because you want to create manually the bindings in the "Core.ml"
 *  file. *)
let const_to_skip = ["MAJOR_VERSION"; "MINOR_VERSION"; "MICRO_VERSION"]

(** Like for the data_structures, you have to choose with function should have
 *  its bindings generated. *)
let functions = ["random_double"; "random_double_range";
                 "random_int"; "random_int_range";
                 "get_current_time";
                 "filename_to_uri"; "get_charset";
                 "dir_make_tmp"]

let sources = Loader.generate_files ("Core" ^ files_suffix)

let () =
  let _ = Loader.write_constant_bindings_for namespace sources const_to_skip in
  let _ = Loader.write_function_bindings_for namespace sources functions in
  let _ = Loader.write_enum_and_flag_bindings_for namespace in
  let _ = Loader.write_bindings_for namespace data_structures in
  BG.Binding_utils.Sources.close sources
```

After that when you build your lib, all the files are generated and added in
the *_build/default/lib* directory before the compilation and test part.

## Try:

```
git clone git@github.com:cedlemo/OCaml-GObject-Introspection
opam pin add gobject-introspection OCaml-GObject-Introspection
git clone git@github.com:cedlemo/OCaml-GI-ctypes-bindings-generator
```

## API:

https://cedlemo.github.io/OCaml-GI-ctypes-bindings-generator/

## Wiki :

https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#introduction

###  table of content.

- [GI_bindings_generator.Loader](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki)
  - [Loader Implementation](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#loader-implementation)
  - [Loader Progress](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#loader-progress)
    - [Builders Started](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#builders-started)
    - [Builders Next](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#builders-next)
  - [Builder Code rules](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#builder-code-rules)
    - [Module constants](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#module-constants)
    - [Structures and Unions](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#structures-and-unions)
    - [Enumerations](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#enumerations)
      - [Simple Enumerations](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#simple-enumerations)
      - [Flags : enumerations for bitwise operations](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#flags--enumerations-for-bitwise-operations)
    - [Functions](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#functions)
      - [Functions with only in arguments](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#functions-with-only-in-arguments)
      - [Functions with out arguments](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#functions-with-out-arguments)
      - [Functions with in/out arguments](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#functions-with-inout-arguments)
      - [Recognizable patterns in functions](https://github.com/cedlemo/OCaml-GI-ctypes-bindings-generator/wiki#patterns)
