# OCaml GObject-Introspection Ctypes bindings generator

The idea is to use the gobject-introspection library in order to generate a
configurable loader that will be able to construct automatically most of the
Ctypes bindings of any C GObject libraries (not all but at least a big part).

For now, gi-bindings-generator is used to generate/bootstrap GLib2 OCaml bindings.
Those bindings are used to test the `GI_bindigs_generator.Loader` module and will
be a dependency to GObject-Introspection. ( https://github.com/cedlemo/OCaml-GLib2 )

## API:

https://cedlemo.github.io/OCaml-GI-bindings-generator/

## Wiki :

https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki#introduction

###  table of content.

- [GObjectIntrospection Loader](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader)
  - [Loader Implementation](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#loader-implementation)
  - [Loader Progress](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#loader-progress)
    - [Builders Started](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#builders-started)
    - [Builders Next](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#builders-next)
  - [Builder Code rules](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GObjectIntrospection-Loader#builder-code-rules)
    - [Module constants](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#module-constants)
    - [Structures and Unions](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#structures-and-unions)
    - [Enumerations](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#enumerations)
      - [Simple Enumerations](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#simple-enumerations)
      - [Flags : enumerations for bitwise operations](https://github.com/cedlemo/OCaml-GI-bindings-generator/wiki/GI-bindings-generator-Loader#flags--enumerations-for-bitwise-operations)

