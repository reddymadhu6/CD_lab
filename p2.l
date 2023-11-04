%{#include<stdio.h>
int c=0,d=0;
%}
%%
[a-zA-Z]* {c++;
printf("%s is word\n",yytext);}
[0-9]* {d++;}
\n {printf("count of word=%d,count of digit=%d",c,d);}
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
