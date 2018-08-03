open Ctypes

val c_ANALYZER_ANALYZING : int32
val c_ASCII_DTOSTR_BUF_SIZE : int32
val c_BIG_ENDIAN : int32
val c_CSET_A_2_Z : string
val c_CSET_DIGITS : string
val c_CSET_a_2_z : string
val c_DATALIST_FLAGS_MASK : int32
val c_DATE_BAD_DAY : int32
val c_DATE_BAD_JULIAN : int32
val c_DATE_BAD_YEAR : int32
val c_DIR_SEPARATOR : int32
val c_DIR_SEPARATOR_S : string
val c_E : float
val c_GINT16_FORMAT : string
val c_GINT16_MODIFIER : string
val c_GINT32_FORMAT : string
val c_GINT32_MODIFIER : string
val c_GINT64_FORMAT : string
val c_GINT64_MODIFIER : string
val c_GINTPTR_FORMAT : string
val c_GINTPTR_MODIFIER : string
(*DEPRECATED : GNUC_FUNCTION*)
(*DEPRECATED : GNUC_PRETTY_FUNCTION*)
val c_GSIZE_FORMAT : string
val c_GSIZE_MODIFIER : string
val c_GSSIZE_FORMAT : string
val c_GSSIZE_MODIFIER : string
val c_GUINT16_FORMAT : string
val c_GUINT32_FORMAT : string
val c_GUINT64_FORMAT : string
val c_GUINTPTR_FORMAT : string
val c_HAVE_GINT64 : int32
val c_HAVE_GNUC_VARARGS : int32
val c_HAVE_GNUC_VISIBILITY : int32
val c_HAVE_GROWING_STACK : int32
val c_HAVE_ISO_VARARGS : int32
val c_HOOK_FLAG_USER_SHIFT : int32
val c_IEEE754_DOUBLE_BIAS : int32
val c_IEEE754_FLOAT_BIAS : int32
val c_KEY_FILE_DESKTOP_GROUP : string
val c_KEY_FILE_DESKTOP_KEY_ACTIONS : string
val c_KEY_FILE_DESKTOP_KEY_CATEGORIES : string
val c_KEY_FILE_DESKTOP_KEY_COMMENT : string
val c_KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE : string
val c_KEY_FILE_DESKTOP_KEY_EXEC : string
val c_KEY_FILE_DESKTOP_KEY_GENERIC_NAME : string
val c_KEY_FILE_DESKTOP_KEY_HIDDEN : string
val c_KEY_FILE_DESKTOP_KEY_ICON : string
val c_KEY_FILE_DESKTOP_KEY_MIME_TYPE : string
val c_KEY_FILE_DESKTOP_KEY_NAME : string
val c_KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN : string
val c_KEY_FILE_DESKTOP_KEY_NO_DISPLAY : string
val c_KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN : string
val c_KEY_FILE_DESKTOP_KEY_PATH : string
val c_KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY : string
val c_KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS : string
val c_KEY_FILE_DESKTOP_KEY_TERMINAL : string
val c_KEY_FILE_DESKTOP_KEY_TRY_EXEC : string
val c_KEY_FILE_DESKTOP_KEY_TYPE : string
val c_KEY_FILE_DESKTOP_KEY_URL : string
val c_KEY_FILE_DESKTOP_KEY_VERSION : string
val c_KEY_FILE_DESKTOP_TYPE_APPLICATION : string
val c_KEY_FILE_DESKTOP_TYPE_DIRECTORY : string
val c_KEY_FILE_DESKTOP_TYPE_LINK : string
val c_LITTLE_ENDIAN : int32
val c_LN10 : float
val c_LN2 : float
val c_LOG_2_BASE_10 : float
val c_LOG_DOMAIN : int
val c_LOG_FATAL_MASK : int32
val c_LOG_LEVEL_USER_SHIFT : int32
val c_MAJOR_VERSION : int32
val c_MAXINT16 : int
val c_MAXINT32 : int32
val c_MAXINT64 : int64
val c_MAXINT8 : int
val c_MAXUINT16 : Unsigned.uint16
val c_MAXUINT32 : Unsigned.uint32
val c_MAXUINT64 : Unsigned.uint64
val c_MAXUINT8 : Unsigned.uint8
val c_MICRO_VERSION : int32
val c_MININT16 : int
val c_MININT32 : int32
val c_MININT64 : int64
val c_MININT8 : int
val c_MINOR_VERSION : int32
val c_MODULE_SUFFIX : string
val c_OPTION_REMAINING : string
val c_PDP_ENDIAN : int32
val c_PI : float
val c_PID_FORMAT : string
val c_PI_2 : float
val c_PI_4 : float
val c_POLLFD_FORMAT : string
val c_PRIORITY_DEFAULT : int32
val c_PRIORITY_DEFAULT_IDLE : int32
val c_PRIORITY_HIGH : int32
val c_PRIORITY_HIGH_IDLE : int32
val c_PRIORITY_LOW : int32
val c_SEARCHPATH_SEPARATOR : int32
val c_SEARCHPATH_SEPARATOR_S : string
val c_SIZEOF_LONG : int32
val c_SIZEOF_SIZE_T : int32
val c_SIZEOF_SSIZE_T : int32
val c_SIZEOF_VOID_P : int32
val c_SOURCE_CONTINUE : bool
val c_SOURCE_REMOVE : bool
val c_SQRT2 : float
val c_STR_DELIMITERS : string
val c_SYSDEF_AF_INET : int32
val c_SYSDEF_AF_INET6 : int32
val c_SYSDEF_AF_UNIX : int32
val c_SYSDEF_MSG_DONTROUTE : int32
val c_SYSDEF_MSG_OOB : int32
val c_SYSDEF_MSG_PEEK : int32
val c_TIME_SPAN_DAY : int64
val c_TIME_SPAN_HOUR : int64
val c_TIME_SPAN_MILLISECOND : int64
val c_TIME_SPAN_MINUTE : int64
val c_TIME_SPAN_SECOND : int64
(*DEPRECATED : TestTrapFlags*)
(*DEPRECATED : TrashStack*)
val c_UNICHAR_MAX_DECOMPOSITION_LENGTH : int32
val c_URI_RESERVED_CHARS_GENERIC_DELIMITERS : string
val c_URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS : string
val c_USEC_PER_SEC : int32
val c_VA_COPY_AS_ARRAY : int32
val c_VERSION_MIN_REQUIRED : int32
val c_WIN32_MSG_HANDLE : int32
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
val variant_type_string_scan :
  string -> string option -> (bool * string)

