open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Regex"

let create pattern compile_options match_options =
  let create_raw =
    foreign "g_regex_new" (string @-> Regex_compile_flags.t_list_view @-> Regex_match_flags.t_list_view@-> ptr_opt (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = create_raw pattern compile_options match_options (Some err_ptr_ptr) in
  match (!@ err_ptr_ptr) with
   | None -> Ok value
   | Some _ -> let err_ptr = !@ err_ptr_ptr in
     let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
     Error (err_ptr)
let get_capture_count =
  foreign "g_regex_get_capture_count" (ptr t_typ @-> returning (int32_t))
let get_compile_flags =
  foreign "g_regex_get_compile_flags" (ptr t_typ @-> returning (Regex_compile_flags.t_list_view))
let get_has_cr_or_lf =
  foreign "g_regex_get_has_cr_or_lf" (ptr t_typ @-> returning (bool))
let get_match_flags =
  foreign "g_regex_get_match_flags" (ptr t_typ @-> returning (Regex_match_flags.t_list_view))
let get_max_backref =
  foreign "g_regex_get_max_backref" (ptr t_typ @-> returning (int32_t))
let get_max_lookbehind =
  foreign "g_regex_get_max_lookbehind" (ptr t_typ @-> returning (int32_t))
let get_pattern =
  foreign "g_regex_get_pattern" (ptr t_typ @-> returning (string))
let get_string_number =
  foreign "g_regex_get_string_number" (ptr t_typ @-> string @-> returning (int32_t))
(* Not implemented g_regex_match - out argument not handled

(* t structure ptr -> string -> Regex_match_flags.t_list -> (bool, Match_info.t structure ptr)*)
let _match self _string match_options =
  let match_info_ptr = allocate (ptr_opt Match_info.t_typ) None in
  let _match_raw g_regex_match =
    foreign (ptr t_typ @-> string @-> Regex_match_flags.t_list_view @ -> ptr Match_info.t_typ @-> returning bool)
  in
  let ret = _match_raw self _string match_options match_info_ptr in
  let match_info = match match_info_ptr with | None -> None | Some ptr -> @!ptr in
  (ret, match_info)
*)
(* Not implemented g_regex_match_all - out argument not handled

(* t structure ptr -> string -> Regex_match_flags.t_list -> (bool, Match_info.t structure ptr)*)
let match_all self _string match_options =
  let match_info_ptr = allocate (ptr_opt Match_info.t_typ) None in
  let match_all_raw g_regex_match_all =
    foreign (ptr t_typ @-> string @-> Regex_match_flags.t_list_view @ -> ptr Match_info.t_typ @-> returning bool)
  in
  let ret = match_all_raw self _string match_options match_info_ptr in
  let match_info = match match_info_ptr with | None -> None | Some ptr -> @!ptr in
  (ret, match_info)
*)
(*Not implemented g_regex_match_all_full type C Array type for Types.Array tag not implemented*)
(*Not implemented g_regex_match_full type C Array type for Types.Array tag not implemented*)
let ref =
  foreign "g_regex_ref" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented g_regex_replace type C Array type for Types.Array tag not implemented*)
(*Not implemented g_regex_replace_literal type C Array type for Types.Array tag not implemented*)
(*Not implemented g_regex_split return type C Array type for Types.Array tag not handled*)
(*Not implemented g_regex_split_full type C Array type for Types.Array tag not implemented*)
let unref =
  foreign "g_regex_unref" (ptr t_typ @-> returning (void))
(* Not implemented g_regex_check_replacement - out argument not handled

(* string -> (bool, bool)*)
let check_replacement replacement =
  let has_references_ptr = allocate bool false in
  let check_replacement_raw g_regex_check_replacement =
    foreign (string @ -> bool @-> returning bool)
  in
  let ret = check_replacement_raw replacement has_references_ptr in
  let has_references = @!has_references_ptr in
  (ret, has_references)
*)
let error_quark =
  foreign "g_regex_error_quark" (void @-> returning (uint32_t))
let escape_nul =
  foreign "g_regex_escape_nul" (string @-> int32_t @-> returning (string))
(*Not implemented g_regex_escape_string type C Array type for Types.Array tag not implemented*)
let match_simple =
  foreign "g_regex_match_simple" (string @-> string @-> Regex_compile_flags.t_list_view @-> Regex_match_flags.t_list_view @-> returning (bool))
(*Not implemented g_regex_split_simple return type C Array type for Types.Array tag not handled*)
