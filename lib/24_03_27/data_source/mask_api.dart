import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/dto/mask_dto.dart';

class MaskApi {
  final String _url = 'http://104.198.248.76:3000/mask';

  Future<MaskDto> getMasks() async {
    final http.Response response = await http.get(Uri.parse(_url));

    final Map<String, dynamic> jsonString =
        jsonDecode(utf8.decode(response.bodyBytes));

    return MaskDto.fromJson(jsonString);
  }
}
