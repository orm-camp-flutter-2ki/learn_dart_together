import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskApi {
  final http.Client _client;
  final urlBase = 'http://104.198.248.76:3000/mask';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Mask> getMasks() async {
    final response = await _client.get(Uri.parse(urlBase));

    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      // print(json['stores']);
      final Mask results = Mask.fromJson(json);
      return results;
    } else {
      throw Exception('실패');
    }
  }
}

// void main() async {
//   final masks = await MaskApi().getMasks();
//   // print(masks);
// }
