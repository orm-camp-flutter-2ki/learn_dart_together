import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';

class PhotoApi {
  final _key = '43171331-c0f3784db92bb71fc74597a76';
  final _uri = 'https://pixabay.com/api';

  Future<List<HitsDto>> getPhotos(String query) async {
    final http.Response response =
        await http.get(Uri.parse('$_uri/?key=$_key&q=$query'));

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    final List jsonList = jsonResponse['hits'];
    final List<HitsDto> photos =
        jsonList.map((e) => HitsDto.fromJson(e)).toList();

    return photos;
  }
}
