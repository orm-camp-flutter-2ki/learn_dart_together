//https://pub.dev/documentation/calc/latest/calc/factorial.html

class Factorial {
  int FactorialFun(int num) {
    if (num < 0) {
      throw ArgumentError.value(num);
    }
    if (num == 0) {
      return 1;
    }
    var result = num;
    num--;
    while (num > 1) {
      result *= num;
      num--;
    }
    return result;
  }
}
