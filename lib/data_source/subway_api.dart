import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

import '../240325/practice4.dart';

class SubwayApi {
  Future<List<Subway>> getRealTimeXml() async {
    final http.Response response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/서울'));

    if (response.statusCode == 200) {
      var document = xml.XmlDocument.parse(response.body);
      var arrivals = document.findAllElements('row');
      List<Subway> subways = [];

      for (var arrival in arrivals) {
        var trainLine = arrival.findElements('trainLine').first.text;
        var station = arrival.findElements('station').first.text;
        var arrivalTime = arrival.findElements('arrivalTime').first.text;

        var subway = Subway(trainLine, station, arrivalTime);
        subways.add(subway);
      }

      return subways;
    } else {
      throw Exception('Failed to load subway data');
    }
  }
}
