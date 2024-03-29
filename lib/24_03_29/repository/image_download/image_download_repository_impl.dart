import 'dart:io';

import 'dart:typed_data';

import 'package:learn_dart_together/24_03_29/repository/image_download/image_download_repository.dart';

class ImageDownloadRepositoryImpl implements ImageDownloadRepository {
  @override
  Future<File> saveFile(Uint8List bytes, String fileName, String savePath) async {
      final filePath = '$savePath/$fileName';
      final File file = File(filePath);
      await file.writeAsBytes(bytes);

      return file;
  }
}