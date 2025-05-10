#include <stdio.h>
#include "Power.h"
#include "libarithmetics.h"

int main()
{
  int a;
  int b;
  int c;
  printf("Enter the number:");
  scanf("%d",&a);
  printf("Enter the number:");
  scanf("%d",&d);
  printf("%d\n",Power(a,c));
  printf("%d\n",Power(b,c));
  printf("%d\n",Add(d,b));
  printf("%d\n",Substract(a,b));
  if (b!=0)
  {
    printf("%d\n",Divide(d,b));
  }
  return 0;
}