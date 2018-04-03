open Ctypes
open Foreign

(*DEPRECATED : ActionEntry*)
(*DEPRECATED : ActivatableIface*)
let c_BINARY_AGE = Int32.of_string "2226"
(*DEPRECATED : ColorSelectionChangePaletteFunc*)
(*DEPRECATED : ColorSelectionChangePaletteWithScreenFunc*)
(*DEPRECATED : IMPreeditStyle*)
(*DEPRECATED : IMStatusStyle*)
let c_INPUT_ERROR = Int32.of_string "-1"
let c_INTERFACE_AGE = Int32.of_string "26"
let c_LEVEL_BAR_OFFSET_FULL = "full"
let c_LEVEL_BAR_OFFSET_HIGH = "high"
let c_LEVEL_BAR_OFFSET_LOW = "low"
let c_MAJOR_VERSION = Int32.of_string "3"
let c_MAX_COMPOSE_LEN = Int32.of_string "7"
let c_MICRO_VERSION = Int32.of_string "26"
let c_MINOR_VERSION = Int32.of_string "22"
let c_PAPER_NAME_A3 = "iso_a3"
let c_PAPER_NAME_A4 = "iso_a4"
let c_PAPER_NAME_A5 = "iso_a5"
let c_PAPER_NAME_B5 = "iso_b5"
let c_PAPER_NAME_EXECUTIVE = "na_executive"
let c_PAPER_NAME_LEGAL = "na_legal"
let c_PAPER_NAME_LETTER = "na_letter"
let c_PATH_PRIO_MASK = Int32.of_string "15"
let c_PRINT_SETTINGS_COLLATE = "collate"
let c_PRINT_SETTINGS_DEFAULT_SOURCE = "default-source"
let c_PRINT_SETTINGS_DITHER = "dither"
let c_PRINT_SETTINGS_DUPLEX = "duplex"
let c_PRINT_SETTINGS_FINISHINGS = "finishings"
let c_PRINT_SETTINGS_MEDIA_TYPE = "media-type"
let c_PRINT_SETTINGS_NUMBER_UP = "number-up"
let c_PRINT_SETTINGS_NUMBER_UP_LAYOUT = "number-up-layout"
let c_PRINT_SETTINGS_N_COPIES = "n-copies"
let c_PRINT_SETTINGS_ORIENTATION = "orientation"
let c_PRINT_SETTINGS_OUTPUT_BASENAME = "output-basename"
let c_PRINT_SETTINGS_OUTPUT_BIN = "output-bin"
let c_PRINT_SETTINGS_OUTPUT_DIR = "output-dir"
let c_PRINT_SETTINGS_OUTPUT_FILE_FORMAT = "output-file-format"
let c_PRINT_SETTINGS_OUTPUT_URI = "output-uri"
let c_PRINT_SETTINGS_PAGE_RANGES = "page-ranges"
let c_PRINT_SETTINGS_PAGE_SET = "page-set"
let c_PRINT_SETTINGS_PAPER_FORMAT = "paper-format"
let c_PRINT_SETTINGS_PAPER_HEIGHT = "paper-height"
let c_PRINT_SETTINGS_PAPER_WIDTH = "paper-width"
let c_PRINT_SETTINGS_PRINTER = "printer"
let c_PRINT_SETTINGS_PRINTER_LPI = "printer-lpi"
let c_PRINT_SETTINGS_PRINT_PAGES = "print-pages"
let c_PRINT_SETTINGS_QUALITY = "quality"
let c_PRINT_SETTINGS_RESOLUTION = "resolution"
let c_PRINT_SETTINGS_RESOLUTION_X = "resolution-x"
let c_PRINT_SETTINGS_RESOLUTION_Y = "resolution-y"
let c_PRINT_SETTINGS_REVERSE = "reverse"
let c_PRINT_SETTINGS_SCALE = "scale"
let c_PRINT_SETTINGS_USE_COLOR = "use-color"
let c_PRINT_SETTINGS_WIN32_DRIVER_EXTRA = "win32-driver-extra"
let c_PRINT_SETTINGS_WIN32_DRIVER_VERSION = "win32-driver-version"
let c_PRIORITY_RESIZE = Int32.of_string "10"
(*DEPRECATED : PathPriorityType*)
(*DEPRECATED : PathType*)
(*DEPRECATED : RadioActionEntry*)
(*DEPRECATED : RcTokenType*)
(*DEPRECATED : STOCK_ABOUT*)
(*DEPRECATED : STOCK_ADD*)
(*DEPRECATED : STOCK_APPLY*)
(*DEPRECATED : STOCK_BOLD*)
(*DEPRECATED : STOCK_CANCEL*)
(*DEPRECATED : STOCK_CAPS_LOCK_WARNING*)
(*DEPRECATED : STOCK_CDROM*)
(*DEPRECATED : STOCK_CLEAR*)
(*DEPRECATED : STOCK_CLOSE*)
(*DEPRECATED : STOCK_COLOR_PICKER*)
(*DEPRECATED : STOCK_CONNECT*)
(*DEPRECATED : STOCK_CONVERT*)
(*DEPRECATED : STOCK_COPY*)
(*DEPRECATED : STOCK_CUT*)
(*DEPRECATED : STOCK_DELETE*)
(*DEPRECATED : STOCK_DIALOG_AUTHENTICATION*)
(*DEPRECATED : STOCK_DIALOG_ERROR*)
(*DEPRECATED : STOCK_DIALOG_INFO*)
(*DEPRECATED : STOCK_DIALOG_QUESTION*)
(*DEPRECATED : STOCK_DIALOG_WARNING*)
(*DEPRECATED : STOCK_DIRECTORY*)
(*DEPRECATED : STOCK_DISCARD*)
(*DEPRECATED : STOCK_DISCONNECT*)
(*DEPRECATED : STOCK_DND*)
(*DEPRECATED : STOCK_DND_MULTIPLE*)
(*DEPRECATED : STOCK_EDIT*)
(*DEPRECATED : STOCK_EXECUTE*)
(*DEPRECATED : STOCK_FILE*)
(*DEPRECATED : STOCK_FIND*)
(*DEPRECATED : STOCK_FIND_AND_REPLACE*)
(*DEPRECATED : STOCK_FLOPPY*)
(*DEPRECATED : STOCK_FULLSCREEN*)
(*DEPRECATED : STOCK_GOTO_BOTTOM*)
(*DEPRECATED : STOCK_GOTO_FIRST*)
(*DEPRECATED : STOCK_GOTO_LAST*)
(*DEPRECATED : STOCK_GOTO_TOP*)
(*DEPRECATED : STOCK_GO_BACK*)
(*DEPRECATED : STOCK_GO_DOWN*)
(*DEPRECATED : STOCK_GO_FORWARD*)
(*DEPRECATED : STOCK_GO_UP*)
(*DEPRECATED : STOCK_HARDDISK*)
(*DEPRECATED : STOCK_HELP*)
(*DEPRECATED : STOCK_HOME*)
(*DEPRECATED : STOCK_INDENT*)
(*DEPRECATED : STOCK_INDEX*)
(*DEPRECATED : STOCK_INFO*)
(*DEPRECATED : STOCK_ITALIC*)
(*DEPRECATED : STOCK_JUMP_TO*)
(*DEPRECATED : STOCK_JUSTIFY_CENTER*)
(*DEPRECATED : STOCK_JUSTIFY_FILL*)
(*DEPRECATED : STOCK_JUSTIFY_LEFT*)
(*DEPRECATED : STOCK_JUSTIFY_RIGHT*)
(*DEPRECATED : STOCK_LEAVE_FULLSCREEN*)
(*DEPRECATED : STOCK_MEDIA_FORWARD*)
(*DEPRECATED : STOCK_MEDIA_NEXT*)
(*DEPRECATED : STOCK_MEDIA_PAUSE*)
(*DEPRECATED : STOCK_MEDIA_PLAY*)
(*DEPRECATED : STOCK_MEDIA_PREVIOUS*)
(*DEPRECATED : STOCK_MEDIA_RECORD*)
(*DEPRECATED : STOCK_MEDIA_REWIND*)
(*DEPRECATED : STOCK_MEDIA_STOP*)
(*DEPRECATED : STOCK_MISSING_IMAGE*)
(*DEPRECATED : STOCK_NETWORK*)
(*DEPRECATED : STOCK_NEW*)
(*DEPRECATED : STOCK_NO*)
(*DEPRECATED : STOCK_OK*)
(*DEPRECATED : STOCK_OPEN*)
(*DEPRECATED : STOCK_ORIENTATION_LANDSCAPE*)
(*DEPRECATED : STOCK_ORIENTATION_PORTRAIT*)
(*DEPRECATED : STOCK_ORIENTATION_REVERSE_LANDSCAPE*)
(*DEPRECATED : STOCK_ORIENTATION_REVERSE_PORTRAIT*)
(*DEPRECATED : STOCK_PAGE_SETUP*)
(*DEPRECATED : STOCK_PASTE*)
(*DEPRECATED : STOCK_PREFERENCES*)
(*DEPRECATED : STOCK_PRINT*)
(*DEPRECATED : STOCK_PRINT_ERROR*)
(*DEPRECATED : STOCK_PRINT_PAUSED*)
(*DEPRECATED : STOCK_PRINT_PREVIEW*)
(*DEPRECATED : STOCK_PRINT_REPORT*)
(*DEPRECATED : STOCK_PRINT_WARNING*)
(*DEPRECATED : STOCK_PROPERTIES*)
(*DEPRECATED : STOCK_QUIT*)
(*DEPRECATED : STOCK_REDO*)
(*DEPRECATED : STOCK_REFRESH*)
(*DEPRECATED : STOCK_REMOVE*)
(*DEPRECATED : STOCK_REVERT_TO_SAVED*)
(*DEPRECATED : STOCK_SAVE*)
(*DEPRECATED : STOCK_SAVE_AS*)
(*DEPRECATED : STOCK_SELECT_ALL*)
(*DEPRECATED : STOCK_SELECT_COLOR*)
(*DEPRECATED : STOCK_SELECT_FONT*)
(*DEPRECATED : STOCK_SORT_ASCENDING*)
(*DEPRECATED : STOCK_SORT_DESCENDING*)
(*DEPRECATED : STOCK_SPELL_CHECK*)
(*DEPRECATED : STOCK_STOP*)
(*DEPRECATED : STOCK_STRIKETHROUGH*)
(*DEPRECATED : STOCK_UNDELETE*)
(*DEPRECATED : STOCK_UNDERLINE*)
(*DEPRECATED : STOCK_UNDO*)
(*DEPRECATED : STOCK_UNINDENT*)
(*DEPRECATED : STOCK_YES*)
(*DEPRECATED : STOCK_ZOOM_100*)
(*DEPRECATED : STOCK_ZOOM_FIT*)
(*DEPRECATED : STOCK_ZOOM_IN*)
(*DEPRECATED : STOCK_ZOOM_OUT*)
let c_STYLE_CLASS_ACCELERATOR = "accelerator"
let c_STYLE_CLASS_ARROW = "arrow"
let c_STYLE_CLASS_BACKGROUND = "background"
let c_STYLE_CLASS_BOTTOM = "bottom"
let c_STYLE_CLASS_BUTTON = "button"
let c_STYLE_CLASS_CALENDAR = "calendar"
let c_STYLE_CLASS_CELL = "cell"
let c_STYLE_CLASS_CHECK = "check"
let c_STYLE_CLASS_COMBOBOX_ENTRY = "combobox-entry"
let c_STYLE_CLASS_CONTEXT_MENU = "context-menu"
let c_STYLE_CLASS_CSD = "csd"
let c_STYLE_CLASS_CURSOR_HANDLE = "cursor-handle"
let c_STYLE_CLASS_DEFAULT = "default"
let c_STYLE_CLASS_DESTRUCTIVE_ACTION = "destructive-action"
let c_STYLE_CLASS_DIM_LABEL = "dim-label"
let c_STYLE_CLASS_DND = "dnd"
let c_STYLE_CLASS_DOCK = "dock"
let c_STYLE_CLASS_ENTRY = "entry"
let c_STYLE_CLASS_ERROR = "error"
let c_STYLE_CLASS_EXPANDER = "expander"
let c_STYLE_CLASS_FLAT = "flat"
let c_STYLE_CLASS_FRAME = "frame"
let c_STYLE_CLASS_GRIP = "grip"
let c_STYLE_CLASS_HEADER = "header"
let c_STYLE_CLASS_HIGHLIGHT = "highlight"
let c_STYLE_CLASS_HORIZONTAL = "horizontal"
let c_STYLE_CLASS_IMAGE = "image"
let c_STYLE_CLASS_INFO = "info"
let c_STYLE_CLASS_INLINE_TOOLBAR = "inline-toolbar"
let c_STYLE_CLASS_INSERTION_CURSOR = "insertion-cursor"
let c_STYLE_CLASS_LABEL = "label"
let c_STYLE_CLASS_LEFT = "left"
let c_STYLE_CLASS_LEVEL_BAR = "level-bar"
let c_STYLE_CLASS_LINKED = "linked"
let c_STYLE_CLASS_LIST = "list"
let c_STYLE_CLASS_LIST_ROW = "list-row"
let c_STYLE_CLASS_MARK = "mark"
let c_STYLE_CLASS_MENU = "menu"
let c_STYLE_CLASS_MENUBAR = "menubar"
let c_STYLE_CLASS_MENUITEM = "menuitem"
let c_STYLE_CLASS_MESSAGE_DIALOG = "message-dialog"
let c_STYLE_CLASS_MONOSPACE = "monospace"
let c_STYLE_CLASS_NEEDS_ATTENTION = "needs-attention"
let c_STYLE_CLASS_NOTEBOOK = "notebook"
let c_STYLE_CLASS_OSD = "osd"
let c_STYLE_CLASS_OVERSHOOT = "overshoot"
let c_STYLE_CLASS_PANE_SEPARATOR = "pane-separator"
let c_STYLE_CLASS_PAPER = "paper"
let c_STYLE_CLASS_POPOVER = "popover"
let c_STYLE_CLASS_POPUP = "popup"
let c_STYLE_CLASS_PRIMARY_TOOLBAR = "primary-toolbar"
let c_STYLE_CLASS_PROGRESSBAR = "progressbar"
let c_STYLE_CLASS_PULSE = "pulse"
let c_STYLE_CLASS_QUESTION = "question"
let c_STYLE_CLASS_RADIO = "radio"
let c_STYLE_CLASS_RAISED = "raised"
let c_STYLE_CLASS_READ_ONLY = "read-only"
let c_STYLE_CLASS_RIGHT = "right"
let c_STYLE_CLASS_RUBBERBAND = "rubberband"
let c_STYLE_CLASS_SCALE = "scale"
let c_STYLE_CLASS_SCALE_HAS_MARKS_ABOVE = "scale-has-marks-above"
let c_STYLE_CLASS_SCALE_HAS_MARKS_BELOW = "scale-has-marks-below"
let c_STYLE_CLASS_SCROLLBAR = "scrollbar"
let c_STYLE_CLASS_SCROLLBARS_JUNCTION = "scrollbars-junction"
let c_STYLE_CLASS_SEPARATOR = "separator"
let c_STYLE_CLASS_SIDEBAR = "sidebar"
let c_STYLE_CLASS_SLIDER = "slider"
let c_STYLE_CLASS_SPINBUTTON = "spinbutton"
let c_STYLE_CLASS_SPINNER = "spinner"
let c_STYLE_CLASS_STATUSBAR = "statusbar"
let c_STYLE_CLASS_SUBTITLE = "subtitle"
let c_STYLE_CLASS_SUGGESTED_ACTION = "suggested-action"
let c_STYLE_CLASS_TITLE = "title"
let c_STYLE_CLASS_TITLEBAR = "titlebar"
let c_STYLE_CLASS_TOOLBAR = "toolbar"
let c_STYLE_CLASS_TOOLTIP = "tooltip"
let c_STYLE_CLASS_TOP = "top"
let c_STYLE_CLASS_TOUCH_SELECTION = "touch-selection"
let c_STYLE_CLASS_TROUGH = "trough"
let c_STYLE_CLASS_UNDERSHOOT = "undershoot"
let c_STYLE_CLASS_VERTICAL = "vertical"
let c_STYLE_CLASS_VIEW = "view"
let c_STYLE_CLASS_WARNING = "warning"
let c_STYLE_CLASS_WIDE = "wide"
let c_STYLE_PROPERTY_BACKGROUND_COLOR = "background-color"
let c_STYLE_PROPERTY_BACKGROUND_IMAGE = "background-image"
let c_STYLE_PROPERTY_BORDER_COLOR = "border-color"
let c_STYLE_PROPERTY_BORDER_RADIUS = "border-radius"
let c_STYLE_PROPERTY_BORDER_STYLE = "border-style"
let c_STYLE_PROPERTY_BORDER_WIDTH = "border-width"
let c_STYLE_PROPERTY_COLOR = "color"
let c_STYLE_PROPERTY_FONT = "font"
let c_STYLE_PROPERTY_MARGIN = "margin"
let c_STYLE_PROPERTY_PADDING = "padding"
let c_STYLE_PROVIDER_PRIORITY_APPLICATION = Int32.of_string "600"
let c_STYLE_PROVIDER_PRIORITY_FALLBACK = Int32.of_string "1"
let c_STYLE_PROVIDER_PRIORITY_SETTINGS = Int32.of_string "400"
let c_STYLE_PROVIDER_PRIORITY_THEME = Int32.of_string "200"
let c_STYLE_PROVIDER_PRIORITY_USER = Int32.of_string "800"
(*DEPRECATED : STYLE_REGION_COLUMN*)
(*DEPRECATED : STYLE_REGION_COLUMN_HEADER*)
(*DEPRECATED : STYLE_REGION_ROW*)
(*DEPRECATED : STYLE_REGION_TAB*)
(*DEPRECATED : StateType*)
(*DEPRECATED : StockItem*)
let c_TEXT_VIEW_PRIORITY_VALIDATE = Int32.of_string "5"
let c_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = Int32.of_string "-1"
let c_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = Int32.of_string "-2"
(*DEPRECATED : ToggleActionEntry*)
(*DEPRECATED : ToolbarSpaceStyle*)
(*DEPRECATED : TranslateFunc*)
(*DEPRECATED : UIManagerItemType*)
let accel_groups_activate =
  foreign "gtk_accel_groups_activate" (Object.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))

