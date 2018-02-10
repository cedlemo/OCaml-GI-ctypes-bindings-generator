[![Build Status](https://travis-ci.org/cedlemo/OCaml-GI-ctypes-bindings-generator.svg?branch=master)](https://travis-ci.org/cedlemo/OCaml-GI-ctypes-bindings-generator)
# OCaml GObject-Introspection Ctypes bindings generator

The idea is to use the gobject-introspection library in order to generate a
configurable loader that will be able to construct automatically most of the
Ctypes bindings of any C GObject libraries (not all but at least a big part).

For now, gi-bindings-generator is used to generate/bootstrap GLib2 OCaml bindings.
Those bindings are used to test the `GI_bindigs_generator.Loader` module and will
be a dependency to GObject-Introspection. ( https://github.com/cedlemo/OCaml-GLib2 )

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
