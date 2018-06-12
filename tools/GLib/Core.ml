open Ctypes
open Foreign

let c_ANALYZER_ANALYZING = 1l
let c_ASCII_DTOSTR_BUF_SIZE = 39l
let c_BIG_ENDIAN = 4321l
let c_CSET_A_2_Z = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let c_CSET_DIGITS = "0123456789"
let c_CSET_a_2_z = "abcdefghijklmnopqrstuvwxyz"
let c_DATALIST_FLAGS_MASK = 3l
let c_DATE_BAD_DAY = 0l
let c_DATE_BAD_JULIAN = 0l
let c_DATE_BAD_YEAR = 0l
let c_DIR_SEPARATOR = 47l
let c_DIR_SEPARATOR_S = "/"
let c_E = 2.718282
let c_GINT16_FORMAT = "hi"
let c_GINT16_MODIFIER = "h"
let c_GINT32_FORMAT = "i"
let c_GINT32_MODIFIER = ""
let c_GINT64_FORMAT = "li"
let c_GINT64_MODIFIER = "l"
let c_GINTPTR_FORMAT = "li"
let c_GINTPTR_MODIFIER = "l"
(*DEPRECATED : GNUC_FUNCTION*)
(*DEPRECATED : GNUC_PRETTY_FUNCTION*)
let c_GSIZE_FORMAT = "lu"
let c_GSIZE_MODIFIER = "l"
let c_GSSIZE_FORMAT = "li"
let c_GSSIZE_MODIFIER = "l"
let c_GUINT16_FORMAT = "hu"
let c_GUINT32_FORMAT = "u"
let c_GUINT64_FORMAT = "lu"
let c_GUINTPTR_FORMAT = "lu"
let c_HAVE_GINT64 = 1l
let c_HAVE_GNUC_VARARGS = 1l
let c_HAVE_GNUC_VISIBILITY = 1l
let c_HAVE_GROWING_STACK = 0l
let c_HAVE_ISO_VARARGS = 1l
let c_HOOK_FLAG_USER_SHIFT = 4l
let c_IEEE754_DOUBLE_BIAS = 1023l
let c_IEEE754_FLOAT_BIAS = 127l
let c_KEY_FILE_DESKTOP_GROUP = "Desktop Entry"
let c_KEY_FILE_DESKTOP_KEY_ACTIONS = "Actions"
let c_KEY_FILE_DESKTOP_KEY_CATEGORIES = "Categories"
let c_KEY_FILE_DESKTOP_KEY_COMMENT = "Comment"
let c_KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE = "DBusActivatable"
let c_KEY_FILE_DESKTOP_KEY_EXEC = "Exec"
let c_KEY_FILE_DESKTOP_KEY_GENERIC_NAME = "GenericName"
let c_KEY_FILE_DESKTOP_KEY_HIDDEN = "Hidden"
let c_KEY_FILE_DESKTOP_KEY_ICON = "Icon"
let c_KEY_FILE_DESKTOP_KEY_MIME_TYPE = "MimeType"
let c_KEY_FILE_DESKTOP_KEY_NAME = "Name"
let c_KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN = "NotShowIn"
let c_KEY_FILE_DESKTOP_KEY_NO_DISPLAY = "NoDisplay"
let c_KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN = "OnlyShowIn"
let c_KEY_FILE_DESKTOP_KEY_PATH = "Path"
let c_KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY = "StartupNotify"
let c_KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS = "StartupWMClass"
let c_KEY_FILE_DESKTOP_KEY_TERMINAL = "Terminal"
let c_KEY_FILE_DESKTOP_KEY_TRY_EXEC = "TryExec"
let c_KEY_FILE_DESKTOP_KEY_TYPE = "Type"
let c_KEY_FILE_DESKTOP_KEY_URL = "URL"
let c_KEY_FILE_DESKTOP_KEY_VERSION = "Version"
let c_KEY_FILE_DESKTOP_TYPE_APPLICATION = "Application"
let c_KEY_FILE_DESKTOP_TYPE_DIRECTORY = "Directory"
let c_KEY_FILE_DESKTOP_TYPE_LINK = "Link"
let c_LITTLE_ENDIAN = 1234l
let c_LN10 = 2.302585
let c_LN2 = 0.693147
let c_LOG_2_BASE_10 = 0.30103
let c_LOG_DOMAIN = 0
let c_LOG_FATAL_MASK = 5l
let c_LOG_LEVEL_USER_SHIFT = 8l
let c_MAJOR_VERSION = 2l
let c_MAXINT16 = 32767
let c_MAXINT32 = 2147483647l
let c_MAXINT64 = 9223372036854775807L
let c_MAXINT8 = 127
let c_MAXUINT16 = Unsigned.UInt16.of_int 65535
let c_MAXUINT32 = Unsigned.UInt32.of_string "4294967295"
let c_MAXUINT64 = Unsigned.UInt64.of_string "18446744073709551615"
let c_MAXUINT8 = Unsigned.UInt8.of_int 255
let c_MICRO_VERSION = 1l
let c_MININT16 = -32768
let c_MININT32 = -2147483648l
let c_MININT64 = -9223372036854775808L
let c_MININT8 = -128
let c_MINOR_VERSION = 56l
let c_MODULE_SUFFIX = "so"
let c_OPTION_REMAINING = ""
let c_PDP_ENDIAN = 3412l
let c_PI = 3.141593
let c_PID_FORMAT = "i"
let c_PI_2 = 1.570796
let c_PI_4 = 0.785398
let c_POLLFD_FORMAT = "%d"
let c_PRIORITY_DEFAULT = 0l
let c_PRIORITY_DEFAULT_IDLE = 200l
let c_PRIORITY_HIGH = -100l
let c_PRIORITY_HIGH_IDLE = 100l
let c_PRIORITY_LOW = 300l
let c_SEARCHPATH_SEPARATOR = 58l
let c_SEARCHPATH_SEPARATOR_S = ":"
let c_SIZEOF_LONG = 8l
let c_SIZEOF_SIZE_T = 8l
let c_SIZEOF_SSIZE_T = 8l
let c_SIZEOF_VOID_P = 8l
let c_SOURCE_CONTINUE = true
let c_SOURCE_REMOVE = false
let c_SQRT2 = 1.414214
let c_STR_DELIMITERS = "_-|> <."
let c_SYSDEF_AF_INET = 2l
let c_SYSDEF_AF_INET6 = 10l
let c_SYSDEF_AF_UNIX = 1l
let c_SYSDEF_MSG_DONTROUTE = 4l
let c_SYSDEF_MSG_OOB = 1l
let c_SYSDEF_MSG_PEEK = 2l
let c_TIME_SPAN_DAY = 86400000000L
let c_TIME_SPAN_HOUR = 3600000000L
let c_TIME_SPAN_MILLISECOND = 1000L
let c_TIME_SPAN_MINUTE = 60000000L
let c_TIME_SPAN_SECOND = 1000000L
(*DEPRECATED : TestTrapFlags*)
(*DEPRECATED : TrashStack*)
let c_UNICHAR_MAX_DECOMPOSITION_LENGTH = 18l
let c_URI_RESERVED_CHARS_GENERIC_DELIMITERS = ":/?#[]@"
let c_URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS = "!$&'()*+,;="
let c_USEC_PER_SEC = 1000000l
let c_VA_COPY_AS_ARRAY = 1l
let c_VERSION_MIN_REQUIRED = 2l
let c_WIN32_MSG_HANDLE = 19981206l
(*DEPRECATED : atexit*)
(*DEPRECATED : atomic_int_exchange_and_add*)
(*DEPRECATED : basename*)
(*DEPRECATED : format_size_for_display*)
(*DEPRECATED : mem_is_system_malloc*)
(*DEPRECATED : mem_profile*)
(*DEPRECATED : mem_set_vtable*)
(*DEPRECATED : strcasecmp*)
(*DEPRECATED : strdown*)
(*DEPRECATED : strncasecmp*)
(*DEPRECATED : strup*)
(*DEPRECATED : test_trap_fork*)
(*DEPRECATED : trash_stack_height*)
(*DEPRECATED : trash_stack_peek*)
(*DEPRECATED : trash_stack_pop*)
(*DEPRECATED : trash_stack_push*)
(*DEPRECATED : unicode_canonical_decomposition*)
(*DEPRECATED : variant_parser_get_error_quark*)
let variant_type_string_scan _string limit =
  let variant_type_string_scan_raw =
    foreign "g_variant_type_string_scan" (string @-> string_opt @-> ptr (string) @-> returning (bool))
  in
  let endptr_ptr = allocate string " " in
  let ret = variant_type_string_scan_raw _string limit endptr_ptr in
  let endptr = !@ endptr_ptr in
  (ret, endptr)

