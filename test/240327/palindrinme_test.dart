import 'package:learn_dart_together/240327/palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('palindrinme', () {
    test('true', () {
      //given

      //when
      bool result = palindrinme('!!!///!!!');

      //then
      expect(result, true);
    });
    test('false', () {
      //given

      //when
      bool result = palindrinme('!!!?//!!');

      //then
      expect(result, false);
    });
  });
}