let accel_groups_from_object =
  foreign "gtk_accel_groups_from_object" (Object.t_typ @-> returning (ptr SList.t_typ))

let accelerator_get_default_mod_mask =
  foreign "gtk_accelerator_get_default_mod_mask" (void @-> returning (Modifier_type.t_list_view))

let accelerator_get_label =
  foreign "gtk_accelerator_get_label" (uint32_t @-> Modifier_type.t_list_view @-> returning (string_opt))

let accelerator_get_label_with_keycode =
  foreign "gtk_accelerator_get_label_with_keycode" (Display.t_typ @-> uint32_t @-> uint32_t @-> Modifier_type.t_list_view @-> returning (string_opt))

let accelerator_name =
  foreign "gtk_accelerator_name" (uint32_t @-> Modifier_type.t_list_view @-> returning (string_opt))

let accelerator_name_with_keycode =
  foreign "gtk_accelerator_name_with_keycode" (Display.t_typ @-> uint32_t @-> uint32_t @-> Modifier_type.t_list_view @-> returning (string_opt))

let accelerator_parse accelerator =
  let accelerator_parse_raw =
    foreign "gtk_accelerator_parse" (string @-> ptr (uint32_t) @-> ptr (Modifier_type.t_list_view) @-> returning (void))
  in
  let accelerator_key_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let accelerator_mods_ptr = allocate Modifier_type.t_view (Modifier_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = accelerator_parse_raw accelerator accelerator_key_ptr accelerator_mods_ptr in
  let accelerator_key = !@ accelerator_key_ptr in
  let accelerator_mods = (!@ accelerator_mods_ptr) in
  (accelerator_key, accelerator_mods)
(*Not implemented gtk_accelerator_parse_with_keycode type C Array type for Types.Array tag not implemented*)

let accelerator_set_default_mod_mask =
  foreign "gtk_accelerator_set_default_mod_mask" (Modifier_type.t_list_view @-> returning (void))

let accelerator_valid =
  foreign "gtk_accelerator_valid" (uint32_t @-> Modifier_type.t_list_view @-> returning (bool))

(*DEPRECATED : alternative_dialog_button_order*)
let binding_entry_add_signal_from_string =
  foreign "gtk_binding_entry_add_signal_from_string" (ptr Binding_set.t_typ @-> string @-> returning (Token_type.t_view))

let binding_entry_add_signall =
  foreign "gtk_binding_entry_add_signall" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> string @-> ptr SList.t_typ @-> returning (void))