val variant_type_string_is_valid :
  string -> bool

val variant_type_checked_ :
  string -> Variant_type.t structure ptr

val variant_parse_error_quark :
  unit -> Unsigned.uint32

val variant_parse_error_print_context :
  Error.t structure ptr -> string -> string option

val variant_parse :
  Variant_type.t structure ptr option -> string -> string option -> string option -> (Variant.t structure ptr option, Error.t structure ptr option) result

val variant_is_signature :
  string -> bool

val variant_is_object_path :
  string -> bool

(*Not implemented g_variant_get_gtype return type gType not handled*)

val uuid_string_random :
  unit -> string option

val uuid_string_is_valid :
  string -> bool

(*Not implemented g_utf8_validate type C Array type for Types.Array tag not implemented*)

val utf8_to_utf16 :
  string -> int64 -> (Unsigned.uint16 ptr option * int64 * int64, Error.t structure ptr option) result

(*Not implemented g_utf8_to_ucs4_fast return type unichar not handled*)

(*Not implemented g_utf8_to_ucs4 return type unichar not handled*)

val utf8_substring :
  string -> int64 -> int64 -> string option

val utf8_strup :
  string -> int64 -> string option

val utf8_strreverse :
  string -> int64 -> string option

(*Not implemented g_utf8_strrchr type unichar not implemented*)

val utf8_strncpy :
  string -> string -> Unsigned.uint64 -> string option

val utf8_strlen :
  string -> int64 -> int64

val utf8_strdown :
  string -> int64 -> string option

(*Not implemented g_utf8_strchr type unichar not implemented*)

val utf8_prev_char :
  string -> string option

val utf8_pointer_to_offset :
  string -> string -> int64

val utf8_offset_to_pointer :
  string -> int64 -> string option

val utf8_normalize :
  string -> int64 -> Normalize_mode.t -> string option

val utf8_make_valid :
  string -> int64 -> string option

(*Not implemented g_utf8_get_char_validated return type unichar not handled*)

(*Not implemented g_utf8_get_char return type unichar not handled*)

val utf8_find_prev_char :
  string -> string -> string option

val utf8_find_next_char :
  string -> string option -> string option

val utf8_collate_key_for_filename :
  string -> int64 -> string option

val utf8_collate_key :
  string -> int64 -> string option

val utf8_collate :
  string -> string -> int32

val utf8_casefold :
  string -> int64 -> string option

val utf16_to_utf8 :
  Unsigned.uint16 ptr -> int64 -> (string option * int64 * int64, Error.t structure ptr option) result

(*Not implemented g_utf16_to_ucs4 return type unichar not handled*)

