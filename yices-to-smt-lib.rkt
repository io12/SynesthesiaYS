#!/usr/bin/env racket

#lang racket

(define (unsup sym)
  (display (string-append "warning: " (symbol->string sym) " unsupported\n")))

(define (err-unrec e)
  (error "unrecognized" e))

(define (y2s-fcn fcn-call)
  (match fcn-call
    [(list 'mk-bv width val)
     val]
    [bad
     (err-unrec bad)]))

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
     (unsup 'true)]
    ['false
     (unsup 'false)]
    ['true ; TODO: <symbol>
     (unsup 'true)]
    ['true ; TODO: <rational>
     (unsup 'true)]
    ['true ; TODO: <float>
     (unsup 'true)]
    ['true ; TODO: <binary bv>
     (unsup 'true)]
    ['true ; TODO: <hexa bv>
     (unsup 'true)]
    [(list 'forall var-decls expr)
     (unsup 'forall)]
    [(list 'exists var-decls expr)
     (unsup 'exists)]
    [(list 'lambda var-decls expr)
     (unsup 'lambda)]
    [(list 'let bindings expr)
     (unsup 'let)]
    [(list 'update fcn locs val)
     (unsup 'update)]
    [fcn-call
     (y2s-fcn fcn-call)]))

; <type> ::=
; <symbol>
; | ( tuple <type> ... <type> )
; | ( -> <type> ... <type> <type> )
; | ( bitvector <rational> )
; | int
; | bool
; | real
(define (y2s-type type)
  (match type
    [(list-rest 'tuple types)
     (unsup 'tuple)]
    [(list-rest '-> types)
     (unsup '->)]

    [(list 'bitvector width)
     (list '_ 'BitVec width)]
    ['int
     (unsup 'int)]
    ['bool
     (unsup 'bool)]
    ['real
     (unsup 'real)]
    [sym
     sym]))

; <typedef> ::=
; <type>
; | ( scalar <symbol> ... <symbol> )
(define (y2s-typedef typedef)
  (match typedef
    [(list-rest 'scalar syms)
     (unsup 'scalar)]
    [type
     (y2s-type type)]))

; Split a list into chunks of length n
(define (split-chunks lst n)
  (if (not (empty? lst))
      (cons (take lst n) (split-chunks (drop lst n) n))
      '()))

; <var_decl> ::= <symbol> :: <type>
(define (y2s-typed-var var)
  (match var
    [(list sym ':: type)
     (list sym (y2s-type type))]))

; <var_decl_list> ::= ( <var_decl> ... <var_decl> )
(define (y2s-typed-var-list vars)
  (map y2s-typed-var (split-chunks vars 3)))

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
	 [(list 'define-type sym typedef)
	  (list 'define-sort sym '() (y2s-typedef typedef))]
	 [(list 'define sym ':: type)
	  (list 'declare-const sym (y2s-type type))]
         ; Function definition
         [(list 'define sym ':: (list-rest '-> ret-type param-types)
                (list 'lambda params body))
          (list 'define-fun sym (y2s-typed-var-list params)
                (y2s-type ret-type)
                (y2s-expr body))
          ]
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
	  (unsup 'include)]
	 [(list 'set-param sym val)
	  (unsup 'set-param)]
	 [(list 'show-param sym)
	  (unsup 'show-param)]
	 [(list 'show-params)
	  (unsup 'show-params)]
	 [(list 'show-stats)
	  (unsup 'show-stats)]
	 [(list 'reset-stats)
	  (unsup 'reset-stats)]
	 [(list 'set-timeout num)
	  (unsup 'set-timeout)]
	 [(list 'show-timeout num)
	  (unsup 'show-timeout)]
	 [(list 'dump-context)
	  (unsup 'dump-context)]
	 [(list-rest 'help rest)
	  (unsup 'help)]
	 [(list 'ef-solve)
	  (list 'check-sat)]
	 [(list-rest 'export-to-dimacs rest)
	  (unsup 'export-to-dimacs)]
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
;(pretty-write smtlib-prog out-port)