let variant_type_string_is_valid =
  foreign "g_variant_type_string_is_valid" (string @-> returning (bool))

let variant_type_checked_ =
  foreign "g_variant_type_checked_" (string @-> returning (ptr Variant_type.t_typ))

let variant_parse_error_quark =
  foreign "g_variant_parse_error_quark" (void @-> returning (uint32_t))

let variant_parse_error_print_context =
  foreign "g_variant_parse_error_print_context" (ptr Error.t_typ @-> string @-> returning (string_opt))

let variant_parse _type text limit endptr =
  let variant_parse_raw =
    foreign "g_variant_parse" (ptr_opt Variant_type.t_typ @-> string @-> string_opt @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Variant.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = variant_parse_raw _type text limit endptr err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let variant_is_signature =
  foreign "g_variant_is_signature" (string @-> returning (bool))

let variant_is_object_path =
  foreign "g_variant_is_object_path" (string @-> returning (bool))

(*Not implemented g_variant_get_gtype return type gType not handled*)

let uuid_string_random =
  foreign "g_uuid_string_random" (void @-> returning (string_opt))

let uuid_string_is_valid =
  foreign "g_uuid_string_is_valid" (string @-> returning (bool))

(*Not implemented g_utf8_validate type C Array type for Types.Array tag not implemented*)

let utf8_to_utf16 str len =
  let utf8_to_utf16_raw =
    foreign "g_utf8_to_utf16" (string @-> int64_t @-> ptr (int64_t) @-> ptr (int64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt uint16_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let items_read_ptr = allocate int64_t Int64.zero in
  let items_written_ptr = allocate int64_t Int64.zero in
  let ret = utf8_to_utf16_raw str len items_read_ptr items_written_ptr err_ptr_ptr in
  let get_ret_value () =
    let items_read = !@ items_read_ptr in
   let items_written = !@ items_written_ptr in
    (ret, items_read, items_written)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_utf8_to_ucs4_fast return type unichar not handled*)

(*Not implemented g_utf8_to_ucs4 return type unichar not handled*)

let utf8_substring =
  foreign "g_utf8_substring" (string @-> int64_t @-> int64_t @-> returning (string_opt))

let utf8_strup =
  foreign "g_utf8_strup" (string @-> int64_t @-> returning (string_opt))

let utf8_strreverse =
  foreign "g_utf8_strreverse" (string @-> int64_t @-> returning (string_opt))

(*Not implemented g_utf8_strrchr type unichar not implemented*)

let utf8_strncpy =
  foreign "g_utf8_strncpy" (string @-> string @-> uint64_t @-> returning (string_opt))

let utf8_strlen =
  foreign "g_utf8_strlen" (string @-> int64_t @-> returning (int64_t))

let utf8_strdown =
  foreign "g_utf8_strdown" (string @-> int64_t @-> returning (string_opt))

(*Not implemented g_utf8_strchr type unichar not implemented*)

let utf8_prev_char =
  foreign "g_utf8_prev_char" (string @-> returning (string_opt))

let utf8_pointer_to_offset =
  foreign "g_utf8_pointer_to_offset" (string @-> string @-> returning (int64_t))

let utf8_offset_to_pointer =
  foreign "g_utf8_offset_to_pointer" (string @-> int64_t @-> returning (string_opt))

let utf8_normalize =
  foreign "g_utf8_normalize" (string @-> int64_t @-> Normalize_mode.t_view @-> returning (string_opt))

let utf8_make_valid =
  foreign "g_utf8_make_valid" (string @-> int64_t @-> returning (string_opt))

(*Not implemented g_utf8_get_char_validated return type unichar not handled*)

(*Not implemented g_utf8_get_char return type unichar not handled*)

let utf8_find_prev_char =
  foreign "g_utf8_find_prev_char" (string @-> string @-> returning (string_opt))

let utf8_find_next_char =
  foreign "g_utf8_find_next_char" (string @-> string_opt @-> returning (string_opt))

let utf8_collate_key_for_filename =
  foreign "g_utf8_collate_key_for_filename" (string @-> int64_t @-> returning (string_opt))

let utf8_collate_key =
  foreign "g_utf8_collate_key" (string @-> int64_t @-> returning (string_opt))

let utf8_collate =
  foreign "g_utf8_collate" (string @-> string @-> returning (int32_t))

let utf8_casefold =
  foreign "g_utf8_casefold" (string @-> int64_t @-> returning (string_opt))

let utf16_to_utf8 str len =
  let utf16_to_utf8_raw =
    foreign "g_utf16_to_utf8" (ptr uint16_t @-> int64_t @-> ptr (int64_t) @-> ptr (int64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let items_read_ptr = allocate int64_t Int64.zero in
  let items_written_ptr = allocate int64_t Int64.zero in
  let ret = utf16_to_utf8_raw str len items_read_ptr items_written_ptr err_ptr_ptr in
  let get_ret_value () =
    let items_read = !@ items_read_ptr in
   let items_written = !@ items_written_ptr in
    (ret, items_read, items_written)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_utf16_to_ucs4 return type unichar not handled*)

let usleep =
  foreign "g_usleep" (uint64_t @-> returning (void))

let uri_unescape_string =
  foreign "g_uri_unescape_string" (string @-> string_opt @-> returning (string_opt))

let uri_unescape_segment =
  foreign "g_uri_unescape_segment" (string_opt @-> string_opt @-> string_opt @-> returning (string_opt))

let uri_parse_scheme =
  foreign "g_uri_parse_scheme" (string @-> returning (string_opt))

(*Not implemented g_uri_list_extract_uris return type C Array type for Types.Array tag not handled*)

let uri_escape_string =
  foreign "g_uri_escape_string" (string @-> string_opt @-> bool @-> returning (string_opt))

let unsetenv =
  foreign "g_unsetenv" (string @-> returning (void))

let unlink =
  foreign "g_unlink" (string @-> returning (int32_t))

let unix_signal_source_create =
  foreign "g_unix_signal_source_new" (int32_t @-> returning (ptr Source.t_typ))

(*Not implemented g_unix_signal_add_full type callback not implemented*)

let unix_set_fd_nonblocking fd nonblock =
  let unix_set_fd_nonblocking_raw =
    foreign "g_unix_set_fd_nonblocking" (int32_t @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = unix_set_fd_nonblocking_raw fd nonblock err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let unix_open_pipe fds flags =
  let unix_open_pipe_raw =
    foreign "g_unix_open_pipe" (ptr int32_t @-> int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = unix_open_pipe_raw fds flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let unix_fd_source_create =
  foreign "g_unix_fd_source_new" (int32_t @-> IOCondition.t_list_view @-> returning (ptr Source.t_typ))

(*Not implemented g_unix_fd_add_full type callback not implemented*)

let unix_error_quark =
  foreign "g_unix_error_quark" (void @-> returning (uint32_t))

let unicode_script_to_iso15924 =
  foreign "g_unicode_script_to_iso15924" (Unicode_script.t_view @-> returning (uint32_t))

let unicode_script_from_iso15924 =
  foreign "g_unicode_script_from_iso15924" (uint32_t @-> returning (Unicode_script.t_view))

(*Not implemented g_unicode_canonical_ordering type unichar not implemented*)

(*Not implemented g_unichar_xdigit_value type unichar not implemented*)

(*Not implemented g_unichar_validate type unichar not implemented*)

(*Not implemented g_unichar_type type unichar not implemented*)

(*Not implemented g_unichar_toupper type unichar not implemented*)

(*Not implemented g_unichar_totitle type unichar not implemented*)

(*Not implemented g_unichar_tolower type unichar not implemented*)

(*Not implemented g_unichar_to_utf8 type unichar not implemented*)

(*Not implemented g_unichar_iszerowidth type unichar not implemented*)

(*Not implemented g_unichar_isxdigit type unichar not implemented*)

(*Not implemented g_unichar_iswide_cjk type unichar not implemented*)

(*Not implemented g_unichar_iswide type unichar not implemented*)

(*Not implemented g_unichar_isupper type unichar not implemented*)

(*Not implemented g_unichar_istitle type unichar not implemented*)

(*Not implemented g_unichar_isspace type unichar not implemented*)

(*Not implemented g_unichar_ispunct type unichar not implemented*)

(*Not implemented g_unichar_isprint type unichar not implemented*)

(*Not implemented g_unichar_ismark type unichar not implemented*)

(*Not implemented g_unichar_islower type unichar not implemented*)

(*Not implemented g_unichar_isgraph type unichar not implemented*)

(*Not implemented g_unichar_isdigit type unichar not implemented*)

(*Not implemented g_unichar_isdefined type unichar not implemented*)

(*Not implemented g_unichar_iscntrl type unichar not implemented*)

(*Not implemented g_unichar_isalpha type unichar not implemented*)

(*Not implemented g_unichar_isalnum type unichar not implemented*)

(*Not implemented g_unichar_get_script type unichar not implemented*)

(*Not implemented g_unichar_get_mirror_char type unichar not implemented*)

(*Not implemented g_unichar_fully_decompose type unichar not implemented*)

(*Not implemented g_unichar_digit_value type unichar not implemented*)

(*Not implemented g_unichar_decompose type unichar not implemented*)

(*Not implemented g_unichar_compose type unichar not implemented*)

(*Not implemented g_unichar_combining_class type unichar not implemented*)

(*Not implemented g_unichar_break_type type unichar not implemented*)

(*Not implemented g_ucs4_to_utf8 type unichar not implemented*)

(*Not implemented g_ucs4_to_utf16 type unichar not implemented*)

let try_realloc_n =
  foreign "g_try_realloc_n" (ptr_opt void @-> uint64_t @-> uint64_t @-> returning (ptr_opt void))

let try_realloc =
  foreign "g_try_realloc" (ptr_opt void @-> uint64_t @-> returning (ptr_opt void))

let try_malloc_n =
  foreign "g_try_malloc_n" (uint64_t @-> uint64_t @-> returning (ptr_opt void))

let try_malloc0_n =
  foreign "g_try_malloc0_n" (uint64_t @-> uint64_t @-> returning (ptr_opt void))

let try_malloc0 =
  foreign "g_try_malloc0" (uint64_t @-> returning (ptr_opt void))

let try_malloc =
  foreign "g_try_malloc" (uint64_t @-> returning (ptr_opt void))

let timeout_source_create_seconds =
  foreign "g_timeout_source_new_seconds" (uint32_t @-> returning (ptr Source.t_typ))

let timeout_source_create =
  foreign "g_timeout_source_new" (uint32_t @-> returning (ptr Source.t_typ))

(*Not implemented g_timeout_add_seconds_full type callback not implemented*)

(*Not implemented g_timeout_add_full type callback not implemented*)

let time_val_from_iso8601 iso_date =
  let time_val_from_iso8601_raw =
    foreign "g_time_val_from_iso8601" (string @-> ptr (Time_val.t_typ) @-> returning (bool))
  in
  let time__ptr = allocate Time_val.t_typ (make Time_val.t_typ) in
  let ret = time_val_from_iso8601_raw iso_date time__ptr in
  let time_ = !@ time__ptr in
  (ret, time_)

let thread_yield =
  foreign "g_thread_yield" (void @-> returning (void))

let thread_self =
  foreign "g_thread_self" (void @-> returning (ptr Thread.t_typ))

let thread_pool_stop_unused_threads =
  foreign "g_thread_pool_stop_unused_threads" (void @-> returning (void))

let thread_pool_set_max_unused_threads =
  foreign "g_thread_pool_set_max_unused_threads" (int32_t @-> returning (void))

let thread_pool_set_max_idle_time =
  foreign "g_thread_pool_set_max_idle_time" (uint32_t @-> returning (void))

let thread_pool_get_num_unused_threads =
  foreign "g_thread_pool_get_num_unused_threads" (void @-> returning (uint32_t))

let thread_pool_get_max_unused_threads =
  foreign "g_thread_pool_get_max_unused_threads" (void @-> returning (int32_t))

let thread_pool_get_max_idle_time =
  foreign "g_thread_pool_get_max_idle_time" (void @-> returning (uint32_t))

let thread_exit =
  foreign "g_thread_exit" (ptr_opt void @-> returning (void))

let thread_error_quark =
  foreign "g_thread_error_quark" (void @-> returning (uint32_t))

let test_trap_subprocess =
  foreign "g_test_trap_subprocess" (string_opt @-> uint64_t @-> Test_subprocess_flags.t_list_view @-> returning (void))

let test_trap_reached_timeout =
  foreign "g_test_trap_reached_timeout" (void @-> returning (bool))

let test_trap_has_passed =
  foreign "g_test_trap_has_passed" (void @-> returning (bool))

let test_trap_assertions =
  foreign "g_test_trap_assertions" (string @-> string @-> int32_t @-> string @-> uint64_t @-> string @-> returning (void))

let test_timer_start =
  foreign "g_test_timer_start" (void @-> returning (void))

let test_timer_last =
  foreign "g_test_timer_last" (void @-> returning (double))

let test_timer_elapsed =
  foreign "g_test_timer_elapsed" (void @-> returning (double))

let test_subprocess =
  foreign "g_test_subprocess" (void @-> returning (bool))

let test_skip =
  foreign "g_test_skip" (string_opt @-> returning (void))

let test_set_nonfatal_assertions =
  foreign "g_test_set_nonfatal_assertions" (void @-> returning (void))

let test_run_suite =
  foreign "g_test_run_suite" (ptr Test_suite.t_typ @-> returning (int32_t))

let test_run =
  foreign "g_test_run" (void @-> returning (int32_t))

let test_rand_int_range =
  foreign "g_test_rand_int_range" (int32_t @-> int32_t @-> returning (int32_t))

let test_rand_int =
  foreign "g_test_rand_int" (void @-> returning (int32_t))

let test_rand_double_range =
  foreign "g_test_rand_double_range" (double @-> double @-> returning (double))

let test_rand_double =
  foreign "g_test_rand_double" (void @-> returning (double))

let test_queue_free =
  foreign "g_test_queue_free" (ptr_opt void @-> returning (void))

(*Not implemented g_test_queue_destroy type callback not implemented*)

let test_log_type_name =
  foreign "g_test_log_type_name" (Test_log_type.t_view @-> returning (string_opt))

let test_incomplete =
  foreign "g_test_incomplete" (string_opt @-> returning (void))

let test_get_dir =
  foreign "g_test_get_dir" (Test_file_type.t_view @-> returning (string_opt))

let test_failed =
  foreign "g_test_failed" (void @-> returning (bool))

let test_fail =
  foreign "g_test_fail" (void @-> returning (void))

let test_expect_message =
  foreign "g_test_expect_message" (string_opt @-> Log_level_flags.t_list_view @-> string @-> returning (void))

let test_bug_base =
  foreign "g_test_bug_base" (string @-> returning (void))

let test_bug =
  foreign "g_test_bug" (string @-> returning (void))

let test_assert_expected_messages_internal =
  foreign "g_test_assert_expected_messages_internal" (string @-> string @-> int32_t @-> string @-> returning (void))

(*Not implemented g_test_add_func type callback not implemented*)

(*Not implemented g_test_add_data_func_full type callback not implemented*)

(*Not implemented g_test_add_data_func type callback not implemented*)

let strv_length =
  foreign "g_strv_length" (string @-> returning (uint32_t))

(*Not implemented g_strv_get_type return type gType not handled*)

let strv_contains =
  foreign "g_strv_contains" (string @-> string @-> returning (bool))

let strtod nptr =
  let strtod_raw =
    foreign "g_strtod" (string @-> ptr (string) @-> returning (double))
  in
  let endptr_ptr = allocate string " " in
  let ret = strtod_raw nptr endptr_ptr in
  let endptr = !@ endptr_ptr in
  (ret, endptr)

let strstr_len =
  foreign "g_strstr_len" (string @-> int64_t @-> string @-> returning (string_opt))

let strsignal =
  foreign "g_strsignal" (int32_t @-> returning (string_opt))

let strrstr_len =
  foreign "g_strrstr_len" (string @-> int64_t @-> string @-> returning (string_opt))

let strrstr =
  foreign "g_strrstr" (string @-> string @-> returning (string_opt))

let strreverse =
  foreign "g_strreverse" (string @-> returning (string_opt))

let strnfill =
  foreign "g_strnfill" (uint64_t @-> int8_t @-> returning (string_opt))

let strndup =
  foreign "g_strndup" (string @-> uint64_t @-> returning (string_opt))

let strlcpy =
  foreign "g_strlcpy" (string @-> string @-> uint64_t @-> returning (uint64_t))

let strlcat =
  foreign "g_strlcat" (string @-> string @-> uint64_t @-> returning (uint64_t))

let strjoinv =
  foreign "g_strjoinv" (string_opt @-> string @-> returning (string_opt))

let strip_context =
  foreign "g_strip_context" (string @-> string @-> returning (string_opt))

let string_sized_create =
  foreign "g_string_sized_new" (uint64_t @-> returning (ptr String.t_typ))

let string_create_len =
  foreign "g_string_new_len" (string @-> int64_t @-> returning (ptr String.t_typ))

let string_create =
  foreign "g_string_new" (string_opt @-> returning (ptr String.t_typ))

let strfreev =
  foreign "g_strfreev" (string_opt @-> returning (void))

let strescape =
  foreign "g_strescape" (string @-> string_opt @-> returning (string_opt))

let strerror =
  foreign "g_strerror" (int32_t @-> returning (string_opt))

let strdup =
  foreign "g_strdup" (string_opt @-> returning (string_opt))

let strdelimit =
  foreign "g_strdelimit" (string @-> string_opt @-> int8_t @-> returning (string_opt))

let strcompress =
  foreign "g_strcompress" (string @-> returning (string_opt))

let strcmp0 =
  foreign "g_strcmp0" (string_opt @-> string_opt @-> returning (int32_t))

let strchug =
  foreign "g_strchug" (string @-> returning (string_opt))

let strchomp =
  foreign "g_strchomp" (string @-> returning (string_opt))

let strcanon =
  foreign "g_strcanon" (string @-> string @-> int8_t @-> returning (string_opt))

(*Not implemented g_str_tokenize_and_fold type C Array type for Types.Array tag not implemented*)

let str_to_ascii =
  foreign "g_str_to_ascii" (string @-> string_opt @-> returning (string_opt))

let str_match_string =
  foreign "g_str_match_string" (string @-> string @-> bool @-> returning (bool))

let str_is_ascii =
  foreign "g_str_is_ascii" (string @-> returning (bool))

let str_hash =
  foreign "g_str_hash" (ptr void @-> returning (uint32_t))

let str_has_suffix =
  foreign "g_str_has_suffix" (string @-> string @-> returning (bool))

let str_has_prefix =
  foreign "g_str_has_prefix" (string @-> string @-> returning (bool))

let str_equal =
  foreign "g_str_equal" (ptr void @-> ptr void @-> returning (bool))

let stpcpy =
  foreign "g_stpcpy" (string @-> string @-> returning (string_opt))

(*Not implemented g_spawn_sync type C Array type for Types.Array tag not implemented*)

let spawn_exit_error_quark =
  foreign "g_spawn_exit_error_quark" (void @-> returning (uint32_t))

let spawn_error_quark =
  foreign "g_spawn_error_quark" (void @-> returning (uint32_t))

(*Not implemented g_spawn_command_line_sync type C Array type for Types.Array tag not implemented*)

let spawn_command_line_async command_line =
  let spawn_command_line_async_raw =
    foreign "g_spawn_command_line_async" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = spawn_command_line_async_raw command_line err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let spawn_close_pid =
  foreign "g_spawn_close_pid" (int32_t @-> returning (void))

let spawn_check_exit_status exit_status =
  let spawn_check_exit_status_raw =
    foreign "g_spawn_check_exit_status" (int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = spawn_check_exit_status_raw exit_status err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

(*Not implemented g_spawn_async_with_pipes type C Array type for Types.Array tag not implemented*)

(*Not implemented g_spawn_async type C Array type for Types.Array tag not implemented*)

let spaced_primes_closest =
  foreign "g_spaced_primes_closest" (uint32_t @-> returning (uint32_t))

let source_set_name_by_id =
  foreign "g_source_set_name_by_id" (uint32_t @-> string @-> returning (void))

let source_remove_by_user_data =
  foreign "g_source_remove_by_user_data" (ptr_opt void @-> returning (bool))

let source_remove_by_funcs_user_data =
  foreign "g_source_remove_by_funcs_user_data" (ptr Source_funcs.t_typ @-> ptr_opt void @-> returning (bool))

let source_remove =
  foreign "g_source_remove" (uint32_t @-> returning (bool))

let slice_set_config =
  foreign "g_slice_set_config" (Slice_config.t_view @-> int64_t @-> returning (void))

let slice_get_config_state =
  foreign "g_slice_get_config_state" (Slice_config.t_view @-> int64_t @-> ptr uint32_t @-> returning (ptr int64_t))

let slice_get_config =
  foreign "g_slice_get_config" (Slice_config.t_view @-> returning (int64_t))

let slice_free_chain_with_offset =
  foreign "g_slice_free_chain_with_offset" (uint64_t @-> ptr_opt void @-> uint64_t @-> returning (void))

let slice_free1 =
  foreign "g_slice_free1" (uint64_t @-> ptr_opt void @-> returning (void))

let slice_copy =
  foreign "g_slice_copy" (uint64_t @-> ptr_opt void @-> returning (ptr_opt void))

let slice_alloc0 =
  foreign "g_slice_alloc0" (uint64_t @-> returning (ptr_opt void))

let slice_alloc =
  foreign "g_slice_alloc" (uint64_t @-> returning (ptr_opt void))

let shell_unquote quoted_string =
  let shell_unquote_raw =
    foreign "g_shell_unquote" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = shell_unquote_raw quoted_string err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let shell_quote =
  foreign "g_shell_quote" (string @-> returning (string_opt))

(*Not implemented g_shell_parse_argv type C Array type for Types.Array tag not implemented*)

let shell_error_quark =
  foreign "g_shell_error_quark" (void @-> returning (uint32_t))

let setenv =
  foreign "g_setenv" (string @-> string @-> bool @-> returning (bool))

let set_prgname =
  foreign "g_set_prgname" (string @-> returning (void))

let set_error_literal domain code message =
  let set_error_literal_raw =
    foreign "g_set_error_literal" (uint32_t @-> int32_t @-> string @-> ptr (ptr Error.t_typ) @-> returning (void))
  in
  let err_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_error_literal_raw domain code message err_ptr in
  let err = !@ err_ptr in
  (err)

let set_application_name =
  foreign "g_set_application_name" (string @-> returning (void))

let sequence_swap =
  foreign "g_sequence_swap" (ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> returning (void))

let sequence_set =
  foreign "g_sequence_set" (ptr Sequence_iter.t_typ @-> ptr_opt void @-> returning (void))

let sequence_remove_range =
  foreign "g_sequence_remove_range" (ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> returning (void))

let sequence_remove =
  foreign "g_sequence_remove" (ptr Sequence_iter.t_typ @-> returning (void))

let sequence_range_get_midpoint =
  foreign "g_sequence_range_get_midpoint" (ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> returning (ptr Sequence_iter.t_typ))

let sequence_move_range =
  foreign "g_sequence_move_range" (ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> returning (void))

let sequence_move =
  foreign "g_sequence_move" (ptr Sequence_iter.t_typ @-> ptr Sequence_iter.t_typ @-> returning (void))

let sequence_insert_before =
  foreign "g_sequence_insert_before" (ptr Sequence_iter.t_typ @-> ptr_opt void @-> returning (ptr Sequence_iter.t_typ))

let sequence_get =
  foreign "g_sequence_get" (ptr Sequence_iter.t_typ @-> returning (ptr_opt void))

let rmdir =
  foreign "g_rmdir" (string @-> returning (int32_t))

let reload_user_special_dirs_cache =
  foreign "g_reload_user_special_dirs_cache" (void @-> returning (void))

(*Not implemented g_regex_split_simple return type C Array type for Types.Array tag not handled*)

let regex_match_simple =
  foreign "g_regex_match_simple" (string @-> string @-> Regex_compile_flags.t_list_view @-> Regex_match_flags.t_list_view @-> returning (bool))

(*Not implemented g_regex_escape_string type C Array type for Types.Array tag not implemented*)

let regex_escape_nul =
  foreign "g_regex_escape_nul" (string @-> int32_t @-> returning (string_opt))

let regex_error_quark =
  foreign "g_regex_error_quark" (void @-> returning (uint32_t))

let regex_check_replacement replacement =
  let regex_check_replacement_raw =
    foreign "g_regex_check_replacement" (string @-> ptr (bool) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let has_references_ptr = allocate bool false in
  let ret = regex_check_replacement_raw replacement has_references_ptr err_ptr_ptr in
  let get_ret_value () =
    let has_references = !@ has_references_ptr in
    (ret, has_references)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let realloc_n =
  foreign "g_realloc_n" (ptr_opt void @-> uint64_t @-> uint64_t @-> returning (ptr_opt void))

let realloc =
  foreign "g_realloc" (ptr_opt void @-> uint64_t @-> returning (ptr_opt void))

let random_set_seed =
  foreign "g_random_set_seed" (uint32_t @-> returning (void))

let random_int_range =
  foreign "g_random_int_range" (int32_t @-> int32_t @-> returning (int32_t))

let random_int =
  foreign "g_random_int" (void @-> returning (uint32_t))

let random_double_range =
  foreign "g_random_double_range" (double @-> double @-> returning (double))

let random_double =
  foreign "g_random_double" (void @-> returning (double))

let quark_try_string =
  foreign "g_quark_try_string" (string_opt @-> returning (uint32_t))

let quark_to_string =
  foreign "g_quark_to_string" (uint32_t @-> returning (string_opt))

let quark_from_string =
  foreign "g_quark_from_string" (string_opt @-> returning (uint32_t))

let quark_from_static_string =
  foreign "g_quark_from_static_string" (string_opt @-> returning (uint32_t))

let propagate_error src =
  let propagate_error_raw =
    foreign "g_propagate_error" (ptr Error.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (void))
  in
  let dest_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = propagate_error_raw src dest_ptr in
  let dest = !@ dest_ptr in
  (dest)

let poll =
  foreign "g_poll" (ptr Poll_fd.t_typ @-> uint32_t @-> int32_t @-> returning (int32_t))

let pointer_bit_unlock =
  foreign "g_pointer_bit_unlock" (ptr void @-> int32_t @-> returning (void))

let pointer_bit_trylock =
  foreign "g_pointer_bit_trylock" (ptr void @-> int32_t @-> returning (bool))

let pointer_bit_lock =
  foreign "g_pointer_bit_lock" (ptr void @-> int32_t @-> returning (void))

let pattern_match_string =
  foreign "g_pattern_match_string" (ptr Pattern_spec.t_typ @-> string @-> returning (bool))

let pattern_match_simple =
  foreign "g_pattern_match_simple" (string @-> string @-> returning (bool))

let pattern_match =
  foreign "g_pattern_match" (ptr Pattern_spec.t_typ @-> uint32_t @-> string @-> string_opt @-> returning (bool))

let path_skip_root =
  foreign "g_path_skip_root" (string @-> returning (string_opt))

let path_is_absolute =
  foreign "g_path_is_absolute" (string @-> returning (bool))

let path_get_dirname =
  foreign "g_path_get_dirname" (string @-> returning (string_opt))

let path_get_basename =
  foreign "g_path_get_basename" (string @-> returning (string_opt))

(*Not implemented g_parse_debug_string type C Array type for Types.Array tag not implemented*)

let option_error_quark =
  foreign "g_option_error_quark" (void @-> returning (uint32_t))

let once_init_leave =
  foreign "g_once_init_leave" (ptr void @-> uint64_t @-> returning (void))

let once_init_enter =
  foreign "g_once_init_enter" (ptr void @-> returning (bool))

let on_error_stack_trace =
  foreign "g_on_error_stack_trace" (string @-> returning (void))

let on_error_query =
  foreign "g_on_error_query" (string @-> returning (void))

let number_parser_error_quark =
  foreign "g_number_parser_error_quark" (void @-> returning (uint32_t))

let nullify_pointer =
  foreign "g_nullify_pointer" (ptr void @-> returning (void))

let mkdir_with_parents =
  foreign "g_mkdir_with_parents" (string @-> int32_t @-> returning (int32_t))

let memdup =
  foreign "g_memdup" (ptr_opt void @-> uint32_t @-> returning (ptr_opt void))

let markup_escape_text =
  foreign "g_markup_escape_text" (string @-> int64_t @-> returning (string_opt))

let markup_error_quark =
  foreign "g_markup_error_quark" (void @-> returning (uint32_t))

let malloc_n =
  foreign "g_malloc_n" (uint64_t @-> uint64_t @-> returning (ptr_opt void))

let malloc0_n =
  foreign "g_malloc0_n" (uint64_t @-> uint64_t @-> returning (ptr_opt void))

let malloc0 =
  foreign "g_malloc0" (uint64_t @-> returning (ptr_opt void))

let malloc =
  foreign "g_malloc" (uint64_t @-> returning (ptr_opt void))

let main_depth =
  foreign "g_main_depth" (void @-> returning (int32_t))

let main_current_source =
  foreign "g_main_current_source" (void @-> returning (ptr Source.t_typ))

let main_context_ref_thread_default =
  foreign "g_main_context_ref_thread_default" (void @-> returning (ptr Main_context.t_typ))

let main_context_get_thread_default =
  foreign "g_main_context_get_thread_default" (void @-> returning (ptr Main_context.t_typ))

let main_context_default =
  foreign "g_main_context_default" (void @-> returning (ptr Main_context.t_typ))

let log_writer_supports_color =
  foreign "g_log_writer_supports_color" (int32_t @-> returning (bool))

(*Not implemented g_log_writer_standard_streams type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_writer_journald type C Array type for Types.Array tag not implemented*)

let log_writer_is_journald =
  foreign "g_log_writer_is_journald" (int32_t @-> returning (bool))

(*Not implemented g_log_writer_format_fields type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_writer_default type C Array type for Types.Array tag not implemented*)

let log_variant =
  foreign "g_log_variant" (string_opt @-> Log_level_flags.t_list_view @-> ptr Variant.t_typ @-> returning (void))

(*Not implemented g_log_structured_array type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_set_writer_func type callback not implemented*)

(*Not implemented g_log_set_handler_full type callback not implemented*)

let log_set_fatal_mask =
  foreign "g_log_set_fatal_mask" (string @-> Log_level_flags.t_list_view @-> returning (Log_level_flags.t_list_view))

let log_set_always_fatal =
  foreign "g_log_set_always_fatal" (Log_level_flags.t_list_view @-> returning (Log_level_flags.t_list_view))

let log_remove_handler =
  foreign "g_log_remove_handler" (string @-> uint32_t @-> returning (void))

let log_default_handler =
  foreign "g_log_default_handler" (string_opt @-> Log_level_flags.t_list_view @-> string_opt @-> ptr_opt void @-> returning (void))

(*Not implemented g_locale_to_utf8 type C Array type for Types.Array tag not implemented*)

(*Not implemented g_locale_from_utf8 return type C Array type for Types.Array tag not handled*)

(*Not implemented g_listenv return type C Array type for Types.Array tag not handled*)

let key_file_error_quark =
  foreign "g_key_file_error_quark" (void @-> returning (uint32_t))

let io_create_watch =
  foreign "g_io_create_watch" (ptr IOChannel.t_typ @-> IOCondition.t_list_view @-> returning (ptr Source.t_typ))

let io_channel_error_quark =
  foreign "g_io_channel_error_quark" (void @-> returning (uint32_t))

let io_channel_error_from_errno =
  foreign "g_io_channel_error_from_errno" (int32_t @-> returning (IOChannel_error.t_view))

(*Not implemented g_io_add_watch_full type callback not implemented*)

let intern_string =
  foreign "g_intern_string" (string_opt @-> returning (string_opt))

let intern_static_string =
  foreign "g_intern_static_string" (string_opt @-> returning (string_opt))

let int_hash =
  foreign "g_int_hash" (ptr void @-> returning (uint32_t))

let int_equal =
  foreign "g_int_equal" (ptr void @-> ptr void @-> returning (bool))

let int64_hash =
  foreign "g_int64_hash" (ptr void @-> returning (uint32_t))

let int64_equal =
  foreign "g_int64_equal" (ptr void @-> ptr void @-> returning (bool))

let idle_source_create =
  foreign "g_idle_source_new" (void @-> returning (ptr Source.t_typ))

let idle_remove_by_data =
  foreign "g_idle_remove_by_data" (ptr_opt void @-> returning (bool))

(*Not implemented g_idle_add_full type callback not implemented*)

let hostname_to_unicode =
  foreign "g_hostname_to_unicode" (string @-> returning (string_opt))

let hostname_to_ascii =
  foreign "g_hostname_to_ascii" (string @-> returning (string_opt))

let hostname_is_non_ascii =
  foreign "g_hostname_is_non_ascii" (string @-> returning (bool))

let hostname_is_ip_address =
  foreign "g_hostname_is_ip_address" (string @-> returning (bool))

let hostname_is_ascii_encoded =
  foreign "g_hostname_is_ascii_encoded" (string @-> returning (bool))

let hook_unref =
  foreign "g_hook_unref" (ptr Hook_list.t_typ @-> ptr Hook.t_typ @-> returning (void))

let hook_prepend =
  foreign "g_hook_prepend" (ptr Hook_list.t_typ @-> ptr Hook.t_typ @-> returning (void))

let hook_insert_before =
  foreign "g_hook_insert_before" (ptr Hook_list.t_typ @-> ptr_opt Hook.t_typ @-> ptr Hook.t_typ @-> returning (void))

let hook_free =
  foreign "g_hook_free" (ptr Hook_list.t_typ @-> ptr Hook.t_typ @-> returning (void))

let hook_destroy_link =
  foreign "g_hook_destroy_link" (ptr Hook_list.t_typ @-> ptr Hook.t_typ @-> returning (void))

let hook_destroy =
  foreign "g_hook_destroy" (ptr Hook_list.t_typ @-> uint64_t @-> returning (bool))

let hash_table_unref =
  foreign "g_hash_table_unref" (ptr Hash_table.t_typ @-> returning (void))

let hash_table_steal_all =
  foreign "g_hash_table_steal_all" (ptr Hash_table.t_typ @-> returning (void))

let hash_table_steal =
  foreign "g_hash_table_steal" (ptr Hash_table.t_typ @-> ptr_opt void @-> returning (bool))

let hash_table_size =
  foreign "g_hash_table_size" (ptr Hash_table.t_typ @-> returning (uint32_t))

let hash_table_replace =
  foreign "g_hash_table_replace" (ptr Hash_table.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (bool))

let hash_table_remove_all =
  foreign "g_hash_table_remove_all" (ptr Hash_table.t_typ @-> returning (void))

let hash_table_remove =
  foreign "g_hash_table_remove" (ptr Hash_table.t_typ @-> ptr_opt void @-> returning (bool))

let hash_table_lookup_extended hash_table lookup_key =
  let hash_table_lookup_extended_raw =
    foreign "g_hash_table_lookup_extended" (ptr Hash_table.t_typ @-> ptr_opt void @-> ptr (ptr_opt void) @-> ptr (ptr_opt void) @-> returning (bool))
  in
  let orig_key_ptr = allocate (ptr_opt void) None in
  let value_ptr = allocate (ptr_opt void) None in
  let ret = hash_table_lookup_extended_raw hash_table lookup_key orig_key_ptr value_ptr in
  let orig_key = !@ orig_key_ptr in
  let value = !@ value_ptr in
  (ret, orig_key, value)

let hash_table_lookup =
  foreign "g_hash_table_lookup" (ptr Hash_table.t_typ @-> ptr_opt void @-> returning (ptr_opt void))

let hash_table_insert =
  foreign "g_hash_table_insert" (ptr Hash_table.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (bool))

let hash_table_destroy =
  foreign "g_hash_table_destroy" (ptr Hash_table.t_typ @-> returning (void))

let hash_table_contains =
  foreign "g_hash_table_contains" (ptr Hash_table.t_typ @-> ptr_opt void @-> returning (bool))

let hash_table_add =
  foreign "g_hash_table_add" (ptr Hash_table.t_typ @-> ptr_opt void @-> returning (bool))

let getenv =
  foreign "g_getenv" (string @-> returning (string_opt))

let get_user_special_dir =
  foreign "g_get_user_special_dir" (User_directory.t_view @-> returning (string_opt))

let get_user_runtime_dir =
  foreign "g_get_user_runtime_dir" (void @-> returning (string_opt))

let get_user_name =
  foreign "g_get_user_name" (void @-> returning (string_opt))

let get_user_data_dir =
  foreign "g_get_user_data_dir" (void @-> returning (string_opt))

let get_user_config_dir =
  foreign "g_get_user_config_dir" (void @-> returning (string_opt))

let get_user_cache_dir =
  foreign "g_get_user_cache_dir" (void @-> returning (string_opt))

let get_tmp_dir =
  foreign "g_get_tmp_dir" (void @-> returning (string_opt))

(*Not implemented g_get_system_data_dirs return type C Array type for Types.Array tag not handled*)

(*Not implemented g_get_system_config_dirs return type C Array type for Types.Array tag not handled*)

let get_real_time =
  foreign "g_get_real_time" (void @-> returning (int64_t))

let get_real_name =
  foreign "g_get_real_name" (void @-> returning (string_opt))

let get_prgname =
  foreign "g_get_prgname" (void @-> returning (string_opt))

let get_num_processors =
  foreign "g_get_num_processors" (void @-> returning (uint32_t))

let get_monotonic_time =
  foreign "g_get_monotonic_time" (void @-> returning (int64_t))

(*Not implemented g_get_locale_variants return type C Array type for Types.Array tag not handled*)

(*Not implemented g_get_language_names return type C Array type for Types.Array tag not handled*)

let get_host_name =
  foreign "g_get_host_name" (void @-> returning (string_opt))

let get_home_dir =
  foreign "g_get_home_dir" (void @-> returning (string_opt))

let get_filename_charsets =
  foreign "g_get_filename_charsets" (string @-> returning (bool))

(*Not implemented g_get_environ return type C Array type for Types.Array tag not handled*)

let get_current_time =
  foreign "g_get_current_time" (ptr Time_val.t_typ @-> returning (void))

let get_current_dir =
  foreign "g_get_current_dir" (void @-> returning (string_opt))

let get_codeset =
  foreign "g_get_codeset" (void @-> returning (string_opt))

let get_charset () =
  let get_charset_raw =
    foreign "g_get_charset" (ptr (string) @-> returning (bool))
  in
  let charset_ptr = allocate string " " in
  let ret = get_charset_raw charset_ptr in
  let charset = !@ charset_ptr in
  (ret, charset)

let get_application_name =
  foreign "g_get_application_name" (void @-> returning (string_opt))

let free =
  foreign "g_free" (ptr_opt void @-> returning (void))

let format_size_full =
  foreign "g_format_size_full" (uint64_t @-> Format_size_flags.t_list_view @-> returning (string_opt))

let format_size =
  foreign "g_format_size" (uint64_t @-> returning (string_opt))

let find_program_in_path =
  foreign "g_find_program_in_path" (string @-> returning (string_opt))

let filename_to_utf8 opsysstring len =
  let filename_to_utf8_raw =
    foreign "g_filename_to_utf8" (string @-> int64_t @-> ptr (uint64_t) @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let bytes_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let bytes_written_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = filename_to_utf8_raw opsysstring len bytes_read_ptr bytes_written_ptr err_ptr_ptr in
  let get_ret_value () =
    let bytes_read = !@ bytes_read_ptr in
   let bytes_written = !@ bytes_written_ptr in
    (ret, bytes_read, bytes_written)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let filename_to_uri filename hostname =
  let filename_to_uri_raw =
    foreign "g_filename_to_uri" (string @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = filename_to_uri_raw filename hostname err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let filename_from_utf8 utf8string len =
  let filename_from_utf8_raw =
    foreign "g_filename_from_utf8" (string @-> int64_t @-> ptr (uint64_t) @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let bytes_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let bytes_written_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = filename_from_utf8_raw utf8string len bytes_read_ptr bytes_written_ptr err_ptr_ptr in
  let get_ret_value () =
    let bytes_read = !@ bytes_read_ptr in
   let bytes_written = !@ bytes_written_ptr in
    (ret, bytes_read, bytes_written)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let filename_from_uri uri =
  let filename_from_uri_raw =
    foreign "g_filename_from_uri" (string @-> ptr (string_opt) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let hostname_ptr = allocate string_opt None in
  let ret = filename_from_uri_raw uri hostname_ptr err_ptr_ptr in
  let get_ret_value () =
    let hostname = !@ hostname_ptr in
    (ret, hostname)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let filename_display_name =
  foreign "g_filename_display_name" (string @-> returning (string_opt))

let filename_display_basename =
  foreign "g_filename_display_basename" (string @-> returning (string_opt))

let file_test =
  foreign "g_file_test" (string @-> File_test.t_list_view @-> returning (bool))

(*Not implemented g_file_set_contents type C Array type for Types.Array tag not implemented*)

let file_read_link filename =
  let file_read_link_raw =
    foreign "g_file_read_link" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = file_read_link_raw filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let file_open_tmp tmpl =
  let file_open_tmp_raw =
    foreign "g_file_open_tmp" (string_opt @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let name_used_ptr = allocate string " " in
  let ret = file_open_tmp_raw tmpl name_used_ptr err_ptr_ptr in
  let get_ret_value () =
    let name_used = !@ name_used_ptr in
    (ret, name_used)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_file_get_contents type C Array type for Types.Array tag not implemented*)

let file_error_quark =
  foreign "g_file_error_quark" (void @-> returning (uint32_t))

let file_error_from_errno =
  foreign "g_file_error_from_errno" (int32_t @-> returning (File_error.t_view))

(*Not implemented g_environ_unsetenv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_environ_setenv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_environ_getenv type C Array type for Types.Array tag not implemented*)

let dpgettext2 =
  foreign "g_dpgettext2" (string_opt @-> string @-> string @-> returning (string_opt))

let dpgettext =
  foreign "g_dpgettext" (string_opt @-> string @-> uint64_t @-> returning (string_opt))

let double_hash =
  foreign "g_double_hash" (ptr void @-> returning (uint32_t))

let double_equal =
  foreign "g_double_equal" (ptr void @-> ptr void @-> returning (bool))

let dngettext =
  foreign "g_dngettext" (string_opt @-> string @-> string @-> uint64_t @-> returning (string_opt))

let direct_hash =
  foreign "g_direct_hash" (ptr_opt void @-> returning (uint32_t))

let direct_equal =
  foreign "g_direct_equal" (ptr_opt void @-> ptr_opt void @-> returning (bool))

let dir_make_tmp tmpl =
  let dir_make_tmp_raw =
    foreign "g_dir_make_tmp" (string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = dir_make_tmp_raw tmpl err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let dgettext =
  foreign "g_dgettext" (string_opt @-> string @-> returning (string_opt))

let dcgettext =
  foreign "g_dcgettext" (string_opt @-> string @-> int32_t @-> returning (string_opt))

let date_valid_year =
  foreign "g_date_valid_year" (uint16_t @-> returning (bool))

let date_valid_weekday =
  foreign "g_date_valid_weekday" (Date_weekday.t_view @-> returning (bool))

let date_valid_month =
  foreign "g_date_valid_month" (Date_month.t_view @-> returning (bool))

let date_valid_julian =
  foreign "g_date_valid_julian" (uint32_t @-> returning (bool))

let date_valid_dmy =
  foreign "g_date_valid_dmy" (uint8_t @-> Date_month.t_view @-> uint16_t @-> returning (bool))

let date_valid_day =
  foreign "g_date_valid_day" (uint8_t @-> returning (bool))

let date_time_hash =
  foreign "g_date_time_hash" (ptr void @-> returning (uint32_t))

let date_time_equal =
  foreign "g_date_time_equal" (ptr void @-> ptr void @-> returning (bool))

let date_time_compare =
  foreign "g_date_time_compare" (ptr void @-> ptr void @-> returning (int32_t))

let date_strftime =
  foreign "g_date_strftime" (string @-> uint64_t @-> string @-> ptr Date.t_typ @-> returning (uint64_t))

let date_is_leap_year =
  foreign "g_date_is_leap_year" (uint16_t @-> returning (bool))

let date_get_sunday_weeks_in_year =
  foreign "g_date_get_sunday_weeks_in_year" (uint16_t @-> returning (uint8_t))

let date_get_monday_weeks_in_year =
  foreign "g_date_get_monday_weeks_in_year" (uint16_t @-> returning (uint8_t))

let date_get_days_in_month =
  foreign "g_date_get_days_in_month" (Date_month.t_view @-> uint16_t @-> returning (uint8_t))

let dataset_id_get_data =
  foreign "g_dataset_id_get_data" (ptr void @-> uint32_t @-> returning (ptr_opt void))

(*Not implemented g_dataset_foreach type callback not implemented*)

let dataset_destroy =
  foreign "g_dataset_destroy" (ptr void @-> returning (void))

let datalist_unset_flags =
  foreign "g_datalist_unset_flags" (ptr Data.t_typ @-> uint32_t @-> returning (void))

let datalist_set_flags =
  foreign "g_datalist_set_flags" (ptr Data.t_typ @-> uint32_t @-> returning (void))

let datalist_id_get_data =
  foreign "g_datalist_id_get_data" (ptr Data.t_typ @-> uint32_t @-> returning (ptr_opt void))

let datalist_get_flags =
  foreign "g_datalist_get_flags" (ptr Data.t_typ @-> returning (uint32_t))

let datalist_get_data =
  foreign "g_datalist_get_data" (ptr Data.t_typ @-> string @-> returning (ptr_opt void))

(*Not implemented g_datalist_foreach type callback not implemented*)

(*Not implemented g_convert_with_fallback type C Array type for Types.Array tag not implemented*)

let convert_error_quark =
  foreign "g_convert_error_quark" (void @-> returning (uint32_t))

(*Not implemented g_convert type C Array type for Types.Array tag not implemented*)

(*Not implemented g_compute_hmac_for_string type C Array type for Types.Array tag not implemented*)

(*Not implemented g_compute_hmac_for_data type C Array type for Types.Array tag not implemented*)

let compute_hmac_for_bytes =
  foreign "g_compute_hmac_for_bytes" (Checksum_type.t_view @-> ptr Bytes.t_typ @-> ptr Bytes.t_typ @-> returning (string_opt))

let compute_checksum_for_string =
  foreign "g_compute_checksum_for_string" (Checksum_type.t_view @-> string @-> int64_t @-> returning (string_opt))

(*Not implemented g_compute_checksum_for_data type C Array type for Types.Array tag not implemented*)

let compute_checksum_for_bytes =
  foreign "g_compute_checksum_for_bytes" (Checksum_type.t_view @-> ptr Bytes.t_typ @-> returning (string_opt))

let close fd =
  let close_raw =
    foreign "g_close" (int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw fd err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let clear_error () =
  let clear_error_raw =
    foreign "g_clear_error" (ptr (ptr_opt Error.t_typ) @-> returning (void))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = clear_error_raw err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let child_watch_source_create =
  foreign "g_child_watch_source_new" (int32_t @-> returning (ptr Source.t_typ))

(*Not implemented g_child_watch_add_full type callback not implemented*)

let checksum_type_get_length =
  foreign "g_checksum_type_get_length" (Checksum_type.t_view @-> returning (int64_t))

let check_version =
  foreign "glib_check_version" (uint32_t @-> uint32_t @-> uint32_t @-> returning (string_opt))

let chdir =
  foreign "g_chdir" (string @-> returning (int32_t))

let byte_array_unref =
  foreign "g_byte_array_unref" (ptr Byte_array.t_typ @-> returning (void))

(*Not implemented g_byte_array_new_take type C Array type for Types.Array tag not implemented*)

let byte_array_create =
  foreign "g_byte_array_new" (void @-> returning (ptr Byte_array.t_typ))

let byte_array_free_to_bytes =
  foreign "g_byte_array_free_to_bytes" (ptr Byte_array.t_typ @-> returning (ptr Bytes.t_typ))

let byte_array_free =
  foreign "g_byte_array_free" (ptr Byte_array.t_typ @-> bool @-> returning (ptr uint8_t))

(*Not implemented g_build_pathv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_build_filenamev type C Array type for Types.Array tag not implemented*)

let bookmark_file_error_quark =
  foreign "g_bookmark_file_error_quark" (void @-> returning (uint32_t))

let bit_unlock =
  foreign "g_bit_unlock" (ptr int32_t @-> int32_t @-> returning (void))

let bit_trylock =
  foreign "g_bit_trylock" (ptr int32_t @-> int32_t @-> returning (bool))

let bit_storage =
  foreign "g_bit_storage" (uint64_t @-> returning (uint32_t))

let bit_nth_msf =
  foreign "g_bit_nth_msf" (uint64_t @-> int32_t @-> returning (int32_t))

let bit_nth_lsf =
  foreign "g_bit_nth_lsf" (uint64_t @-> int32_t @-> returning (int32_t))

let bit_lock =
  foreign "g_bit_lock" (ptr int32_t @-> int32_t @-> returning (void))

(*Not implemented g_base64_encode_step type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_encode_close type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_encode type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_decode_inplace type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_decode return type C Array type for Types.Array tag not handled*)

let atomic_pointer_xor =
  foreign "g_atomic_pointer_xor" (ptr void @-> uint64_t @-> returning (uint64_t))

let atomic_pointer_set =
  foreign "g_atomic_pointer_set" (ptr void @-> ptr_opt void @-> returning (void))

let atomic_pointer_or =
  foreign "g_atomic_pointer_or" (ptr void @-> uint64_t @-> returning (uint64_t))

let atomic_pointer_get =
  foreign "g_atomic_pointer_get" (ptr void @-> returning (ptr_opt void))

let atomic_pointer_compare_and_exchange =
  foreign "g_atomic_pointer_compare_and_exchange" (ptr void @-> ptr_opt void @-> ptr_opt void @-> returning (bool))

let atomic_pointer_and =
  foreign "g_atomic_pointer_and" (ptr void @-> uint64_t @-> returning (uint64_t))

let atomic_pointer_add =
  foreign "g_atomic_pointer_add" (ptr void @-> int64_t @-> returning (int64_t))

let atomic_int_xor =
  foreign "g_atomic_int_xor" (ptr uint32_t @-> uint32_t @-> returning (uint32_t))

let atomic_int_set =
  foreign "g_atomic_int_set" (ptr int32_t @-> int32_t @-> returning (void))

let atomic_int_or =
  foreign "g_atomic_int_or" (ptr uint32_t @-> uint32_t @-> returning (uint32_t))

let atomic_int_inc =
  foreign "g_atomic_int_inc" (ptr int32_t @-> returning (void))

let atomic_int_get =
  foreign "g_atomic_int_get" (ptr int32_t @-> returning (int32_t))

let atomic_int_dec_and_test =
  foreign "g_atomic_int_dec_and_test" (ptr int32_t @-> returning (bool))

let atomic_int_compare_and_exchange =
  foreign "g_atomic_int_compare_and_exchange" (ptr int32_t @-> int32_t @-> int32_t @-> returning (bool))

let atomic_int_and =
  foreign "g_atomic_int_and" (ptr uint32_t @-> uint32_t @-> returning (uint32_t))

let atomic_int_add =
  foreign "g_atomic_int_add" (ptr int32_t @-> int32_t @-> returning (int32_t))

let assertion_message_error =
  foreign "g_assertion_message_error" (string @-> string @-> int32_t @-> string @-> string @-> ptr Error.t_typ @-> uint32_t @-> int32_t @-> returning (void))

let assertion_message_cmpstr =
  foreign "g_assertion_message_cmpstr" (string @-> string @-> int32_t @-> string @-> string @-> string @-> string @-> string @-> returning (void))

let assertion_message =
  foreign "g_assertion_message" (string @-> string @-> int32_t @-> string @-> string @-> returning (void))

let assert_warning =
  foreign "g_assert_warning" (string @-> string @-> int32_t @-> string @-> string @-> returning (void))

let ascii_xdigit_value =
  foreign "g_ascii_xdigit_value" (int8_t @-> returning (int32_t))

let ascii_toupper =
  foreign "g_ascii_toupper" (int8_t @-> returning (int8_t))

let ascii_tolower =
  foreign "g_ascii_tolower" (int8_t @-> returning (int8_t))

let ascii_strup =
  foreign "g_ascii_strup" (string @-> int64_t @-> returning (string_opt))

let ascii_strtoull nptr base =
  let ascii_strtoull_raw =
    foreign "g_ascii_strtoull" (string @-> uint32_t @-> ptr (string) @-> returning (uint64_t))
  in
  let endptr_ptr = allocate string " " in
  let ret = ascii_strtoull_raw nptr base endptr_ptr in
  let endptr = !@ endptr_ptr in
  (ret, endptr)

let ascii_strtoll nptr base =
  let ascii_strtoll_raw =
    foreign "g_ascii_strtoll" (string @-> uint32_t @-> ptr (string) @-> returning (int64_t))
  in
  let endptr_ptr = allocate string " " in
  let ret = ascii_strtoll_raw nptr base endptr_ptr in
  let endptr = !@ endptr_ptr in
  (ret, endptr)

let ascii_strtod nptr =
  let ascii_strtod_raw =
    foreign "g_ascii_strtod" (string @-> ptr (string) @-> returning (double))
  in
  let endptr_ptr = allocate string " " in
  let ret = ascii_strtod_raw nptr endptr_ptr in
  let endptr = !@ endptr_ptr in
  (ret, endptr)

let ascii_strncasecmp =
  foreign "g_ascii_strncasecmp" (string @-> string @-> uint64_t @-> returning (int32_t))

let ascii_string_to_unsigned str base min max =
  let ascii_string_to_unsigned_raw =
    foreign "g_ascii_string_to_unsigned" (string @-> uint32_t @-> uint64_t @-> uint64_t @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_num_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = ascii_string_to_unsigned_raw str base min max out_num_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_num = !@ out_num_ptr in
    (ret, out_num)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let ascii_string_to_signed str base min max =
  let ascii_string_to_signed_raw =
    foreign "g_ascii_string_to_signed" (string @-> uint32_t @-> int64_t @-> int64_t @-> ptr (int64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_num_ptr = allocate int64_t Int64.zero in
  let ret = ascii_string_to_signed_raw str base min max out_num_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_num = !@ out_num_ptr in
    (ret, out_num)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let ascii_strdown =
  foreign "g_ascii_strdown" (string @-> int64_t @-> returning (string_opt))

let ascii_strcasecmp =
  foreign "g_ascii_strcasecmp" (string @-> string @-> returning (int32_t))

let ascii_formatd =
  foreign "g_ascii_formatd" (string @-> int32_t @-> string @-> double @-> returning (string_opt))

let ascii_dtostr =
  foreign "g_ascii_dtostr" (string @-> int32_t @-> double @-> returning (string_opt))

let ascii_digit_value =
  foreign "g_ascii_digit_value" (int8_t @-> returning (int32_t))

let access =
  foreign "g_access" (string @-> int32_t @-> returning (int32_t))

