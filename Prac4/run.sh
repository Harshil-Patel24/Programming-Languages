#!/bin/bash

yacc -d sorter.y
lex sorter.l
gcc -w -g y.tab.c lex.yy.c -ll
./a.out <<< "[1,3,8,2,6,99,100,2,1]" >> output.txt

