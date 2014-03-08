%{ /* -*- c -*- */
#include <stdio.h>
#include "gram.h"

#undef yywrap
int yywrap();
%}
/* extern YYSTYPE yylval; */

%%
[ \t\r] ;
[-+]?[0-9]+	{
    	    yylval.anInt = atoi((char *)&yytext[0]);
	    return INTEGER;
	}

\n	return NEWLINE;
.	return *yytext;
%%
int
yywrap()
{
    return 1;
}

