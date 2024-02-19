let is_prime n =
  let rec is_prime_aux i =
    if i * i > n then true
    else if n mod i = 0 then false
    else is_prime_aux (i + 1)
  in
  if n < 2 then false
  else is_prime_aux 2
