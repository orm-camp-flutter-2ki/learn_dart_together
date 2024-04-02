import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401_homework/dto/photoDto.dart';

void main() async {
  final mountain = PixabayApi();

  await mountain.getImgUrl('mountain');
}

class PixabayApi {
  late final pixabayUrl = 'https://pixabay.com/api/?key=$apiKey';
  final apiKey = '43171183-fb200e7c1a46ec32d1d26a1be';

  Future<List<PhotoDto>> getImgUrl(String prompt) async {
    final response =
        await http.get(Uri.parse('$pixabayUrl&q=$prompt&image_type=photo'));
    final List<dynamic> data = (response.statusCode == 200)
        ? jsonDecode(response.body)['hits']
        : throw Exception('api get error');

    final List<PhotoDto> result =
        data.map((e) => PhotoDto.fromJson(e)).toList();
    return result;
  }
}
