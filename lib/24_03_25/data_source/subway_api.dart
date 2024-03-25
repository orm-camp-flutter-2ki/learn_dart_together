import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/model/subway_model.dart';

Future<List<SubwayModel>> subwayApi() async {
  final http.Response response = await http.get(Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));
  final subwayModels = SubwayModel.fromXml(utf8.decode(response.bodyBytes));

  return subwayModels;
}