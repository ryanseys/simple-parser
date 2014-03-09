%{
#include <stdio.h>
#include <math.h>
int yyerror();
int yylex();
%}

%token <aDouble>	DOUBLE NEWLINE
%type <aDouble>	S E T P F

%union {
  double aDouble;
}

%%
S :
  { $$ = 0; }
  | S E NEWLINE
  { printf("%f\n", $2 ); $$ = 0; }
  ;

E : E '+' T
  { $$ = $1 + $3; }
  | E '-' T
  { $$ = $1 - $3; }
  | T
  { $$ = $1; }
  ;

T : T '*' P
  { $$ = $1 * $3; }
  | T '/' P
  { $$ = $1 / $3; }
  | P
  { $$ = $1; }
  ;

P : F '^' P
  { $$ = pow($1, $3); }
  | F
  { $$ = $1; }
  ;

F : '(' E ')'
  { ($$ = $2) }
  | DOUBLE
  { $$ = $1; }
  ;

%%
int yyerror( char * s ) {
  fprintf( stderr, "%s\n", s );
  return 0;
}
