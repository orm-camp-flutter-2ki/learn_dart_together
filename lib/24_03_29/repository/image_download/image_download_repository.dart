import 'dart:io';
import 'dart:typed_data';

abstract interface class ImageDownloadRepository {
  Future<void> saveFile(Uint8List bytes, String fileName, String savePath);
}