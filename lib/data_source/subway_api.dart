import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:learn_dart_together/240325/subway.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';

class SubwayApi {
  Future<List<Subway>> getSubways() async {
    final Xml2Json xml2Json = Xml2Json();
    final http.Response response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/'));

    xml2Json.parse(utf8.decode(response.bodyBytes));
    var jsonData = xml2Json.toParker();

    final Map<String, dynamic> map = jsonDecode(jsonData);
    final List jsonList = map['realtimeStationArrival']['row'] as List;
    return jsonList.map((e) => Subway.fromJson(e)).toList();
  }
}

void main() {
  SubwayApi subwayApi = SubwayApi();
  subwayApi.getSubways();
}
