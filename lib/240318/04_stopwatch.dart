void main() {
  final buffer = StringBuffer('START');
  String string = 'START';

  Stopwatch stopwatch1 = Stopwatch()..start();

  for (int i = 0; i < 100000; i++) {
    string += i.toString();
  }

  print(stopwatch1.elapsed);
  // 결과 0:00:06.639687

  Stopwatch stopwatch2 = Stopwatch()..start();


  stopwatch2.start();

  for (int i = 0; i < 100000; i++) {
    buffer.write(i.toString());
  }

  print(stopwatch2.elapsed);
  // 결과 0:00:00.004580

  // 6.639687 / 0.004580 = 1449.7133187773
  // 십만단위 문자열 concat 연산을 할 때 대략 1450배 성능 차이
}