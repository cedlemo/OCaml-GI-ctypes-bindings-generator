open Ctypes
open Foreign

let c_PARAM_MASK = Int32.of_string "255"
let c_PARAM_STATIC_STRINGS = Int32.of_string "0"
let c_PARAM_USER_SHIFT = Int32.of_string "8"
(*DEPRECATED : Parameter*)
let c_SIGNAL_FLAGS_MASK = Int32.of_string "511"
let c_SIGNAL_MATCH_MASK = Int32.of_string "63"
let c_TYPE_FLAG_RESERVED_ID_BIT = Unsigned.UInt64.of_string "1"
let c_TYPE_FUNDAMENTAL_MAX = Int32.of_string "255"
let c_TYPE_FUNDAMENTAL_SHIFT = Int32.of_string "2"
let c_TYPE_RESERVED_BSE_FIRST = Int32.of_string "32"
let c_TYPE_RESERVED_BSE_LAST = Int32.of_string "48"
let c_TYPE_RESERVED_GLIB_FIRST = Int32.of_string "22"
let c_TYPE_RESERVED_GLIB_LAST = Int32.of_string "31"
let c_TYPE_RESERVED_USER_FIRST = Int32.of_string "49"
(*DEPRECATED : TypeDebugFlags*)
let c_VALUE_COLLECT_FORMAT_MAX_LENGTH = Int32.of_string "8"
let c_VALUE_NOCOPY_CONTENTS = Int32.of_string "134217728"
