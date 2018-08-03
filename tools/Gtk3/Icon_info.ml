open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_for_pixbuf =
  foreign "gtk_icon_info_new_for_pixbuf" (ptr Icon_theme.t_typ @-> ptr Pixbuf.t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_icon_info_get_attach_points type C Array type for Types.Array tag not implemented*)
let get_base_scale =
  foreign "gtk_icon_info_get_base_scale" (t_typ @-> returning (int32_t))
let get_base_size =
  foreign "gtk_icon_info_get_base_size" (t_typ @-> returning (int32_t))
let get_builtin_pixbuf =
  foreign "gtk_icon_info_get_builtin_pixbuf" (t_typ @-> returning (ptr_opt Pixbuf.t_typ))
let get_display_name =
  foreign "gtk_icon_info_get_display_name" (t_typ @-> returning (string_opt))
let get_embedded_rect self =
  let get_embedded_rect_raw =
    foreign "gtk_icon_info_get_embedded_rect" (t_typ @-> ptr (Rectangle.t_typ) @-> returning (bool))
  in
  let rectangle_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_embedded_rect_raw self rectangle_ptr in
  let rectangle = !@ rectangle_ptr in
  (ret, rectangle)
let get_filename =
  foreign "gtk_icon_info_get_filename" (t_typ @-> returning (string_opt))
let is_symbolic =
  foreign "gtk_icon_info_is_symbolic" (t_typ @-> returning (bool))
let load_icon self =
  let load_icon_raw =
    foreign "gtk_icon_info_load_icon" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_icon_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented gtk_icon_info_load_icon_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_icon_finish type interface not implemented*)
let load_surface self for_window =
  let load_surface_raw =
    foreign "gtk_icon_info_load_surface" (t_typ @-> ptr_opt Window.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Surface.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_surface_raw self for_window err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_symbolic self fg success_color warning_color error_color =
  let load_symbolic_raw =
    foreign "gtk_icon_info_load_symbolic" (t_typ @-> ptr RGBA.t_typ @-> ptr_opt RGBA.t_typ @-> ptr_opt RGBA.t_typ @-> ptr_opt RGBA.t_typ @-> ptr (bool) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let was_symbolic_ptr = allocate bool false in
  let ret = load_symbolic_raw self fg success_color warning_color error_color was_symbolic_ptr err_ptr_ptr in
  let get_ret_value () =
    let was_symbolic = !@ was_symbolic_ptr in
    (ret, was_symbolic)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented gtk_icon_info_load_symbolic_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_finish type interface not implemented*)
let load_symbolic_for_context self context =
  let load_symbolic_for_context_raw =
    foreign "gtk_icon_info_load_symbolic_for_context" (t_typ @-> ptr Style_context.t_typ @-> ptr (bool) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let was_symbolic_ptr = allocate bool false in
  let ret = load_symbolic_for_context_raw self context was_symbolic_ptr err_ptr_ptr in
  let get_ret_value () =
    let was_symbolic = !@ was_symbolic_ptr in
    (ret, was_symbolic)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented gtk_icon_info_load_symbolic_for_context_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_context_finish type interface not implemented*)
let load_symbolic_for_style self style state =
  let load_symbolic_for_style_raw =
    foreign "gtk_icon_info_load_symbolic_for_style" (t_typ @-> ptr Style.t_typ @-> State_type.t_view @-> ptr (bool) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let was_symbolic_ptr = allocate bool false in
  let ret = load_symbolic_for_style_raw self style state was_symbolic_ptr err_ptr_ptr in
  let get_ret_value () =
    let was_symbolic = !@ was_symbolic_ptr in
    (ret, was_symbolic)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let set_raw_coordinates =
  foreign "gtk_icon_info_set_raw_coordinates" (t_typ @-> bool @-> returning (void))
