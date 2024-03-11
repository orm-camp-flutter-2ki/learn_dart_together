import 'package:learn_dart_together/240311/encaps/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wardTest', () {
    Wand wand = Wand('막대기', 10.0);

    wand.name = '작대기';

    expect(wand.name, equals('작대기'));

    expect(() => wand.power = -1, throwsException);

    wand.power = 11.5;

    expect(wand.power, equals(11.5));
  });
}
