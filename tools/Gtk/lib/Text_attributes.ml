open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Text_attributes"

let f_refcount = field t_typ "refcount" (uint32_t)
let f_appearance = field t_typ "appearance" (Text_appearance.t_typ)
let f_justification = field t_typ "justification" (Justification.t_view)
let f_direction = field t_typ "direction" (Text_direction.t_view)
let f_font = field t_typ "font" (ptr Font_description.t_typ)
let f_font_scale = field t_typ "font_scale" (double)
let f_left_margin = field t_typ "left_margin" (int32_t)
let f_right_margin = field t_typ "right_margin" (int32_t)
let f_indent = field t_typ "indent" (int32_t)
let f_pixels_above_lines = field t_typ "pixels_above_lines" (int32_t)
let f_pixels_below_lines = field t_typ "pixels_below_lines" (int32_t)
let f_pixels_inside_wrap = field t_typ "pixels_inside_wrap" (int32_t)
let f_tabs = field t_typ "tabs" (ptr Tab_array.t_typ)
let f_wrap_mode = field t_typ "wrap_mode" (Wrap_mode.t_view)
let f_language = field t_typ "language" (ptr Language.t_typ)
let f_pg_bg_color = field t_typ "pg_bg_color" (ptr Color.t_typ)
let f_invisible = field t_typ "invisible" (uint32_t)
let f_bg_full_height = field t_typ "bg_full_height" (uint32_t)
let f_editable = field t_typ "editable" (uint32_t)
let f_no_fallback = field t_typ "no_fallback" (uint32_t)
let f_pg_bg_rgba = field t_typ "pg_bg_rgba" (ptr RGBA.t_typ)
let f_letter_spacing = field t_typ "letter_spacing" (int32_t)
let _ = seal t_typ

let create =
  foreign "gtk_text_attributes_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_text_attributes_copy" (t_typ @-> returning (ptr t_typ))
let copy_values =
  foreign "gtk_text_attributes_copy_values" (t_typ @-> ptr t_typ @-> returning (void))
let incr_ref =
  foreign "gtk_text_attributes_ref" (t_typ @-> returning (ptr t_typ))
let unref =
  foreign "gtk_text_attributes_unref" (t_typ @-> returning (void))
