(add-tests-with-string-output "complex constants"
 ['42 => "42\n"]
 ['(1 . 2) => "(1 . 2)\n"]
 ['(1 2 3) => "(1 2 3)\n"]
 [(let ([x '(1 2 3)]) x) => "(1 2 3)\n"]
 [(let ([f (lambda () '(1 2 3))])
   (f)) => "(1 2 3)\n"]
 [(let ([f (lambda ()
             (lambda () 
               '(1 2 3)))])
   ((f))) => "(1 2 3)\n"]
 [(let ([f (lambda () '(1 2 3))])
   (prim-apply eq? (f) (f))) => "#t\n"]
 [(let ([x '#(1 2 3)])
    (prim-apply cons x (prim-apply vector-ref x 0))) => "(#(1 2 3) . 1)\n"]
 [#(1 2 3) => "#(1 2 3)\n"]
 ["Hello World" => "\"Hello World\"\n"]
 ['("Hello" "World") => "(\"Hello\" \"World\")\n"]
 [(let ([s1 "string1"]
        [s2 "string2"]) ;; this is here to test multiple complex constants
   (prim-apply string? s1)) => "#t\n"])
