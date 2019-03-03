#!/bin/bash
opam install ctypes configurator base stdio ctypes-foreign jbuilder dune odoc bisect_ppx ounit
opam pin add -y gobject-introspection https://github.com/cedlemo/OCaml-GObject-Introspection.git
