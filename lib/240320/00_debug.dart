import '../240307/hero.dart';

void main() {
  // set hashCode
  final heroes = <Hero>{};

  // 메모리상으로 다른게 맞아
  final h1 = Hero(name: 'name', hp: 100);
  final h2 = Hero(name: 'name', hp: 100);

  heroes.add(h1);
  heroes.remove(h2);

  something(10);

  // print(heroes.length);   //

  // 100줄 더 짜...
  print('--------');
  print('--------');
  print('--------');
}

void something(int i) {
  print(i);
  print(i);
  print(i);
  print(i);
}