val usleep :
  Unsigned.uint64 -> unit

val uri_unescape_string :
  string -> string option -> string option

val uri_unescape_segment :
  string option -> string option -> string option -> string option

val uri_parse_scheme :
  string -> string option

(*Not implemented g_uri_list_extract_uris return type C Array type for Types.Array tag not handled*)

val uri_escape_string :
  string -> string option -> bool -> string option

val unsetenv :
  string -> unit

val unlink :
  string -> int32

val unix_signal_source_create :
  int32 -> Source.t structure ptr

(*Not implemented g_unix_signal_add_full type callback not implemented*)

val unix_set_fd_nonblocking :
  int32 -> bool -> (bool, Error.t structure ptr option) result

val unix_open_pipe :
  int32 ptr -> int32 -> (bool, Error.t structure ptr option) result

val unix_fd_source_create :
  int32 -> IOCondition.t_list -> Source.t structure ptr

(*Not implemented g_unix_fd_add_full type callback not implemented*)

val unix_error_quark :
  unit -> Unsigned.uint32

val unicode_script_to_iso15924 :
  Unicode_script.t -> Unsigned.uint32

val unicode_script_from_iso15924 :
  Unsigned.uint32 -> Unicode_script.t

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

val try_realloc_n :
  unit ptr option -> Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val try_realloc :
  unit ptr option -> Unsigned.uint64 -> unit ptr option

val try_malloc_n :
  Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val try_malloc0_n :
  Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val try_malloc0 :
  Unsigned.uint64 -> unit ptr option

val try_malloc :
  Unsigned.uint64 -> unit ptr option

val timeout_source_create_seconds :
  Unsigned.uint32 -> Source.t structure ptr

val timeout_source_create :
  Unsigned.uint32 -> Source.t structure ptr

(*Not implemented g_timeout_add_seconds_full type callback not implemented*)

(*Not implemented g_timeout_add_full type callback not implemented*)

val time_val_from_iso8601 :
  string -> (bool * Time_val.t structure)

val thread_yield :
  unit -> unit

val thread_self :
  unit -> Thread.t structure ptr

val thread_pool_stop_unused_threads :
  unit -> unit

val thread_pool_set_max_unused_threads :
  int32 -> unit

val thread_pool_set_max_idle_time :
  Unsigned.uint32 -> unit

val thread_pool_get_num_unused_threads :
  unit -> Unsigned.uint32

val thread_pool_get_max_unused_threads :
  unit -> int32

val thread_pool_get_max_idle_time :
  unit -> Unsigned.uint32

val thread_exit :
  unit ptr option -> unit

val thread_error_quark :
  unit -> Unsigned.uint32

val test_trap_subprocess :
  string option -> Unsigned.uint64 -> Test_subprocess_flags.t_list -> unit

val test_trap_reached_timeout :
  unit -> bool

val test_trap_has_passed :
  unit -> bool

val test_trap_assertions :
  string -> string -> int32 -> string -> Unsigned.uint64 -> string -> unit

val test_timer_start :
  unit -> unit

val test_timer_last :
  unit -> float

val test_timer_elapsed :
  unit -> float

val test_subprocess :
  unit -> bool

val test_skip :
  string option -> unit

val test_set_nonfatal_assertions :
  unit -> unit

val test_run_suite :
  Test_suite.t structure ptr -> int32

val test_run :
  unit -> int32

val test_rand_int_range :
  int32 -> int32 -> int32

val test_rand_int :
  unit -> int32

val test_rand_double_range :
  float -> float -> float

val test_rand_double :
  unit -> float

val test_queue_free :
  unit ptr option -> unit

(*Not implemented g_test_queue_destroy type callback not implemented*)

val test_log_type_name :
  Test_log_type.t -> string option

val test_incomplete :
  string option -> unit

val test_get_dir :
  Test_file_type.t -> string option

val test_failed :
  unit -> bool

val test_fail :
  unit -> unit

val test_expect_message :
  string option -> Log_level_flags.t_list -> string -> unit

val test_bug_base :
  string -> unit

val test_bug :
  string -> unit

val test_assert_expected_messages_internal :
  string -> string -> int32 -> string -> unit

(*Not implemented g_test_add_func type callback not implemented*)

(*Not implemented g_test_add_data_func_full type callback not implemented*)

(*Not implemented g_test_add_data_func type callback not implemented*)

val strv_length :
  string -> Unsigned.uint32

(*Not implemented g_strv_get_type return type gType not handled*)

val strv_contains :
  string -> string -> bool

val strtod :
  string -> (float * string)

val strstr_len :
  string -> int64 -> string -> string option

val strsignal :
  int32 -> string option

