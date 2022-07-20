open Amodule
open Printf

let data = ["a"; "beautiful"; "day"]
let () =
  hello ();
  List.iter (printf "%s\n") data