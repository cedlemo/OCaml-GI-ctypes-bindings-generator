open Ctypes

type t
val t_typ : t typ

val create :
  Output_stream.t ptr -> t ptr
val get_byte_order :
  t -> Data_stream_byte_order.t
val put_byte :
  t -> Unsigned.uint8 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_int16 :
  t -> int -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_int32 :
  t -> int32 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_int64 :
  t -> int64 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_string :
  t -> string -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_uint16 :
  t -> Unsigned.uint16 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_uint32 :
  t -> Unsigned.uint32 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val put_uint64 :
  t -> Unsigned.uint64 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
val set_byte_order :
  t -> Data_stream_byte_order.t -> unit
