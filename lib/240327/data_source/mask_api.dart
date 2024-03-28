import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/mask.dart';

class MaskApi {

  final http.Client _client;

    MaskApi({http.Client? client})
    : _client = client ?? http.Client();

    Future<List<Mask>> getMasks() async {
      final response = await _client
          .get(Uri.parse('http://104.198.248.76:3000/mask'));

      final jsonMap = response.statusCode != 200 ? throw Exception("Error")
          : jsonDecode(utf8.decode(response.bodyBytes));

      final jsonList = jsonMap['stores'] as List;

      return jsonList.map((e) => Mask.fromJson(e)).toList();
    }

  }
