import 'dart:convert';

import 'package:http/http.dart' as http;

class SubwayApi {
  // http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/서울
  Future<String> getSubway(String station) async {
    final response = await http
        .get(Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/$station'));

    // unicode
    return utf8.decode(response.bodyBytes);
  }
}