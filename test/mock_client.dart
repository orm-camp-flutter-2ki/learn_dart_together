import 'dart:io';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_28/datasource/mask_api.dart';

class FakeClient implements Client {
  String body;

  FakeClient(this.body);

  @override
  Future<Response> get(Uri url) async => http.Response(
      body,
      200,
      headers: {
        HttpHeaders.contentTypeHeader:
        'application/json; charset=utf-8',
      });

  Future<Response> getError(Uri url) async => http.Response(
      body,
      404,
      headers: {
        HttpHeaders.contentTypeHeader:
        'application/json; charset=utf-8',
      });
}

class FakeClientWithError implements Client {

  @override
  Future<Response> get(Uri url) async => http.Response(
      '',
      404,
      headers: {
        HttpHeaders.contentTypeHeader:
        'application/json; charset=utf-8',
      });

}