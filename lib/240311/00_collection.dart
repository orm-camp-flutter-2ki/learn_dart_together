void main() {
  final names = <String>[];
  final lottoes = <String>{};

  names.add('오준석');
  names.add('bbb');
  names.add('ccc');

  names.forEach(print);
  // 컴파일 타임에 결정됨
  var ii = 10;

  // 런타임에 타입이 결정됨
  dynamic i = 10;
  dynamic d = 10.0;
  dynamic s = 'hello';
  s = 1;
  s = true;
  s = null;

  print(names);

  int iiii = something();

  final List<String> names2 = [];

}

int something() {
  return 10;
}