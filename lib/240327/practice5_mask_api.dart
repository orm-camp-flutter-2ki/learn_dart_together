import 'dart:convert';

import 'package:http/http.dart' as http;

class MaskApi {
  Future<List<Map<String, dynamic>>> getMaskApi() async {
    final response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData =
          jsonDecode(utf8.decode(response.bodyBytes));
      List<Map<String, dynamic>> stores =
          jsonData as List<Map<String, dynamic>>;
      return stores;
    } else {
      throw Exception('Failed');
    }
  }
}
