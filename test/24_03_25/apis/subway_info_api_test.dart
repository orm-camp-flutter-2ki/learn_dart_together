import 'package:learn_dart_together/24_03_25/apis/subway_info_api.dart';
import 'package:learn_dart_together/24_03_25/models/subway_info.dart';
import 'package:test/test.dart';

import '../fake_http_proxy.dart';

void main() {
  group('SubwayInfoApi 클래스', () {
    final SubwayInfoApi todoApi = SubwayInfoApi(http: FakeHttpProxy());

    group('getSubwayInfoList 메소드는', () {
      test(
          'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8 엔드포인트에서 받은 xml을 SubwayInfoList 객체로 매핑하여 반환한다.',
          () async {
        // Given
        SubwayInfo expected = SubwayInfo(
            rowNum: 1,
            selectedCount: 5,
            totalCount: 21,
            subwayId: 1065,
            updnLine: '상행',
            trainLineNm: '인천공항2터미널행 - 공덕방면',
            statnFid: 1065006502,
            statnTid: 1065006501,
            statnId: 1065006501,
            statnNm: '서울',
            trnsitCo: 4,
            ordkey: '01000인천공항2터미널0',
            subwayList: [1001, 1004, 1063, 1065],
            statnList: [1001000133, 1004000426, 1063080313, 1065006501],
            btrainSttus: '일반',
            barvlDt: 0,
            btrainNo: 'A2171',
            bstatnId: 110,
            bstatnNm: '인천공항2터미널',
            recptnDt: '2024-03-25 21:19:30',
            arvlMsg2: '서울 출발',
            arvlMsg3: '서울',
            arvlCd: 2);

        // When
        List<SubwayInfo> result = await todoApi.getSubwayInfoList();

        // Then
        expect(result.first, expected);
      });
    });
  });
}
