# TOOLS

## glib_raw_generator.ml

It is a `GLib` GObject-Introspection loader. It generates all the raw Ctypes
bindings of the GLib library. It is used for testing purpose. The real loader
for OCaml-GLib2 can be found here : https://github.com/cedlemo/OCaml-GLib2.

### Build :

```
jbuilder build tools/glib_raw_generator.exe
cd tools/GLib
./../_build/default/tools/glib_raw_generator.exe
```
