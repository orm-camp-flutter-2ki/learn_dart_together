import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/model/mask.dart';

class MaskApi {
  final url = 'http://104.198.248.76:3000/mask';

  Future<Mask> getMask() async {
    final http.Response response = await http.get(Uri.parse(url));

    final decoded = utf8.decode(response.bodyBytes); // 한글 깨짐 방지

    final json = jsonDecode(decoded);

    return Mask.fromJson(json);
  }
}
