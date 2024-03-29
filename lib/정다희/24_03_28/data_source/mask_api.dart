import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/store_dto.dart';

class MaskAPI {
  final http.Client _client;

  MaskAPI({http.Client? client}) : _client = client ?? http.Client();
  Future<List<StoresDto>> getStores() async {
    final res = await http.get(Uri.parse("http://104.198.248.76:3000/mask"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(utf8.decode(res.bodyBytes))['stores'];
      return resList.map((e) => StoresDto.fromJson(e)).toList();
    } else {
      throw Exception('api 받아오는 중 에러');
    }
  }
}
