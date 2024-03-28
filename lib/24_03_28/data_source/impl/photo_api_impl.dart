import 'dart:convert';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';

import '../interface/photo_api.dart';

class PhotoApiImpl implements PhotoApi {
  static const path = 'lib/24_03_28/resource/photos.json';
  final FileService _fileService;

  PhotoApiImpl(this._fileService);

  @override
  Future<List<PhotoDto>> getPhotos() async {
    final photos = await _fileService.asyncReadFile(path);
    return (jsonDecode(photos) as List)
        .map((e) => PhotoDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
