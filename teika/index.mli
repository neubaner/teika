type index
type t = index [@@deriving show, eq]

val zero : index
val next : index -> index
val ( < ) : index -> index -> bool

(* TODO: exposing this is bad *)
val repr : index -> int
val of_int : int -> index option

module Map : Map.S with type key = index