val strrstr_len :
  string -> int64 -> string -> string option

val strrstr :
  string -> string -> string option

val strreverse :
  string -> string option

val strnfill :
  Unsigned.uint64 -> int -> string option

val strndup :
  string -> Unsigned.uint64 -> string option

val strlcpy :
  string -> string -> Unsigned.uint64 -> Unsigned.uint64

val strlcat :
  string -> string -> Unsigned.uint64 -> Unsigned.uint64

val strjoinv :
  string option -> string -> string option

val strip_context :
  string -> string -> string option

val string_sized_create :
  Unsigned.uint64 -> String.t structure ptr

val string_create_len :
  string -> int64 -> String.t structure ptr

val string_create :
  string option -> String.t structure ptr

val strfreev :
  string option -> unit

val strescape :
  string -> string option -> string option

val strerror :
  int32 -> string option

val strdup :
  string option -> string option

val strdelimit :
  string -> string option -> int -> string option

val strcompress :
  string -> string option

val strcmp0 :
  string option -> string option -> int32

val strchug :
  string -> string option

val strchomp :
  string -> string option

val strcanon :
  string -> string -> int -> string option

(*Not implemented g_str_tokenize_and_fold type C Array type for Types.Array tag not implemented*)

val str_to_ascii :
  string -> string option -> string option

val str_match_string :
  string -> string -> bool -> bool

val str_is_ascii :
  string -> bool

val str_hash :
  unit ptr -> Unsigned.uint32

val str_has_suffix :
  string -> string -> bool

val str_has_prefix :
  string -> string -> bool

val str_equal :
  unit ptr -> unit ptr -> bool

val stpcpy :
  string -> string -> string option

(*Not implemented g_spawn_sync type C Array type for Types.Array tag not implemented*)

val spawn_exit_error_quark :
  unit -> Unsigned.uint32

val spawn_error_quark :
  unit -> Unsigned.uint32

(*Not implemented g_spawn_command_line_sync type C Array type for Types.Array tag not implemented*)

val spawn_command_line_async :
  string -> (bool, Error.t structure ptr option) result

val spawn_close_pid :
  int32 -> unit

val spawn_check_exit_status :
  int32 -> (bool, Error.t structure ptr option) result

(*Not implemented g_spawn_async_with_pipes type C Array type for Types.Array tag not implemented*)

(*Not implemented g_spawn_async type C Array type for Types.Array tag not implemented*)

val spaced_primes_closest :
  Unsigned.uint32 -> Unsigned.uint32

val source_set_name_by_id :
  Unsigned.uint32 -> string -> unit

val source_remove_by_user_data :
  unit ptr option -> bool

val source_remove_by_funcs_user_data :
  Source_funcs.t structure ptr -> unit ptr option -> bool

val source_remove :
  Unsigned.uint32 -> bool

val slice_set_config :
  Slice_config.t -> int64 -> unit

val slice_get_config_state :
  Slice_config.t -> int64 -> Unsigned.uint32 ptr -> int64 ptr

val slice_get_config :
  Slice_config.t -> int64

val slice_free_chain_with_offset :
  Unsigned.uint64 -> unit ptr option -> Unsigned.uint64 -> unit

val slice_free1 :
  Unsigned.uint64 -> unit ptr option -> unit

val slice_copy :
  Unsigned.uint64 -> unit ptr option -> unit ptr option

val slice_alloc0 :
  Unsigned.uint64 -> unit ptr option

val slice_alloc :
  Unsigned.uint64 -> unit ptr option

val shell_unquote :
  string -> (string option, Error.t structure ptr option) result

val shell_quote :
  string -> string option

(*Not implemented g_shell_parse_argv type C Array type for Types.Array tag not implemented*)

val shell_error_quark :
  unit -> Unsigned.uint32

val setenv :
  string -> string -> bool -> bool

val set_prgname :
  string -> unit

val set_error_literal :
  Unsigned.uint32 -> int32 -> string -> (Error.t structure ptr)

val set_application_name :
  string -> unit

val sequence_swap :
  Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> unit

val sequence_set :
  Sequence_iter.t structure ptr -> unit ptr option -> unit

val sequence_remove_range :
  Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> unit

val sequence_remove :
  Sequence_iter.t structure ptr -> unit

val sequence_range_get_midpoint :
  Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr

val sequence_move_range :
  Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> unit

val sequence_move :
  Sequence_iter.t structure ptr -> Sequence_iter.t structure ptr -> unit

val sequence_insert_before :
  Sequence_iter.t structure ptr -> unit ptr option -> Sequence_iter.t structure ptr

