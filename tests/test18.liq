
let%entry main
      (parameter : int)
      (storage : nat)
      : int * nat =

  match int storage / parameter with
  | None -> ( 0, 0p)
  | Some res ->
      ( res.(0), res.(1) )

































