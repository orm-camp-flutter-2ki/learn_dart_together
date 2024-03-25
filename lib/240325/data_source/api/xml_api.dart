import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/data_source/real_time_station_arrival.dart';
import 'package:xml2json/xml2json.dart';

class XmlApi {
  Future<RealTimeStationArrival> getXmlData() async {
    final http.Response response = await http.get(Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));

    final xml = utf8.decode(response.bodyBytes);
    final myTransformer = Xml2Json();

    myTransformer.parse(xml);

    var str = myTransformer.toOpenRally();
    var json1 = jsonDecode(str);

    RealTimeStationArrival result;
    print(json1);
    if (json1['realtimeStationArrival'] != null) {
      result = RealTimeStationArrival.fromJson(json1['realtimeStationArrival']);
      return result;
    } else {
      // row(key)가 null일 경우 처리 불가..
      return json1;
    }
  }
}

void main() async {
  print(XmlApi().getXmlData());
  // RealTimeStationArrival result = await XmlApi().getXmlData();
  // print(result);

  ///
  ///RealTimeStationArrival(result: Result(code: INFO-000, developerMessage: true, link: true, message: 정상 처리되었습니다., status: 200, total: 3), row: [Row(rowNum: 1, selectedCount: 3, subwayId: 1004, updnLine: 상행, trainLineNm: 당고개행 - 회현방면, statnFid: 1004000427, statnTid: 1004000425, statnId: 1004000426, statnNm: 서울, trnsitCo: 4, ordkey: 01008당고개0, subwayList: 1001,1004,1063,1065, statnList: 1001000133,1004000426,1063080313,1065006501, btrainSttus: 일반, barvlDt: 1088, btrainNo: 4708, bstatnId: 0, bstatnNm: 당고개, recptnDt: 2024-03-26 01:50:22, arvlMsg2: 18분 8초 후 (남태령), arvlMsg3: 남태령, arvlCd: 99), Row(rowNum: 2, selectedCount: 3, subwayId: 1004, updnLine: 하행, trainLineNm: 오이도행 - 숙대입구방면, statnFid: 1004000425, statnTid: 1004000427, statnId: 1004000426, statnNm: 서울, trnsitCo: 4, ordkey: 11015오이도0, subwayList: 1001,1004,1063,1065, statnList: 1001000133,1004000426,1063080313,1065006501, btrainSttus: 일반, barvlDt: 1865, btrainNo: 4631, bstatnId: 53, bstatnNm: 오이도, recptnDt: 2024-03-26 01:50:10, arvlMsg2: 31분 5초 후 (노원), arvlMsg3: 노원, arvlCd: 99), Row(rowNum: 3, selectedCount: 3, subwayId: 1004, updnLine: 하행, trainLineNm: 사당행 - 숙대입구방면, statnFid: 1004000425, statnTid: 1004000427, statnId: 1004000426, statnNm: 서울, trnsitCo: 4, ordkey: 12016사당0, subwayList: 1001,1004,1063,1065, statnList: 1001000133,1004000426,1063080313,1065006501, btrainSttus: 일반, barvlDt: 2041, btrainNo: 4985, bstatnId: 53, bstatnNm: 사당, recptnDt: 2024-03-26 01:50:10, arvlMsg2: 34분 1초 후 (상계), arvlMsg3: 상계, arvlCd: 99)])
}
