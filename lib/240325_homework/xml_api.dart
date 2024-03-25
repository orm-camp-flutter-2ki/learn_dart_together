import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

//문제해결 전
// void main() async {
//   final response = await http.get(Uri.parse(
//       'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));
//   if (response.statusCode == 200) {
//     final document = XmlDocument.parse(response.body);
//
//     final set = document.toXmlString(pretty: true, indent: '\t');
//     print(set);
//   } else {
//     throw Exception('Response Error');
//   }
// }

//문제해결 후

void main() async {
  final response = await http.get(Uri.parse(
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));
  if (response.statusCode == 200) {
    final document = XmlDocument.parse(utf8.decode(response.bodyBytes));

    final set = document.toXmlString(pretty: true, indent: '\t');
    print(set);
  } else {
    throw Exception('Response Error');
  }
}

//xmltosjon
// void main() async {
//   final response = await http.get(Uri.parse(
//       'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));
//
//   if (response.statusCode == 200) {
//     final xml2json = Xml2Json();
//     var document = xml2json.parse(utf8.decode(response.bodyBytes));
//
//     var jsonString = xml2json.toParker();
//     Map<String, dynamic> json = jsonDecode(jsonString);
//     print(jsonDecode(jsonString));
//     List<Data> data = Data.fromJson(json));
//     print(data);
//   } else {
//     throw Exception('Response Error');
//   }
// }

class Data {
  Row row;

  Data(this.row);

  Data.fromXml(xml) : row = Row.fromXml(xml['row']);

  @override
  String toString() {
    return 'Data{row: $row}';
  }
}

class Row {
  final String? updnLine;
  final String? trainLineNm;
  final String? statnFid;
  final String? bstatnNm;

  Row({this.updnLine, this.trainLineNm, this.statnFid, this.bstatnNm});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Row &&
          runtimeType == other.runtimeType &&
          updnLine == other.updnLine &&
          trainLineNm == other.trainLineNm &&
          statnFid == other.statnFid &&
          bstatnNm == other.bstatnNm;

  @override
  int get hashCode =>
      updnLine.hashCode ^
      trainLineNm.hashCode ^
      statnFid.hashCode ^
      bstatnNm.hashCode;

  @override
  String toString() {
    return 'Row{updnLine: $updnLine, trainLineNm: $trainLineNm, statnFid: $statnFid, bstatnNm: $bstatnNm}';
  }

  Row.fromXml(xml)
      : updnLine = xml['updnLine'] ?? '',
        trainLineNm = xml['trainLineNm'] ?? '',
        statnFid = xml['statnFid'] ?? '',
        bstatnNm = xml['bstatnNm'] ?? '';
}
