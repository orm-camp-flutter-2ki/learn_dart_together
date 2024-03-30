import 'dart:io';
import 'dart:typed_data';

import '../data_source/save_api.dart';
import 'save_repository.dart';

class SaveRepositoryImpl implements SaveRepository {
  final _api = SaveApi();

  @override
  Future<Uint8List> downloadImage(String url) async {
    return await _api.downloadImageApi(url);
  }

  @override
  Future<File> saveFile(bytes, String fileName) async {
    return await _api.saveFileApi(bytes, fileName);
  }
}
