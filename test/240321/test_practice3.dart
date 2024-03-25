import 'package:test/test.dart';
import 'package:learn_dart_together/240321/practice3.dart';

void main() async {
  test('getMovieInfo', () async {
    String result = await timeoutFuture();
    print(result);
  });
}
