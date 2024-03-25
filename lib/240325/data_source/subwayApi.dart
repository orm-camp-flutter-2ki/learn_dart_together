import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/model/subway.dart';
import 'package:xml2json/xml2json.dart';

import 'realtime_station_arrival.dart';

class SubwayApi {

  Future<void> fromXml() async {
    String uri = 'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8';

    final response = await http.get(Uri.parse(uri));

    if( response.statusCode == 200 ) {
      String xmlData = response.body;

      final Xml2Json xml2json = Xml2Json();
      // xml 데이터를 json 으로 변환
      xml2json.parse(xmlData);
      var jsonData = xml2json.toParker(); // String
      // print(jsonData);
      Map<String, dynamic> jsonList = jsonDecode(jsonData); // Map<String, dynamic>
      // print(jsonList);
      // var data = RealtimeStationArrival.fromJson(jsonList);
      Map<String, dynamic> data = jsonList['realtimeStationArrival'];
      print(data);

    } else {
      throw Exception('xml 변환 실패');
    }
  }
}