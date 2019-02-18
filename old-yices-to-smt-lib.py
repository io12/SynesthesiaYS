#!/usr/bin/env python3

import sys
import argparse


def _parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-o',
                        type=str,
                        metavar='output-file',
                        help='The file to write the outputted SMT-LIB'
                        ' code; leave unspecified for stdout',
                        dest='output-file')
    parser.add_argument('input-file',
                        type=str,
                        metavar='input-file',
                        help='The yices file to convert to SMT-LIB;'
                        ' leave unspecified for stdin')
    return vars(parser.parse_args())


def _get_io_files():
    args = _parse_args()
    out_filename = args['output-file']
    in_filename = args['input-file']
    out_file = (sys.stdout
                if out_filename is None
                else open(out_filename, 'w'))
    in_file = (sys.stdin
               if in_filename is None or in_filename == '-'
               else open(in_filename, 'r'))
    return (in_file, out_file)


def lex(s):
    '''Lex a yices script into a list of tokens. Comments are treated
    as tokens so that they are preserved by the translator'''
    s = (f'({s})'
         .replace('(', ' ( ')
         .replace(')', ' ) ')
         .replace('::', ' :: '))
    toks = []
    tok = ''
    in_comment = False
    for c in s:
        if in_comment:
            if c == '\n':
                in_comment = False
                toks.append(tok)
                tok = ''
            else:
                tok += c
        elif c.isspace():
            if tok != '':
                toks.append(tok)
                tok = ''
        elif c == ';':
            tok += c
            in_comment = True
        else:
            tok += c
    return toks


def try_pop(toks):
    '''Get the next token and advance the token stream'''
    try:
        return toks.pop(0)
    except:
        raise SyntaxError('Unexpected EOF')


def try_peek(toks):
    '''Peek the next token'''
    try:
        return toks[0]
    except:
        raise SyntaxError('Unexpected EOF')


def parse_toks(toks):
    '''Parse the token stream of a yices script into a list'''
    tok = try_pop(toks)
    if tok == '(':
        ast = []
        while try_peek(toks) != ')':
            ast.append(parse_toks(toks))
        try_pop(toks)
        if type(ast[0]) == str:
            print(ast[0])
    elif tok == ')':
        raise SyntaxError('Unexpected ")"')
    else:
        ast = tok
    return ast


def parse(s):
    '''Parse a yices script string into a list'''
    toks = lex(s)
    return parse_toks(toks)


def y2s_expr(e):
    if type(ty) is list:
        s = ty[0]
        if s == 'forall':
            pass
        elif s == 'exists':
            pass
        elif s == 'lambda':
            pass
        elif s == 'let':
            pass
        elif s == 'update':
            pass
        else:
            pass # TODO: Function call
    elif ty == 'true':
        pass
    elif ty == 'false':
        pass
    else:
        pass # TODO: symbol, number, binarybv, hexabv


def y2s_type(ty):
    if type(ty) is list:
        s = ty[0]
        if s == 'tuple':
            pass
        elif s == '->':
            pass
        elif s == 'bitvector':
            pass
    elif ty == 'int':
        pass
    elif ty == 'bool':
        pass
    elif ty == 'real':
        pass
    else:
        pass # TODO: symbol


def y2s_typedef(tydef):
    if type(tydef) is list and tydef[0] == 'scalar':
        pass # TODO: Handle scalar
    else:
        pass # TODO: Handle type


def y2s_cmd(cmd):
    s = cmd[0]
    # ( define-type <symbol> <typedef> )
    # ( define-sort <symbol> ( <symbol>* ) <sort> )
    if s == 'define-type':
        return ['define-sort', cmd[1], [], y2s_typedef(cmd[2])]
    # ( define <symbol> :: <type> )
    # ( declare-const <symbol> <sort> )
    elif s == 'define' and len(cmd) == 4:
        return ['declare-const', cmd[1], y2s_type(cmd[3])]
    # ( define <symbol> :: <type> <expression> )
    # ( define-fun <symbol> ( <sorted_var>* ) <sort> <term> )
    elif s == 'define' and len(cmd) == 5:
        return ['define-fun', cmd[1], [], ]
    elif s == 'assert':
        pass
    elif s == 'exit':
        pass
    elif s == 'check':
        pass
    elif s == 'check-assuming':
        pass
    elif s == 'push':
        pass
    elif s == 'pop':
        pass
    elif s == 'reset':
        pass
    elif s == 'show-model':
        pass
    elif s == 'eval':
        pass
    elif s == 'echo':
        pass
    elif s == 'include':
        pass
    elif s == 'set-param':
        pass
    elif s == 'show-param':
        pass
    elif s == 'show-params':
        pass
    elif s == 'show-stats':
        pass
    elif s == 'reset-stats':
        pass
    elif s == 'set-timeout':
        pass
    elif s == 'show-timeout':
        pass
    elif s == 'dump-context':
        pass
    elif s == 'help':
        pass
    elif s == 'ef-solve':
        pass
    elif s == 'export-to-dimacs':
        pass
    elif s == 'show-implicant':
        pass
    elif s == 'show-unsat-core':
        pass
    elif s == 'show-unsat-assumptions':
        pass


def yices2smtlib(ast):
    '''Convert a yices program to SMT-LIB'''
    return list(map(y2s_cmd, ast))


if __name__ == '__main__':
    (in_file, out_file) = _get_io_files()
    yices_ast = parse(in_file.read())
    smtlib_ast = yices2smtlib(yices_ast)
