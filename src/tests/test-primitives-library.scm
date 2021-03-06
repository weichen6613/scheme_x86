(add-tests-with-string-output "primitives library"
 [(add-and-add-four 1 2) => "7\n"]
 [(add-four 1) => "5\n"]
 [(calls-another-lambda 1) => "2\n"]
 [(length '()) => "0\n"]
 [(length '(1)) => "1\n"]
 [(length '(1 2 3 4 5 6 7)) => "7\n"]
 [(string=? "foo" "bar") => "#f\n"]
 [(string=? "foo" "foo") => "#t\n"]
 [(string=? "f" "foo") => "#f\n"]
 [(string=? "fooo" "f") => "#f\n"]
 [(string #\a #\b #\c) => "\"abc\"\n"])
