(**************************************************************************)
(*                                                                        *)
(*    Copyright (c) 2017       .                                          *)
(*    Fabrice Le Fessant, OCamlPro SAS <fabrice@lefessant.net>            *)
(*                                                                        *)
(*    All rights reserved. No warranty, explicit or implicit, provided.   *)
(*                                                                        *)
(**************************************************************************)

open LiquidTypes

val error :
  location ->
  ('a, Format.formatter, unit, unit, unit, 'b) format6 -> 'a

val typecheck_contract : only_typecheck:bool -> warnings:bool -> env ->
                         syntax_exp contract ->
                         typed_exp contract * datatype exp StringMap.t

                       (*
val uniq_ident : string -> string
                        *)

val typecheck_code :
  only_typecheck:bool -> warnings:bool -> env ->
  syntax_exp contract ->
  LiquidTypes.datatype ->
  syntax_exp ->
  typed_exp

val check_const_type :
  ?from_mic:bool ->
  to_tez:(string -> LiquidTypes.tez) ->
  LiquidTypes.location ->
  LiquidTypes.datatype -> LiquidTypes.const -> LiquidTypes.const
