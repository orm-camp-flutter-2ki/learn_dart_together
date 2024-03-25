import 'package:learn_dart_together/240325/data_source/subway_api.dart';
import 'package:test/test.dart';

void main() {
  final SubwayApi subwayApi = SubwayApi();
  test('Subway 테스트', () async {
    print('========xml========');

    final rows = await subwayApi.getSubwayInfo();
    print(rows);

    print(rows[0].rowNum);
    expect(int.parse(rows[0].rowNum) == 1, true);
  });
}