let binding_entry_remove =
  foreign "gtk_binding_entry_remove" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))

let binding_entry_skip =
  foreign "gtk_binding_entry_skip" (ptr Binding_set.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (void))

let binding_set_find =
  foreign "gtk_binding_set_find" (string @-> returning (ptr_opt Binding_set.t_typ))

let bindings_activate =
  foreign "gtk_bindings_activate" (Object.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))

let bindings_activate_event =
  foreign "gtk_bindings_activate_event" (Object.t_typ @-> ptr Event_key.t_typ @-> returning (bool))

let builder_error_quark =
  foreign "gtk_builder_error_quark" (void @-> returning (uint32_t))

let cairo_should_draw_window =
  foreign "gtk_cairo_should_draw_window" (ptr Context.t_typ @-> Window.t_typ @-> returning (bool))

let cairo_transform_to_window =
  foreign "gtk_cairo_transform_to_window" (ptr Context.t_typ @-> Widget.t_typ @-> Window.t_typ @-> returning (void))

let check_version =
  foreign "gtk_check_version" (uint32_t @-> uint32_t @-> uint32_t @-> returning (string_opt))

let css_provider_error_quark =
  foreign "gtk_css_provider_error_quark" (void @-> returning (uint32_t))

let device_grab_add =
  foreign "gtk_device_grab_add" (Widget.t_typ @-> Device.t_typ @-> bool @-> returning (void))

