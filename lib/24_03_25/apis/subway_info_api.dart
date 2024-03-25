import 'dart:convert';

import 'package:xml/xml.dart' as xml;

import '../http_proxy.dart';
import '../models/subway_info.dart';

class SubwayInfoApi {
  static const baseUrl =
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8';
  final HttpProxy http;

  SubwayInfoApi({required this.http});

  Future<List<SubwayInfo>> getSubwayInfoList() async {
    final response = await http.get(Uri.parse(baseUrl));
    return xml.XmlDocument.parse(utf8.decode(response.bodyBytes))
        .findAllElements('row')
        .map(SubwayInfo.fromXml)
        .toList();
  }
}
