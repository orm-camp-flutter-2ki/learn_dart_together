import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_29/api/interface/image_api.dart';
import 'package:learn_dart_together/24_03_29/repository/interface/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageApi _imageApi;
  final FileService _fileService;

  ImageRepositoryImpl(
      {required ImageApi imageApi, required FileService fileService})
      : _imageApi = imageApi,
        _fileService = fileService;

  @override
  Future<Uint8List> getImage(String url) async {
    return await _imageApi.getImage(url);
  }

  @override
  Future<File> saveImageFile(
      Uint8List image, String fileName, String path) async {
    return await _fileService.asyncWriteToFileBytes(image, fileName, path);
  }
}
