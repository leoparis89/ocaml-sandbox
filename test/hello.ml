open Alcotest

let test_hello_with_name name () =
  let greeting = "Hello " ^ name ^ "!" in
  let expected = Printf.sprintf "Hello %s!" name in
  check string "same string" greeting expected

let test_prime (n : int) (expected : bool) () =
  let result = Prime.Checker.is_prime n in
  check bool "same bool" result expected

let suite =
  [
    ("can greet Tom", `Quick, test_hello_with_name "Tom");
    ("can greet John", `Quick, test_hello_with_name "John");
    ("2 is prime", `Quick, test_prime 2 true);
    ("4 is not prime", `Quick, test_prime 4 false);
  ]

let () = Alcotest.run "Dummy" [ ("Greeting", suite) ]
