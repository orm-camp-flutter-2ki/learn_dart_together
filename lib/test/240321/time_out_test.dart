import 'package:learn_dart_together/240321/Time_out.dart';
import 'package:test/test.dart';

void main() {
  test('timeout Test', () async {
    try {
      final time = await timeoutFuture().timeout(Duration(seconds: 3));
      print(time);
    } catch (e) {
      print('timeout');
    }
  });
}
