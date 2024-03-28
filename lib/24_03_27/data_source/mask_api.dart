import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/mask.dart';

class MaskApi {
  final String _url = 'http://104.198.248.76:3000/mask';

  Future<Mask> getMasks() async {
    final http.Response response = await http.get(Uri.parse(_url));

    final Map<String, dynamic> jsonString =
        jsonDecode(utf8.decode(response.bodyBytes));
    return Mask.fromJson(jsonString);
  }
}
