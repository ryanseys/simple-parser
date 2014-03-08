%{
#include <stdio.h>
int yyerror();
int yylex();
%}

%token <anInt>	INTEGER NEWLINE
%type <anInt>	S E

%union {
    int anInt;
}

%%
S	:
	{ $$ = 0; }
	| S E NEWLINE
	{ printf( "Result is %d\n", $2 ); $$ = 0; }
	;

E	: E '+' INTEGER
	{ $$ = $1 + $3; }
	| E '-' INTEGER
	{ $$ = $1 - $3; }
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