let device_grab_remove =
  foreign "gtk_device_grab_remove" (Widget.t_typ @-> Device.t_typ @-> returning (void))

let disable_setlocale =
  foreign "gtk_disable_setlocale" (void @-> returning (void))

let distribute_natural_allocation =
  foreign "gtk_distribute_natural_allocation" (int32_t @-> uint32_t @-> ptr Requested_size.t_typ @-> returning (int32_t))

let drag_cancel =
  foreign "gtk_drag_cancel" (Drag_context.t_typ @-> returning (void))

let drag_finish =
  foreign "gtk_drag_finish" (Drag_context.t_typ @-> bool @-> bool @-> uint32_t @-> returning (void))

let drag_get_source_widget =
  foreign "gtk_drag_get_source_widget" (Drag_context.t_typ @-> returning (Widget.t_typ))

let drag_set_icon_default =
  foreign "gtk_drag_set_icon_default" (Drag_context.t_typ @-> returning (void))

(*Not implemented gtk_drag_set_icon_gicon type interface not implemented*)

let drag_set_icon_name =
  foreign "gtk_drag_set_icon_name" (Drag_context.t_typ @-> string @-> int32_t @-> int32_t @-> returning (void))

let drag_set_icon_pixbuf =
  foreign "gtk_drag_set_icon_pixbuf" (Drag_context.t_typ @-> Pixbuf.t_typ @-> int32_t @-> int32_t @-> returning (void))

