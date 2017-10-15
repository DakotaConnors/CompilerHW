%option noyywrap

%{
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "MyCompiler.h"
%}

%%
[0-9]+                  {
  printf("'%s' is NUMBER\n",yytext);
}

LET {
  printf("'%s' is ASSIGN\n", yytext);
}

PROGRAM {
  printf("'%s' is START\n", yytext);
}

END {
  printf("'%s' is STOP\n", yytext);
}

(_|[a-zA-Z])([a-zA-Z]|[0-9])* {
  printf("'%s' is WORD\n", yytext);
}

[ \t] {
  printf("'%s' is WS\n", yytext);
}

\r?\n {
  printf("'%s' is EOL\n", yytext);
}

[+|-|*|/|=] {
  printf("'%s' is OPERATOR", yytext);
}

. {
  printf("Syntax Error '%s'\n", yytext);
}



%%
