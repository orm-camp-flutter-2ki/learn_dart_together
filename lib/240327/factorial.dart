int factorial(int value) {
  int returnValue = 1;
  for (int i = 1; i <= value; i++) {
    returnValue *= i;
  }
  return returnValue;
}
