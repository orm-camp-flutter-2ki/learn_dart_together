import 'package:test/scaffolding.dart';

void main() {
  test('try-catch 문을 사용하여 예외처리를 하십시오', ()
  {
    try {
      final numString = '10.5';
      int num = int.parse(numString);
      print(num);
    } catch (e) {
      int num = 10;
    }
  });
}
