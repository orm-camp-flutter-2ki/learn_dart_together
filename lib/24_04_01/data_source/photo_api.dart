import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';

class PhotoApi {
  Future<List<HitsDto>> getPhotos(String query) async {
    final _key = '43171070-515db69565bfcfbdca7327252';
    final _uri = 'https://pixabay.com/api';
    final http.Response response =
        await http.get(Uri.parse('$_uri/?key=$_key&q=$query'));

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    //HitsDto 객체로 변환하려면 'hits' 필드에 있는 데이터를 추출하여 List
    final List jsonList = jsonResponse['hits'];
    final List<HitsDto> photos =
        jsonList.map((e) => HitsDto.fromJson(e)).toList();

    return photos;
  }
}
