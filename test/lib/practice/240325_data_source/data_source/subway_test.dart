import 'package:learn_dart_together/practice/240325_data_source/data_source/subway_api.dart';
import 'package:learn_dart_together/practice/240325_data_source/model/subway.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../fake_http_proxy.dart';

void main() {
  group('(선택) 과제4, ', () {
    // SubwayApi()에서 HttpProxyImpl 을 사용했다면,
    // FakeHttpProxy()를 사용 못한다.
    // => HttpProxy 구현체가 필요.
    // 같은 HttpProxy 인터페이스를 구현했기 때문에 SubwayApi() 변수로 FakeHttpProxy()를 넣을 수 있게 되었다.
    SubwayApi subwayApi = SubwayApi(http: FakeHttpProxy());

    test(' 데이터로 변환 (fromXml 생성자 작성)', () async {
      // Given
      Subway expected = Subway(
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
      List<Subway> result = await subwayApi.getSubwayInfoList();

      // Then
      expect(result.first, expected);
      });
  });
}
