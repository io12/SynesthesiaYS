#!/usr/bin/env racket

#lang racket

; Convert a yices commmand to smt-lib
(define (conv-cmd lst)
  (match lst
	 [(list 'define-type sym)
	  #f]
	 [(list 'define-type sym typedef)
	  '(declare-datatype ,sym ,(y2s typedef))]
	 [(list 'define sym ':: type)
	  '(declare-const ,sym ,type)]
	 [(list 'define sym ':: type expr)
	  #f]
	 [(list 'assert expr)
	  '(assert ,(y2s expr))]
	 [(list 'assert expr sym)
	  #f]
	 [(list 'exit)
	  '(exit)]
	 [(list 'check)
	  '(check-sat)]
	 [(list 'check-assuming assumptions)
	  '(check-sat-assuming ,assumptions)]
	 [(list 'push)
	  #f]
	 [(list 'pop)
	  #f]
	 [(list 'reset)
	  '(reset)]
	 [(list 'show-model)
	  '(get-model)]
	 [(list 'eval expr)
	  #f]
	 [(list 'echo str)
	  '(echo ,str)]
	 [(list 'include str)
	  #f]
	 [(list 'set-param sym immediatevalue)
	  #f]
	 [(list 'show-param sym)
	  #f]
	 [(list 'show-params)
	  #f]
	 [(list 'show-stats)
	  #f]
	 [(list 'reset-stats)
	  #f]
	 [(list 'set-timeout number)
	  #f]
	 [(list 'show-timeout)
	  #f]
	 [(list 'dump-context)
	  #f]
	 [(list 'help)
	  #f]
	 [(list 'help sym)
	  #f]
	 [(list 'help str)
	  #f]
	 [(list 'ef-solve)
	  #f]
	 [(list 'export-to-dimacs str)
	  #f]
	 [(list 'show-implicant)
	  #f]
	 [(list 'show-unsat-core)
	  '(get-unsat-core)]
	 [(list 'show-unsat-assumptions)
	  '(get-unsat-assumptions)]))

; Convert yices program to smt-lib
; TODO: Preserve comments
(define (yices-to-smt-lib yices-prog)
  (map conv-cmd yices-prog))

; The output port to write smt-lib (default is stdout)
(define smt-lib-port (current-output-port))

; The yices port to convert to smt-lib (default is stdin)
(define yices-port
  (command-line
   #:once-each
   ["-o" output-file
    "Output file to write smt-lib. Default is stdout."
    (set! smt-lib-port output-file)]
   #:args input-file
   ; Get the input file if there is one
   (if (null? input-file)
       (current-input-port) ; stdin
       (open-input-file (car input-file)))))

; Read the input file
(define yices-prog (port->list read yices-port))

; Convert to smt-lib
(define smt-lib-prog (yices-to-smt-lib yices-prog))

; Write output
(pretty-write smt-lib-prog smt-lib-port)
