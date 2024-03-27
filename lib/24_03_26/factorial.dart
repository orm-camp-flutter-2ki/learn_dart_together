int getFactorial(int number) {
  int result = 0;
  if (number == 0) {
    result = 1;
  } else {
    result = number * getFactorial(number - 1);
  }
  return result;
}