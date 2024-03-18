import 'package:test/test.dart';
import 'package:learn_dart_together/240318/strongbox_exam.dart';

void main() {
    test('put() 메서드 테스트', () {
      final box = StrongBox<String>(KeyType.padlock);
      box.put('Hello, world!');

      // `_data` 필드 변수에 직접 접근하지 않고 `get()` 메서드를 사용해야 합니다.
      final message = box.get();
      expect(message, 'Hello, world!');

    });

    test('get() 메서드 테스트 - 정상 작동', () {
      final box = StrongBox<String>(KeyType.padlock);
      box.put('Hello, world!');

      for (var i = 0; i < 1024; i++) {
        final message = box.get();
        expect(message, 'Hello, world!');
      }
      // _useCount 변수가 1024와 같아야 함을 확인
      expect(box._useCount, 1024);
    });

    test('get() 메서드 테스트 - 사용 횟수 제한', () {
      final box = StrongBox<String>(KeyType.padlock);
      box.put('Hello, world!');

      for (var i = 0; i < 1025; i++) {
        box.get();
      }

      final message = box.get();
      expect(message, null);
    });

    test('get() 메서드 테스트 - null 값 저장', () {
      final box = StrongBox<String>(KeyType.padlock);

      final message = box.get();
      expect(message, null);
    });

}