(*DEPRECATED : drag_set_icon_stock*)
let drag_set_icon_surface =
  foreign "gtk_drag_set_icon_surface" (Drag_context.t_typ @-> ptr Surface.t_typ @-> returning (void))

let drag_set_icon_widget =
  foreign "gtk_drag_set_icon_widget" (Drag_context.t_typ @-> Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))

(*DEPRECATED : draw_insertion_cursor*)
let events_pending =
  foreign "gtk_events_pending" (void @-> returning (bool))

let _false =
  foreign "gtk_false" (void @-> returning (bool))

let file_chooser_error_quark =
  foreign "gtk_file_chooser_error_quark" (void @-> returning (uint32_t))

let get_binary_age =
  foreign "gtk_get_binary_age" (void @-> returning (uint32_t))

(*Not implemented gtk_get_current_event return type union not handled*)

let get_current_event_device =
  foreign "gtk_get_current_event_device" (void @-> returning (Device.t_typ))

let get_current_event_state () =
  let get_current_event_state_raw =
    foreign "gtk_get_current_event_state" (ptr (Modifier_type.t_list_view) @-> returning (bool))
  in
  let state_ptr = allocate Modifier_type.t_view (Modifier_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = get_current_event_state_raw state_ptr in
  let state = (!@ state_ptr) in
  (ret, state)
let get_current_event_time =
  foreign "gtk_get_current_event_time" (void @-> returning (uint32_t))

let get_debug_flags =
  foreign "gtk_get_debug_flags" (void @-> returning (uint32_t))

let get_default_language =
  foreign "gtk_get_default_language" (void @-> returning (ptr Language.t_typ))

(*Not implemented gtk_get_event_widget type union not implemented*)

let get_interface_age =
  foreign "gtk_get_interface_age" (void @-> returning (uint32_t))

let get_locale_direction =
  foreign "gtk_get_locale_direction" (void @-> returning (Text_direction.t_view))

let get_major_version =
  foreign "gtk_get_major_version" (void @-> returning (uint32_t))

let get_micro_version =
  foreign "gtk_get_micro_version" (void @-> returning (uint32_t))

let get_minor_version =
  foreign "gtk_get_minor_version" (void @-> returning (uint32_t))

let get_option_group =
  foreign "gtk_get_option_group" (bool @-> returning (ptr Option_group.t_typ))

let grab_get_current =
  foreign "gtk_grab_get_current" (void @-> returning (Widget.t_typ))

(*DEPRECATED : icon_size_from_name*)
(*DEPRECATED : icon_size_get_name*)
let icon_size_lookup size =
  let icon_size_lookup_raw =
    foreign "gtk_icon_size_lookup" (int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (bool))
  in
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let ret = icon_size_lookup_raw size width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (ret, width, height)
(*DEPRECATED : icon_size_lookup_for_settings*)
(*DEPRECATED : icon_size_register*)
(*DEPRECATED : icon_size_register_alias*)
let icon_theme_error_quark =
  foreign "gtk_icon_theme_error_quark" (void @-> returning (uint32_t))

(*Not implemented gtk_init type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_init_check type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_init_with_args type C Array type for Types.Array tag not implemented*)

(*DEPRECATED : key_snooper_remove*)
let main =
  foreign "gtk_main" (void @-> returning (void))

(*Not implemented gtk_main_do_event type union not implemented*)

let main_iteration =
  foreign "gtk_main_iteration" (void @-> returning (bool))

let main_iteration_do =
  foreign "gtk_main_iteration_do" (bool @-> returning (bool))

let main_level =
  foreign "gtk_main_level" (void @-> returning (uint32_t))

let main_quit =
  foreign "gtk_main_quit" (void @-> returning (void))

(*DEPRECATED : paint_arrow*)
(*DEPRECATED : paint_box*)
(*DEPRECATED : paint_box_gap*)
(*DEPRECATED : paint_check*)
(*DEPRECATED : paint_diamond*)
(*DEPRECATED : paint_expander*)
(*DEPRECATED : paint_extension*)
(*DEPRECATED : paint_flat_box*)
(*DEPRECATED : paint_focus*)
(*DEPRECATED : paint_handle*)
(*DEPRECATED : paint_hline*)
(*DEPRECATED : paint_layout*)
(*DEPRECATED : paint_option*)
(*DEPRECATED : paint_resize_grip*)
(*DEPRECATED : paint_shadow*)
(*DEPRECATED : paint_shadow_gap*)
(*DEPRECATED : paint_slider*)
(*DEPRECATED : paint_spinner*)
(*DEPRECATED : paint_tab*)
(*DEPRECATED : paint_vline*)
let paper_size_get_default =
  foreign "gtk_paper_size_get_default" (void @-> returning (string_opt))

let paper_size_get_paper_sizes =
  foreign "gtk_paper_size_get_paper_sizes" (bool @-> returning (ptr List.t_typ))

(*Not implemented gtk_parse_args type C Array type for Types.Array tag not implemented*)

let print_error_quark =
  foreign "gtk_print_error_quark" (void @-> returning (uint32_t))

let print_run_page_setup_dialog =
  foreign "gtk_print_run_page_setup_dialog" (Window.t_typ @-> Page_setup.t_typ @-> Print_settings.t_typ @-> returning (Page_setup.t_typ))

(*Not implemented gtk_print_run_page_setup_dialog_async type callback not implemented*)

(*Not implemented gtk_propagate_event type union not implemented*)

(*DEPRECATED : rc_add_default_file*)
(*DEPRECATED : rc_find_module_in_path*)
(*DEPRECATED : rc_find_pixmap_in_path*)
(*DEPRECATED : rc_get_default_files*)
(*DEPRECATED : rc_get_im_module_file*)
(*DEPRECATED : rc_get_im_module_path*)
(*DEPRECATED : rc_get_module_dir*)
(*DEPRECATED : rc_get_style*)
(*DEPRECATED : rc_get_style_by_paths*)
(*DEPRECATED : rc_get_theme_dir*)
(*DEPRECATED : rc_parse*)
(*DEPRECATED : rc_parse_color*)
(*DEPRECATED : rc_parse_color_full*)
(*DEPRECATED : rc_parse_priority*)
(*DEPRECATED : rc_parse_state*)
(*DEPRECATED : rc_parse_string*)
let rc_property_parse_border =
  foreign "gtk_rc_property_parse_border" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))

