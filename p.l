%{#include<stdio.h>
%}
%%
int|float|char {printf("%s is keyword\n",yytext);}
[a-zA-Z]+ {printf("%s is identifier\n",yytext);}
,|; {printf("%s is separator\n",yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter Input\n");
yylex();
return 0;
}
