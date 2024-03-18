import 'package:learn_dart_together/240318/practice_2.dart';
import 'package:test/test.dart';

void main() {
  test('금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.', () {

    StrongBox padlock = StrongBox(KeyType.padlock);

    for( int i = 0; i < StrongBox.padlockUsageValue; i++ ) {
      if( padlock.usageCount <= StrongBox.padlockUsageValue ) {
        expect(padlock.get(), null);
      } else {
        print('초과');
      }
    }
  });
}