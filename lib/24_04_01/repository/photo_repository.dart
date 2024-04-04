import 'dart:async';
import 'dart:convert';

import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/http/custom_http_client.dart';
import 'package:learn_dart_together/http/error_type.dart';
import 'package:learn_dart_together/http/http_core.dart';

import '../../http/result.dart';

class PhotoRepository {
  final CustomHttpClient _httpClient;

  PhotoRepository(this._httpClient);

  Future<Result<List<Photo>, ErrorType>> getPhotos(String query) async {
    Map<String, String> resultMap = {
      for (final item
          in query.split("&").where((element) => element.contains('=')))
        item.split('=')[0]: item.split('=')[1]
    };
    if (resultMap.containsValue('바보') ||
        resultMap.containsKey('%EB%B0%94%EB%B3%B4')) {
      return Result.error(ErrorType.profanityIncluded);
    }

    List<Photo> photoList = [];

    try {
      final response =
          await _httpClient.get('$pixabayUrl/?key=$pixabayUserKey&$query');
      photoList = PhotoDto.fromJson(jsonDecode(response))
          .hits!
          .map((e) => e.toPhoto())
          .toList();

      return Result.success(photoList);
    } on TimeoutException {
      return Result.error(ErrorType.requestTimeOut);
    } on TypeError {
      return Result.error(ErrorType.typeError);
    } catch (e) {
      return Result.error(ErrorType.unknown);
    }
  }
}
