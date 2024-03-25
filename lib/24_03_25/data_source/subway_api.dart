import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/subways/subway_info.dart';
import 'package:xml/xml.dart';

class SubwayApi {
  final url =
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8';

  Future<List<SubwayInfo>> getSubwayInfo() async {
    final http.Response response = await http.get(Uri.parse(url));

    final decoded = utf8.decode(response.bodyBytes); // 한글 깨짐 방지

    final xmlDoc = XmlDocument.parse(decoded);

    List<dynamic> rows = xmlDoc.findAllElements('row').toList();

    return rows.map((e) => SubwayInfo.fromXml(e)).toList();
  }
}
