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
    	yylval.aDouble = atof((char *) &yytext[0]);
	    return DOUBLE;
	}

\n	return NEWLINE;
.	return *yytext;
%%
int yywrap() {
  return 1;
}
