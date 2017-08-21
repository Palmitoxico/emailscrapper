%{
#include <stdio.h>
%}

WORDNUM [a-zA-Z0-9]
NAME    [a-zA-Z0-9_\.-]
EMAIL   {WORDNUM}+{NAME}*{WORDNUM}+@{WORDNUM}+([.]{WORDNUM}+)*

%%

{EMAIL}    {printf("%s\n", yytext);}
[_\.-]*{EMAIL}[_-]* ;
[ \t\n] ;
.     ;

%%

int main() {
  yylex();
  return 0;
}
