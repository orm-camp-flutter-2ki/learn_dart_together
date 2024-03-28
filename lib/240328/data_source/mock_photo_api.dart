import 'dart:convert';

import 'package:learn_dart_together/240328/dto/photo_dto.dart';

class MockPhotoApi {
  // String mockData 를 안 넣는 방법도 있는지??
  List<PhotoDto> getPhotos(String mockData) {
    List<PhotoDto> result;
    result = (jsonDecode(mockData) as List)
        .map((e) => PhotoDto.fromJson(e))
        .toList();

    return result;
  }
}
