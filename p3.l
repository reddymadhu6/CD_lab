%{#include<stdio.h>
int c=0,v=0;
%}
%%
a|e|i|o|u|A|E|I|O|U {v++;}
[a-zA-Z] {c++;}
\n {printf("count of vowels=%d,count of consonants=%d",v,c);}                                                                 
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
