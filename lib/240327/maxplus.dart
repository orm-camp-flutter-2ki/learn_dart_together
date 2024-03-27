import 'dart:math';

int MaxPlus(List<int> a) {
  int maxResult = a.reduce(max);
  a.remove(maxResult);
  int secondMaxResult = a.reduce(max);
  return maxResult * secondMaxResult;
}
