import 'dart:convert';
import 'dart:math';

import 'package:learn_dart_together/240325/subway.dart';
import 'package:learn_dart_together/240325/user.dart';
import 'package:learn_dart_together/data_source/subway_api.dart';
import 'package:learn_dart_together/data_source/user_api.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('practice4', () async {
    SubwayApi subwayApi = SubwayApi();
    List subways = await subwayApi.getSubways();

    expect(subways[0] is Subway, true);
  });
}
