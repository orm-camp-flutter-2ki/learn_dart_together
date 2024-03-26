import 'package:learn_dart_together/240325/data_source/subway_api.dart';
import 'package:test/test.dart';

void main() {
  test('subway test', () async {
    final api = SubwayApi();
    final result = await api.getSubway('서울');

    // euc-kr => unicode
    print(result);
  });
}