let rc_property_parse_color =
  foreign "gtk_rc_property_parse_color" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))

let rc_property_parse_enum =
  foreign "gtk_rc_property_parse_enum" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))

let rc_property_parse_flags =
  foreign "gtk_rc_property_parse_flags" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))

let rc_property_parse_requisition =
  foreign "gtk_rc_property_parse_requisition" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))

(*DEPRECATED : rc_reparse_all*)
(*DEPRECATED : rc_reparse_all_for_settings*)
(*DEPRECATED : rc_reset_styles*)
(*DEPRECATED : rc_set_default_files*)
let recent_chooser_error_quark =
  foreign "gtk_recent_chooser_error_quark" (void @-> returning (uint32_t))

let recent_manager_error_quark =
  foreign "gtk_recent_manager_error_quark" (void @-> returning (uint32_t))

let render_activity =
  foreign "gtk_render_activity" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_arrow =
  foreign "gtk_render_arrow" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_background =
  foreign "gtk_render_background" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_background_get_clip context x y width height =
  let render_background_get_clip_raw =
    foreign "gtk_render_background_get_clip" (Style_context.t_typ @-> double @-> double @-> double @-> double @-> ptr (Rectangle.t_typ) @-> returning (void))
  in
  let out_clip_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = render_background_get_clip_raw context x y width height out_clip_ptr in
  let out_clip = !@ out_clip_ptr in
  (out_clip)
