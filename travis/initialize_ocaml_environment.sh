#!/bin/bash
opam update
opam upgrade -y
opam install ctypes configurator base stdio ctypes-foreign jbuilder dune odoc bisect_ppx ounit gobject-introspection