val sequence_get :
  Sequence_iter.t structure ptr -> unit ptr option

val rmdir :
  string -> int32

val reload_user_special_dirs_cache :
  unit -> unit

(*Not implemented g_regex_split_simple return type C Array type for Types.Array tag not handled*)

val regex_match_simple :
  string -> string -> Regex_compile_flags.t_list -> Regex_match_flags.t_list -> bool

(*Not implemented g_regex_escape_string type C Array type for Types.Array tag not implemented*)

val regex_escape_nul :
  string -> int32 -> string option

val regex_error_quark :
  unit -> Unsigned.uint32

val regex_check_replacement :
  string -> (bool * bool, Error.t structure ptr option) result

val realloc_n :
  unit ptr option -> Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val realloc :
  unit ptr option -> Unsigned.uint64 -> unit ptr option

val random_set_seed :
  Unsigned.uint32 -> unit

val random_int_range :
  int32 -> int32 -> int32

val random_int :
  unit -> Unsigned.uint32

val random_double_range :
  float -> float -> float

val random_double :
  unit -> float

val quark_try_string :
  string option -> Unsigned.uint32

val quark_to_string :
  Unsigned.uint32 -> string option

val quark_from_string :
  string option -> Unsigned.uint32

val quark_from_static_string :
  string option -> Unsigned.uint32

val propagate_error :
  Error.t structure ptr -> (Error.t structure ptr option)

val poll :
  Poll_fd.t structure ptr -> Unsigned.uint32 -> int32 -> int32

val pointer_bit_unlock :
  unit ptr -> int32 -> unit

val pointer_bit_trylock :
  unit ptr -> int32 -> bool

val pointer_bit_lock :
  unit ptr -> int32 -> unit

val pattern_match_string :
  Pattern_spec.t structure ptr -> string -> bool

val pattern_match_simple :
  string -> string -> bool

val pattern_match :
  Pattern_spec.t structure ptr -> Unsigned.uint32 -> string -> string option -> bool

val path_skip_root :
  string -> string option

val path_is_absolute :
  string -> bool

val path_get_dirname :
  string -> string option

val path_get_basename :
  string -> string option

(*Not implemented g_parse_debug_string type C Array type for Types.Array tag not implemented*)

val option_error_quark :
  unit -> Unsigned.uint32

val once_init_leave :
  unit ptr -> Unsigned.uint64 -> unit

val once_init_enter :
  unit ptr -> bool

val on_error_stack_trace :
  string -> unit

val on_error_query :
  string -> unit

val number_parser_error_quark :
  unit -> Unsigned.uint32

val nullify_pointer :
  unit ptr -> unit

val mkdir_with_parents :
  string -> int32 -> int32

val memdup :
  unit ptr option -> Unsigned.uint32 -> unit ptr option

val markup_escape_text :
  string -> int64 -> string option

val markup_error_quark :
  unit -> Unsigned.uint32

val malloc_n :
  Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val malloc0_n :
  Unsigned.uint64 -> Unsigned.uint64 -> unit ptr option

val malloc0 :
  Unsigned.uint64 -> unit ptr option

val malloc :
  Unsigned.uint64 -> unit ptr option

val main_depth :
  unit -> int32

val main_current_source :
  unit -> Source.t structure ptr

val main_context_ref_thread_default :
  unit -> Main_context.t structure ptr

val main_context_get_thread_default :
  unit -> Main_context.t structure ptr

val main_context_default :
  unit -> Main_context.t structure ptr

val log_writer_supports_color :
  int32 -> bool

(*Not implemented g_log_writer_standard_streams type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_writer_journald type C Array type for Types.Array tag not implemented*)

val log_writer_is_journald :
  int32 -> bool

(*Not implemented g_log_writer_format_fields type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_writer_default type C Array type for Types.Array tag not implemented*)

val log_variant :
  string option -> Log_level_flags.t_list -> Variant.t structure ptr -> unit

(*Not implemented g_log_structured_array type C Array type for Types.Array tag not implemented*)

(*Not implemented g_log_set_writer_func type callback not implemented*)

(*Not implemented g_log_set_handler_full type callback not implemented*)

val log_set_fatal_mask :
  string -> Log_level_flags.t_list -> Log_level_flags.t_list

val log_set_always_fatal :
  Log_level_flags.t_list -> Log_level_flags.t_list

val log_remove_handler :
  string -> Unsigned.uint32 -> unit

val log_default_handler :
  string option -> Log_level_flags.t_list -> string option -> unit ptr option -> unit

(*Not implemented g_locale_to_utf8 type C Array type for Types.Array tag not implemented*)

(*Not implemented g_locale_from_utf8 return type C Array type for Types.Array tag not handled*)

