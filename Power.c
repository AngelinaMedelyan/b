#include <stdio.h>
#include "libarithmetics.h"

int Power(int a, int b)
{
  int result = 1;
  for(int i = 1; i <= b; i++)
  {
    result = Multiply(result,a);
  }
  return result;
}