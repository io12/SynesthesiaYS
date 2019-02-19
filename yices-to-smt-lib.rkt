#!/usr/bin/env racket

#lang racket

(define (err-unsup sym)
  (error sym "unsupported"))

(define (err-unrec e)
  (error "unrecognized" e))

; <expr> ::=
; true
; | false
; | <symbol>
; | <rational>
; | <float>
; | <binary bv>
; | <hexa bv>
; | ( forall ( <var_decl> ... <var_decl> ) <expr> )
; | ( exists ( <var_decl> ... <var_decl> ) <expr> )
; | ( lambda ( <var_decl> ... <var_decl> ) <expr> )
; | ( let ( <binding> ... <binding> ) <expr> )
; | ( update <expr> ( <expr> ... <expr> ) <expr> )
; | ( <function> <expr> ... <expr> )
(define (y2s-expr expr)
  (match expr
    ['true
     (err-unsup 'true)]
    ['false
     (err-unsup 'false)]
    ['true ; TODO: <symbol>
     (err-unsup 'true)]
    ['true ; TODO: <rational>
     (err-unsup 'true)]
    ['true ; TODO: <float>
     (err-unsup 'true)]
    ['true ; TODO: <binary bv>
     (err-unsup 'true)]
    ['true ; TODO: <hexa bv>
     (err-unsup 'true)]
    [(list 'forall var-decls expr)
     (err-unsup 'forall)]
    [(list 'exists var-decls expr)
     (err-unsup 'exists)]
    [(list 'lambda var-decls expr)
     (err-unsup 'lambda)]
    [(list 'let bindings expr)
     (err-unsup 'let)]
    [(list 'update fcn locs val)
     (err-unsup 'update)]
    ['true ; TODO: function call
     (err-unsup 'true)]))

; <type> ::=
; <symbol>
; | ( tuple <type> ... <type> )
; | ( -> <type> ... <type> <type> )
; | ( bitvector <rational> )
; | int
; | bool
; | real
(define (y2s-type ty)
  (match ty
    [(list-rest 'tuple tys)
     (err-unsup 'tuple)]
    [(list-rest '-> tys)
     (err-unsup '->)]
    [(list 'bitvector width)
     (err-unsup 'bitvector)]
    ['int
     (err-unsup 'int)]
    ['bool
     (err-unsup 'bool)]
    ['real
     (err-unsup 'real)]
    [bad
     (err-unrec bad)]))

; <typedef> ::=
; <type>
; | ( scalar <symbol> ... <symbol> )
(define (y2s-tydef tydef)
  (match tydef
    [(list-rest 'scalar syms)
     (err-unsup 'scalar)]
    [ty
     (y2s-type ty)]))

; Convert a yices commmand to SMT-LIB
; <command> ::=
; ( define-type <symbol> )
; | ( define-type <symbol> <typedef> )
; | ( define <symbol> :: <type> )
; | ( define <symbol> :: <type> <expression> )
; | ( assert <expression> )
; | ( assert <expression> <symbol> )
; | ( exit )
; | ( check )
; | ( check-assuming <assumption-list> )
; | ( push )
; | ( pop )
; | ( reset )
; | ( show-model )
; | ( eval <expression> )
; | ( echo <string> )
; | ( include <string> )
; | ( set-param <symbol> <immediate-value> )
; | ( show-param <symbol> )
; | ( show-params )
; | ( show-stats )
; | ( reset-stats )
; | ( set-timeout <number> )
; | ( show-timeout )
; | ( dump-context )
; | ( help )
; | ( help <symbol> )
; | ( help <string> )
; | ( ef-solve )
; | ( export-to-dimacs <string> )
; | ( show-implicant )
; | ( show-unsat-core )
; | ( show-unsat-assumptions )
; | EOS
(define (y2s-cmd cmd)
  (match cmd
	 [(list 'define-type sym tydef)
	  (list 'define-sort sym '() (y2s-tydef tydef))]
	 [(list 'define sym ':: type)
	  (list 'declare-const sym (y2s-type type))]
	 [(list 'define sym ':: type expr)
	  (list 'define-fun sym '() (y2s-type type) (y2s-expr expr))]
	 [(list-rest 'assert expr rest)
	  (list 'assert (y2s-expr expr))]
	 [(list 'exit)
	  (list 'exit)]
	 [(list 'check)
	  (list 'check-sat)]
	 [(list 'check-assuming p)
	  (list 'check-sat-assuming p)]
	 [(list 'push)
	  (list 'push 1)]
	 [(list 'pop)
	  (list 'pop 1)]
	 [(list 'reset)
	  (list 'reset-assertions)]
	 [(list 'show-model)
	  (list 'get-model)]
	 [(list 'eval expr)
	  (list 'get-value (y2s-expr expr))]
	 [(list 'echo str)
	  (list 'echo str)]
	 [(list 'include str)
	  (err-unsup 'include)]
	 [(list 'set-param sym val)
	  (err-unsup 'set-param)]
	 [(list 'show-param sym)
	  (err-unsup 'show-param)]
	 [(list 'show-params)
	  (err-unsup 'show-params)]
	 [(list 'show-stats)
	  (err-unsup 'show-stats)]
	 [(list 'reset-stats)
	  (err-unsup 'reset-stats)]
	 [(list 'set-timeout num)
	  (err-unsup 'set-timeout)]
	 [(list 'show-timeout num)
	  (err-unsup 'show-timeout)]
	 [(list 'dump-context)
	  (err-unsup 'dump-context)]
	 [(list-rest 'help rest)
	  (err-unsup 'help)]
	 [(list 'ef-solve)
	  (list 'check-sat)]
	 [(list-rest 'export-to-dimacs rest)
	  (err-unsup 'export-to-dimacs)]
	 [(list 'show-implicant)
	  (list 'get-model)]
	 [(list 'show-unsat-core)
	  (list 'get-unsat-core)]
	 [(list 'show-unsat-assumptions)
	  (list 'get-unsat-assumptions)]
         [bad
          (err-unrec bad)]))

; Convert yices program to SMT-LIB
(define (yices->smtlib yices-prog)
  (map y2s-cmd yices-prog))

; The output port to write SMT-LIB (default is stdout)
(define out-port (current-output-port))

; The yices port to convert to SMT-LIB (default is stdin)
(define in-port
  (command-line
   #:once-each
   ["-o" output-file
    "Output file to write SMT-LIB. Default is stdout."
    (set! out-port output-file)]
   #:args input-file
   ; Get the input file if there is one
   (if (null? input-file)
       (current-input-port) ; stdin
       (open-input-file (car input-file)))))

; Read the input file
; TODO: Handle type annotations a better way
; TODO: Preserve comments
(define yices-prog (port->list read
                    (open-input-string
                     (string-replace (port->string in-port) "::" " :: "))))

; Convert to SMT-LIB
(define smtlib-prog (yices->smtlib yices-prog))

; Write output
(pretty-write smtlib-prog out-port)
