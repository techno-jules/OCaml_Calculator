(* main.ml *)

let () =
  Printf.printf "Welcome to the OCaml Calculator! Built by Julia Huang.\n";
  Printf.printf "Enter the 1st number: ";
  let num1 = read_int () in

  Printf.printf "Select an operation:\n";
  Printf.printf "Type 1 for Add\n";
  Printf.printf "Type 2 for Subtract\n";
  Printf.printf "Type 3 for Multiply\n";
  Printf.printf "Type 4 for Divide\n";
  Printf.printf "Type 5 for Remainder\n";
  Printf.printf "Type 6 for Exponentiation\n";
  Printf.printf "Type 7 for Sine\n";
  Printf.printf "Type 8 for Cosine\n";
  Printf.printf "Type 9 for Tangent\n";
  Printf.printf "Type 10 for Square Root\n";
  Printf.printf "Your choice: ";
  let choice = read_int () in

  let result =
    if choice >= 7 && choice <= 10 then
      match choice with
      | 7 -> int_of_float (Calculator.sine num1)
      | 8 -> int_of_float (Calculator.cosine num1)
      | 9 -> int_of_float (Calculator.tangent num1)
      | 10 -> int_of_float (Calculator.square_root num1)
      | _ -> failwith "Invalid choice"
    else
      begin
        Printf.printf "Enter the 2nd number: ";
        let num2 = read_int () in
        match choice with
        | 1 -> Calculator.add num1 num2
        | 2 -> Calculator.subtract num1 num2
        | 3 -> Calculator.multiply num1 num2
        | 4 -> (
            match Calculator.divide num1 num2 with
            | Some value -> value
            | None -> failwith "Cannot divide by zero"
          )
        | 5 -> (
            match Calculator.remainder num1 num2 with
            | Some value -> value
            | None -> failwith "Cannot find remainder when denominator is zero"
          )
        | 6 -> Calculator.exponent num1 num2
        | _ -> failwith "Invalid choice"
      end
  in

  Printf.printf "Result: %d\n" result


  let test_case () =
  Printf.printf "Running test case...\n";
  assert (Calculator.add 5 7 = 12);
  assert (Calculator.subtract 10 3 = 7);
  assert (Calculator.multiply 4 6 = 24);
 
  Printf.printf "All test cases passed!\n"

let () =
  test_case ();
  (* Rest of your main program code *)

