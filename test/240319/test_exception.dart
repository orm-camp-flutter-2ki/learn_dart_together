import 'package:test/test.dart';

void main() {
  test('exceptionTest', () {
    final numString = '10.5';
    int num;
    try{
      num= int.parse(numString);
    }catch(e){
      num = 0;
    }
    expect(num == 0, true);
  });
}