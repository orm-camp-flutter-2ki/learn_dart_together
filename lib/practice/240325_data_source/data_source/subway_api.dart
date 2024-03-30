import 'dart:convert';

import 'package:learn_dart_together/practice/240325_data_source/http_proxy.dart';
import 'package:learn_dart_together/practice/240325_data_source/model/subway.dart';
import 'package:xml/xml.dart' as xml;

class SubwayApi {
  static const baseUrl =
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8';

  // 인터페이스를 사용하여 결합도를 낮춘다.
  final HttpProxy http;

  // 구현체를 생성자에서 받고 http 의 get 을 사용
  const SubwayApi({
    required this.http,
  });

  Future<List<Subway>> getSubwayInfoList() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final xmlString = xml.XmlDocument.parse(utf8.decode(response.bodyBytes));
      final rowData = xmlString.findAllElements('row');
      final fromXmlData = rowData.map(Subway.fromXml).toList();

      return fromXmlData;
    } else {
      throw Exception('HTTP ERROR : ${response.statusCode}');
    }
  }
}
