import 'dart:convert';
import 'package:http/http.dart' as http;
import 'mask.dart';

class MaskApi {
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Mask> getMask() async {
    final baseUrl = 'http://104.198.248.76:3000/mask';
    final http.Response res = await http.get(Uri.parse(baseUrl));
    return Mask.fromJson(
        jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>);
  }
}
