import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async{
  test('Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.', () {
    //given
    final sixSeconds = Future.delayed(Duration(seconds: 6), () {
      print('time out');
    });
    //when
    final fiveSeconds = Future.delayed(Duration(seconds: 5), () {
      print('in 5 seconds');
    });
    //then
    expect(sixSeconds == fiveSeconds, false);
  });
}