import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/result_ver_2.dart';

import '../model/photo.dart';

class PhotoApi {
  static const String baseUrl = 'https://pixabay.com/api';

  // static const String apiKey = '43171022-dca0290df38de24cd7ba6ed14';

  Future<ResultVer2<List<Photo>, NetworkError>> getPhotos(
      String apiKey, String query) async {
    if (query == '바보') {
      return ResultVer2.error(NetworkError.babo);
    }

    final response =
        await http.get(Uri.parse('$baseUrl/?key=$apiKey&q=$query&pretty=true'));

    try {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
        final photoData =
            (jsonData['hits'] as List).map((e) => Hits.fromJson(e)).toList();
        final result = photoData.map((e) => e.toPhoto()).toList();

        return ResultVer2.success(result);
      } else {
        return ResultVer2.error(NetworkError.unknown);
      }
    } catch (e) {
      return ResultVer2.error(NetworkError.httpError);
    }
  }
}