(*Not implemented g_listenv return type C Array type for Types.Array tag not handled*)

val key_file_error_quark :
  unit -> Unsigned.uint32

val io_create_watch :
  IOChannel.t structure ptr -> IOCondition.t_list -> Source.t structure ptr

val io_channel_error_quark :
  unit -> Unsigned.uint32

val io_channel_error_from_errno :
  int32 -> IOChannel_error.t

(*Not implemented g_io_add_watch_full type callback not implemented*)

val intern_string :
  string option -> string option

val intern_static_string :
  string option -> string option

val int_hash :
  unit ptr -> Unsigned.uint32

val int_equal :
  unit ptr -> unit ptr -> bool

val int64_hash :
  unit ptr -> Unsigned.uint32

val int64_equal :
  unit ptr -> unit ptr -> bool

val idle_source_create :
  unit -> Source.t structure ptr

val idle_remove_by_data :
  unit ptr option -> bool

(*Not implemented g_idle_add_full type callback not implemented*)

val hostname_to_unicode :
  string -> string option

val hostname_to_ascii :
  string -> string option

val hostname_is_non_ascii :
  string -> bool

val hostname_is_ip_address :
  string -> bool

val hostname_is_ascii_encoded :
  string -> bool

val hook_unref :
  Hook_list.t structure ptr -> Hook.t structure ptr -> unit

val hook_prepend :
  Hook_list.t structure ptr -> Hook.t structure ptr -> unit

val hook_insert_before :
  Hook_list.t structure ptr -> Hook.t structure ptr option -> Hook.t structure ptr -> unit

val hook_free :
  Hook_list.t structure ptr -> Hook.t structure ptr -> unit

val hook_destroy_link :
  Hook_list.t structure ptr -> Hook.t structure ptr -> unit

val hook_destroy :
  Hook_list.t structure ptr -> Unsigned.uint64 -> bool

val hash_table_unref :
  Hash_table.t.t structure (* unit *) ptr -> unit

val hash_table_steal_all :
  Hash_table.t.t structure (* unit *) ptr -> unit

val hash_table_steal :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> bool

val hash_table_size :
  Hash_table.t.t structure (* unit *) ptr -> Unsigned.uint32

val hash_table_replace :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option -> bool

val hash_table_remove_all :
  Hash_table.t.t structure (* unit *) ptr -> unit

val hash_table_remove :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> bool

val hash_table_lookup_extended :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> (bool * unit ptr option * unit ptr option)

val hash_table_lookup :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option

val hash_table_insert :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option -> bool

val hash_table_destroy :
  Hash_table.t.t structure (* unit *) ptr -> unit

val hash_table_contains :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> bool

val hash_table_add :
  Hash_table.t.t structure (* unit *) ptr -> unit ptr option -> bool

val getenv :
  string -> string option

val get_user_special_dir :
  User_directory.t -> string option

val get_user_runtime_dir :
  unit -> string option

val get_user_name :
  unit -> string option

val get_user_data_dir :
  unit -> string option

val get_user_config_dir :
  unit -> string option

val get_user_cache_dir :
  unit -> string option

val get_tmp_dir :
  unit -> string option

(*Not implemented g_get_system_data_dirs return type C Array type for Types.Array tag not handled*)

(*Not implemented g_get_system_config_dirs return type C Array type for Types.Array tag not handled*)

val get_real_time :
  unit -> int64

val get_real_name :
  unit -> string option

val get_prgname :
  unit -> string option

val get_num_processors :
  unit -> Unsigned.uint32

val get_monotonic_time :
  unit -> int64

(*Not implemented g_get_locale_variants return type C Array type for Types.Array tag not handled*)

(*Not implemented g_get_language_names return type C Array type for Types.Array tag not handled*)

val get_host_name :
  unit -> string option

val get_home_dir :
  unit -> string option

val get_filename_charsets :
  string -> bool

(*Not implemented g_get_environ return type C Array type for Types.Array tag not handled*)

val get_current_time :
  Time_val.t structure ptr -> unit

val get_current_dir :
  unit -> string option

val get_codeset :
  unit -> string option

val get_charset :
  unit -> (bool * string)

val get_application_name :
  unit -> string option

val free :
  unit ptr option -> unit

val format_size_full :
  Unsigned.uint64 -> Format_size_flags.t_list -> string option

val format_size :
  Unsigned.uint64 -> string option

val find_program_in_path :
  string -> string option

val filename_to_utf8 :
  string -> int64 -> (string option * Unsigned.uint64 * Unsigned.uint64, Error.t structure ptr option) result

