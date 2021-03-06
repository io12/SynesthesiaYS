#!/usr/bin/env python3

import sys
import pwn


def parse_sexpr(s):
    '''Parse an s-expr of the form (= foobarF3 0b0001) to a tuple of
    the form ('=', 0xf3, 1)'''
    toks = s[1:-2].split()
    return (toks[0],
            int(toks[1][len('bytecode'):], 16)
            if toks[1].startswith('bytecode')
            else toks[1],
            int(toks[2], 2))


def sexprs_to_bytes(sexprs):
    num_instrs = list(filter(lambda sexpr: sexpr[1] == 'NumInstrs', sexprs))[0][2]
    sexprs = filter(lambda sexpr: sexpr[1] != 'NumInstrs', sexprs)
    sexprs = sorted(sexprs, key=lambda sexpr: sexpr[1])
    return num_instrs, bytes(map(lambda sexpr: sexpr[2], sexprs))


if __name__ == '__main__':
    sexprs = list(map(parse_sexpr, sys.stdin.readlines()[1:]))
    num_instrs, b = sexprs_to_bytes(sexprs)
    print(f'num_instrs = {num_instrs}')
    print(repr(b))
    print(pwn.disasm(b))
