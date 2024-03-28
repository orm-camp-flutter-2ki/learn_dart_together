import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'dart:convert';

abstract interface class Client {
  Future<Response> get(Uri url);
}

class HttpClient implements Client {
  @override
  Future<Response> get(Uri url) => http.get(url);
}

abstract interface class MaskApi {
  Client client;

  Future<MaskDto> getMaskDto();

  MaskApi(this.client);
}

class MaskApiImpl implements MaskApi {
  final _baseUri = 'http://104.198.248.76:3000/mask';

  @override
  Client client;

  MaskApiImpl(this.client);

  @override
  Future<MaskDto> getMaskDto() async {
    final http.Response response = await client.get(Uri.parse(_baseUri));
    Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Http request 오류');

    return MaskDto.fromJson(json);
  }
}

