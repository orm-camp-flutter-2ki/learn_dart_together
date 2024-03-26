import 'package:learn_dart_together/240325/dart_source/time_api.dart';
import 'package:test/test.dart';

void main() {
  test('time Test', () async {
    final timeApi = TimeApi();
    final now = await timeApi.getTime();
    expect(now, isNotNull);
  });
}
