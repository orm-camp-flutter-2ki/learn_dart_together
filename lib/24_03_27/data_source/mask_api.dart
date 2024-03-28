import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class MaskApi {
  Future<Mask> getMask() async {
    var url = 'http://104.198.248.76:3000/mask';

    var response = await http.get(Uri.parse(url));

    final json = jsonDecode(utf8.decode(response.bodyBytes));

    return Mask.fromJson(json);
  }
}
