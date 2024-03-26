import 'dart:convert';

import 'package:http/http.dart' as http;

import './model/time.dart';

void main() {
  TimeApi time = TimeApi();
  time.getTime('Seoul');
}

class TimeApi {
  Future<Time> getTime(city) async {
    final response = await http
        .get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/$city'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Time data = Time.fromJson(json);
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
