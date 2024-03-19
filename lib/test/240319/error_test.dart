import 'package:test/test.dart';

void main() {
  final numString = '50.4';
  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
    print('오류메세지 $e');
  }
  test('Test', () {
    expect(num, equals(0));
  });
}
