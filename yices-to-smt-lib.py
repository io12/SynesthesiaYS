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


def yices2smtlib(ast):
    pass


if __name__ == '__main__':
    (in_file, out_file) = _get_io_files()
    yices_ast = parse(in_file.read())
    smtlib_ast = yices2smtlib(yices_ast)
