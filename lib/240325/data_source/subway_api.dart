import 'dart:convert';

import 'package:learn_dart_together/240325/model/xml/realtime_station_arrival.dart';
import 'package:learn_dart_together/240325/model/xml/row.dart';
import 'package:learn_dart_together/240325/service/xml_service.dart';

class SubwayApi {
  Future<List<Row>> getSubwayInfo() async {
    final result = await XmlService().callGet('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/서울');
    final Map<String, dynamic> json = jsonDecode(result);

    final data = RealtimeStationArrival.fromJson(json['realtimeStationArrival']);
    return data.rows;
  }
}