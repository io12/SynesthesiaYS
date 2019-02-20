#!/usr/bin/env racket

#lang racket

(define (unsup sym)
  (let ([msg (string-append "warning: "
                            (symbol->string sym)
                            " unsupported")])
    (displayln msg (current-error-port))
    (list 'echo msg)))

(define (err-unrec e)
  (error "unrecognized" e))

(define (y2s-bitvec-val width val)
  (string->symbol
   (string-append "#b"
                  (~r val
                      #:base 2
                      #:min-width width #:pad-string "0"))))

(define (y2s-fcn fcn-call)
  (match fcn-call
    [(list 'mk-bv width val)
     (y2s-bitvec-val width val)]
    [(list-rest 'bv-concat bvs)
     (cons 'concat (map y2s-expr bvs))]
    [(list-rest 'bv-add bvs)
     (cons 'bvadd (map y2s-expr bvs))]
    [(list-rest 'bv-sub bvs)
     (cons 'bvsub (map y2s-expr bvs))]
    [(list-rest 'bv-shl bvs)
     (cons 'bvshl (map y2s-expr bvs))]
    [(list-rest 'bv-lshr bvs)
     (cons 'bvlshr (map y2s-expr bvs))]
    [(list-rest 'bv-ashr bvs)
     (cons 'bvashr (map y2s-expr bvs))]
    [(list-rest 'bv-xor bvs)
     (cons 'bvxor (map y2s-expr bvs))]
    [(list-rest 'bv-or bvs)
     (cons 'bvor (map y2s-expr bvs))]
    [(list-rest 'bv-and bvs)
     (cons 'bvand (map y2s-expr bvs))]
    [(list 'bv-not bv)
     (list 'bvnot (y2s-expr bv))]
    [(list 'bv-lt bv1 bv2)
     (list 'bvult (y2s-expr bv1) (y2s-expr bv2))]
    [(list 'bv-slt bv1 bv2)
     (list 'bvslt (y2s-expr bv1) (y2s-expr bv2))]
    [(list 'bv-extract hi lo bv)
     (list (list '_ 'extract (y2s-expr hi) (y2s-expr lo))
           (y2s-expr bv))]
    [(list 'bv-zero-extend bv k)
     (list (list '_ 'zero_extend (y2s-expr k)) (y2s-expr bv))]
    [(list 'bv-sign-extend bv k)
     (list (list '_ 'sign_extend (y2s-expr k)) (y2s-expr bv))]
    [(list 'ite cnd thn els)
     (list 'ite (y2s-expr cnd) (y2s-expr thn) (y2s-expr els))]
    [(list '= a b)
     (list '= (y2s-expr a) (y2s-expr b))]
    [(list '/= a b)
     (list 'not (list '= (y2s-expr a) (y2s-expr b)))]
    [(list-rest sym args)
     (cons sym (map y2s-expr args))]))

; <binding> ::= ( <symbol> <expr> )
(define (y2s-binding binding)
  (match binding
    [(list sym expr)
     (list sym (y2s-expr expr))]))

; <bindings> ::= ( <binding> ... <binding> )
(define (y2s-bindings bindings)
  (map y2s-binding bindings))


; Change 0xab to #xab
(define (fix-num-sym sym)
  (if (symbol? sym)
      (let ([s (symbol->string sym)])
        (string->symbol
         (if (char=? (string-ref s 0) #\0)
             (string-append "#" (substring s 1))
             s)))
      sym))

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
     'true]
    ['false
     'false]
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
     (list 'forall (y2s-var-decls var-decls) (y2s-expr expr))]
    [(list 'exists var-decls expr)
     (unsup 'exists)]
    [(list 'lambda var-decls expr)
     (unsup 'lambda)]
    [(list 'let bindings expr)
     (list 'let (y2s-bindings bindings) (y2s-expr expr))]
    [(list 'update fcn locs val)
     (unsup 'update)]
    [(list-rest fcn-name fcn-args)
     (y2s-fcn (cons fcn-name fcn-args))]
    [sym
     (fix-num-sym sym)]))

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
     'Int]
    ['bool
     'Bool]
    ['real
     'Real]
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

; <var_decls> ::= ( <var_decl> ... <var_decl> )
(define (y2s-var-decls vars)
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
         ; Array declaration
         [(list 'define sym ':: (list '-> param ret))
          (list 'declare-const sym
                (list 'Array (y2s-type param) (y2s-type ret)))]
         ; Regular declaration
	 [(list 'define sym ':: type)
	  (list 'declare-const sym (y2s-type type))]
         ; Function definition
         [(list 'define sym ':: (list-rest '-> types)
                (list 'lambda params body))
          (list 'define-fun sym (y2s-var-decls params)
                (y2s-type (last types)) ; Return type
                (y2s-expr body))
          ]
         ; Regular definition
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

; Print output
; Use for-each so that the toplevel parens are not printed
; Remove pipes to fix bitvector literals
(define (print-out-prog prog)
  (for-each
   (lambda (cmd)
     (displayln (string-replace
                 (pretty-format cmd #:mode 'write)
                 "|" "") out-port))
   prog))

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
(print-out-prog smtlib-prog)
