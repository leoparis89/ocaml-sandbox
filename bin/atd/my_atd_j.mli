(* Auto-generated from "my_atd.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type date = My_atd_t.date = { year: int; month: int; day: int }

val write_date :
  Buffer.t -> date -> unit
  (** Output a JSON value of type {!type:date}. *)

val string_of_date :
  ?len:int -> date -> string
  (** Serialize a value of type {!type:date}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_date :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> date
  (** Input JSON data of type {!type:date}. *)

val date_of_string :
  string -> date
  (** Deserialize JSON data of type {!type:date}. *)