val filename_to_uri :
  string -> string option -> (string option, Error.t structure ptr option) result

val filename_from_utf8 :
  string -> int64 -> (string option * Unsigned.uint64 * Unsigned.uint64, Error.t structure ptr option) result

val filename_from_uri :
  string -> (string option * string option, Error.t structure ptr option) result

val filename_display_name :
  string -> string option

val filename_display_basename :
  string -> string option

val file_test :
  string -> File_test.t_list -> bool

(*Not implemented g_file_set_contents type C Array type for Types.Array tag not implemented*)

val file_read_link :
  string -> (string option, Error.t structure ptr option) result

val file_open_tmp :
  string option -> (int32 * string, Error.t structure ptr option) result

(*Not implemented g_file_get_contents type C Array type for Types.Array tag not implemented*)

val file_error_quark :
  unit -> Unsigned.uint32

val file_error_from_errno :
  int32 -> File_error.t

(*Not implemented g_environ_unsetenv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_environ_setenv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_environ_getenv type C Array type for Types.Array tag not implemented*)

val dpgettext2 :
  string option -> string -> string -> string option

val dpgettext :
  string option -> string -> Unsigned.uint64 -> string option

val double_hash :
  unit ptr -> Unsigned.uint32

val double_equal :
  unit ptr -> unit ptr -> bool

val dngettext :
  string option -> string -> string -> Unsigned.uint64 -> string option

val direct_hash :
  unit ptr option -> Unsigned.uint32

val direct_equal :
  unit ptr option -> unit ptr option -> bool

val dir_make_tmp :
  string option -> (string option, Error.t structure ptr option) result

val dgettext :
  string option -> string -> string option

val dcgettext :
  string option -> string -> int32 -> string option

val date_valid_year :
  Unsigned.uint16 -> bool

val date_valid_weekday :
  Date_weekday.t -> bool

val date_valid_month :
  Date_month.t -> bool

val date_valid_julian :
  Unsigned.uint32 -> bool

val date_valid_dmy :
  Unsigned.uint8 -> Date_month.t -> Unsigned.uint16 -> bool

val date_valid_day :
  Unsigned.uint8 -> bool

val date_time_hash :
  unit ptr -> Unsigned.uint32

val date_time_equal :
  unit ptr -> unit ptr -> bool

val date_time_compare :
  unit ptr -> unit ptr -> int32

val date_strftime :
  string -> Unsigned.uint64 -> string -> Date.t structure ptr -> Unsigned.uint64

val date_is_leap_year :
  Unsigned.uint16 -> bool

val date_get_sunday_weeks_in_year :
  Unsigned.uint16 -> Unsigned.uint8

val date_get_monday_weeks_in_year :
  Unsigned.uint16 -> Unsigned.uint8

val date_get_days_in_month :
  Date_month.t -> Unsigned.uint16 -> Unsigned.uint8

val dataset_id_get_data :
  unit ptr -> Unsigned.uint32 -> unit ptr option

(*Not implemented g_dataset_foreach type callback not implemented*)

val dataset_destroy :
  unit ptr -> unit

val datalist_unset_flags :
  Data.t structure ptr -> Unsigned.uint32 -> unit

val datalist_set_flags :
  Data.t structure ptr -> Unsigned.uint32 -> unit

val datalist_id_get_data :
  Data.t structure ptr -> Unsigned.uint32 -> unit ptr option

val datalist_get_flags :
  Data.t structure ptr -> Unsigned.uint32

val datalist_get_data :
  Data.t structure ptr -> string -> unit ptr option

(*Not implemented g_datalist_foreach type callback not implemented*)

(*Not implemented g_convert_with_fallback type C Array type for Types.Array tag not implemented*)

val convert_error_quark :
  unit -> Unsigned.uint32

(*Not implemented g_convert type C Array type for Types.Array tag not implemented*)

(*Not implemented g_compute_hmac_for_string type C Array type for Types.Array tag not implemented*)

(*Not implemented g_compute_hmac_for_data type C Array type for Types.Array tag not implemented*)

val compute_hmac_for_bytes :
  Checksum_type.t -> Bytes.t structure ptr -> Bytes.t structure ptr -> string option

val compute_checksum_for_string :
  Checksum_type.t -> string -> int64 -> string option

(*Not implemented g_compute_checksum_for_data type C Array type for Types.Array tag not implemented*)

val compute_checksum_for_bytes :
  Checksum_type.t -> Bytes.t structure ptr -> string option

val close :
  int32 -> (bool, Error.t structure ptr option) result

val clear_error :
  unit -> (unit, Error.t structure ptr option) result

val child_watch_source_create :
  int32 -> Source.t structure ptr

