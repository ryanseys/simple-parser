%{
#include <stdio.h>
#include <math.h>
int yyerror();
int yylex();
%}

%token <anInt>	INTEGER NEWLINE
%type <anInt>	S E T P F

%union {
    int anInt;
}

%%
S	:
	{ $$ = 0; }
	| S E NEWLINE
	{ printf( "Result is %d\n", $2 ); $$ = 0; }
	;

E	: E '+' T
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
  | INTEGER
  { $$ = $1; }
  ;

%%
int
yyerror( char * s )
{
    fprintf( stderr, "%s\n", s );
    return 0;
}
