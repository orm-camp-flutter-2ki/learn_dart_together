import 'package:learn_dart_together/240327/top_level.dart';
import 'package:test/test.dart';

void main() {
  test('회문 test', () {
    TopLevel wording = TopLevel();
    expect(wording.word('기러기'), true);
    expect(wording.word('기러이'), false);
    expect(wording.word('Racecar'), true);
    expect(wording.word('racecara'), false);
  });
}
