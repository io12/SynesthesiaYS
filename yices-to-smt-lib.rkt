#!/usr/bin/env racket

#lang racket

(define (unsup-err sym)
  (error sym "unsupported"))

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
	  '(define-sort ,sym () ,(y2s-typedef tydef))]
	 [(list 'define sym ':: type)
	  '(declare-const ,sym ,(y2s-type type))]
	 [(list 'define sym ':: type expr)
	  '(define-fun ,sym () ,(y2s-type type) ,(y2s-expr expr))]
	 [(list-rest 'assert expr rest)
	  '(assert ,(y2s-expr expr))]
	 [(list 'exit)
	  '(exit)]
	 [(list 'check)
	  '(check-sat)]
	 [(list 'check-assuming p)
	  '(check-sat-assuming ,p)]
	 [(list 'push)
	  '(push 1)]
	 [(list 'pop)
	  '(pop 1)]
	 [(list 'reset)
	  '(reset-assertions)]
	 [(list 'show-model)
	  '(get-model)]
	 [(list 'eval expr)
	  '(get-value ,(y2s-expr expr))]
	 [(list 'echo str)
	  '(echo ,str)]
	 [(list 'include str)
	  (unsup-err 'include)]
	 [(list 'set-param sym val)
	  (unsup-err 'set-param)]
	 [(list 'show-param sym)
	  (unsup-err 'show-param)]
	 [(list 'show-params)
	  (unsup-err 'show-params)]
	 [(list 'show-stats)
	  (unsup-err 'show-stats)]
	 [(list 'reset-stats)
	  (unsup-err 'reset-stats)]
	 [(list 'set-timeout num)
	  (unsup-err 'set-timeout)]
	 [(list 'show-timeout num)
	  (unsup-err 'show-timeout)]
	 [(list 'dump-context)
	  (unsup-err 'dump-context)]
	 [(list-rest 'help rest)
	  (unsup-err 'help)]
	 [(list 'ef-solve)
	  '(check-sat)]
	 [(list-rest 'export-to-dimacs rest)
	  (unsup-err 'export-to-dimacs)]
	 [(list 'show-implicant)
	  '(get-model)]
	 [(list 'show-unsat-core)
	  '(get-unsat-core)]
	 [(list 'show-unsat-assumptions)
	  '(get-unsat-assumptions)]))

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
; TODO: Handle type annotations
; TODO: Preserve comments
(define yices-prog (port->list read in-port))

; Convert to SMT-LIB
(define smtlib-prog (yices->smtlib yices-prog))

; Write output
(pretty-write smtlib-prog out-port)
