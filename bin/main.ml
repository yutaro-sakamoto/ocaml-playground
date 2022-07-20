open Printf

let read_whole_chan chan =
  let len = in_channel_length chan in
  let result = (Bytes.create len) in
    really_input chan result 0 len;
    (Bytes.to_string result)

let read_whole_file filename =
  let chan = open_in filename in
    read_whole_chan chan

let () =
  let filename = Sys.argv.(1) in
  let str = read_whole_file filename in
    printf "I read %d characters from %s\n" (String.length str) filename