import 'package:learn_dart_together/24_03_18/generic.dart';
import 'package:test/test.dart';

void main() {
  test('key의 횟수가 다 차지 않으면 null, 다 차면 데이터를 리턴하기', () {
    // Given
    String text = '보물이다 짜쟝!';

    final box = StrongBox(text, KeyType.padlock);

    // When
    for (int i = 0; i < KeyType.padlock.availableUsageCount; i++) {
      box.get();
    }

    // Then
    expect(box.get() is String, true);
  });
}
