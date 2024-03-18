void main() {
  String greeting1 = 'Hello, World!';
  String greeting2 = greeting1;
  greeting2.toUpperCase(); // accessor

  print(greeting1);
  print(greeting2);

  int luckyNumber1 = 13;
  int luckyNumber2 = luckyNumber1;
  luckyNumber2 = 12; // copy by value

  print(luckyNumber1);
  print(luckyNumber2);
}