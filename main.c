#include <stdio.h>
#include <stdlib.h>

extern int yyerror();
extern int yylex();
extern int yyparse();


#define YYDEBUG 1

int main() {
  // yydebug = 1;
  yyparse();
}