let render_check =
  foreign "gtk_render_check" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_expander =
  foreign "gtk_render_expander" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_extension =
  foreign "gtk_render_extension" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> Position_type.t_view @-> returning (void))

let render_focus =
  foreign "gtk_render_focus" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_frame =
  foreign "gtk_render_frame" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_frame_gap =
  foreign "gtk_render_frame_gap" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> Position_type.t_view @-> double @-> double @-> returning (void))

let render_handle =
  foreign "gtk_render_handle" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_icon =
  foreign "gtk_render_icon" (Style_context.t_typ @-> ptr Context.t_typ @-> Pixbuf.t_typ @-> double @-> double @-> returning (void))

(*DEPRECATED : render_icon_pixbuf*)
let render_icon_surface =
  foreign "gtk_render_icon_surface" (Style_context.t_typ @-> ptr Context.t_typ @-> ptr Surface.t_typ @-> double @-> double @-> returning (void))

let render_insertion_cursor =
  foreign "gtk_render_insertion_cursor" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> Layout.t_typ @-> int32_t @-> Direction.t_view @-> returning (void))

let render_layout =
  foreign "gtk_render_layout" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> Layout.t_typ @-> returning (void))

let render_line =
  foreign "gtk_render_line" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_option =
  foreign "gtk_render_option" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> returning (void))