(*Not implemented g_child_watch_add_full type callback not implemented*)

val checksum_type_get_length :
  Checksum_type.t -> int64

val check_version :
  Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> string option

val chdir :
  string -> int32

val byte_array_unref :
  Byte_array.t structure ptr -> unit

(*Not implemented g_byte_array_new_take type C Array type for Types.Array tag not implemented*)

val byte_array_create :
  unit -> Byte_array.t structure ptr

val byte_array_free_to_bytes :
  Byte_array.t structure ptr -> Bytes.t structure ptr

val byte_array_free :
  Byte_array.t structure ptr -> bool -> Unsigned.uint8 ptr

(*Not implemented g_build_pathv type C Array type for Types.Array tag not implemented*)

(*Not implemented g_build_filenamev type C Array type for Types.Array tag not implemented*)

val bookmark_file_error_quark :
  unit -> Unsigned.uint32

val bit_unlock :
  int32 ptr -> int32 -> unit

val bit_trylock :
  int32 ptr -> int32 -> bool

val bit_storage :
  Unsigned.uint64 -> Unsigned.uint32

val bit_nth_msf :
  Unsigned.uint64 -> int32 -> int32

val bit_nth_lsf :
  Unsigned.uint64 -> int32 -> int32

val bit_lock :
  int32 ptr -> int32 -> unit

(*Not implemented g_base64_encode_step type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_encode_close type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_encode type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_decode_inplace type C Array type for Types.Array tag not implemented*)

(*Not implemented g_base64_decode return type C Array type for Types.Array tag not handled*)

val atomic_pointer_xor :
  unit ptr -> Unsigned.uint64 -> Unsigned.uint64

val atomic_pointer_set :
  unit ptr -> unit ptr option -> unit

val atomic_pointer_or :
  unit ptr -> Unsigned.uint64 -> Unsigned.uint64

val atomic_pointer_get :
  unit ptr -> unit ptr option

val atomic_pointer_compare_and_exchange :
  unit ptr -> unit ptr option -> unit ptr option -> bool

val atomic_pointer_and :
  unit ptr -> Unsigned.uint64 -> Unsigned.uint64

val atomic_pointer_add :
  unit ptr -> int64 -> int64

val atomic_int_xor :
  Unsigned.uint32 ptr -> Unsigned.uint32 -> Unsigned.uint32

val atomic_int_set :
  int32 ptr -> int32 -> unit

val atomic_int_or :
  Unsigned.uint32 ptr -> Unsigned.uint32 -> Unsigned.uint32

val atomic_int_inc :
  int32 ptr -> unit

val atomic_int_get :
  int32 ptr -> int32

val atomic_int_dec_and_test :
  int32 ptr -> bool

val atomic_int_compare_and_exchange :
  int32 ptr -> int32 -> int32 -> bool

val atomic_int_and :
  Unsigned.uint32 ptr -> Unsigned.uint32 -> Unsigned.uint32

val atomic_int_add :
  int32 ptr -> int32 -> int32

val assertion_message_error :
  string -> string -> int32 -> string -> string -> Error.t structure ptr -> Unsigned.uint32 -> int32 -> unit

val assertion_message_cmpstr :
  string -> string -> int32 -> string -> string -> string -> string -> string -> unit

val assertion_message :
  string -> string -> int32 -> string -> string -> unit

val assert_warning :
  string -> string -> int32 -> string -> string -> unit

val ascii_xdigit_value :
  int -> int32

val ascii_toupper :
  int -> int

val ascii_tolower :
  int -> int

val ascii_strup :
  string -> int64 -> string option

val ascii_strtoull :
  string -> Unsigned.uint32 -> (Unsigned.uint64 * string)

val ascii_strtoll :
  string -> Unsigned.uint32 -> (int64 * string)

val ascii_strtod :
  string -> (float * string)

val ascii_strncasecmp :
  string -> string -> Unsigned.uint64 -> int32

val ascii_string_to_unsigned :
  string -> Unsigned.uint32 -> Unsigned.uint64 -> Unsigned.uint64 -> (bool * Unsigned.uint64, Error.t structure ptr option) result

val ascii_string_to_signed :
  string -> Unsigned.uint32 -> int64 -> int64 -> (bool * int64, Error.t structure ptr option) result

val ascii_strdown :
  string -> int64 -> string option

val ascii_strcasecmp :
  string -> string -> int32

val ascii_formatd :
  string -> int32 -> string -> float -> string option

val ascii_dtostr :
  string -> int32 -> float -> string option

val ascii_digit_value :
  int -> int32

val access :
  string -> int32 -> int32

