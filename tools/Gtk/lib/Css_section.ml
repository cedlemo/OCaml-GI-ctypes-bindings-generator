open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Css_section"

let get_end_line =
  foreign "gtk_css_section_get_end_line" (t_typ @-> returning (uint32_t))
let get_end_position =
  foreign "gtk_css_section_get_end_position" (t_typ @-> returning (uint32_t))
(*Not implemented gtk_css_section_get_file return type interface not handled*)
let get_parent =
  foreign "gtk_css_section_get_parent" (t_typ @-> returning (ptr_opt t_typ))
let get_section_type =
  foreign "gtk_css_section_get_section_type" (t_typ @-> returning (Css_section_type.t_view))
let get_start_line =
  foreign "gtk_css_section_get_start_line" (t_typ @-> returning (uint32_t))
let get_start_position =
  foreign "gtk_css_section_get_start_position" (t_typ @-> returning (uint32_t))
let incr_ref =
  foreign "gtk_css_section_ref" (t_typ @-> returning (ptr t_typ))
let unref =
  foreign "gtk_css_section_unref" (t_typ @-> returning (void))