let render_slider =
  foreign "gtk_render_slider" (Style_context.t_typ @-> ptr Context.t_typ @-> double @-> double @-> double @-> double @-> Orientation.t_view @-> returning (void))

let rgb_to_hsv r g b =
  let rgb_to_hsv_raw =
    foreign "gtk_rgb_to_hsv" (double @-> double @-> double @-> ptr (double) @-> ptr (double) @-> ptr (double) @-> returning (void))
  in
  let h_ptr = allocate double 0.0 in
  let s_ptr = allocate double 0.0 in
  let v_ptr = allocate double 0.0 in
  let ret = rgb_to_hsv_raw r g b h_ptr s_ptr v_ptr in
  let h = !@ h_ptr in
  let s = !@ s_ptr in
  let v = !@ v_ptr in
  (h, s, v)
let selection_add_target =
  foreign "gtk_selection_add_target" (Widget.t_typ @-> ptr Atom.t_typ @-> ptr Atom.t_typ @-> uint32_t @-> returning (void))

(*Not implemented gtk_selection_add_targets type C Array type for Types.Array tag not implemented*)

let selection_clear_targets =
  foreign "gtk_selection_clear_targets" (Widget.t_typ @-> ptr Atom.t_typ @-> returning (void))

let selection_convert =
  foreign "gtk_selection_convert" (Widget.t_typ @-> ptr Atom.t_typ @-> ptr Atom.t_typ @-> uint32_t @-> returning (bool))

let selection_owner_set =
  foreign "gtk_selection_owner_set" (Widget.t_typ @-> ptr Atom.t_typ @-> uint32_t @-> returning (bool))

let selection_owner_set_for_display =
  foreign "gtk_selection_owner_set_for_display" (Display.t_typ @-> Widget.t_typ @-> ptr Atom.t_typ @-> uint32_t @-> returning (bool))

let selection_remove_all =
  foreign "gtk_selection_remove_all" (Widget.t_typ @-> returning (void))

let set_debug_flags =
  foreign "gtk_set_debug_flags" (uint32_t @-> returning (void))

let show_uri screen uri timestamp =
  let show_uri_raw =
    foreign "gtk_show_uri" (Screen.t_typ @-> string @-> uint32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = show_uri_raw screen uri timestamp err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let show_uri_on_window parent uri timestamp =
  let show_uri_on_window_raw =
    foreign "gtk_show_uri_on_window" (Window.t_typ @-> string @-> uint32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = show_uri_on_window_raw parent uri timestamp err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

(*DEPRECATED : stock_add*)
(*DEPRECATED : stock_add_static*)
(*DEPRECATED : stock_list_ids*)
(*DEPRECATED : stock_lookup*)
(*DEPRECATED : stock_set_translate_func*)
(*Not implemented gtk_target_table_free type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_target_table_new_from_list return type C Array type for Types.Array tag not handled*)

(*Not implemented gtk_targets_include_image type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_targets_include_rich_text type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_targets_include_text type C Array type for Types.Array tag not implemented*)

(*Not implemented gtk_targets_include_uri type C Array type for Types.Array tag not implemented*)

(*DEPRECATED : test_create_simple_window*)
let test_find_label =
  foreign "gtk_test_find_label" (Widget.t_typ @-> string @-> returning (Widget.t_typ))

(*Not implemented gtk_test_find_sibling type gType not implemented*)

(*Not implemented gtk_test_find_widget type gType not implemented*)

(*Not implemented gtk_test_list_all_types return type C Array type for Types.Array tag not handled*)

let test_register_all_types =
  foreign "gtk_test_register_all_types" (void @-> returning (void))

(*DEPRECATED : test_slider_get_value*)
(*DEPRECATED : test_slider_set_perc*)
(*DEPRECATED : test_spin_button_click*)
(*DEPRECATED : test_text_get*)
(*DEPRECATED : test_text_set*)
(*DEPRECATED : test_widget_click*)
let test_widget_send_key =
  foreign "gtk_test_widget_send_key" (Widget.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))

let test_widget_wait_for_draw =
  foreign "gtk_test_widget_wait_for_draw" (Widget.t_typ @-> returning (void))

(*Not implemented gtk_tree_get_row_drag_data type interface not implemented*)

let tree_row_reference_deleted =
  foreign "gtk_tree_row_reference_deleted" (Object.t_typ @-> ptr Tree_path.t_typ @-> returning (void))

let tree_row_reference_inserted =
  foreign "gtk_tree_row_reference_inserted" (Object.t_typ @-> ptr Tree_path.t_typ @-> returning (void))

(*Not implemented gtk_tree_set_row_drag_data type interface not implemented*)

let _true =
  foreign "gtk_true" (void @-> returning (bool))

