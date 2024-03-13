import 'package:learn_dart_together/240312/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('Rectangle test', () {
    Rectagle rectagle = Rectagle(
      width: 10,
      height: 10,
    );
    rectagle.area();
    rectagle.round();
  });
}
