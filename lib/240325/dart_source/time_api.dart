import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/time.dart';

class TimeApi {
  Future<Time> getTime() async {
    final http.Response response = await http
        .get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Seoul'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      return Time.fromJson(json);
    } else {
      throw Exception('오류');
    }
  }
}
