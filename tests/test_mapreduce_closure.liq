let%entry main
  (parameter : string)
  (storage : (string, tez) map)
  : bool * (string, tez) map =

  let amount = Current.amount() in
  let f (arg: (string * tez) * bool) =
    if arg.(0).(1) + amount > 5.0tz then true
    else arg.(1)
  in

  let b = Map.reduce f storage false in
  (b, storage)
