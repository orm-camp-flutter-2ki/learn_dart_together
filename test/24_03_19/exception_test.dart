import 'package:test/test.dart';

void main() {

  test('description', ()
  {
    final numString = '10';
    int num;

    try {
      num = int.parse(numString);
    } catch (e) {
      print('$e');
      num = 0;
    }

    expect(num, 10);
  });

}
