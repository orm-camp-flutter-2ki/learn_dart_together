import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/data_source/real_time_station_arrival.dart';
import 'package:xml2json/xml2json.dart';

class XmlApi {
  Future<RealTimeStationArrival> getXmlData(String station) async {
    final http.Response response = await http.get(Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/$station'));

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
  print(XmlApi().getXmlData('서울'));
}
